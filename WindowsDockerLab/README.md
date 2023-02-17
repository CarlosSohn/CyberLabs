# Requisitos:
- Windows 10 Professional
- Hyper-V
- Docker Desktop

# Preparación
## Ejecutar Docker.
En la parte de opciones, asegurate de que estás usando la versión de Docker para ejecutar contenedores de Windows
En la PowerShell puede ejecutar 

	&$Env:ProgramFiles\Docker\Docker\DockerCli.exe -SwitchDaemon

## Descarga la imagen
Puedes encontrar una lista de las imagenes disponibles [aqui](https://learn.microsoft.com/es-es/virtualization/windowscontainers/manage-containers/container-base-images)
A continuación se muestra un ejemplo para descargar la versión 2019 de Windows
	docker pull mcr.microsoft.com/windows:ltsc2019
Si al intentar descargar la imagen te encuentras con el problema siguiente:
	no matching manifest for linux/amd64 in the manifest list entries
Tienes dos opciones:
- Reiniciar Docker
- Habiltar la conexión a internet para la descaga de images mediante Hyper-V
	Enable-WindowsOptionalFeature -Online -FeatureName $("Microsoft-Hyper-V", "Containers") -All
