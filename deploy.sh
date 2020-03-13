#!/bin/bash
set -xe

if [ $TRAVIS_BRANCH == 'master' ] ; then
  eval "$(ssh-agent -s)"
  ssh-add ~/.ssh/travis_rsa

  git init

  git remote add deploy "travis@genox.io:/var/www/genox.io/html"
  git config user.name "Travis CI"
  git config user.email "travisci@genox.io"

  git add .
  git commit -m "Deploy"
  git push --force deploy master
else
  echo "Not deploying, since this branch isn't master."
fi
