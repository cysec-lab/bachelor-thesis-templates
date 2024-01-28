#!/bin/bash

initial_commit_hash=$(git rev-list --max-parents=0 HEAD | tail -n 1)

# 初期コミットを基にレビューブランチを作成
git branch review "$initial_commit_hash"

# レビューブランチをリモートにプッシュ
git push origin review
