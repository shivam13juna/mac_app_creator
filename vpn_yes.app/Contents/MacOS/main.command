#!/bin/sh

# main.command

#  Created by _yourname_
#  Copyright (c) 2010 _comapnyname_, All Rights Reserved.

# Get local path of Application
FILEPATH=$(dirname $0)
BASEPATH=${FILEPATH%/*/*/*}
echo $BASEPATH

# TODO
printf "y\n2\nusername\npassword\ny" | /opt/cisco/anyconnect/bin/vpn -s connect HOST
# Edit info.plist for copyright and organisation
# Replace cmd.icns
# Insert code


exit 0
