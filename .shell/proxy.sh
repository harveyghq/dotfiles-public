# search history for `export http_proxy` and grep the URL
proxy_url=$(grep -oP '(?<=http_proxy=).+' ~/.zsh_history | tail -n 1)
if [ -n "$proxy_url" ]; then
    echo "Proxy URL: $proxy_url"
    export http_proxy=$proxy_url
    export https_proxy=$proxy_url
    export ftp_proxy=$proxy_url
    export no_proxy="localhost"
    export HTTP_PROXY=$proxy_url
    export HTTPS_PROXY=$proxy_url
    export FTP_PROXY=$proxy_url
    export NO_PROXY="localhost"
    echo "Proxy environment variables set."
else
    echo "No proxy URL found in history."
fi