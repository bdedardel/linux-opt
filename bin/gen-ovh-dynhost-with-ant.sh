#!/bin/bash
# see also: 
# - https://docs.ovh.com/fr/domains/utilisation-dynhost/
# - https://www.wlangiewicz.com/2014/07/23/dyndns-at-ovh/

#DYNHOST_USER="my username"
#DYNHOST_PASSWD="my password"
#DYNHOST_DOMAIN="home.wlangiewicz.com"
#OVH_URL="https://www.ovh.com/nic/update?system=dyndns"
# curl --user "$DYNHOST_USER:$DYNHOST_PASSWD" "${OVH_URL}&hostname=${DYNHOST_DOMAIN}"
cat << EOF > $1 
<?xml version="1.0"?>
<project name="ovh-dynhost" default="help" basedir="." xmlns:x="antlib:net.sourceforge.ant4x">

	<target name="help" description="Print help">
		<echo message="Usage: ant [target] [-Dproperties=path...]" />
		<echo message="" />
		<echo message="targets :" />
		<echo message="> ant update-ip" />
	</target>

	<target name="update-ip" description="create new site">
		<x:curl user="login:passwd" url="https://www.ovh.com/nic/update?system=dyndns&hostname=todo"/>
	</target>
</project>
EOF

