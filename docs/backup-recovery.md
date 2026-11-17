

# EC2 Backup and Recovery

## Backup
An Amazon Machine Image (AMI) was created from the production EC2 instance.

## Recovery
A recovery test instance was launched using the AMI.

## Recovery Checklist
- Verify AMI availability.
- Select the correct VPC and subnet.
- Configure Security Group.
- Attach the required IAM Role.
- Launch the recovery instance.
- Verify Nginx website access.

## Important
AMI creation and EBS snapshots may incur storage charges.
Delete unused backups only after confirming they are no longer needed.
