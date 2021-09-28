New-Item -Type Directory -Path 'c:\\' -Name temp1
invoke-webrequest -Uri 'https://matlabruntime.blob.core.windows.net/mcr/MCR.zip?sp=rw&st=2021-09-28T13:10:59Z&se=2021-10-05T21:10:59Z&spr=https&sv=2020-08-04&sr=b&sig=szkSWuuRiLDjMqdV1hKiY8if5Ov1pi72GWOFKmJge%2BQ%3D' -OutFile 'c:\\temp1\\MATLAB_Runtime_R2021a_Update_3_win64.zip'
Expand-Archive 'c:\\temp1\\MATLAB_Runtime_R2021a_Update_3_win64.zip' 'c:\\temp1'
Set-Location C:\\temp1
.//setup.exe -mode silent -agreeToLicense yes -outputFile .//install.log
