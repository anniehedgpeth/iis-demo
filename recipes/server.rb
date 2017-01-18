powershell_script 'Install IIS' do
  code 'Add-WindowsFeature Web-Server'
end

file 'C:\inetpub\wwwroot\Default.htm' do
  content '<h1>Hello, world!</h1>
  <h2>ipaddress: 172.31.21.87</h2>
  <h2>hostname: WIN-DQFQCUFHDCP</h2>
  <h2>total memory: 1073332224</h2>
  <h2>CPU Mhz: 2.40GHz</h2>'
end

service 'w3svc' do
  action [ :enable, :start ]
end
