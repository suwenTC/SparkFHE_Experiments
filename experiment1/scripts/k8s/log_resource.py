import os
import sys
import time
from functools import reduce
start_time = time.time()
#print("time, %cpu, %mem")
while 'Completed' not in os.popen('kubectl get pods').read():
    try:
        linux_ps = os.popen('docker stats --no-stream --all --format "{{.CPUPerc}},{{.MemPerc}}" ')
        info = linux_ps.read()
        cur_time = time.time()-start_time
        info = info.strip().replace('\n', ',').replace('%', '')
        print(str(cur_time)+","+info)
        #print(job_names)
    except IndexError:
        pass
    time.sleep(1)
