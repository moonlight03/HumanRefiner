export EPOCH="50" # change to your gpu id



# for name in youtube3 youtube5 youtube_test youtube_bee #youtube2 youtube3 youtube5 youtube_test youtube_bee sora zju_377 zju_386 zju_387 zju_392 zju_393 zju_394  
# do              
#     echo "output_${name}/${name}_stage1 "
#     python train.py -s ./data/${name} -m output_${name}/${name}_stage1 --src_type wild --train_stage 1 --epochs 200 --pose_op_start_iter 10 
#     python render_novel_pose.py -s ./data/${name} -m output_${name}/${name}_stage1 --src_type wild --epoch ${EPOCH} --pose observ --stage 1
#     python render_novel_pose.py -s ./data/${name} -m output_${name}/${name}_stage1 --src_type wild --epoch ${EPOCH} --pose tpose --stage 1


# done

# for name in zju_377 zju_386 zju_392  
# do
#     echo "output_${name}/${name}_stage1"
#     python train.py -s ./data/${name} -m output_${name}/${name}_stage1 --src_type zju_mocap --train_stage 1 --epochs 200 --pose_op_start_iter 10 
#     python render_novel_pose.py -s ./data/${name} -m output_${name}/${name}_stage1 --src_type zju_mocap --epoch ${EPOCH} --pose observ --stage 1
#     python render_novel_pose.py -s ./data/${name} -m output_${name}/${name}_stage1 --src_type zju_mocap --epoch ${EPOCH} --pose tpose --stage 1

# done

# for name in zju_387 zju_393 zju_394  
# do
#     echo "output_${name}/${name}_stage1"
#     python train.py -s ./data/${name} -m output_${name}/${name}_stage1 --src_type zju_mocap_1 --train_stage 1 --epochs 200 --pose_op_start_iter 10 
#     python render_novel_pose.py -s ./data/${name} -m output_${name}/${name}_stage1 --src_type zju_mocap_1 --epoch ${EPOCH} --pose observ --stage 1
#     python render_novel_pose.py -s ./data/${name} -m output_${name}/${name}_stage1 --src_type zju_mocap_1 --epoch ${EPOCH} --pose tpose --stage 1

# done
# zju313-train zju377-train zju377-test zju386-test zju386-train zju387-test zju387-train
#bike-test bike-train citron-train citron-test jogging-test jogging-train lab-test lab-train parkinglot-train parkinglot-test
#for name in female-3-casual female-4-casual male-3-casual zju313-train zju313-test zju377-train zju377-test zju386-test zju386-train zju387-test zju387-train bike-test bike-train citron-train citron-test jogging-test jogging-train lab-test lab-train parkinglot-train parkinglot-test #  female-3-casual  m4c1 dyn_f my_377 m4c_processed
for name in seattle
do                            
#    echo "output_${name}/${name}_stage1"
#    echo python train.py -s ./data/${name} -m output_${name}/${name}_stage1 --src_type monocap --train_stage 1 --epochs 200 --pose_op_start_iter 10 --end_epoch 200 --unseen_view 0

#    python train.py -s ./data/${name} -m output_${name}/${name}_stage1 --src_type monocap --train_stage 1 --epochs 200 --pose_op_start_iter 10 --end_epoch 200 --unseen_view 0
#    python render_novel_pose.py -s ./data/${name} -m output_${name}/${name}_stage1 --src_type monocap --epoch 200 --pose observ --stage 1
#    python render_novel_pose.py -s ./data/${name} -m output_${name}/${name}_stage1 --src_type monocap --epoch 200 --pose tpose --stage 1
#    python eval.py -s ./data/${name} -m output_${name}/${name}_stage1 --train_stage 1 --epoch 200

#    python ./scripts/export_stage_1_smpl.py --sub ${name}
#    python train.py -s ./data/${name} -m output_${name}/${name}_finetuned --src_type monocap --train_stage 3 --epochs 50 --stage1_out_path output_${name}/${name}_stage1/net/iteration_200
#    python render_novel_pose.py -s ./data/${name} -m output_${name}/${name}_finetuned --src_type monocap --epoch 50 --pose observ --stage 2
#    python render_novel_pose.py -s ./data/${name} -m output_${name}/${name}_finetuned --src_type monocap --epoch 50 --pose tpose --stage 1
#    python eval.py -s ./data/${name} -m output_${name}/${name}_finetuned --train_stage 1 --epoch 50



#    python train.py -s ./data/${name} -m output_${name}/${name}_stage1 --src_type monocap --train_stage 1 --checkpoint_epochs 200  --end_epoch 250 --unseen_view 1
#    python render_novel_pose.py -s ./data/${name} -m output_${name}/${name}_stage1 --src_type monocap --epoch 250 --pose observ --stage 1
#    python render_novel_pose.py -s ./data/${name} -m output_${name}/${name}_stage1 --src_type monocap --epoch 250 --pose tpose --stage 1
#    echo python render_novel_pose1.py -s ./data/${name} -m output_${name}/${name}_stage1 --epoch 300  --stage 1
#    python eval.py -s ./data/${name} -m output_${name}/${name}_stage1 --train_stage 1 --epoch 250

#    python train.py -s ./data/${name} -m output_${name}/${name}_stage1 --src_type monocap --train_stage 1 --epochs 0 --checkpoint_epochs 200  --end_epoch 400 --unseen_view 1

#    python render_novel_pose.py -s ./data/${name} -m output_${name}/${name}_stage1 --src_type monocap --epoch 400 --pose observ --stage 1
#    python render_novel_pose.py -s ./data/${name} -m output_${name}/${name}_stage1 --src_type monocap --epoch 400 --pose tpose --stage 1
#    python eval.py -s ./data/${name} -m output_${name}/${name}_stage1 --train_stage 1 --epoch 400

done
python render_novel_pose1.py -s data/dyn_m -m output_dyn_m/dyn_m_stage1 --epoch 300