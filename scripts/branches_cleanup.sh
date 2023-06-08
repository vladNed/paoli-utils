#!/bin/bash

cd $1

keywords=("master" "main" "develop")
branches=$(git branch -l --format="%(refname:short)")

for branch in $branches; do
    contains_keyword=false

    for keyword in "${keywords[@]}"; do
        if [[ $branch == *"$keyword"* ]]; then
            contains_keyword=true
            break
        fi
    done

    if [ "$contains_keyword" = false ]; then
        git branch -D "$branch"
        echo "Deleted branch: $branch"
    fi
done
