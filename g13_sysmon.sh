#!/bin/bash

# Copyright (C) 2011 by Doc. Smimble
#
# G13 Sys-Monitor v0.1 for ecraven's G13 Program. 
#
#
# This program is free software; you can redistribute it and/or modify it
# under the terms of the GNU General Public License as published by the
# Free Software Foundation; either version 2, or (at your option) any
# later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program; if not, write to the Free Software
# Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA

# Special Thanks to...
# 1.1 Basic Uptime-Script: icyfire & niknah from linuxqestion.org
# 1.1 Link: http://www.linuxquestions.org/questions/linux-software-2/uptime-bash-script-40761/
# 1.2 http://bash.cyberciti.biz/monitoring/get-system-information-in-html-format/
# 1.3 http://arbeitsplatzvernichtung-durch-outsourcing.de/marty44/rrdtool.html
# 1.4 http://stackoverflow.com/questions/592620/check-if-a-program-exists-from-a-bash-script



# Install
# -------
# 1. Copy this script in the same folder where are the g13 daemon and the program pbm2lpbm is. 
# 2. Make sure that the package "sensors" is on your System installed. 





function get_uptime { 
upSeconds=`cat /proc/uptime`;
upSeconds=${upSeconds%%.*};
let upmins=$((${upSeconds}/60%60))
let uphours=$((${upSeconds}/3600%24))
let updays=$((${upSeconds}/86400))
echo "Uptime: (Days:Hours:Minutes): ${updays}d ${uphours}h ${upmins}m"
}

function get_time {
time_2=`date +%H-%M-%S_%a_%d-%m-%Y`;
time_day=$(echo $time_2 |cut -c10-10 )
time_day_2=$(echo $time_2 |cut -c11-11 )
echo ""
echo "Time/Date: (HH:MM:SS_Dayname_Daynr_Month_Year): $time_2"
}

function get_mem {
mem_free=$(free -mto | grep Mem: | awk '{print $4}')
echo ""
echo "Memory Free: $mem_free"
}

function get_proc {
proc_2=$(ps aux | wc -l)
echo ""
echo "Process: $proc_2"
}

function get_temp {
if [ "$(which sensors)" == "" ]
then
temp_2=$(echo "99")
echo ""
echo "Program Sensors not found, please install it to get real temperatur values from your computer"
echo "Demo Temp1 Sensor: $temp_2"
else
temp_2=$(sensors | grep temp1 | awk '{print $2}' | sed -r 's#^[^0-9]*([0-9]+).*#\1#g')
echo ""
echo "Temp1 Sensor: $temp_2"

fi


}

function get_loginuser {
loggedin_2=$(who | wc -l)
echo ""
echo "User logged in: $loggedin_2"
}

function get_loadavg {
loadavg_2=$(awk '{print $1" "$2" "$3}' < /proc/loadavg)
echo ""
echo "Loadavg: $loadavg_2"
}


function 0_2 { echo '
-draw "line '${1}','${2}' '${1}','$((${2}+4))'"
-draw "line '$((${1}+1))','${2}' '$((${1}+1))','${2}'"
-draw "line '$((${1}+2))','${2}' '$((${1}+2))','$((${2}+4))'"
-draw "line '$((${1}+1))','$((${2}+4))' '$((${1}+1))','$((${2}+4))'"'
}

function 1_2 { echo '
-draw "line '${1}','$((${2}+1))' '${1}','$((${2}+1))'"
-draw "line '$((${1}+1))','${2}' '$((${1}+1))','$((${2}+4))'"
-draw "line '$((${1}+0))','$((${2}+4))' '$((${1}+2))','$((${2}+4))'"'
}

function 2_2 { echo '
-draw "line '${1}','${2}' '$((${1}+2))','${2}'"
-draw "line '$((${1}+2))','$((${2}+1))' '$((${1}+2))','$((${2}+1))'"
-draw "line '${1}','$((${2}+2))' '$((${1}+2))','$((${2}+2))'"
-draw "line '${1}','$((${2}+3))' '${1}','$((${2}+3))'"
-draw "line '${1}','$((${2}+4))' '$((${1}+2))','$((${2}+4))'"'
}

