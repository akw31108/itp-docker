#nginx:alpine3.21
FROM nginx:alpine3.21 AS nginx-default
# use additional context called final-project and copy out docs folder contents to the default nginx html folder: /usr/share/nginx/html
# copy recursively the contents of the docs folder to the default nginx html folder
COPY --from=final-project docs/* /usr/share/nginx/html/
RUN mv /usr/share/nginx/docs /usr/share/nginx/html
