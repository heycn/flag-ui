rm -rf dist &&
yarn build &&
cd dist &&
git init &&
git add . &&
git commit -m "update website" &&
git remote add origin git@gitee.com:heycn/flag-ui-website.git &&
git push -f -u origin master &&
cd -
echo https://heycn.gitee.io/flag-ui-website/