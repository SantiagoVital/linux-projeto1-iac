#!/bin/bash

echo "Criando diretórios..."

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Diretórios criados com sucesso!"

echo "Criando grupos de usuários..."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Grupos de usuários criados com sucesso!"

echo "Criando usuários..."

useradd carlos -m -s /bin/bash -p $(openssl passwd -crypt senha1) -G GRP_ADM
useradd maria -m -s /bin/bash -p $(openssl passwd -crypt senha2) -G GRP_ADM
useradd joao -m -s /bin/bash -p $(openssl passwd -crypt senha3) -G GRP_ADM

useradd debora  -m -s /bin/bash -p $(openssl passwd -crypt senha4) -G GRP_VEN
useradd sebastiana -m -s /bin/bash -p $(openssl passwd -crypt senha5) -G GRP_VEN
useradd roberto -m -s /bin/bash -p $(openssl passwd -crypt senha6) -G GRP_VEN

useradd josefina -m -s /bin/bash -p $(openssl passwd -crypt senha7) -G GRP_SEC
useradd amanda -m -s /bin/bash -p $(openssl passwd -crypt senha8) -G GRP_SEC
useradd rogerio -m -s /bin/bash -p $(openssl passwd -crypt senha9) -G GRP_SEC

echo "Usuários criados com sucesso!"

echo "Especificando persmissões dos diretórios..."

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico

echo "Especificações de permissões criadas com sucesso!"

echo "Script finalizado com sucesso!"
