#!/bin/bash

# 自动递增版本号
VERSION_FILE="version.txt"
INDEX_FILE="index.html"

# 读取当前版本号
if [ -f "$VERSION_FILE" ]; then
    CURRENT_VERSION=$(cat "$VERSION_FILE")
else
    CURRENT_VERSION="1.0.0"
fi

# 分割版本号
IFS='.' read -ra VERSION_PARTS <<< "$CURRENT_VERSION"
MAJOR=${VERSION_PARTS[0]}
MINOR=${VERSION_PARTS[1]}
PATCH=${VERSION_PARTS[2]}

# 递增补丁版本号
PATCH=$((PATCH + 1))

# 构建新版本号
NEW_VERSION="$MAJOR.$MINOR.$PATCH"
echo "$NEW_VERSION" > "$VERSION_FILE"

# 更新 index.html 中的版本号
sed -i "s/v[0-9]*\.[0-9]*\.[0-9]*/v$NEW_VERSION/" "$INDEX_FILE"

# 提交并推送
git add .
git commit -m "Update to v$NEW_VERSION"
git push
