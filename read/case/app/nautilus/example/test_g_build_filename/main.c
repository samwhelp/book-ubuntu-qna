#include <stdio.h>
#include <stdlib.h>
#include <glib.h>

int
main (int argc, char *argv[])
{

        printf("%s\n", g_build_filename (g_get_user_config_dir (), "nautilus", "servers", NULL));
        exit (EXIT_SUCCESS);

}
