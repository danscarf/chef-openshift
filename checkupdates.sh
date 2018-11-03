YUMTMP="/tmp/yum-check-update.$$"
YUM="/usr/bin/yum"
$YUM check-update >&$YUMTMP
YUMSTATUS="$?"
case $YUMSTATUS in
0)
	# no updates!
	exit 0
	;;
*)
	NUMBERS=$(cat $YUMTMP | egrep '(.i386|.x86_64|.noarch|.src)' | wc -l)

	echo "
There are $NUMBERS updates available.
"
	;;
esac
# clean up
rm -f /tmp/yum-check-update.*
# EOF
