## Monitor important roles assigned in Entra ID (Azure AD)

### List of important roles to monitor
I've compiled a list of Entra ID roles, which is available [here](https://github.com/mthcht/awesome-lists/blob/main/Lists/permissions/EntraID/entraid_roles_list.csv). The dataset includes:

- role: The name of each role.
- id: The unique identifier for each role.
- metadata_is_privileged: A boolean field indicating whether the role is privileged (true) or non-privileged (false). This is not extracted from microsoft - i manually choosed the important default roles (please contact me if i miss something important) 
- metadata_description: A short description of each role's function.

### audit logs 

*for splunk users, the logs are often collected in sourcetype azure:aad:audit by default*

Assigned roles can be found with `category="RoleManagement" activityDisplayName="Add member to role" operationType="Assign"`


json format example:
```json
{
  "id": "Directory_12345678-abcd-1234-abcd-1234567890ab_XYZ_987654321",
  "category": "RoleManagement",
  "correlationId": "12345678-abcd-1234-abcd-1234567890ab",
  "result": "success",
  "resultReason": "",
  "activityDisplayName": "Add member to role",
  "activityDateTime": "2024-08-09T12:34:56.789012Z",
  "loggedByService": "Core Directory",
  "operationType": "Assign",
  "initiatedBy": {
    "user": {
       "displayName": "mth cht",
       "homeTenantId": "null",
       "homeTenantName": "null",
       "id": "b9ce3444b-7fb6-4e45-8e42-3adb324c7c5d",
       "ipAddress": "5.196.8.113",
       "userPrincipalName": "mthcht@thunting.onmicrosoft.com",
       "userType": "null"
    }
    "app": {
      "appId": null,
      "displayName": "ExampleApp",
      "servicePrincipalId": "abcdef12-3456-7890-abcd-ef1234567890",
      "servicePrincipalName": null
    }
  },
  "targetResources": [
    {
      "id": "abcdef12-3456-7890-abcd-ef1234567890",
      "displayName": null,
      "type": "User",
      "userPrincipalName": "john.doe@example.com",
      "groupType": null,
      "modifiedProperties": [
        {
          "displayName": "Role.ObjectID",
          "oldValue": null,
          "newValue": "\"12345678-abcd-1234-abcd-1234567890ab\""
        },
        {
          "displayName": "Role.DisplayName",
          "oldValue": null,
          "newValue": "\"Application Developer\""
        },
        {
          "displayName": "Role.TemplateId",
          "oldValue": null,
          "newValue": "\"abcd1234-5678-90ab-cdef-1234567890ab\""
        },
        {
          "displayName": "Role.WellKnownObjectName",
          "oldValue": null,
          "newValue": "\"ApplicationDevelopers\""
        }
      ]
    },
    {
      "id": "12345678-abcd-1234-abcd-1234567890ab",
      "displayName": null,
      "type": "Role",
      "userPrincipalName": null,
      "groupType": null,
      "modifiedProperties": []
    }
  ],
  "additionalDetails": []
}

```

#### Initiated By Fields:
(*who initiated the action*)
- initiatedBy.user: Who initiated the action (if it's a user).
- initiatedBy.app.displayName: Name of the application/service that initiated the action.

##### Target Resource Fields:
(*What/Who was added or modified*)
- targetResources[].id: Unique identifier for the target resource. Important for identifying the specific user or role involved in the action.
- targetResources[].type: The type of resource affected (e.g., "User", "Role")
- targetResources[].userPrincipalName: The UPN (User Principal Name) of the user involved. Essential for identifying which users are affected by the action.
- targetResources[].modifiedProperties: Describes what properties were changed. Helps in understanding the roles ID and names assigned to a user (for an assign operation here) 

### Graph API

Microsoft recently introduced a new role property, "isPrivileged", in the Graph API, as detailed here https://learn.microsoft.com/en-us/entra/identity/role-based-access-control/privileged-roles-permissions?tabs=admin-center

You can retrieve all privileged roles using the following Graph API query: `GET https://graph.microsoft.com/beta/roleManagement/directory/roleDefinitions?$filter=isPrivileged eq true` (even custom roles)

But i did not found this information with the graph API logs usually collected with Splunk, it's possible that there is a specific splunk addon or configuration (to get the "isPrivileged" information for custom roles in the SIEM) i am not ware of, if anyone did this please contact me @mthcht on twitter or add a PR to this project :)
