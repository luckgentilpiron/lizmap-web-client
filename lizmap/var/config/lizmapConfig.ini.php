;Services list the different map services (servers, generic parameters, etc.)
[services]
wmsServerURL="http://127.0.0.1/cgi-bin/qgis_mapserv.fcgi"
cacheServerURL="/mapcache/"
defaultRepository=montpellier

;Each repository must be set in a separate section
;The section name must begin with the prefix "repository:"

; Example of public repository
[repository:montpellier]
label="LizMap Demo"
path="../install/qgis/"

; Example of a repository wich will have access control
[repository:intranet]
label="Lizmap Demo - Intranet"
path="../install/qgis_intranet/"