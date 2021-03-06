# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: syamada <marvin@42.fr>                     +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2018/07/14 15:53:25 by syamada           #+#    #+#              #
#    Updated: 2018/07/16 21:24:16 by jcasian          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

CC		:= gcc
CFLAGS	:= -Wall -Wextra -Werror

NAME	:= fillit
SRCSDIR	:= srcs
INCSDIR	:= includes
LIBSDIR	:= libs
SRCS	:= $(addprefix $(SRCSDIR)/,\
	main.c ft_remalloc.c fillit.c read_input.c ft_filetostr.c \
	ft_sqrtint.c cvt_threedim.c first_validation.c put_error.c \
	second_validation.c check_connections.c check_connection_helpers.c fill_structure.c \
	print_board.c create_board.c solve.c check_fornextspace.c str_manipulation.c \
		reinit_piecesloc.c)
HEADERS	:= $(wildcard $(INCSDIR)/*.h)
OBJECTS	:= $(patsubst %.c, %.o, $(SRCS))
# I could have written like this: $(SRCS:.c=.o)
# this function(patsubst) replaces first parameter with second parameter from input on third paramter

.PHONY: all
all: $(NAME)

# $< is the first item in the dependencies list
# $@ is left side of the :
# $^ is right side of the :
# % is the same with wildcard
#this rule says .o files have dependencies on .c files which means this rule will be exected before whenever object files is used.
%.o: %.c
	$(CC) -c $(CFLAGS) -I$(INCSDIR) $< -o $@

$(NAME): $(OBJECTS)
	$(CC) -o $@ $^ -L$(LIBSDIR) -lft

.PHONY: clean
clean:
	rm -f $(OBJECTS)

.PHONY: fclean
fclean: clean
	rm -f $(NAME)

.PHONY: re
re: fclean all

.PHONY: norm
norm: $(SRCS) $(HEADERS)
	norminette $^
