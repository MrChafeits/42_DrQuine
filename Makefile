AS = nasm

ASFLAGS = -f macho64

CCFLAGS =
INCLUDES =

HAVE_USR_INC = $(shell test -d /usr/include; echo "$$?")
ifneq ("$(HAVE_USR_INC)", "0")
	CCFLAGS += -Wno-nullability-completeness
	INCLUDES += -I$(shell xcode-select -p)/SDKs/MacOSX.sdk/usr/include
endif

CFLAGS = $(CCFLAGS) $(INCLUDES)

.PHONY: Colleen
Colleen:
	$(CC) $(CFLAGS) -o $@ $@.c
	./$@ > tmpout
	diff $@.c tmpout
	$(RM) tmpout $@
	$(AS) $(ASFLAGS) $@.s
	$(CC) $(CFLAGS) -Wl,-no_pie -o $@ $@.o
	./$@ > tmpout
	diff $@.s tmpout
	$(RM) tmpout $@.o $@

.PHONY: Grace
Grace:
	$(CC) $(CFLAGS) -o $@ $@.c
	./$@
	diff $@.c $@_kid.c
	$(RM) $@_kid.c
