#!/bin/bash

# Copyright (C) 2011 by Doc. Smimble and ecraven
#
# LCD Demo v0.1 for ecraven's G13 Program. 
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





#-# OUTPUT "ARROW UP"
function D_Arrow_up {
postparams="-pointsize 10 \
-draw \"line 97,28 97,26\" \
-draw \"line 95,25 99,25\" \
-draw \"line 96,24 98,24\" \
-draw \"line 97,23 97,23\" \
pbm:- "
}

#-# OUTPUT "ARROW DOWN"
function D_Arrow_down {
postparams="-pointsize 10 \
-draw \"line 87,27 87,25\" \
-draw \"line 85,28 89,28\" \
-draw \"line 86,29 88,29\" \
-draw \"line 87,30 87,30\" \
pbm:- "
}

#-# OUTPUT "ARROW RIGHT"
function D_Arrow_right {
postparams="-pointsize 10 \
-draw \"line 75,27 77,27\" \
-draw \"line 78,25 78,29\" \
-draw \"line 79,26 79,28\" \
-draw \"line 80,27 80,27\" \
pbm:- "
}

#-# OUTPUT "ARROW LEFT"
function D_Arrow_left {
postparams="-pointsize 10 \
-draw \"line 65,27 67,27\" \
-draw \"line 64,25 64,29\" \
-draw \"line 63,26 63,28\" \
-draw \"line 62,27 62,27\" \
pbm:- "
}

#-# Small Numbers 
function D_Small_Numbers_0 {
postparams="-pointsize 10 \
-draw \"line 45,14 45,18\" \
-draw \"line 46,14 46,14\" \
-draw \"line 47,14 47,18\" \
-draw \"line 46,18 46,18\" \
-draw \"line 49,15 49,15\" \
-draw \"line 50,14 50,18\" \
-draw \"line 52,14 54,14\" \
-draw \"line 54,15 54,15\" \
-draw \"line 52,16 54,16\" \
-draw \"line 52,17 52,17\" \
-draw \"line 52,18 54,18\" \
-draw \"line 58,14 58,18\" \
-draw \"line 56,14 57,14\" \
-draw \"line 56,16 57,16\" \
-draw \"line 56,18 57,18\" \
-draw \"line 60,14 60,16\" \
-draw \"line 60,16 62,16\" \
-draw \"line 62,14 62,18\" \
-draw \"line 64,14 66,14\" \
-draw \"line 64,15 64,15\" \
-draw \"line 64,16 66,16\" \
-draw \"line 66,17 66,17\" \
-draw \"line 64,18 66,18\" \
-draw \"line 68,14 70,14\" \
-draw \"line 68,15 68,18\" \
-draw \"line 68,18 70,18\" \
-draw \"line 70,18 70,16\" \
-draw \"line 69,16 69,16\" \
-draw \"line 72,14 74,14\" \
-draw \"line 74,14 74,18\" \
-draw \"line 76,14 78,14\" \
-draw \"line 76,14 76,18\" \
-draw \"line 76,18 78,18\" \
-draw \"line 78,18 78,14\" \
-draw \"line 77,16 77,16\" \
-draw \"line 80,14 82,14\" \
-draw \"line 80,15 80,15\" \
-draw \"line 80,16 82,16\" \
-draw \"line 82,14 82,18\" \
pbm:- "
}

#-# Small Tempbar
function D_vTempbar_0 {
postparams="-pointsize 10 \
-draw \"line 55,1 55,10\" \
-draw \"line 56,1 57,1\" \
-draw \"line 58,1 58,10\" \
-draw \"line 54,10 54,13\" \
-draw \"line 59,10 59,13\" \
-draw \"line 54,14 59,14\" \
-draw \"line 56,12 57,12\" \
pbm:- "
}
function D_vTempbar_1 {
postparams="-pointsize 10 \
-draw \"line 55,1 55,10\" \
-draw \"line 56,1 57,1\" \
-draw \"line 58,1 58,10\" \
-draw \"line 54,10 54,13\" \
-draw \"line 59,10 59,13\" \
-draw \"line 54,14 59,14\" \
-draw \"line 56,12 57,12\" \
-draw \"line 56,9 57,9\" \

pbm:- "
}
function D_vTempbar_2 {
postparams="-pointsize 10 \
-draw \"line 55,1 55,10\" \
-draw \"line 56,1 57,1\" \
-draw \"line 58,1 58,10\" \
-draw \"line 54,10 54,13\" \
-draw \"line 59,10 59,13\" \
-draw \"line 54,14 59,14\" \
-draw \"line 56,12 57,12\" \
-draw \"line 56,7 57,7\" \
-draw \"line 56,9 57,9\" \
pbm:- "
}
function D_vTempbar_3 {
postparams="-pointsize 10 \
-draw \"line 55,1 55,10\" \
-draw \"line 56,1 57,1\" \
-draw \"line 58,1 58,10\" \
-draw \"line 54,10 54,13\" \
-draw \"line 59,10 59,13\" \
-draw \"line 54,14 59,14\" \
-draw \"line 56,12 57,12\" \
-draw \"line 56,5 57,5\" \
-draw \"line 56,7 57,7\" \
-draw \"line 56,9 57,9\" \
pbm:- "
}
function D_vTempbar_4 {
postparams="-pointsize 10 \
-draw \"line 55,1 55,10\" \
-draw \"line 56,1 57,1\" \
-draw \"line 58,1 58,10\" \
-draw \"line 54,10 54,13\" \
-draw \"line 59,10 59,13\" \
-draw \"line 54,14 59,14\" \
-draw \"line 56,12 57,12\" \
-draw \"line 56,3 57,3\" \
-draw \"line 56,5 57,5\" \
-draw \"line 56,7 57,7\" \
-draw \"line 56,9 57,9\" \
pbm:- "
}

#-#  Tempbar 1. 
function D_v1Tempbar_0 {
postparams="-pointsize 10 \
-draw \"line 10,16 10,20\" \
-draw \"line 30,16 30,20\" \
-draw \"line 50,16 50,20\" \
-draw \"line 15,17 15,19\" \
-draw \"line 20,17 20,19\" \
-draw \"line 25,17 25,19\" \
-draw \"line 35,17 35,19\" \
-draw \"line 40,17 40,19\" \
-draw \"line 45,17 45,19\" \
-draw \"line 10,21 50,21\" \
-draw \"line 9,10 11,10\" \
-draw \"line 9,10 9,14\" \
-draw \"line 11,10 11,14\" \
-draw \"line 9,14 11,14\" \
-draw \"line 27,10 29,10\" \
-draw \"line 27,11 27,11\" \
-draw \"line 27,12 29,12\" \
-draw \"line 29,13 29,13\" \
-draw \"line 27,14 29,14\" \
-draw \"line 31,10 33,10\" \
-draw \"line 31,10 31,14\" \
-draw \"line 33,10 33,14\" \
-draw \"line 31,14 33,14\" \
-draw \"line 46,11 46,11\" \
-draw \"line 47,10 47,14\" \
-draw \"line 49,10 51,10\" \
-draw \"line 49,10 49,14\" \
-draw \"line 51,10 51,14\" \
-draw \"line 49,14 51,14\" \
-draw \"line 53,10 55,10\" \
-draw \"line 53,10 53,14\" \
-draw \"line 55,10 55,14\" \
-draw \"line 53,14 55,14\" \
pbm:- "
}
function D_v1Tempbar_1 {
postparams="-pointsize 10 \
-draw \"line 10,16 10,20\" \
-draw \"line 30,16 30,20\" \
-draw \"line 50,16 50,20\" \
-draw \"line 15,17 15,19\" \
-draw \"line 20,17 20,19\" \
-draw \"line 25,17 25,19\" \
-draw \"line 35,17 35,19\" \
-draw \"line 40,17 40,19\" \
-draw \"line 45,17 45,19\" \
-draw \"line 10,21 50,21\" \
-draw \"line 9,10 11,10\" \
-draw \"line 9,10 9,14\" \
-draw \"line 11,10 11,14\" \
-draw \"line 9,14 11,14\" \
-draw \"line 27,10 29,10\" \
-draw \"line 27,11 27,11\" \
-draw \"line 27,12 29,12\" \
-draw \"line 29,13 29,13\" \
-draw \"line 27,14 29,14\" \
-draw \"line 31,10 33,10\" \
-draw \"line 31,10 31,14\" \
-draw \"line 33,10 33,14\" \
-draw \"line 31,14 33,14\" \
-draw \"line 46,11 46,11\" \
-draw \"line 47,10 47,14\" \
-draw \"line 49,10 51,10\" \
-draw \"line 49,10 49,14\" \
-draw \"line 51,10 51,14\" \
-draw \"line 49,14 51,14\" \
-draw \"line 53,10 55,10\" \
-draw \"line 53,10 53,14\" \
-draw \"line 55,10 55,14\" \
-draw \"line 53,14 55,14\" \
-draw \"line 10,19 20,19\" \
-draw \"line 10,20 20,20\" \
pbm:- "
}
function D_v1Tempbar_2 {
postparams="-pointsize 10 \
-draw \"line 10,16 10,20\" \
-draw \"line 30,16 30,20\" \
-draw \"line 50,16 50,20\" \
-draw \"line 15,17 15,19\" \
-draw \"line 20,17 20,19\" \
-draw \"line 25,17 25,19\" \
-draw \"line 35,17 35,19\" \
-draw \"line 40,17 40,19\" \
-draw \"line 45,17 45,19\" \
-draw \"line 10,21 50,21\" \
-draw \"line 9,10 11,10\" \
-draw \"line 9,10 9,14\" \
-draw \"line 11,10 11,14\" \
-draw \"line 9,14 11,14\" \
-draw \"line 27,10 29,10\" \
-draw \"line 27,11 27,11\" \
-draw \"line 27,12 29,12\" \
-draw \"line 29,13 29,13\" \
-draw \"line 27,14 29,14\" \
-draw \"line 31,10 33,10\" \
-draw \"line 31,10 31,14\" \
-draw \"line 33,10 33,14\" \
-draw \"line 31,14 33,14\" \
-draw \"line 46,11 46,11\" \
-draw \"line 47,10 47,14\" \
-draw \"line 49,10 51,10\" \
-draw \"line 49,10 49,14\" \
-draw \"line 51,10 51,14\" \
-draw \"line 49,14 51,14\" \
-draw \"line 53,10 55,10\" \
-draw \"line 53,10 53,14\" \
-draw \"line 55,10 55,14\" \
-draw \"line 53,14 55,14\" \
-draw \"line 10,19 30,19\" \
-draw \"line 10,20 30,20\" \
pbm:- "
}
function D_v1Tempbar_3 {
postparams="-pointsize 10 \
-draw \"line 10,16 10,20\" \
-draw \"line 30,16 30,20\" \
-draw \"line 50,16 50,20\" \
-draw \"line 15,17 15,19\" \
-draw \"line 20,17 20,19\" \
-draw \"line 25,17 25,19\" \
-draw \"line 35,17 35,19\" \
-draw \"line 40,17 40,19\" \
-draw \"line 45,17 45,19\" \
-draw \"line 10,21 50,21\" \
-draw \"line 9,10 11,10\" \
-draw \"line 9,10 9,14\" \
-draw \"line 11,10 11,14\" \
-draw \"line 9,14 11,14\" \
-draw \"line 27,10 29,10\" \
-draw \"line 27,11 27,11\" \
-draw \"line 27,12 29,12\" \
-draw \"line 29,13 29,13\" \
-draw \"line 27,14 29,14\" \
-draw \"line 31,10 33,10\" \
-draw \"line 31,10 31,14\" \
-draw \"line 33,10 33,14\" \
-draw \"line 31,14 33,14\" \
-draw \"line 46,11 46,11\" \
-draw \"line 47,10 47,14\" \
-draw \"line 49,10 51,10\" \
-draw \"line 49,10 49,14\" \
-draw \"line 51,10 51,14\" \
-draw \"line 49,14 51,14\" \
-draw \"line 53,10 55,10\" \
-draw \"line 53,10 53,14\" \
-draw \"line 55,10 55,14\" \
-draw \"line 53,14 55,14\" \
-draw \"line 10,19 40,19\" \
-draw \"line 10,20 40,20\" \
pbm:- "
}
function D_v1Tempbar_4 {
postparams="-pointsize 10 \
-draw \"line 10,16 10,20\" \
-draw \"line 30,16 30,20\" \
-draw \"line 50,16 50,20\" \
-draw \"line 15,17 15,19\" \
-draw \"line 20,17 20,19\" \
-draw \"line 25,17 25,19\" \
-draw \"line 35,17 35,19\" \
-draw \"line 40,17 40,19\" \
-draw \"line 45,17 45,19\" \
-draw \"line 10,21 50,21\" \
-draw \"line 9,10 11,10\" \
-draw \"line 9,10 9,14\" \
-draw \"line 11,10 11,14\" \
-draw \"line 9,14 11,14\" \
-draw \"line 27,10 29,10\" \
-draw \"line 27,11 27,11\" \
-draw \"line 27,12 29,12\" \
-draw \"line 29,13 29,13\" \
-draw \"line 27,14 29,14\" \
-draw \"line 31,10 33,10\" \
-draw \"line 31,10 31,14\" \
-draw \"line 33,10 33,14\" \
-draw \"line 31,14 33,14\" \
-draw \"line 46,11 46,11\" \
-draw \"line 47,10 47,14\" \
-draw \"line 49,10 51,10\" \
-draw \"line 49,10 49,14\" \
-draw \"line 51,10 51,14\" \
-draw \"line 49,14 51,14\" \
-draw \"line 53,10 55,10\" \
-draw \"line 53,10 53,14\" \
-draw \"line 55,10 55,14\" \
-draw \"line 53,14 55,14\" \
-draw \"line 10,19 50,19\" \
-draw \"line 10,20 50,20\" \
pbm:- "
}

