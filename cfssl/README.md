# CFSSL

[medium tutorial](https://rob-blackbourn.medium.com/how-to-use-cfssl-to-create-self-signed-certificates-d55f76ba5781)

> install the tool

```bash
go install github.com/cloudflare/cfssl/cmd/cfssl@master
go install github.com/cloudflare/cfssl/cmd/cfssljson@master
```

> create CA

```bash
cfssl gencert -initca ca.json | cfssljson -bare ca
```

> create intermediate CA and sign it with the CA

```bash
cfssl gencert -initca intermediate-ca.json | cfssljson -bare intermediate_ca
cfssl sign -ca ca.pem -ca-key ca-key.pem -config cfssl.json -profile intermediate_ca intermediate_ca.csr | cfssljson -bare intermediate_ca
```

> create host cert and sign it with the intermediate CA

```bash
cfssl gencert -ca intermediate_ca.pem -ca-key intermediate_ca-key.pem -config cfssl.json -profile=peer host-1.json | cfssljson -bare host-1-peer
```
