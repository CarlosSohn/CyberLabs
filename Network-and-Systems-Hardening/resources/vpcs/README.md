# VPCS
Virtual PC Simulator is a program written by Paul Meng, which allows you to simulate a lightweight PC supporting DHCP and ping. 
It consumes only 2MB of RAM per instance, and does not require an additional image.

# Configuration

```
ip ARG ... [OPTION]
  Configure the current VPC's IP settings
    ARG ...:
    address [mask] [gateway]
    address [gateway] [mask]
                   Set the VPC's ip, default gateway ip and network mask
                   Default IPv4 mask is /24, IPv6 is /64. Example:
                   ip 10.1.1.70/26 10.1.1.65 set the VPC's ip to 10.1.1.70,
                   the gateway to 10.1.1.65, the netmask to 255.255.255.192.
                   In tap mode, the ip of the tapx is the maximum host ID
                   of the subnet. In the example above the tapx ip would be
                   10.1.1.126
                   mask may be written as /26, 26 or 255.255.255.192
    auto           Attempt to obtain IPv6 address, mask and gateway using SLAAC
    dhcp [OPTION]  Attempt to obtain IPv4 address, mask, gateway, DNS via DHCP
          -d         Show DHCP packet decode
          -r         Renew DHCP lease
          -x         Release DHCP lease
    dns ip         Set DNS server ip, delete if ip is '0'
    domain NAME    Set local domain name to NAME
```

# Ping & Traceroute
```
PC1> ping 192.168.1.2
PC1> trace 192.168.1.2
```

# Show and Save configuration
Use **show** command to see IP configuration and **save** to save it.

