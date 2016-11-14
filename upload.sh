#!/bin/bash

echo 'Gen gfwlist2pac ..' && cd ../gfwlist2pac && sh gen_dongcross.sh && \
echo 'Copy ..' && cp -f dist/dongcross.txt ../udongcross-dist/dongcross.txt && echo 'Copy Success' && \
cd ../udongcross-dist && \
echo 'Upload ..' && \
echo 'git add' && \
git add gfwlist.txt && \
git add dongcross.txt && \
echo 'git commit' && \
git commit -m 'update' && \
echo 'git push' && \
git push && \
echo 'Success'