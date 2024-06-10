echo "> Insert repo name:"
read reponame

mkdir $reponame
cd $reponame

git init
echo $reponame >> README.md
git add README.md

git commit -m "initial commit"

gh auth login
gh repo create $reponame --public
git remote add origin https://github.com/tu_usuario/$reponame

git branch -M main
git push -u origin main


