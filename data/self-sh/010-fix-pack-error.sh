#!/usr/bin/env bash

# 出错退出
# set -e

export HOME="$(cd "`dirname "$0"`"/..; pwd)"

echo "run path: $PWD"


ls -lh
echo "fix Unresolved reference"
sed -i '/implementation(projects.i18n)/a \    implementation("org.jetbrains.kotlinx:kotlinx-coroutines-play-services:1.8.1")' app/build.gradle.kts

exit 0