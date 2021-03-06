%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc <fullname>AWS Organizations</fullname>
-module(aws_organizations).

-export([accept_handshake/2,
         accept_handshake/3,
         attach_policy/2,
         attach_policy/3,
         cancel_handshake/2,
         cancel_handshake/3,
         create_account/2,
         create_account/3,
         create_gov_cloud_account/2,
         create_gov_cloud_account/3,
         create_organization/2,
         create_organization/3,
         create_organizational_unit/2,
         create_organizational_unit/3,
         create_policy/2,
         create_policy/3,
         decline_handshake/2,
         decline_handshake/3,
         delete_organization/2,
         delete_organization/3,
         delete_organizational_unit/2,
         delete_organizational_unit/3,
         delete_policy/2,
         delete_policy/3,
         deregister_delegated_administrator/2,
         deregister_delegated_administrator/3,
         describe_account/2,
         describe_account/3,
         describe_create_account_status/2,
         describe_create_account_status/3,
         describe_effective_policy/2,
         describe_effective_policy/3,
         describe_handshake/2,
         describe_handshake/3,
         describe_organization/2,
         describe_organization/3,
         describe_organizational_unit/2,
         describe_organizational_unit/3,
         describe_policy/2,
         describe_policy/3,
         detach_policy/2,
         detach_policy/3,
         disable_a_w_s_service_access/2,
         disable_a_w_s_service_access/3,
         disable_policy_type/2,
         disable_policy_type/3,
         enable_a_w_s_service_access/2,
         enable_a_w_s_service_access/3,
         enable_all_features/2,
         enable_all_features/3,
         enable_policy_type/2,
         enable_policy_type/3,
         invite_account_to_organization/2,
         invite_account_to_organization/3,
         leave_organization/2,
         leave_organization/3,
         list_a_w_s_service_access_for_organization/2,
         list_a_w_s_service_access_for_organization/3,
         list_accounts/2,
         list_accounts/3,
         list_accounts_for_parent/2,
         list_accounts_for_parent/3,
         list_children/2,
         list_children/3,
         list_create_account_status/2,
         list_create_account_status/3,
         list_delegated_administrators/2,
         list_delegated_administrators/3,
         list_delegated_services_for_account/2,
         list_delegated_services_for_account/3,
         list_handshakes_for_account/2,
         list_handshakes_for_account/3,
         list_handshakes_for_organization/2,
         list_handshakes_for_organization/3,
         list_organizational_units_for_parent/2,
         list_organizational_units_for_parent/3,
         list_parents/2,
         list_parents/3,
         list_policies/2,
         list_policies/3,
         list_policies_for_target/2,
         list_policies_for_target/3,
         list_roots/2,
         list_roots/3,
         list_tags_for_resource/2,
         list_tags_for_resource/3,
         list_targets_for_policy/2,
         list_targets_for_policy/3,
         move_account/2,
         move_account/3,
         register_delegated_administrator/2,
         register_delegated_administrator/3,
         remove_account_from_organization/2,
         remove_account_from_organization/3,
         tag_resource/2,
         tag_resource/3,
         untag_resource/2,
         untag_resource/3,
         update_organizational_unit/2,
         update_organizational_unit/3,
         update_policy/2,
         update_policy/3]).

-include_lib("hackney/include/hackney_lib.hrl").

%%====================================================================
%% API
%%====================================================================

%% @doc Sends a response to the originator of a handshake agreeing to the
%% action proposed by the handshake request.
%%
%% This operation can be called only by the following principals when they
%% also have the relevant IAM permissions:
%%
%% <ul> <li> <b>Invitation to join</b> or <b>Approve all features request</b>
%% handshakes: only a principal from the member account.
%%
%% The user who calls the API for an invitation to join must have the
%% <code>organizations:AcceptHandshake</code> permission. If you enabled all
%% features in the organization, the user must also have the
%% <code>iam:CreateServiceLinkedRole</code> permission so that AWS
%% Organizations can create the required service-linked role named
%% <code>AWSServiceRoleForOrganizations</code>. For more information, see <a
%% href="http://docs.aws.amazon.com/organizations/latest/userguide/orgs_integration_services.html#orgs_integration_service-linked-roles">AWS
%% Organizations and Service-Linked Roles</a> in the <i>AWS Organizations
%% User Guide</i>.
%%
%% </li> <li> <b>Enable all features final confirmation</b> handshake: only a
%% principal from the master account.
%%
%% For more information about invitations, see <a
%% href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_accounts_invites.html">Inviting
%% an AWS Account to Join Your Organization</a> in the <i>AWS Organizations
%% User Guide.</i> For more information about requests to enable all features
%% in the organization, see <a
%% href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_org_support-all-features.html">Enabling
%% All Features in Your Organization</a> in the <i>AWS Organizations User
%% Guide.</i>
%%
%% </li> </ul> After you accept a handshake, it continues to appear in the
%% results of relevant APIs for only 30 days. After that, it's deleted.
accept_handshake(Client, Input)
  when is_map(Client), is_map(Input) ->
    accept_handshake(Client, Input, []).
