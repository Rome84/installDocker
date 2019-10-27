
#!/bin/sh
awk ' BEGIN { print $0, "\t", $1}
END { print "done"} '
