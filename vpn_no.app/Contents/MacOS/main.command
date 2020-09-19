#!/bin/sh

# main.command

#  Created by _yourname_
#  Copyright (c) 2010 _comapnyname_, All Rights Reserved.

# Get local path of Application
FILEPATH=$(dirname $0)
BASEPATH=${FILEPATH%/*/*/*}
echo $BASEPATH

# TODO
# Edit info.plist for copyright and organisation
# Replace cmd.icns
# Insert code
/opt/cisco/anyconnect/bin/vpn disconnect


exit 0
