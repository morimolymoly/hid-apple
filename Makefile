obj-m := hid-apple2.o
KDIR    := /lib/modules/$(shell uname -r)/build
VERBOSE = 0

all:
	$(MAKE) -C $(KDIR) M=$(PWD) KBUILD_VERBOSE=$(VERBOSE) CONFIG_DEBUG_INFO=y modules
clean:
	rm -f *.o *.ko *.mod.c Module.symvers modules.order .hid-apple* .Module.* .modules.* *.mod

install: all
	sudo modprobe -r hid-apple
	sudo insmod hid-apple2.ko

uninstall: all
	sudo rmmod hid-apple2.ko
	sudo modprobe hid-apple
