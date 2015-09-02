{% from "oracle-client/map.jinja" import oracle_client_settings with context %}

{% for package in oracle_client_settings.packages.default %}
oracle_client_package_{{ package }}_install:
  pkg:
    - installed
    - sources: 
### TODO: This needs to go somewhere other than my DROPBOX!
      - {{ package }}: https://dl.dropboxusercontent.com/u/46209058/{{ package }}-{{ oracle_client_settings.pkg_version_name }}
### TODO: we would like to use this salt:// path instead but this at a minimum needs to be fixed first https://github.com/saltstack/salt/issues/25455
#      - {{ package }}: salt://oracle-client/files/{{ package }}-{{ oracle_client_settings.pkg_version_name }}
### TODO: Used for Salt POC - probably can be deleted
#      - {{ package }}: https://s3.amazonaws.com/karpractice/{{ package }}-{{ oracle_client_settings.pkg_version_name }}
{% endfor %}