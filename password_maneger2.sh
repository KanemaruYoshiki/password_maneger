#!/bin/bash
echo "パスワードマネージャーへようこそ！"

while true; do
    echo "次の選択肢から入力してください(Add Password/Get Password/Exit):"
    read select

    case "${select}" in
        "Add Password")
        echo "サービス名を入力してください："
        read service_name
        echo "ユーザー名を入力してください："
        read user_name
        echo "パスワードを入力してください："
        read password
        echo "${service_name}:${user_name}:${password}" >> info2.txt 
        echo "パスワードの追加は成功しました。"
        ;;
        "Get Password")
        echo "サービス名を入力してください："
        read service_name
        password=$(grep "^${service_name}:" info2.txt | cut -d ":" -f3)
        if [[ -z ${password} ]]; then
            echo "そのサービスは登録されていません。"
        else 
            echo "サービス名：${service_name}"
            echo "ユーザー名：$(grep "^${service_name}:" info2.txt | cut -d ":" -f2)"
            echo "パスワード：${password}"
        fi
        ;;
        "Exit")
        echo "Thank you!"
        exit
        ;;
        *)
        echo "入力が間違えています。Add Password/Get Password/Exit から入力してください。"
    esac
done