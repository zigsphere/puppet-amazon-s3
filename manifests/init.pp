# == Class: amazon_s3
#
# Installs and configures S3fs-fuse in order to mount S3 buckets.
#
# === Parameters
#
# [*aws_access_key*]
#  The access key for AWS.
#
# [*secret_access_key*]
#   The secret key for AWS.
#
# [*s3fs_version*]
#   The version of the s3fs.
#   See https://github.com/s3fs-fuse/s3fs-fuse
#
# [*include_mime_package*]
#   Installs mime which is a requirement to build; however,
#   if this is used with the puppetlabs/apache module, a duplicate
#   resource error will occur even when using ensure_packages.
#   So if mime_support package is declared outside, set this to false.
#   Default: true
#
# === Variables
#
# [*s3fs_src_dir*]
#   The source directory for compiling s3fs
#
# === Examples
#
#  class { 'amazon_s3':
#  }
#
# === Copyright
#
# GPL-3.0+
#
class amazon_s3 (
  Optional[String] $aws_access_key       = undef,
  Optional[String] $secret_access_key    = undef,
  String           $s3fs_version         = $amazon_s3::params::s3fs_version,
  Boolean          $include_mime_package =
  $amazon_s3::params::include_mime_package,
) inherits amazon_s3::params {

  anchor { 'amazon_s3::begin': }

  # == Variables == #
  $s3fs_src_dir = '/opt/s3fs'

  # Check supported operating systems
  unless $::osfamily == 'debian' or $::osfamily == 'RedHat' {
    fail("Unsupported OS ${::osfamily}.\
      Please use a debian or redhat based system")
  }

  class{'amazon_s3::install':
    require => Anchor['amazon_s3::begin'],
  }

  class{'amazon_s3::config':
    require => Class['amazon_s3::install'],
  }

  anchor { 'amazon_s3::end':
    require => Class['amazon_s3::config'],
  }
}