function 3_2 { echo '
-draw "line '$((${1}+2))','${2}' '$((${1}+2))','$((${2}+4))'"
-draw "line '${1}','${2}' '$((${1}+1))','${2}'"
-draw "line '${1}','$((${2}+2))' '$((${1}+1))','$((${2}+2))'"
-draw "line '${1}','$((${2}+4))' '$((${1}+1))','$((${2}+4))'"'
}

function 4_2 { echo '
-draw "line '${1}','${2}' '${1}','$((${2}+2))'"
-draw "line '${1}','$((${2}+2))' '$((${1}+2))','$((${2}+2))'"
-draw "line '$((${1}+2))','${2}' '$((${1}+2))','$((${2}+4))'"'
}

function 5_2 { echo '
-draw "line '${1}','${2}' '$((${1}+2))','${2}'"
-draw "line '${1}','$((${2}+1))' '${1}','$((${2}+1))'"
-draw "line '${1}','$((${2}+2))' '$((${1}+2))','$((${2}+2))'"
-draw "line '$((${1}+2))','$((${2}+3))' '$((${1}+2))','$((${2}+3))'"
-draw "line '${1}','$((${2}+4))' '$((${1}+2))','$((${2}+4))'"'
}

function 6_2 { echo '
-draw "line '${1}','${2}' '$((${1}+2))','${2}'"
-draw "line '${1}','$((${2}+1))' '${1}','$((${2}+4))'"
-draw "line '${1}','$((${2}+4))' '$((${1}+2))','$((${2}+4))'"
-draw "line '$((${1}+2))','$((${2}+4))' '$((${1}+2))','$((${2}+2))'"
-draw "line '$((${1}+1))','$((${2}+2))' '$((${1}+1))','$((${2}+2))'"'
}

function 7_2 { echo '
-draw "line '${1}','${2}' '$((${1}+2))','${2}'"
-draw "line '$((${1}+2))','${2}' '$((${1}+2))','$((${2}+4))'"'
}

function 8_2 { echo '
-draw "line '${1}','${2}' '$((${1}+2))','${2}'"
-draw "line '${1}','${2}' '${1}','$((${2}+4))'"
-draw "line '${1}','$((${2}+4))' '$((${1}+2))','$((${2}+4))'"
-draw "line '$((${1}+2))','${2}' '$((${1}+2))','$((${2}+4))'"
-draw "line '$((${1}+1))','$((${2}+2))' '$((${1}+1))','$((${2}+2))'"'
}

function 9_2 { echo '
-draw "line '${1}','${2}' '$((${1}+2))','${2}'"
-draw "line '${1}','$((${2}+1))' '${1}','$((${2}+1))'"
-draw "line '${1}','$((${2}+2))' '$((${1}+2))','$((${2}+2))'"
-draw "line '$((${1}+2))','${2}' '$((${1}+2))','$((${2}+4))'"'
}


function A_2 { echo '
-draw "line '${1}','${2}' '${1}','$((${2}+4))'"
-draw "line '$((${1}+1))','${2}' '$((${1}+2))','${2}'"
-draw "line '$((${1}+1))','$((${2}+2))' '$((${1}+2))','$((${2}+2))'"
-draw "line '$((${1}+2))','${2}' '$((${1}+2))','$((${2}+4))'"'
}

function a_2 { echo '
-draw "line '${1}','$((${2}+2))' '$((${1}+2))','$((${2}+2))'"
-draw "line '${1}','$((${2}+3))' '${1}','$((${2}+3))'"
-draw "line '$((${1}+2))','$((${2}+3))' '$((${1}+2))','$((${2}+3))'"
-draw "line '${1}','$((${2}+4))' '$((${1}+2))','$((${2}+4))'"
-draw "line '$((${1}+3))','$((${2}+4))' '$((${1}+3))','$((${2}+4))'"'
}

function B_2 { echo '
-draw "line '$((${1}+1))','${2}' '$((${1}+1))','$((${2}+2))'"
-draw "line '${1}','${2}' '${1}','$((${2}+4))'"
-draw "line '${1}','$((${2}+4))' '$((${1}+2))','$((${2}+4))'"
-draw "line '$((${1}+2))','$((${2}+2))' '$((${1}+2))','$((${2}+4))'"
-draw "line '$((${1}+1))','$((${2}+2))' '$((${1}+1))','$((${2}+2))'"'
}

