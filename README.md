# Swaks

This container contains the latest ubuntu version of swaks to send emails.

```bash
docker run --rm -it \
           suiiii/swaks \
           -f from@somemail.com -t to@somemail.com -s somehost -p 25
```

See swaks docs for all options.

It also contains a simple script that sends emails in a loop. The script takes
options via env variables and wants to connect to a tls server.

```bash
docker run --rm -it --entrypoint /bin/sh \
  --env SLEEP_LOWER=5 \
  --env SLEEP_UPPER=45 \
  --env MAIL_FROM=from@mail.com \
  --env MAIL_TO=to@mail.com,to2@mail.com \
  --env MAIL_SERVER=somehost \
  --env MAIL_PORT=465 \
  --env MAIL_USER=someuser \
  --env MAIL_PASSWORD=somepassword \
  myswaks
  /repeat.sh
```
