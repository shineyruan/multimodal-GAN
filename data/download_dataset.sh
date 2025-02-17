# Downloaded from original author's repository.
# Cite Jun-Yan Zhu: https://github.com/junyanz/BicycleGAN/tree/master/datasets

FILE=$1

if [[ $FILE != "cityscapes" && $FILE != "night2day" &&  $FILE != "edges2handbags" && $FILE != "edges2shoes" && $FILE != "facades" && $FILE != "maps" ]]; then
  echo "Available datasets are cityscapes, night2day, edges2handbags, edges2shoes, facades, maps"
  exit 1
fi

echo "Specified [$FILE]"

URL=http://efrosgans.eecs.berkeley.edu/pix2pix/datasets/$FILE.tar.gz
TAR_FILE=./$FILE.tar.gz
TARGET_DIR=./$FILE/
wget -N $URL -O $TAR_FILE
mkdir -p $TARGET_DIR
tar -zxvf $TAR_FILE -C ./
rm $TAR_FILE
