FROM registry.cn-beijing.aliyuncs.com/tqls_tools/nginx:1.18.0

ADD ./dist /tqls_system/apps/dist/

RUN rm -f  /etc/nginx/nginx.conf

COPY ./nginx.conf /etc/nginx/

EXPOSE 80

WORKDIR /

CMD [ "nginx","-g","daemon off;" ]
