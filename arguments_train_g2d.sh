
source ~/PycharmProjects/md4all/venv/bin/activate

python ./newcrfs/train.py \
  --mode train \
  --model_name newcrfs_nyu \
  --encoder large07 \
  --pretrain model_zoo/swin_transformer/swin_large_patch4_window7_224_22k.pth \
  --dataset nyu \
  --data_path /mnt/c/datasets/gated2depth/data/real/rgb_left_8bit/ \
  --gt_path /mnt/c/datasets/gated2depth/data/real/depth_hdl64_gated_compressed/ \
  --filenames_file /mnt/c/datasets/gated2depth/data/real/splits/real_train_night.txt \
  --batch_size 4 \
  --num_epochs 50 \
  --learning_rate 2e-5 \
  --weight_decay 1e-2 \
  --adam_eps 1e-3 \
  --num_threads 1 \
  --input_height 480 \
  --input_width 640 \
  --max_depth 150 \
  --degree 2.5 \
  --log_directory ./models/ \
  --multiprocessing_distributed \
  --dist_url tcp://127.0.0.1:2345 \
   \
  --log_freq 100 \
  --do_online_eval \
  --eval_freq 1000 \
  --data_path_eval /mnt/c/datasets/gated2depth/data/real/rgb_left_8bit/ \
  --gt_path_eval /mnt/c/datasets/gated2depth/data/real/depth_hdl64_gated_compressed/ \
  --filenames_file_eval /mnt/c/datasets/gated2depth/data/real/splits/real_train_night.txt \
  --min_depth_eval 1e-3 \
  --max_depth_eval 150 \
  --eigen_crop
