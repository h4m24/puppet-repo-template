# Class: prepare
# this profile will prepare all the nodes by configuring the basics
# like ssh keys ntp packages etc ...

class profiles::prepare {
	

	# install ntp package
	include ntp
	# add Users
	
	# configure ssh module


}