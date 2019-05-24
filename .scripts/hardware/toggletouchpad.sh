#!/bin/bash

tpname="Synaptics tm2964-001"
tpon=$(xinput --list-props "$tpname" | grep "Device Enabled" | awk '{print $NF}')

if [[ "$tpon" == '1' ]]; then
	xinput --disable "$tpname"
	notify-send 'Synaptics' 'Synaptics touchpad disabled' --icon=dialog-information
else
	xinput --enable "$tpname"
	notify-send 'Synaptics' 'Synaptics touchpad enabled' --icon=dialog-information	
fi

