mode(-1);
SERIALDIR=get_absolute_file_path("loader.sce");
seriallib=lib(SERIALDIR+"/macros/")
add_help_chapter("Serial port", SERIALDIR+"/man/eng");
clear SERIALDIR
disp "Serial port toolbox loaded"

