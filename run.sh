darknet detector train 0_train/yolov4.data 0_train/yolov4.cfg ${init_weight_file:-""} -gpus 0,1 -map -dont_show

./darknet detector train cfg/yolov3_pubgperson.cfg "" -gpus 0 -map -dont_show

./darknet detector train cfg/voc.data cfg/yolov3-voc.cfg

./darknet detector train cfg/voc_pubgperson.data cfg/yolov3_pubgperson.cfg "" -gpus 0 -map -dont_show

./darknet detector train cfg/voc_pubgperson.data cfg/yolov3_pubgperson.cfg "" -gpus 0 -map -dont_show

./darknet detector train cfg/voc.data cfg/yolov3-voc.cfg darknet53.conv.74

./darknet detector train cfg/voc.data cfg/yolov3-tiny.cfg yolov3-tiny.weights -gpus 0 -map -dont_show

./darknet detector train cfg/voc.data cfg/yolov3-voc.cfg "" -gpus 0 -map -dont_show

./darknet-cpu detector train cfg/voc.data cfg/yolov3-voc.cfg "" -gpus -1

./darknet-mp detector train cfg/voc.data cfg/yolov3-voc.cfg "" -gpus -1

./darknet-gpu detector train cfg/voc.data cfg/yolov3-voc.cfg "" -gpus 0

./darknet detector train cfg/voc.data cfg/yolov3-tiny.cfg "" -gpus 0 -map -dont_show

# test
./darknet detector test cfg/coco.data cfg/yolov3.cfg yolov3.weights data/dog.jpg --gpus -1

./darknet-cpu detector test cfg/coco.data cfg/yolov3.cfg yolov3.weights data/dog.jpg --gpus -1

./darknet detector test cfg/coco.data cfg/yolov3-tiny.cfg yolov3-tiny.weights data/dog.jpg

./darknet-cpu detector test cfg/voc.data cfg/yolov3.cfg backup/yolov3-voc_final.weights data/dog.jpg --gpus -1