#-# Gauge Meter 1. 
function D_vGauge_0 {
postparams="-pointsize 10 \
-draw \"line 10,1 50,1\" \
-draw \"line 50,1 50,20\" \
-draw \"line 10,20 10,1\" \
-draw \"line 50,20 10,20\" \
-draw \"line 12,3 16,7\" \
-draw \"line 30,1 30,4\" \
-draw \"line 48,3 44,7\" \
-draw \"line 28,19 32,19\" \
-draw \"line 29,18 31,18\" \
-draw \"line 16,14 16,18\" \
-draw \"line 17,14 17,14\" \
-draw \"line 18,14 18,18\" \
-draw \"line 17,18 17,18\" \
-draw \"line 40,14 40,18\" \
-draw \"line 39,15 39,15\" \
-draw \"line 42,14 42,18\" \
-draw \"line 43,14 43,14\" \
-draw \"line 44,14 44,18\" \
-draw \"line 43,18 43,18\" \
-draw \"line 46,14 46,18\" \
-draw \"line 47,14 47,14\" \
-draw \"line 48,14 48,18\" \
-draw \"line 47,18 47,18\" \
-draw \"line 30,20 20,10\" \
pbm:- "
}
function D_vGauge_1 {
postparams="-pointsize 10 \
-draw \"line 10,1 50,1\" \
-draw \"line 50,1 50,20\" \
-draw \"line 10,20 10,1\" \
-draw \"line 50,20 10,20\" \
-draw \"line 12,3 16,7\" \
-draw \"line 30,1 30,4\" \
-draw \"line 48,3 44,7\" \
-draw \"line 28,19 32,19\" \
-draw \"line 29,18 31,18\" \
-draw \"line 16,14 16,18\" \
-draw \"line 17,14 17,14\" \
-draw \"line 18,14 18,18\" \
-draw \"line 17,18 17,18\" \
-draw \"line 40,14 40,18\" \
-draw \"line 39,15 39,15\" \
-draw \"line 42,14 42,18\" \
-draw \"line 43,14 43,14\" \
-draw \"line 44,14 44,18\" \
-draw \"line 43,18 43,18\" \
-draw \"line 46,14 46,18\" \
-draw \"line 47,14 47,14\" \
-draw \"line 48,14 48,18\" \
-draw \"line 47,18 47,18\" \
-draw \"line 30,20 30,10\" \
pbm:- "
}
function D_vGauge_2 {
postparams="-pointsize 10 \
-draw \"line 10,1 50,1\" \
-draw \"line 50,1 50,20\" \
-draw \"line 10,20 10,1\" \
-draw \"line 50,20 10,20\" \
-draw \"line 12,3 16,7\" \
-draw \"line 30,1 30,4\" \
-draw \"line 48,3 44,7\" \
-draw \"line 28,19 32,19\" \
-draw \"line 29,18 31,18\" \
-draw \"line 16,14 16,18\" \
-draw \"line 17,14 17,14\" \
-draw \"line 18,14 18,18\" \
-draw \"line 17,18 17,18\" \
-draw \"line 40,14 40,18\" \
-draw \"line 39,15 39,15\" \
-draw \"line 42,14 42,18\" \
-draw \"line 43,14 43,14\" \
-draw \"line 44,14 44,18\" \
-draw \"line 43,18 43,18\" \
-draw \"line 46,14 46,18\" \
-draw \"line 47,14 47,14\" \
-draw \"line 48,14 48,18\" \
-draw \"line 47,18 47,18\" \
-draw \"line 30,20 40,10\" \
pbm:- "
}

#-# Small Progbar [------]
function D_Progbar_small_0 {
postparams="-pointsize 10 \
-draw \"line 10,18 50,18\" \
-draw \"line 50,18 50,20\" \
-draw \"line 10,20 10,18\" \
-draw \"line 50,20 10,20\" \
pbm:- "
}
function D_Progbar_small_1 {
postparams="-pointsize 10 \
-draw \"line 10,18 50,18\" \
-draw \"line 50,18 50,20\" \
-draw \"line 10,20 10,18\" \
-draw \"line 50,20 10,20\" \
-draw \"line 10,19 20,19\" \
pbm:- "
}
function D_Progbar_small_2 {
postparams="-pointsize 10 \
-draw \"line 10,18 50,18\" \
-draw \"line 50,18 50,20\" \
-draw \"line 10,20 10,18\" \
-draw \"line 50,20 10,20\" \
-draw \"line 30,19 10,19\" \
pbm:- "
}
function D_Progbar_small_3 {
postparams="-pointsize 10 \
-draw \"line 10,18 50,18\" \
-draw \"line 50,18 50,20\" \
-draw \"line 10,20 10,18\" \
-draw \"line 50,20 10,20\" \
-draw \"line 10,19 40,19\" \
pbm:- "
}
function D_Progbar_small_4 {
postparams="-pointsize 10 \
-draw \"line 10,18 50,18\" \
-draw \"line 50,18 50,20\" \
-draw \"line 10,20 10,18\" \
-draw \"line 50,20 10,20\" \
-draw \"line 10,19 50,19\" \
pbm:- "
}

#-# Middle Progbar [=====]
function D_Progbar_middle_0 {
postparams="-pointsize 10 \
-draw \"line 10,18 50,18\" \
-draw \"line 50,18 50,21\" \
-draw \"line 10,21 10,18\" \
-draw \"line 50,21 10,21\" \
pbm:- "
}
function D_Progbar_middle_1 {
postparams="-pointsize 10 \
-draw \"line 10,18 50,18\" \
-draw \"line 50,18 50,21\" \
-draw \"line 10,21 10,18\" \
-draw \"line 10,21 50,21\" \
-draw \"line 10,19 20,19\" \
-draw \"line 10,20 20,20\" \
pbm:- "
}
function D_Progbar_middle_2 {
postparams="-pointsize 10 \
-draw \"line 10,18 50,18\" \
-draw \"line 50,18 50,21\" \
-draw \"line 10,21 10,18\" \
-draw \"line 10,21 50,21\" \
-draw \"line 10,19 30,19\" \
-draw \"line 10,20 30,20\" \
pbm:- "
}
function D_Progbar_middle_3 {
postparams="-pointsize 10 \
-draw \"line 10,18 50,18\" \
-draw \"line 50,18 50,21\" \
-draw \"line 10,21 10,18\" \
-draw \"line 10,21 50,21\" \
-draw \"line 30,19 10,19\" \
-draw \"line 30,20 10,20\" \
-draw \"line 10,19 40,19\" \
-draw \"line 10,20 40,20\" \
pbm:- "
}
function D_Progbar_middle_4 {
postparams="-pointsize 10 \
-draw \"line 10,18 50,18\" \
-draw \"line 50,18 50,21\" \
-draw \"line 10,21 10,18\" \
-draw \"line 10,21 50,21\" \
-draw \"line 30,19 10,19\" \
-draw \"line 30,20 10,20\" \
-draw \"line 10,19 40,19\" \
-draw \"line 10,20 40,20\" \
-draw \"line 10,19 50,19\" \
-draw \"line 10,20 50,20\" \
pbm:- "
}

#-# Middle Size Progbar XP Style [= = = = =]
function D_Progbar_middle_xp_0 {
postparams="-pointsize 10 \
-draw \"line 10,18 48,18\" \
-draw \"line 49,18 49,21\" \
-draw \"line 10,21 10,18\" \
-draw \"line 49,21 10,21\" \
pbm:- "
}
function D_Progbar_middle_xp_1 {
postparams="-pointsize 10 \
-draw \"line 10,18 48,18\" \
-draw \"line 49,18 49,21\" \
-draw \"line 10,21 10,18\" \
-draw \"line 49,21 10,21\" \
-draw \"line 14,19 13,19\" \
-draw \"line 14,20 13,20\" \
-draw \"line 18,19 17,19\" \
-draw \"line 18,20 17,20\" \
-draw \"line 22,19 21,19\" \
-draw \"line 22,20 21,20\" \
pbm:- "
}
function D_Progbar_middle_xp_2 {
postparams="-pointsize 10 \
-draw \"line 10,18 48,18\" \
-draw \"line 49,18 49,21\" \
-draw \"line 10,21 10,18\" \
-draw \"line 49,21 10,21\" \
-draw \"line 14,19 13,19\" \
-draw \"line 14,20 13,20\" \
-draw \"line 18,19 17,19\" \
-draw \"line 18,20 17,20\" \
-draw \"line 22,19 21,19\" \
-draw \"line 22,20 21,20\" \
-draw \"line 26,19 25,19\" \
-draw \"line 26,20 25,20\" \
-draw \"line 30,19 29,19\" \
-draw \"line 30,20 29,20\" \
pbm:- "
}
function D_Progbar_middle_xp_3 {
postparams="-pointsize 10 \
-draw \"line 10,18 48,18\" \
-draw \"line 49,18 49,21\" \
-draw \"line 10,21 10,18\" \
-draw \"line 49,21 10,21\" \
-draw \"line 14,19 13,19\" \
-draw \"line 14,20 13,20\" \
-draw \"line 18,19 17,19\" \
-draw \"line 18,20 17,20\" \
-draw \"line 22,19 21,19\" \
-draw \"line 22,20 21,20\" \
-draw \"line 26,19 25,19\" \
-draw \"line 26,20 25,20\" \
-draw \"line 30,19 29,19\" \
-draw \"line 30,20 29,20\" \
-draw \"line 34,19 33,19\" \
-draw \"line 34,20 33,20\" \
-draw \"line 38,19 37,19\" \
-draw \"line 38,20 37,20\" \
pbm:- "
}
function D_Progbar_middle_xp_4 {
postparams="-pointsize 10 \
-draw \"line 10,18 48,18\" \
-draw \"line 49,18 49,21\" \
-draw \"line 10,21 10,18\" \
-draw \"line 49,21 10,21\" \
-draw \"line 14,19 13,19\" \
-draw \"line 14,20 13,20\" \
-draw \"line 18,19 17,19\" \
-draw \"line 18,20 17,20\" \
-draw \"line 22,19 21,19\" \
-draw \"line 22,20 21,20\" \
-draw \"line 26,19 25,19\" \
-draw \"line 26,20 25,20\" \
-draw \"line 30,19 29,19\" \
-draw \"line 30,20 29,20\" \
-draw \"line 34,19 33,19\" \
-draw \"line 34,20 33,20\" \
-draw \"line 38,19 37,19\" \
-draw \"line 38,20 37,20\" \
-draw \"line 42,19 41,19\" \
-draw \"line 42,20 41,20\" \
-draw \"line 46,19 45,19\" \
-draw \"line 46,20 45,20\" \
pbm:- "
}

