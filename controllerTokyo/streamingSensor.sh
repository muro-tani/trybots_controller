
#!/bin/sh
#sh streaming.sh <シリアルポート>
#接続先グローバルipを取得
ip=`python getip.py|tail -1`

echo "接続先グローバルip"
echo $ip

#シリアル通信で得たセンサーデータを送信
sudo node controller.js $1 | python streaming.py $ip
