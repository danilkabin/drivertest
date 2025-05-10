#ifndef THREADFECES_H
#define THREADFECES_H

#include "linux/module.h"

#define DEBUG true

#define DEBUG_INFO(fmt, ...) \
   printk(KERN_INFO fmt, ##__VA_ARGS__)


#endif

