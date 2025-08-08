
for name in seattle
do                            

     # python train.py -s ./data/${name} -m output_${name}/${name}_stage1 --src_type monocap --train_stage 1 --epochs 200 --pose_op_start_iter 10 --end_epoch 200 --unseen_view 0
     python render_novel_pose.py -s ./data/${name} -m output_${name}/${name}_stage1 --src_type monocap --epoch 200 --pose observ --stage 1
     python render_novel_pose.py -s ./data/${name} -m output_${name}/${name}_stage1 --src_type monocap --epoch 200 --pose tpose --stage 1
     python render_novel_pose1.py -s data/${name} -m output_${name}/${name}_stage1 --epoch 300
     python eval.py -s ./data/${name} -m output_${name}/${name}_stage1 --train_stage 1 --epoch 200


done
