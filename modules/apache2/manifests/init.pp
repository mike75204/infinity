class apache2 (

$sname = $apache2::params::uname

) inherits apache2::params {

class {'apache2::config':} ->
class {'apache2::install':} ->
class {'apache2::service':}

}

