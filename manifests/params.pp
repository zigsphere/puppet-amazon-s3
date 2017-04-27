# == Class: amazon_s3::params
#
# Default parameter valuse for amazon_s3 module
#
class amazon_s3::params {
  $s3fs_version         = 'v1.80'
  $include_mime_package = true

  # required packages
  $base_packages = ['build-essential', 'automake', 'autotools-dev', 'g++',
  'git', 'libcurl4-gnutls-dev', 'libfuse-dev', 'libssl-dev', 'libxml2-dev',
  'make', 'pkg-config']
}