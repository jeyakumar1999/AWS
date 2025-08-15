#!/bin/bash

echo "LINUX AMI  FOR OHIO REGION:"

PS3="Enter your Name (1-4): "  # Customize the prompt

select name in "SOBHITA" "TARA" "RIYA" "user"; do
    case $name in
        "SOBHITA")
aws ec2 run-instances \
    --image-id ami-08ca1d1e465fbfe0c \
    --instance-type t2.micro \
    --user-data "IyEvYmluL2Jhc2gKc3VkbyBzdQpzdWRvIHNlZCAtaSAnL14jXD9QYXNzd29yZEF1dGhlbnRpY2F0aW9uL2NQYXNzd29yZEF1dGhlbnRpY2F0aW9uIHllcycgL2V0Yy9zc2gvc3NoZF9jb25maWcKc3VkbyBzeXN0ZW1jdGwgcmVzdGFydCBzc2hkCnN1ZG8gdXNlcmFkZCAtbSAtcyAvYmluL2Jhc2ggc29iaGl0YQplY2hvICJzb2JoaXRhOjk5NTIwMTc3ODdAQWEiIHwgc3VkbyBjaHBhc3N3ZA==" \
    --count 1 \
    --subnet-id subnet-0ab0676bed1f7923e \
    --key-name US-EAST-02 \
    --security-group-ids sg-0d5693b9a61cabda4 \
    --associate-public-ip-address

            break
            ;;
        "TARA")
aws ec2 run-instances \
    --image-id ami-08ca1d1e465fbfe0c \
    --instance-type t2.micro \
    --user-data "IyEvYmluL2Jhc2gKc3VkbyBzdQpzdWRvIHNlZCAtaSAnL14jXD9QYXNzd29yZEF1dGhlbnRpY2F0aW9uL2NQYXNzd29yZEF1dGhlbnRpY2F0aW9uIHllcycgL2V0Yy9zc2gvc3NoZF9jb25maWcKc3VkbyBzeXN0ZW1jdGwgcmVzdGFydCBzc2hkCnN1ZG8gdXNlcmFkZCAtbSAtcyAvYmluL2Jhc2ggdGFyYQplY2hvICJ0YXJhOjk5NTIwMTc3ODdAQWEiIHwgc3VkbyBjaHBhc3N3ZA==" \
    --count 1 \
    --subnet-id subnet-0ab0676bed1f7923e \
    --key-name US-EAST-02 \
    --security-group-ids sg-0d5693b9a61cabda4 \
    --associate-public-ip-address | grep PrivateIpAddress
    break
            ;;
        "RIYA")
aws ec2 run-instances \
    --image-id ami-08ca1d1e465fbfe0c \
    --instance-type t2.micro \
    --user-data "IyEvYmluL2Jhc2gKc3VkbyBzdQpzdWRvIHNlZCAtaSAnL14jXD9QYXNzd29yZEF1dGhlbnRpY2F0aW9uL2NQYXNzd29yZEF1dGhlbnRpY2F0aW9uIHllcycgL2V0Yy9zc2gvc3NoZF9jb25maWcKc3VkbyBzeXN0ZW1jdGwgcmVzdGFydCBzc2hkCnN1ZG8gdXNlcmFkZCAtbSAtcyAvYmluL2Jhc2ggcml5YQplY2hvICJyaXlhOjk5NTIwMTc3ODdAQWEiIHwgc3VkbyBjaHBhc3N3ZA==" \
    --count 1 \
    --subnet-id subnet-0ab0676bed1f7923e \
    --key-name US-EAST-02 \
    --security-group-ids sg-0d5693b9a61cabda4 \
    --associate-public-ip-address
    break
    ;;
            "user")
./user.sh
    break
    ;;
        *)
            echo "Invalid choice. Please select a number from 1 to 3."
            ;;
    esac
done
