repos=${1-"OneLife OneLifeData7 minorGems"}

if [[ $(./dirtyOrCleanRepos.sh $repos) == 0 ]]; then
    echo "Detected untracked changes in repos. Abort"
    exit 1
fi

cd ..

for repo in $repos; do
    for remote in `git -C $repo branch -r | grep -v /HEAD`; do git -C $repo checkout -b "${remote////_}" --track $remote ; done
done


