#! /bin/bash

echo "Criando diretorios ..."

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Criando grupos de usuários..."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Criando usuários..."

useradd carlos -m -c "Carlos Silva" -s /bin/bash -p $(openssl passwd Senha123)
useradd maria-m -c "Maria Aparecida" -s /bin/bash -p $(openssl passwd Senha123)
useradd joao -m -c "João Gregório" -s /bin/bash -p $(openssl passwd Senha123)
useradd debora -m -c "Débora Nascimento" -s /bin/bash -p $(openssl passwd Senha123)
useradd sebastiana -m -c "Sebastiana Souza" -s /bin/bash -p $(openssl passwd Senha123)
useradd roberto -m -c "Roberto Carlos Silva" -s /bin/bash -p $(openssl passwd Senha123)
useradd josefina -m -c "Josefina do Amaral" -s /bin/bash -p $(openssl passwd Senha123)
useradd amanda -m -c "Amanda Ribeiro" -s /bin/bash -p $(openssl passwd Senha123)
useradd rogerio -m -c "Rogério Brito" -s /bin/bash -p $(openssl passwd Senha123)

echo "Adiconando necessidade de alteração de senha pelo usuário no primeiro logon..."

passswd carlos -e
passswd maria -e
passswd joao -e
passswd debora -e
passswd sebastiana -e
passswd roberto -e
passswd josefina -e
passswd amanda -e
passswd rogerio -e

echo "Adicionando usuários ao grupos..."

usermod -G GRP_ADM carlos
usermod -G GRP_ADM maria
usermod -G GRP_ADM joao
usermod -G GRP_VEN debora
usermod -G GRP_VEN sebastiana
usermod -G GRP_VEN roberto
usermod -G GRP_SEC josefina
usermod -G GRP_SEC amanda
usermod -G GRP_SEC rogerio

echo "Alterando grupos dos diretorios..."

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

echo "Alterando permissoes dos usuários..."

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec

echo "Script finalizado!!!!"