#-# Multimedia Play "|>"
function D_AUDIO_PLAY_1 {
postparams="-pointsize 10 \
-draw \"line 87,24 87,30\" \
-draw \"line 88,25 88,29\" \
-draw \"line 89,26 89,28\" \
-draw \"line 90,27 90,27\" \
pbm:- "
}

#-# Audio Forward ">>"
function D_AUDIO_FORW_1 {
postparams="-pointsize 10 \
-draw \"line 87,24 87,30\" \
-draw \"line 88,25 88,29\" \
-draw \"line 89,26 89,28\" \
-draw \"line 90,27 90,27\" \
-draw \"line 95,24 95,30\" \
-draw \"line 96,25 96,29\" \
-draw \"line 97,26 97,28\" \
-draw \"line 98,27 98,27\" \
pbm:- "
}

#-# Audio Backward "<<"
function D_AUDIO_BACK_1 {
postparams="-pointsize 10 \
-draw \"line 87,24 87,30\" \
-draw \"line 86,25 86,29\" \
-draw \"line 85,26 85,28\" \
-draw \"line 84,27 84,27\" \
-draw \"line 95,24 95,30\" \
-draw \"line 94,25 94,29\" \
-draw \"line 93,26 93,28\" \
-draw \"line 92,27 92,27\" \
pbm:- "
}
#-# Audio Pause "||"
function D_AUDIO_PAUSE_1 {
postparams="-pointsize 10 \
-draw \"line 87,24 87,30\" \
-draw \"line 88,24 88,30\" \
-draw \"line 91,24 91,30\" \
-draw \"line 92,24 92,30\" \
pbm:- "
}
# Audio Stop "o"
function D_AUDIO_STOP_1 {
postparams="-pointsize 10 \
-draw \"line 87,24 87,30\" \
-draw \"line 88,24 88,30\" \
-draw \"line 89,24 89,30\" \
-draw \"line 90,24 90,30\" \
-draw \"line 91,24 91,30\" \
-draw \"line 92,24 92,30\" \
pbm:- "
}

#-# AMD Logo
function D_AMD_LOGO_1 {
postparams="-pointsize 10 \
-draw \"line 105,4 105,18\" \
-draw \"line 106,4 106,18\" \
-draw \"line 107,4 107,18\" \
-draw \"line 108,4 110,4\" \
-draw \"line 108,5 110,5\" \
-draw \"line 108,6 110,6\" \
-draw \"line 112,5 112,7\" \
-draw \"line 111,4 111,6\" \
-draw \"line 113,6 113,17\" \
-draw \"line 114,7 114,16\" \
-draw \"line 115,8 115,15\" \
-draw \"line 111,17 111,19\" \
-draw \"line 112,17 112,18\" \
-draw \"line 112,16 112,17\" \
-draw \"line 105,17 110,17\" \
-draw \"line 105,18 110,18\" \
-draw \"line 105,19 110,19\" \
-draw \"line 100,4 100,19\" \
-draw \"line 101,4 101,19\" \
-draw \"line 99,4 99,19\" \
-draw \"line 98,5 98,7\" \
-draw \"line 97,6 97,8\" \
-draw \"line 96,7 96,9\" \
-draw \"line 95,8 95,10\" \
-draw \"line 94,9 94,11\" \
-draw \"line 93,9 93,11\" \
-draw \"line 92,8 92,10\" \
-draw \"line 91,7 91,9\" \
-draw \"line 90,6 90,8\" \
-draw \"line 89,5 89,7\" \
-draw \"line 88,4 88,19\" \
-draw \"line 87,4 87,19\" \
-draw \"line 86,4 86,19\" \
-draw \"line 82,9 82,19\" \
-draw \"line 81,8 81,19\" \
-draw \"line 80,10 80,19\" \
-draw \"line 72,12 79,12\" \
-draw \"line 72,13 79,13\" \
-draw \"line 72,14 79,14\" \
-draw \"line 73,10 73,19\" \
-draw \"line 72,8 72,19\" \
-draw \"line 71,9 71,19\" \
-draw \"line 76,4 77,4\" \
-draw \"line 76,5 77,5\" \
-draw \"line 76,6 77,6\" \
-draw \"line 78,5 78,7\" \
-draw \"line 79,6 79,8\" \
-draw \"line 80,7 80,9\" \
-draw \"line 75,5 75,7\" \
-draw \"line 74,6 74,8\" \
-draw \"line 73,7 73,9\" \
-draw \"line 120,4 134,4\" \
-draw \"line 121,5 134,5\" \
-draw \"line 122,6 134,6\" \
-draw \"line 123,7 134,7\" \
-draw \"line 124,8 134,8\" \
-draw \"line 134,9 134,18\" \
-draw \"line 133,9 133,17\" \
-draw \"line 132,9 132,16\" \
-draw \"line 131,9 131,15\" \
-draw \"line 130,9 130,14\" \
-draw \"line 123,10 123,15\" \
-draw \"line 124,15 128,15\" \
-draw \"line 122,11 122,16\" \
-draw \"line 123,16 127,16\" \
-draw \"line 121,12 121,17\" \
-draw \"line 122,17 126,17\" \
-draw \"line 120,13 120,18\" \
-draw \"line 121,18 125,18\" \
-draw \"line 119,14 119,19\" \
-draw \"line 120,19 124,19\" \
pbm:- "
}

#-# Small Robot says Hello
function D_robot_0 {
postparams="-pointsize 10 \
-draw \"line 74,7 86,7\" \
-draw \"line 73,8 87,8\" \
-draw \"line 72,9 88,9\" \
-draw \"line 70,10 90,10\" \
-draw \"line 74,11 86,11\" \
-draw \"line 75,12 85,12\" \
-draw \"line 70,13 90,13\" \
-draw \"line 70,10 90,10\" \
-draw \"line 70,10 70,13\" \
-draw \"line 90,10 90,13\" \
-draw \"line 74,14 86,14\" \
-draw \"line 75,15 85,15\" \
-draw \"line 76,16 84,16\" \
-draw \"line 79,17 79,20\" \
-draw \"line 80,17 80,20\" \
-draw \"line 81,17 81,20\" \
-draw \"line 70,21 90,21\" \
-draw \"line 70,22 70,30\" \
-draw \"line 90,22 90,30\" \
-draw \"line 69,30 69,24\" \
-draw \"line 91,30 91,24\" \
pbm:- "
}

function D_robot_1 {
postparams="-pointsize 10 \
-draw \"line 74,7 86,7\" \
-draw \"line 73,8 87,8\" \
-draw \"line 72,9 88,9\" \
-draw \"line 70,10 90,10\" \
-draw \"line 74,11 86,11\" \
-draw \"line 75,12 85,12\" \
-draw \"line 70,13 90,13\" \
-draw \"line 70,10 90,10\" \
-draw \"line 70,10 70,13\" \
-draw \"line 90,10 90,13\" \
-draw \"line 74,14 86,14\" \
-draw \"line 75,15 85,15\" \
-draw \"line 76,16 84,16\" \
-draw \"line 79,17 79,20\" \
-draw \"line 80,17 80,20\" \
-draw \"line 81,17 81,20\" \
-draw \"line 70,21 90,21\" \
-draw \"line 70,22 70,30\" \
-draw \"line 90,22 90,30\" \
-draw \"line 63,24 69,24\" \
-draw \"line 61,26 69,26\" \
-draw \"line 63,23 63,18\" \
-draw \"line 61,25 61,18\" \
-draw \"line 91,30 91,24\" \
-draw \"line 65,16 59,16\" \
-draw \"line 65,17 59,17\" \
-draw \"line 59,15 59,13\" \
-draw \"line 60,15 60,13\" \
-draw \"line 64,15 64,13\" \
-draw \"line 65,15 65,13\" \
-draw \"line 100,13 100,6\" \
-draw \"line 101,13 101,6\" \
-draw \"line 102,9 102,10\" \
-draw \"line 103,9 103,10\" \
-draw \"line 104,13 104,6\" \
-draw \"line 105,13 105,6\" \
-draw \"line 108,13 108,10\" \
-draw \"line 109,13 109,10\" \
-draw \"line 108,6 108,7\" \
-draw \"line 109,6 109,7\" \
-draw \"line 90,16 95,14\" \
pbm:- "
}

