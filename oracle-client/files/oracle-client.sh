{%- from "oracle-client/map.jinja" import oracle_client_settings with context -%}

#
# DO NOT EDIT
#
# This file is managed by salt via {{ source }}
# Modify the config that generates this file instead
#

export ORACLE_CLIENT_HOME=/usr/lib/oracle/{{ oracle_client_settings.pkg_version_short_name }}/client64
export LD_LIBRARY_PATH=$ORACLE_CLIENT_HOME/lib:$LD_LIBRARY_PATH
export PATH=$ORACLE_CLIENT_HOME/bin:$PATH
