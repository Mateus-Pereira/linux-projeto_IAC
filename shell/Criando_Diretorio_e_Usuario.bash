#!/bin/bash

echo "Criando diretórios..."

mkdir /public
mkdir /admin
mkdir /venv
mkdir /sec

echo "Criando os grupos de user..."

groupadd GRP_ADM
groupadd GRP_VENV
groupadd GRP_SEC

echo "Criando os user..."

useradd mateus -m -s /bin/bash -p $(openssl passwd -crypt **colocar_senha_aqui**) -G GRP_ADM
useradd marcelo -m -s /bin/bash -p $(openssl passwd -crypt **colocar_senha_aqui**) -G GRP_ADM
useradd alessandro -m -s /bin/bash -p $(openssl passwd -crypt **colocar_senha_aqui**) -G GRP_ADM

useradd armando -m -s /bin/bash -p $(openssl passwd -crypt **colocar_senha_aqui**) -G GRP_VENV
useradd claudio -m -s /bin/bash -p $(openssl passwd -crypt **colocar_senha_aqui**) -G GRP_VENV
useradd fabrine -m -s /bin/bash -p $(openssl passwd -crypt **colocar_senha_aqui**) -G GRP_VENV

useradd daniel -m -s /bin/bash -p $(openssl passwd -crypt **colocar_senha_aqui**) -G GRP_SEC
useradd marcos -m -s /bin/bash -p $(openssl passwd -crypt **colocar_senha_aqui**) -G GRP_SEC
useradd rodrigo -m -s /bin/bash -p $(openssl passwd -crypt **colocar_senha_aqui**) -G GRP_SEC

echo "Especificando as permissões no diretorio..."

chown root:GRP_ADM /admin
chown root:GRP_VENV /venv
chown root:GRP_SEC /sec

chmod 770 /admin
chmod 770 /venv
chmod 770 /sec
chmod 777 /public

echo "Fim do codigo..."

