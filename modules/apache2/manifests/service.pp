class apache2::service inherits apache2 {


  exec { 'restart apache':
    command => 'apachectl restart',
    path    => '/opt/apache/bin',
  }

}
