# postgres

The database service

## setting up password

The password is set by a secret file.
There is already a default one pack into the docker image.
Do not run it against production environment unless you overwrite the file

## Example

```yml
postgres:
  image: THIS-IMAGE
  expose:
    - 5432
  networks:
    - backend
  volumes:
    - postgres-data:/var/lib/postgersql/data
```

```yml
volumes:
  postgres-data:
```

## Environment variables

- `POSTGRES_PASSWORD_FILE`
- `POSTGRES_USER`
- `POSTGRES_DB`
