;<?php die(''); ?>
;for security reasons, don't remove or modify the first line

[jdb]

; name of the default profile to use for any connection
default=jauth
jacl2_profile=jauth

[jdb:jauth]
driver=pdo
dsn="sqlite:var:db/jauth.db"
user=jauth
password=jauth

[jdb:lizlog]
driver=pdo
dsn="sqlite:var:db/logs.db"
user=lizmap
password=lizmap


; when you have charset issues, enable force_encoding so the connection will be
; made with the charset indicated in jelix config
;force_encoding = on

; with the following parameter, you can specify a table prefix which will be
; applied to DAOs automatically. For manual jDb requests, please use method
; jDbConnection::prefixTable().
;table_prefix =

; Example for pdo :
;driver=pdo
;dsn=mysql:host=localhost;dbname=test
;user=
;password=


[jcache]

; name of the default profil to use for cache
default=myapp

; each section correspond to a cache profile
; the name of the section is the name of the profile, to use as an argument
; for jCache methods
; Parameters in each sections depends of the driver type

[jcache:myapp]

; Parameters common to all drivers :

; disable or enable cache for this profile
enabled=1
; driver type (file, db, memcached)
driver=file
; TTL used (0 means no expire)
ttl=0


; Automatic cleaning configuration (not necessary with memcached)
;   0 means disabled
;   1 means systematic cache cleaning of expired data (at each set or add call)
;   greater values mean less frequent cleaning
;automatic_cleaning_factor = 0

; Parameters for file driver :

; directory where to put the cache files (optional default 'JELIX_APP_TEMP_PATH/cache/')
cache_dir=
; enable / disable locking file
file_locking=1
; directory level. Set the directory structure level. 0 means "no directory structure", 1 means "one level of directory", 2 means "two levels"...
directory_level=0
; umask for directory structure (default '0700')
directory_umask=
; prefix for cache files (default 'jelix_cache')
file_name_prefix=
; umask for cache files (default '0600')
cache_file_umask=

; Parameters for db driver :

; dao used (default 'jelix~jcache')
;dao = ""
; dbprofil (optional)
;dbprofile = "" 


; Parameters for memcached driver :

; Memcached servers. 
; Can be a list e.g
;servers = memcache_host1:11211,memcache_host2:11211,memcache_host3:11211 i.e HOST_NAME:PORT
;servers = 


