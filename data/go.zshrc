# Go
#export GOPATH="$HOME/go"
#export PATH="$PATH:/usr/local/go/bin:$GOPATH/bin" 
export PATH=$PATH:/usr/local/go/bin
export GOPATH=$(go env GOPATH)
export GOROOT=$(go env GOROOT)
export PATH="$PATH:$GOPATH/bin"
