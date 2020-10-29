# planercnn-adf

This work is based on PlaneRCNN algorithm which is licensed under the Creative Commons Attribution NonCommercial ShareAlike 4.0 License.
Copyright (c) 2018 NVIDIA Corp. All Rights Reserved. 

The implementation of the ADF distribution propagation is derived from the paper "A General Framework for Uncertainty Estimation in Deep Learning" (Loquercio, Segù, Scaramuzza. RA-L 2020)

Setting up the environment for PlaneRCNN
------------------------------------------

You need to bulid nms and roialign with cuda-8.0 , gcc 5+, torch 0.4.0
Then upgrade to torch==0.4.1 and run  evaluate.py


On setting up the environment for PlaneRCNN, see
https://github.com/NVlabs/planercnn

**Note:** You do not have to clone the NVlabs/planercnn repo since all the code is already contained in this repo

ADF distribution propagation 
--------------------------------------------

[ADF distribution propagation for replacing torch.nn modules](./contrib/adf.py) was downloaded from the original [uncertainty_estimation_deep_learning repo](https://github.com/mattiasegu/uncertainty_estimation_deep_learning)

To run inference for planercnn with ADF distribution propagation
------------------------------------------------------------------

 In [visualize_utils.py](visualize_utils.py) import modules from models_adf (Comment line 16 and uncomment line 17)
 
 In [evaluate_utils.py](evaluate_utils.py)  import modules from models_adf  (Comment line 10 and uncomment line 11)
 
``` 
python evaluate_adf.py --methods=f --suffix=warping_refine --dataset=inference --customDataFolder=example_images
```
