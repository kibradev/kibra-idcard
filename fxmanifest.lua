fx_version "adamant"

game "gta5"

description "Kibra-Kimlik - kibra#9999"

client_script {
    "client.lua"
}

server_script {
    '@es_extended/locale.lua',
	'@mysql-async/lib/MySQL.lua',	
    'server.lua'
}