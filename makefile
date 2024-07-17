lib :=
name :=
ifeq ($(name),)
    $(error No arguments inserted)
endif

uname=$$(echo $(name) | tr '[:lower:]' '[:upper:]')

.PHONY= test main src header all clean

CC=gcc
CFLAGS=-ansi -pedantic-errors -Wall -Wextra
VLGFLAGS=valgrind --leak-check=yes --track-origins=yes -s
DEBUG=-g
RELEASE=-DNDEBUG -O3

all: run clean

main:
	@echo "#include <stdio.h>\n\nint main(void)\n{\n\n\treturn 0;\n}" > ./$(name)_.c

test:
	@echo "#include <stdio.h>\n\nint main(void)\n{\n\n\treturn 0;\n}" > ./$(name)_test.c

src: header
	@echo "#include \"$(name).h\"\n" > ./$(name).c

header:
	@echo "#ifndef __$(uname)_H_\n#define __$(uname)_H_\n\n\n#endif" > ./$(name).h

run: $(name).out
	@./$(name).out

lib$(name).a: $(name).h $(name).o
	ar rcs lib$(name).a $(name).o $(name).h
	rm $(name).o

lib$(name).so: $(name)_d.o
	$(CC) $(CFLAGS) $(RELEASE) -shared -o lib$(name).so $(name)_d.o
	rm $(name)_d.o

$(name).out: $(name).c
	@$(CC) $(CFLAGS) $(RELEASE) $(name).c -o $(name).out

$(name).o: $(name).c
	$(CC) $(CFLAGS) $(RELEASE) $(name).c -I . -c -o $(name).o

$(name)_d.o: $(name).c
	$(CC) $(CFLAGS) $(RELEASE) -c -fPIC $(name).c -o $(name)_d.o

all: src test header

clean:
	rm $(name).out

cleaner:
	rm $(name).c $(name).h $(name)_test.c $(name)_.c
