#ifndef LIBASM_H
#define LIBASM_H

#include <stddef.h>
#include <string.h>
#include <stdio.h>
#include <errno.h>
#include <stdint.h>
#include <unistd.h>
#include <stdlib.h>

uint64_t 	ft_strlen(const char *str);
char 		*ft_strcpy(const char *dest, const char *src);
uint64_t 	ft_write(int fd, const void *buf, size_t count);
uint32_t 	ft_strcmp(char *s1, char *s2);
uint64_t	ft_read(int fd, const void *buff, size_t count);
char 		*ft_strdup(char *src);

#endif
