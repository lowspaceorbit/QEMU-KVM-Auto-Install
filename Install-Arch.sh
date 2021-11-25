#!/bin/bash
#  ____ _____
# / ___| ____|
#| |  _|  _|
#| |_| | |___
# \____|_____|


## this is a script that installs QEMU/KVM and everything else you will Need for a VM on Arch or An Arch Based Distro

## Installing everything needed

sudo pacman -S libvirt libvirt-glib libvirt-python virt-install virt-manager qemu qemu-arch-extra ovmf vde2 ebtables dnsmasq bridge-utils openbsd-netcat iptables swtpm

## starting LibVirt

sudo systemctl enable libvirtd.service;

sudo systemctl start libvirtd.service;

sudo enable virtlogd.socket

sudo start virtlogd.socket

## seting up the NetWork

mkdir ~/Network-For-KVM

cd ~/Network-For-KVM

touch br10.xml

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
</network>' > Network.xml

cd ~

touch br10.xml

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
</network>' > br10.xml

## turning on the Networks

sudo virsh net-define br11.xml

sudo virsh net-start br11

sudo virsh net-autostart br11

sudo virsh net-start default

sudo virsh net-autostart default %

## end MSG

echo -
echo -
echo -
echo FINISHED Just Reboot And You Can Use KVM/QEMU
