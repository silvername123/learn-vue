
# 指定基础镜像为最新版 nginx
FROM nginx:latest

WORKDIR /test
# 将项目下的 ./configs 文件夹放置在镜像中的 /home/nginx/configs 文件夹
#COPY ./configs /test/nginx/configs
COPY ./configs /test/nginx/configs
COPY ./dist /test/dist/learn
# 运行 nginx
CMD ["nginx","-c","/test/nginx/configs/nginx.conf","-g", "daemon off;"]
# 镜像对外暴露 3000 端口
EXPOSE 9530
