#!/system/bin/sh
# Copyright (c) 2015, Razer USA Inc
#
# Redistribution and use in source and binary forms, with or without
# modification, are permitted provided that the following conditions are
# met:
#     * Redistributions of source code must retain the above copyright
#       notice, this list of conditions and the following disclaimer.
#     * Redistributions in binary form must reproduce the above
#       copyright notice, this list of conditions and the following
#       disclaimer in the documentation and/or other materials provided
#       with the distribution.
#     * Neither the name of The Linux Foundation nor the names of its
#       contributors may be used to endorse or promote products derived
#      from this software without specific prior written permission.
#
# THIS SOFTWARE IS PROVIDED "AS IS" AND ANY EXPRESS OR IMPLIED
# WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF
# MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NON-INFRINGEMENT
# ARE DISCLAIMED.  IN NO EVENT SHALL THE COPYRIGHT OWNER OR CONTRIBUTORS
# BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR
# CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF
# SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR
# BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY,
# WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE
# OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN
# IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.

LOG_TAG="razer-init"
LOG_NAME="${0}:"

loge ()
{
  /system/bin/log -t $LOG_TAG -p e "$LOG_NAME $@"
}

logi ()
{
  /system/bin/log -t $LOG_TAG -p i "$LOG_NAME $@"
}

if [ -f /proc/emmc ]; then
    val=`cat /proc/emmc`
    setprop rzr.pearlyn.emmc $val
    logi "bootloader version $val"
else
    setprop rzr.pearlyn.emmc 486
    logi "bootloader version 486"
fi

if [ -f /proc/control ]; then
    val=`cat /proc/control`
    setprop rzr.pearlyn.control $val
    logi "control is $val"
else
    setprop rzr.pearlyn.control hid
    logi "control is hid"
fi

if [ -f /sys/class/net/eth0/address ]; then
    val=`cat /sys/class/net/eth0/address`
    setprop rzr.pearlyn.emac $val
    logi "razer ethernet mac is $val"
else
    setprop rzr.pearlyn.emac unknown
    loge "razer ethernet mac is unknown"
fi

if [ -f /sys/class/net/wlan0/address ]; then
    val=`cat /sys/class/net/wlan0/address`
    setprop rzr.pearlyn.wmac $val
    logi "razer wireless mac is $val"
else
    setprop rzr.pearlyn.wmac unknown
    loge "razer wireless mac is unknown"
fi

/system/bin/razerdrmcheck
val=`getprop rzr.drm.check`
logi "drm status $val"

#if [ -f /system/bin/valiService ]; then
#    logi "ValiService is present, lets begin the process"
#    start valiService
#fi
