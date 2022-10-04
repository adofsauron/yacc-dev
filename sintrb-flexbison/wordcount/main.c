#include <stdio.h>

int start_yacc(int arc, char **argv);

int	main(int argc, char **argv)
{
    printf("begin start_yacc\n");

    start_yacc(argc, argv);

    return 0;
}

