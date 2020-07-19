#! /usr/bin/bash
#



#NOME DO CRIADOR: Igor Oliveira
#DATA CRIADA: 18/07/2020
#Versão:1.2
#EMPRESA:MTD HACKER SEC
#GRUPO QUE FOI DIVULGADO PELA PRIMEIRA VEZ GRUPO HACKING: O SILÊNCIO 🐉

pkg install git
clear
figlet ngrok_Dark
if [ "ngrok_Dark" ];then
echo "INICIANDO A INSTALAÇÃO"
echo
cd ..
rm -rf ps.ngrok && rm -rf /data/data/com.termux/files/usr/bin/ngrok
git clone https://github.com/PSecurity/ps.ngrok
cd ps.ngrok
chmod +x ngrok
mv -v ngrok /data/data/com.termux/files/usr/bin
rm -rf ps.ngrok
echo
echo "DIGITE OU COLE AQUI O SEU ACESS TOKEN"
sleep 1.4
termux-open https://dashboard.ngrok.com/auth
read -p "[+]=>" acesstoken
ngrok authtoken $acesstoken
echo
echo "INSTALAÇÃO EFETUADA COM SUCESSO"
fi
exit