function C_2 { echo '
-draw "line '${1}','${2}' '${1}','$((${2}+4))'"
-draw "line '$((${1}+1))','${2}' '$((${1}+2))','${2}'"
-draw "line '$((${1}+1))','$((${2}+4))' '$((${1}+2))','$((${2}+4))'"'
}

function D_2 { echo '
-draw "line '${1}','${2}' '$((${1}+1))','${2}'"
-draw "line '${1}','${2}' '${1}','$((${2}+4))'" 
-draw "line '$((${1}+2))','$((${2}+1))' '$((${1}+2))','$((${2}+3))'" 
-draw "line '${1}','$((${2}+4))' '$((${1}+1))','$((${2}+4))'"'
}

function E_2 { echo '
-draw "line '${1}','${2}' '${1}','$((${2}+4))'"
-draw "line '$((${1}+1))','${2}' '$((${1}+2))','${2}'"
-draw "line '$((${1}+1))','$((${2}+2))' '$((${1}+2))','$((${2}+2))'"
-draw "line '$((${1}+1))','$((${2}+4))' '$((${1}+2))','$((${2}+4))'"'
}

function F_2 { echo '
-draw "line '${1}','${2}' '${1}','$((${2}+4))'"
-draw "line '$((${1}+1))','${2}' '$((${1}+2))','${2}'"
-draw "line '$((${1}+1))','$((${2}+2))' '$((${1}+1))','$((${2}+2))'"'
}

function G_2 { echo '
-draw "line '${1}','${2}' '$((${1}+2))','${2}'"
-draw "line '${1}','$((${2}+1))' '${1}','$((${2}+4))'"
-draw "line '${1}','$((${2}+4))' '$((${1}+2))','$((${2}+4))'"
-draw "line '$((${1}+2))','$((${2}+2))' '$((${1}+2))','$((${2}+4))'"
-draw "line '$((${1}+1))','$((${2}+3))' '$((${1}+1))','$((${2}+3))'"'
}

function H_2 { echo '
-draw "line '${1}','${2}' '${1}','$((${2}+4))'"
-draw "line '$((${1}+1))','$((${2}+2))' '$((${1}+2))','$((${2}+2))'"
-draw "line '$((${1}+2))','${2}' '$((${1}+2))','$((${2}+4))'"'
}

function i_2 { echo '
-draw "line '$((${1}+1))','${2}' '$((${1}+1))','${2}'"
-draw "line '$((${1}+1))','$((${2}+2))' '$((${1}+1))','$((${2}+3))'"
-draw "line '${1}','$((${2}+4))' '$((${1}+2))','$((${2}+4))'"'
}

function I_2 { echo '
-draw "line '${1}','${2}' '$((${1}+2))','${2}'"
-draw "line '$((${1}+1))','$((${2}+1))' '$((${1}+1))','$((${2}+3))'"
-draw "line '${1}','$((${2}+4))' '$((${1}+2))','$((${2}+4))'"'
}

function J_2 { echo '
-draw "line '${1}','${2}' '$((${1}+2))','${2}'"
-draw "line '$((${1}+2))','$((${2}+1))' '$((${1}+2))','$((${2}+3))'"
-draw "line '${1}','$((${2}+4))' '$((${1}+1))','$((${2}+4))'"'
}

function K_2 { echo '
-draw "line '${1}','${2}' '${1}','$((${2}+4))'"
-draw "line '$((${1}+1))','$((${2}+1))' '$((${1}+2))','${2}'"
-draw "line '$((${1}+1))','$((${2}+3))' '$((${1}+2))','$((${2}+4))'"'
}

function L_2 { echo '
-draw "line '${1}','${2}' '${1}','$((${2}+3))'"
-draw "line '${1}','$((${2}+4))' '$((${1}+2))','$((${2}+4))'"'
}

function M_2 { echo '
-draw "line '${1}','${2}' '${1}','$((${2}+4))'"
-draw "line '$((${1}+1))','$((${2}+1))' '$((${1}+1))','$((${2}+1))'"
-draw "line '$((${1}+2))','$((${2}+2))' '$((${1}+2))','$((${2}+2))'"
-draw "line '$((${1}+3))','$((${2}+1))' '$((${1}+3))','$((${2}+1))'"
-draw "line '$((${1}+4))','${2}' '$((${1}+4))','$((${2}+4))'"'
}

