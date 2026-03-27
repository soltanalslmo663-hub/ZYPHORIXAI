@echo off
SET /p GITHUB_USER=أدخل اسم المستخدم على GitHub: 
SET /p REPO_NAME=أدخل اسم المستودع على GitHub: 

echo Creating README.md...
echo # %REPO_NAME%>README.md
echo مشروع Laravel لتطوير تطبيق SaaS حديث 🚀>>README.md

echo Creating .gitignore...
echo /vendor>/gitignore
echo /node_modules>>.gitignore
echo .env>>.gitignore
echo *.log>>.gitignore

git init
git add .
git commit -m "Initial commit"
git branch -M main
git remote add origin https://github.com/%GITHUB_USER%/%REPO_NAME%.git
git push -u origin main

echo.
echo ✅ تم رفع المشروع بنجاح!
pause
