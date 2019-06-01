#!/usr/bin/env bash

if [ $1 -eq "1" ]
then
    bash /spark-3.0.0-SNAPSHOT-bin-SparkFHE/SparkFHE-Addon/scripts/spark/runEncDec.bash 
elif [ $1 -eq "2" ]
then
    bash /spark-3.0.0-SNAPSHOT-bin-SparkFHE/SparkFHE-Addon/scripts/spark/runEncDec.bash &
    bash /spark-3.0.0-SNAPSHOT-bin-SparkFHE/SparkFHE-Addon/scripts/spark/runEncDec.bash 
elif [ $1 -eq "3" ]
then
    bash /spark-3.0.0-SNAPSHOT-bin-SparkFHE/SparkFHE-Addon/scripts/spark/runEncDec.bash &
    bash /spark-3.0.0-SNAPSHOT-bin-SparkFHE/SparkFHE-Addon/scripts/spark/runEncDec.bash &
    bash /spark-3.0.0-SNAPSHOT-bin-SparkFHE/SparkFHE-Addon/scripts/spark/runEncDec.bash 
else
    bash /spark-3.0.0-SNAPSHOT-bin-SparkFHE/SparkFHE-Addon/scripts/spark/runEncDec.bash &
    bash /spark-3.0.0-SNAPSHOT-bin-SparkFHE/SparkFHE-Addon/scripts/spark/runEncDec.bash &
    bash /spark-3.0.0-SNAPSHOT-bin-SparkFHE/SparkFHE-Addon/scripts/spark/runEncDec.bash &
    bash /spark-3.0.0-SNAPSHOT-bin-SparkFHE/SparkFHE-Addon/scripts/spark/runEncDec.bash 
fi
