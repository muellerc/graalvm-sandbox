#!/bin/bash
set -euo pipefail

rm log4j2-sandbox

./mvnw clean package

native-image -jar target/log4j2-sandbox.jar

ls -la log4j2-sandbox

time ./log4j2-sandbox

#upx --best -o log4j2-sandbox-upx log4j2-sandbox

#time ./log4j2-sandbox-upx