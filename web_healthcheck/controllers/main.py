# Copyright (C) 2022 Jorge L. Juarez (https://github.com/JorgeJuarezM)
# License AGPL-3.0 or later (http://www.gnu.org/licenses/agpl).

import json
import logging

from odoo import http

_log = logging.getLogger(__name__)


class HealthCheckController(http.Controller):
    @http.route("/healthcheck", methods=["GET"], type="http", auth="none")
    def healthcheck(self, **kwargs):
        return json.dumps({"success": True})
