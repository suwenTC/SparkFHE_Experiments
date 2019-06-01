#/bin/bash
kubectl apply -f dotprod.yaml
python3 log_resource.py > /proj/shield-PG0/SparkFHE/data/k8s/"$1.csv"
kubectl delete pods dot-prod-test --grace-period=0 --force
