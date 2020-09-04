#!/bin/bash

rm -rfv dist/
rm -rfv build/
rm -rfv crazydiskmark.egg-info/

pandoc -r markdown -w plain -o README.me README.md
cp crazydiskmark.man crazydiskmark.1
gzip -f crazydiskmark.1

python3 setup.py sdist bdist_wheel
python3 -m twine upload dist/*


rm -rfv dist/
rm -rfv build/
rm -rfv crazydiskmark.egg-info/
