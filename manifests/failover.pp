# Class dhcp::failover
class dhcp::failover (
  $role                = 'primary',
  $address             = $ipaddress,
  $peer_address        = undef,
  $port                = '519',
  $max_response_delay  = '30',
  $max_unacked_updates = '10',
  $mclt                = '300',
  $load_split          = '128',
  $load_balance        = '3',
  $omapi_key           = ''
) {

  if !$peer_address {
        fail('You must supply $peer_address')
  }

  include dhcp::params
  $dhcp_dir = $dhcp::params::dhcp_dir

  concat::fragment { 'dhcp-conf-failover':
    target  => "${dhcp_dir}/dhcpd.conf",
    content => template('dhcp/dhcpd.conf.failover.erb'),
  }

}
