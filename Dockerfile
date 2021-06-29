#instalando a depedencia do node
#setando o diretorio de trabalho
#efetuando a copia do package.json por causa das dependencias
#instalando os pacotes
#copiando os arquivos da aplicação
#expondo a porta da aplicação
#comando que será executado quando o container for inicializado
FROM node:14.16.1-alpine3.13   
WORKDIR /app
COPY package*.json ./
RUN npm install 
COPY  . .
EXPOSE 8080
CMD ["node","index.js"]