control 'check_repo' do
  
  describe host('github.com', port: 443, protocol: 'tcp') do
    it { should be_reachable }
    it { should be_resolvable }
    its('ipaddress') { should include '192.30.253.112' }
    its('connection') { should_not match /connection refused/ }
  end

  describe http('https://github.com/DarkMagics/example') do
    its('status') { should cmp 200 }
    its('body') { should match 'My awesome ghrepo' }
    its('headers.Content-Type') { should match 'text/html' }
  end
end
