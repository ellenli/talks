#!/bin/sh

ls | egrep '(pdf)' | # filters index to list specific filetypes, e.g (jpg|png)
perl -e 'print "<html><body><ul>"; while(<>) { chop $_; print "<li><a href=\"./$_\">$_</a></li>";} print "</ul></body></html>"' > index.html

