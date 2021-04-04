# MODEL=../../deploy_models/mask_rcnn_r50_fpn_1x
# MODEL=../../deploy_models/mask_rcnn_r50_1x
MODEL=../../deploy_models/yolov3_darknet

# trt_int8 first time is to create calibration table
for MODE in trt_int8 trt_int8 trt_fp16 trt_fp32;
do
    ./build-env/main \
        -model_dir ${MODEL} \
        -use_gpu true \
        -image_path ../../demo/000000014439_640x640.jpg \
        -run_mode ${MODE} \
        -run_benchmark
done

