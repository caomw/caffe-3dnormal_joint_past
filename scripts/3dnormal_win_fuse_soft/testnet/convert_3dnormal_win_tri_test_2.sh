#!/usr/bin/env sh

rootfolder=/nfs/hn46/xiaolonw/cnncode/caffe-3dnormal_r_n

GLOG_logtostderr=1 $rootfolder/build/examples/3dnormal/convert_normal_win_high_test.bin /nfs/ladoga_no_backups/users/xiaolonw/seg_cls/sliding_window_edge_high_test/images/ /nfs/ladoga_no_backups/users/xiaolonw/seg_cls/sliding_window_edge_high_test/locs/testLoc2.txt  /home/xiaolonw/3ddata/3dnormal_win_cls_high/leveldb_soft/3d_test_db2 0 0 55 55 /nfs/ladoga_no_backups/users/xiaolonw/seg_cls/sliding_window_edge_high_test/reg_coarse/ /nfs/ladoga_no_backups/users/xiaolonw/seg_cls/sliding_window_edge_high_test/reg_local/ 
