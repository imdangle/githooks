title="fix: asdasdasd"

#Define allowed Conventional Commit types
allowed_types="feat|fix|docs|style|refactor|perf|test|build|ci|chore|revert"
                             
if ! echo "$title" | grep -Eq "^($allowed_types): #[0-9]+$"; then
    echo "::error::Pull request title does not follow the required '<Conventional Commit type>: #<issue_number>' format"
    exit 1
fi