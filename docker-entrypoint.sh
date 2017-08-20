#!/bin/sh

cd ${APPDIR}

/usr/local/bin/uwsgi --ini ${APPDIR}/uwsgi.ini

