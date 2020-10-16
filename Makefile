ifndef KDIR
	KDIR = /lib/modules/`uname -r`/build
endif

obj-m := pinctrl-amd.o

kbuild:
	make -C $(KDIR) M=`pwd`

