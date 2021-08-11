rm -rf public
hugo
s3deploy -source=public/ -region=eu-west-1 -bucket=bep.is -public-access -distribution-id=E1TX7TXFKWFR6S