#!/bin/sh
startdir="$1"
[ -n "$startdir" ] && [ -d "$startdir" ] || exit 1
cd "$(dirname "$0")"
HDIR="$startdir/liveenv"
PKGSDIR="$startdir/PKGS"
RDIR="$HDIR"/root
doinst="$HDIR"/doinst
modtxt="$HDIR"/MODIFICATIONS

cat <<EOF >> "$modtxt"
dmrc-ratpoison
--------------
- default session for user 'one' is Ratpoison


EOF

cat <<EOF > "$RDIR"/home/one/.dmrc
[Desktop]
Session=ratpoison

EOF
