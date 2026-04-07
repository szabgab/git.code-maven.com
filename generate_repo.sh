
filename=example.py

if [ -e $filename ]; then
    \rm $filename
fi

cat <<- _code >> $filename
def add(a, b):
  return a + b
_code

git add $filename
git commit -m "Start writing file" --author "First Developer <first@example.org>"

cat <<- _code >> $filename

result = add(2, 3)
print(result)
_code

git add $filename
git commit -m "Use add" --author "Second Developer <second@example.org>"


perl -i -p -E'say qq{\nif __name__ == "__main__":} if $. == 3' $filename
perl -i -p -e's/^/  /  if $. > 4' $filename
git add $filename
git commit -m "Indent the main code" --author "Developer 3 <three@example.org>"

cat <<- _code >> $filename
  x = 24
  assert result == 5
_code

git add $filename
git commit -m "Add assert" --author "Developer 4 <four@example.org>"

# make sure black is installed!
black $filename
git add $filename
git commit -m "Reformat code" --author "Code Cleaner <cleaner@example.org>"
sha=$(git rev-parse HEAD)

cat <<- _code >> $filename
    print("Hello World")
_code

git add $filename
git commit -m "Add hello world" --author "Developer 5 <five@example.org>"

git blame --ignore-rev $sha $filename