accept_handshake(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AcceptHandshake">>, Input, Options).

%% @doc Attaches a policy to a root, an organizational unit (OU), or an
%% individual account. How the policy affects accounts depends on the type of
%% policy. Refer to the <i>AWS Organizations User Guide</i> for information
%% about each policy type:
%%
%% <ul> <li> <a
%% href="http://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_ai-opt-out.html">AISERVICES_OPT_OUT_POLICY</a>
%%
%% </li> <li> <a
%% href="http://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_backup.html">BACKUP_POLICY</a>
%%
%% </li> <li> <a
%% href="http://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_scp.html">SERVICE_CONTROL_POLICY</a>
%%
%% </li> <li> <a
%% href="http://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_tag-policies.html">TAG_POLICY</a>
%%
%% </li> </ul> This operation can be called only from the organization's
%% master account.
attach_policy(Client, Input)
  when is_map(Client), is_map(Input) ->
    attach_policy(Client, Input, []).
attach_policy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AttachPolicy">>, Input, Options).

%% @doc Cancels a handshake. Canceling a handshake sets the handshake state
%% to <code>CANCELED</code>.
%%
%% This operation can be called only from the account that originated the
%% handshake. The recipient of the handshake can't cancel it, but can use
%% <a>DeclineHandshake</a> instead. After a handshake is canceled, the
%% recipient can no longer respond to that handshake.
%%
%% After you cancel a handshake, it continues to appear in the results of
%% relevant APIs for only 30 days. After that, it's deleted.
cancel_handshake(Client, Input)
  when is_map(Client), is_map(Input) ->
    cancel_handshake(Client, Input, []).
cancel_handshake(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CancelHandshake">>, Input, Options).

%% @doc Creates an AWS account that is automatically a member of the
%% organization whose credentials made the request. This is an asynchronous
%% request that AWS performs in the background. Because
%% <code>CreateAccount</code> operates asynchronously, it can return a
%% successful completion message even though account initialization might
%% still be in progress. You might need to wait a few minutes before you can
%% successfully access the account. To check the status of the request, do
%% one of the following:
%%
%% <ul> <li> Use the <code>OperationId</code> response element from this
%% operation to provide as a parameter to the
%% <a>DescribeCreateAccountStatus</a> operation.
%%
%% </li> <li> Check the AWS CloudTrail log for the
%% <code>CreateAccountResult</code> event. For information on using AWS
%% CloudTrail with AWS Organizations, see <a
%% href="http://docs.aws.amazon.com/organizations/latest/userguide/orgs_monitoring.html">Monitoring
%% the Activity in Your Organization</a> in the <i>AWS Organizations User
%% Guide.</i>
%%
%% </li> </ul> <p/> The user who calls the API to create an account must have
%% the <code>organizations:CreateAccount</code> permission. If you enabled
%% all features in the organization, AWS Organizations creates the required
%% service-linked role named <code>AWSServiceRoleForOrganizations</code>. For
%% more information, see <a
%% href="http://docs.aws.amazon.com/organizations/latest/userguide/orgs_integrate_services.html#orgs_integrate_services-using_slrs">AWS
%% Organizations and Service-Linked Roles</a> in the <i>AWS Organizations
%% User Guide</i>.
%%
%% AWS Organizations preconfigures the new member account with a role (named
%% <code>OrganizationAccountAccessRole</code> by default) that grants users
%% in the master account administrator permissions in the new member account.
%% Principals in the master account can assume the role. AWS Organizations
%% clones the company name and address information for the new account from
%% the organization's master account.
%%
%% This operation can be called only from the organization's master account.
%%
%% For more information about creating accounts, see <a
%% href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_accounts_create.html">Creating
%% an AWS Account in Your Organization</a> in the <i>AWS Organizations User
%% Guide.</i>
%%
%% <important> <ul> <li> When you create an account in an organization using
%% the AWS Organizations console, API, or CLI commands, the information
%% required for the account to operate as a standalone account, such as a
%% payment method and signing the end user license agreement (EULA) is
%% <i>not</i> automatically collected. If you must remove an account from
%% your organization later, you can do so only after you provide the missing
%% information. Follow the steps at <a
%% href="http://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_accounts_remove.html#leave-without-all-info">
%% To leave an organization as a member account</a> in the <i>AWS
%% Organizations User Guide</i>.
%%
%% </li> <li> If you get an exception that indicates that you exceeded your
%% account limits for the organization, contact <a
%% href="https://console.aws.amazon.com/support/home#/">AWS Support</a>.
%%
%% </li> <li> If you get an exception that indicates that the operation
%% failed because your organization is still initializing, wait one hour and
%% then try again. If the error persists, contact <a
%% href="https://console.aws.amazon.com/support/home#/">AWS Support</a>.
%%
%% </li> <li> Using <code>CreateAccount</code> to create multiple temporary
%% accounts isn't recommended. You can only close an account from the Billing
%% and Cost Management Console, and you must be signed in as the root user.
%% For information on the requirements and process for closing an account,
%% see <a
%% href="http://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_accounts_close.html">Closing
%% an AWS Account</a> in the <i>AWS Organizations User Guide</i>.
%%
%% </li> </ul> </important> <note> When you create a member account with this
%% operation, you can choose whether to create the account with the <b>IAM
%% User and Role Access to Billing Information</b> switch enabled. If you
%% enable it, IAM users and roles that have appropriate permissions can view
%% billing information for the account. If you disable it, only the account
%% root user can access billing information. For information about how to
%% disable this switch for an account, see <a
%% href="https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/grantaccess.html">Granting
%% Access to Your Billing Information and Tools</a>.
%%
%% </note>
create_account(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_account(Client, Input, []).
create_account(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateAccount">>, Input, Options).

%% @doc This action is available if all of the following are true:
%%
%% <ul> <li> You're authorized to create accounts in the AWS GovCloud (US)
%% Region. For more information on the AWS GovCloud (US) Region, see the <a
%% href="http://docs.aws.amazon.com/govcloud-us/latest/UserGuide/welcome.html">
%% <i>AWS GovCloud User Guide</i>.</a>
%%
%% </li> <li> You already have an account in the AWS GovCloud (US) Region
%% that is associated with your master account in the commercial Region.
%%
%% </li> <li> You call this action from the master account of your
%% organization in the commercial Region.
%%
%% </li> <li> You have the <code>organizations:CreateGovCloudAccount</code>
%% permission. AWS Organizations creates the required service-linked role
%% named <code>AWSServiceRoleForOrganizations</code>. For more information,
%% see <a
%% href="http://docs.aws.amazon.com/organizations/latest/userguide/orgs_integrate_services.html#orgs_integrate_services-using_slrs">AWS
%% Organizations and Service-Linked Roles</a> in the <i>AWS Organizations
%% User Guide.</i>
%%
%% </li> </ul> AWS automatically enables AWS CloudTrail for AWS GovCloud (US)
%% accounts, but you should also do the following:
%%
%% <ul> <li> Verify that AWS CloudTrail is enabled to store logs.
%%
%% </li> <li> Create an S3 bucket for AWS CloudTrail log storage.
%%
%% For more information, see <a
%% href="http://docs.aws.amazon.com/govcloud-us/latest/UserGuide/verifying-cloudtrail.html">Verifying
%% AWS CloudTrail Is Enabled</a> in the <i>AWS GovCloud User Guide</i>.
%%
%% </li> </ul> You call this action from the master account of your
%% organization in the commercial Region to create a standalone AWS account
%% in the AWS GovCloud (US) Region. After the account is created, the master
%% account of an organization in the AWS GovCloud (US) Region can invite it
%% to that organization. For more information on inviting standalone accounts
%% in the AWS GovCloud (US) to join an organization, see <a
%% href="http://docs.aws.amazon.com/govcloud-us/latest/UserGuide/govcloud-organizations.html">AWS
%% Organizations</a> in the <i>AWS GovCloud User Guide.</i>
%%
%% Calling <code>CreateGovCloudAccount</code> is an asynchronous request that
%% AWS performs in the background. Because <code>CreateGovCloudAccount</code>
%% operates asynchronously, it can return a successful completion message
%% even though account initialization might still be in progress. You might
%% need to wait a few minutes before you can successfully access the account.
%% To check the status of the request, do one of the following:
%%
%% <ul> <li> Use the <code>OperationId</code> response element from this
%% operation to provide as a parameter to the
%% <a>DescribeCreateAccountStatus</a> operation.
%%
%% </li> <li> Check the AWS CloudTrail log for the
%% <code>CreateAccountResult</code> event. For information on using AWS
%% CloudTrail with Organizations, see <a
%% href="http://docs.aws.amazon.com/organizations/latest/userguide/orgs_monitoring.html">Monitoring
%% the Activity in Your Organization</a> in the <i>AWS Organizations User
%% Guide.</i>
%%
%% </li> </ul> <p/> When you call the <code>CreateGovCloudAccount</code>
%% action, you create two accounts: a standalone account in the AWS GovCloud
%% (US) Region and an associated account in the commercial Region for billing
%% and support purposes. The account in the commercial Region is
%% automatically a member of the organization whose credentials made the
%% request. Both accounts are associated with the same email address.
%%
%% A role is created in the new account in the commercial Region that allows
%% the master account in the organization in the commercial Region to assume
%% it. An AWS GovCloud (US) account is then created and associated with the
%% commercial account that you just created. A role is created in the new AWS
%% GovCloud (US) account that can be assumed by the AWS GovCloud (US) account
%% that is associated with the master account of the commercial organization.
%% For more information and to view a diagram that explains how account
%% access works, see <a
%% href="http://docs.aws.amazon.com/govcloud-us/latest/UserGuide/govcloud-organizations.html">AWS
%% Organizations</a> in the <i>AWS GovCloud User Guide.</i>
%%
%% For more information about creating accounts, see <a
%% href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_accounts_create.html">Creating
%% an AWS Account in Your Organization</a> in the <i>AWS Organizations User
%% Guide.</i>
%%
%% <important> <ul> <li> When you create an account in an organization using
%% the AWS Organizations console, API, or CLI commands, the information
%% required for the account to operate as a standalone account is <i>not</i>
%% automatically collected. This includes a payment method and signing the
%% end user license agreement (EULA). If you must remove an account from your
%% organization later, you can do so only after you provide the missing
%% information. Follow the steps at <a
%% href="http://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_accounts_remove.html#leave-without-all-info">
%% To leave an organization as a member account</a> in the <i>AWS
%% Organizations User Guide.</i>
%%
%% </li> <li> If you get an exception that indicates that you exceeded your
%% account limits for the organization, contact <a
%% href="https://console.aws.amazon.com/support/home#/">AWS Support</a>.
%%
%% </li> <li> If you get an exception that indicates that the operation
%% failed because your organization is still initializing, wait one hour and
%% then try again. If the error persists, contact <a
%% href="https://console.aws.amazon.com/support/home#/">AWS Support</a>.
%%
%% </li> <li> Using <code>CreateGovCloudAccount</code> to create multiple
%% temporary accounts isn't recommended. You can only close an account from
%% the AWS Billing and Cost Management console, and you must be signed in as
%% the root user. For information on the requirements and process for closing
%% an account, see <a
%% href="http://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_accounts_close.html">Closing
%% an AWS Account</a> in the <i>AWS Organizations User Guide</i>.
%%
%% </li> </ul> </important> <note> When you create a member account with this
%% operation, you can choose whether to create the account with the <b>IAM
%% User and Role Access to Billing Information</b> switch enabled. If you
%% enable it, IAM users and roles that have appropriate permissions can view
%% billing information for the account. If you disable it, only the account
%% root user can access billing information. For information about how to
%% disable this switch for an account, see <a
%% href="https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/grantaccess.html">Granting
%% Access to Your Billing Information and Tools</a>.
%%
%% </note>
create_gov_cloud_account(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_gov_cloud_account(Client, Input, []).
create_gov_cloud_account(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateGovCloudAccount">>, Input, Options).

%% @doc Creates an AWS organization. The account whose user is calling the
%% <code>CreateOrganization</code> operation automatically becomes the <a
%% href="https://docs.aws.amazon.com/IAM/latest/UserGuide/orgs_getting-started_concepts.html#account">master
%% account</a> of the new organization.
%%
%% This operation must be called using credentials from the account that is
%% to become the new organization's master account. The principal must also
%% have the relevant IAM permissions.
%%
%% By default (or if you set the <code>FeatureSet</code> parameter to
%% <code>ALL</code>), the new organization is created with all features
%% enabled and service control policies automatically enabled in the root. If
%% you instead choose to create the organization supporting only the
%% consolidated billing features by setting the <code>FeatureSet</code>
%% parameter to <code>CONSOLIDATED_BILLING"</code>, no policy types are
%% enabled by default, and you can't use organization policies
create_organization(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_organization(Client, Input, []).
create_organization(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateOrganization">>, Input, Options).

%% @doc Creates an organizational unit (OU) within a root or parent OU. An OU
%% is a container for accounts that enables you to organize your accounts to
%% apply policies according to your business requirements. The number of
%% levels deep that you can nest OUs is dependent upon the policy types
%% enabled for that root. For service control policies, the limit is five.
%%
%% For more information about OUs, see <a
%% href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_ous.html">Managing
%% Organizational Units</a> in the <i>AWS Organizations User Guide.</i>
%%
%% This operation can be called only from the organization's master account.
create_organizational_unit(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_organizational_unit(Client, Input, []).
create_organizational_unit(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateOrganizationalUnit">>, Input, Options).

%% @doc Creates a policy of a specified type that you can attach to a root,
%% an organizational unit (OU), or an individual AWS account.
%%
%% For more information about policies and their use, see <a
%% href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies.html">Managing
%% Organization Policies</a>.
%%
%% This operation can be called only from the organization's master account.
create_policy(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_policy(Client, Input, []).
create_policy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreatePolicy">>, Input, Options).

%% @doc Declines a handshake request. This sets the handshake state to
%% <code>DECLINED</code> and effectively deactivates the request.
%%
%% This operation can be called only from the account that received the
%% handshake. The originator of the handshake can use <a>CancelHandshake</a>
%% instead. The originator can't reactivate a declined request, but can
%% reinitiate the process with a new handshake request.
%%
%% After you decline a handshake, it continues to appear in the results of
%% relevant APIs for only 30 days. After that, it's deleted.
decline_handshake(Client, Input)
  when is_map(Client), is_map(Input) ->
    decline_handshake(Client, Input, []).
decline_handshake(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeclineHandshake">>, Input, Options).

%% @doc Deletes the organization. You can delete an organization only by
%% using credentials from the master account. The organization must be empty
%% of member accounts.
delete_organization(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_organization(Client, Input, []).
delete_organization(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteOrganization">>, Input, Options).

%% @doc Deletes an organizational unit (OU) from a root or another OU. You
%% must first remove all accounts and child OUs from the OU that you want to
%% delete.
%%
%% This operation can be called only from the organization's master account.
delete_organizational_unit(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_organizational_unit(Client, Input, []).
delete_organizational_unit(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteOrganizationalUnit">>, Input, Options).

%% @doc Deletes the specified policy from your organization. Before you
%% perform this operation, you must first detach the policy from all
%% organizational units (OUs), roots, and accounts.
%%
%% This operation can be called only from the organization's master account.
delete_policy(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_policy(Client, Input, []).
delete_policy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeletePolicy">>, Input, Options).

%% @doc Removes the specified member AWS account as a delegated administrator
%% for the specified AWS service.
%%
%% <important> Deregistering a delegated administrator can have unintended
%% impacts on the functionality of the enabled AWS service. See the
%% documentation for the enabled service before you deregister a delegated
%% administrator so that you understand any potential impacts.
%%
%% </important> You can run this action only for AWS services that support
%% this feature. For a current list of services that support it, see the
%% column <i>Supports Delegated Administrator</i> in the table at <a
%% href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_integrated-services-list.html">AWS
%% Services that you can use with AWS Organizations</a> in the <i>AWS
%% Organizations User Guide.</i>
%%
%% This operation can be called only from the organization's master account.
deregister_delegated_administrator(Client, Input)
  when is_map(Client), is_map(Input) ->
    deregister_delegated_administrator(Client, Input, []).
deregister_delegated_administrator(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeregisterDelegatedAdministrator">>, Input, Options).

%% @doc Retrieves AWS Organizations-related information about the specified
%% account.
%%
%% This operation can be called only from the organization's master account
%% or by a member account that is a delegated administrator for an AWS
%% service.
describe_account(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_account(Client, Input, []).
describe_account(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeAccount">>, Input, Options).

%% @doc Retrieves the current status of an asynchronous request to create an
%% account.
%%
%% This operation can be called only from the organization's master account
%% or by a member account that is a delegated administrator for an AWS
%% service.
describe_create_account_status(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_create_account_status(Client, Input, []).
describe_create_account_status(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeCreateAccountStatus">>, Input, Options).

%% @doc Returns the contents of the effective policy for specified policy
%% type and account. The effective policy is the aggregation of any policies
%% of the specified type that the account inherits, plus any policy of that
%% type that is directly attached to the account.
%%
%% This operation applies only to policy types <i>other</i> than service
%% control policies (SCPs).
%%
%% For more information about policy inheritance, see <a
%% href="http://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies-inheritance.html">How
%% Policy Inheritance Works</a> in the <i>AWS Organizations User Guide</i>.
%%
%% This operation can be called only from the organization's master account
%% or by a member account that is a delegated administrator for an AWS
%% service.
describe_effective_policy(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_effective_policy(Client, Input, []).
describe_effective_policy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeEffectivePolicy">>, Input, Options).

%% @doc Retrieves information about a previously requested handshake. The
%% handshake ID comes from the response to the original
%% <a>InviteAccountToOrganization</a> operation that generated the handshake.
%%
%% You can access handshakes that are <code>ACCEPTED</code>,
%% <code>DECLINED</code>, or <code>CANCELED</code> for only 30 days after
%% they change to that state. They're then deleted and no longer accessible.
%%
%% This operation can be called from any account in the organization.
describe_handshake(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_handshake(Client, Input, []).
describe_handshake(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeHandshake">>, Input, Options).

%% @doc Retrieves information about the organization that the user's account
%% belongs to.
%%
%% This operation can be called from any account in the organization.
%%
%% <note> Even if a policy type is shown as available in the organization,
%% you can disable it separately at the root level with
%% <a>DisablePolicyType</a>. Use <a>ListRoots</a> to see the status of policy
%% types for a specified root.
%%
%% </note>
describe_organization(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_organization(Client, Input, []).
describe_organization(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeOrganization">>, Input, Options).

%% @doc Retrieves information about an organizational unit (OU).
%%
%% This operation can be called only from the organization's master account
%% or by a member account that is a delegated administrator for an AWS
%% service.
describe_organizational_unit(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_organizational_unit(Client, Input, []).
describe_organizational_unit(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeOrganizationalUnit">>, Input, Options).

%% @doc Retrieves information about a policy.
%%
%% This operation can be called only from the organization's master account
%% or by a member account that is a delegated administrator for an AWS
%% service.
describe_policy(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_policy(Client, Input, []).
describe_policy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribePolicy">>, Input, Options).

%% @doc Detaches a policy from a target root, organizational unit (OU), or
%% account.
%%
%% <important> If the policy being detached is a service control policy
%% (SCP), the changes to permissions for AWS Identity and Access Management
%% (IAM) users and roles in affected accounts are immediate.
%%
%% </important> Every root, OU, and account must have at least one SCP
%% attached. If you want to replace the default <code>FullAWSAccess</code>
%% policy with an SCP that limits the permissions that can be delegated, you
%% must attach the replacement SCP before you can remove the default SCP.
%% This is the authorization strategy of an "<a
%% href="https://docs.aws.amazon.com/organizations/latest/userguide/SCP_strategies.html#orgs_policies_allowlist">allow
%% list</a>". If you instead attach a second SCP and leave the
%% <code>FullAWSAccess</code> SCP still attached, and specify <code>"Effect":
%% "Deny"</code> in the second SCP to override the <code>"Effect":
%% "Allow"</code> in the <code>FullAWSAccess</code> policy (or any other
%% attached SCP), you're using the authorization strategy of a "<a
%% href="https://docs.aws.amazon.com/organizations/latest/userguide/SCP_strategies.html#orgs_policies_denylist">deny
%% list</a>".
%%
%% This operation can be called only from the organization's master account.
detach_policy(Client, Input)
  when is_map(Client), is_map(Input) ->
    detach_policy(Client, Input, []).
detach_policy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DetachPolicy">>, Input, Options).

%% @doc Disables the integration of an AWS service (the service that is
%% specified by <code>ServicePrincipal</code>) with AWS Organizations. When
%% you disable integration, the specified service no longer can create a <a
%% href="http://docs.aws.amazon.com/IAM/latest/UserGuide/using-service-linked-roles.html">service-linked
%% role</a> in <i>new</i> accounts in your organization. This means the
%% service can't perform operations on your behalf on any new accounts in
%% your organization. The service can still perform operations in older
%% accounts until the service completes its clean-up from AWS Organizations.
%%
%% <p/> <important> We recommend that you disable integration between AWS
%% Organizations and the specified AWS service by using the console or
%% commands that are provided by the specified service. Doing so ensures that
%% the other service is aware that it can clean up any resources that are
%% required only for the integration. How the service cleans up its resources
%% in the organization's accounts depends on that service. For more
%% information, see the documentation for the other AWS service.
%%
%% </important> After you perform the <code>DisableAWSServiceAccess</code>
%% operation, the specified service can no longer perform operations in your
%% organization's accounts unless the operations are explicitly permitted by
%% the IAM policies that are attached to your roles.
%%
%% For more information about integrating other services with AWS
%% Organizations, including the list of services that work with
%% Organizations, see <a
%% href="http://docs.aws.amazon.com/organizations/latest/userguide/orgs_integrate_services.html">Integrating
%% AWS Organizations with Other AWS Services</a> in the <i>AWS Organizations
%% User Guide.</i>
%%
%% This operation can be called only from the organization's master account.
disable_a_w_s_service_access(Client, Input)
  when is_map(Client), is_map(Input) ->
    disable_a_w_s_service_access(Client, Input, []).
disable_a_w_s_service_access(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DisableAWSServiceAccess">>, Input, Options).

%% @doc Disables an organizational policy type in a root. A policy of a
%% certain type can be attached to entities in a root only if that type is
%% enabled in the root. After you perform this operation, you no longer can
%% attach policies of the specified type to that root or to any
%% organizational unit (OU) or account in that root. You can undo this by
%% using the <a>EnablePolicyType</a> operation.
%%
%% This is an asynchronous request that AWS performs in the background. If
%% you disable a policy type for a root, it still appears enabled for the
%% organization if <a
%% href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_org_support-all-features.html">all
%% features</a> are enabled for the organization. AWS recommends that you
%% first use <a>ListRoots</a> to see the status of policy types for a
%% specified root, and then use this operation.
%%
%% This operation can be called only from the organization's master account.
%%
%% To view the status of available policy types in the organization, use
%% <a>DescribeOrganization</a>.
disable_policy_type(Client, Input)
  when is_map(Client), is_map(Input) ->
    disable_policy_type(Client, Input, []).
disable_policy_type(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DisablePolicyType">>, Input, Options).

%% @doc Enables the integration of an AWS service (the service that is
%% specified by <code>ServicePrincipal</code>) with AWS Organizations. When
%% you enable integration, you allow the specified service to create a <a
%% href="http://docs.aws.amazon.com/IAM/latest/UserGuide/using-service-linked-roles.html">service-linked
%% role</a> in all the accounts in your organization. This allows the service
%% to perform operations on your behalf in your organization and its
%% accounts.
%%
%% <important> We recommend that you enable integration between AWS
%% Organizations and the specified AWS service by using the console or
%% commands that are provided by the specified service. Doing so ensures that
%% the service is aware that it can create the resources that are required
%% for the integration. How the service creates those resources in the
%% organization's accounts depends on that service. For more information, see
%% the documentation for the other AWS service.
%%
%% </important> For more information about enabling services to integrate
%% with AWS Organizations, see <a
%% href="http://docs.aws.amazon.com/organizations/latest/userguide/orgs_integrate_services.html">Integrating
%% AWS Organizations with Other AWS Services</a> in the <i>AWS Organizations
%% User Guide.</i>
%%
%% This operation can be called only from the organization's master account
%% and only if the organization has <a
%% href="http://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_org_support-all-features.html">enabled
%% all features</a>.
enable_a_w_s_service_access(Client, Input)
  when is_map(Client), is_map(Input) ->
    enable_a_w_s_service_access(Client, Input, []).
enable_a_w_s_service_access(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"EnableAWSServiceAccess">>, Input, Options).

%% @doc Enables all features in an organization. This enables the use of
%% organization policies that can restrict the services and actions that can
%% be called in each account. Until you enable all features, you have access
%% only to consolidated billing, and you can't use any of the advanced
%% account administration features that AWS Organizations supports. For more
%% information, see <a
%% href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_org_support-all-features.html">Enabling
%% All Features in Your Organization</a> in the <i>AWS Organizations User
%% Guide.</i>
%%
%% <important> This operation is required only for organizations that were
%% created explicitly with only the consolidated billing features enabled.
%% Calling this operation sends a handshake to every invited account in the
%% organization. The feature set change can be finalized and the additional
%% features enabled only after all administrators in the invited accounts
%% approve the change by accepting the handshake.
%%
%% </important> After you enable all features, you can separately enable or
%% disable individual policy types in a root using <a>EnablePolicyType</a>
%% and <a>DisablePolicyType</a>. To see the status of policy types in a root,
%% use <a>ListRoots</a>.
%%
%% After all invited member accounts accept the handshake, you finalize the
%% feature set change by accepting the handshake that contains
%% <code>"Action": "ENABLE_ALL_FEATURES"</code>. This completes the change.
%%
%% After you enable all features in your organization, the master account in
%% the organization can apply policies on all member accounts. These policies
%% can restrict what users and even administrators in those accounts can do.
%% The master account can apply policies that prevent accounts from leaving
%% the organization. Ensure that your account administrators are aware of
%% this.
%%
%% This operation can be called only from the organization's master account.
enable_all_features(Client, Input)
  when is_map(Client), is_map(Input) ->
    enable_all_features(Client, Input, []).
enable_all_features(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"EnableAllFeatures">>, Input, Options).

%% @doc Enables a policy type in a root. After you enable a policy type in a
%% root, you can attach policies of that type to the root, any organizational
%% unit (OU), or account in that root. You can undo this by using the
%% <a>DisablePolicyType</a> operation.
%%
%% This is an asynchronous request that AWS performs in the background. AWS
%% recommends that you first use <a>ListRoots</a> to see the status of policy
%% types for a specified root, and then use this operation.
%%
%% This operation can be called only from the organization's master account.
%%
%% You can enable a policy type in a root only if that policy type is
%% available in the organization. To view the status of available policy
%% types in the organization, use <a>DescribeOrganization</a>.
enable_policy_type(Client, Input)
  when is_map(Client), is_map(Input) ->
    enable_policy_type(Client, Input, []).
enable_policy_type(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"EnablePolicyType">>, Input, Options).

%% @doc Sends an invitation to another account to join your organization as a
%% member account. AWS Organizations sends email on your behalf to the email
%% address that is associated with the other account's owner. The invitation
%% is implemented as a <a>Handshake</a> whose details are in the response.
%%
%% <important> <ul> <li> You can invite AWS accounts only from the same
%% seller as the master account. For example, if your organization's master
%% account was created by Amazon Internet Services Pvt. Ltd (AISPL), an AWS
%% seller in India, you can invite only other AISPL accounts to your
%% organization. You can't combine accounts from AISPL and AWS or from any
%% other AWS seller. For more information, see <a
%% href="http://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/useconsolidatedbilliing-India.html">Consolidated
%% Billing in India</a>.
%%
%% </li> <li> If you receive an exception that indicates that you exceeded
%% your account limits for the organization or that the operation failed
%% because your organization is still initializing, wait one hour and then
%% try again. If the error persists after an hour, contact <a
%% href="https://console.aws.amazon.com/support/home#/">AWS Support</a>.
%%
%% </li> </ul> </important> This operation can be called only from the
%% organization's master account.
invite_account_to_organization(Client, Input)
  when is_map(Client), is_map(Input) ->
    invite_account_to_organization(Client, Input, []).
invite_account_to_organization(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"InviteAccountToOrganization">>, Input, Options).

%% @doc Removes a member account from its parent organization. This version
%% of the operation is performed by the account that wants to leave. To
%% remove a member account as a user in the master account, use
%% <a>RemoveAccountFromOrganization</a> instead.
%%
%% This operation can be called only from a member account in the
%% organization.
%%
%% <important> <ul> <li> The master account in an organization with all
%% features enabled can set service control policies (SCPs) that can restrict
%% what administrators of member accounts can do. This includes preventing
%% them from successfully calling <code>LeaveOrganization</code> and leaving
%% the organization.
%%
%% </li> <li> You can leave an organization as a member account only if the
%% account is configured with the information required to operate as a
%% standalone account. When you create an account in an organization using
%% the AWS Organizations console, API, or CLI commands, the information
%% required of standalone accounts is <i>not</i> automatically collected. For
%% each account that you want to make standalone, you must do the following
%% steps:
%%
%% <ul> <li> Accept the end user license agreement (EULA)
%%
%% </li> <li> Choose a support plan
%%
%% </li> <li> Provide and verify the required contact information
%%
%% </li> <li> Provide a current payment method
%%
%% </li> </ul> AWS uses the payment method to charge for any billable (not
%% free tier) AWS activity that occurs while the account isn't attached to an
%% organization. Follow the steps at <a
%% href="http://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_accounts_remove.html#leave-without-all-info">
%% To leave an organization when all required account information has not yet
%% been provided</a> in the <i>AWS Organizations User Guide.</i>
%%
%% </li> <li> You can leave an organization only after you enable IAM user
%% access to billing in your account. For more information, see <a
%% href="http://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/grantaccess.html#ControllingAccessWebsite-Activate">Activating
%% Access to the Billing and Cost Management Console</a> in the <i>AWS
%% Billing and Cost Management User Guide.</i>
%%
%% </li> </ul> </important>
leave_organization(Client, Input)
  when is_map(Client), is_map(Input) ->
    leave_organization(Client, Input, []).
leave_organization(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"LeaveOrganization">>, Input, Options).

%% @doc Returns a list of the AWS services that you enabled to integrate with
%% your organization. After a service on this list creates the resources that
%% it requires for the integration, it can perform operations on your
%% organization and its accounts.
%%
%% For more information about integrating other services with AWS
%% Organizations, including the list of services that currently work with
%% Organizations, see <a
%% href="http://docs.aws.amazon.com/organizations/latest/userguide/orgs_integrate_services.html">Integrating
%% AWS Organizations with Other AWS Services</a> in the <i>AWS Organizations
%% User Guide.</i>
%%
%% This operation can be called only from the organization's master account
%% or by a member account that is a delegated administrator for an AWS
%% service.
list_a_w_s_service_access_for_organization(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_a_w_s_service_access_for_organization(Client, Input, []).
list_a_w_s_service_access_for_organization(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListAWSServiceAccessForOrganization">>, Input, Options).

%% @doc Lists all the accounts in the organization. To request only the
%% accounts in a specified root or organizational unit (OU), use the
%% <a>ListAccountsForParent</a> operation instead.
%%
%% <note> Always check the <code>NextToken</code> response parameter for a
%% <code>null</code> value when calling a <code>List*</code> operation. These
%% operations can occasionally return an empty set of results even when there
%% are more results available. The <code>NextToken</code> response parameter
%% value is <code>null</code> <i>only</i> when there are no more results to
%% display.
%%
%% </note> This operation can be called only from the organization's master
%% account or by a member account that is a delegated administrator for an
%% AWS service.
list_accounts(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_accounts(Client, Input, []).
list_accounts(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListAccounts">>, Input, Options).

%% @doc Lists the accounts in an organization that are contained by the
%% specified target root or organizational unit (OU). If you specify the
%% root, you get a list of all the accounts that aren't in any OU. If you
%% specify an OU, you get a list of all the accounts in only that OU and not
%% in any child OUs. To get a list of all accounts in the organization, use
%% the <a>ListAccounts</a> operation.
%%
%% <note> Always check the <code>NextToken</code> response parameter for a
%% <code>null</code> value when calling a <code>List*</code> operation. These
%% operations can occasionally return an empty set of results even when there
%% are more results available. The <code>NextToken</code> response parameter
%% value is <code>null</code> <i>only</i> when there are no more results to
%% display.
%%
%% </note> This operation can be called only from the organization's master
%% account or by a member account that is a delegated administrator for an
%% AWS service.
list_accounts_for_parent(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_accounts_for_parent(Client, Input, []).
list_accounts_for_parent(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListAccountsForParent">>, Input, Options).

%% @doc Lists all of the organizational units (OUs) or accounts that are
%% contained in the specified parent OU or root. This operation, along with
%% <a>ListParents</a> enables you to traverse the tree structure that makes
%% up this root.
%%
%% <note> Always check the <code>NextToken</code> response parameter for a
%% <code>null</code> value when calling a <code>List*</code> operation. These
%% operations can occasionally return an empty set of results even when there
%% are more results available. The <code>NextToken</code> response parameter
%% value is <code>null</code> <i>only</i> when there are no more results to
%% display.
%%
%% </note> This operation can be called only from the organization's master
%% account or by a member account that is a delegated administrator for an
%% AWS service.
list_children(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_children(Client, Input, []).
list_children(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListChildren">>, Input, Options).

%% @doc Lists the account creation requests that match the specified status
%% that is currently being tracked for the organization.
%%
%% <note> Always check the <code>NextToken</code> response parameter for a
%% <code>null</code> value when calling a <code>List*</code> operation. These
%% operations can occasionally return an empty set of results even when there
%% are more results available. The <code>NextToken</code> response parameter
%% value is <code>null</code> <i>only</i> when there are no more results to
%% display.
%%
%% </note> This operation can be called only from the organization's master
%% account or by a member account that is a delegated administrator for an
%% AWS service.
list_create_account_status(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_create_account_status(Client, Input, []).
list_create_account_status(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListCreateAccountStatus">>, Input, Options).

%% @doc Lists the AWS accounts that are designated as delegated
%% administrators in this organization.
%%
%% This operation can be called only from the organization's master account
%% or by a member account that is a delegated administrator for an AWS
%% service.
list_delegated_administrators(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_delegated_administrators(Client, Input, []).
list_delegated_administrators(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListDelegatedAdministrators">>, Input, Options).

%% @doc List the AWS services for which the specified account is a delegated
%% administrator.
%%
%% This operation can be called only from the organization's master account
%% or by a member account that is a delegated administrator for an AWS
%% service.
list_delegated_services_for_account(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_delegated_services_for_account(Client, Input, []).
list_delegated_services_for_account(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListDelegatedServicesForAccount">>, Input, Options).

%% @doc Lists the current handshakes that are associated with the account of
%% the requesting user.
%%
%% Handshakes that are <code>ACCEPTED</code>, <code>DECLINED</code>, or
%% <code>CANCELED</code> appear in the results of this API for only 30 days
%% after changing to that state. After that, they're deleted and no longer
%% accessible.
%%
%% <note> Always check the <code>NextToken</code> response parameter for a
%% <code>null</code> value when calling a <code>List*</code> operation. These
%% operations can occasionally return an empty set of results even when there
%% are more results available. The <code>NextToken</code> response parameter
%% value is <code>null</code> <i>only</i> when there are no more results to
%% display.
%%
%% </note> This operation can be called only from the organization's master
%% account or by a member account that is a delegated administrator for an
%% AWS service.
list_handshakes_for_account(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_handshakes_for_account(Client, Input, []).
list_handshakes_for_account(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListHandshakesForAccount">>, Input, Options).

%% @doc Lists the handshakes that are associated with the organization that
%% the requesting user is part of. The
%% <code>ListHandshakesForOrganization</code> operation returns a list of
%% handshake structures. Each structure contains details and status about a
%% handshake.
%%
%% Handshakes that are <code>ACCEPTED</code>, <code>DECLINED</code>, or
%% <code>CANCELED</code> appear in the results of this API for only 30 days
%% after changing to that state. After that, they're deleted and no longer
%% accessible.
%%
%% <note> Always check the <code>NextToken</code> response parameter for a
%% <code>null</code> value when calling a <code>List*</code> operation. These
%% operations can occasionally return an empty set of results even when there
%% are more results available. The <code>NextToken</code> response parameter
%% value is <code>null</code> <i>only</i> when there are no more results to
%% display.
%%
%% </note> This operation can be called only from the organization's master
%% account or by a member account that is a delegated administrator for an
%% AWS service.
list_handshakes_for_organization(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_handshakes_for_organization(Client, Input, []).
list_handshakes_for_organization(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListHandshakesForOrganization">>, Input, Options).

%% @doc Lists the organizational units (OUs) in a parent organizational unit
%% or root.
%%
%% <note> Always check the <code>NextToken</code> response parameter for a
%% <code>null</code> value when calling a <code>List*</code> operation. These
%% operations can occasionally return an empty set of results even when there
%% are more results available. The <code>NextToken</code> response parameter
%% value is <code>null</code> <i>only</i> when there are no more results to
%% display.
%%
%% </note> This operation can be called only from the organization's master
%% account or by a member account that is a delegated administrator for an
%% AWS service.
list_organizational_units_for_parent(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_organizational_units_for_parent(Client, Input, []).
list_organizational_units_for_parent(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListOrganizationalUnitsForParent">>, Input, Options).

%% @doc Lists the root or organizational units (OUs) that serve as the
%% immediate parent of the specified child OU or account. This operation,
%% along with <a>ListChildren</a> enables you to traverse the tree structure
%% that makes up this root.
%%
%% <note> Always check the <code>NextToken</code> response parameter for a
%% <code>null</code> value when calling a <code>List*</code> operation. These
%% operations can occasionally return an empty set of results even when there
%% are more results available. The <code>NextToken</code> response parameter
%% value is <code>null</code> <i>only</i> when there are no more results to
%% display.
%%
%% </note> This operation can be called only from the organization's master
%% account or by a member account that is a delegated administrator for an
%% AWS service.
%%
%% <note> In the current release, a child can have only a single parent.
%%
%% </note>
list_parents(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_parents(Client, Input, []).
list_parents(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListParents">>, Input, Options).

%% @doc Retrieves the list of all policies in an organization of a specified
%% type.
%%
%% <note> Always check the <code>NextToken</code> response parameter for a
%% <code>null</code> value when calling a <code>List*</code> operation. These
%% operations can occasionally return an empty set of results even when there
%% are more results available. The <code>NextToken</code> response parameter
%% value is <code>null</code> <i>only</i> when there are no more results to
%% display.
%%
%% </note> This operation can be called only from the organization's master
%% account or by a member account that is a delegated administrator for an
%% AWS service.
list_policies(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_policies(Client, Input, []).
list_policies(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListPolicies">>, Input, Options).

%% @doc Lists the policies that are directly attached to the specified target
%% root, organizational unit (OU), or account. You must specify the policy
%% type that you want included in the returned list.
%%
%% <note> Always check the <code>NextToken</code> response parameter for a
%% <code>null</code> value when calling a <code>List*</code> operation. These
%% operations can occasionally return an empty set of results even when there
%% are more results available. The <code>NextToken</code> response parameter
%% value is <code>null</code> <i>only</i> when there are no more results to
%% display.
%%
%% </note> This operation can be called only from the organization's master
%% account or by a member account that is a delegated administrator for an
%% AWS service.
list_policies_for_target(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_policies_for_target(Client, Input, []).
list_policies_for_target(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListPoliciesForTarget">>, Input, Options).

%% @doc Lists the roots that are defined in the current organization.
%%
%% <note> Always check the <code>NextToken</code> response parameter for a
%% <code>null</code> value when calling a <code>List*</code> operation. These
%% operations can occasionally return an empty set of results even when there
%% are more results available. The <code>NextToken</code> response parameter
%% value is <code>null</code> <i>only</i> when there are no more results to
%% display.
%%
%% </note> This operation can be called only from the organization's master
%% account or by a member account that is a delegated administrator for an
%% AWS service.
%%
%% <note> Policy types can be enabled and disabled in roots. This is distinct
%% from whether they're available in the organization. When you enable all
%% features, you make policy types available for use in that organization.
%% Individual policy types can then be enabled and disabled in a root. To see
%% the availability of a policy type in an organization, use
%% <a>DescribeOrganization</a>.
%%
%% </note>
list_roots(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_roots(Client, Input, []).
list_roots(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListRoots">>, Input, Options).

%% @doc Lists tags for the specified resource.
%%
%% Currently, you can list tags on an account in AWS Organizations.
%%
%% This operation can be called only from the organization's master account
%% or by a member account that is a delegated administrator for an AWS
%% service.
list_tags_for_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_tags_for_resource(Client, Input, []).
list_tags_for_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListTagsForResource">>, Input, Options).

%% @doc Lists all the roots, organizational units (OUs), and accounts that
%% the specified policy is attached to.
%%
%% <note> Always check the <code>NextToken</code> response parameter for a
%% <code>null</code> value when calling a <code>List*</code> operation. These
%% operations can occasionally return an empty set of results even when there
%% are more results available. The <code>NextToken</code> response parameter
%% value is <code>null</code> <i>only</i> when there are no more results to
%% display.
%%
%% </note> This operation can be called only from the organization's master
%% account or by a member account that is a delegated administrator for an
%% AWS service.
list_targets_for_policy(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_targets_for_policy(Client, Input, []).
list_targets_for_policy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListTargetsForPolicy">>, Input, Options).

%% @doc Moves an account from its current source parent root or
%% organizational unit (OU) to the specified destination parent root or OU.
%%
%% This operation can be called only from the organization's master account.
move_account(Client, Input)
  when is_map(Client), is_map(Input) ->
    move_account(Client, Input, []).
move_account(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"MoveAccount">>, Input, Options).

%% @doc Enables the specified member account to administer the Organizations
%% features of the specified AWS service. It grants read-only access to AWS
%% Organizations service data. The account still requires IAM permissions to
%% access and administer the AWS service.
%%
%% You can run this action only for AWS services that support this feature.
%% For a current list of services that support it, see the column <i>Supports
%% Delegated Administrator</i> in the table at <a
%% href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_integrated-services-list.html">AWS
%% Services that you can use with AWS Organizations</a> in the <i>AWS
%% Organizations User Guide.</i>
%%
%% This operation can be called only from the organization's master account.
register_delegated_administrator(Client, Input)
  when is_map(Client), is_map(Input) ->
    register_delegated_administrator(Client, Input, []).
register_delegated_administrator(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RegisterDelegatedAdministrator">>, Input, Options).

%% @doc Removes the specified account from the organization.
%%
%% The removed account becomes a standalone account that isn't a member of
%% any organization. It's no longer subject to any policies and is
%% responsible for its own bill payments. The organization's master account
%% is no longer charged for any expenses accrued by the member account after
%% it's removed from the organization.
%%
%% This operation can be called only from the organization's master account.
%% Member accounts can remove themselves with <a>LeaveOrganization</a>
%% instead.
%%
%% <important> You can remove an account from your organization only if the
%% account is configured with the information required to operate as a
%% standalone account. When you create an account in an organization using
%% the AWS Organizations console, API, or CLI commands, the information
%% required of standalone accounts is <i>not</i> automatically collected. For
%% an account that you want to make standalone, you must accept the end user
%% license agreement (EULA), choose a support plan, provide and verify the
%% required contact information, and provide a current payment method. AWS
%% uses the payment method to charge for any billable (not free tier) AWS
%% activity that occurs while the account isn't attached to an organization.
%% To remove an account that doesn't yet have this information, you must sign
%% in as the member account and follow the steps at <a
%% href="http://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_accounts_remove.html#leave-without-all-info">
%% To leave an organization when all required account information has not yet
%% been provided</a> in the <i>AWS Organizations User Guide.</i>
%%
%% </important>
remove_account_from_organization(Client, Input)
  when is_map(Client), is_map(Input) ->
    remove_account_from_organization(Client, Input, []).
remove_account_from_organization(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RemoveAccountFromOrganization">>, Input, Options).

%% @doc Adds one or more tags to the specified resource.
%%
%% Currently, you can tag and untag accounts in AWS Organizations.
%%
%% This operation can be called only from the organization's master account.
tag_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    tag_resource(Client, Input, []).
tag_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"TagResource">>, Input, Options).

%% @doc Removes a tag from the specified resource.
%%
%% Currently, you can tag and untag accounts in AWS Organizations.
%%
%% This operation can be called only from the organization's master account.
untag_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    untag_resource(Client, Input, []).
untag_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UntagResource">>, Input, Options).

%% @doc Renames the specified organizational unit (OU). The ID and ARN don't
%% change. The child OUs and accounts remain in place, and any attached
%% policies of the OU remain attached.
%%
%% This operation can be called only from the organization's master account.
update_organizational_unit(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_organizational_unit(Client, Input, []).
update_organizational_unit(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateOrganizationalUnit">>, Input, Options).

%% @doc Updates an existing policy with a new name, description, or content.
%% If you don't supply any parameter, that value remains unchanged. You can't
%% change a policy's type.
%%
%% This operation can be called only from the organization's master account.
update_policy(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_policy(Client, Input, []).
update_policy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdatePolicy">>, Input, Options).

%%====================================================================
%% Internal functions
%%====================================================================

-spec request(aws_client:aws_client(), binary(), map(), list()) ->
    {ok, Result, {integer(), list(), hackney:client()}} |
    {error, Error, {integer(), list(), hackney:client()}} |
    {error, term()} when
    Result :: map() | undefined,
    Error :: map().
request(Client, Action, Input, Options) ->
    Client1 = Client#{service => <<"organizations">>,
                      region => <<"us-east-1">>},
    Host = get_host(<<"organizations">>, Client1),
    URL = get_url(Host, Client1),
    Headers = [
        {<<"Host">>, Host},
        {<<"Content-Type">>, <<"application/x-amz-json-1.1">>},
        {<<"X-Amz-Target">>, << <<"AWSOrganizationsV20161128.">>/binary, Action/binary>>}
    ],
    Payload = jsx:encode(Input),
    SignedHeaders = aws_request:sign_request(Client1, <<"POST">>, URL, Headers, Payload),
    Response = hackney:request(post, URL, SignedHeaders, Payload, Options),
    handle_response(Response).

handle_response({ok, 200, ResponseHeaders, Client}) ->
    case hackney:body(Client) of
        {ok, <<>>} ->
            {ok, undefined, {200, ResponseHeaders, Client}};
        {ok, Body} ->
            Result = jsx:decode(Body, [return_maps]),
            {ok, Result, {200, ResponseHeaders, Client}}
    end;
handle_response({ok, StatusCode, ResponseHeaders, Client}) ->
    {ok, Body} = hackney:body(Client),
    Error = jsx:decode(Body, [return_maps]),
    {error, Error, {StatusCode, ResponseHeaders, Client}};
handle_response({error, Reason}) ->
    {error, Reason}.

get_host(_EndpointPrefix, #{region := <<"local">>}) ->
    <<"localhost">>;
get_host(EndpointPrefix, #{endpoint := Endpoint}) ->
    aws_util:binary_join([EndpointPrefix, Endpoint], <<".">>).

get_url(Host, Client) ->
    Proto = maps:get(proto, Client),
    Port = maps:get(port, Client),
    aws_util:binary_join([Proto, <<"://">>, Host, <<":">>, Port, <<"/">>], <<"">>).
