savedcmd_threadfeces.o := ld -m elf_x86_64 -z noexecstack --no-warn-rwx-segments   -r -o threadfeces.o @threadfeces.mod  ; /usr/lib/modules/6.14.5-arch1-1/build/tools/objtool/objtool --hacks=jump_label --hacks=noinstr --hacks=skylake --ibt --orc --retpoline --rethunk --sls --static-call --uaccess --prefix=16  --link  --module threadfeces.o

threadfeces.o: $(wildcard /usr/lib/modules/6.14.5-arch1-1/build/tools/objtool/objtool)
