#!/bin/sh
git -C public/ init
echo "You're a hecker if you found this, but you're also a bad person if you're reading it intentionally." > public/secret.txt
echo "-K" >> public/secret.txt
git -C public/ add secret.txt
git -C public/ commit -m "🔒 Secrets"
rm public/secret.txt
git -C public/ rm secret.txt
git -C public/ commit -m "🔑 Removing secrets..."
