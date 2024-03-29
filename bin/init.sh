#!/bin/sh

read -p "Project name: " project

if [ -z "$project" ]
then
	echo "Project name is required."
	exit
fi

git clone https://github.com/XiMatriarx/express.git --depth 1 --branch 'v1.0.4'
mv express $project
cd $project
rm -Rf .git
rm -Rf bin
npm install
