# yq

> install yq

```bash
sudo snap install yq
```

> convert JSON to YAML

```bash
yq -P users.json
```

> loop over the objects and get only the names

```bash
yq '.[].name' users.yaml
```

> convert the names to JSON

```bash
yq '[.[].name]' users.yaml -o json
```

> get first element

```bash
yq '[.[0].name]' users.yaml
```

> get last element

```bash
yq '[.[-1].name]' users.yaml
```

> get name and phone

```bash
# yq doesn't work properly (order issues)
yq '.[]|(.name,.phone)' users.yaml
# so i pipe it to jq, get what i need and pipe it back to yq
yq users.yaml -o json | jq '[.[]|.name,.phone]' | yq -P
```
