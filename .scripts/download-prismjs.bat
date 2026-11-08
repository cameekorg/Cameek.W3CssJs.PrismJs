@echo off
setlocal
echo.
@echo Download PrismJS
@echo ================
@echo https://www.jsdelivr.com/package/npm/prismjs
@echo.

:: Change the current directory to the script's directory
pushd "%~dp0" || exit /b 1

@echo Configuring Version and URLs
@echo ----------------------------
set VERSION=1.30.0
set URL_JS=https://cdn.jsdelivr.net/npm/prismjs@%VERSION%/prism.min.js
set URL_CSS=https://cdn.jsdelivr.net/npm/prismjs@%VERSION%/themes/prism.min.css

:: Plugins
set URL_PLUGIN_LINE_NUMBERS_JS=https://cdn.jsdelivr.net/npm/prismjs@%VERSION%/plugins/line-numbers/prism-line-numbers.min.js
set URL_PLUGIN_LINE_NUMBERS_CSS=https://cdn.jsdelivr.net/npm/prismjs@%VERSION%/plugins/line-numbers/prism-line-numbers.min.css

:: Languages
set URL_LANG_BASH=https://cdn.jsdelivr.net/npm/prismjs@%VERSION%/components/prism-bash.min.js
set URL_LANG_BATCH=https://cdn.jsdelivr.net/npm/prismjs@%VERSION%/components/prism-batch.min.js
set URL_LANG_C=https://cdn.jsdelivr.net/npm/prismjs@%VERSION%/components/prism-c.min.js
set URL_LANG_CPP=https://cdn.jsdelivr.net/npm/prismjs@%VERSION%/components/prism-cpp.min.js
set URL_LANG_CSHARP=https://cdn.jsdelivr.net/npm/prismjs@%VERSION%/components/prism-csharp.min.js
set URL_LANG_CSS=https://cdn.jsdelivr.net/npm/prismjs@%VERSION%/components/prism-css.min.js
::::::set URL_LANG_HTML=https://cdn.jsdelivr.net/npm/prismjs@%VERSION%/components/prism-html.min.js
set URL_LANG_JAVA=https://cdn.jsdelivr.net/npm/prismjs@%VERSION%/components/prism-java.min.js
set URL_LANG_JAVASCRIPT=https://cdn.jsdelivr.net/npm/prismjs@%VERSION%/components/prism-javascript.min.js
set URL_LANG_JSON=https://cdn.jsdelivr.net/npm/prismjs@%VERSION%/components/prism-json.min.js
set URL_LANG_KOTLIN=https://cdn.jsdelivr.net/npm/prismjs@%VERSION%/components/prism-kotlin.min.js
set URL_LANG_MARKUP_TEMPLATING=https://cdn.jsdelivr.net/npm/prismjs@%VERSION%/components/prism-markup-templating.min.js
set URL_LANG_PHP=https://cdn.jsdelivr.net/npm/prismjs@%VERSION%/components/prism-php.min.js
set URL_LANG_POWERSHELL=https://cdn.jsdelivr.net/npm/prismjs@%VERSION%/components/prism-powershell.min.js
set URL_LANG_PROPERTIES=https://cdn.jsdelivr.net/npm/prismjs@%VERSION%/components/prism-properties.min.js
set URL_LANG_PYTHON=https://cdn.jsdelivr.net/npm/prismjs@%VERSION%/components/prism-python.min.js
set URL_LANG_RUBY=https://cdn.jsdelivr.net/npm/prismjs@%VERSION%/components/prism-ruby.min.js
set URL_LANG_SHELL=https://cdn.jsdelivr.net/npm/prismjs@%VERSION%/components/prism-shell-session.min.js
set URL_LANG_SQL=https://cdn.jsdelivr.net/npm/prismjs@%VERSION%/components/prism-sql.min.js
set URL_LANG_XML=https://cdn.jsdelivr.net/npm/prismjs@%VERSION%/components/prism-xml-doc.min.js
set URL_LANG_YAML=https://cdn.jsdelivr.net/npm/prismjs@%VERSION%/components/prism-yaml.min.js

:: License
set URL_LICENSE=https://raw.githubusercontent.com/PrismJS/prism/v%VERSION%/LICENSE

:: Add URLs for all themes
set URL_THEME_DEFAULT=https://cdn.jsdelivr.net/npm/prismjs@%VERSION%/themes/prism.min.css
set URL_THEME_COY=https://cdn.jsdelivr.net/npm/prismjs@%VERSION%/themes/prism-coy.min.css
set URL_THEME_DARK=https://cdn.jsdelivr.net/npm/prismjs@%VERSION%/themes/prism-dark.min.css
set URL_THEME_FUNKY=https://cdn.jsdelivr.net/npm/prismjs@%VERSION%/themes/prism-funky.min.css
set URL_THEME_OKAIDIA=https://cdn.jsdelivr.net/npm/prismjs@%VERSION%/themes/prism-okaidia.min.css
set URL_THEME_SOLARIZED_LIGHT=https://cdn.jsdelivr.net/npm/prismjs@%VERSION%/themes/prism-solarizedlight.min.css
set URL_THEME_TOMORROW=https://cdn.jsdelivr.net/npm/prismjs@%VERSION%/themes/prism-tomorrow.min.css
set URL_THEME_TWILIGHT=https://cdn.jsdelivr.net/npm/prismjs@%VERSION%/themes/prism-twilight.min.css

