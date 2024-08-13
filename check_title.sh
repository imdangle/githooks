title="build: #456"

#Define allowed Conventional Commit types
allowed_types="feat|fix|docs|style|refactor|perf|test|build|ci|chore|revert"
            
echo "$allowed_types"
echo "$title"                    
if [[ ! $title =~ '^($allowed_types): #[0-9]+$' ]]; then
echo "::error::Pull request title does not follow the required '<Conventional Commit type>: #<issue_number>' format"
exit 1
fi     
