FROM luatoolz/nginx
ARG SOURCE_DATE_EPOCH=${SOURCE_DATE_EPOCH:-0}
RUN apk add --no-cache git
RUN luarocks install --dev autossl
ADD nginx.conf /etc/nginx/nginx.conf
CMD ["/usr/sbin/nginx", "-e", "stderr"]
