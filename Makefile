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

test: ctest asmtest pytest gotest

c: $(COBJS) $(COUT)

.PHONY: ctest
ctest: c
	cd c; ./test.sh; cd - >/dev/null

error.c:
	$(CC) -c $@ 2>out; mv out $@; cat $@
	$(CC) -c $@ 2>out; mv out $@; cat $@
	$(CC) -c $@ 2>out; mv out $@; cat $@
	$(CC) -c $@ 2>out; mv out $@; cat $@
	$(CC) -c $@ 2>out.c; diff $@ out.c

asm: $(ASMOBJS) $(ASMOUT)

.PHONY: asmtest
asmtest: asm
	cd asm; ./test.sh; cd - >/dev/null

.PHONY: pytest
pytest:
	cd python; ./test.sh; cd - >/dev/null

.PHONY: gotest
gotest:
	cd go; ./test.sh; cd - >/dev/null

.PHONY: clean fclean nuke
clean fclean nuke:
	$(RM) $(ASMOBJS) $(COBJS) $(ASMOUT) $(COUT) c/a.out asm/a.out error.c out.c
	-find . -type f -name 'Grace_kid.*' -delete -o -name 'Sully_[0-4].*' -delete
