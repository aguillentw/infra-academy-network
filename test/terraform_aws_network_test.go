package test

import (
	"testing"

	"github.com/gruntwork-io/terratest/modules/aws"
	"github.com/gruntwork-io/terratest/modules/terraform"
	"github.com/stretchr/testify/assert"
)

func TestVpcId(t *testing.T) {
	// GIVEN ------------------------------------------------------------------
	vpcCidr := "10.10.0.0/16"
	awsRegion := "eu-west-1"
	vpcName := "ag_vpc"

	// Construct the terraform options with default retryable errors to handle the most common
	// retryable errors in terraform testing.
	terraformOptions := terraform.WithDefaultRetryableErrors(t, &terraform.Options{
		// Set the path to the Terraform code that will be tested.
		TerraformDir: "..",

		// Variables to pass to our Terraform code using -var options
		Vars: map[string]interface{}{
			"vpc_cidr": vpcCidr,
			//			"private_subnet_cidr": privateSubnetCidr,
			//			"public_subnet_cidr":  publicSubnetCidr,
			"aws_region": awsRegion,
		},
	})

	// WHEN -------------------------------------------------------------------
	// Clean up resources with "terraform destroy" at the end of the test.
	defer terraform.Destroy(t, terraformOptions)

	// Run "terraform init" and "terraform apply". Fail the test if there are any errors.
	terraform.InitAndApply(t, terraformOptions)

	// THEN -------------------------------------------------------------------
	// Run `terraform output` to get the values of output variables and check they have the expected values.
	actualVpcIdOutput := terraform.Output(t, terraformOptions, "vpc_id")

	actualVpc := aws.GetVpcById(t, actualVpcIdOutput, awsRegion)
	assert.Equal(t, vpcName, actualVpc.Name)
}
