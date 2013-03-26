Haproxy Cookbook
================
Install and configure haproxy


Requirements
------------
This cookbook is only tested with Ubuntu 12.04. This also looks for a databag called haproxy.


Attributes
----------

#### haproxy::default
<table>
  <tr>
    <th>Key</th>
    <th>Type</th>
    <th>Description</th>
    <th>Default</th>
  </tr>
  <tr>
    <td><tt>['haproxy']['global']['log']</tt></td>
    <td>Hash</td>
    <td>Log location and facility</td>
    <td><tt>{"localhost" => "syslog"}</tt></td>
  </tr>
  <tr>
    <td><tt>['haproxy']['global']['user']</tt></td>
    <td>String</td>
    <td>User to run Haproxy as</td>
    <td><tt>haproxy</tt></td>
  </tr>
  <tr>
    <td><tt>['haproxy']['global']['group']</tt></td>
    <td>String</td>
    <td>Group to run Haproxy as</td>
    <td><tt>haproxy</tt></td>
  </tr>
  <tr>
    <td><tt>['haproxy']['global']['group']</tt></td>
    <td>String</td>
    <td>Group to run Haproxy as</td>
    <td><tt>haproxy</tt></td>
  </tr> 
  <tr>
    <td><tt>['haproxy']['global']['maxconn']</tt></td>
    <td>String</td>
    <td>Maximum connections</td>
    <td><tt>256</tt></td>
  </tr>
  <tr>
    <td><tt>['haproxy']['default']['mode']</tt></td>
    <td>String</td>
    <td>Haproxy mode</td>
    <td><tt>http</tt></td>
  </tr>
  <tr>
    <td><tt>['haproxy']['default']['timeout_connect']</tt></td>
    <td>String</td>
    <td>Default connection timeout</td>
    <td><tt>5s</tt></td>
  </tr>
  <tr>
    <td><tt>['haproxy']['default']['timeout_client']</tt></td>
    <td>String</td>
    <td>Default client timeout</td>
    <td><tt>5s</tt></td>
  </tr>
  <tr>
    <td><tt>['haproxy']['default']['timeout_server']</tt></td>
    <td>String</td>
    <td>Default sever timeout</td>
    <td><tt>5s</tt></td>
  </tr>
</table>

Usage
-----
#### haproxy::default
TODO: Write usage instructions for each cookbook.

e.g.
Just include `haproxy` in your node's `run_list`:

```json
{
  "name":"my_node",
  "run_list": [
    "recipe[haproxy]"
  ]
}
```

Contributing
------------
1. Fork the repository on Github
2. Create a named feature branch (like `add_component_x`)
3. Write you change
4. Write tests for your change (if applicable)
5. Run the tests, ensuring they all pass
6. Submit a Pull Request using Github

License and Authors
-------------------
Authors: Jim Rosser 

License: MIT
