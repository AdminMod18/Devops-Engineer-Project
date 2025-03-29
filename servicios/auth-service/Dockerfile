# Usa una versión específica de Ubuntu para evitar cambios inesperados
FROM ubuntu:22.04

# Establece el frontend no interactivo para evitar prompts
ENV DEBIAN_FRONTEND=noninteractive

# Establece el directorio de trabajo
WORKDIR /app

# Actualiza e instala paquetes esenciales
RUN apt update && \
    apt install -y curl nano python3 python3-pip tzdata postgresql postgresql-contrib && \
    rm -rf /var/lib/apt/lists/*

# Configura la zona horaria por defecto (ejemplo: America/Bogota)
RUN ln -fs /usr/share/zoneinfo/America/Bogota /etc/localtime && \
    dpkg-reconfigure --frontend noninteractive tzdata

# Instala pytest
RUN pip3 install pytest

# Otorga permisos si el pipeline tiene restricciones
RUN chmod -R 777 /app

# Mantiene el contenedor en ejecución
CMD ["tail", "-f", "/dev/null"]
