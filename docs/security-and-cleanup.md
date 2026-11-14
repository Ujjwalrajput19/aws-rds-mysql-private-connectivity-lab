# Security and cost checklist

## Security

- Keep RDS public access disabled.
- Restrict EC2 SSH ingress to a trusted administrator IP or managed access path.
- Restrict RDS MySQL ingress to the EC2 security group on TCP `3306`.
- Do not expose the database port to all IPv4 or IPv6 addresses.
- Never commit private keys, passwords, AWS access keys, session tokens, `.env` files, or unredacted screenshots.
- Use placeholders for RDS endpoints, EC2 public IPs, AWS account IDs, and key filenames.
- The included Security Group screenshot is an edit-screen capture; saved-rule state was not verified.

## Cleanup

1. Disconnect Sqlectron.
2. Stop the SSH tunnel with `Ctrl+C`.
3. Stop EC2 and RDS when they are not needed.
4. Stopped RDS instances still incur storage and some backup-related charges, and automatically restart after at most seven days.
5. Check NAT gateways, load balancers, provisioned IOPS, snapshots, and unattached EBS volumes for remaining costs.
6. Delete only resources no longer needed and only after preserving required data/snapshots.

Actual costs depend on Region, engine, instance class, storage, backups, and configuration. Check the AWS Billing console.
