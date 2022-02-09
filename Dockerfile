FROM odoo:14.0
USER root
RUN pip3 install odoo14-addon-web-healthcheck
USER odoo
