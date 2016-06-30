#include <stdio.h>
#include <stdlib.h>
#include <glib.h>

int
main (int argc, char *argv[])
{

        printf("%s\n", g_get_user_config_dir ());
        exit (EXIT_SUCCESS);

}
