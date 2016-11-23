require 'serverspec'

# Required by serverspec
set :backend, :exec

describe command('gcloud') do
  its(:exit_status) { should eq 0 }
end