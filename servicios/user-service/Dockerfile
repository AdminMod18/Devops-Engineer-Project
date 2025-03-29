# Usa una versión específica de Ubuntu para evitar cambios inesperados
FROM ubuntu:22.04

# Establece el directorio de trabajo
WORKDIR /app

# Actualiza e instala paquetes esenciales
RUN apt update && \
    apt install -y curl nano && \
    rm -rf /var/lib/apt/lists/*

# Otorga permisos si el pipeline tiene restricciones
RUN chmod -R 777 /app

# Mantiene el contenedor en ejecución
CMD ["tail", "-f", "/dev/null"]
