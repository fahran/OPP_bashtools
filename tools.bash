export SVN_EDITOR=/usr/bin/vim

for TOOL in ECLIPSE GIGASPACES GRADLE JAVA SOAPUI GROOVY SCALA MONGODB
do
   TOOL_LINK=`echo $TOOL| tr '[:upper:]' '[:lower:]'`
   export ${TOOL}_HOME="${HOME}/dev/tools/${TOOL_LINK}"
   TOOL_HOME="${TOOL}_HOME"
   export PATH=${!TOOL_HOME}/bin:$PATH
done

