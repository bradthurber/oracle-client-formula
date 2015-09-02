{% from "oracle-client/map.jinja" import oracle_client_settings with context %}

# set oracle_client environment variables 
{{ oracle_client_settings.profileddir }}/oracle-client.sh:
  file.managed:
    - source: salt://oracle-client/files/oracle-client.sh
    - user: root
    - group: root
    - mode: 644
    - template: jinja