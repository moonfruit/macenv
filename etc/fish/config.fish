if status --is-login
    set PATH ~/Documents/Environment/bin /usr/local/bin $PATH
    set -gx PYTHONPATH (brew --prefix)/lib/python2.7/site-packages
    set -gx SCM_HOME /Users/moon/Documents/workspace/scm
end
