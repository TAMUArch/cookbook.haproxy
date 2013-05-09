require 'chefspec'

describe 'haproxy::default' do
  let (:chef_run) { ChefSpec::ChefRunner.new.converge 'haproxy::default' }
  it 'should install haproxy' do
    expect(chef_run).to install_package 'haproxy' 
  end

  it 'should allow haproxy to be enabled' do
    expect(chef_run).to create_file_with_content '/etc/default/haproxy', 'ENABLED=1'
  end

  it 'should create the haproxy config file' do
    expect(chef_run).to create_file '/etc/haproxy/haproxy.cfg'
  end

  it 'should enable and start the haproxy service' do
    expect(chef_run).to enable_service 'haproxy'
    expect(chef_run).to start_service 'haproxy'
  end
end
