#! /bin/sh
# Script to show cib success

# Source debconf library
. /usr/share/debconf/confmodule

# Create debconf template on-the-fly
cat > /tmp/cibconfig.templates <<'!EOF!'
Template: cib-config/text
Type: text
Description: Cloud In a Box is Ready!
  Steps to perform after reboot.
  1. Register at https://www.megam.co and keep the registered [email id, api key] handy

  2. Use a system with a browser to configure Cloud In Box.
     Get started by entering http://testing:8086 in your browser.

  For more information http://www.gomegam.com/docs
!EOF!

# Load the template that was just created
debconf-loadtemplate cib-config /tmp/cibconfig.templates

# Set title for the dialog
db_settitle cib-config/title

db_input critical cib-config/text

db_go
