#build EXE and batch exec
#

source export.sh
#DIR=0420

#MODELS_DIR=./models
echo $CMP_DIR

MODELS_DIR=$CMP_DIR/models-new
echo $MODELS_DIR
EXE=./test2.out
LIB_DIR=./lib/
list=`ls $MODELS_DIR | grep bin`

set -x

mkdir $DIR

for model in $list; do
        model_prefix=`basename $model .bin`
        result=$model_prefix.txt
        #echo $result
        $EXE $MODELS_DIR $model 0 &> $DIR/$result
done

mv $MODELS_DIR/*.output* $DIR
