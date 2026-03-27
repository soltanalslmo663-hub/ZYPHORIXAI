#!/bin/bash

read -p "أدخل اسم المستخدم على GitHub: " GITHUB_USER
read -p "أدخل اسم المستودع على GitHub: " REPO_NAME

echo "Creating README.md..."
cat <<EOL > README.md
# $REPO_NAME
مشروع Laravel 🚀
EOL

echo "Creating .gitignore..."
cat <<EOL > .gitignore
/vendor
/node_modules
.env
*.log
EOL

git init
git add .
git commit -m "Initial commit"
git branch -M main
git remote add origin https://github.com/$GITHUB_USER/$REPO_NAME.git
git push -u origin main

echo "✅ تم رفع المشروع بنجاح!"
