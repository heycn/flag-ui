rm -rf dist &&
yarn build &&
cd dist &&
git init &&
git add . &&
git commit -m "update" &&
git branch -M master &&
git remote add origin https://github.com/heycn/wheel-ui-website.git &&
git push -f -u origin master &&
cd -
echo https://heycn.github.io/wheel-ui-website/index.html