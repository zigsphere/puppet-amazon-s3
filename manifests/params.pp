# @summary Default parameter valuse for amazon_s3 module
#
class amazon_s3::params {
  $s3fs_version = 'v1.80'

  if $::osfamily == 'RedHat' {
    $base_packages =
    ['openssl-devel', 'gcc', 'libstdc++-devel', 'gcc-c++', 'fuse', 'fuse-devel',
      'curl-devel', 'libxml2-devel', 'mailcap', 'git', 'automake']
    $include_mime_package = false
  }
  elsif $::osfamily == 'Debian' {
    $base_packages =
    ['build-essential', 'automake', 'autotools-dev', 'g++',
      'git', 'libcurl4-gnutls-dev', 'libfuse-dev', 'libssl-dev', 'libxml2-dev',
      'make', 'pkg-config']
    $include_mime_package = true
  }
}
