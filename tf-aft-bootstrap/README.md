# AWS Control Tower Workshop

This guide helps you customize AWS Control Tower Account Factory for Terraform (AFT).

## Prerequisites

Before setting up AFT, you must have an existing AWS Control Tower landing zone and a separate AWS account known as the AFT management account. This account will host the Terraform pipeline and repository.

### Required Email Addresses
	•	One for the AFT Management account
	•	One for the vending (test) account

Tip: Use the + suffix in emails for easy distinction, e.g., myname+aft@mycompany.com and myname+vending1@mycompany.com

### Organizational Unit (OU)
	•	The vending account must be in an OU managed by Control Tower.
	•	You may use an existing OU or create a new one via the AWS Control Tower console.

Initial Setup Steps
	1.	Log in to the AWS Control Tower Management account using AWS SSO with Administrator access.
	2.	Navigate to the AWS Control Tower Console.
	3.	Optional: Create a new OU (e.g., Infrastructure) via Organizational Units > Add an OU.
	4.	Launch a new AWS account named AFT-Management and associate it with the selected OU.
	•	Follow the Account Factory lab for detailed instructions.
	•	It can take up to 30 minutes for the new account to be provisioned.

⸻

### Prepare Version Control System (VCS)

If deploying AFT for the first time, you must use an external VCS provider. In this workshop, GitHub is used.

You need to import four repositories to your personal GitHub account:

1. aft-account-request

Contains configuration to trigger new account provisioning via AFT.

Import Steps:
	1.	Open: https://github.com/aws-samples/aft-sample-account-request
	2.	Click on + in the top right > Import repository
	3.	Use the source URL above
	4.	Enter your GitHub credentials (username/token)
	5.	Set the owner to yourself, rename the repo to aft-account-request
	6.	Make it private
	7.	Click Begin import

2. aft-global-customizations

Boilerplate for global customizations to all AFT-created accounts.
	•	Import from: https://github.com/aws-samples/aft-sample-global-customizations
	•	Rename to: aft-global-customizations

3. aft-account-customizations

Boilerplate for customizations to specific accounts.
	•	Import from: https://github.com/aws-samples/aft-sample-account-customizations
	•	Rename to: aft-account-customizations

4. aft-account-provisioning-customizations

Provision-time customizations for accounts.
	•	Import from: https://github.com/aws-samples/aft-sample-account-provisioning-customizations
	•	Rename to: aft-account-provisioning-customizations

⸻

## AFT Deployment

AFT is deployed using a Terraform module:
	•	GitHub: https://github.com/aws-ia/terraform-aws-control_tower_account_factory

You must use AWS credentials with Administrator access in the Control Tower Management account.

Deployment Options
	•	AWS CloudShell
	•	Locally installed IDE

Follow the next section of the workshop for detailed environment setup and Terraform deployment steps.

⸻

## References
	•	AWS Control Tower Workshop Home
	•	VCS Alternatives for AFT
