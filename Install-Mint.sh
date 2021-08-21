#!/bin/bash
# _   _ _____ 
#| | | |_   _|
#| | | | | |  
#| |_| | | |  
# \___/  |_| 









sudo apt-get install libvirt
sudo apt-get install libvirt-glib 
sudo apt-get install libvirt-python 
sudo apt-get install virt-install 
sudo apt-get install virt-manager 
sudo apt-get install qemu 
sudo apt-get install qemu-arch-extra 
sudo apt-get install ovmf 
sudo apt-get install vde2 
sudo apt-get install ebtables 
sudo apt-get install dnsmasq 
sudo apt-get install bridge-utils 
sudo apt-get install openbsd-netcat 
sudo apt-get install iptables

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

























