# mysql-binlog-export

A shell script that lists connects to a given rds mysql host, lists all of the binary log files, downloads them and converts them into a readable file.

## Usage
Insert your host and credentials into the `.mysql` file and then execute the script using:

```bash
chmod +x export-binlog.sh
./export-binlog.sh
```
