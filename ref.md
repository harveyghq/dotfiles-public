## golang

download src code: `curl -sSfLO https://go.dev/dl/go1.21.6.linux-amd64.tar.gz`

```sh
sudo rm -rf /usr/local/go && sudo tar -C /usr/local -xzf go1.21.6.linux-amd64.tar.gz
echo "\nexport PATH=\$PATH:/usr/local/go/bin\n" >> ~/.profile
source ~/.profile
go version
```

## golangci-lint

```sh
curl -sSfL https://raw.githubusercontent.com/golangci/golangci-lint/master/install.sh | sh -s -- -b $(go env GOPATH)/bin v1.55.2
golangci-lint --version
```


