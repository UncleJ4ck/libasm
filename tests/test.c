#include <stdio.h>
#include <ctype.h>
#include <stdint.h>

uint64_t 	ft_islower(int c);

int main() {
	printf("check if islower returns 1 if it found a character: %d", islower('c'));
	printf("check if ft_islower returns 1 if it found a character: %d", ft_islower('c'));
}
