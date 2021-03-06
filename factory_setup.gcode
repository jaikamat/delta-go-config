{\rtf1\ansi\ansicpg1252\cocoartf1404\cocoasubrtf470
{\fonttbl\f0\fswiss\fcharset0 Helvetica;}
{\colortbl;\red255\green255\blue255;}
\margl1440\margr1440\vieww19480\viewh8400\viewkind0
\pard\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0

\f0\fs24 \cf0 ;\'97\'97\'97\'97\'97\'97\'97\'97\'97\'97\'97\'97\'97\'97\'97\'97\'97\'97\'97\'97\'97\'97\'97\'97\'97\'97\'97\'97\'97\'97\'97\'97\'97\'97\
; DO NOT EDIT THIS FILE UNLESS YOU KNOW WHAT YOU ARE DOING!\
;\'97\'97\'97\'97\'97\'97\'97\'97\'97\'97\'97\'97\'97\'97\'97\'97\'97\'97\'97\'97\'97\'97\'97\'97\'97\'97\'97\'97\'97\'97\'97\'97\'97\'97\
; This file performs auto-calibration, auto-hight detection and heater PID tuning. \
; If you need to revert to default factory settings, please visit deltaprintr.com/support for instructions.\
; Send \'92s\'92 command to execute this file or try \'91@play /sd/setup.gcode\'92 in Pronterface.\
\
G32 					; Auto-leveling\
M500 					; Save auto-leveling in config-override\
G28					; Home the printer\
G0 Z10				; Move the hotend 10mm off the bed (in case the override file is already created so the hotend won\'92t crash)\
G38.2 Z-40				; Move the hotend until it taps the bed\
M306 Z0				; Set the homing offset\
M500					; Save homing offset\
G1 Z0.17				; Move 0.17mm off the bed to compensate for blue painters tape\
M306 Z0				; Set homing offset\
M500					; Save homing offset in config-override\
G28					; Home the printer\
M84					; Turn off motors\
M303 E0 S220 			; Perform PID auto-tuning for heater\
G4 S300				; Pause\
M500 					; Save PID settings for heater\
M150 R000 U255 B000 		; Turn LED to green to signal that script has completed executing.}