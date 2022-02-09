FROM odoo:14.0
VOLUME ["/setup"]

USER root
RUN apt update -y && apt install -y git

#COPY ./setup /setup
#COPY ./web_healthcheck /setup/web_healthcheck/odoo/addons/web_healthcheck

#ARG ODOO_ENV="dev"
#RUN if [[ "$ODOO_ENV" = "dev" ]] ; then cd /setup/web_healthcheck && python3 -m pip install -e .; fi
#RUN if [[ "$ODOO_ENV" = "test" ]] ; then pip3 install -e "git+https://github.com/JorgeJuarezM/odoo-cloud#egg=odoo14-addon-web_healthcheck&subdirectory=setup/web_healthcheck"; fi
#RUN if [[ "$ODOO_ENV" = "prod" ]] ; then cd /setup/web_healthcheck && python3 -m pip install odoo14-addon-web-healthcheck; fi
RUN python3 -m pip install odoo14-addon-web-healthcheck
USER odoo
