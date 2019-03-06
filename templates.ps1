Param(
  $t
)

if (-not (Get-Module -ListAvailable -Name ClipBoardText)) {
  Import-Module ClipboardText
}

$template_filename = $t + '.txt'

$template = Join-Path -Path ($PSScriptRoot + '\data') -ChildPath 'templates'
$template = Join-Path -Path $template -ChildPath $template_filename

if (Test-Path -Path $template) {
  Write-Output ("Reading: " + $template)
  Get-Content $template | Set-ClipboardText
}
