#include "../include/libft.h"

void	*ft_calloc(size_t nmemb, size_t size)
{
	size_t	i;
	void	*calloc;

	i = 0;
	if (size == 0 || nmemb == 0)
		return (malloc (0));
	if (size * nmemb / size != nmemb)
		return (NULL);
	calloc = malloc(nmemb * size);
	if (!calloc)
		return (NULL);
	while (i < nmemb * size)
	{
		((unsigned char *)calloc)[i] = '\0';
		i++;
	}
	return (calloc);
}
