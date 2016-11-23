require 'serverspec'

# Required by serverspec
set :backend, :exec

describe command('/usr/local/google-cloud-sdk/bin/gcloud --version') do
  its(:exit_status) { should eq 0 }
  its(:stdout) { should match /Google Cloud SDK 135\.0\.0/ }
end

describe file('/etc/profile.d/gcloud.sh') do
  it { should contain 'export PATH=$PATH:/usr/local/google-cloud-sdk/bin' }
  it { should be_mode 755 }
end