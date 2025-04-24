@echo.
@echo Download PrismJS
@echo ================
@echo https://www.jsdelivr.com/package/npm/prismjs
@echo.

:: Shorten the prompt temporarily
@prompt $S

:: Change the current directory to the script's directory
@pushd %~dp0

@echo Configuring Version and URLs
@echo ----------------------------
set VERSION=1.29.0
set URL_JS=https://cdn.jsdelivr.net/npm/prismjs@%VERSION%/prism.min.js
set URL_CSS=https://cdn.jsdelivr.net/npm/prismjs@%VERSION%/themes/prism.min.css

:: Plugins
set URL_PLUGIN_LINE_NUMBERS_JS=https://cdn.jsdelivr.net/npm/prismjs@%VERSION%/plugins/line-numbers/prism-line-numbers.min.js
set URL_PLUGIN_LINE_NUMBERS_CSS=https://cdn.jsdelivr.net/npm/prismjs@%VERSION%/plugins/line-numbers/prism-line-numbers.min.css

:: Languages
set URL_LANG_CSHARP=https://cdn.jsdelivr.net/npm/prismjs@%VERSION%/components/prism-csharp.min.js
set URL_LANG_JAVA=https://cdn.jsdelivr.net/npm/prismjs@%VERSION%/components/prism-java.min.js
set URL_LANG_JSON=https://cdn.jsdelivr.net/npm/prismjs@%VERSION%/components/prism-json.min.js
set URL_LANG_XML=https://cdn.jsdelivr.net/npm/prismjs@%VERSION%/components/prism-xml-doc.min.js
set URL_LANG_JAVASCRIPT=https://cdn.jsdelivr.net/npm/prismjs@%VERSION%/components/prism-javascript.min.js
set URL_LANG_SHELL=https://cdn.jsdelivr.net/npm/prismjs@%VERSION%/components/prism-shell-session.min.js
@echo.
@echo.

@echo Configuring Target Directories and Files
@echo ----------------------------------------
set TARGET_JS_DIR=../wwwroot/js/prismjs
set TARGET_CSS_DIR=../wwwroot/css/prismjs

set TARGET_JS_FILE=%TARGET_JS_DIR%/prism.min.js
set TARGET_CSS_FILE=%TARGET_CSS_DIR%/prism.min.css

set TARGET_PLUGIN_LINE_NUMBERS_JS=%TARGET_JS_DIR%/prism-line-numbers.min.js
set TARGET_PLUGIN_LINE_NUMBERS_CSS=%TARGET_CSS_DIR%/prism-line-numbers.min.css

set TARGET_LANG_CSHARP=%TARGET_JS_DIR%/prism-csharp.min.js
set TARGET_LANG_JAVA=%TARGET_JS_DIR%/prism-java.min.js
set TARGET_LANG_JSON=%TARGET_JS_DIR%/prism-json.min.js
set TARGET_LANG_XML=%TARGET_JS_DIR%/prism-xml-doc.min.js
set TARGET_LANG_JAVASCRIPT=%TARGET_JS_DIR%/prism-javascript.min.js
set TARGET_LANG_SHELL=%TARGET_JS_DIR%/prism-shell-session.min.js
@echo.
@echo.

@echo Creating Directories
@echo --------------------
if not exist "%TARGET_JS_DIR%" mkdir "%TARGET_JS_DIR%"
if not exist "%TARGET_CSS_DIR%" mkdir "%TARGET_CSS_DIR%"
@echo.
@echo.

@echo Downloading Files
@echo -----------------
curl -o %TARGET_JS_FILE% %URL_JS%
curl -o %TARGET_CSS_FILE% %URL_CSS%

:: Plugin - Line Numbers
curl -o %TARGET_PLUGIN_LINE_NUMBERS_JS% %URL_PLUGIN_LINE_NUMBERS_JS%
curl -o %TARGET_PLUGIN_LINE_NUMBERS_CSS% %URL_PLUGIN_LINE_NUMBERS_CSS%

:: Languages
curl -o %TARGET_LANG_CSHARP% %URL_LANG_CSHARP%
curl -o %TARGET_LANG_JAVA% %URL_LANG_JAVA%
curl -o %TARGET_LANG_JSON% %URL_LANG_JSON%
curl -o %TARGET_LANG_XML% %URL_LANG_XML%
curl -o %TARGET_LANG_JAVASCRIPT% %URL_LANG_JAVASCRIPT%
curl -o %TARGET_LANG_SHELL% %URL_LANG_SHELL%
@echo.
@echo.

:: Restore the previous directory
@popd

:: Reset the prompt to the default
@prompt

@echo.
@echo ===================================
@echo Finished downloading PrismJS files
@echo.

@pause
