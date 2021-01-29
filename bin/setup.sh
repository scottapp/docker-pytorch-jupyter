#!/bin/bash

cur_dir=$PWD
echo "current directory is " $cur_dir
tmp_dir=$(mktemp -d -t ci-XXXXXXXXXX)
echo "creating temp directory "$tmp_dir

cd $tmp_dir
git clone https://github.com/MorvanZhou/PyTorch-Tutorial.git

src_dir="$tmp_dir/PyTorch-Tutorial/tutorial-contents-notebooks"

dst_dir="$cur_dir/tutorials/PyTorch-Tutorial"
mkdir -p $dst_dir

cp -r $src_dir/* $dst_dir/.

rm -rf $tmp_dir
