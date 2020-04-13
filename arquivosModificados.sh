declare -a myArray=$(echo $(git diff $1 --diff-filter=d --name-only --relative | grep '\.kt[s"]\?$'))
repo_root=$(echo $(pwd))
last_occurrence=$(echo ${myArray} | sed 's#.* ##g')
if [[ -z "$myArray" ]]; then
mkdir -p ${repo_root}/app/build/reports/$2/
echo "<?xml version=\"1.0\" encoding=\"utf-8\"?><checkstyle version=\"8.0\"/>" >> ${repo_root}/app/build/reports/$2/$2-report.xml
else
for file in ${myArray}; do
if [[ "$file" == "$last_occurrence" || $1 == 'ktlint' ]]; then
echo ${repo_root}/${file};
else
echo ${repo_root}/${file},;
fi
done
fi