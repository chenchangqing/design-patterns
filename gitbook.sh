rm -r -f _book
gitbook build
git checkout master
git add .
git commit -m 'build'
git push -u origin master
git checkout gh-pages
cp -r _book/* .
git add .
git commit -m 'build'
git push -u origin gh-pages
git checkout master
echo "提交OK"
