# == Class Seafile::params
#
# Platform default variables from seafile.

class   seafile::params {
  case $::operatingsystem {
    'CentOS': { 
      $sysconfig = true
    }
    default: {
      fail("Module X not yet supported on ${::operatingsystem}")
    }
  }
  
  $source          = "https://bitbucket.org/haiwen/seafile/downloads/"
  $type            = "seafile-server" # Possible client use?
  $release_ver     = "3.1.7"
  $arch            = "_x86-64" # "_i386" # TODO - Add 32-Bit flag
  $zip             = ".tar.gz"
  #$filename        = "${type}_${release_ver}${architecture}${zip}" # Destination
  #$foldername      = "${type}-${release_ver}"
  #$url             = "${source}${filename}" 
  $webserver       = "nginx"
  $servername      = "seafile"
  $server_ip       = "127.0.0.1"
  $config_seafile  = false # May not need
  $ssl             = false # Cert Support Flag
  $dbtype          = "mysql"
  $seaf_user       = "seafile" # User Account
  $admin_email     = undef # For configuring email when ready.
  $admin_password  = undef # For configuring email when ready.

  # Seafile Ports
  $ccnet_port      = 10001
  $seafile_port    = 13418
  $httpserver_port = 8082
  
  $install_dir     = "/opt/seafile" # TODO - ensure exists
  
  # Seahub_settings.erb
  #$sql_db          = seahub-db # Testing
  $sql_user        = root
  $sql_password    = "password" # TODO - Temporary
  $sql_host        = "127.0.0.1"
  $sql_port        = 3306
  
  # Seahub_settings.py.erb
  $seafile_domain  = "seafile.sneakycactus.com"
  $seafile_db      = "seafile-db"
  $seahub_db       = "seahub-db"
  $ccnet_db        = "ccnet-db"
  $seaf_db_user    = "seafile"
  $seaf_db_group   = "seafile"
  $seaf_db_pass    = "password1234"
 
  # Media content location
  #$media_location  = "/home/cactus/seafile/seafile-server-3.1.6/seahub"
  $seafile_data_dir = "/seafile-server-latest/seahub"
  
 
  # TODO - Add cert support.


}