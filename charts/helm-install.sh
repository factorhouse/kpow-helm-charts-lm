helm install --create-namespace factorhouse ./kpow \
    --set serviceAccount.create=false \
    --set serviceAccount.name=kpow \
    --set aws.licenseConfigSecretName=awsmp-license-token-secret \
    --set env.REPLICATION_FACTOR="'1'" \
    --set env.BOOTSTRAP="bootstrap.kafka.svc.cluster.local:9092" \
