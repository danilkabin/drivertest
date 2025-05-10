#include "../include/threadfeces.h"
#include "../include/device.h"

#include "asm/cache.h"
#include "linux/module.h"
#include "linux/init.h"
#include "linux/netdevice.h"
#include "linux/netlink.h"
#include "linux/skbuff.h"
#include "linux/netdevice.h"
#include "net/rtnetlink.h"

static int tf_open(struct net_device *dev) {

   return 0;
}

static int tf_close(struct net_device *dev) {

   return 0;
}

static netdev_tx_t td_ndo_xmit(struct sk_buff *skb, struct net_device *dev) {
   return -1;
}

static struct net_device_ops netdev_ops = {
   .ndo_open = tf_open,
   .ndo_stop = tf_close,
   .ndo_start_xmit = td_ndo_xmit
};

static void tf_rtnl_setup(struct net_device *dev) {
   struct tf_device *tf = netdev_priv(dev);
   tf->dev = dev; 

   dev->netdev_ops = &netdev_ops;
}
static int tf_rtnl_newlink(struct net *net, struct net_device *dev, struct nlattr **tb, struct nlattr **data, struct netlink_ext_ack *extack) {

   return 0;
}

static struct rtnl_link_ops link_ops __read_mostly = {
   .kind       = KBUILD_MODNAME,
   .priv_size  = sizeof(struct tf_device),
   .setup      = tf_rtnl_setup,
   .newlink    = tf_rtnl_newlink
};

int __init dev_priv_init(void) {
   int ret;

   ret = rtnl_link_register(&link_ops);
   if (ret) {
      goto rtnl_link_register_fail;   
   }
   dev_priv_exit(); 
   return 0;

rtnl_link_register_fail:
   return 0;
}

void __exit dev_priv_exit(void) {
   rtnl_link_unregister(&link_ops);
}

