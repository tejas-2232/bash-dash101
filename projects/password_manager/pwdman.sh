#!bin/bash
#
#******************************************************
#Database: It's just an encrypted file with 2 columns "Username" and "password"
#          It has a header with the column names and also it's values are encoded in base64
#
#
#
#******************************************************

: "${DEFAULT_DATABASE:=$HOME/pwdman.db}"
: "${CLIPBOARD_TIMEOUT:=9}"
: "${DEFAULT_LENGTH:=128}"
: "${DEFAULT_ALPHABET:= abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789}"



