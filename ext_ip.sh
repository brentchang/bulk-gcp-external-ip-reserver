#!/bin/bash
echo 'Hello, how many static External IPs do you want?'

# There's no verification for input, so use UPPERCASE to notify the end user.
read -p 'Please input a NUMBER: ' input

# Input for reserved IP name
read -p 'Please input a NAME for reserved IPs: ' name

# Input for reserved IP region
read -p 'Please input a GCP region to reserve IPs: ' region

echo -e "\nOkay, I'll create ${input} IPs in ${region} for you."

# for-loop for creating external IP addresses
for ((i=1;i<=$input;i++))
do 
	gcloud compute addresses create "${name}-$i" --region=$region
done

#create variable to store created external IP addresses
addresses=`gcloud compute addresses list | grep ${name} | awk '{print $1}'`

echo "The following IP addresses have been created:"
gcloud compute addresses list | grep ${name}
