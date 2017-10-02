NEXMON_CHIP=CHIP_VER_BCM43451b1
NEXMON_CHIP_NUM=`$(NEXMON_ROOT)/buildtools/scripts/getdefine.sh $(NEXMON_CHIP)`
NEXMON_FW_VERSION=FW_VER_7_63_43_0
NEXMON_FW_VERSION_NUM=`$(NEXMON_ROOT)/buildtools/scripts/getdefine.sh $(NEXMON_FW_VERSION)`

NEXMON_ARCH=armv7-r

RAM_FILE=tempranillo.trx
RAMSTART=0x1b0000
RAMSIZE=0x90000

ROM_FILE=rom.bin
ROMSTART=0x0
ROMSIZE=0x70000

HNDRTE_RECLAIM_0_END=0x22b760

PATCHSIZE=0x4000
PATCHSTART=$$(($(HNDRTE_RECLAIM_0_END) - $(PATCHSIZE)))

# original ucode start and size
UCODESTART=0x21dee8
UCODESIZE=0xd000

# original template ram start and size
TEMPLATERAMSTART=0x22aee8
TEMPLATERAMSIZE=0x878

FP_DATA_END_PTR=0x2082e0
# fp_check_success
#todo
FP_CONFIG_BASE_PTR_1=0x20a408
#todo
FP_CONFIG_END_PTR_1=0x20a404
# fp_apply_patches
#todo
FP_CONFIG_BASE_PTR_2=0x20a68c
#todo
FP_CONFIG_END_PTR_2=0x20a688

FP_CONFIG_SIZE=0xc00
FP_CONFIG_BASE=$$(($(PATCHSTART) - $(FP_CONFIG_SIZE)))
FP_DATA_BASE=0x1b1000
FP_CONFIG_ORIGBASE=0x1b1800
FP_CONFIG_ORIGEND=0x1b2094
