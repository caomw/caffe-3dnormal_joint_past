#include <cuda_runtime.h>
#include <fcntl.h>
#include <google/protobuf/text_format.h>
#include <iostream>
#include <cstring>

#include "caffe/blob.hpp"
#include "caffe/common.hpp"
#include "caffe/net.hpp"
#include "caffe/filler.hpp"
#include "caffe/proto/caffe.pb.h"
#include "caffe/util/io.hpp"
#include "caffe/solver.hpp"

using namespace caffe;
using namespace std;



int main(int argc, char** argv){
  if (argc < 4){
    printf("Not enough parameters.\n");
    return 1;
  }

	NetParameter test_net_param;
	ReadProtoFromTextFile(argv[1], &test_net_param);
	Net<float> caffe_test_net(test_net_param);
	NetParameter trained_net_param;
	ReadProtoFromBinaryFile(argv[2], &trained_net_param);
	caffe_test_net.BruteCopyTrainedLayersFrom(trained_net_param);

	NetParameter newnet_param;
	caffe_test_net.ToProto(&newnet_param);
	WriteProtoToBinaryFile(newnet_param, argv[3]);

	return 0;
}
