#include<stdio.h>
#include<string.h>
typedef enum { false, true } bool;

bool isInteger(char *s) {
  int i;
  for (i = 0; i < strlen(s); ++i)
  {
      if (!isdigit(s[i]))
      {
          return false;
      }
  }
}

bool areInputParametersCorrect(int argc, char *argv[]) {
  bool areInputParametersCorrect = true;

  if( argc != 3 ) {
    printf("ERROR: gcd requires 2 arguments - %i were given.\n", argc - 1);
    areInputParametersCorrect = false;
  }

  if(!isInteger(argv[1])) {
    printf("ERROR: first argument to gcd: %s is not an integer.\n", argv[1]);
    areInputParametersCorrect = false;
  }

  if(!isInteger(argv[2])) {
    printf("ERROR: second argument to gcd: %s is not an integer.\n", argv[2]);
    areInputParametersCorrect = false;
  }

  if (!areInputParametersCorrect) {
    printf("\nUsage: gcd <integer> <integer>.\n");
  }

  return areInputParametersCorrect;
}

main( int argc, char *argv[] )
{
  /* Check input parameters are correctly formatted */
  if(!areInputParametersCorrect(argc, argv)) return -1;

  /* Convert command line arguments to integers */
  int a = atoi(argv[1]);
  int b = atoi(argv[2]);
  int temp;

  while (b != 0) {
      /* Temporarily store the value of b */
      temp = b;
      /* Set b as the remainder of a divided by b */
      b = a % b;
      /* Set a to be the initial value of b */
      a = temp;
  }

  printf("The greatest common divisor is : %i.\n", a);

}
