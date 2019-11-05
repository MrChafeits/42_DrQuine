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

c: $(COBJS) $(COUT)

.PHONY: ctest
ctest:
	./c/test.sh

asm: $(ASMOBJS) $(ASMOUT)

.PHONY: asmtest
asmtest:
	./asm/test.sh

.PHONY: clean
clean:
	$(RM) $(ASMOBJS) $(COBJS) $(ASMOUT) $(COUT) a.out
	$(RM) -r *.dSYM
	-find . -type f -name 'Grace_kid.*' -delete -o -name 'Sully_[0-4].*' -delete