@echo.
@echo.

@echo Configuring Target Directories and Files
@echo ----------------------------------------
set TARGET_WWW_DIR=../wwwroot
set TARGET_JS_DIR=%TARGET_WWW_DIR%/js
set TARGET_CSS_DIR=%TARGET_WWW_DIR%/css

set TARGET_JS_FILE=%TARGET_JS_DIR%/prism.min.js
set TARGET_CSS_FILE=%TARGET_CSS_DIR%/prism.min.css

set TARGET_PLUGIN_LINE_NUMBERS_JS=%TARGET_JS_DIR%/prism-line-numbers.min.js
set TARGET_PLUGIN_LINE_NUMBERS_CSS=%TARGET_CSS_DIR%/prism-line-numbers.min.css

set TARGET_LANG_BASH=%TARGET_JS_DIR%/prism-bash.min.js
set TARGET_LANG_BATCH=%TARGET_JS_DIR%/prism-batch.min.js
set TARGET_LANG_C=%TARGET_JS_DIR%/prism-c.min.js
set TARGET_LANG_CPP=%TARGET_JS_DIR%/prism-cpp.min.js
set TARGET_LANG_CSHARP=%TARGET_JS_DIR%/prism-csharp.min.js
set TARGET_LANG_CSS=%TARGET_JS_DIR%/prism-css.min.js
::::::set TARGET_LANG_HTML=%TARGET_JS_DIR%/prism-html.min.js
set TARGET_LANG_JAVA=%TARGET_JS_DIR%/prism-java.min.js
set TARGET_LANG_JAVASCRIPT=%TARGET_JS_DIR%/prism-javascript.min.js
set TARGET_LANG_JSON=%TARGET_JS_DIR%/prism-json.min.js
set TARGET_LANG_KOTLIN=%TARGET_JS_DIR%/prism-kotlin.min.js
set TARGET_LANG_MARKUP_TEMPLATING=%TARGET_JS_DIR%/prism-markup-templating.min.js
set TARGET_LANG_PHP=%TARGET_JS_DIR%/prism-php.min.js
set TARGET_LANG_POWERSHELL=%TARGET_JS_DIR%/prism-powershell.min.js
set TARGET_LANG_PROPERTIES=%TARGET_JS_DIR%/prism-properties.min.js
set TARGET_LANG_PYTHON=%TARGET_JS_DIR%/prism-python.min.js
set TARGET_LANG_RUBY=%TARGET_JS_DIR%/prism-ruby.min.js
set TARGET_LANG_SHELL=%TARGET_JS_DIR%/prism-shell-session.min.js
set TARGET_LANG_SQL=%TARGET_JS_DIR%/prism-sql.min.js
set TARGET_LANG_XML=%TARGET_JS_DIR%/prism-xml-doc.min.js
set TARGET_LANG_YAML=%TARGET_JS_DIR%/prism-yaml.min.js

set TARGET_LICENSE=%TARGET_WWW_DIR%/LICENSE-prismjs.txt

:: Add target file paths for all themes
set TARGET_THEME_DEFAULT=%TARGET_CSS_DIR%/prism.min.css
set TARGET_THEME_COY=%TARGET_CSS_DIR%/prism-coy.min.css
set TARGET_THEME_DARK=%TARGET_CSS_DIR%/prism-dark.min.css
set TARGET_THEME_FUNKY=%TARGET_CSS_DIR%/prism-funky.min.css
set TARGET_THEME_OKAIDIA=%TARGET_CSS_DIR%/prism-okaidia.min.css
set TARGET_THEME_SOLARIZED_LIGHT=%TARGET_CSS_DIR%/prism-solarizedlight.min.css
set TARGET_THEME_TOMORROW=%TARGET_CSS_DIR%/prism-tomorrow.min.css
set TARGET_THEME_TWILIGHT=%TARGET_CSS_DIR%/prism-twilight.min.css

@echo.
@echo.

@echo Creating Directories
@echo --------------------
if not exist "%TARGET_JS_DIR%" mkdir "%TARGET_JS_DIR%" || goto :download_failed
if not exist "%TARGET_CSS_DIR%" mkdir "%TARGET_CSS_DIR%" || goto :download_failed
@echo.
@echo.

@echo Downloading Files
@echo -----------------
curl --fail --show-error --location -o "%TARGET_JS_FILE%" "%URL_JS%" || goto :download_failed
curl --fail --show-error --location -o "%TARGET_CSS_FILE%" "%URL_CSS%" || goto :download_failed

