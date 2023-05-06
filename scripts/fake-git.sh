#!/bin/sh
BASEDIR=$(dirname "$0")/..
git -C "${BASEDIR}/public/" init
echo "You're a hecker if you found this, but you're also a bad person if you're reading it intentionally." > "${BASEDIR}/public/secret.txt"
echo "-K" >> "${BASEDIR}/public/secret.txt"
git -C "${BASEDIR}/public/" add secret.txt
git -C "${BASEDIR}/public/" commit -m "🔒 Secrets"
rm public/secret.txt
git -C "${BASEDIR}/public/" rm secret.txt
git -C "${BASEDIR}/public/" commit -m "🔑 Removing secrets..."