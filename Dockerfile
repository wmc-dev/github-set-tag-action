FROM node:lts
COPY gittag.sh /gittag.sh
ENTRYPOINT ["/gittag.sh"]