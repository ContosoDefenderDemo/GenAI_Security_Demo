resource "aws_sagemaker_notebook_instance" "my_sagemaker_notebook" {
  name                   = "MySageMakerNotebookInstance"
  role_arn               = "arn:aws:iam::123456789012:role/SageMakerRole"
  instance_type          = "ml.t2.medium"
  direct_internet_access = "Enabled" # Set to "Enabled" or "Disabled"

  # Tags are a map of key-value pairs
  # tags = {
  #   Name = "MySageMakerInstance"
  # }

  # The kms_key_id is omitted to ensure the instance is not encrypted.
  # kms_key_id = ""
  tags = {
    yor_name  = "my_sagemaker_notebook"
    yor_trace = "04400236-aa22-403f-9d28-101c4f4887f0"
  }
}
