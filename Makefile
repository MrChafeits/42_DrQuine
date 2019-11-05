AS = nasm
ASFLAGS = -fmacho64

BASENAMES = Colleen Grace Sully

ASMOUT = $(addprefix asm/, $(BASENAMES))
ASMSRCS = $(addsuffix .s, $(ASMOUT))
ASMOBJS = $(ASMSRCS:.s=.o)

COUT = $(addprefix c/, $(BASENAMES))
CSRCS = $(addsuffix .c, $(COUT))
COBJS = $(CSRCS:.c=.o)

CCFLAGS =
INCLUDES =

HAVE_USR_INC = $(shell test -d /usr/include; echo "$$?")
ifneq ("$(HAVE_USR_INC)", "0")
	CCFLAGS += -Wno-nullability-completeness
	INCLUDES += -I$(shell xcode-select -p)/SDKs/MacOSX.sdk/usr/include
endif

CFLAGS = $(CCFLAGS) $(INCLUDES)

all: c asm

test: ctest asmtest

c: $(COBJS) $(COUT)

.PHONY: ctest
ctest: c
	cd c; ./test.sh; cd - >/dev/null

asm: $(ASMOBJS) $(ASMOUT)

.PHONY: asmtest
asmtest: asm
	cd asm; ./test.sh; cd - >/dev/null

.PHONY: clean
clean:
	$(RM) $(ASMOBJS) $(COBJS) $(ASMOUT) $(COUT) a.out c/a.out asm/a.out
	$(RM) -r *.dSYM
	-find . -type f -name 'Grace_kid.*' -delete -o -name 'Sully_[0-4].*' -delete
