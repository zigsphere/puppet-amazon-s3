# @summary The individual s3 mount.
#
# Requires amazon_s3.
#
# @param mount_point
#   The path to mount.  Note, this module ensures the directory exists.
#
# @param ensure
#   Controls the mount and accepts the same values as the 'mount' type.
#
# @param options
#   Options used when mounting.
#
# @param s3_bucket_name
#   The name of the s3 bucket. By default, it uses the title.
#
define amazon_s3::s3_mount(
  $mount_point,
  String $ensure         = 'mounted',
  String $options        = '_netdev,nonempty,allow_other,multireq_max=5',
  String $s3_bucket_name = $title,
){
  file{$mount_point:
    ensure => directory,
  }

  # mount the s3 bucket
  mount { $title:
    ensure   => $ensure,
    name     => $mount_point,
    device   => "s3fs#${s3_bucket_name}",
    fstype   => 'fuse',
    options  => $options,
    remounts => false,
    require  => File[$mount_point],
  }
}
