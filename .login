#
# $Id: .login,v 1.115 2015/03/10 18:36:59 marki Exp $
#
echo starting .login
#
# are we at jlab
#
if ($HOST =~ *.jlab.org) then
    setenv AT_JLAB 1
else
    setenv AT_JLAB 0
endif
#
# set up the terminal
#
set prompt="%m:%n:%C> "  # prompt set to machine:current directory
#
# Set up shell environment:
#
set autolist
set history=1000
set savehist=(1000 merge)
set histdup=erase
#
# general environment
#
setenv EDITOR emacs
setenv CVS_RSH ssh
setenv SCR /scratch/$USER
setenv HDSVN https://halldsvn.jlab.org/repos
setenv P12SVN https://phys12svn.jlab.org/repos
setenv HOUSE 96.249.241.47
setenv SOFT /group/halld/Software
setenv BUILDS /group/halld/Software/builds
setenv SCRIPTS /group/halld/Software/scripts
setenv WEB /group/halld/www/halldweb/html
setenv LC_ALL en_US
#
# aliases
#
source ~marki/.alias
#
# X default settings
#
xrdb -load ~/.Xdefaults
#
# info
#
date
uname -a
uptime
who
#
# finished
#
echo ".login done"
