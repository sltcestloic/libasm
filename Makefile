# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: lbertran <lbertran@student.42lyon.fr>      +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/04/07 14:16:19 by lbertran          #+#    #+#              #
#    Updated: 2021/04/08 13:47:18 by lbertran         ###   ########lyon.fr    #
#                                                                              #
# **************************************************************************** #

NAME        =       libasm.a
SRCS        =       ft_strlen.s \
					ft_strcmp.s \
					ft_strcpy.s \
					ft_write.s \
					ft_read.s \
					ft_strdup.s
OBJS        =       ${SRCS:.s=.o}
CFLAGS		=		-Wall -Wextra -Werror

%.o	: %.s
	nasm -f macho64 $< -o $@

$(NAME): $(OBJS)
	ar rcs $(NAME) $(OBJS)

all: $(NAME)

clean:
	rm -f $(OBJS)

test: all
	@gcc $(CFLAGS) -I. libasm.a main.c -o test
	@./test

fclean: clean
	rm -f $(NAME)
	rm -f test

re: fclean all

.PHONY :    all fclean clean re