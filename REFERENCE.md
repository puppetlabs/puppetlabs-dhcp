# Reference

<!-- DO NOT EDIT: This document was generated by Puppet Strings -->

## Table of Contents

### Classes

* [`dhcp`](#dhcp): == Class: dhcp
* [`dhcp::disable`](#dhcpdisable): ---------- Remove and Disable the DHCP server ----------
* [`dhcp::failover`](#dhcpfailover): == Class: dhcp::failover
* [`dhcp::params`](#dhcpparams): == Class: dhcp::params

### Defined types

* [`dhcp::dhcp_class`](#dhcpdhcp_class): == Define: dhcp::dhcp_class
* [`dhcp::host`](#dhcphost): == Define: dhcp::host
* [`dhcp::ignoredsubnet`](#dhcpignoredsubnet): == Define: dhcp::ignoredsubnet
* [`dhcp::pool`](#dhcppool): defines a dhcp-pool for IPv4 networks
* [`dhcp::pool6`](#dhcppool6): == Define: dhcp::pool6
* [`dhcp::sharednetwork`](#dhcpsharednetwork): defines a sharednetwork-segment to wrap several pools together

### Data types

* [`Dhcp::Mac`](#dhcpmac)
* [`Dhcp::Syslogfacility`](#dhcpsyslogfacility)

## Classes

### <a name="dhcp"></a>`dhcp`

== Class: dhcp

#### Parameters

The following parameters are available in the `dhcp` class:

* [`dnsdomain`](#dnsdomain)
* [`nameservers`](#nameservers)
* [`nameservers_ipv6`](#nameservers_ipv6)
* [`ntpservers`](#ntpservers)
* [`dnssearchdomains`](#dnssearchdomains)
* [`dhcp_conf_header`](#dhcp_conf_header)
* [`dhcp_conf_ddns`](#dhcp_conf_ddns)
* [`dhcp_conf_ntp`](#dhcp_conf_ntp)
* [`dhcp_conf_pxe`](#dhcp_conf_pxe)
* [`dhcp_conf_extra`](#dhcp_conf_extra)
* [`dhcp_conf_fragments`](#dhcp_conf_fragments)
* [`interfaces`](#interfaces)
* [`interface`](#interface)
* [`dnsupdatekey`](#dnsupdatekey)
* [`ddns_update_style`](#ddns_update_style)
* [`dnskeyname`](#dnskeyname)
* [`ddns_update_static`](#ddns_update_static)
* [`ddns_update_optimize`](#ddns_update_optimize)
* [`ddns_client_updates`](#ddns_client_updates)
* [`pxeserver`](#pxeserver)
* [`pxefilename`](#pxefilename)
* [`mtu`](#mtu)
* [`ipxe_filename`](#ipxe_filename)
* [`ipxe_bootstrap`](#ipxe_bootstrap)
* [`logfacility`](#logfacility)
* [`default_lease_time`](#default_lease_time)
* [`max_lease_time`](#max_lease_time)
* [`service_ensure`](#service_ensure)
* [`globaloptions`](#globaloptions)
* [`omapi_port`](#omapi_port)
* [`omapi_name`](#omapi_name)
* [`omapi_algorithm`](#omapi_algorithm)
* [`omapi_key`](#omapi_key)
* [`authoritative`](#authoritative)
* [`extra_config`](#extra_config)
* [`dhcp_dir`](#dhcp_dir)
* [`dhcpd_conf_filename`](#dhcpd_conf_filename)
* [`packagename`](#packagename)
* [`manage_package`](#manage_package)
* [`servicename`](#servicename)
* [`manage_service`](#manage_service)
* [`package_provider`](#package_provider)
* [`ldap_port`](#ldap_port)
* [`ldap_server`](#ldap_server)
* [`ldap_username`](#ldap_username)
* [`ldap_password`](#ldap_password)
* [`ldap_base_dn`](#ldap_base_dn)
* [`ldap_method`](#ldap_method)
* [`ldap_debug_file`](#ldap_debug_file)
* [`use_ldap`](#use_ldap)
* [`option_code150_label`](#option_code150_label)
* [`option_code150_value`](#option_code150_value)
* [`dhcp_classes`](#dhcp_classes)
* [`hosts`](#hosts)
* [`ignoredsubnets`](#ignoredsubnets)
* [`pools`](#pools)
* [`pools6`](#pools6)
* [`sharednetworks`](#sharednetworks)
* [`on_commit`](#on_commit)
* [`on_release`](#on_release)
* [`on_expiry`](#on_expiry)
* [`dhcpd_binary`](#dhcpd_binary)

##### <a name="dnsdomain"></a>`dnsdomain`

Data type: `Optional[Array[String[1]]]`



Default value: ``undef``

##### <a name="nameservers"></a>`nameservers`

Data type: `Array[Stdlib::IP::Address::V4]`



Default value: `[]`

##### <a name="nameservers_ipv6"></a>`nameservers_ipv6`

Data type: `Array[Stdlib::IP::Address::V6]`



Default value: `[]`

##### <a name="ntpservers"></a>`ntpservers`

Data type: `Array[Variant[Stdlib::Fqdn,Stdlib::IP::Address]]`



Default value: `[]`

##### <a name="dnssearchdomains"></a>`dnssearchdomains`

Data type: `Array[String[1]]`



Default value: `[]`

##### <a name="dhcp_conf_header"></a>`dhcp_conf_header`

Data type: `String`



Default value: `'INTERNAL_TEMPLATE'`

##### <a name="dhcp_conf_ddns"></a>`dhcp_conf_ddns`

Data type: `String`



Default value: `'INTERNAL_TEMPLATE'`

##### <a name="dhcp_conf_ntp"></a>`dhcp_conf_ntp`

Data type: `String`



Default value: `'INTERNAL_TEMPLATE'`

##### <a name="dhcp_conf_pxe"></a>`dhcp_conf_pxe`

Data type: `String`



Default value: `'INTERNAL_TEMPLATE'`

##### <a name="dhcp_conf_extra"></a>`dhcp_conf_extra`

Data type: `String`



Default value: `'INTERNAL_TEMPLATE'`

##### <a name="dhcp_conf_fragments"></a>`dhcp_conf_fragments`

Data type: `Hash[String[1], Hash[String[1], String[1]]]`



Default value: `{}`

##### <a name="interfaces"></a>`interfaces`

Data type: `Optional[Array[String[1]]]`



Default value: ``undef``

##### <a name="interface"></a>`interface`

Data type: `String[1]`



Default value: `'NOTSET'`

##### <a name="dnsupdatekey"></a>`dnsupdatekey`

Data type: `Optional[String[1]]`



Default value: ``undef``

##### <a name="ddns_update_style"></a>`ddns_update_style`

Data type: `String[1]`



Default value: `'interim'`

##### <a name="dnskeyname"></a>`dnskeyname`

Data type: `Optional[String[1]]`



Default value: ``undef``

##### <a name="ddns_update_static"></a>`ddns_update_static`

Data type: `String[1]`



Default value: `'on'`

##### <a name="ddns_update_optimize"></a>`ddns_update_optimize`

Data type: `String[1]`



Default value: `'on'`

##### <a name="ddns_client_updates"></a>`ddns_client_updates`

Data type: `Enum['allow', 'deny']`



Default value: `'allow'`

##### <a name="pxeserver"></a>`pxeserver`

Data type: `Optional[Stdlib::Host]`



Default value: ``undef``

##### <a name="pxefilename"></a>`pxefilename`

Data type: `Optional[String[1]]`



Default value: ``undef``

##### <a name="mtu"></a>`mtu`

Data type: `Optional[Integer[1]]`



Default value: ``undef``

##### <a name="ipxe_filename"></a>`ipxe_filename`

Data type: `Optional[String[1]]`



Default value: ``undef``

##### <a name="ipxe_bootstrap"></a>`ipxe_bootstrap`

Data type: `Optional[String[1]]`



Default value: ``undef``

##### <a name="logfacility"></a>`logfacility`

Data type: `Dhcp::Syslogfacility`



Default value: `'daemon'`

##### <a name="default_lease_time"></a>`default_lease_time`

Data type: `Integer[-1]`



Default value: `43200`

##### <a name="max_lease_time"></a>`max_lease_time`

Data type: `Integer[-1]`



Default value: `86400`

##### <a name="service_ensure"></a>`service_ensure`

Data type: `Stdlib::Ensure::Service`



Default value: `'running'`

##### <a name="globaloptions"></a>`globaloptions`

Data type: `Optional[Variant[String,Array[String[1]]]]`



Default value: ``undef``

##### <a name="omapi_port"></a>`omapi_port`

Data type: `Optional[Stdlib::Port]`



Default value: ``undef``

##### <a name="omapi_name"></a>`omapi_name`

Data type: `Optional[String[1]]`



Default value: ``undef``

##### <a name="omapi_algorithm"></a>`omapi_algorithm`

Data type: `String[1]`



Default value: `'HMAC-MD5'`

##### <a name="omapi_key"></a>`omapi_key`

Data type: `Optional[String[1]]`



Default value: ``undef``

##### <a name="authoritative"></a>`authoritative`

Data type: `Boolean`



Default value: ``true``

##### <a name="extra_config"></a>`extra_config`

Data type: `Variant[Array[String[1]],String[1]]`



Default value: `[]`

##### <a name="dhcp_dir"></a>`dhcp_dir`

Data type: `Stdlib::Absolutepath`



Default value: `$dhcp::params::dhcp_dir`

##### <a name="dhcpd_conf_filename"></a>`dhcpd_conf_filename`

Data type: `String[1]`



Default value: `'dhcpd.conf'`

##### <a name="packagename"></a>`packagename`

Data type: `String[1]`



Default value: `$dhcp::params::packagename`

##### <a name="manage_package"></a>`manage_package`

Data type: `Boolean`



Default value: ``true``

##### <a name="servicename"></a>`servicename`

Data type: `Variant[String[1],Array[String[1]]]`



Default value: `$dhcp::params::servicename`

##### <a name="manage_service"></a>`manage_service`

Data type: `Boolean`



Default value: ``true``

##### <a name="package_provider"></a>`package_provider`

Data type: `Optional[String[1]]`



Default value: `$dhcp::params::package_provider`

##### <a name="ldap_port"></a>`ldap_port`

Data type: `Stdlib::Port`



Default value: `389`

##### <a name="ldap_server"></a>`ldap_server`

Data type: `String[1]`



Default value: `'localhost'`

##### <a name="ldap_username"></a>`ldap_username`

Data type: `String[1]`



Default value: `'cn=root, dc=example, dc=com'`

##### <a name="ldap_password"></a>`ldap_password`

Data type: `Optional[String[1]]`



Default value: ``undef``

##### <a name="ldap_base_dn"></a>`ldap_base_dn`

Data type: `String[1]`



Default value: `'dc=example, dc=com'`

##### <a name="ldap_method"></a>`ldap_method`

Data type: `Enum['dynamic', 'static']`



Default value: `'dynamic'`

##### <a name="ldap_debug_file"></a>`ldap_debug_file`

Data type: `Optional[Stdlib::Absolutepath]`



Default value: ``undef``

##### <a name="use_ldap"></a>`use_ldap`

Data type: `Boolean`



Default value: ``false``

##### <a name="option_code150_label"></a>`option_code150_label`

Data type: `String[1]`



Default value: `'pxegrub'`

##### <a name="option_code150_value"></a>`option_code150_value`

Data type: `String[1]`



Default value: `'text'`

##### <a name="dhcp_classes"></a>`dhcp_classes`

Data type: `Hash[String[1], Hash]`



Default value: `{}`

##### <a name="hosts"></a>`hosts`

Data type: `Hash[String[1], Hash]`



Default value: `{}`

##### <a name="ignoredsubnets"></a>`ignoredsubnets`

Data type: `Hash[String, Hash]`



Default value: `{}`

##### <a name="pools"></a>`pools`

Data type: `Hash[String, Hash]`



Default value: `{}`

##### <a name="pools6"></a>`pools6`

Data type: `Hash[String, Hash]`



Default value: `{}`

##### <a name="sharednetworks"></a>`sharednetworks`

Data type: `Hash[String, Hash]`



Default value: `{}`

##### <a name="on_commit"></a>`on_commit`

Data type: `Array[String[1]]`



Default value: `[]`

##### <a name="on_release"></a>`on_release`

Data type: `Array[String[1]]`



Default value: `[]`

##### <a name="on_expiry"></a>`on_expiry`

Data type: `Array[String[1]]`



Default value: `[]`

##### <a name="dhcpd_binary"></a>`dhcpd_binary`

Data type: `Optional[Stdlib::Absolutepath]`



Default value: `$dhcp::params::dhcpd_binary`

### <a name="dhcpdisable"></a>`dhcp::disable`

----------
Remove and Disable the DHCP server
----------

#### Parameters

The following parameters are available in the `dhcp::disable` class:

* [`packagename`](#packagename)
* [`servicename`](#servicename)

##### <a name="packagename"></a>`packagename`

Data type: `String[1]`



Default value: `$dhcp::params::packagename`

##### <a name="servicename"></a>`servicename`

Data type: `String[1]`



Default value: `$dhcp::params::servicename`

### <a name="dhcpfailover"></a>`dhcp::failover`

== Class: dhcp::failover

#### Parameters

The following parameters are available in the `dhcp::failover` class:

* [`peer_address`](#peer_address)
* [`role`](#role)
* [`address`](#address)
* [`port`](#port)
* [`max_response_delay`](#max_response_delay)
* [`max_unacked_updates`](#max_unacked_updates)
* [`mclt`](#mclt)
* [`load_split`](#load_split)
* [`load_balance`](#load_balance)
* [`omapi_key`](#omapi_key)
* [`dhcp_dir`](#dhcp_dir)
* [`dhcpd_conf_filename`](#dhcpd_conf_filename)

##### <a name="peer_address"></a>`peer_address`

Data type: `Any`



##### <a name="role"></a>`role`

Data type: `Any`



Default value: `'primary'`

##### <a name="address"></a>`address`

Data type: `Any`



Default value: `$facts['networking']['ip']`

##### <a name="port"></a>`port`

Data type: `Any`



Default value: `'519'`

##### <a name="max_response_delay"></a>`max_response_delay`

Data type: `Any`



Default value: `'30'`

##### <a name="max_unacked_updates"></a>`max_unacked_updates`

Data type: `Any`



Default value: `'10'`

##### <a name="mclt"></a>`mclt`

Data type: `Any`



Default value: `'300'`

##### <a name="load_split"></a>`load_split`

Data type: `Any`



Default value: `'128'`

##### <a name="load_balance"></a>`load_balance`

Data type: `Any`



Default value: `'3'`

##### <a name="omapi_key"></a>`omapi_key`

Data type: `Optional[String[1]]`



Default value: ``undef``

##### <a name="dhcp_dir"></a>`dhcp_dir`

Data type: `Any`



Default value: `$dhcp::dhcp_dir`

##### <a name="dhcpd_conf_filename"></a>`dhcpd_conf_filename`

Data type: `Any`



Default value: `$dhcp::dhcpd_conf_filename`

### <a name="dhcpparams"></a>`dhcp::params`

== Class: dhcp::params

## Defined types

### <a name="dhcpdhcp_class"></a>`dhcp::dhcp_class`

== Define: dhcp::dhcp_class

#### Parameters

The following parameters are available in the `dhcp::dhcp_class` defined type:

* [`parameters`](#parameters)

##### <a name="parameters"></a>`parameters`

Data type: `Variant[Array[String[1]], String[1]]`



### <a name="dhcphost"></a>`dhcp::host`

== Define: dhcp::host

#### Parameters

The following parameters are available in the `dhcp::host` defined type:

* [`ip`](#ip)
* [`mac`](#mac)
* [`ddns_hostname`](#ddns_hostname)
* [`options`](#options)
* [`comment`](#comment)
* [`ignored`](#ignored)
* [`default_lease_time`](#default_lease_time)
* [`max_lease_time`](#max_lease_time)
* [`ipxe_filename`](#ipxe_filename)
* [`ipxe_bootstrap`](#ipxe_bootstrap)
* [`filename`](#filename)
* [`on_commit`](#on_commit)
* [`on_release`](#on_release)
* [`on_expiry`](#on_expiry)

##### <a name="ip"></a>`ip`

Data type: `Optional[Stdlib::IP::Address]`

The ip address of the DHCP host.

Default value: ``undef``

##### <a name="mac"></a>`mac`

Data type: `Dhcp::Mac`

The MAC address.

##### <a name="ddns_hostname"></a>`ddns_hostname`

Data type: `String`

The name parameter should be the hostname that will be used in setting up the client's A and PTR records.
If no ddns-hostname is specified in scope, then the server will derive the hostname automatically, using an
algorithm that varies for each of the different update methods.

Default value: `$name`

##### <a name="options"></a>`options`

Data type: `Hash`

A hash with key value pairs to go to the option lines. The word 'option' is not needed.

Default value: `{}`

##### <a name="comment"></a>`comment`

Data type: `Optional[String[1]]`

A comment added to the DHCP host.

Default value: ``undef``

##### <a name="ignored"></a>`ignored`

Data type: `Boolean`

If set to true results in `ignore booting;` line in the DHCP host configuration.

Default value: ``false``

##### <a name="default_lease_time"></a>`default_lease_time`

Data type: `Optional[Integer]`

Default lease length.

Default value: ``undef``

##### <a name="max_lease_time"></a>`max_lease_time`

Data type: `Optional[Integer]`

The maximum lease length.

Default value: ``undef``

##### <a name="ipxe_filename"></a>`ipxe_filename`

Data type: `Optional[String[1]]`

The ipxe filenme, e. g. ipxe.efi.

Default value: ``undef``

##### <a name="ipxe_bootstrap"></a>`ipxe_bootstrap`

Data type: `Optional[String[1]]`

The bootstrap file of UEFI PXE, e. g. winpe.ipxe

Default value: ``undef``

##### <a name="filename"></a>`filename`

Data type: `Optional[String[1]]`

The file to be loaded by TFTP.

Default value: ``undef``

##### <a name="on_commit"></a>`on_commit`

Data type: `Array[String[1]]`

An array with statements to go into the hook on commit.

Default value: `[]`

##### <a name="on_release"></a>`on_release`

Data type: `Array[String[1]]`

An array with statements to go into the hook on release.

Default value: `[]`

##### <a name="on_expiry"></a>`on_expiry`

Data type: `Array[String[1]]`

An array with statements to go into the hook on expiry.

Default value: `[]`

### <a name="dhcpignoredsubnet"></a>`dhcp::ignoredsubnet`

== Define: dhcp::ignoredsubnet

#### Parameters

The following parameters are available in the `dhcp::ignoredsubnet` defined type:

* [`network`](#network)
* [`mask`](#mask)

##### <a name="network"></a>`network`

Data type: `Any`



##### <a name="mask"></a>`mask`

Data type: `Any`



### <a name="dhcppool"></a>`dhcp::pool`

== Define: dhcp::pool

#### Parameters

The following parameters are available in the `dhcp::pool` defined type:

* [`network`](#network)
* [`mask`](#mask)
* [`host_mask`](#host_mask)
* [`gateway`](#gateway)
* [`range`](#range)
* [`failover`](#failover)
* [`options`](#options)
* [`parameters`](#parameters)
* [`sharednetwork`](#sharednetwork)
* [`nameservers`](#nameservers)
* [`nameservers_ipv6`](#nameservers_ipv6)
* [`pxeserver`](#pxeserver)
* [`mtu`](#mtu)
* [`domain_name`](#domain_name)
* [`ignore_unknown`](#ignore_unknown)
* [`on_commit`](#on_commit)
* [`on_release`](#on_release)
* [`on_expiry`](#on_expiry)

##### <a name="network"></a>`network`

Data type: `Stdlib::IP::Address::V4`

Base-IP-Address of the pool

##### <a name="mask"></a>`mask`

Data type: `Stdlib::IP::Address::V4`

Networkmask of that pool

##### <a name="host_mask"></a>`host_mask`

Data type: `Stdlib::IP::Address::V4`

Networkmask that is supplied to the client
Defaults to `mask`. Use it to supply a smaller
mask to clients if needed

Default value: `$mask`

##### <a name="gateway"></a>`gateway`

Data type: `Optional[String[1]]`

Optional IP-address for the gateway

Default value: ``undef``

##### <a name="range"></a>`range`

Data type: `Optional[Variant[Array[String[1],1],String[1]]]`

Optional IP-range to supply addresses from
Specify as String with start- and end-IP-address
separated by space

Default value: ``undef``

##### <a name="failover"></a>`failover`

Data type: `Optional[String[1]]`

Optional name of the DHCP-server to failover

Default value: ``undef``

##### <a name="options"></a>`options`

Data type: `Optional[Variant[Array[String[1]],String[1]]]`

Optional String or Array of `option` to set in the pool

Default value: ``undef``

##### <a name="parameters"></a>`parameters`

Data type: `Optional[Variant[Array[String[1]],String[1]]]`

Optional String or Array of manual parameters to set

Default value: ``undef``

##### <a name="sharednetwork"></a>`sharednetwork`

Data type: `Optional[String[1]]`

Optional String to group this pool into a shared-network
segment by the name `sharednetwork`. You need to define
that segment by using `dhcp::sharednetwork`

Default value: ``undef``

##### <a name="nameservers"></a>`nameservers`

Data type: `Optional[Array[String]]`

Optional set of IPv4-nameservers to supply to the client

Default value: ``undef``

##### <a name="nameservers_ipv6"></a>`nameservers_ipv6`

Data type: `Optional[Array[String]]`

Optional set of IPv6-nameservers to supply to the client

Default value: ``undef``

##### <a name="pxeserver"></a>`pxeserver`

Data type: `Optional[String]`

Optional name of a PXE-server to boot from

Default value: ``undef``

##### <a name="mtu"></a>`mtu`

Data type: `Optional[Integer]`

Optional size of the MTU to supply to the client

Default value: ``undef``

##### <a name="domain_name"></a>`domain_name`

Data type: `Optional[String[1]]`

Optional domainname for the client

Default value: ``undef``

##### <a name="ignore_unknown"></a>`ignore_unknown`

Data type: `Any`

Set to true to disable leases for clients not
explicitly defined by `dhcp::host`

Default value: ``undef``

##### <a name="on_commit"></a>`on_commit`

Data type: `Array[String[1]]`

Set of statements to execute when providing a lease

Default value: `[]`

##### <a name="on_release"></a>`on_release`

Data type: `Array[String[1]]`

Set of statements to execute when a lease is released

Default value: `[]`

##### <a name="on_expiry"></a>`on_expiry`

Data type: `Array[String[1]]`

Set of statements to execute when a lease expires

Default value: `[]`

### <a name="dhcppool6"></a>`dhcp::pool6`

== Define: dhcp::pool6

#### Parameters

The following parameters are available in the `dhcp::pool6` defined type:

* [`network`](#network)
* [`prefix`](#prefix)
* [`range`](#range)
* [`range_temp`](#range_temp)
* [`failover`](#failover)
* [`options`](#options)
* [`parameters`](#parameters)
* [`sharednetwork`](#sharednetwork)
* [`nameservers`](#nameservers)
* [`nameservers_ipv6`](#nameservers_ipv6)
* [`pxeserver`](#pxeserver)
* [`mtu`](#mtu)
* [`domain_name`](#domain_name)
* [`ignore_unknown`](#ignore_unknown)
* [`on_commit`](#on_commit)
* [`on_release`](#on_release)
* [`on_expiry`](#on_expiry)

##### <a name="network"></a>`network`

Data type: `Stdlib::IP::Address::V6`



##### <a name="prefix"></a>`prefix`

Data type: `Integer`



##### <a name="range"></a>`range`

Data type: `Optional[Variant[Array[String[1],1],String[1]]]`



Default value: ``undef``

##### <a name="range_temp"></a>`range_temp`

Data type: `Optional[String[1]]`



Default value: ``undef``

##### <a name="failover"></a>`failover`

Data type: `Optional[String[1]]`



Default value: ``undef``

##### <a name="options"></a>`options`

Data type: `Optional[Variant[Array[String[1]],String[1]]]`



Default value: ``undef``

##### <a name="parameters"></a>`parameters`

Data type: `Optional[Variant[Array[String[1]],String[1]]]`



Default value: ``undef``

##### <a name="sharednetwork"></a>`sharednetwork`

Data type: `Optional[String[1]]`



Default value: ``undef``

##### <a name="nameservers"></a>`nameservers`

Data type: `Optional[Array[String]]`



Default value: ``undef``

##### <a name="nameservers_ipv6"></a>`nameservers_ipv6`

Data type: `Optional[Array[String]]`



Default value: ``undef``

##### <a name="pxeserver"></a>`pxeserver`

Data type: `Optional[String]`



Default value: ``undef``

##### <a name="mtu"></a>`mtu`

Data type: `Optional[Integer]`



Default value: ``undef``

##### <a name="domain_name"></a>`domain_name`

Data type: `Optional[String[1]]`



Default value: ``undef``

##### <a name="ignore_unknown"></a>`ignore_unknown`

Data type: `Any`



Default value: ``undef``

##### <a name="on_commit"></a>`on_commit`

Data type: `Array[String[1]]`



Default value: `[]`

##### <a name="on_release"></a>`on_release`

Data type: `Array[String[1]]`



Default value: `[]`

##### <a name="on_expiry"></a>`on_expiry`

Data type: `Array[String[1]]`



Default value: `[]`

### <a name="dhcpsharednetwork"></a>`dhcp::sharednetwork`

== Define: dhcp::sharednetwork

#### Parameters

The following parameters are available in the `dhcp::sharednetwork` defined type:

* [`sharednetwork`](#sharednetwork)
* [`parameters`](#parameters)

##### <a name="sharednetwork"></a>`sharednetwork`

Data type: `String`

Name of the sharednetwork as used in `dhcp::pool` and `dhcp::pool6`
defaults to the title of this resource

Default value: `$title`

##### <a name="parameters"></a>`parameters`

Data type: `Optional[Variant[Array[String[1]], String[1]]]`

optional defaults you can set for the shared-network
can be either a single parameter-string, or an array of
several parameters

Default value: ``undef``

## Data types

### <a name="dhcpmac"></a>`Dhcp::Mac`

The Dhcp::Mac data type.

Alias of

```puppet
Pattern[/^[0-9A-Fa-f]{1,2}(:[0-9A-Fa-f]{1,2}){5}$/]
```

### <a name="dhcpsyslogfacility"></a>`Dhcp::Syslogfacility`

The Dhcp::Syslogfacility data type.

Alias of

```puppet
Enum['user', 'mail', 'daemon', 'auth', 'syslog', 'lpr', 'news', 'uucp', 'cron', 'authpriv', 'ftp', 'ntp', 'security', 'console', 'solaris-cron', 'local0', 'local1', 'local2', 'local3', 'local4', 'local5', 'local6', 'local7']
```
