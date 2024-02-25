#!/bin/bash
# sources
# https://linuxize.com/post/curl-post-request/

get_weather() {
    echo "getting the weather"
    curl --silent localhost:5261/weatherforecast | jq
}

post_pdf() {
    echo "posting pdf"
    curl -F "fileName=linux" -F "document=@sample.pdf" localhost:5261/savepdf
}

while true ; do
    clear
    echo "Choose 1, 2, or 3"
    echo "1: Get the Weather"
    echo "2: Send PDF"
    echo "3: Quit"
    read -sn1
    case "$REPLY" in 
        1) get_weather;; 
        2) post_pdf;;  
        3) exit 0;; 
        *);;
    esac
    read -n1 -p "Press any key to continue"
done