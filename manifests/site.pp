# Each node maps to a one role, one role to rule them all ( all profiles )
# each profile customize the modules use and override attributes to customize machines
# all customizations must be done in profiles
#

case $::hostname {
  	'FE-Web': {
    include "::roles::frontend-web"
  	}

  	'BE-DB-APP': {
    include "::roles::backend-db-application"
  	}

  	'BE-DB-CMS': {
    include "::roles::be-db-cms"
  	}

  	'BE-ALGRTH': {
    include "::roles::be-algorithm"
    }

    'BE-CI': {
    include "::roles::be-ci"
    }
    
    'BE-monitoring': {
    include "::roles::be-monitoring"
    }

    default: { }
}