#! /bin/bash
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
java -jar ${DIR}/gp.jar -delete 436f6f6c57616c6c657450524f -delete 436f6f6c57616c6c6574 -r "Identiv uTrust 3700 F CL Reader 2"
if [ "$1" == "1" ]; then
  echo "install parameter 80"
  java -jar ${DIR}/gp.jar -install ${DIR}/bin/coolbitx/javacard/coolbitx.cap -params 80 -r "Identiv uTrust 3700 F CL Reader 2" -default
else
  echo "install parameter null"
  java -jar ${DIR}/gp.jar -install ${DIR}/bin/coolbitx/javacard/coolbitx.cap -r "Identiv uTrust 3700 F CL Reader 2" -default
fi
java -jar ${DIR}/gp.jar -apdu 00a404000d436f6f6c57616c6c657450524f -apdu 80520000 -r "Identiv uTrust 3700 F CL Reader 2" -debug

