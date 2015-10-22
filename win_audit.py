import paramiko

ssh = paramiko.SSHClient()
ssh.set_missing_host_key_policy(paramiko.AutoAddPolicy())

for hostname, server in [server.split(',') for server in open("eeds.csv").readlines()]:
	try:
		ssh.connect(server.strip(), username = 'reutadmin', password = 'Reuters01', timeout=20)
		cmd = 'powershell -InputFormat none -OutputFormat TEXT Get-Content -Path \'C:\REUTERS\RTT\Installed-Packages.txt\'' 
		stdin, stdout, stderr = ssh.exec_command(cmd)
		stdout = [x.rstrip() for x in stdout]
		status = None
		status = True if "RTT_PCN0063-1.0" in stdout else False
		print hostname + ":" , status
	except:
		print hostname , "failed."
		print stdout, stderr