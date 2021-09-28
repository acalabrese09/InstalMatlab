New-Item -Type Directory -Path 'c:\\' -Name temp1
invoke-webrequest -Uri 'https://ssd.mathworks.com/supportfiles/downloads/R2021b/Release/0/deployment_files/installer/complete/win64/MATLAB_Runtime_R2021b_win64.zip' -OutFile 'c:\\temp1\\MATLAB_Runtime_R2021a_Update_3_win64.zip'
Expand-Archive 'c:\\temp1\\MATLAB_Runtime_R2021a_Update_3_win64.zip' 'c:\\temp1'
Set-Location C:\\temp1
.//setup.exe -mode silent -agreeToLicense yes -outputFile .//install.log
