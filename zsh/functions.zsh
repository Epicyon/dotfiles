#
# Thanks to: Michael Prokop. 
# More documentation: 
# http://git.grml.org/?p=grml-etc-core.git;f=etc/zsh/zshrc;hb=HEAD#l1120
#

zstyle ':chpwd:profiles:/Users/ken/source/apcera(|/|/*)'  profile apcera

# configuration for profile 'default':
chpwd_profile_default()
{
  [[ ${profile} == ${CHPWD_PROFILE} ]] && return 1
  print "chpwd(): Switching to profile: default"

  export GIT_AUTHOR_EMAIL="ken@invalidlogic.com"
  export GIT_COMMITTER_EMAIL="ken@invalidlogic.com"
}

# configuration for profile 'apcera':
chpwd_profile_apcera()
{
  [[ ${profile} == ${CHPWD_PROFILE} ]] && return 1
  print "chpwd(): Switching to profile: $profile"

  export GIT_AUTHOR_EMAIL="ken@apcera.com"
  export GIT_COMMITTER_EMAIL="ken@apcera.com"
}

CHPWD_PROFILE='default'
function chpwd_profiles() {
    local -x profile

    zstyle -s ":chpwd:profiles:${PWD}" profile profile || profile='default'
    if (( ${+functions[chpwd_profile_$profile]} )) ; then
        chpwd_profile_${profile}
    fi

    CHPWD_PROFILE="${profile}"
    return 0
}
chpwd_functions=( ${chpwd_functions} chpwd_profiles )

chpwd_profile_default # run DEFAULT profile automatically
