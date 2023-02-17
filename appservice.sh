#!/bin/bash

# print all environments to the temp file
printenv >> .env.tmp

# store variables only as APPSETTINGS provided by Azure portal
grep  '^APPSETTING_' .env.tmp > .env

# remove prefix
sed -i 's/APPSETTING_//g' .env

# remove temp file
rm -fr .env.tmp