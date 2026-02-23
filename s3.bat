@echo off
echo Starting Sync to S3...
aws s3 sync "E:\Cloud-main" s3://code1996 --profile ALPHA
echo Sync Complete!