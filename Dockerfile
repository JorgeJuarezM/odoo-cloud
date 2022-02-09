FROM odoo:14.0
USER root
RUN apt update -y && apt install -y git
RUN pip3 install -e "git+https://github.com/JorgeJuarezM/odoo-cloud#egg=odoo14-addon-web_healthcheck&subdirectory=setup/web_healthcheck"
USER odoo
