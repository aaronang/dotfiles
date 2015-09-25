#!/bin/bash

if xinput | grep -q 'Synaptics'; then
	xinput set-prop 'SynPS/2 Synaptics TouchPad' 'Device Accel Profile' -1
	xinput set-prop 'SynPS/2 Synaptics TouchPad' 'Device Accel Constant Deceleration' 2.5 
	xinput set-prop 'SynPS/2 Synaptics TouchPad' 'Device Accel Adaptive Deceleration' 1
	xinput set-prop 'SynPS/2 Synaptics TouchPad' 'Device Accel Velocity Scaling' 1
fi

if xinput | grep -q 'Logitech';	then
	xinput set-prop 'Logitech M705' 'Device Accel Profile' -1
	xinput set-prop 'Logitech M705' 'Device Accel Constant Deceleration' 1.5
	xinput set-prop 'Logitech M705' 'Device Accel Adaptive Deceleration' 1
	xinput set-prop 'Logitech M705' 'Device Accel Velocity Scaling' 1
fi
