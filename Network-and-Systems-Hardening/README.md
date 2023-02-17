El objetivo de este repositorio es crear un conjunto de recursos que sean de utilidad para el bastionado de redes y sistemas.
En esta parte del proyecto, nuestro objetivo será crear un conjunto de retos para evaluar los conocimientos de un técnico
al momento de bastionar una red y los sistemas conectados a la misma. Los pasos a seguir enumeran a continuación

- Creación de un modelo de red empresarial bastionada
- Creación de un plan de seguridad para el modelo de red y los sistemas
- Implementación de la red empresarial usando GNS3
- Aplicación del plan de seguridad en la red empresarial
- Comprobación del plan de seguridad
- Implementación de un proceso de cambios en el plan de seguridad

Los requisitos de cada elemento del proyecto se especifican a continuación


# Creación de un modelo de red empresarial bastionada

Sabemos que la empresa 

- Tiene 12 empleados
- Tiene 3 departamentos
    - Cobranza
    - Ventas
    - IT
- Tiene un servidor Ubuntu que ofrece los siguientes servicios
    - Páguina Web
    - FTP
    - Base de datos
    - SSH
- Tiene un Windows Server 2019 como  controlador de dominio
- Tiene 10 máquina Windows 10 conectadas al dominio

El objetivo es crear un modelo de red con nombres, dispositivos y características que sea funcional. Esto se hará en Cisco Paquet Tracer.

# Creación de un plan de seguridad para el modelo de red y los sistemas

Según las características que se han especificado en la empresa, crea un plan de seguridad para los dispositivos y la red
Todo debe estar en un mismo documento y debe tener, como mínimo, las siguientes secciones generales

- Recomendaciones de red
- Recomendaciones de sistemas
    - Windows 10
    - Windows Server
    - Linux

Pueden tomar como guia para la elaboración de estos documentos los [benchmarks](./resources/benchmarks) del repositorio

# Implementación de la red empresarial bastionada usando GNS3

Utilizando el modelo de red empresarial bastionada creado en Cisco Packet tracer, se debe simular en GNS3.
El entorno debe tener

- 1 Windows Server 2019 sin bastionar
    - 2GB RAM
    - 20GB HHD
    - AD y DNS
    - 12 usuarios
        - 1 Administrador
        - 3 Cobranza
        - 3 Ventas
        - 3 IT
- 1 Windows 10 Pro
    - 2GB RAM
    - 20GB HHD
    - Conectado al dominio como administrador
- 1 Ubuntu Server
    - 1 GB RAM
    - 10GB HHD
    - Servicios vulnerables
        - vsftp
        - mysql-server
        - openssh
        - apache
- 1 Kali para operaciones ofensivas 
    - 1 GB RAM
    - 10GB HHD
- 1 OpenVAS para operaciones de análisis
- 9 máquinas VNC
- Otros dispositivos necesarios para la seguridad de la red

Una vez instalado el entorno, se debe realizar el siguiente análisis

- Comprobar conectividad entre los dispositivos según la configuración de red establecida
- Acceso al dominio
- Acceso a los servicios HTTP, FTP, SSH y BBDD desde el exterior e interior
- Comprobación del estado de seguridad de dispositivos mediante OpenVAS y nuclei
- Comprobar vulnerabilidad de servicios mediante explotación con Kali

Los resultados de este análisis se debe poner en un documento de análisis que llamarémos *Estado de seguridad*

# Aplicación del plan de seguridad en la red empresarial

A partir del *Plan de seguridad* y *Estado de seguridad*, se deben realizar las acciones necesarias 

# Comprobación del plan de seguridad

Una vez que se ha aplicado el *Plan de seguridad*, realizar un nuevo análisis de seguridad. 
El resultado se documentará en un nuevo archivo de *Estado de seguridad 2*

# Implementación de un proceso de cambios en el plan de seguridad

A partir del *Plan de seguridad* y el *Estado de seguridad 2*, determina si se deben añadir modificaciones al plan
de seguridad según el proceso de cambios.
![NotFound](./resources/images/control-changes.png)
