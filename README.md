# umami_4zeabur

umami docker file for [zeabur](https://zeabur.com)

## build

```shell
docker build -t umami_4zeabur:latest .
```

## deploy 

```shell
docker run --name umami -p 3000:3000 -e DATABASE_URL=mysql://root:root@192.168.7.120:3306/umami -d umami_4zeabur:latest
```

## deploy to zeabur

* Import your source code from GitHub

* define ENV DATABASE_URL

*  ☕️