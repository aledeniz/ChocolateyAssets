
$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://www.archimatetool.com/downloads/4.3.2/Archi-Win32-Setup-4.3.2.exe'
$url64      = 'https://www.archimatetool.com/downloads/4.3.2/Archi-Win64-Setup-4.3.2.exe'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'EXE'
  url           = $url
  url64bit      = $url64

  softwareName  = 'archi'

  checksum      = '935C50087AFBFD27D8897AB838F4D4FF'
  checksumType  = 'md5'
  checksum64    = '0B471ED7E4F7DB2F385AD26430EF3C0C'
  checksumType64= 'md5'

  silentArgs   = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
  validExitCodes= @(0)
}

Install-ChocolateyPackage @packageArgs










    








