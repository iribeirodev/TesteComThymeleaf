# Use uma imagem base do OpenJDK
FROM openjdk:21-jdk-slim

# Defina argumentos para permitir parametrização
ARG JAR_FILE=target/demo-0.0.1-SNAPSHOT.jar
ARG APP_PORT=8080

# Defina o diretório de trabalho dentro do contêiner
WORKDIR /app

# Copie o arquivo JAR gerado para o contêiner
COPY ${JAR_FILE} app.jar

# Exponha a porta que sua aplicação irá rodar
EXPOSE ${APP_PORT}

# Defina o comando para executar a aplicação
ENTRYPOINT ["java", "-jar", "app.jar"]
