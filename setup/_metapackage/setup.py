import setuptools

with open("VERSION.txt", "r") as f:
    version = f.read().strip()

setuptools.setup(
    name="odoo14-addons-odoo-cloud-tools",
    description="Meta package for odoo-cloud-tools Odoo addons",
    version=version,
    install_requires=[
        "odoo14-addon-web_healthcheck",
    ],
    classifiers=[
        "Programming Language :: Python",
        "Framework :: Odoo",
        "Framework :: Odoo :: 14.0",
    ],
)
