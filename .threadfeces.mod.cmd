savedcmd_threadfeces.mod := printf '%s\n'   src/threadfeces.o src/device.o src/receive.o src/send.o src/socket.o | awk '!x[$$0]++ { print("./"$$0) }' > threadfeces.mod
