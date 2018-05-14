FROM sickp/alpine-nginx

ADD *.conf /etc/nginx/
ADD startup.sh /startup.sh

ADD 500.html /usr/share/nginx/errors/500.html

EXPOSE 80

# We need to wait for the internal dns resolving to kick in
CMD /startup.sh
