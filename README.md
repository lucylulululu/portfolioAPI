This application is Restful API using nodeJS(thinkJS) + MySQL

## /api/blog 获取全部文章信息（树结构）
## /api/blog/1 获取文章id为1的信息
## /api/blog/?top=3 获取top3文章的信息
## /api/blog/?searchText='' 获取收索文章的信息

## /api/product 获取全部产品信息（树结构）
## /api/product/1 获取产品id为1的信息
## /api/product/?top=3 获取top3产品的信息
## /api/product/?searchText='' 获取收索产品的信息

## /api/user 获取全部用户信息（树结构）
## /api/user/1 获取用户id为1的信息

Application created by [ThinkJS](http://www.thinkjs.org)

## Install dependencies

```
npm install
```

## Start server

```
npm start
```

## Deploy with pm2

Use pm2 to deploy app on production enviroment.

```
pm2 startOrReload pm2.json
```
