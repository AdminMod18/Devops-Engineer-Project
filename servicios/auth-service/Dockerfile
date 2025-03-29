# Usa una versión específica de Ubuntu para evitar cambios inesperados
FROM ubuntu:22.04

# Establece el directorio de trabajo
WORKDIR /app

# Actualiza e instala paquetes esenciales
RUN apt update && \
    apt install -y curl nano python3 python3-pip postgresql postgresql-contrib && \
    rm -rf /var/lib/apt/lists/*

# Instala pytest
RUN pip3 install pytest

# Otorga permisos si el pipeline tiene restricciones
RUN chmod -R 777 /app

# Mantiene el contenedor en ejecución
CMD ["tail", "-f", "/dev/null"]
