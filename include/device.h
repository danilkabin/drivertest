#ifndef DEVICE_H
#define DEVICE_H

#include "linux/module.h"
#include "linux/netdevice.h"

struct tf_device {
   struct net_device *dev;

};

int dev_priv_init(void);
void dev_priv_exit(void);

#endif

