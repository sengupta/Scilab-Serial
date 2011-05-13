// This file is released under the 3-clause BSD license. See COPYING-BSD.

// manpages = ls('man/eng')
// xmlpages_indices = grep(manpages, 'xml')
// xmlpages = manpages(xmlpages_indices)'

// This is not working because of Issue 436: 
// http://forge.scilab.org/index.php/p/xmltodocbook/issues/436/
// for i=1:length(xmlpages_indices)
// xmltodocbook("man/eng/"+xmlpages(i), xmlpages(i), "help/en_US/")
// end


tbx_builder_help_lang(["en_US"], get_absolute_file_path("builder_help.sce"));
