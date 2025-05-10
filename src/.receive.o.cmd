savedcmd_src/receive.o := gcc -Wp,-MMD,src/.receive.o.d -nostdinc -I/usr/lib/modules/6.14.5-arch1-1/build/arch/x86/include -I/usr/lib/modules/6.14.5-arch1-1/build/arch/x86/include/generated -I/usr/lib/modules/6.14.5-arch1-1/build/include -I/usr/lib/modules/6.14.5-arch1-1/build/include -I/usr/lib/modules/6.14.5-arch1-1/build/arch/x86/include/uapi -I/usr/lib/modules/6.14.5-arch1-1/build/arch/x86/include/generated/uapi -I/usr/lib/modules/6.14.5-arch1-1/build/include/uapi -I/usr/lib/modules/6.14.5-arch1-1/build/include/generated/uapi -include /usr/lib/modules/6.14.5-arch1-1/build/include/linux/compiler-version.h -include /usr/lib/modules/6.14.5-arch1-1/build/include/linux/kconfig.h -include /usr/lib/modules/6.14.5-arch1-1/build/include/linux/compiler_types.h -D__KERNEL__ -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-jumps=1 -falign-loops=1 -mno-80387 -mno-fp-ret-in-387 -mpreferred-stack-boundary=3 -mskip-rax-setup -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mindirect-branch=thunk-extern -mindirect-branch-register -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fno-jump-tables -mharden-sls=all -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O2 -fno-allow-store-data-races -fstack-protector-strong -ftrivial-auto-var-init=zero -fno-stack-clash-protection -pg -mrecord-mcount -mfentry -DCC_USING_FENTRY -fmin-function-alignment=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -fconserve-stack -fno-builtin-wcslen -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wmissing-declarations -Wmissing-prototypes -Wframe-larger-than=2048 -Wno-main -Wno-dangling-pointer -Wvla -Wno-pointer-sign -Wcast-function-type -Wno-stringop-overflow -Wno-array-bounds -Wno-alloc-size-larger-than -Wimplicit-fallthrough=5 -Werror=date-time -Werror=incompatible-pointer-types -Werror=designated-init -Wenum-conversion -fzero-init-padding-bits=all -Wextra -Wunused -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-packed-not-aligned -Wno-format-overflow -Wno-format-truncation -Wno-stringop-truncation -Wno-override-init -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-maybe-uninitialized -Wno-sign-compare -Wno-unused-parameter -g -gdwarf-5  -DMODULE  -DKBUILD_BASENAME='"receive"' -DKBUILD_MODNAME='"threadfeces"' -D__KBUILD_MODNAME=kmod_threadfeces -c -o src/receive.o src/receive.c  

source_src/receive.o := src/receive.c

deps_src/receive.o := \
  /usr/lib/modules/6.14.5-arch1-1/build/include/linux/compiler-version.h \
    $(wildcard include/config/CC_VERSION_TEXT) \
  /usr/lib/modules/6.14.5-arch1-1/build/include/linux/kconfig.h \
    $(wildcard include/config/CPU_BIG_ENDIAN) \
    $(wildcard include/config/BOOGER) \
    $(wildcard include/config/FOO) \
  /usr/lib/modules/6.14.5-arch1-1/build/include/linux/compiler_types.h \
    $(wildcard include/config/DEBUG_INFO_BTF) \
    $(wildcard include/config/PAHOLE_HAS_BTF_TAG) \
    $(wildcard include/config/FUNCTION_ALIGNMENT) \
    $(wildcard include/config/CC_HAS_SANE_FUNCTION_ALIGNMENT) \
    $(wildcard include/config/X86_64) \
    $(wildcard include/config/ARM64) \
    $(wildcard include/config/LD_DEAD_CODE_DATA_ELIMINATION) \
    $(wildcard include/config/LTO_CLANG) \
    $(wildcard include/config/HAVE_ARCH_COMPILER_H) \
    $(wildcard include/config/CC_HAS_COUNTED_BY) \
    $(wildcard include/config/UBSAN_SIGNED_WRAP) \
    $(wildcard include/config/CC_HAS_ASM_INLINE) \
  /usr/lib/modules/6.14.5-arch1-1/build/include/linux/compiler_attributes.h \
  /usr/lib/modules/6.14.5-arch1-1/build/include/linux/compiler-gcc.h \
    $(wildcard include/config/MITIGATION_RETPOLINE) \
    $(wildcard include/config/ARCH_USE_BUILTIN_BSWAP) \
    $(wildcard include/config/SHADOW_CALL_STACK) \
    $(wildcard include/config/KCOV) \

src/receive.o: $(deps_src/receive.o)

$(deps_src/receive.o):
