Set-Location -Path $PSScriptRoot
$exePath = Join-Path -Path $PSScriptRoot -ChildPath "packwiz.exe"
& $exePath cf import "Darkhold Realms at War.zip"

& $exePath pin journeymap
& $exePath pin simply-swords

& $exePath rm better-fog
& $exePath rm brassamberbattletowers
& $exePath rm camps-castles-carriages
& $exePath rm entityculling
& $exePath rm knights-and-castles
& $exePath rm multiplayer-boss-attribute-modifier
& $exePath rm structory
& $exePath rm trek-mod
& $exePath rm visual-travelers-titles
& $exePath rm valarian-conquest-ef-compatibility

& $exePath mr add entityculling
& $exePath mr add knights-and-castles
& $exePath mr add camps-castles-carriages
& $exePath mr add structory
& $exePath mr add visual-travelers-titles


& $exePath update --all
& $exePath refresh
& $exePath rehash sha512
