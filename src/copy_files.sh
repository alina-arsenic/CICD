#!/bin/bash

sshpass -p $1 scp src/s21_cat weaveryu@10.10.10.3:~/s21_cat
sshpass -p $1 scp src/s21_grep weaveryu@10.10.10.3:~/s21_grep

sshpass -p $1 ssh weaveryu@10.10.10.3 'sudo cp ~/s21_cat /usr/local/bin/s21_cat'
sshpass -p $1 ssh weaveryu@10.10.10.3 'sudo cp ~/s21_grep /usr/local/bin/s21_grep'

sshpass -p $1 ssh weaveryu@10.10.10.3 'rm -f ~/s21_cat'
sshpass -p $1 ssh weaveryu@10.10.10.3 'rm -f ~/s21_grep'
