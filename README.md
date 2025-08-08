<div align="center">

# <b>HumanRefiner</b>



</div>

## :mega: Updates
[8/8/2025] Inference codes are released.
## Introduction

We present HumanRifiner, a 2D prior-enhanced multi-view refinement method to refine the human avatar appearance deficiencies by personalized prior injection.

## Installation

To deploy and run HumanRefiner, run the following scripts:
```
conda env create --file environment.yml
conda activate gs-avatar
```

Then, compile ```diff-gaussian-rasterization``` and ```simple-knn``` as in [3DGS](https://github.com/graphdeco-inria/gaussian-splatting) repository.

## Download models and data 

- SMPL/SMPL-X model: register and download [SMPL](https://smpl.is.tue.mpg.de/) and [SMPL-X](https://smpl-x.is.tue.mpg.de/), and put these files in ```assets/smpl_files```. The folder should have the following structure:
```
smpl_files
 └── smpl
   ├── SMPL_FEMALE.pkl
   ├── SMPL_MALE.pkl
   └── SMPL_NEUTRAL.pkl
 └── smplx
   ├── SMPLX_FEMALE.npz
   ├── SMPLX_MALE.npz
   └── SMPLX_NEUTRAL.npz
```
## Run on NeuMan dataset

We take the subject `seattle` for example. 

### Evaluation and Rendering novel pose

```
./run_stage1.sh
```

## Run on Your Own Video

### Preprocessing

- masks and poses: use the bash script `scripts/custom/process-sequence.sh` in [InstantAvatar](https://github.com/tijiang13/InstantAvatar). The data folder should have the followings:
```
smpl_files
 ├── images
 ├── masks
 ├── cameras.npz
 └── poses_optimized.npz
```
- data format: we provide a script to convert the pose format of romp to ours (remember to change the `path` in L50 and L51):
```
cd scripts & python sample_romp2gsavatar.py
```
- position map of the canonical pose: (remember to change the corresponding `path`)
```
python gen_pose_map_cano_smpl.py
```



## Todo

- [x] Release the inference codes.
- [ ] Release the training codes.
- [ ] Release the reorganized data. 



## Acknowledgements

This project is built on source codes shared by [GaussianAvatar](https://github.com/aipixel/GaussianAvatar) and [InstantAvatar](https://github.com/tijiang13/InstantAvatar).