#-# AMD X6 1100T and Intel i7 990X Text.
function D_CPUs_1 {
postparams="-pointsize 10 \
-draw \"line 7,6 7,10\" \
-draw \"line 8,6 9,6\" \
-draw \"line 8,8 9,8\" \
-draw \"line 10,6 10,10\" \
-draw \"line 12,6 12,10\" \
-draw \"line 13,7 13,7\" \
-draw \"line 14,8 14,8\"
-draw \"line 15,7 15,7\"
-draw \"line 16,6 16,10\" \
-draw \"line 18,6 18,10\"
-draw \"line 19,6 20,6\"
-draw \"line 21,7 21,9\"
-draw \"line 19,10 20,10\"
-draw \"line 24,6 28,10\"
-draw \"line 24,10 28,6\"
-draw \"line 30,6 32,6\" \
-draw \"line 30,7 30,9\" \
-draw \"line 30,10 32,10\" \
-draw \"line 32,10 32,8\" \
-draw \"line 31,8 31,8\" \
-draw \"line 36,7 36,7\" \
-draw \"line 37,6 37,10\" \
-draw \"line 39,7 39,7\" \
-draw \"line 40,6 40,10\" \
-draw \"line 42,6 44,6\" \
-draw \"line 42,6 42,10\" \
-draw \"line 44,6 44,10\" \
-draw \"line 42,10 44,10\" \
-draw \"line 46,6 48,6\" \
-draw \"line 46,6 46,10\" \
-draw \"line 48,6 48,10\" \
-draw \"line 46,10 48,10\" \
-draw \"line 50,6 52,6\" \
-draw \"line 51,6 51,10\" \
-draw \"line 7,14 7,18\" \
-draw \"line 9,14 9,18\" \
-draw \"line 9,14 13,18\" \
-draw \"line 13,14 13,18\" \
-draw \"line 15,14 17,14\" \
-draw \"line 16,14 16,18\" \
-draw \"line 20,14 21,14\" \
-draw \"line 19,14 19,18\" \
-draw \"line 20,16 21,16\" \
-draw \"line 20,18 21,18\" \
-draw \"line 23,14 23,18\" \
-draw \"line 24,18 25,18\" \
-draw \"line 28,14 28,14\" \
-draw \"line 28,16 28,18\" \
-draw \"line 30,14 32,14\" \
-draw \"line 32,14 32,18\" \
-draw \"line 36,14 38,14\" \
-draw \"line 36,15 36,15\" \
-draw \"line 36,16 38,16\" \
-draw \"line 38,14 38,18\" \
-draw \"line 40,14 42,14\" \
-draw \"line 40,15 40,15\" \
-draw \"line 40,16 42,16\" \
-draw \"line 42,14 42,18\" \
-draw \"line 44,14 44,18\" \
-draw \"line 45,14 45,14\" \
-draw \"line 46,14 46,18\" \
-draw \"line 45,18 45,18\" \
-draw \"line 48,14 52,18\"
-draw \"line 48,18 52,14\"
pbm:- "
}

#-# Shows 4x Clear Menu Buttons
function D_menu_1 {
postparams="-pointsize 10 \
-draw \"line 3,42 35,42\" \
-draw \"line 3,41 3,34\" \
-draw \"line 35,41 35,34\" \
-draw \"line 3,34 35,34\" \
-draw \"line 20,38 22,38\" \
-draw \"line 19,40 19,36\" \
-draw \"line 18,39 18,37\" \
-draw \"line 17,38 17,38\" \
-draw \"line 43,42 75,42\" \
-draw \"line 43,41 43,34\" \
-draw \"line 75,41 75,34\" \
-draw \"line 43,34 75,34\" \
-draw \"line 56,38 58,38\" \
-draw \"line 59,40 59,36\" \
-draw \"line 60,39 60,37\" \
-draw \"line 61,38 61,38\" \
-draw \"line 84,42 116,42\" \
-draw \"line 84,41 84,34\" \
-draw \"line 116,41 116,34\" \
-draw \"line 84,34 116,34\" \
-draw \"line 100,40 100,39\" \
-draw \"line 98,38 102,38\" \
-draw \"line 99,37 101,37\" \
-draw \"line 100,36 100,36\" \
-draw \"line 124,42 156,42\" \
-draw \"line 124,41 124,34\" \
-draw \"line 156,41 156,34\" \
-draw \"line 124,34 156,34\" \
-draw \"line 140,37 140,36\" \
-draw \"line 138,38 142,38\" \
-draw \"line 139,39 141,39\" \
-draw \"line 140,40 140,40\" \
pbm:- "
}

