BUILD_DIR := $(shell pwd)/build
SRC_DIR := src
KERNEL_BUILD_DIR := /lib/modules/$(shell uname -r)/build
PWD := $(shell pwd)

# 🔹 Головний модуль — threadfeces
obj-m := threadfeces.o

# 🔹 Усі його компоненти — першим буде threadfeces.o
threadfeces-objs := \
	$(SRC_DIR)/threadfeces.o \
	$(SRC_DIR)/device.o \
	$(SRC_DIR)/receive.o \
	$(SRC_DIR)/send.o \
	$(SRC_DIR)/socket.o

# 🔸 Забезпечення build-директорії
$(shell mkdir -p $(BUILD_DIR))

# 🔨 Компіляція
all:
	make -C $(KERNEL_BUILD_DIR) M=$(PWD) modules
	@mkdir -p $(BUILD_DIR)
	@find . -maxdepth 1 -type f \( -name '*.o' -o -name '*.mod' -o -name '*.mod.c' -o -name '*.symvers' -o -name '*.order' -o -name '*.ko' \) -exec mv -t $(BUILD_DIR) {} +
	@find $(SRC_DIR) -type f \( -name '*.o' -o -name '*.mod.c' -o -name '*.mod' -o -name '*.symvers' -o -name '*.order' \) -exec mv -t $(BUILD_DIR) {} + 2>/dev/null || true

# 🧹 Очистка
clean:
	make -C $(KERNEL_BUILD_DIR) M=$(PWD) clean
	@rm -rf $(BUILD_DIR)

# 🔥 Очистка тільки build-артефактів
dnone:
	@rm -f $(BUILD_DIR)/*.{o,ko,mod.c,d,symvers,mod,order}
