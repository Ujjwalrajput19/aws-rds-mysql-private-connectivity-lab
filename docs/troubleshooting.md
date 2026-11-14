# Troubleshooting notes

This lab was debugged by testing one network segment at a time.

## 1. SSH to EC2

```bash
ssh -i ~/.ssh/<your-ec2-key>.pem ec2-user@<EC2_PUBLIC_IP>
```

Confirm EC2 is running, the public IP is current, the key is correct, and the EC2 security group permits TCP 22 from the administrator's current IP.

## 2. EC2 to RDS

From EC2:

```bash
timeout 5 bash -c '</dev/tcp/<RDS_ENDPOINT>/3306' && echo "RDS CONNECTION SUCCESSFUL" || echo "RDS CONNECTION FAILED"
```

If it fails, check RDS status, endpoint/port, VPC path, EC2 outbound rules, and RDS inbound TCP 3306 from the EC2 security group. This test proves TCP reachability only, not MySQL authentication.

## 3. Start the SSH tunnel from WSL

```bash
ssh -i ~/.ssh/<your-ec2-key>.pem -N -L 3307:<RDS_ENDPOINT>:3306 ec2-user@<EC2_PUBLIC_IP>
```

Keep this process running. A blank terminal with a blinking cursor is normal with `-N`.

## 4. Test the local forwarded port

In a second WSL terminal:

```bash
nc -vz 127.0.0.1 3307
```

If refused, confirm the tunnel is still running and port 3307 is not occupied. A broken pipe means the SSH session ended; reconnect and repeat the test.

## 5. Sqlectron

- Type: MySQL
- Host: `127.0.0.1`
- Port: `3307`
- User/password: your configured RDS credentials (enter locally)
- Disable Sqlectron's own SSH tunnel because WSL already forwards the connection.

A successful Sqlectron connection and `SELECT VERSION();` verify MySQL protocol/authentication and query execution.
