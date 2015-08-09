/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: fvivaudo <fvivaudo@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2015/02/05 15:10:56 by fvivaudo          #+#    #+#             */
/*   Updated: 2015/02/05 15:10:57 by fvivaudo         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <unistd.h>
#include <strings.h>
#include <stdio.h>
#include <stdlib.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <fcntl.h>
#include "includes/libasm.h"

int		main()
{
	int			fd;
	int			a = 0;
	int			b = 0;
	char		c = 0;
	char		src[] = "The unterzee does not forgive";
	char		dst1[100] = {0};
	char		dst2[100] = {0};
	char		strputs[] = "Hello";
	const char	*srcdup = "Hello";
	char		*dstdup1 = NULL;
	char		*dstdup2 = NULL;

	strcat(dst1, "");
	strcat(dst2, "");
	strcat(dst1, src);
	ft_strcat(dst2, src);
	printf("strcat    : %s\n", dst1);
	printf("ft_strcat : %s\n", dst2);
	dstdup1 = strdup(srcdup);
	printf("strdup    : %s\n", dst1);
	free(dstdup1);
	dstdup1 = NULL;
	dstdup2 = ft_strdup(srcdup);
	printf("ft_strdup : %s\n", dst2);
	free(dstdup2);
	dstdup2 = NULL;
	memset((void*)dst1, 'a', 0);
	ft_memset((void*)dst2, 'a', 0);
	printf("memset    : %s\n", dst1);
	printf("ft_memset : %s\n", dst2);
	bzero((void*)dst1, 15);
	ft_bzero((void*)dst2, 15);
	printf("bzero     : ");
	write(1, dst1, 20);
	printf("\n");
	printf("ft_bzero  : ");
	write(1, dst2, 20);
	printf("\n");
	memcpy((void*)dst1, (void*)src, 0);
	ft_memcpy((void*)dst2, (void*)src, 0);
	printf("memcpy    : %s\n", dst1);
	printf("ft_memcpy : %s\n", dst2);
	a = ft_isalpha('p');
	printf("ft_isalpha: ");
	printf("%d\n", a);
	a = ft_isascii(127);
	printf("ft_isascii: ");
	printf("%d\n", a);
	a = ft_isdigit('p');
	printf("ft_isdigit: ");
	printf("%d\n", a);
	a = ft_isprint(' ');
	printf("ft_isprint: ");
	printf("%d\n", a);
	a = ft_isalnum('P');
	printf("ft_isalnum: ");
	printf("%d\n", a);
	c = ft_tolower('A');
	printf("ft_tolower: ");
	printf("%c\n", c);
	c = ft_toupper('P');
	printf("ft_toupper: ");
	printf("%c\n", c);
	fd = open("test1.txt", O_RDONLY);
	ft_cat(fd);
	a = puts(strputs);
	b = ft_puts(strputs);
	printf("puts      : ");
	printf("%d\n", a);
	printf("ft_puts   : ");
	printf("%d\n", b);

	return (0);
}