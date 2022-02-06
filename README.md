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



✅ **Passo 01**; Repositório EPEL

Para adicionar o repositório EPEL, abra um terminal e use o seguinte comando:   

```package
sudo yum install epel-release
```

✅ **Passo 02**; Instalar o Nginx   

Para instalar o NGINX execute o seguinte comando yum:   

```nginx
sudo yum install nginx
```

Depois que você responder sim para o prompt, será instalado o NGINX.

✅ **Passo 03**; Iniciar o NGINX

Caso o Nginx não iniciar por si próprio. Execute para iniciar:   

```service
sudo systemctl start nginx.service
```
Execute os seguintes comandos para permitir tráfego HTTP e HTTPS:  

```firewall
sudo firewall-cmd --permanent --zone=public --add-service=http
sudo firewall-cmd --permanent --zone=public --add-service=https
sudo firewall-cmd --reload
```

Você pode fazer uma verificação no local imediatamente para verificar se tudo correu bem, visitando o endereço IP público do seu servidor em seu navegador:   

ip-do-servidor

Você vai ver a página  NGINX padrão, que está lá para fins informativos e de teste.

Antes de continuar, você provavelmente vai querer permitir o NGINX iniciar quando o seu sistema ligar.      
Para fazer isso, digite o seguinte comando:

```inicialização
sudo systemctl enable nginx.service
```

NGINX está agora instalado e funcionando!

✅ **Encontrar o endereço IP público do seu servidor**     

Você pode executar o seguinte comando para revelar o endereço IP público do servidor:     

```rede
ip addr show eth0 | grep inet | awk '{ print $2; }' | sed 's/\/.*$//'
```

✅ **root e configuração do servidor**

Se você quiser começar a servir as suas próprias páginas ou aplicações através do NGINX, você vai querer saber os locais dos arquivos de configuração e de raiz do servidor padrão.

✅ **pasta raiz padrão**

O diretório raiz do servidor padrão é **/usr/share/nginx/html**.      

Os arquivos que são colocados lá serão servidos no seu servidor web.      

Esse local é especificado no arquivo de configuração do bloco de servidor padrão que vem com o NGINX, que está localizado na **/etc/nginx/conf.d/default.conf**.

Quaisquer domínios de servidor adicionais (conhecidos como hosts virtuais no Apache), deve ser feita criação de novos arquivos de configuração em **/etc/nginx/conf.d**.    

Os arquivos que terminam com .conf no diretório serão carregados quando NGINX for iniciado.

O principal arquivo de configuração do NGINX está localizado na **/etc/nginx/nginx.conf**.

Este é o lugar onde você pode alterar as configurações de como o usuário que executa os processos, e o número de processos de trabalho que são gerados quando NGINX está sendo executado, entre outras coisas.
