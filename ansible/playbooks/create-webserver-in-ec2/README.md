# Create a simple Apache web server in EC2 with a security group to limit access

This playbook and collection of roles will perform the following tasks, in order:
1. Create a security group that limits ssh and HTTP traffic to only the specified public IP address.
2. Create an EC2 instance and add the security group to it.
3. Install Apache on the new VM, enable and start the httpd service.
4. Add a simple static index.html page that displays IP information about the VM.

## Where to configure this example for your environment
You may find all of the variables you need to edit in the ec2-instance role at `./ec2-instance/vars/main.yml`.
Simply change the needed information (IN_ALL_CAPS) to use the information siecific to you environment and save the file.

## How to use
1. Change to the directory `create-webserver-in-ec2`.
2. Execute the playbook using the following command:
   `ansible-playbook ./create_test_webserver.yml --extra-vars '{"new_vm_name":"<DESIRED_NAME_TAG"}'`
   where DESIRED_NAME_TAG is whatever you wish to name the VM (in the instance tag).

Note that the playbook requires the `--extra-vars` portion in order to work properly. This "feature"
is in place to enable you to run the playbook to create as many hosts as you desire.

## Assumptions
1. You have access to a VPC in AWS where you can create security groups and VMS.
2. You have already configured access from your workstation to your VPC.