#-# About G13 Software (PC with Printer, Developers: ecraven, Doc. Smimble)
function D_About_G13_0 {
postparams="-pointsize 10 \
-draw \"line 10,12 18,12\" \
-draw \"line 10,13 10,17\" \
-draw \"line 18,13 18,17\" \
-draw \"line 10,18 18,18\" \
-draw \"line 13,19 15,19\" \
-draw \"line 9,20 19,20\" \
-draw \"line 9,21 9,21\" \
-draw \"line 19,21 19,21\" \
-draw \"line 9,22 19,22\" \
-draw \"line 30,39 150,39\" \
-draw \"line 26,30 29,30\" \
-draw \"line 26,31 26,41\" \
-draw \"line 27,31 27,41\" \
-draw \"line 28,31 28,41\" \
-draw \"line 29,31 29,41\" \
-draw \"line 26,42 29,42\" \
-draw \"line 18,35 25,35\" \
-draw \"line 17,23 17,35\" \
-draw \"line 31,37 36,37\" \
-draw \"line 31,38 36,38\" \
-draw \"line 31,40 36,40\" \
pbm:- "
}
function D_About_G13_1 {
postparams="-pointsize 10 \
-draw \"line 10,12 18,12\" \
-draw \"line 10,13 10,17\" \
-draw \"line 18,13 18,17\" \
-draw \"line 10,18 18,18\" \
-draw \"line 13,19 15,19\" \
-draw \"line 9,20 19,20\" \
-draw \"line 9,21 9,21\" \
-draw \"line 19,21 19,21\" \
-draw \"line 9,22 19,22\" \
-draw \"line 30,39 150,39\" \
-draw \"line 26,30 29,30\" \
-draw \"line 26,31 26,41\" \
-draw \"line 27,31 27,41\" \
-draw \"line 28,31 28,41\" \
-draw \"line 29,31 29,41\" \
-draw \"line 26,42 29,42\" \
-draw \"line 18,35 25,35\" \
-draw \"line 17,23 17,35\" \
-draw \"line 31,37 36,37\" \
-draw \"line 31,38 36,38\" \
-draw \"line 31,40 36,40\" \
-draw \"line 12,14 12,14\" \
pbm:- "
}
function D_About_G13_2 {
postparams="-pointsize 10 \
-draw \"line 10,12 18,12\" \
-draw \"line 10,13 10,17\" \
-draw \"line 18,13 18,17\" \
-draw \"line 10,18 18,18\" \
-draw \"line 13,19 15,19\" \
-draw \"line 9,20 19,20\" \
-draw \"line 9,21 9,21\" \
-draw \"line 19,21 19,21\" \
-draw \"line 9,22 19,22\" \
-draw \"line 30,39 150,39\" \
-draw \"line 26,30 29,30\" \
-draw \"line 26,31 26,41\" \
-draw \"line 27,31 27,41\" \
-draw \"line 28,31 28,41\" \
-draw \"line 29,31 29,41\" \
-draw \"line 26,42 29,42\" \
-draw \"line 18,35 25,35\" \
-draw \"line 17,23 17,35\" \
-draw \"line 31,37 36,37\" \
-draw \"line 31,38 36,38\" \
-draw \"line 31,40 36,40\" \
pbm:- "
}
function D_About_G13_3 {
postparams="-pointsize 10 \
-draw \"line 10,12 18,12\" \
-draw \"line 10,13 10,17\" \
-draw \"line 18,13 18,17\" \
-draw \"line 10,18 18,18\" \
-draw \"line 13,19 15,19\" \
-draw \"line 9,20 19,20\" \
-draw \"line 9,21 9,21\" \
-draw \"line 19,21 19,21\" \
-draw \"line 9,22 19,22\" \
-draw \"line 12,14 12,14\" \
-draw \"line 30,39 150,39\" \
-draw \"line 26,30 29,30\" \
-draw \"line 26,31 26,41\" \
-draw \"line 27,31 27,41\" \
-draw \"line 28,31 28,41\" \
-draw \"line 29,31 29,41\" \
-draw \"line 26,42 29,42\" \
-draw \"line 18,35 25,35\" \
-draw \"line 17,23 17,35\" \
-draw \"line 16,26 18,26\" \
-draw \"line 16,27 18,27\" \
-draw \"line 31,37 36,37\" \
-draw \"line 31,38 36,38\" \
-draw \"line 31,40 36,40\" \
pbm:- "
}
function D_About_G13_4 {
postparams="-pointsize 10 \
-draw \"line 10,12 18,12\" \
-draw \"line 10,13 10,17\" \
-draw \"line 18,13 18,17\" \
-draw \"line 10,18 18,18\" \
-draw \"line 13,19 15,19\" \
-draw \"line 9,20 19,20\" \
-draw \"line 9,21 9,21\" \
-draw \"line 19,21 19,21\" \
-draw \"line 9,22 19,22\" \
-draw \"line 30,39 150,39\" \
-draw \"line 26,30 29,30\" \
-draw \"line 26,31 26,41\" \
-draw \"line 27,31 27,41\" \
-draw \"line 28,31 28,41\" \
-draw \"line 29,31 29,41\" \
-draw \"line 26,42 29,42\" \
-draw \"line 18,35 25,35\" \
-draw \"line 17,23 17,35\" \
-draw \"line 16,30 18,30\" \
-draw \"line 16,31 18,31\" \
-draw \"line 31,37 36,37\" \
-draw \"line 31,38 36,38\" \
-draw \"line 31,40 36,40\" \
pbm:- "
}
function D_About_G13_5 {
postparams="-pointsize 10 \
-draw \"line 10,12 18,12\" \
-draw \"line 10,13 10,17\" \
-draw \"line 18,13 18,17\" \
-draw \"line 10,18 18,18\" \
-draw \"line 13,19 15,19\" \
-draw \"line 9,20 19,20\" \
-draw \"line 9,21 9,21\" \
-draw \"line 19,21 19,21\" \
-draw \"line 9,22 19,22\" \
-draw \"line 12,14 12,14\" \
-draw \"line 30,39 150,39\" \
-draw \"line 26,30 29,30\" \
-draw \"line 26,31 26,41\" \
-draw \"line 27,31 27,41\" \
-draw \"line 28,31 28,41\" \
-draw \"line 29,31 29,41\" \
-draw \"line 26,42 29,42\" \
-draw \"line 18,35 25,35\" \
-draw \"line 17,23 17,35\" \
-draw \"line 16,34 18,34\" \
-draw \"line 16,35 18,35\" \
-draw \"line 16,36 18,36\" \
-draw \"line 31,37 36,37\" \
-draw \"line 31,38 36,38\" \
-draw \"line 31,40 36,40\" \
pbm:- "
}
function D_About_G13_6 {
postparams="-pointsize 10 \
-draw \"line 10,12 18,12\" \
-draw \"line 10,13 10,17\" \
-draw \"line 18,13 18,17\" \
-draw \"line 10,18 18,18\" \
-draw \"line 13,19 15,19\" \
-draw \"line 9,20 19,20\" \
-draw \"line 9,21 9,21\" \
-draw \"line 19,21 19,21\" \
-draw \"line 9,22 19,22\" \
-draw \"line 30,39 150,39\" \
-draw \"line 26,30 29,30\" \
-draw \"line 26,31 26,41\" \
-draw \"line 27,31 27,41\" \
-draw \"line 28,31 28,41\" \
-draw \"line 29,31 29,41\" \
-draw \"line 26,42 29,42\" \
-draw \"line 18,35 25,35\" \
-draw \"line 17,23 17,35\" \
-draw \"line 21,34 22,34\" \
-draw \"line 21,36 22,36\" \
-draw \"line 31,37 36,37\" \
-draw \"line 31,38 36,38\" \
-draw \"line 31,40 36,40\" \
pbm:- "
}
function D_About_G13_7 {
postparams="-pointsize 10 \
-draw \"line 10,12 18,12\" \
-draw \"line 10,13 10,17\" \
-draw \"line 18,13 18,17\" \
-draw \"line 10,18 18,18\" \
-draw \"line 13,19 15,19\" \
-draw \"line 9,20 19,20\" \
-draw \"line 9,21 9,21\" \
-draw \"line 19,21 19,21\" \
-draw \"line 9,22 19,22\" \
-draw \"line 12,14 12,14\" \
-draw \"line 30,39 150,39\" \
-draw \"line 26,30 29,30\" \
-draw \"line 26,31 26,41\" \
-draw \"line 27,31 27,41\" \
-draw \"line 28,31 28,41\" \
-draw \"line 29,31 29,41\" \
-draw \"line 26,42 29,42\" \
-draw \"line 18,35 25,35\" \
-draw \"line 17,23 17,35\" \
-draw \"line 31,37 36,37\" \
-draw \"line 31,38 36,38\" \
-draw \"line 31,40 36,40\" \
pbm:- "
}
function D_About_G13_8 {
postparams="-pointsize 10 \
-draw \"line 10,12 18,12\" \
-draw \"line 10,13 10,17\" \
-draw \"line 18,13 18,17\" \
-draw \"line 10,18 18,18\" \
-draw \"line 13,19 15,19\" \
-draw \"line 9,20 19,20\" \
-draw \"line 9,21 9,21\" \
-draw \"line 19,21 19,21\" \
-draw \"line 9,22 19,22\" \
-draw \"line 30,39 150,39\" \
-draw \"line 26,30 29,30\" \
-draw \"line 26,31 26,41\" \
-draw \"line 27,31 27,41\" \
-draw \"line 28,31 28,41\" \
-draw \"line 29,31 29,41\" \
-draw \"line 26,42 29,42\" \
-draw \"line 18,35 25,35\" \
-draw \"line 17,23 17,35\" \
-draw \"line 31,37 36,37\" \
-draw \"line 31,38 36,38\" \
-draw \"line 31,40 36,40\" \
-draw \"line 33,35 140,35\" \
-draw \"line 33,36 33,37\" \
-draw \"line 140,36 140,37\" \
pbm:- "
}
function D_About_G13_9 {
postparams="-pointsize 10 \
-draw \"line 10,12 18,12\" \
-draw \"line 10,13 10,17\" \
-draw \"line 18,13 18,17\" \
-draw \"line 10,18 18,18\" \
-draw \"line 13,19 15,19\" \
-draw \"line 9,20 19,20\" \
-draw \"line 9,21 9,21\" \
-draw \"line 19,21 19,21\" \
-draw \"line 9,22 19,22\" \
-draw \"line 12,14 12,14\" \
-draw \"line 30,39 150,39\" \
-draw \"line 26,30 29,30\" \
-draw \"line 26,31 26,41\" \
-draw \"line 27,31 27,41\" \
-draw \"line 28,31 28,41\" \
-draw \"line 29,31 29,41\" \
-draw \"line 26,42 29,42\" \
-draw \"line 18,35 25,35\" \
-draw \"line 17,23 17,35\" \
-draw \"line 35,37 40,37\" \
-draw \"line 35,38 40,38\" \
-draw \"line 35,40 40,40\" \
-draw \"line 33,35 140,35\" \
-draw \"line 33,36 33,37\" \
-draw \"line 140,36 140,37\" \
pbm:- "
}
function D_About_G13_10 {
postparams="-pointsize 10 \
-draw \"line 10,12 18,12\" \
-draw \"line 10,13 10,17\" \
-draw \"line 18,13 18,17\" \
-draw \"line 10,18 18,18\" \
-draw \"line 13,19 15,19\" \
-draw \"line 9,20 19,20\" \
-draw \"line 9,21 9,21\" \
-draw \"line 19,21 19,21\" \
-draw \"line 9,22 19,22\" \
-draw \"line 30,39 150,39\" \
-draw \"line 26,30 29,30\" \
-draw \"line 26,31 26,41\" \
-draw \"line 27,31 27,41\" \
-draw \"line 28,31 28,41\" \
-draw \"line 29,31 29,41\" \
-draw \"line 26,42 29,42\" \
-draw \"line 18,35 25,35\" \
-draw \"line 17,23 17,35\" \
-draw \"line 45,37 50,37\" \
-draw \"line 45,38 50,38\" \
-draw \"line 45,40 50,40\" \
-draw \"line 33,35 140,35\" \
-draw \"line 33,36 33,37\" \
-draw \"line 140,36 140,37\" \
pbm:- "
}
function D_About_G13_11 {
postparams="-pointsize 10 \
-draw \"line 10,12 18,12\" \
-draw \"line 10,13 10,17\" \
-draw \"line 18,13 18,17\" \
-draw \"line 10,18 18,18\" \
-draw \"line 13,19 15,19\" \
-draw \"line 9,20 19,20\" \
-draw \"line 9,21 9,21\" \
-draw \"line 19,21 19,21\" \
-draw \"line 9,22 19,22\" \
-draw \"line 12,14 12,14\" \
-draw \"line 30,39 150,39\" \
-draw \"line 26,30 29,30\" \
-draw \"line 26,31 26,41\" \
-draw \"line 27,31 27,41\" \
-draw \"line 28,31 28,41\" \
-draw \"line 29,31 29,41\" \
-draw \"line 26,42 29,42\" \
-draw \"line 18,35 25,35\" \
-draw \"line 17,23 17,35\" \
-draw \"line 65,37 70,37\" \
-draw \"line 65,38 70,38\" \
-draw \"line 65,40 70,40\" \
-draw \"line 33,35 140,35\" \
-draw \"line 33,36 33,37\" \
-draw \"line 140,36 140,37\" \
pbm:- "
}
function D_About_G13_12 {
postparams="-pointsize 10 \
-draw \"line 10,12 18,12\" \
-draw \"line 10,13 10,17\" \
-draw \"line 18,13 18,17\" \
-draw \"line 10,18 18,18\" \
-draw \"line 13,19 15,19\" \
-draw \"line 9,20 19,20\" \
-draw \"line 9,21 9,21\" \
-draw \"line 19,21 19,21\" \
-draw \"line 9,22 19,22\" \
-draw \"line 30,39 150,39\" \
-draw \"line 26,30 29,30\" \
-draw \"line 26,31 26,41\" \
-draw \"line 27,31 27,41\" \
-draw \"line 28,31 28,41\" \
-draw \"line 29,31 29,41\" \
-draw \"line 26,42 29,42\" \
-draw \"line 18,35 25,35\" \
-draw \"line 17,23 17,35\" \
-draw \"line 85,37 90,37\" \
-draw \"line 85,38 90,38\" \
-draw \"line 85,40 90,40\" \
-draw \"line 33,35 140,35\" \
-draw \"line 33,36 33,37\" \
-draw \"line 140,36 140,37\" \
pbm:- "
}
function D_About_G13_13 {
postparams="-pointsize 10 \
-draw \"line 10,12 18,12\" \
-draw \"line 10,13 10,17\" \
-draw \"line 18,13 18,17\" \
-draw \"line 10,18 18,18\" \
-draw \"line 13,19 15,19\" \
-draw \"line 9,20 19,20\" \
-draw \"line 9,21 9,21\" \
-draw \"line 19,21 19,21\" \
-draw \"line 9,22 19,22\" \
-draw \"line 12,14 12,14\" \
-draw \"line 30,39 150,39\" \
-draw \"line 26,30 29,30\" \
-draw \"line 26,31 26,41\" \
-draw \"line 27,31 27,41\" \
-draw \"line 28,31 28,41\" \
-draw \"line 29,31 29,41\" \
-draw \"line 26,42 29,42\" \
-draw \"line 18,35 25,35\" \
-draw \"line 17,23 17,35\" \
-draw \"line 105,37 110,37\" \
-draw \"line 105,38 110,38\" \
-draw \"line 105,40 110,40\" \
-draw \"line 33,35 140,35\" \
-draw \"line 33,36 33,37\" \
-draw \"line 140,36 140,37\" \
pbm:- "
}
function D_About_G13_14 {
postparams="-pointsize 10 \
-draw \"line 10,12 18,12\" \
-draw \"line 10,13 10,17\" \
-draw \"line 18,13 18,17\" \
-draw \"line 10,18 18,18\" \
-draw \"line 13,19 15,19\" \
-draw \"line 9,20 19,20\" \
-draw \"line 9,21 9,21\" \
-draw \"line 19,21 19,21\" \
-draw \"line 9,22 19,22\" \
-draw \"line 30,39 150,39\" \
-draw \"line 26,30 29,30\" \
-draw \"line 26,31 26,41\" \
-draw \"line 27,31 27,41\" \
-draw \"line 28,31 28,41\" \
-draw \"line 29,31 29,41\" \
-draw \"line 26,42 29,42\" \
-draw \"line 18,35 25,35\" \
-draw \"line 17,23 17,35\" \
-draw \"line 31,37 36,37\" \
-draw \"line 31,38 36,38\" \
-draw \"line 31,40 36,40\" \
-draw \"line 33,35 140,35\" \
-draw \"line 33,36 33,37\" \
-draw \"line 140,36 140,37\" \
pbm:- "
}
function D_About_G13_15 {
postparams="-pointsize 10 \
-draw \"line 10,12 18,12\" \
-draw \"line 10,13 10,17\" \
-draw \"line 18,13 18,17\" \
-draw \"line 10,18 18,18\" \
-draw \"line 13,19 15,19\" \
-draw \"line 9,20 19,20\" \
-draw \"line 9,21 9,21\" \
-draw \"line 19,21 19,21\" \
-draw \"line 9,22 19,22\" \
-draw \"line 12,14 12,14\" \
-draw \"line 30,39 150,39\" \
-draw \"line 26,30 29,30\" \
-draw \"line 26,31 26,41\" \
-draw \"line 27,31 27,41\" \
-draw \"line 28,31 28,41\" \
-draw \"line 29,31 29,41\" \
-draw \"line 26,42 29,42\" \
-draw \"line 18,35 25,35\" \
-draw \"line 17,23 17,35\" \
-draw \"line 31,37 36,37\" \
-draw \"line 31,38 36,38\" \
-draw \"line 31,40 36,40\" \
-draw \"line 33,29 140,29\" \
-draw \"line 33,30 33,37\" \
-draw \"line 140,30 140,37\" \
-draw \"line 37,32 38,32\" \
-draw \"line 37,32 37,36\" \
-draw \"line 39,33 39,35\" \
-draw \"line 37,36 38,36\" \
-draw \"line 41,32 43,32\" \
-draw \"line 41,32 41,35\" \
-draw \"line 41,34 42,34\" \
-draw \"line 41,36 43,36\" \
-draw \"line 45,32 45,35\" \
-draw \"line 46,36 46,36\" \
-draw \"line 47,32 47,35\" \
-draw \"line 49,32 51,32\" \
-draw \"line 49,32 49,36\" \
-draw \"line 49,34 50,34\" \
-draw \"line 49,36 51,36\" \
-draw \"line 53,32 53,35\" \
-draw \"line 53,36 55,36\" \
-draw \"line 57,32 59,32\" \
-draw \"line 57,33 57,35\" \
-draw \"line 59,33 59,35\" \
-draw \"line 57,36 59,36\" \
-draw \"line 61,32 61,36\" \
-draw \"line 62,32 63,32\" \
-draw \"line 63,33 63,33\" \
-draw \"line 62,34 63,34\" \
-draw \"line 65,32 67,32\" \
-draw \"line 65,33 65,35\" \
-draw \"line 65,34 66,34\" \
-draw \"line 65,36 67,36\" \
-draw \"line 69,32 69,36\" \
-draw \"line 70,32 71,32\" \
-draw \"line 71,33 71,33\" \
-draw \"line 70,34 71,34\" \
-draw \"line 70,35 70,35\" \
-draw \"line 71,36 71,36\" \
-draw \"line 73,32 75,32\" \
-draw \"line 73,32 73,34\" \
-draw \"line 75,34 75,36\" \
-draw \"line 73,36 74,36\" \
-draw \"line 74,34 74,34\" \
-draw \"line 77,33 77,33\" \
-draw \"line 77,35 77,35\" \
-draw \"line 84,33 84,33\" \
-draw \"line 83,34 85,34\" \
-draw \"line 83,35 84,36\" \
-draw \"line 87,34 89,34\" \
-draw \"line 87,35 87,35\" \
-draw \"line 87,36 89,36\" \
-draw \"line 91,34 91,36\" \
-draw \"line 92,34 92,34\" \
-draw \"line 94,34 96,34\" \
-draw \"line 94,35 94,35\" \
-draw \"line 96,35 96,35\" \
-draw \"line 94,36 97,36\" \
-draw \"line 99,34 99,35\" \
-draw \"line 100,36 100,36\" \
-draw \"line 101,34 101,35\" \
-draw \"line 104,33 104,33\" \
-draw \"line 103,34 105,34\" \
-draw \"line 103,35 104,36\" \
-draw \"line 107,34 109,34\" \
-draw \"line 107,35 107,36\" \
-draw \"line 109,35 109,36\" \
-draw \"line 111,36 111,37\" \
pbm:- "
}
function D_About_G13_16 {
postparams="-pointsize 10 \
-draw \"line 10,12 18,12\" \
-draw \"line 10,13 10,17\" \
-draw \"line 18,13 18,17\" \
-draw \"line 10,18 18,18\" \
-draw \"line 13,19 15,19\" \
-draw \"line 9,20 19,20\" \
-draw \"line 9,21 9,21\" \
-draw \"line 19,21 19,21\" \
-draw \"line 9,22 19,22\" \
-draw \"line 30,39 150,39\" \
-draw \"line 26,30 29,30\" \
-draw \"line 26,31 26,41\" \
-draw \"line 27,31 27,41\" \
-draw \"line 28,31 28,41\" \
-draw \"line 29,31 29,41\" \
-draw \"line 26,42 29,42\" \
-draw \"line 18,35 25,35\" \
-draw \"line 17,23 17,35\" \
-draw \"line 35,37 40,37\" \
-draw \"line 35,38 40,38\" \
-draw \"line 35,40 40,40\" \
-draw \"line 33,29 140,29\" \
-draw \"line 33,30 33,37\" \
-draw \"line 140,30 140,37\" \
-draw \"line 37,32 38,32\" \
-draw \"line 37,32 37,36\" \
-draw \"line 39,33 39,35\" \
-draw \"line 37,36 38,36\" \
-draw \"line 41,32 43,32\" \
-draw \"line 41,32 41,35\" \
-draw \"line 41,34 42,34\" \
-draw \"line 41,36 43,36\" \
-draw \"line 45,32 45,35\" \
-draw \"line 46,36 46,36\" \
-draw \"line 47,32 47,35\" \
-draw \"line 49,32 51,32\" \
-draw \"line 49,32 49,36\" \
-draw \"line 49,34 50,34\" \
-draw \"line 49,36 51,36\" \
-draw \"line 53,32 53,35\" \
-draw \"line 53,36 55,36\" \
-draw \"line 57,32 59,32\" \
-draw \"line 57,33 57,35\" \
-draw \"line 59,33 59,35\" \
-draw \"line 57,36 59,36\" \
-draw \"line 61,32 61,36\" \
-draw \"line 62,32 63,32\" \
-draw \"line 63,33 63,33\" \
-draw \"line 62,34 63,34\" \
-draw \"line 65,32 67,32\" \
-draw \"line 65,33 65,35\" \
-draw \"line 65,34 66,34\" \
-draw \"line 65,36 67,36\" \
-draw \"line 69,32 69,36\" \
-draw \"line 70,32 71,32\" \
-draw \"line 71,33 71,33\" \
-draw \"line 70,34 71,34\" \
-draw \"line 70,35 70,35\" \
-draw \"line 71,36 71,36\" \
-draw \"line 73,32 75,32\" \
-draw \"line 73,32 73,34\" \
-draw \"line 75,34 75,36\" \
-draw \"line 73,36 74,36\" \
-draw \"line 74,34 74,34\" \
-draw \"line 77,33 77,33\" \
-draw \"line 77,35 77,35\" \
-draw \"line 84,33 84,33\" \
-draw \"line 83,34 85,34\" \
-draw \"line 83,35 84,36\" \
-draw \"line 87,34 89,34\" \
-draw \"line 87,35 87,35\" \
-draw \"line 87,36 89,36\" \
-draw \"line 91,34 91,36\" \
-draw \"line 92,34 92,34\" \
-draw \"line 94,34 96,34\" \
-draw \"line 94,35 94,35\" \
-draw \"line 96,35 96,35\" \
-draw \"line 94,36 97,36\" \
-draw \"line 99,34 99,35\" \
-draw \"line 100,36 100,36\" \
-draw \"line 101,34 101,35\" \
-draw \"line 104,33 104,33\" \
-draw \"line 103,34 105,34\" \
-draw \"line 103,35 104,36\" \
-draw \"line 107,34 109,34\" \
-draw \"line 107,35 107,36\" \
-draw \"line 109,35 109,36\" \
-draw \"line 111,36 111,37\" \
pbm:- "
}
function D_About_G13_17 {
postparams="-pointsize 10 \
-draw \"line 10,12 18,12\" \
-draw \"line 10,13 10,17\" \
-draw \"line 18,13 18,17\" \
-draw \"line 10,18 18,18\" \
-draw \"line 13,19 15,19\" \
-draw \"line 9,20 19,20\" \
-draw \"line 9,21 9,21\" \
-draw \"line 19,21 19,21\" \
-draw \"line 9,22 19,22\" \
-draw \"line 12,14 12,14\" \
-draw \"line 30,39 150,39\" \
-draw \"line 26,30 29,30\" \
-draw \"line 26,31 26,41\" \
-draw \"line 27,31 27,41\" \
-draw \"line 28,31 28,41\" \
-draw \"line 29,31 29,41\" \
-draw \"line 26,42 29,42\" \
-draw \"line 18,35 25,35\" \
-draw \"line 17,23 17,35\" \
-draw \"line 45,37 50,37\" \
-draw \"line 45,38 50,38\" \
-draw \"line 45,40 50,40\" \
-draw \"line 33,29 140,29\" \
-draw \"line 33,30 33,37\" \
-draw \"line 140,30 140,37\" \
-draw \"line 37,32 38,32\" \
-draw \"line 37,32 37,36\" \
-draw \"line 39,33 39,35\" \
-draw \"line 37,36 38,36\" \
-draw \"line 41,32 43,32\" \
-draw \"line 41,32 41,35\" \
-draw \"line 41,34 42,34\" \
-draw \"line 41,36 43,36\" \
-draw \"line 45,32 45,35\" \
-draw \"line 46,36 46,36\" \
-draw \"line 47,32 47,35\" \
-draw \"line 49,32 51,32\" \
-draw \"line 49,32 49,36\" \
-draw \"line 49,34 50,34\" \
-draw \"line 49,36 51,36\" \
-draw \"line 53,32 53,35\" \
-draw \"line 53,36 55,36\" \
-draw \"line 57,32 59,32\" \
-draw \"line 57,33 57,35\" \
-draw \"line 59,33 59,35\" \
-draw \"line 57,36 59,36\" \
-draw \"line 61,32 61,36\" \
-draw \"line 62,32 63,32\" \
-draw \"line 63,33 63,33\" \
-draw \"line 62,34 63,34\" \
-draw \"line 65,32 67,32\" \
-draw \"line 65,33 65,35\" \
-draw \"line 65,34 66,34\" \
-draw \"line 65,36 67,36\" \
-draw \"line 69,32 69,36\" \
-draw \"line 70,32 71,32\" \
-draw \"line 71,33 71,33\" \
-draw \"line 70,34 71,34\" \
-draw \"line 70,35 70,35\" \
-draw \"line 71,36 71,36\" \
-draw \"line 73,32 75,32\" \
-draw \"line 73,32 73,34\" \
-draw \"line 75,34 75,36\" \
-draw \"line 73,36 74,36\" \
-draw \"line 74,34 74,34\" \
-draw \"line 77,33 77,33\" \
-draw \"line 77,35 77,35\" \
-draw \"line 84,33 84,33\" \
-draw \"line 83,34 85,34\" \
-draw \"line 83,35 84,36\" \
-draw \"line 87,34 89,34\" \
-draw \"line 87,35 87,35\" \
-draw \"line 87,36 89,36\" \
-draw \"line 91,34 91,36\" \
-draw \"line 92,34 92,34\" \
-draw \"line 94,34 96,34\" \
-draw \"line 94,35 94,35\" \
-draw \"line 96,35 96,35\" \
-draw \"line 94,36 97,36\" \
-draw \"line 99,34 99,35\" \
-draw \"line 100,36 100,36\" \
-draw \"line 101,34 101,35\" \
-draw \"line 104,33 104,33\" \
-draw \"line 103,34 105,34\" \
-draw \"line 103,35 104,36\" \
-draw \"line 107,34 109,34\" \
-draw \"line 107,35 107,36\" \
-draw \"line 109,35 109,36\" \
-draw \"line 111,36 111,37\" \
pbm:- "
}
function D_About_G13_18 {
postparams="-pointsize 10 \
-draw \"line 10,12 18,12\" \
-draw \"line 10,13 10,17\" \
-draw \"line 18,13 18,17\" \
-draw \"line 10,18 18,18\" \
-draw \"line 13,19 15,19\" \
-draw \"line 9,20 19,20\" \
-draw \"line 9,21 9,21\" \
-draw \"line 19,21 19,21\" \
-draw \"line 9,22 19,22\" \
-draw \"line 30,39 150,39\" \
-draw \"line 26,30 29,30\" \
-draw \"line 26,31 26,41\" \
-draw \"line 27,31 27,41\" \
-draw \"line 28,31 28,41\" \
-draw \"line 29,31 29,41\" \
-draw \"line 26,42 29,42\" \
-draw \"line 18,35 25,35\" \
-draw \"line 17,23 17,35\" \
-draw \"line 65,37 70,37\" \
-draw \"line 65,38 70,38\" \
-draw \"line 65,40 70,40\" \
-draw \"line 33,29 140,29\" \
-draw \"line 33,30 33,37\" \
-draw \"line 140,30 140,37\" \
-draw \"line 37,32 38,32\" \
-draw \"line 37,32 37,36\" \
-draw \"line 39,33 39,35\" \
-draw \"line 37,36 38,36\" \
-draw \"line 41,32 43,32\" \
-draw \"line 41,32 41,35\" \
-draw \"line 41,34 42,34\" \
-draw \"line 41,36 43,36\" \
-draw \"line 45,32 45,35\" \
-draw \"line 46,36 46,36\" \
-draw \"line 47,32 47,35\" \
-draw \"line 49,32 51,32\" \
-draw \"line 49,32 49,36\" \
-draw \"line 49,34 50,34\" \
-draw \"line 49,36 51,36\" \
-draw \"line 53,32 53,35\" \
-draw \"line 53,36 55,36\" \
-draw \"line 57,32 59,32\" \
-draw \"line 57,33 57,35\" \
-draw \"line 59,33 59,35\" \
-draw \"line 57,36 59,36\" \
-draw \"line 61,32 61,36\" \
-draw \"line 62,32 63,32\" \
-draw \"line 63,33 63,33\" \
-draw \"line 62,34 63,34\" \
-draw \"line 65,32 67,32\" \
-draw \"line 65,33 65,35\" \
-draw \"line 65,34 66,34\" \
-draw \"line 65,36 67,36\" \
-draw \"line 69,32 69,36\" \
-draw \"line 70,32 71,32\" \
-draw \"line 71,33 71,33\" \
-draw \"line 70,34 71,34\" \
-draw \"line 70,35 70,35\" \
-draw \"line 71,36 71,36\" \
-draw \"line 73,32 75,32\" \
-draw \"line 73,32 73,34\" \
-draw \"line 75,34 75,36\" \
-draw \"line 73,36 74,36\" \
-draw \"line 74,34 74,34\" \
-draw \"line 77,33 77,33\" \
-draw \"line 77,35 77,35\" \
-draw \"line 84,33 84,33\" \
-draw \"line 83,34 85,34\" \
-draw \"line 83,35 84,36\" \
-draw \"line 87,34 89,34\" \
-draw \"line 87,35 87,35\" \
-draw \"line 87,36 89,36\" \
-draw \"line 91,34 91,36\" \
-draw \"line 92,34 92,34\" \
-draw \"line 94,34 96,34\" \
-draw \"line 94,35 94,35\" \
-draw \"line 96,35 96,35\" \
-draw \"line 94,36 97,36\" \
-draw \"line 99,34 99,35\" \
-draw \"line 100,36 100,36\" \
-draw \"line 101,34 101,35\" \
-draw \"line 104,33 104,33\" \
-draw \"line 103,34 105,34\" \
-draw \"line 103,35 104,36\" \
-draw \"line 107,34 109,34\" \
-draw \"line 107,35 107,36\" \
-draw \"line 109,35 109,36\" \
-draw \"line 111,36 111,37\" \
pbm:- "
}
function D_About_G13_19 {
postparams="-pointsize 10 \
-draw \"line 10,12 18,12\" \
-draw \"line 10,13 10,17\" \
-draw \"line 18,13 18,17\" \
-draw \"line 10,18 18,18\" \
-draw \"line 13,19 15,19\" \
-draw \"line 9,20 19,20\" \
-draw \"line 9,21 9,21\" \
-draw \"line 19,21 19,21\" \
-draw \"line 9,22 19,22\" \
-draw \"line 12,14 12,14\" \
-draw \"line 30,39 150,39\" \
-draw \"line 26,30 29,30\" \
-draw \"line 26,31 26,41\" \
-draw \"line 27,31 27,41\" \
-draw \"line 28,31 28,41\" \
-draw \"line 29,31 29,41\" \
-draw \"line 26,42 29,42\" \
-draw \"line 18,35 25,35\" \
-draw \"line 17,23 17,35\" \
-draw \"line 85,37 90,37\" \
-draw \"line 85,38 90,38\" \
-draw \"line 85,40 90,40\" \
-draw \"line 33,29 140,29\" \
-draw \"line 33,30 33,37\" \
-draw \"line 140,30 140,37\" \
-draw \"line 37,32 38,32\" \
-draw \"line 37,32 37,36\" \
-draw \"line 39,33 39,35\" \
-draw \"line 37,36 38,36\" \
-draw \"line 41,32 43,32\" \
-draw \"line 41,32 41,35\" \
-draw \"line 41,34 42,34\" \
-draw \"line 41,36 43,36\" \
-draw \"line 45,32 45,35\" \
-draw \"line 46,36 46,36\" \
-draw \"line 47,32 47,35\" \
-draw \"line 49,32 51,32\" \
-draw \"line 49,32 49,36\" \
-draw \"line 49,34 50,34\" \
-draw \"line 49,36 51,36\" \
-draw \"line 53,32 53,35\" \
-draw \"line 53,36 55,36\" \
-draw \"line 57,32 59,32\" \
-draw \"line 57,33 57,35\" \
-draw \"line 59,33 59,35\" \
-draw \"line 57,36 59,36\" \
-draw \"line 61,32 61,36\" \
-draw \"line 62,32 63,32\" \
-draw \"line 63,33 63,33\" \
-draw \"line 62,34 63,34\" \
-draw \"line 65,32 67,32\" \
-draw \"line 65,33 65,35\" \
-draw \"line 65,34 66,34\" \
-draw \"line 65,36 67,36\" \
-draw \"line 69,32 69,36\" \
-draw \"line 70,32 71,32\" \
-draw \"line 71,33 71,33\" \
-draw \"line 70,34 71,34\" \
-draw \"line 70,35 70,35\" \
-draw \"line 71,36 71,36\" \
-draw \"line 73,32 75,32\" \
-draw \"line 73,32 73,34\" \
-draw \"line 75,34 75,36\" \
-draw \"line 73,36 74,36\" \
-draw \"line 74,34 74,34\" \
-draw \"line 77,33 77,33\" \
-draw \"line 77,35 77,35\" \
-draw \"line 84,33 84,33\" \
-draw \"line 83,34 85,34\" \
-draw \"line 83,35 84,36\" \
-draw \"line 87,34 89,34\" \
-draw \"line 87,35 87,35\" \
-draw \"line 87,36 89,36\" \
-draw \"line 91,34 91,36\" \
-draw \"line 92,34 92,34\" \
-draw \"line 94,34 96,34\" \
-draw \"line 94,35 94,35\" \
-draw \"line 96,35 96,35\" \
-draw \"line 94,36 97,36\" \
-draw \"line 99,34 99,35\" \
-draw \"line 100,36 100,36\" \
-draw \"line 101,34 101,35\" \
-draw \"line 104,33 104,33\" \
-draw \"line 103,34 105,34\" \
-draw \"line 103,35 104,36\" \
-draw \"line 107,34 109,34\" \
-draw \"line 107,35 107,36\" \
-draw \"line 109,35 109,36\" \
-draw \"line 111,36 111,37\" \
pbm:- "
}
function D_About_G13_20 {
postparams="-pointsize 10 \
-draw \"line 10,12 18,12\" \
-draw \"line 10,13 10,17\" \
-draw \"line 18,13 18,17\" \
-draw \"line 10,18 18,18\" \
-draw \"line 13,19 15,19\" \
-draw \"line 9,20 19,20\" \
-draw \"line 9,21 9,21\" \
-draw \"line 19,21 19,21\" \
-draw \"line 9,22 19,22\" \
-draw \"line 30,39 150,39\" \
-draw \"line 26,30 29,30\" \
-draw \"line 26,31 26,41\" \
-draw \"line 27,31 27,41\" \
-draw \"line 28,31 28,41\" \
-draw \"line 29,31 29,41\" \
-draw \"line 26,42 29,42\" \
-draw \"line 18,35 25,35\" \
-draw \"line 17,23 17,35\" \
-draw \"line 31,37 36,37\" \
-draw \"line 31,38 36,38\" \
-draw \"line 31,40 36,40\" \
-draw \"line 33,29 140,29\" \
-draw \"line 33,30 33,37\" \
-draw \"line 140,30 140,37\" \
-draw \"line 37,32 38,32\" \
-draw \"line 37,32 37,36\" \
-draw \"line 39,33 39,35\" \
-draw \"line 37,36 38,36\" \
-draw \"line 41,32 43,32\" \
-draw \"line 41,32 41,35\" \
-draw \"line 41,34 42,34\" \
-draw \"line 41,36 43,36\" \
-draw \"line 45,32 45,35\" \
-draw \"line 46,36 46,36\" \
-draw \"line 47,32 47,35\" \
-draw \"line 49,32 51,32\" \
-draw \"line 49,32 49,36\" \
-draw \"line 49,34 50,34\" \
-draw \"line 49,36 51,36\" \
-draw \"line 53,32 53,35\" \
-draw \"line 53,36 55,36\" \
-draw \"line 57,32 59,32\" \
-draw \"line 57,33 57,35\" \
-draw \"line 59,33 59,35\" \
-draw \"line 57,36 59,36\" \
-draw \"line 61,32 61,36\" \
-draw \"line 62,32 63,32\" \
-draw \"line 63,33 63,33\" \
-draw \"line 62,34 63,34\" \
-draw \"line 65,32 67,32\" \
-draw \"line 65,33 65,35\" \
-draw \"line 65,34 66,34\" \
-draw \"line 65,36 67,36\" \
-draw \"line 69,32 69,36\" \
-draw \"line 70,32 71,32\" \
-draw \"line 71,33 71,33\" \
-draw \"line 70,34 71,34\" \
-draw \"line 70,35 70,35\" \
-draw \"line 71,36 71,36\" \
-draw \"line 73,32 75,32\" \
-draw \"line 73,32 73,34\" \
-draw \"line 75,34 75,36\" \
-draw \"line 73,36 74,36\" \
-draw \"line 74,34 74,34\" \
-draw \"line 77,33 77,33\" \
-draw \"line 77,35 77,35\" \
-draw \"line 84,33 84,33\" \
-draw \"line 83,34 85,34\" \
-draw \"line 83,35 84,36\" \
-draw \"line 87,34 89,34\" \
-draw \"line 87,35 87,35\" \
-draw \"line 87,36 89,36\" \
-draw \"line 91,34 91,36\" \
-draw \"line 92,34 92,34\" \
-draw \"line 94,34 96,34\" \
-draw \"line 94,35 94,35\" \
-draw \"line 96,35 96,35\" \
-draw \"line 94,36 97,36\" \
-draw \"line 99,34 99,35\" \
-draw \"line 100,36 100,36\" \
-draw \"line 101,34 101,35\" \
-draw \"line 104,33 104,33\" \
-draw \"line 103,34 105,34\" \
-draw \"line 103,35 104,36\" \
-draw \"line 107,34 109,34\" \
-draw \"line 107,35 107,36\" \
-draw \"line 109,35 109,36\" \
-draw \"line 111,36 111,37\" \
pbm:- "
}
function D_About_G13_21 {
postparams="-pointsize 10 \
-draw \"line 10,12 18,12\" \
-draw \"line 10,13 10,17\" \
-draw \"line 18,13 18,17\" \
-draw \"line 10,18 18,18\" \
-draw \"line 13,19 15,19\" \
-draw \"line 9,20 19,20\" \
-draw \"line 9,21 9,21\" \
-draw \"line 19,21 19,21\" \
-draw \"line 9,22 19,22\" \
-draw \"line 12,14 12,14\" \
-draw \"line 30,39 150,39\" \
-draw \"line 26,30 29,30\" \
-draw \"line 26,31 26,41\" \
-draw \"line 27,31 27,41\" \
-draw \"line 28,31 28,41\" \
-draw \"line 29,31 29,41\" \
-draw \"line 26,42 29,42\" \
-draw \"line 18,35 25,35\" \
-draw \"line 17,23 17,35\" \
-draw \"line 31,37 36,37\" \
-draw \"line 31,38 36,38\" \
-draw \"line 31,40 36,40\" \
-draw \"line 33,21 140,21\" \
-draw \"line 33,22 33,37\" \
-draw \"line 140,22 140,37\" \
-draw \"line 37,24 38,24\" \
-draw \"line 37,24 37,28\" \
-draw \"line 39,25 39,27\" \
-draw \"line 37,28 38,28\" \
-draw \"line 41,24 43,24\" \
-draw \"line 41,24 41,28\" \
-draw \"line 41,26 42,26\" \
-draw \"line 41,28 43,28\" \
-draw \"line 45,24 45,27\" \
-draw \"line 46,28 46,28\" \
-draw \"line 47,24 47,27\" \
-draw \"line 49,24 51,24\" \
-draw \"line 49,24 49,28\" \
-draw \"line 49,26 50,26\" \
-draw \"line 49,28 51,28\" \
-draw \"line 53,24 53,27\" \
-draw \"line 53,28 55,28\" \
-draw \"line 57,24 59,24\" \
-draw \"line 57,25 57,27\" \
-draw \"line 59,25 59,27\" \
-draw \"line 57,28 59,28\" \
-draw \"line 61,24 61,28\" \
-draw \"line 62,24 63,24\" \
-draw \"line 63,25 63,25\" \
-draw \"line 62,26 63,26\" \
-draw \"line 65,24 67,24\" \
-draw \"line 65,25 65,27\" \
-draw \"line 65,26 66,26\" \
-draw \"line 65,28 67,28\" \
-draw \"line 69,24 69,28\" \
-draw \"line 70,24 71,24\" \
-draw \"line 71,25 71,25\" \
-draw \"line 70,26 71,26\" \
-draw \"line 70,27 70,27\" \
-draw \"line 71,28 71,28\" \
-draw \"line 73,24 75,24\" \
-draw \"line 73,24 73,26\" \
-draw \"line 75,26 75,28\" \
-draw \"line 73,28 74,28\" \
-draw \"line 74,26 74,26\" \
-draw \"line 77,25 77,25\" \
-draw \"line 77,27 77,27\" \
-draw \"line 84,25 84,25\" \
-draw \"line 83,26 85,26\" \
-draw \"line 83,27 84,28\" \
-draw \"line 87,26 89,26\" \
-draw \"line 87,27 87,27\" \
-draw \"line 87,28 89,28\" \
-draw \"line 91,26 91,28\" \
-draw \"line 92,26 92,26\" \
-draw \"line 94,26 96,26\" \
-draw \"line 94,27 94,27\" \
-draw \"line 96,27 96,27\" \
-draw \"line 94,28 97,28\" \
-draw \"line 99,26 99,27\" \
-draw \"line 100,28 100,28\" \
-draw \"line 101,26 101,27\" \
-draw \"line 104,25 104,25\" \
-draw \"line 103,26 105,26\" \
-draw \"line 103,27 104,28\" \
-draw \"line 107,26 109,26\" \
-draw \"line 107,27 107,28\" \
-draw \"line 109,27 109,28\" \
-draw \"line 111,28 111,29\" \
-draw \"line 37,31 37,35\" \
-draw \"line 38,31 38,31\" \
-draw \"line 38,35 38,35\" \
-draw \"line 39,32 39,34\" \
-draw \"line 41,33 43,33\" \
-draw \"line 41,34 41,34\" \
-draw \"line 43,34 43,34\" \
-draw \"line 41,35 43,35\" \
-draw \"line 45,33 45,35\" \
-draw \"line 46,33 47,33\" \
-draw \"line 46,35 47,35\" \
-draw \"line 49,35 49,35\" \
-draw \"line 53,31 55,31\" \
-draw \"line 53,31 53,33\" \
-draw \"line 55,33 55,35\" \
-draw \"line 53,35 54,35\" \
-draw \"line 54,33 54,33\" \
-draw \"line 57,33 61,33\" \
-draw \"line 57,34 57,35\" \
-draw \"line 59,34 59,35\" \
-draw \"line 61,34 61,35\" \
-draw \"line 63,31 63,31\" \
-draw \"line 63,33 63,35\" \
-draw \"line 65,33 69,33\" \
-draw \"line 65,34 65,35\" \
-draw \"line 67,34 67,35\" \
-draw \"line 69,34 69,35\" \
-draw \"line 71,31 71,35\" \
-draw \"line 72,33 73,33\" \
-draw \"line 73,34 73,34\" \
-draw \"line 72,35 73,35\" \
-draw \"line 75,31 75,35\" \
-draw \"line 76,35 76,35\" \
-draw \"line 79,32 79,32\" \
-draw \"line 78,33 80,33\" \
-draw \"line 78,34 79,35\" \
pbm:- "
}

