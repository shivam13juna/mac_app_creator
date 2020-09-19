# Run your script as an Application
You can use these shell applications to host and run your script as if it where native application.

## Simply your script distribution to users
Allows you to easily distribute your code to novice users and eliminates the need for the user to make the script execuatble in order to run.

### Script-py-droplet.app
Distribute your Python script as an application accepting files.
Works only when files are dropped on the application
1. Change the icon cmd.icns (/Contents/Resources/cmd.icns)
2. Edit the plist (/Contents/info.plist)
3. Edit the code (Contents/Resources/Scripts/main.py)
4. Ensure main.py is executable `chmod a+x main.py`
5. Send

### Script-py.app
Distribute your Python script as an application
1. Change the icon cmd.icns (/Contents/Resources/cmd.icns)
2. Edit the plist (/Contents/info.plist)
3. Edit the code (Contents/MacOS/main.py)
4. Ensure main.py is executable `chmod a+x main.py`
5. Send

### Script-sh.app
Distribute your Shell script as an application
1. Change the icon (/Contents/Resources/cmd.icns)
2. Edit the plist (/Contents/info.plist)
3. Edit the code (/Contents/MacOS/main.command)
4. Ensure main.command is executable `chmod a+x main.command`
5. Send

## PS: vpn_yes is a default app for how you might bypass that manual login on anyconnect secure mobility, vpn-no just stops what vpn_yes enables

I finally found a working solution. I'm using Anyconnect VPN secure mobility 4.8

We can use this to connect to Anyconnect with terminal

To connect:

printf 'USERNAME\nPASSWORD\ny' | /opt/cisco/anyconnect/bin/vpn -s connect HOST

Replace USERNAME, PASSWORD, and HOST. The \ny at the end is to accept the login banner - this is specific to my host.

Note the single quotes ' instead of double quotes " - this is because double quotes tell Bash to interpret certain characters within strings, such as exclamation marks, as Bash history commands. Double quotes will make this command fail with an "event not found" error if the password contains an exclamation mark. Single-quoted strings pass exclamation marks along without interpreting them.

To disconnect:

/opt/cisco/anyconnect/bin/vpn disconnect

I've made an alias to bash_profile to those commands