:: Plugin - Line Numbers
curl --fail --show-error --location -o "%TARGET_PLUGIN_LINE_NUMBERS_JS%" "%URL_PLUGIN_LINE_NUMBERS_JS%" || goto :download_failed
curl --fail --show-error --location -o "%TARGET_PLUGIN_LINE_NUMBERS_CSS%" "%URL_PLUGIN_LINE_NUMBERS_CSS%" || goto :download_failed

:: Languages
curl --fail --show-error --location -o "%TARGET_LANG_BASH%" "%URL_LANG_BASH%" || goto :download_failed
curl --fail --show-error --location -o "%TARGET_LANG_BATCH%" "%URL_LANG_BATCH%" || goto :download_failed
curl --fail --show-error --location -o "%TARGET_LANG_C%" "%URL_LANG_C%" || goto :download_failed
curl --fail --show-error --location -o "%TARGET_LANG_CPP%" "%URL_LANG_CPP%" || goto :download_failed
curl --fail --show-error --location -o "%TARGET_LANG_CSHARP%" "%URL_LANG_CSHARP%" || goto :download_failed
curl --fail --show-error --location -o "%TARGET_LANG_CSS%" "%URL_LANG_CSS%" || goto :download_failed
::::::curl -o %TARGET_LANG_HTML% %URL_LANG_HTML%
curl --fail --show-error --location -o "%TARGET_LANG_JAVA%" "%URL_LANG_JAVA%" || goto :download_failed
curl --fail --show-error --location -o "%TARGET_LANG_JAVASCRIPT%" "%URL_LANG_JAVASCRIPT%" || goto :download_failed
curl --fail --show-error --location -o "%TARGET_LANG_JSON%" "%URL_LANG_JSON%" || goto :download_failed
curl --fail --show-error --location -o "%TARGET_LANG_KOTLIN%" "%URL_LANG_KOTLIN%" || goto :download_failed
curl --fail --show-error --location -o "%TARGET_LANG_MARKUP_TEMPLATING%" "%URL_LANG_MARKUP_TEMPLATING%" || goto :download_failed
curl --fail --show-error --location -o "%TARGET_LANG_PHP%" "%URL_LANG_PHP%" || goto :download_failed
curl --fail --show-error --location -o "%TARGET_LANG_POWERSHELL%" "%URL_LANG_POWERSHELL%" || goto :download_failed
curl --fail --show-error --location -o "%TARGET_LANG_PROPERTIES%" "%URL_LANG_PROPERTIES%" || goto :download_failed
curl --fail --show-error --location -o "%TARGET_LANG_PYTHON%" "%URL_LANG_PYTHON%" || goto :download_failed
curl --fail --show-error --location -o "%TARGET_LANG_RUBY%" "%URL_LANG_RUBY%" || goto :download_failed
curl --fail --show-error --location -o "%TARGET_LANG_SHELL%" "%URL_LANG_SHELL%" || goto :download_failed
curl --fail --show-error --location -o "%TARGET_LANG_SQL%" "%URL_LANG_SQL%" || goto :download_failed
curl --fail --show-error --location -o "%TARGET_LANG_XML%" "%URL_LANG_XML%" || goto :download_failed
curl --fail --show-error --location -o "%TARGET_LANG_YAML%" "%URL_LANG_YAML%" || goto :download_failed

:: License
curl --fail --show-error --location -o "%TARGET_LICENSE%" "%URL_LICENSE%" || goto :download_failed

:: Download all themes
curl --fail --show-error --location -o "%TARGET_THEME_DEFAULT%" "%URL_THEME_DEFAULT%" || goto :download_failed
curl --fail --show-error --location -o "%TARGET_THEME_COY%" "%URL_THEME_COY%" || goto :download_failed
curl --fail --show-error --location -o "%TARGET_THEME_DARK%" "%URL_THEME_DARK%" || goto :download_failed
curl --fail --show-error --location -o "%TARGET_THEME_FUNKY%" "%URL_THEME_FUNKY%" || goto :download_failed
curl --fail --show-error --location -o "%TARGET_THEME_OKAIDIA%" "%URL_THEME_OKAIDIA%" || goto :download_failed
curl --fail --show-error --location -o "%TARGET_THEME_SOLARIZED_LIGHT%" "%URL_THEME_SOLARIZED_LIGHT%" || goto :download_failed
curl --fail --show-error --location -o "%TARGET_THEME_TOMORROW%" "%URL_THEME_TOMORROW%" || goto :download_failed
curl --fail --show-error --location -o "%TARGET_THEME_TWILIGHT%" "%URL_THEME_TWILIGHT%" || goto :download_failed

@echo.
@echo.

:: Restore the previous directory
@popd

@echo.
@echo ===================================
@echo Finished downloading PrismJS files
@echo.

endlocal
exit /b 0

:download_failed
echo PrismJS download failed. 1>&2
popd
endlocal
exit /b 1
