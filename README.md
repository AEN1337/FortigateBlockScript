# FortigateBlockScript

This is a Script to block multiple IP Addresses on a Fortigate via the CLI

USAGE:

Fill fg_input.txt with IP Addresses where every IP is on a new line
Run fg_script.sh
The script replaces $IPADDR in the fg_template.txt with the actual IP listed in fg_input.txt
For every line a template entry will be written to output.txt which you can then copy and paste into the Fortigate CLI
After that just create an address group and add any host_* name entry to the group which can then be used in a policy to deny traffic to the listed addresses
