#!/bin/bash

echo "AWS APFOR OHIO REGION:"

PS3="Enter your Name (1-3): "  # Customize the prompt

select name in "SOBHITA" "TARA" "RIYA"; do
    case $name in
        "SOBHITA")
. choice.sh
            break
            ;;
        "TARA")
            aws ec2 run-instances \
    --launch-template 'LaunchTemplateName=WINS-2025,Version=2' \
    --count 1
    break
            ;;
        "RIYA")
            aws ec2 run-instances \
    --launch-template 'LaunchTemplateName=WINS-2025,Version=3' \
    --count 1
    break
    ;;
        *)
            echo "Invalid choice. Please select a number from 1 to 3."
            ;;
    esac
done


