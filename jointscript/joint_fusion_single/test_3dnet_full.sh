#!/usr/bin/env sh                                                                                                

# test_net_seg.bin test_proto pre_train_model label.txt outputfolder [CPU/GPU]

ROOTFILE=/nfs/hn46/xiaolonw/cnncode/caffe-3dnormal_joint

GLOG_logtostderr=1  $ROOTFILE/build_compute-0-5/tools/test_net_3dnormal_joint.bin /nfs/hn46/xiaolonw/cnncode/caffe-3dnormal_joint/jointscript/joint_fusion_single/seg_test_3dnormal_joint.prototxt   /nfs/hn38/users/xiaolonw/3d_fcn_data/models_single/3dnormal__0_iter_200000  /nfs/hn38/users/xiaolonw/3d_fcn_data/models_single/3dnormal__1_iter_200000  /nfs/hn38/users/xiaolonw/3d_fcn_data/models_single/3dnormal__2_iter_200000  /nfs/hn46/xiaolonw/cnncode/viewer/testLabels.txt  /nfs/hn38/users/xiaolonw/3d_fcn_data/results/nyu2


