# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: lbertran <lbertran@student.42lyon.fr>      +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/04/07 14:16:19 by lbertran          #+#    #+#              #
#    Updated: 2021/04/07 14:17:33 by lbertran         ###   ########lyon.fr    #
#                                                                              #
# **************************************************************************** #

NAME        =       libasm.a
SRCS        =       ft_strlen.s \
					ft_strcmp.s \
					ft_strcpy.s
OBJS        =       ${SRCS:.s=.o}
CFLAGS		=		-Wall -Wextra -Werror

%.o	: %.s
	nasm -f macho64 $< -o $@

$(NAME): $(OBJS)
	ar rcs $(NAME) $(OBJS)

all: $(NAME)

clean:
	rm -f $(OBJS)

bonus:	$(OBJS)
	ar rcs $(NAME) $(OBJS)

test: all bonus
	@gcc $(CFLAGS) -I./libasm.h -I./libasm_bonus.h libasm.a main.c -o test
	@./test

fclean: clean
	rm -f $(NAME)
	rm -f test

re: fclean all

.PHONY :    all fclean clean re