export ORACLE_HOME="$ENV/package/oracle"
export ORACLE_SID="oradb"

export NLS_LANG="SIMPLIFIED CHINESE_CHINA.AL32UTF8"

export PATH="$PATH:$ORACLE_HOME/bin"
ldpath "$ORACLE_HOME/lib"

if rlwrap true >/dev/null 2>&1; then
    alias sqlplus="rlwrap sqlplus"
fi

export DBI_TYPE="oracle"

export DBI_USER="orauser"
export DBI_PASS="orauser"
export DBI_CONNSTR="$DBI_USER/$DBI_PASS@$ORACLE_SID"
alias sqlci="sqlplus $DBI_CONNSTR"

#export DBI_APP_USER="app"
#export DBI_APP_PASS="app"
#export DBI_APP_CONNSTR="$DBI_APP_USER/$DBI_APP_PASS@$ORACLE_SID"
#alias sqlai="sqlplus $DBI_APP_CONNSTR"
