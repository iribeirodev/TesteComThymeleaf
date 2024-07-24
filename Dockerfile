# Use uma imagem base do OpenJDK
FROM openjdk:21-jdk-slim

# Defina o diretório de trabalho dentro do contêiner
WORKDIR /app

# Copie o arquivo JAR gerado para o contêiner
COPY target/demo-0.0.1-SNAPSHOT.jar app.jar

# Exponha a porta que sua aplicação irá rodar
EXPOSE 8080

# Defina o comando para executar a aplicação
ENTRYPOINT ["java", "-jar", "app.jar"]