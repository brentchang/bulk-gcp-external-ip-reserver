# Google Cloud Platform bulk static external ip reserver

shell script to reserve Google Cloud Platform static external IPs.

## Requirements

1.Already authenticated Google Cloud SDK \
2.Project ID have been set through `gcloud config set project` \
3.Authencated account/service account with IAM permissions to reserve static external IP.

## Usage
```bash
$ git clone https://github.com/brentchang/bulk-gcp-external-ip-reserver.git
$ cd bulk-gcp-external-ip-reserver
$ ./ext_ip.sh
```
