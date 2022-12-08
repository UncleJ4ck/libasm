# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: amazguit <amazguit@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/12/08 11:05:00 by amazguit          #+#    #+#              #
#    Updated: 2022/12/08 17:54:03 by amazguit         ###   ########.fr        #
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
	$(CC) $(FLAGS) $(OBJ) tester.c -L$(LIBASM) -o tester 

clean:
	$(RM) $(OBJ)

fclean: clean
	$(RM) $(NAME) tester

re: fclean all
