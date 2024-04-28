CC = icx
LIBS = -lm
CFLAGS = -O3 -xHost
LOCAL_LIBS_HEADER = -I/home/hpc/ptfs/ptfs273h/lecture-ptfs/assignments/utils/
LOCAL_LIBS_IMPL = /home/hpc/ptfs/ptfs273h/lecture-ptfs/assignments/utils/timing.c

.PHONY: all clean

all: benchmark

clean:
	rm benchmark

benchmark: benchmark.c
	$(CC) $(CFLAGS) $(LOCAL_LIBS_HEADER) $^ $(LOCAL_LIBS_IMPL) -o $@ $(LIBS)
