#!/bin/bash

echo
echo "Download PrismJS"
echo "================"
echo "https://www.jsdelivr.com/package/npm/prismjs"
echo

# Change directory to the script's location
cd "$(dirname "$0")" || exit

echo "Configuring Version and URLs"
echo "----------------------------"
VERSION="1.30.0"
URL_JS="https://cdn.jsdelivr.net/npm/prismjs@${VERSION}/prism.min.js"
URL_CSS="https://cdn.jsdelivr.net/npm/prismjs@${VERSION}/themes/prism.min.css"

# Plugins
URL_PLUGIN_LINE_NUMBERS_JS="https://cdn.jsdelivr.net/npm/prismjs@${VERSION}/plugins/line-numbers/prism-line-numbers.min.js"
URL_PLUGIN_LINE_NUMBERS_CSS="https://cdn.jsdelivr.net/npm/prismjs@${VERSION}/plugins/line-numbers/prism-line-numbers.min.css"

# Languages
URL_LANG_CSHARP="https://cdn.jsdelivr.net/npm/prismjs@${VERSION}/components/prism-csharp.min.js"
URL_LANG_JAVA="https://cdn.jsdelivr.net/npm/prismjs@${VERSION}/components/prism-java.min.js"
URL_LANG_JSON="https://cdn.jsdelivr.net/npm/prismjs@${VERSION}/components/prism-json.min.js"
URL_LANG_XML="https://cdn.jsdelivr.net/npm/prismjs@${VERSION}/components/prism-xml-doc.min.js"
URL_LANG_JAVASCRIPT="https://cdn.jsdelivr.net/npm/prismjs@${VERSION}/components/prism-javascript.min.js"
URL_LANG_SHELL="https://cdn.jsdelivr.net/npm/prismjs@${VERSION}/components/prism-shell-session.min.js"

# License
URL_LICENSE="https://raw.githubusercontent.com/PrismJS/prism/v${VERSION}/LICENSE"

echo
echo "Configuring Target Directories and Files"
echo "----------------------------------------"
TARGET_WWW_DIR="../wwwroot"
TARGET_JS_DIR="${TARGET_WWW_DIR}/js"
TARGET_CSS_DIR="${TARGET_WWW_DIR}/css"

TARGET_JS_FILE="${TARGET_JS_DIR}/prism.min.js"
TARGET_CSS_FILE="${TARGET_CSS_DIR}/prism.min.css"

TARGET_PLUGIN_LINE_NUMBERS_JS="${TARGET_JS_DIR}/prism-line-numbers.min.js"
TARGET_PLUGIN_LINE_NUMBERS_CSS="${TARGET_CSS_DIR}/prism-line-numbers.min.css"

TARGET_LANG_CSHARP="${TARGET_JS_DIR}/prism-csharp.min.js"
TARGET_LANG_JAVA="${TARGET_JS_DIR}/prism-java.min.js"
TARGET_LANG_JSON="${TARGET_JS_DIR}/prism-json.min.js"
TARGET_LANG_XML="${TARGET_JS_DIR}/prism-xml-doc.min.js"
TARGET_LANG_JAVASCRIPT="${TARGET_JS_DIR}/prism-javascript.min.js"
TARGET_LANG_SHELL="${TARGET_JS_DIR}/prism-shell-session.min.js"

TARGET_LICENSE="${TARGET_WWW_DIR}/LICENSE-prismjs.txt"

echo
echo "Creating Directories"
echo "--------------------"
mkdir -p "$TARGET_JS_DIR"
mkdir -p "$TARGET_CSS_DIR"

echo
echo "Downloading Files"
echo "-----------------"
curl -o "$TARGET_JS_FILE" "$URL_JS"
curl -o "$TARGET_CSS_FILE" "$URL_CSS"

# Plugins
curl -o "$TARGET_PLUGIN_LINE_NUMBERS_JS" "$URL_PLUGIN_LINE_NUMBERS_JS"
curl -o "$TARGET_PLUGIN_LINE_NUMBERS_CSS" "$URL_PLUGIN_LINE_NUMBERS_CSS"

# Languages
curl -o "$TARGET_LANG_CSHARP" "$URL_LANG_CSHARP"
curl -o "$TARGET_LANG_JAVA" "$URL_LANG_JAVA"
curl -o "$TARGET_LANG_JSON" "$URL_LANG_JSON"
curl -o "$TARGET_LANG_XML" "$URL_LANG_XML"
curl -o "$TARGET_LANG_JAVASCRIPT" "$URL_LANG_JAVASCRIPT"
curl -o "$TARGET_LANG_SHELL" "$URL_LANG_SHELL"

# License
curl -o "$TARGET_LICENSE" "$URL_LICENSE"

echo
echo "==================================="
echo "Finished downloading PrismJS files"
echo
