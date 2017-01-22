#!/usr/bin/env bash
set -e

if [ ! "env:$TRAVIS_BRANCH" == "env:master" ]; then
    echo not on master, not deploying
    exit 0
fi

echo "on master ✓"

if [ -z "$domain" ]; then
    echo "domain" variable not set
    exit 1
fi
echo "domain: $domain ✓"

if [ -z "$site_path" ]; then
    echo "site_path" variable not set
    exit 1
fi
echo "site path: $site_path ✓"

echo "zipping _site to site.zip..."
(cd _site/ && zip -r - .) > site.zip 2>/dev/null

echo "decrypting ssh key..."
openssl aes-256-cbc -k "$deploy_key_pass" -in deploy/deploy_key.enc -out deploy/deploy_key -d
chmod 400 deploy/deploy_key

echo "setting StrictHostKeyChecking for all domains..."
printf "Host *\n    StrictHostKeyChecking no\n" > ~/.ssh/config
chmod 400 ~/.ssh/config

echo "copying site to $domain..."
scp -i deploy/deploy_key site.zip deploy@$domain:~/site.zip
ssh -i deploy/deploy_key deploy@$domain 'rm -rf "'$site_path'"/* && unzip ~/site.zip -d "'$site_path'" && rm ~/site.zip'
