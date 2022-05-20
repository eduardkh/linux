# jq

> get all elements

```bash
jq -C "." users.json
```

> get first element

```bash
jq -C ".[0]" users.json
```

> get last element

```bash
jq -C ".[-1]" users.json
```

> filter elements in object

```bash
jq -C ".[]|{id:.id, name:.name}" users.json
```

> get all paths (nested included)

```bash
jq -C "[paths | join(\".\")]" users.json
```

> get all paths that contain `street`

```bash
jq -cC "paths | select(.[-1] == \"street\")" users.json
```

> dates

```bash
# https://michaelheap.com/jq-select-date-before-today/
jq -C "[.[] | select(.eol > (now | strftime(\"%Y-%m-%d\")))]" date.json
```
