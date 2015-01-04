#!/bin/sh
JETTY_UTIL_LIB="/Users/moon/.m2/repository/org/eclipse/jetty/aggregate/jetty-all/9.2.5.v20141112/jetty-all-9.2.5.v20141112.jar"
java -cp "$JETTY_UTIL_LIB" org.eclipse.jetty.util.security.Password $*
