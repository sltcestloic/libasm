/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: lbertran <lbertran@student.42lyon.fr>      +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2021/04/07 13:05:19 by lbertran          #+#    #+#             */
/*   Updated: 2021/04/07 14:32:38 by lbertran         ###   ########lyon.fr   */
/*                                                                            */
/* ************************************************************************** */

#include "libasm.h"
#include <stdio.h>

int	main(void)
{

	printf("%s------------strlen test------------%s\n", BGREEN, RESET);
	char test[] = "hello world";
	printf("%sInput: %s%s\n", YELLOW, RESET, test);
	printf("%sResult: %s%d\n\n", YELLOW, RESET, ft_strlen(test));
	char test2[] = "test";
	printf("%sInput: %s%s\n", YELLOW, RESET, test2);
	printf("%sResult: %s%d\n", YELLOW, RESET, ft_strlen(test2));
	printf("%s-----------------------------------%s\n\n", BGREEN, RESET);


	printf("%s------------strcmp test------------%s\n", BHCYAN, RESET);
	char s1[] = "bonjour";
	char s2[] = "bonjour";
	printf("%ss1: %s%s\n", YELLOW, RESET, s1);
	printf("%ss2: %s%s\n", YELLOW, RESET, s2);
	printf("%sResult: %s%d\n\n", YELLOW, RESET, ft_strcmp(s1, s2));
	char s1b[] = "test";
	char s2b[] = "test*";
	printf("%ss1: %s%s\n", YELLOW, RESET, s1b);
	printf("%ss2: %s%s\n", YELLOW, RESET, s2b);
	printf("%sResult: %s%d\n", YELLOW, RESET, ft_strcmp(s1b, s2b));
	printf("%s-----------------------------------%s\n\n", BHCYAN, RESET);

	printf("%s------------strcpy test------------%s\n", BHRED, RESET);
	char dest[12];
	char src[] = "hello world";
	printf("%ssrc: %s%s\n", YELLOW, RESET, src);
	printf("%sResult: %s%s\n\n", YELLOW, RESET, ft_strcpy(dest, src));
	char destb[8];
	char srcb[] = "alo oui";
	printf("%ssrc: %s%s\n", YELLOW, RESET, srcb);
	printf("%sResult: %s%s\n", YELLOW, RESET, ft_strcpy(destb, srcb));
	printf("%s-----------------------------------%s\n", BHRED, RESET);
}