#-# Clear the LCD Screen.
function D_clear_1 {
postparams="-pointsize 10 \
pbm:- "
}
#-# Start End Secvense
function D_boot_0 {
postparams="-pointsize 10 \
-draw \"line 80,21 80,21\" \
pbm:- "
}
function D_boot_1 {
postparams="-pointsize 10 \
-draw \"line 75,21 85,21\" \
pbm:- "
}
function D_boot_2 {
postparams="-pointsize 10 \
-draw \"line 70,21 90,21\" \
pbm:- "
}
function D_boot_3 {
postparams="-pointsize 10 \
-draw \"line 60,21 100,21\" \
pbm:- "
}
function D_boot_4 {
postparams="-pointsize 10 \
-draw \"line 40,21 120,21\" \
pbm:- "
}
function D_boot_5 {
postparams="-pointsize 10 \
-draw \"line 38,19 122,19\" \
-draw \"line 38,23 122,23\" \
-draw \"line 38,19 38,22\" \
-draw \"line 122,19 122,22\" \
pbm:- "
}
function D_boot_6 {
postparams="-pointsize 10 \
-draw \"line 34,15 126,15\" \
-draw \"line 34,27 126,27\" \
-draw \"line 34,16 34,26\" \
-draw \"line 126,16 126,26\" \
pbm:- "
}
function D_boot_7 {
postparams="-pointsize 10 \
-draw \"line 24,11 136,11\" \
-draw \"line 24,31 136,31\" \
-draw \"line 24,12 24,30\" \
-draw \"line 136,12 136,30\" \
pbm:- "
}
function D_boot_8 {
postparams="-pointsize 10 \
-draw \"line 14,7 146,7\" \
-draw \"line 14,35 146,35\" \
-draw \"line 14,8 14,35\" \
-draw \"line 146,8 146,35\" \
pbm:- "
}
function D_boot_9 {
postparams="-pointsize 10 \
-draw \"line 0,1 159,1\" \
-draw \"line 0,42 159,42\" \
-draw \"line 0,1 0,42\" \
-draw \"line 159,1 159,42\" \
pbm:- "
}

