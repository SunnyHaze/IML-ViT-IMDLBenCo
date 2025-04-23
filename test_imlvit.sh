base_dir="./eval_dir"
mkdir -p ${base_dir}

CUDA_VISIBLE_DEVICES=0,1 \
torchrun \
    --standalone \
    --nnodes=1 \
    --nproc_per_node=2 \
./test.py \
    --model IMLViTModel \
    --vit_pretrain_path ./pretrained-weights/mae_pretrain_vit_base.pth \
    --world_size 1 \
    --test_data_json "./test_datasets.json" \
    --checkpoint_path "./output_dir/" \
    --test_batch_size 2 \
    --image_size 1024 \
    --if_padding \
    --output_dir ${base_dir}/ \
    --log_dir ${base_dir}/ \
2> ${base_dir}/error.log 1>${base_dir}/logs.log