PJBASE=../pjproject-2.6

include $(PJBASE)/build.mak

CC      = $(APP_CC)
LDFLAGS = $(APP_LDFLAGS)
LDLIBS  = $(APP_LDLIBS)
CFLAGS  = $(APP_CFLAGS)
CPPFLAGS= ${CFLAGS}

all: voip

myapp: voip.c
	$(CC) -o $@ $< $(CPPFLAGS) $(LDFLAGS) $(LDLIBS)

clean:
	rm -f voip.o voip
