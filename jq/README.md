# jq

> sources

[jq manual](https://stedolan.github.io/jq/manual/)

[jq playground](https://jqplay.org/)

> get all elements

```bash
jq -C "." users.json
```

> get first element in array

```bash
jq -C ".[0]" users.json
```

> get last element in array

```bash
jq -C ".[-1]" users.json
```

> filter elements in object

```bash
jq -C ".[]|{id:.id, name:.name}" users.json
```

> extract specific elements to a new json array

```bash
jq "[.[]|{name,phone}]" users.json > users_phone_name.json
jq ".results[]|{name:.name,gender:.gender}" swapi.json
```

> get all paths (nested included)

```bash
jq -C "[paths | join(\".\")]" users.json
```

> get all paths that contain `street`

```bash
jq -cC "paths | select(.[-1] == \"street\")" users.json
```

> extract time field in two formats

```bash
jq "{time:.not_after,unix:.not_after|fromdate}" google.json
```

> dates

```bash
# https://michaelheap.com/jq-select-date-before-today/
jq -C "[.[] | select(.eol > (now | strftime(\"%Y-%m-%d\")))]" date.json
# strptime is not supported in windows
jq -C ".not_after|strptime(\"%Y-%m-%dT%H:%M:%SZ\")" google.json
```
