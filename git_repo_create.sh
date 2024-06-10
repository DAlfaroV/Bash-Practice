echo "> Insert repo name:"
read reponame
name="DAlfaroV"

mkdir $reponame
cd $reponame

# Git repo creation with initial commit
git init
echo $reponame >> README.md
git add README.md
git commit -m "initial commit"

# env variables
source ~/.bashrc

# Auth with github
gh auth login
gh repo create $reponame --public

# push
git remote add origin https://$github_pat_personal@github.com/$name/$reponame
git branch -M main
git push -u origin main