function N_2 { echo '
-draw "line '${1}','${2}' '${1}','$((${2}+4))'"
-draw "line '$((${1}+3))','$((${2}+0))' '$((${1}+3))','$((${2}+4))'"
-draw "line '$((${1}+1))','$((${2}+1))' '$((${1}+2))','$((${2}+2))'"'
}

function o_2 { echo '
-draw "line '${1}','$((${2}+2))' '$((${1}+2))','$((${2}+2))'"
-draw "line '${1}','$((${2}+3))' '${1}','$((${2}+3))'"
-draw "line '$((${1}+2))','$((${2}+3))' '$((${1}+2))','$((${2}+3))'"
-draw "line '${1}','$((${2}+4))' '$((${1}+2))','$((${2}+4))'"'
}

function O_2 { echo '
-draw "line '${1}','${2}' '$((${1}+2))','${2}'"
-draw "line '${1}','$((${2}+1))' '${1}','$((${2}+3))'"
-draw "line '$((${1}+2))','$((${2}+1))' '$((${1}+2))','$((${2}+3))'"
-draw "line '${1}','$((${2}+4))' '$((${1}+2))','$((${2}+4))'"'
}

function P_2 { echo '
-draw "line '${1}','${2}' '${1}','$((${2}+4))'"
-draw "line '$((${1}+1))','${2}' '$((${1}+2))','${2}'"
-draw "line '$((${1}+2))','$((${2}+1))' '$((${1}+2))','$((${2}+1))'"
-draw "line '$((${1}+1))','$((${2}+2))' '$((${1}+2))','$((${2}+2))'"'
}

function Q_2 { echo '
-draw "line '${1}','${2}' '$((${1}+2))','${2}'"
-draw "line '${1}','$((${2}+1))' '${1}','$((${2}+3))'"
-draw "line '$((${1}+3))','$((${2}+0))' '$((${1}+3))','$((${2}+4))'"
-draw "line '${1}','$((${2}+4))' '$((${1}+2))','$((${2}+4))'"
-draw "line '$((${1}+2))','$((${2}+3))' '$((${1}+2))','$((${2}+3))'"'
}

function r_2 { echo '
-draw "line '$((${1}+2))','$((${2}+2))' '$((${1}+2))','$((${2}+2))'"
-draw "line '$((${1}+1))','$((${2}+2))' '$((${1}+1))','$((${2}+4))'"'
}

function R_2 { echo '
-draw "line '${1}','${2}' '${1}','$((${2}+4))'"
-draw "line '$((${1}+1))','${2}' '$((${1}+2))','${2}'"
-draw "line '$((${1}+2))','$((${2}+1))' '$((${1}+2))','$((${2}+1))'"
-draw "line '$((${1}+1))','$((${2}+2))' '$((${1}+2))','$((${2}+2))'"
-draw "line '$((${1}+1))','$((${2}+3))' '$((${1}+1))','$((${2}+3))'"
-draw "line '$((${1}+2))','$((${2}+4))' '$((${1}+2))','$((${2}+4))'"'
}

function S_2 { echo '
-draw "line '${1}','${2}' '$((${1}+2))','${2}'"
-draw "line '${1}','${2}' '${1}','$((${2}+2))'"
-draw "line '$((${1}+2))','$((${2}+2))' '$((${1}+2))','$((${2}+4))'"
-draw "line '${1}','$((${2}+4))' '$((${1}+1))','$((${2}+4))'"
-draw "line '$((${1}+1))','$((${2}+2))' '$((${1}+1))','$((${2}+2))'"'
}

function T_2 { echo '
-draw "line '${1}','${2}' '$((${1}+2))','${2}'" 
-draw "line '$((${1}+1))','$((${2}+1))' '$((${1}+1))','$((${2}+4))'"'
}

function U_2 { echo '
-draw "line '${1}','${2}' '${1}','$((${2}+3))'"
-draw "line '${1}','$((${2}+4))' '$((${1}+2))','$((${2}+4))'"
-draw "line '$((${1}+2))','${2}' '$((${1}+2))','$((${2}+3))'"'
}

