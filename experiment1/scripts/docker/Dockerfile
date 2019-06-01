# Base Image
FROM sparkfhe/sparkfhe-dist:1.0.2alpha

USER root

# Initialize library
WORKDIR "/spark-3.0.0-SNAPSHOT-bin-SparkFHE/SparkFHE-Addon/scripts/setup"
RUN bash install_shared_libraries.bash

# Copy scripts to the following directory
COPY runBasicOp.bash /spark-3.0.0-SNAPSHOT-bin-SparkFHE/SparkFHE-Addon/scripts/spark/
COPY runDotProd.bash /spark-3.0.0-SNAPSHOT-bin-SparkFHE/SparkFHE-Addon/scripts/spark/
COPY runEncDec.bash /spark-3.0.0-SNAPSHOT-bin-SparkFHE/SparkFHE-Addon/scripts/spark/
COPY initSparkSubmitLocal.bash /spark-3.0.0-SNAPSHOT-bin-SparkFHE/SparkFHE-Addon/scripts/spark/

# Generate data
RUN chmod +x /spark-3.0.0-SNAPSHOT-bin-SparkFHE/SparkFHE-Addon/scripts/spark/*
RUN /spark-3.0.0-SNAPSHOT-bin-SparkFHE/SparkFHE-Addon/scripts/spark/initSparkSubmitLocal.bash

# Copy scripts to root directory
COPY run_basic_op.sh /
COPY run_env_dec.sh /
COPY run_dot_prod.sh /
COPY run_mix.sh /
COPY run.sh /

WORKDIR "/"