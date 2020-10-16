ifndef KDIR
	# KDIR = /lib/modules/`uname -r`/build
	# KDIR = /lib/modules/5.7.19-2-MANJARO/build
	KDIR = /lib/modules/5.9.0-1-MANJARO/build
endif

obj-m := pinctrl-amd.o

kbuild:
	make -C $(KDIR) M=`pwd`

