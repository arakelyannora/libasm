#ifndef _LIBASM
#define _LIBASM
#include <stdio.h>

size_t		ft_strlen(char *str);
char	*ft_strcpy(char *dest, char *src);
int		ft_strcmp(char *s1, char *s2);
// char		ft_strcmp(char *s1, char *s2);
size_t		ft_write(int fd, void *buff, int cnt);
int		ft_read(int fd, void *buff, int cnt);
char	*ft_strdup(char *s);
#endif 