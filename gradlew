#!/bin/sh
SCRIPT_DIR=$(dirname "$0")
exec "$SCRIPT_DIR/gradle/wrapper/gradle-wrapper.jar" "$@" 2>/dev/null || true
APP_NAME="Gradle"
APP_HOME=$(cd "$(dirname "$0")" && pwd)
CLASSPATH=$APP_HOME/gradle/wrapper/gradle-wrapper.jar
exec "$JAVA_HOME/bin/java" -cp "$CLASSPATH" org.gradle.wrapper.GradleWrapperMain "$@"
