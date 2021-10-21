invoke-Command {
$Env:JAVA_HOME="C:\Program Files\Java\jdk1.8.0_211"
$Env:SRCCLR_SCM_URI="https://github.com/christyson/python-master"
$Env:SRCCLR_SCM_REF="master"
$Env:SRCCLR_SCM_REF_TYPE="branch"
$Env:SRCCLR_SCM_REV="1.0.0"
$Env:SRCCLR_API_TOKEN="eyJhbGciOiJSUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MTA3NDQ4LCJleHAiOjE1NzQ4NjkzMTEsImF1dGhvcml0aWVzIjoiQUdFTlQiLCJqdGkiOiJmMWM0ODhlOS0wNDIwLTQxYzAtYTlhNS0yZThkMjc5Njg3NmMiLCJjbGllbnRfaWQiOiIiLCJzY29wZSI6W119.U5o3FlDqEhZpeZt74y38nbx68id9IHfFwI8_iur_E8QldCpzWUIqsj569UcCa1hsF4HZHiclaNwpeSUuELmlhf__YXjvprShe0ZBXM2MgApUwyM1vasM_jYaQfnTrMN07-7HWpK8UAGP_5z_ibcnNbZ9kXuvRUo1m5ul7RC8lak"
$ProgressPreference = "silentlyContinue"
Set-ExecutionPolicy Unrestricted -Scope Process -Force
iex ((New-Object System.Net.WebClient).DownloadString('https://download.srcclr.com/ci.ps1'))
Write-Output 'Scan the project'
srcclr scan --json --no-upload > veracode-sca-results.json 
}