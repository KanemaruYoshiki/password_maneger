#!/bin/bash

echo "パスワードマネージャーへようこそ!"

echo "サービス名を入力してください："
read service_name 

echo "ユーザー名を入力してください："
read user_name

echo "パスワードを入力してください："
read  password 

echo "サービス名${service_name}: ユーザー名${user_name}: パスワード${password}" >> info.txt

echo "Thank you!"