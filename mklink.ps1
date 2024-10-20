#Paths
$factorio_path = "C:\BARTL\Factorio_1.1.107\"
$mods_folder = "$factorio_path\mods"
$curr_path = Get-Location

#Mods
$mod1 = "crisentech"
$mod2 = "crisentech-graphics"

# Wiązania
$link1 = "$mods_folder\$mod1"
$link2 = "$mods_folder\$mod2"

# Ścieżki źródłowe
$src1 = "$curr_path\$mod1"
$src2 = "$curr_path\$mod2"

# Tworzenie linków (jeśli jeszcze nie istnieją)
if (-not (Test-Path $link1)) {
    New-Item -ItemType SymbolicLink -Path $link1 -Target $src1
    Write-Output "Symlink dla $mod1 został utworzony."
} else {
    Write-Output "Symlink dla $mod1 już istnieje."
}

if (-not (Test-Path $link2)) {
    New-Item -ItemType SymbolicLink -Path $link2 -Target $src2
    Write-Output "Symlink dla $mod2 został utworzony."
} else {
    Write-Output "Symlink dla $mod2 już istnieje."
}