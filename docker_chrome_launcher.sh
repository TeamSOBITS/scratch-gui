#!/bin/bash

URL="http://localhost:8601"

echo "================================="
echo " Chrome Browser Launcher (Docker)"
echo "================================="
echo " Docker環境情報:"
echo "   Container ID: $(hostname)"
echo "   User: $(whoami)"
echo "   PWD: $(pwd)"
echo ""
sleep 5

echo "🔍 サーバー接続チェック中..."
if command -v curl >/dev/null 2>&1; then
    if curl -s --connect-timeout 3 "$URL" >/dev/null 2>&1; then
        echo " サーバーは正常に動作しています"
        echo " ブラウザで $URL にアクセスしてください"
    else
        echo "サーバーに接続できません"
        echo "サーバーが起動していることを確認してください"
    fi
else
    echo "  curl がインストールされていません"
    echo " 手動で $URL にアクセスしてください"
fi

echo ""
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo " 起動完了 (擬似モード)"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
