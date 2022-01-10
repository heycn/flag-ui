rm -rf dist &&
yarn build &&
cd dist &&
git init &&
git add . &&
git commit -m "update website" &&
git branch -M main &&
git remote add origin git@github.com:heycn/wheel-ui-website.git &&
git push -f -u origin main &&
cd -
echo https://heycn.github.io/wheel-ui-website/index.html