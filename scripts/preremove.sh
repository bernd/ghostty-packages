#!/bin/sh
#
# See: https://www.debian.org/doc/debian-policy/ch-maintainerscripts.html

set -eo pipefail

case "$1" in
	remove)
		update-alternatives --remove x-terminal-emulator /usr/bin/ghostty
		;;
	*)
		# Ignore all other invocations
		;;
esac

exit 0
