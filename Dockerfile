# Usar una imagen base de Alpine
FROM alpine:latest

# Instalar dependencias necesarias
RUN apk update && \
    apk add --no-cache openjdk11 wget curl git bash

# Configurar variables de entorno para Java y Jenkins
ENV JAVA_HOME=/usr/lib/jvm/java-11-openjdk \
    JENKINS_HOME=/var/jenkins_home \
    JENKINS_VERSION=2.387.2 \
    JENKINS_URL=https://get.jenkins.io/war-stable/2.387.2/jenkins.war

# Crear el directorio de Jenkins
RUN mkdir -p $JENKINS_HOME

# Descargar Jenkins WAR
RUN wget $JENKINS_URL -O /usr/share/jenkins.war

# Crear un usuario root explícito
USER root

# Exponer el puerto predeterminado de Jenkins
EXPOSE 8080

# Comando para iniciar Jenkins
CMD ["java", "-jar", "/usr/share/jenkins.war"]

