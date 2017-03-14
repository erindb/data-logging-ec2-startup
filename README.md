This is for when I want to spin up a data logging server on EC2 for access from a web browser. I need to listen for POST requests.

## Setting up the EC2 instance

### Prerequisites

* set up an AWS account

### Set up a new instance

1. Go online to the EC2 Dashboard in the AWS console.

	* **Warning:** Pay attention to your *Region*, in the upper right corner of this page. I once had instances running for a couple months on a different region, so I didn't see that they were running and I didn't know how to turn them off.

2. Go to EC2 Instances (in the left panel)

3. Launch Instance

	* **Step 1: Choose an Amazon Machine Image (AMI)**

		Ubuntu Server 16.04 LTS (HVM), SSD Volume Type - ami-16efb076

	* **Step 2: Choose an Instance Type**

		**t2.small** ~ this has 2g memory, which we need to run the server

	* skip through the next steps:
		* **Step 3: Configure Instance Details**
		* **Step 4: Add Storage**
		* **Step 5: Add Tags**

	* **Step 6: Configure Security Group**

		Add rules for HTTP and HTTPS, accept the default settings. It will warn you about security. I'm ignoring this. Also, add 8080 to HTTP if it's not already there. I want to be able to run an NLP server, too.

	* **Step 7: Review Instance Launch**

		Click launch and make a new key pair if you need to. This will be a file that ends with .pem, e.g. `key.pem`. I put this file in the directory `.ssh/key.pem`.

3. View Instances and get Public DNS

You should see one instance that's being set up. Select that instance and you'll see the properties of that instance on the bottom of the page. Copy the *Public DNS (IPv4)*, which will look something like `ec2-54-219-187-44.us-west-1.compute.amazonaws.com
`. In the rest of this README, I will call this address `whatever-the-public-DNS-is`.

4. SSH to the instance

	ssh ubuntu@whatever-the-public-DNS-is -i path/to/key.pem

## Once you're SSHed into an Ubuntu instance

Just run `INSTALL.sh` on a new instance. That will set everything up.

When the installation is done, you can start running the server by running `SERVE.sh`.

Here's an example request from a browser:

	
