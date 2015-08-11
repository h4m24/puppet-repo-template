# Each node maps to a one role, one role to rule them all ( all profiles )
# each profile customize the modules use and override attributes to customize machines
# all customizations must be done in profiles
#

case $::hostname {
  	'FE-Web': {
    include "roles::frontend_web"
  	}

  	'BE-DB-APP': {
    include "roles::backend_db_application"
  	}

  	'BE-DB-CMS': {
    include "roles::be_db_cms"
  	}

  	'BE-ALGRTH': {
    include "roles::be_db_cms"
    }

    'BE-CI': {
    include "roles::be_db_cms"
    }
    
    'BE-monitoring': {
    include "roles::be_db_cms"
    }

    default: { }
}