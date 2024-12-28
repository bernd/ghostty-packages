#!/bin/sh
#
# See: https://www.debian.org/doc/debian-policy/ch-maintainerscripts.html

set -eo pipefail

case "$1" in
	configure)
		if [ -z "$2" ]; then
			# No version given, so this invocation is not an upgrade.
			# Only install the alternative on installations.
			update-alternatives --install /usr/bin/x-terminal-emulator x-terminal-emulator /usr/bin/ghostty 30
		fi
		;;
	*)
		# Ignore all other invocations
		;;
esac

exit 0
