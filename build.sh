#!/bin/bash -e

which gojekyll || {
	# Cloudflare Pages path
	mkdir -p /tmp/bin
	wget https://github.com/danog/gojekyll/releases/latest/download/gojekyll-amd64 -O /tmp/bin/gojekyll
	chmod +x /tmp/bin/gojekyll
	cd docs
	/tmp/bin/gojekyll clean
	/tmp/bin/gojekyll build
	exit 0
}

git checkout master

cd docs
gojekyll clean
gojekyll build
rm -rf ../../_site
cp -a _site ../../
cd ..

git fetch origin gh-pages
git checkout gh-pages
rm -rf *
cp -a ../_site/* .
git add -A
git commit -am 'Update'
git push origin gh-pages
