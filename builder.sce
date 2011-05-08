SERIALDIR=get_absolute_file_path("builder.sce");

genlib("SerialLib",SERIALDIR+'macros/')

xmltohtml(SERIALDIR+"man/eng")
clear SERIALDIR

