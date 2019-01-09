PARA_CNT=$#
TRASH_DIR="$HOME/.trash"

for i in $*; do
    STAMP=`date +%s`
    fileName=`basename $i`
    mv $i $TRASH_DIR/$fileName.$STAMP
done
