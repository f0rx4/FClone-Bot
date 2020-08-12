#! /bin/bash
cd ./iCopy/config
echo "[tg]

"token = "\"$BOT_TOKEN\"

"usr_id = "\"$USER_ID\"

[database]

"db_connect_method = "\"$DB_CONNECT_METHOD\"

"db_addr = "\"$DB_ADDRESS\"

"db_port = "$DB_PORT""

"db_name = "\"$DB_NAME\"

"db_user = "\"$DB_USERNAME\"

"db_passwd = "\"$DB_PASS\"

[general]

"language = "\"$LANGUAGE\" 

"cloner = "\"$CLONER\"

"option = "\"$OPTION\" 

"remote = "\"$RCLONE_RMT\"

"parallel_c = "\"$PARALLEL_CHECKERS\"

"parallel_t = "\"$PARALLEL_TRANSFERS\"

"min_sleep = "\"$MIN_SLEEP\"

"sa_path = "\"$SA_PATH\"

run_args = $RUN_ARGS
" >> conf.toml
echo "[$RCLONE_RMT]
type = drive
scope = drive
"service_account_file = /app/iCopy/accounts/$SA_INIT_FILE"
"service_account_file_path = $SA_PATH"
"team_drive = $FOLDER_ID"
" >> rclone.conf
cd ..
wget -q $SA_ZIP_URL
unzip -qq $SA_ZIP_NAME -d /app/iCopy/
chmod 777 Bot.py
python3 Bot.py
