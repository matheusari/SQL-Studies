- 🇧🇷 Plano de backups regular, montado através de um script de servidor Linux para rodar todos os dias:
- 🇺🇸 Regular backup plan, set up through a Linux server script to run every day:
#!/bin/s

FILE=backup.sql.`2022-10-03 +"%Y%m%d"`

#DBSERVER=localhost

DATABASE=uc4atividades

USER=root

PASS=my-password

unalias rm 2> /dev/null
rm ${FILE} 2> /dev/null 
rm ${FILE}.gz 2> /dev/null

mysqldump --opt --user=${USER} --password=${PASS} ${DATABASE} > ${FILE} 

gzip $FILE

echo "${FILE}.gz was created:"

ls -l ${FILE}.gz

mkdir -p /backup/mysql

cd /backup/mysql

chmod +x /backup/mysql/local-backup.sh

- 🇧🇷 Acessando o arquivo Crontab para agendarmos a tarefa diária:
- 🇺🇸 Accessing the Crontab file to schedule the daily task:
crontab -e

- 🇧🇷 Inserimos dentro desse arquivo:
- 🇺🇸 Insert into this file:
0 1 * * * /backup/mysql/local-backup.sh 1>> /var/log/mysqlbackup.log 
2>>/var/log/mysqlbackup-error.log
