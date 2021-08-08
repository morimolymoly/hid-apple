# apple hid driver for Magic Keyboard JIS
```
make install # install
make uninstall # uninstall
```

# How to test
Execute `xev` command and press 'かな 英数 ろ |'
If they are recognized, it is working!

# installation
You need to auto load this kernel module. (ref https://okchan08.hateblo.jp/entry/2019/03/21/203553)

And also, you need to disable original hid-apple driver.(ref https://access.redhat.com/documentation/ja-jp/red_hat_enterprise_linux/8/html/managing_monitoring_and_updating_the_kernel/preventing-kernel-modules-from-being-automatically-loaded-at-system-boot-time_managing-kernel-modules)