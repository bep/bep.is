rm -rf public
hugo --minify
s3deploy -source=public/ -region=eu-west-1 -bucket=bep.is -path root -acl='public-read' -distribution-id=E1TX7TXFKWFR6S