function D_write_1 {
eval convert $preparams $postparams | ./pbm2lpbm > /tmp/g13-0
}


preparams="-size 160x43 xc:white"


echo "rgb 0 200 0" > /tmp/g13-0
D_clear_1
D_write_1
sleep 1
D_boot_0
D_write_1
sleep 1
D_boot_1
D_write_1
sleep 1
D_boot_2
D_write_1
sleep 1
D_boot_3
D_write_1
sleep 1
D_boot_4
D_write_1
sleep 1
D_boot_5
D_write_1
sleep 1
D_boot_6
D_write_1
sleep 1
D_boot_7
D_write_1
sleep 1
D_boot_8
D_write_1
sleep 1
D_boot_9
D_write_1
sleep 1
D_clear_1
D_write_1
sleep 2
D_robot_0
D_write_1
sleep 3
D_robot_1
D_write_1
sleep 5
D_menu_1
D_write_1
sleep 5
D_AMD_LOGO_1
D_write_1
sleep 2
D_Progbar_small_0
D_write_1
sleep 1
D_Progbar_small_1
D_write_1
sleep 1
D_Progbar_small_2
D_write_1
sleep 1
D_Progbar_small_3
D_write_1
sleep 1
D_Progbar_small_4
D_write_1
sleep 3
D_Progbar_middle_0
D_write_1
sleep 1
D_Progbar_middle_1
D_write_1
sleep 1
D_Progbar_middle_2
D_write_1
sleep 1
D_Progbar_middle_3
D_write_1
sleep 1
D_Progbar_middle_4
D_write_1
sleep 3
D_Progbar_middle_xp_0
D_write_1
sleep 1
D_Progbar_middle_xp_1
D_write_1
sleep 1
D_Progbar_middle_xp_2
D_write_1
sleep 1
D_Progbar_middle_xp_3
D_write_1
sleep 1
D_Progbar_middle_xp_4
D_write_1
sleep 3
D_v1Tempbar_0
D_write_1
sleep 1
D_v1Tempbar_1
D_write_1
sleep 1
D_v1Tempbar_2
D_write_1
sleep 1
D_v1Tempbar_3
D_write_1
sleep 1
D_v1Tempbar_4
D_write_1
sleep 5
D_vGauge_0
D_write_1
sleep 1
D_vGauge_1
D_write_1
sleep 1
D_vGauge_2
D_write_1
sleep 5
D_vTempbar_0
D_write_1
sleep 1
D_vTempbar_1
D_write_1
sleep 1
D_vTempbar_2
D_write_1
sleep 1
D_vTempbar_3
D_write_1
sleep 1
D_vTempbar_4
D_write_1
sleep 5
D_CPUs_1
D_write_1
sleep 5
D_Small_Numbers_0
D_write_1
sleep 5
D_AUDIO_PLAY_1
D_write_1
sleep 1
D_AUDIO_PAUSE_1
D_write_1
sleep 1
D_AUDIO_STOP_1
D_write_1
sleep 1
D_AUDIO_FORW_1
D_write_1
sleep 1
D_AUDIO_BACK_1
D_write_1
sleep 1
D_Arrow_left
D_write_1
sleep 1
D_Arrow_right
D_write_1
sleep 1
D_Arrow_down
D_write_1
sleep 1
D_Arrow_up
D_write_1
sleep 1
D_About_G13_0
D_write_1
sleep 1
D_About_G13_1
D_write_1
sleep 1
D_About_G13_2
D_write_1
sleep 1
D_About_G13_3
D_write_1
sleep 1
D_About_G13_4
D_write_1
sleep 1
D_About_G13_5
D_write_1
sleep 1
D_About_G13_6
D_write_1
sleep 1
D_About_G13_7
D_write_1
sleep 1
D_About_G13_8
D_write_1
sleep 1
D_About_G13_9
D_write_1
sleep 1
D_About_G13_10
D_write_1
sleep 1
D_About_G13_11
D_write_1
sleep 1
D_About_G13_12
D_write_1
sleep 1
D_About_G13_13
D_write_1
sleep 1
D_About_G13_14
D_write_1
sleep 1
D_About_G13_15
D_write_1
sleep 1
D_About_G13_16
D_write_1
sleep 1
D_About_G13_17
D_write_1
sleep 1
D_About_G13_18
D_write_1
sleep 1
D_About_G13_19
D_write_1
sleep 1
D_About_G13_20
D_write_1
sleep 1
D_About_G13_21
D_write_1
sleep 10
D_clear_1
D_write_1
sleep 1
D_boot_9
D_write_1
sleep 1
D_boot_8
D_write_1
sleep 1
D_boot_7
D_write_1
sleep 1
D_boot_6
D_write_1
sleep 1
D_boot_5
D_write_1
sleep 1
D_boot_4
D_write_1
sleep 1
D_boot_3
D_write_1
sleep 1
D_boot_2
D_write_1
sleep 1
D_boot_1
D_write_1
sleep 1
D_boot_0
D_write_1
sleep 1
D_clear_1
D_write_1
sleep 1
echo "rgb 0 0 0" > /tmp/g13-0

