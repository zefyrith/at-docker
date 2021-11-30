# Flask settings

- Defaults to running app on port 5000
- App is run out of `/at` in container
- `.` is volume-mapped to `/at` in container

# Running using docker-compose

```
docker compose up
```

# Building image

```
docker build -t atweb
```