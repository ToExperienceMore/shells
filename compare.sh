set -x
DIR=0420-new
CMP_DIR=dir
cd $CMP_DIR
echo `pwd`
source ./cmd2.sh

cd -
source ./cmd2.sh
echo `pwd`

./checkDir.out $DIR $CMP_DIR/$DIR | grep output
