FROM ckeyer/obc:base

RUN git clone https://github.com/hyperledger/fabric.git $GOPATH/src/github.com/hyperledger/fabric && \
	cd $GOPATH/src/github.com/hyperledger/fabric/ && \
	go build -o $GOPATH/bin/peer && \
	go build -o $GOPATH/bin/obc-ca ./membersrvc/server.go 

WORKDIR  $GOPATH/src/github.com/hyperledger/fabric/