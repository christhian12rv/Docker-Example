#Fala em qual imagem nossa aplicação vai se basear

FROM node

#Cria um diretório com o nome usr/src/app

WORKDIR usr/src/app

#Copia o arquivo package.json para o diretório dito no comanod WORKDIR acima

COPY package.json .

#Depois de copiado o arquivo, roda o comando npm install

RUN npm install

#Depois copia todos os arquivos restantes da aplicação para esse mesmo diretório

COPY . .

#Fala qual a porta dessa aplicação que vai utilizar para rodá-la (Tem que ser a mesma porta que faz a aplicação node rodar)

EXPOSE 3000

#Por último, roda o comando "node index.js" para iniciar a aplicação

CMD ["node", "index.js"]