#aborts if a nonzero exit value is returned
set -e

echo -n "Github account name: "
read name
echo -n "Bloomberg email address: "
read email

git config --global user.name $name
git config --global user.email $email

gitconfig="~/.gitconfig"
if [-f "$gitconfig"]
    then
        echo "$gitconfig found"
    else 
        echo "$gitconfig not found. Aborting..."
        exit 1
fi

cat ./gitproxy >> ~/.gitconfig