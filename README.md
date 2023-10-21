[![author](https://img.shields.io/badge/author-carloshaar-silver.svg)](https://www.linkedin.com/in/carloshaar) 
[![](https://img.shields.io/badge/MS-PowerBI-gold.svg)](https://powerbi.microsoft.com/pt-br/) 
[![](https://img.shields.io/badge/Python-3.7+-blue.svg)](https://www.python.org/downloads/release/python-365/) 
[![](https://img.shields.io/badge/MS-Excel-darkgreen.svg)](https://www.microsoft.com/pt-br/microsoft-365/excel)
[![](https://img.shields.io/badge/Google-Colab-orange.svg)](https://colab.research.google.com) 
[![GPLv3 license](https://img.shields.io/badge/License-GPLv3-blue.svg)](http://perso.crans.org/besson/LICENSE.html) 
[![contributions welcome](https://img.shields.io/badge/contributions-welcome-brightgreen.svg?style=flat)](https://github.com/carloshaar/)
![Postgres](https://img.shields.io/badge/postgres-%23316192.svg?style=for-the-badge&logo=postgresql&logoColor=white)
![Azure](https://img.shields.io/badge/azure-%230072C6.svg?style=for-the-badge&logo=microsoftazure&logoColor=white)


## Projeto Final Santander Bootcamp 2023 - Ciência de Dados com Python

## Bootcamp Ciência de Dados com Python - Santander Becas | dio.me


Iniciei o projeto seguindo as ferramentas sugeridas, Azure + Mysql, porém no Power BI não estava conseguindo conectar ao MySql, mesmo instalando o connector.

Como a própria Juliana explicou, ela optou pelo MySql por questão de familiaridade, para entregar o projeto eu optei por usar o PostgreSQL, BD o qual utilizo desde 2016 e  sem entrar em mérito de ferramenta pra mim ele atende todos os requisitos mesmo de BD pagos.

Estou postando alguns arquivos com as imagens do início do projeto, as telas da Azure e do Mysql Workbench, onde já estava tudo rodando, com a inserção dos dados inclusive, porém a conclusão com a integração do PowerBI foi feita com uma instância PostgreSQL na Azure e acesso via Dbeaver, além das imagens tbm deixei o dump da minha base PostgreSQL versão final.

#O que foi feito via SQL / PostgreSQL;
1 - Vinculação do nome do gestor com o Funcionário;
2 - Vinculação do nome do gestor com o Departamento;

Por ser uma rotina que utilizo em meu dia a dia, optei por criar uma nova coluna e popular ela com um script que gerou um update, conforme print "PostgreSQL-ManagerxEmployee.png" em anexo.


#O que foi feito via PowerBI; (arquivo .pbix será disponibilizado em anexo aqui no repositório)
1 - Conversão coluna salary em decimal;
2 - Não importou nenhuma linha null portanto não houve remoção de linha;
3 - Criei um gráfico para apresentar o número de horas por projeto;
4 - Separação da coluna Address em 4 Colunas, Street, Number, City e State; (Divisão de Colunas pelo - a direita e - a esquerda, para não gerar conflito no registro Fire-Oak)
5 - Utilização do recurso Mesclar consultas, para combinar o departamento de cada funcionário;
6 - Utilização do recurso Mesclar colunas, para unificar os campos Fname e Lname em uma única coluna Full Name;
7 - Utilizei Gráfico Árvore Hierárquica para apresentar os Gestores e seus respectivos Funcionários;

8 - Para gerar a lista de Departamento por localização, foi utilizada a função mesclar, caso utilizasse a opção atribuir, como existem o departamento de Research em 3 locais isso geraria duplicidade de registro.


**Links das minhas redes:**
* [LinkedIn](https://www.linkedin.com/in/carloshaar/)

## Outros Projetos Meus:
# Python
https://github.com/carloshaar/inside_airbnb_lisbon

https://github.com/carloshaar/nps_openai

# PowerBI
https://github.com/carloshaar/bootcamp_santander_dio_pbi1

https://github.com/carloshaar/dashboard_logistica_datab

https://github.com/carloshaar/dashboard_comercial_datab
