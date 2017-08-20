From python:3.6

ENV APPDIR /cot-dsm
RUN pip install uwsgi

COPY cot-dsm ${APPDIR}
RUN pip install -e ${APPDIR}

COPY uwsgi.ini ${APPDIR}/
COPY docker-entrypoint.sh /

ENTRYPOINT ["/docker-entrypoint.sh"]

EXPOSE 80

