#!/bin/bash
set -xe

if [ $TRAVIS_BRANCH == 'master' ] ; then

  git init

  git remote add deploy "travis@genox.io:/var/www/genox.io"
  git config user.name "Travis CI"
  git config user.email "travisci@genox.io"

  git add .
  git commit -m "Deploy"
  git push --force deploy master

else
  echo "Not deploying, since this branch isn't master."
fi
