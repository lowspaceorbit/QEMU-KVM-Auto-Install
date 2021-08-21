#!/bin/bash
# _   _ _____ 
#| | | |_   _|
#| | | | | |  
#| |_| | | |  
# \___/  |_| 









sudo pacman -S libvirt libvirt-glib libvirt-python virt-install virt-manager qemu qemu-arch-extra ovmf vde2 ebtables dnsmasq bridge-utils openbsd-netcat ;

sudo systemctl enable libvirtd.service;

sudo systemctl start libvirtd.service;

sudo enable virtlogd.socket

sudo start virtlogd.socket

mkdir ~/Network-for-KVM;

cd ~/Network-for-KVM;

touch br11.xml;

echo '<network>
  <name>br10</name>
  <forward mode=nat>
    <nat>
      <port start=1024 end=65535/>
    </nat>
  </forward>
  <bridge name=br10 stp=on delay=0/>
  <ip address=192.168.30.1 netmask=255.255.255.0>
    <dhcp>
      <range start=192.168.30.50 end=192.168.30.200/>
    </dhcp>
  </ip>
</network>' > Network.xml;

cd ~ 

touch br11.xml;

echo '<network>
<name>br10</name>
<forward mode="nat">
<nat>
<port start="1024" end="65535"/>
</nat>
</forward>
<bridge name="br10" stp="on" delay="0"/>
<ip address="192.168.30.1" netmask="255.255.255.0">
<dhcp>
<range start="192.168.30.50" end="192.168.30.200"/>
</dhcp>
</ip>
</network>' > br11.xml;

sudo virsh net-define br11.xml

sudo virsh net-start br10

sudo virsh net-autostart br10

sudo virsh net-start default

sudo virsh net-autostart default




echo -
echo -
echo -
echo -
echo -
echo -
echo -
echo -
echo -
echo -
echo -
echo -
echo -
echo -
echo -
echo -
echo -
echo -
echo -
echo -
echo -
echo -
echo -
echo -
echo -
echo -
echo -
echo -
echo -
echo -
echo -
echo -
echo -
echo -
echo -
echo -
echo -
echo -
echo -
echo -
echo -
echo -
echo -
echo -
echo -
echo -
echo -
echo -
echo -
echo -
echo -
echo -
echo -
echo -
echo -
echo -
echo -
echo -
echo -
echo -
echo -
echo -
echo -
echo -
echo -
echo -
echo -
echo -
echo -
echo -
echo -
echo -
echo -
echo -
echo -
echo -
echo -
echo -
echo -
echo -
echo -
echo -
echo -
echo -
echo -
echo -
echo -
echo -
echo -
echo -
echo -
echo -
echo -
echo -
echo -
echo -
echo -
echo -
echo -
echo -
echo -
echo -
echo -
echo -
echo -
echo -
echo -
echo -
echo -
echo -
echo -
echo -
echo -
echo -
echo -
echo -
echo FINISHED Just Reboot And You Can Use KVM/QEMU







































