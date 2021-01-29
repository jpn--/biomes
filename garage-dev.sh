#!/bin/zsh
#
# to make this script executable:
#
#	chmod u+x ./garage-dev.sh
#

export NUMBER=39                             # default garage number
export REPOS_DIR="$HOME/Git"                 # default repo directory
export PRUNE=                                # default don't prune

while getopts ":n:r:p" opt; do
  case $opt in
    n) NUMBER="$OPTARG"
    ;;
    r) REPOS_DIR="$OPTARG"
    ;;
    p) PRUNE="--prune"
    ;;
    \?) echo "Invalid option -$OPTARG" >&2
    ;;
  esac
done


#[[ -n $1 ]] && export REPOS_DIR=$1       # override if given as arg

echo "#                                               "
echo "# installing local repos from $REPOS_DIR        "
echo "# conda env update -f garage$NUMBER.yml $PRUNE  "
echo "#                                               "

eval "$(conda shell.bash hook)"
conda env update -f garage$NUMBER.yml $PRUNE
conda activate garage$NUMBER
python $REPOS_DIR/xmle/setup.py develop --no-deps
python $REPOS_DIR/larch/setup.py develop --no-deps
python $REPOS_DIR/tmip-emat/setup.py develop --no-deps
python $REPOS_DIR/mapped/setup.py develop --no-deps

echo "#                                        "
echo "# installed local repos from $REPOS_DIR  " 
echo "#                                        "
echo "# To activate this environment, use      "
echo "#                                        "
echo "#     $ conda activate garage$NUMBER     "
echo "#                                        "
