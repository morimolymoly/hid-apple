obj-m := hid-apple.o
KDIR    := /lib/modules/$(shell uname -r)/build
VERBOSE = 0

all:
	$(MAKE) -C $(KDIR) M=$(PWD) KBUILD_VERBOSE=$(VERBOSE) CONFIG_DEBUG_INFO=y modules
clean:
	rm -f *.o *.ko *.mod.c Module.symvers modules.order

install: all
	sudo modprobe -r hid-apple
	sudo insmod hid-apple.ko

uninstall: all
	sudo rmmod hid-apple.ko
	sudo modprobe hid-apple
