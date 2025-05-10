#include "../include/threadfeces.h"
#include "../include/device.h"

#include "linux/init.h"
#include "linux/module.h"
#include "linux/netdevice.h"
#include "linux/printk.h"

static int __init vpn_dev_init(void) {
   DEBUG_INFO("EXECUTING VPN \n");
   dev_priv_init();
   return 0;
}

static void __exit vpn_dev_exit(void) {
DEBUG_INFO("good bye!\n nigger %d", 3);
dev_priv_exit();
}

MODULE_LICENSE("GPL");
module_init(vpn_dev_init);
module_exit(vpn_dev_exit);
