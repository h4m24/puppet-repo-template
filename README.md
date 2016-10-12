# puppet-repo-template

This is an empty Template for puppet , the idea is to have an  intialized repo without any modules (except for roles and profiles) that follow role-profile pattern.

####no node classification is done in the repo , classification is done as follows:

1.every node/server/machine/instance maps to 1 Role only (includes that role)


2.every role is described using multiple profiles so roles can be customized using profiles


3.profiles include all the dirty work of overriding variables and including modules/classes/technologies, and over riding parameters of modules (like ssh or ntp or mysql ) is done only in profile, this convention make development on the repo easy by more than one person.
 
## Note:
 roles are names of machines that is service oriented,
 profiles are names of technology aspects of  a certain machines,
 modules are just technologies
 
## Example:

###Role:
front end web server
 
###profile/s: 
 base profile - configures very basic settings on the OS such as users, sysctl settings etc...
 nginx profile - configures the web server package and cof files
 ssh - configures ssh server and/or client
 
###modules:
 ssh
 nginx
 mongodb
 
