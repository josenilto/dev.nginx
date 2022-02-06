## 🛠 Dev NGINX | Instalar e configurar

NginX, é um servidor web que também pode ser usado como proxy reverso, balanceador de carga, proxy de correio e cache HTTP.  
O software foi criado por Igor Sysoev e lançado publicamente em 2004.  

Nginx é um software livre e de código aberto, lançado sob os termos da licença BSD de 2 cláusulas

✅ **HTTP:** Entendendo a web

**Entenda os detalhes do protocolo HTTP**

Hypertext Transfer Protocol (HTTP) é um protocolo de camada de aplicação para transmissão de documentos hipermídia, como HTML.  
Ele foi projetado para comunicação entre navegadores da web e servidores da web, mas também pode ser usado para outros fins.  

O Hypertext Transfer Protocol é um protocolo de camada de aplicação no modelo de conjunto de protocolos da Internet para sistemas de informação hipermídia distribuídos e colaborativos



Saiba quando usar GET e POST

Estude sobre segurança na web e o HTTPS

A web stateful e a web stateless

Conheça as melhorias do HTTP/2


Proxy, Cache, balancer, https



✅ **Passo 01** - Repositório EPEL

Para adicionar o repositório EPEL, abra um terminal e use o seguinte comando:   

sudo yum install epel-release

✅ **Passo 02** - Instalar o Nginx   

Para instalar o NGINX execute o seguinte comando yum:   

sudo yum install nginx

Depois que você responder sim para o prompt, será instalado o NGINX.

✅ **Passo 03** - Iniciar o NGINX

Caso o Nginx não iniciar por si próprio. Execute para iniciar:   

sudo systemctl start nginx.service

