require File.expand_path('../helpers.rb', __FILE__)

describe "haproxy_test::default" do
  include Helpers::HaproxyTest

  it 'installs the haproxy package' do
    package('haproxy').must_be_installed
  end

  it 'allows the enabling of the haproxy service' do
    assert_matches_content file("/etc/default/haproxy"), "ENABLED=1"
  end

  it 'updates the haproxy config file' do
    assert_includes_content file("/etc/haproxy/haproxy.cfg"), "#  This file is managed by Chef"
  end

  it 'enables and starts the haproxy service' do
    assert_enabled "haproxy"
    assert_running "haproxy"
  end
end
