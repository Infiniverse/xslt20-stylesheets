#!/bin/sh
set -e

CLIENT="/Applications/eXist-db/bin/client.sh -u admin -P admin"
$CLIENT -dm /db/apps/docbook/stylesheets -p xslt/base
