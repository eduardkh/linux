# CFSSL self-signed

> Generating self-signed root CA certificate and private key

```bash
cfssl genkey -initca csr.json | cfssljson -bare ca
```
