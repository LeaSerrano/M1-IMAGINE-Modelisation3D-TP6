#!/bin/sh
bindir=$(pwd)
cd /home/lea/M1-IMAGINE/Modélisation3D/M1-IMAGINE-Modelisation3D-TP6/src/
export 

if test "x$1" = "x--debugger"; then
	shift
	if test "xYES" = "xYES"; then
		echo "r  " > $bindir/gdbscript
		echo "bt" >> $bindir/gdbscript
		/usr/bin/gdb -batch -command=$bindir/gdbscript --return-child-result /home/lea/M1-IMAGINE/Modélisation3D/M1-IMAGINE-Modelisation3D-TP6/build/gmap 
	else
		"/home/lea/M1-IMAGINE/Modélisation3D/M1-IMAGINE-Modelisation3D-TP6/build/gmap"  
	fi
else
	"/home/lea/M1-IMAGINE/Modélisation3D/M1-IMAGINE-Modelisation3D-TP6/build/gmap"  
fi
