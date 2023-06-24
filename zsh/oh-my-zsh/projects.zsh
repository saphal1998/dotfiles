#/usr/bin/env bash

# We can import project directories here, and use cd $project_name to directly go to that folder
DIRECTORIES_PATH="$HOME/Developer"

for PROJECT_PATH in "$DIRECTORIES_PATH"/*; do
    if [ -d "$PROJECT_PATH" ]; then
        PROJECT_NAME=$(basename "$PROJECT_PATH")
        alias "\$$PROJECT_NAME"="cd \"$PROJECT_PATH\""
    fi
done
