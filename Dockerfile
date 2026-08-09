# Okami Signal Lab — fully client-side (canvas + Web Audio). No Node backend.
FROM nginx:alpine
COPY nginx.conf /etc/nginx/conf.d/default.conf
COPY . /usr/share/nginx/html
# Avoid baking git metadata into the image layer noise
RUN rm -rf /usr/share/nginx/html/.git
EXPOSE 80
