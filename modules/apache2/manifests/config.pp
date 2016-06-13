class apache2::config inherits apache2 {

 define createdir() {
  file { ["/opt/web/www"]:
    ensure  => 'directory',
    owner   => 'ubuntu',
    group   => 'ubuntu',
    mode    => 0755,
    recurse => true,
  }
  }


 define createvhost() {
  file { "/opt/apache/conf/httpd1.conf":
    ensure  => 'file',
    content => template('apache2/vhost.conf.erb'),
  }
  }


  createdir { $apache2::file_name: }
  createvhost { $apache2::file_name: }
}

