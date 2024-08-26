#include<stdio.h>
main()
{

  char fnm[20],lnm[20];
  printf("Enter School's first name : ");
  scanf("%s", &fnm);
  printf("Enter School's last name : ");
  scanf("%s", &lnm);
  printf("Abbreviated Name: %c. %c.",fnm[0],lnm[0]);
}
