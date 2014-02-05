#!/bin/sh
# Shell file to run a sample of Astah API on Linux/Mac OS X

# Remove # from following two lines, if you'd like to use jdk.
# JAVA_HOME=/usr/lib/java7
# PATH=$JAVA_HOME/bin:$PATH

ASTAH_HOME=../
# ASTAH_HOME="/Applications/astah sysml/astah sysml.app/Contents/Java"
ASTAH_JAR="$ASTAH_HOME/astah-sys.jar"
API_JAR="$ASTAH_HOME/astah-api.jar"
CLASSPATH=.:"$ASTAH_JAR:$API_JAR"

# run
java -classpath "$CLASSPATH" APIForReadingModelsSample $1 $2