
imagenetIdxValues="281,207,340"
imagenetIdxArray=(281 207 340)
googlenetV1IdxArray=(281 222 340)
googlenetV4IdxArray=(281 207 340)
mnistIdxValues="0,1,2,3,4,5,6,7,8,9"
mnistIdxArray=(0 1 2 3 4 5 6 7 8 9)
ferplusIdxArray=(4 4 6 1 0 0 3 3 2 2)
ilsvrc13IdxArray=(58 57 199)


# ./bin/image-classifier tests/images/mnist/*.png -expected-labels=${mnistIdxValues} -image-mode=0to1 -m=lenet_mnist -model-input-name=data "$@"
# num_errors=$(($num_errors + $?))


i=0
for png_filename in tests/images/imagenet/*.png; do
  ./bin/image-classifier "$png_filename" -expected-labels=${imagenetIdxArray[$i]} -use-imagenet-normalization -image-mode=0to1 -m=resnet50/model.onnx -model-input-name=gpu_0/data_0 "$@"
   num_errors=$(($num_errors + $?))
   i=$(($i + 1))
done