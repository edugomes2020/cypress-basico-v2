# Este Script tem o objetivo de realizar a criação de um projeto Cypress base para automação de projeto UI
# Instalação Cypress v12.3.0
# Configuração dos comandos
#	"cy:open" abrir o Cypress
#	"cy:run" rodar os testes no chrome em modo headless
#	"cy:parallel" rodar os testes contidos na pasta e2e no chrome em modo headless com paralelismo em 2 threads
# Instalação Typescript
# Criação da pasta cypress e criação do arquivo tsconfig.json com as configuraçõe básicas
# Instalação cypress-parallel v0.9.1 (plugin de execução paralela)
# Criação dos arquivos "cypress.env.exasmple.json" e "cypress.env.json"

# Para rodar o script abra o git bash e rode o comando dentro da pasta onde se quer criar o novo projeto: ./project_base_creation.sh <projectName>

mkdir

cd

touch .gitignore

echo "node_modules/
cypress/downloads/
cypress/screenshots/
cypress/videos/
cypress.env.json" > .gitignore

echo "# Automação Cypress - $1

npm init -y

echo "{
 \"name\":\"$1\",
 \"version\":\"1.0.0\",
 \"description\":\"\",
 \"main\":\"index.js\",
 \"scripts\":{
   \"cy:open\":\"cypress open\",
   \"cy:run\":\"cypress run --browser chrome\",
   \"cy:parallel\":\"cypress-parallel -s cy:run -t 2 -d cypress/e2e/\", 
 },
 \"keywords\":[],
 \"author\":\"\",
 \"license\":\"ISC\",
}" > package.json

npm i cypress@latest -D

npm i typescript@latest -D

npm i cypress-parallel@latest -D

touch cypress.env.json

echo "{}" > cypress.env.json

touch cypress.env.example.json

echo "{}" > cypress.env.example.json

mkdir cypress

touch cypress/tsconfig.json

echo "{
	\"\compilerOptions": {
		\"target\": \"es6\",
		\"lib\": [\"es6\", \"dom\"],
		\"types\": [\"cypress\", \"node\"]	
	},
	\"include\": [\"**/*.ts\"]	
}" > cypress/tsconfig.json

npm run cy:open


