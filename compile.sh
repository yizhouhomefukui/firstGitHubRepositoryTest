#!/bin/sh
# Shell file to compile a sample of Astah API on Windows

# Remove # from following two lines, if you'd like to use jdk.
# JAVA_HOME=/usr/lib/java7
# PATH=$JAVA_HOME/bin:$PATH

ASTAH_HOME=../
# ASTAH_HOME="/Applications/astah sysml/astah sysml.app/Contents/Java"
ASTAH_SYSML_JAR="$ASTAH_HOME/astah-sys.jar"
API_JAR="$ASTAH_HOME/astah-api.jar"
CLASSPATH="$ASTAH_SYSML_JAR:$API_JAR"

javac -encoding sjis -classpath "$CLASSPATH" *.java