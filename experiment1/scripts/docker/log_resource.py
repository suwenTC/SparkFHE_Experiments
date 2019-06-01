import os
import sys
import time
from functools import reduce
start_time = time.time()
#print("time, %cpu, %mem")
num_jobs = sys.argv[1]
job_names=sys.argv[2]
brake = list(os.popen('cat /proj/shield-PG0/SparkFHE/data/tmp.txt | wc -l'))[0].strip()
i = 0
while i < 40:
    try:
        linux_ps = os.popen('docker stats --no-stream --format "{{.CPUPerc}},{{.MemPerc}}" '+job_names)
        info = linux_ps.read()
        cur_time = time.time()-start_time
        info = info.strip().replace('\n', ',').replace('%', '')
        print(str(cur_time)+","+info)
        #print(job_names)
    except IndexError:
        pass

    brake = list(os.popen('cat /proj/shield-PG0/SparkFHE/data/tmp.txt | wc -l'))[0].strip()
    time.sleep(1)
    i += 1
