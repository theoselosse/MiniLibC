##
## EPITECH PROJECT, 2018
## MinilibC
## File description:
## Makefile of sharedlib | Created by Théo Selosse
##

NAME	= libasm.so

RM	= rm -f

SRCS	= ./shared_lib/memcpy.asm \
		  ./shared_lib/strncmp.asm \
		  ./shared_lib/memset.asm \
		  ./shared_lib/strchr.asm \
		  ./shared_lib/strcmp.asm \
		  ./shared_lib/strlen.asm \
		  ./shared_lib/memmove.asm \
		  ./shared_lib/rindex.asm \
		  ./shared_lib/strcasecmp.asm

OBJS 	=	$(SRCS:.asm=.o)

all: $(NAME)

%.o:	%.asm
	nasm -f elf64 $< -o $@
 
$(NAME):	$(OBJS)
	gcc -nostdlib -fPIC -shared -o $(NAME) $(OBJS)
	
clean:
	$(RM) $(OBJS)

fclean: clean
	$(RM) $(NAME)

re: fclean all

.PHONY: clean mrproper $(EXEC)