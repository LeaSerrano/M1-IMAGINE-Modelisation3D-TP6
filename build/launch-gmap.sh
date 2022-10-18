#!/bin/sh
bindir=$(pwd)
cd /home/e20190003227/M1-IMAGINE/Modélisation3D/M1-IMAGINE-Modelisation3D-TP6/src/
export 

if test "x$1" = "x--debugger"; then
	shift
	if test "xYES" = "xYES"; then
		echo "r  " > $bindir/gdbscript
		echo "bt" >> $bindir/gdbscript
		/usr/bin/gdb -batch -command=$bindir/gdbscript --return-child-result /home/e20190003227/M1-IMAGINE/Modélisation3D/M1-IMAGINE-Modelisation3D-TP6/build/gmap 
	else
		"/home/e20190003227/M1-IMAGINE/Modélisation3D/M1-IMAGINE-Modelisation3D-TP6/build/gmap"  
	fi
else
	"/home/e20190003227/M1-IMAGINE/Modélisation3D/M1-IMAGINE-Modelisation3D-TP6/build/gmap"  
fi
