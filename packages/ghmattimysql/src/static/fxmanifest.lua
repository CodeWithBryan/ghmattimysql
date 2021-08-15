fx_version 'adamant'
game 'common'

name 'ghmattimysql'
description 'MySQL Middleware for fivem using mysql.js.'
author 'Matthias Mandelartz'
version '1.3.2'
url 'https://github.com/GHMatti/ghmattimysql'

server_scripts {
  'ghmattimysql-server.js',
  'ghmattimysql-server.lua',
}

client_script 'ghmattimysql-client.lua'

files {
  'ui/index.html',
  'ui/js/app.js',
  'ui/css/app.css',
  'ui/fonts/*.woff',
  'ui/fonts/*.woff2',
  'ui/fonts/*.eot',
  'ui/fonts/*.ttf',
}

ui_page 'ui/index.html'

convar_category 'MySQL' {
    "GHMattiMySQL Configuration Options",
    {
        { "Connection String", "mysql_connection_string", "CV_STRING", "" },
        { "Debug Mode", "mysql_debug", "CV_MULTI", {
            { "None", "None" },
            { "Console", "Console" },
            { "File", "File"},
            { "FileAndConsole", "FileAndConsole" }
        }},
        { "Slow Query Warning", "mysql_slow_query_warning", "CV_COMBI", 100, 0, 5000 },
        { "Log Level", "mysql_log_level", "CV_INT", 15, 1, 15 },
        { "Log File Format", "mysql_log_file_format", "CV_STRING", "%s-%d.log" },
    }
}
