#/bin/bash
# Usage : ../tools/newClass.sh <classname>

if [ -z $1 ]; then
	echo "Usage : ../tools/newClass.sh <classname>"
else

CLASSNAME=$1
CCLASSNAME=$(echo $CLASSNAME | awk '{print toupper($0)}')
CCLASSNAME+="_H"
HEADERNAME="$1.h"
SOURCENAME="$1.cpp"


# Generation header

echo "#ifndef $CCLASSNAME"          >  $HEADERNAME
echo "#define $CCLASSNAME"          >> $HEADERNAME
echo ""                             >> $HEADERNAME
echo "class $CLASSNAME {"           >> $HEADERNAME
echo ""                             >> $HEADERNAME
echo "};"                           >> $HEADERNAME
echo ""                             >> $HEADERNAME
echo "#endif // define $CCLASSNAME" >> $HEADERNAME

# Generation source file

echo "#include \"$HEADERNAME\""     >> $SOURCENAME
echo ""                             >> $SOURCENAME

fi