function V_2 { echo '
-draw "line '${1}','${2}' '${1}','$((${2}+3))'"
-draw "line '$((${1}+1))','$((${2}+4))' '$((${1}+1))','$((${2}+4))'"
-draw "line '$((${1}+2))','${2}' '$((${1}+2))','$((${2}+3))'"'
}

function W_2 { echo '
-draw "line '${1}','${2}' '${1}','$((${2}+3))'"
-draw "line '$((${1}+2))','$((${2}+2))' '$((${1}+2))','$((${2}+3))'"
-draw "line '$((${1}+4))','${2}' '$((${1}+4))','$((${2}+3))'"
-draw "line '$((${1}+1))','$((${2}+4))' '$((${1}+3))','$((${2}+4))'"'
}

function X_2 { echo '
-draw "line '${1}','${2}' '${1}','$((${2}+1))'"
-draw "line '$((${1}+1))','$((${2}+2))' '$((${1}+1))','$((${2}+2))'"
-draw "line '$((${1}+2))','${2}' '$((${1}+2))','$((${2}+1))'"
-draw "line '${1}','$((${2}+3))' '${1}','$((${2}+4))'"
-draw "line '$((${1}+2))','$((${2}+3))' '$((${1}+2))','$((${2}+4))'"'
}

function Y_2 { echo '
-draw "line '${1}','${2}' '${1}','$((${2}+1))'"
-draw "line '$((${1}+1))','$((${2}+2))' '$((${1}+1))','$((${2}+4))'"
-draw "line '$((${1}+2))','${2}' '$((${1}+2))','$((${2}+1))'"'
}

# Z
function Z_2 { echo '
-draw "line '${1}','$((${2}+3))' '$((${1}+2))','$((${2}+1))'"
-draw "line '${1}','${2}' '$((${1}+2))','${2}'"
-draw "line '${1}','$((${2}+4))' '$((${1}+2))','$((${2}+4))'"'
}

# :
function DP_2 { echo '
-draw "line '${1}','$((${2}+1))' '${1}','$((${2}+1))'"
-draw "line '${1}','$((${2}+3))' '${1}','$((${2}+3))'"'
}

# .
function SP_2 { echo '
-draw "line '${1}','$((${2}+4))' '${1}','$((${2}+4))'"'
}

# /
function SLASH_2 { echo '
-draw "line '${1}','$((${2}+4))' '$((${1}+2))','$((${2}+0))'"'
}

# |
function STRICH_2 { echo '
-draw "line '${1}','${2}' '${1}','$((${2}+4))'"'
}




while true
do


clear
echo ""
echo ""
get_uptime
get_proc
get_time
get_mem
get_temp
get_loginuser
get_loadavg

postparams_begin='-pointsize 10 '
postparams_data=''
postparams_end=' pbm:-'


