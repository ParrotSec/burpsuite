#!/bin/bash

echo "Starting burpsuite"

case $(dpkg-architecture -qDEB_HOST_ARCH) in
    amd64)
        /usr/lib/jvm/java-8-openjdk-amd64/bin/java -jar /usr/bin/burpsuite.jar
    ;;
    i386)
        /usr/lib/jvm/java-8-openjdk-i386/bin/java -jar /usr/bin/burpsuite.jar
    ;;
    arm64)
        /usr/lib/jvm/java-8-openjdk-aarch64/bin/java -jar /usr/bin/burpsuite.jar
    ;;
    armhf)
        /usr/lib/jvm/java-8-openjdk-arm/bin/java -jar /usr/bin/burpsuite.jar
    ;;
    *)
        echo "invalid architecture, starting with default java version"
        /usr/lib/jvm/default-java/bin/java -jar /usr/bin/burpsuite.jar
    ;;
esac

