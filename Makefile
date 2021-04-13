# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: lbertran <lbertran@student.42lyon.fr>      +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/04/07 14:16:19 by lbertran          #+#    #+#              #
#    Updated: 2021/04/09 14:31:39 by lbertran         ###   ########lyon.fr    #
#                                                                              #
# **************************************************************************** #

NAME        =       libasm.a
SRCS        =       ft_strlen.s \
					ft_strcmp.s \
					ft_strcpy.s \
					ft_write.s \
					ft_read.s \
					ft_strdup.s
SRCSB		=		ft_list_size.s
OBJS        =       ${SRCS:.s=.o}
OBJSB		=		${SRCSB:.s=.o}
CFLAGS		=		-Wall -Wextra -Werror

%.o	: %.s
	nasm -f macho64 $< -o $@

$(NAME): $(OBJS)
	ar rcs $(NAME) $(OBJS)

all: $(NAME)

bonus: all ${OBJSB}
	ar rcs $(NAME) $(OBJS) $(OBJSB)

clean:
	rm -f $(OBJS) $(OBJSB)

test: all bonus
	@gcc $(CFLAGS) -I. libasm.a main.c -o test
	@./test

fclean: clean
	rm -f $(NAME)
	rm -f test

re: fclean all

.PHONY :    all fclean clean re