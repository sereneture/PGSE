# D:\Github\PGSE\upload_to_github.ps1
# 一键初始化并推送 PGSE 动图与视觉展示至 GitHub 官方仓库

$ErrorActionPreference = "Stop"
$ScriptDir = Split-Path -Parent $MyInvocation.MyCommand.Path
Set-Location $ScriptDir

Write-Host "==========================================================" -ForegroundColor Cyan
Write-Host "  PGSE: Primitive-Growing Symbolic Evolution (GitHub Deploy)" -ForegroundColor Cyan
Write-Host "  Mode: Visual Assets & Benchmark Showcase Only" -ForegroundColor Magenta
Write-Host "  (Code and Paper are safely archived locally under .gitignore)" -ForegroundColor Magenta
Write-Host "==========================================================" -ForegroundColor Cyan

# 1. 检查当前目录
Write-Host "[1/5] 检查工作区目录: $ScriptDir" -ForegroundColor Yellow

# 2. 检查 Git 是否初始化
if (-not (Test-Path "$ScriptDir\.git")) {
    Write-Host "[2/5] 本地未初始化 Git 仓库，正在初始化..." -ForegroundColor Green
    git init
    git branch -M main
} else {
    Write-Host "[2/5] 检测到已存在本地 Git 仓库。" -ForegroundColor Green
}

# 3. 检查远程仓库配置
$remoteUrl = "https://github.com/sereneture/PGSE.git"
$existingRemotes = git remote
if ($existingRemotes -notcontains "origin") {
    Write-Host "[3/5] 关联远程仓库: $remoteUrl" -ForegroundColor Green
    git remote add origin $remoteUrl
} else {
    Write-Host "[3/5] 远程仓库已关联: origin -> $(git remote get-url origin)" -ForegroundColor Green
}

# 4. 检查文件与暂存（严格验证 code/ 与 paper/ 未被暂存）
Write-Host "[4/5] 检查 .gitignore 并添加公开文件到暂存区..." -ForegroundColor Yellow
git add .

# 双重安全自检：确保暂存区没有 code/ 或 paper/
$stagedCode = git diff --name-only --cached | Select-String -Pattern "^(code|paper)/"
if ($stagedCode) {
    Write-Host "【安全拦截】检测到代码或论文文件试图进入暂存区！中止推送！" -ForegroundColor Red
    git reset
    exit 1
}

# 5. 提交并提示推送
$status = git status --porcelain
if ($status) {
    $commitMsg = "feat: initial visual release with multi-task swarm animations and benchmark showcase"
    Write-Host "正在提交本地变更: $commitMsg" -ForegroundColor Green
    git commit -m $commitMsg
    
    Write-Host ""
    Write-Host "是否立即推送到 GitHub 远程仓库 ($remoteUrl)? (Y/N): " -ForegroundColor Magenta -NoNewline
    $confirm = Read-Host
    if ($confirm -eq "Y" -or $confirm -eq "y") {
        Write-Host "正在推送到 GitHub..." -ForegroundColor Cyan
        git push -u origin main
        Write-Host "推送完成！项目已更新至: $remoteUrl" -ForegroundColor Green
    } else {
        Write-Host "已跳过远程推送。本地提交已保存，后续可手动运行 'git push -u origin main'。" -ForegroundColor Yellow
    }
} else {
    Write-Host "本地工作区干净，无待提交变更。" -ForegroundColor Green
    Write-Host "提示: 如需强制同步远程，可直接执行 'git push -u origin main'。" -ForegroundColor Cyan
}

Write-Host "==========================================================" -ForegroundColor Cyan
