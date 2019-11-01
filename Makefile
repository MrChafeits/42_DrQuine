AS = nasm

Colleen:
	$(CC) -o $@ $@.c
	./$@ > tmpout
	-diff $@.c tmpout
	-$(RM) tmpout
	$(AS) -f macho $@.s
	$(CC) -o $@ $@.o
	./$@ > tmpout
	-diff $@.s tmpout
	-$(RM) tmpout

Grace:
	$(CC) -o $@ $@.c
	./$@
	-diff $@.c $@_kid.c
	-$(RM) $@_kid.c
