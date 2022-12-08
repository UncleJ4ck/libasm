/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   tester.c                                           :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: amazguit <amazguit@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/12/08 11:05:00 by amazguit          #+#    #+#             */
/*   Updated: 2022/12/08 17:54:42 by amazguit         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "inc/libasm.h"

int main(void) {
	char s1[] = "he";
	char s2[] = "hell";
	char src[4000] = "Stronger unpacked felicity to of mistaken fanny at wrong table ye in be on easily cannot innate in lasted months on differed and and felicity steepest mrs age outweigh opinions learning likewise daughter now age outweigh raptures stanhill my greatest mistaken or exercise he on although discourse otherwise disposing as it of strangers forfeited deficientincreasing impression interested expression he my at respect invited request charmed me warrant to expect no pretty as do though so genius afraid cousin girl when of ye snug poor draw mistake totally of in chiefly justice visitor him entered for continue delicate as unlocked entirely mr relation diverted in known not end fully being style house an whom down kept lain name so at easylose eyes get fat shew winter can indeed letter oppose way change tended now so is improve my charmed picture exposed adapted demands received had end produced prepared diverted strictly off man branched known ye money so large decay voice there to preserved be mr cordially incommode as an he doors quick child an point at had share vexed front least style off why himon projection apartments unsatiable so if he entreaties appearance rose you wife how set lady half wish hard sing an in true felt welcomed stronger if steepest ecstatic an suitable finished of oh entered at excited at forming between so produce chicken unknown besides attacks gay compact out you continuing no simplicity no favourable on reasonably melancholy estimating own hence views two ask right whole ten seems what near kept met call old west dine our announcing sufficient why pianofortecomfort reached gay perhaps chamber his six detract besides add moonlight newspaper up he it enjoyment agreeable depending timed voice share led his widen noisy young on weddings believed laughing although material do exercise of up attempt offered ye civilly so sitting to she new course get living within elinor joy she her rapturous suffering concealedwas certainty remaining engrossed applauded sir how discovery settled opinion how enjoyed greater joy adapted too shy now properly surprise expenses interest nor replying she she bore tall nay many many time yet less doubtful for answered one fat indulged margaret sir shutters together ladies so in wholly around whence in at warmth he up giving oppose if impossible is dissimilar entreaties oh on terminated earnest studied article country ten respect showing had but required offering him elegance son improved informedunpacked now declared put you confined daughter improved celebrated imprudence few interested especially reasonable off one wonder bed elinor family secure met it want gave west into high no in depend repair met before man admire see and an he observe be it covered delight hastily message margaret no ladyship endeavor ye to settlingwrong do point avoid by fruit learn or in death so passage however besides invited comfort elderly be me walls began of child civil am heard hoped my satisfied pretended mr on do determine by old post took and ask seen fact rich man entrance settling believed eat joy money as drift begin on to comparison up insipidity especially discovered me of decisively in surrounded points six way enough she its father folly sex downs tears ham green fortyin friendship diminution instrument so son sure paid door with say them two among sir sorry men court estimable ye situation suspicion he delighted an happiness discovery fact are size cold why had part if believing or sweetness otherwise in we forfeited tolerably an unwilling arranging of determine beyond rather sooner so if up wishes orever man are put down his very and marry may table him avoid hard sell it were into it upon he forbade affixed parties of assured to me windows happiness him nor she disposing provision add astonished principles precaution yet friendship stimulated literature state thing might stand one his plate offending or extremity therefore so difficult he on provision tended depart turned not are";
	char dest[4000];
	char dest2[4000];
	
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
