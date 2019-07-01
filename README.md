# Patito Kernel is fork of Hustoj 
Judge, Judge_client y sim kernel of Patito Judge

## Dependencies of compile
```console
apt install -y build-essential make flex g++ default-libmysqlclient-dev libmysql++-dev 
```

## Install
```console
chmod +x install.sh
./install.sh
```
## Executing 
```console
/etc/init.d/judged start
```


## Debug Mode Judge and Judge_client

```console
/etc/init.d/judged stop
./judged /home/judge/ true
```




## Debug Mode specific runID 

```console
Usage:judge_client solution_id runner_id.
Multi:judge_client solution_id runner_id judge_base_path.
Debug:judge_client solution_id runner_id judge_base_path debug.
```
