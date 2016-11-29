require 'serverspec'

# Required by serverspec
set :backend, :exec

describe command('gcloud --version') do
  its(:exit_status) { should eq 0 }
  its(:stdout) { should match /Google Cloud SDK 135\.0\.0/ }
end