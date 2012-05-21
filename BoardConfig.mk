# Copyright (C) 2009 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#
# This file sets variables that control the way modules are built
# thorughout the system. It should not be used to conditionally
# disable makefiles (the proper mechanism to control what gets
# included in a build is to use PRODUCT_PACKAGES in a product
# definition file).
#
CONFIG_BOARD_NAME := mahimahi
CONFIG_BOARD_FILES := device/htc/passion

# inherit from the proprietary version
-include vendor/qsd8k/qsd8k-board_config.mk
-include vendor/htc/passion/BoardConfigVendor.mk

# FPU compilation flags
TARGET_GLOBAL_CFLAGS += -mtune=cortex-a8 -mfpu=neon -mfloat-abi=softfp
TARGET_GLOBAL_CPPFLAGS += -mtune=cortex-a8 -mfpu=neon -mfloat-abi=softfp

# Kernel
BOARD_KERNEL_CMDLINE := no_console_suspend=1 wire.search_count=5

# cat /proc/mtd #AOSP                   # cat /proc/mtd #CM7
# dev:    size   erasesize  name        # dev:    size   erasesize  name
# mtd0: 000e0000 00020000 "misc"        # mtd0: 000e0000 00020000 "misc"
# mtd1: 00500000 00020000 "recovery"    # mtd1: 00400000 00020000 "recovery"
# mtd2: 00280000 00020000 "boot"        # mtd2: 00380000 00020000 "boot"
# mtd3: 07800000 00020000 "system"      # mtd3: 09100000 00020000 "system"
# mtd4: 07800000 00020000 "cache"       # mtd4: 05f00000 00020000 "cache"
# mtd5: 0c440000 00020000 "userdata"    # mtd5: 0c440000 00020000 "userdata"
# mtd6: 00200000 00020000 "crashdata"
BOARD_BOOTIMAGE_PARTITION_SIZE := 0x00300000 #0x00380000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x00400000
BOARD_SYSTEMIMAGE_PARTITION_SIZE    := 220200960 # 230686720
BOARD_USERDATAIMAGE_PARTITION_SIZE  := 228589568 # 209715200
BOARD_FLASH_BLOCK_SIZE := 131072

