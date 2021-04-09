/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: lbertran <lbertran@student.42lyon.fr>      +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2021/04/07 13:05:19 by lbertran          #+#    #+#             */
/*   Updated: 2021/04/09 10:37:01 by lbertran         ###   ########lyon.fr   */
/*                                                                            */
/* ************************************************************************** */

#include "libasm.h"

int	main(void)
{

	printf("%s------------%sstrlen test%s------------%s\n", BGREEN, BWHITE, BGREEN, RESET);
	char test[] = "hello world";
	printf("%sInput: %s%s\n", YELLOW, RESET, test);
	printf("%sResult: %s%lu\n", YELLOW, RESET, ft_strlen(test));
	printf("%sExpected result: %s%lu\n\n", YELLOW, RESET, strlen(test));
	char test2[] = "test";
	printf("%sInput: %s%s\n", YELLOW, RESET, test2);
	printf("%sResult: %s%lu\n", YELLOW, RESET, ft_strlen(test2));
	printf("%sExpected result: %s%lu\n", YELLOW, RESET, strlen(test2));
	printf("%s-----------------------------------%s\n\n", BGREEN, RESET);


	printf("%s------------%sstrcmp test%s------------%s\n", BHCYAN, BWHITE, BHCYAN, RESET);
	char s1[] = "bonjour";
	char s2[] = "bonjour";
	printf("%ss1: %s%s\n", YELLOW, RESET, s1);
	printf("%ss2: %s%s\n", YELLOW, RESET, s2);
	printf("%sResult: %s%d\n", YELLOW, RESET, ft_strcmp(s1, s2));
	printf("%sExpected result: %s%d\n\n", YELLOW, RESET, strcmp(s1, s2));
	char s1b[] = "test*";
	char s2b[] = "test";
	printf("%ss1: %s%s\n", YELLOW, RESET, s1b);
	printf("%ss2: %s%s\n", YELLOW, RESET, s2b);
	printf("%sResult: %s%d\n", YELLOW, RESET, ft_strcmp(s1b, s2b));
	printf("%sExpected result: %s%d\n", YELLOW, RESET, strcmp(s1b, s2b));
	printf("%s-----------------------------------%s\n\n", BHCYAN, RESET);

	printf("%s------------%sstrcpy test%s------------%s\n", BHRED, BWHITE, BHRED, RESET);
	char dest[12];
	char src[] = "hello world";
	printf("%ssrc: %s%s\n", YELLOW, RESET, src);
	printf("%sResult: %s%s\n\n", YELLOW, RESET, ft_strcpy(dest, src));
	char destb[8];
	char srcb[] = "alo oui";
	printf("%ssrc: %s%s\n", YELLOW, RESET, srcb);
	printf("%sResult: %s%s\n", YELLOW, RESET, ft_strcpy(destb, srcb));
	printf("%s-----------------------------------%s\n\n", BHRED, RESET);


	printf("%s------------%swrite test%s-------------%s\n", BMAGENTA, BWHITE, BMAGENTA, RESET);
	char to_write[] = "test\n";
	printf("%sto_write: %s%s", YELLOW, RESET, to_write);
	printf("%sResult: %s\n", YELLOW, RESET);
	ft_write(1, to_write, ft_strlen(to_write));

	char to_writeb[] = "hello world\n";
	printf("\n%sto_write: %s%s", YELLOW, RESET, to_writeb);
	printf("%sResult: %s\n", YELLOW, RESET);
	ft_write(1, to_writeb, ft_strlen(to_writeb));
	printf("%s-----------------------------------%s\n\n", BMAGENTA, RESET);

	printf("%s-------------%sread test%s-------------%s\n", BHBLUE, BWHITE, BHBLUE, RESET);
	printf("%sTo read: %s300 bytes from \"ft_strlen.s\"\n", YELLOW, RESET);
	printf("%sResult:%s\n", YELLOW, RESET);
	int fd = open("ft_strlen.s", O_RDONLY);
	char line[300];
	int ret = ft_read(fd, line, 300);
	line[ret] = 0;
	printf("%s\n", line);
	printf("\n%sTo read: %s300 bytes from \"ft_strcmp.s\"\n", YELLOW, RESET);
	printf("%sResult:%s\n", YELLOW, RESET);
 	fd = open("ft_strcmp.s", O_RDONLY);
	char line2[300];
	ret = ft_read(fd, line2, 300);
	line2[ret] = 0;
	printf("%s\n", line2);
	printf("%s-----------------------------------%s\n\n", BHBLUE, RESET);

	printf("%s------------%sstrdup test%s------------%s\n", BBLACK, BWHITE, BBLACK, RESET);
	char original[] = "hello world";
	char *dup = ft_strdup(original);
	printf("%sOriginal string: %s%s\n", YELLOW, RESET, original);
	printf("%sDuplicated string: %s%s\n\n", YELLOW, RESET, dup);
	free(dup);
	char original2[] = "oui bonjour";
	char *dup2 = ft_strdup(original2);
	printf("%sOriginal string: %s%s\n", YELLOW, RESET, original2);
	printf("%sDuplicated string: %s%s\n", YELLOW, RESET, dup2);
	printf("%s-----------------------------------%s\n\n", BBLACK, RESET);
	free(dup2);
	return 0;
}