function draw_1 {
U_2 5 10
P_2 9 10
T_2 13 10
I_2 17 10
M_2 21 10
E_2 27 10
DP_2 31 10


T_2 5 3
I_2 9 3
M_2 13 3
E_2 19 3
DP_2 23 3


T_2 118 10
E_2 122 10
M_2 126 10
P_2 132 10
DP_2 136 10

P_2 120 17
R_2 124 17
O_2 128 17
C_2 132 17
DP_2 136 17


M_2 5 17
E_2 11 17
M_2 15 17

F_2 23 17
R_2 27 17
E_2 31 17
E_2 35 17
DP_2 39 17


U_2 5 24
S_2 9 24
E_2 13 24
R_2 17 24

L_2 23 24
O_2 27 24
G_2 31 24
G_2 35 24
E_2 39 24
D_2 43 24

I_2 49 24
N_2 53 24
DP_2 58 24


L_2 5 31
O_2 9 31
A_2 13 31
D_2 17 31
A_2 21 31
V_2 25 31
G_2 29 31
DP_2 33 31

${loadavg_2:0:1}_2 37 31
SP_2 41 31
${loadavg_2:2:1}_2 43 31
${loadavg_2:3:1}_2 47 31
STRICH_2 52 31
${loadavg_2:5:1}_2 55 31
SP_2 59 31
${loadavg_2:7:1}_2 61 31
${loadavg_2:8:1}_2 65 31
STRICH_2 70 31
${loadavg_2:10:1}_2 73 31
SP_2 77 31
${loadavg_2:12:1}_2 79 31
${loadavg_2:13:1}_2 83 31

if [ "$(echo $loggedin_2 | wc -m)" == "4" ]
then
${loggedin_2:0:1}_2 62 24
${loggedin_2:1:1}_2 66 24
${loggedin_2:2:1}_2 70 24
fi

if [ "$(echo $loggedin_2 | wc -m)" == "3" ]
then
${loggedin_2:0:1}_2 62 24
${loggedin_2:1:1}_2 66 24
fi

if [ "$(echo $loggedin_2 | wc -m)" == "2" ]
then
${loggedin_2:0:1}_2 62 24
fi

if [ "$(echo $mem_free | wc -m)" == "5" ]
then
${mem_free:0:1}_2 47 17
${mem_free:1:1}_2 51 17
${mem_free:2:1}_2 55 17
${mem_free:3:1}_2 59 17
M_2 63 17
B_2 69 17
fi
if [ "$(echo $mem_free | wc -m)" == "4" ]
then
${mem_free:0:1}_2 47 17
${mem_free:1:1}_2 51 17
${mem_free:2:1}_2 55 17
M_2 59 17
B_2 65 17
fi
if [ "$(echo $mem_free | wc -m)" == "3" ]
then
${mem_free:0:1}_2 48 17
${mem_free:1:1}_2 51 17
M_2 55 17
B_2 61 17
fi

${temp_2:0:1}_2 140 10
${temp_2:1:1}_2 144 10
SP_2 149 6
C_2 151 10

${proc_2:0:1}_2 140 17
${proc_2:1:1}_2 144 17
${proc_2:2:1}_2 148 17

${time_2:0:1}_2 26 3
${time_2:1:1}_2 30 3
DP_2 34 3
${time_2:3:1}_2 36 3
${time_2:4:1}_2 40 3
DP_2 44 3
${time_2:6:1}_2 46 3
${time_2:7:1}_2 50 3

if [ "$(echo $time_day)" == "M" ]
then
${time_2:9:1}_2 108 3
else
  if [ "$(echo $time_day)" == "D" ]
  then
  ${time_2:9:1}_2 110 3
  else
  ${time_2:9:1}_2 110 3
  fi
fi

if [ "$(echo $time_day_2)" == "r" ]
  then
${time_2:10:1}_2 113 3
  else
${time_2:10:1}_2 114 3
fi


${time_2:12:1}_2 122 3
${time_2:13:1}_2 126 3
SP_2 130 3
${time_2:15:1}_2 132 3
${time_2:16:1}_2 136 3
SP_2 140 3
${time_2:18:1}_2 142 3
${time_2:19:1}_2 146 3
${time_2:20:1}_2 150 3
${time_2:21:1}_2 154 3


if [ "$(echo $updays | wc -m)" == "4" ]
then
${updays:0:1}_2 35 10
${updays:1:1}_2 39 10
${updays:2:1}_2 43 10
fi

if [ "$(echo $updays | wc -m)" == "3" ]
then
0_2 35 10
${updays:0:1}_2 39 10
${updays:1:1}_2 43 10
fi

if [ "$(echo $updays | wc -m)" == "2" ]
then
0_2 35 10
0_2 39 10
${updays:0:1}_2 43 10
fi

DP_2 47 10

if [ "${uphours:1:2}" == "" ]
then
0_2 49 10
${uphours:0:1}_2 53 10
else 
${uphours:0:1}_2 49 10
${uphours:1:1}_2 53 10
fi

DP_2 57 10

if [ "${upmins:1:2}" == "" ]
then
0_2 59 10
${upmins:0:1}_2 63 10
else 
${upmins:0:1}_2 59 10
${upmins:1:1}_2 63 10
fi
}

preparams="-size 160x43 xc:white"
postparams=$(echo "$postparams_begin `draw_1`")

function D_write_1 {
eval convert $preparams $postparams  $postparams_end | ./pbm2lpbm > /tmp/g13-0
}

D_write_1

sleep 5
done
