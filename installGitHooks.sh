currentDir=$pwd

root="$(git rev-parse --show-toplevel)/.."

echo "$root"

cd "$root/.git"
mv hooks hooks.old
ln -s "$root/git-hooks" "$root/.git/hooks"

cd $currentDir