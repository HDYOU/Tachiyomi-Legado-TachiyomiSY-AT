#!/usr/bin/env bash

# 出错退出
# set -e

export HOME="$(cd "`dirname "$0"`"/..; pwd)"

echo "run path: $PWD"


ls -lh
echo "fix Translate Language en to cn (chinese)"
sed -i '/implementation(projects.i18n)/a \    implementation("org.jetbrains.kotlinx:kotlinx-coroutines-play-services:1.8.1")' 

t_file="app/src/main/java/eu/kanade/translation/translators/MLKitLanguageTranslator.kt"
sed -i "s/TranslateLanguage.ENGLISH/TranslateLanguage.CHINESE/g" $t_file

t_file="app/src/main/java/eu/kanade/translation/translators/GoogleLanguageTranslator.kt"
sed -i 's/"en"/"zh-CN"/g' $t_file
sed -i "s/https:\/\/translate.google.com/https:\/\/google-translate-proxy.tantu.com/g" $t_file

exit 0