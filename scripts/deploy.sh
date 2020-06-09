#!/bin/sh

OUTPUT_REPOSITORY_NAME="graille.github.io"

# If a command fails then the deploy stops
set -e

printf "\033[0;32mDeploying updates to GitHub...\033[0m\n"

# Build the project.
hugo -t zdoc

# Deploy
git clone https://github.com/graille/${OUTPUT_REPOSITORY_NAME}
rm -rf ./${OUTPUT_REPOSITORY_NAME}/*
mv public/* ./${OUTPUT_REPOSITORY_NAME}/

# Disable Jekyll (See https://help.github.com/en/github/working-with-github-pages/about-github-pages#user--organization-pages)
touch ./${OUTPUT_REPOSITORY_NAME}/.nojekyll
cd ./${OUTPUT_REPOSITORY_NAME}/

git add --all
git commit -am "rebuilding site $(date)"

# Push source and build repos.
git push origin master

cd ..
rm -rf ./${OUTPUT_REPOSITORY_NAME}