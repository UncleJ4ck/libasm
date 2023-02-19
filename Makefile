# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: jacku <jacku@student.42.fr>                +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/12/08 11:05:00 by jacku             #+#    #+#              #
#    Updated: 2022/12/08 18:10:42 by jacku            ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

CC = gcc
FLAGS = -Wall -Werror -Wextra
AS = nasm
ASFLAGS = -felf64
LIBASM = inc/libasm.h
AR = ar crs
RM = rm -rf
FILES = srcs/ft_strlen srcs/ft_strcmp srcs/ft_strcpy srcs/ft_write \
        srcs/ft_read srcs/ft_strdup

OBJ = $(FILES:=.o)
NAME = libasm.a

.PHONY: all bonus clean fclean re

all: $(NAME) test

$(NAME): $(OBJ)
	$(AR) $(NAME) $(OBJ)

%.o: %.s
	$(AS) $(ASFLAGS) $< -o $@

test:
	$(CC) $(FLAGS) $(OBJ) ./tests/tester.c -L$(LIBASM) -o ./tests/tester 

clean:
	$(RM) $(OBJ)

fclean: clean
	$(RM) $(NAME) tester

re: fclean all
