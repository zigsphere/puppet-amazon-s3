## 2018-04-09 Release 0.2.1
### Summary
Added support for centos.

### Changes
  - Added initial support for centos operating systems.
  - Added usage of IAM roles instead of Access/Secret
  - Updated readme with additional information regarding iam roles

## 2017-04-28 Release 0.2.0
### Summary
Fixed potential mount options bug and puppet 4 support.

### Changes
  - Merged PR to remove mode on mount point.
  - Removed a redundant package.
  - Added Puppet 4 typed parameters.
  - Updated Readme.


## 2016-08-15 Release 0.1.7
### Summary
Added support for Ubuntu 16.04

### Changes
  - Added support for compiling on Ubuntu 16.04
  - Removed author from comments since there is a contributors.txt file
  - Updated the default version of s3fs to 1.80

## 2016-07-04 Release 0.1.6
### Summary
Added parameter checks

### Changes
  - Added a check for a paramter
  - Updated documentation on new parameter
  - Added a vagrant folder for testing

## 2015-12-10 Release 0.1.5
### Summary
Added params class

### Changes
  - Added a params class for better encapsulation.
  - Added a contributors file

## 2015-04-17 Release 0.1.4
### Summary
Added mime-support package toggle.

### Changes
  - Added a parameter to toggle if the mime-support package should be installed.

## 2015-03-04 Release 0.1.3
### Summary
Migrated ownership

### Changes
  - Migrated source code control to bitbucket
  - Changed ownership to landcare research puppetforge account
  - Added copywrite notice to all source files.
  
## 2015-02-19 Release 0.1.2
### Summary
License File

### Changes
 - Added license file.

## 2015-02-11 Release 0.1.1
### Summary
Updated options

### Changes
- Merged changes from Kentzo to specify mounting options
- Fixed an error where puppet would try a force remount on an already mounted bucket.
- Updated readme with new changes to s3_mount.

## 2015-01-16 Release 0.1.0
### Summary
Initial release.
