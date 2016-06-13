class apache2::service inherits apache2 {


  exec { 'restart apache':
    command => 'apachectl restart',
    path    => '/opt/apache/bin',
  }

  exec { 'apache started OK if result > 0':
    path => '/usr/local/bin/:/bin:/usr/bin',
    command => 'ps -ef | grep -v grep | grep httpd | wc -l',
    logoutput => true
  }

}
