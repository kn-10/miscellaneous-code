# miscellaneous-code

To create Kibana enrollment token

sudo /usr/share/elasticsearch/bin/elasticsearch-create-enrollment-token -s kibana

which produces token

eyJ2ZXIiOiI4LjE0LjAiLCJhZHIiOlsiMTcyLjMxLjc3LjIxODo5MjAwIl0sImZnciI6IjMxNjU4NTdkMGRmOTZmNzg4NzUxMGRkNTk0Zjk0NTVhMWMwOTQ5ZWM1MjUzYWViMGM0ZjZmMzdkODM2MGIzZDgiLCJrZXkiOiJyd2lSRDV3QldjRThPS1FqMnFpYTpzY0tSN3VVNWhCQklmZ25MMVNNMzJRIn0=

find / -name kibana-verification-code

/usr/share/kibana/bin/kibana-verification-code

To reset Kibana Password

/usr/share/elasticsearch/bin/elasticsearch-reset-password -u elastic

New Password - rLRyYZ=hiTQhM37k1whp