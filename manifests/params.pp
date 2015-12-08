# == Class: amazon_s3::params
#
# Default parameter valuse for amazon_s3 module
#
class amazon_s3:: params {
  $aws_access_key       = undef
  $secret_access_key    = undef
  $s3fs_version         = 'v1.78',
  $include_mime_package = true,
}