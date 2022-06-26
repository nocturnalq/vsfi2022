# http basic auth via nginx
!Для начала работы необходимо создать пользователя nginx, если его нет в системе

Для использования http basic auth  неоьходиом создать файл с пользователями системы формате имя_пользовате:пароль
```bash
sudo sh -c "echo -n 'user:' >> /etc/nginx/.htpasswd"
```
Длее необходимо защифровать пароль
```bash
sudo sh -c "openssl passwd -apr1 >> /etc/nginx/.htpasswd"
```

```bash
cat /etc/nginx/.htpasswd
```
Output

```bash
user:$apr1$wI1/T0nB$jEKuTJHkTOOWkopnXqC1d1
```

https://www.digitalocean.com/community/tutorials/how-to-set-up-password-authentication-with-nginx-on-ubuntu-14-04