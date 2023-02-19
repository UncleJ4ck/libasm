/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   tester.c                                           :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: jacku <jacku@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/12/08 11:05:00 by amazguit          #+#    #+#             */
/*   Updated: 2022/12/08 20:14:27 by amazguit         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "inc/libasm.h"

int main(void) {
	char s1[] = "he";
	char s2[] = "hell";
	char src[30] = "hell is upside down";
	char dest[30];
	char dest2[30];
	
	printf("\n===========Tests for strlen================\n");
	printf("number of chaaracters using the real strlen is %ld\n", strlen(src));
	printf("number of chaaracters using my strlen is %ld\n", ft_strlen(src)); 

	printf("\n============Tests for strcpy======================\n");
	memset(dest, '\0', sizeof(dest));
	memset(dest2, '\0', sizeof(dest2));
	printf("destination1 before execution == \"%s\"\n", dest);
	printf("destination2 before execution == \"%s\"\n", dest2);
	strcpy(dest, src);
	printf("destination1 after execution using the real strcpy == \"%s\"\n\n", dest);
	ft_strcpy(dest2, src);
	printf("destination2 after execution using the ft_strcpy == \"%s\"\n\n", dest2);

	printf("\n======================Tests for write======================\n");
	printf("using the original syscall: \n\n");
	write(1, src, ft_strlen(src));
	printf("\n\nusing my syscall: ");
	ft_write(1, src, ft_strlen(src));
	printf("\n\n==================Tests for strcmp==================\n");
	printf("using the real strcmp the difference between the two strings is %d\n", strcmp(s1, s2));
	printf("using my strcmp the difference between the two strings is %d\n", ft_strcmp(s1, s2));
	char *buff;
	buff = malloc(sizeof * buff * 100);
	printf("\n==================Tests for read==================");
	printf("\n");
	int bytes = read(0, buff, 100);
	printf("using the real read(), how many bytes did i read: %d\n", bytes);	
	printf("that's what you read: %s\n", buff);
	free(buff);
	
	buff = malloc(sizeof * buff * 100);
	printf("\n");
	bytes = read(0, buff, 100);
	printf("using my read(), how many bytes did i read: %d\n", bytes);	
	printf("that's what you read: %s\n", buff);
	free(buff);
	printf("\n==================Tests for strdup==================\n");
	char *string = strdup("hel is upside down");
	printf("using the real strdup the buffer contains: %s\n", string);
	char *string2 = ft_strdup("hel is upside down");
	printf("using my strdup the buffer contains: %s\n", string2);

}
