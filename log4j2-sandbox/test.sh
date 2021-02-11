#!/bin/bash
set -euo pipefail

rm log4j2-sandbox

./mvnw clean package

native-image -jar target/log4j2-sandbox.jar

#ls -la target/log4j2-sandbox.jar

time ./log4j2-sandbox