# Global options
default['haproxy']['global']['log'] = { 'localhost' => 'syslog' }
default['haproxy']['global']['user'] = 'haproxy'
default['haproxy']['global']['group'] = 'haproxy'
default['haproxy']['global']['maxconn'] = 256

# Default options
default['haproxy']['default']['mode'] = 'http'
default['haproxy']['default']['timeout_connect'] = '5s'
default['haproxy']['default']['timeout_client'] = '5s'
default['haproxy']['default']['timeout_server'] = '5s'

default['haproxy']['options']['frontends'] = nil
default['haproxy']['options']['listens'] = nil
default['haproxy']['options']['backends'] = nil

default['haproxy']['install_method'] = 'package'
default['haproxy']['use_dev'] = false
default['haproxy']['package'] = 'haproxy'
default['haproxy']['config'] = 'haproxy.cfg'
default['haproxy']['dir'] = '/etc/haproxy'
default['haproxy']['service'] = 'haproxy'
