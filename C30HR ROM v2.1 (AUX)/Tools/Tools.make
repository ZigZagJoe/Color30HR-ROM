C data.c -o data.c.oLink data.c.o -o data "{CLibraries}"StdCLib.o "{Libraries}"Interface.o "{Libraries}"Runtime.o SetFile data -t MPST -c 'MPS 'ASM crcpatch.a -o crcpatch.a.o -i "{AIncludes}"C crcpatch.c -o crcpatch.c.oLink crcpatch.c.o crcpatch.a.o -o crcpatch "{CLibraries}"StdCLib.o "{Libraries}"Interface.o "{Libraries}"Runtime.o SetFile crcpatch -t MPST -c 'MPS '