declare -a myArray=$(echo $(git diff $1 --diff-filter=d --name-only --relative | grep '\.kt[s"]\?$'))
repo_root=$(echo $(pwd))
last_occurrence=$(echo ${myArray} | sed 's#.* ##g')
for file in ${myArray}; do
if [[ "$file" == "$last_occurrence" || $2 == 'ktlint' ]]; then
echo ${repo_root}/${file};
else
echo ${repo_root}/${file},;
fi
done