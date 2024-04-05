# MOLAnnotate
MOLA ANNOTATE TOOLKIT: A FREE- AND OPEN SOURCE DATASET JSON ANNOTATION TOOL

**Author: [nmc-costa](https://github.com/nmc-costa)**

![Alt Text](https://github.com/eng-motionlab/molannotate/blob/main/figures/annotation_pipeline.png)


# Folder structure

**"export2algorithm"**: Scripts for exporting datasets to algorithms using the JSON Mola format. 
- Currently available: [YOLOv5](https://github.com/ultralytics/yolov5) format, [mmaction2](https://github.com/open-mmlab/mmaction2) framework format,[fairmot](https://github.com/ifzhang/FairMOT) format

**"batch"**: Find batchs to start jupyter

**"examples"**: examples of dataset and jsons used in nootebooks

**"experimental"**: new scripts that are in experimentation and testing

**"figures"**: figures with examples

**"matlab"**: scripts to convert matlab labels


# MOLA DATASET

- [**github mola_incar_rgb**](https://github.com/eng-motionlab/mola_incar)
- [**Full dataset Repositorium**](https://doi.org/10.34622/datarepositorium/1S8QVP)


# Citations
If you use molannotate and mola dataset for anything we humbly ask you to cite us:
```bibtex
@Article{s23125610,
AUTHOR = {Rodrigues, Nelson R. P. and da Costa, Nuno M. C. and Melo, César and Abbasi, Ali and Fonseca, Jaime C. and Cardoso, Paulo and Borges, João},
TITLE = {Fusion Object Detection and Action Recognition to Predict Violent Action},
JOURNAL = {Sensors},
VOLUME = {23},
YEAR = {2023},
NUMBER = {12},
ARTICLE-NUMBER = {5610},
URL = {https://www.mdpi.com/1424-8220/23/12/5610},
PubMedID = {37420776},
ISSN = {1424-8220},
ABSTRACT = {In the context of Shared Autonomous Vehicles, the need to monitor the environment inside the car will be crucial. This article focuses on the application of deep learning algorithms to present a fusion monitoring solution which was three different algorithms: a violent action detection system, which recognizes violent behaviors between passengers, a violent object detection system, and a lost items detection system. Public datasets were used for object detection algorithms (COCO and TAO) to train state-of-the-art algorithms such as YOLOv5. For violent action detection, the MoLa InCar dataset was used to train on state-of-the-art algorithms such as I3D, R(2+1)D, SlowFast, TSN, and TSM. Finally, an embedded automotive solution was used to demonstrate that both methods are running in real-time.},
DOI = {10.3390/s23125610}
}

@article{RODRIGUES2022108564,
title = {AI based monitoring violent action detection data for in-vehicle scenarios},
journal = {Data in Brief},
volume = {45},
pages = {108564},
year = {2022},
issn = {2352-3409},
doi = {https://doi.org/10.1016/j.dib.2022.108564},
url = {https://www.sciencedirect.com/science/article/pii/S2352340922007715},
author = {Nelson R.P. Rodrigues and Nuno M.C. da Costa and Rita Novais and Jaime Fonseca and Paulo Cardoso and João Borges},
keywords = {Action recognition, Autonomous vehicles, Deep learning, Violent action, Dataset},
abstract = {With the evolution of technology associated with mobility and autonomy, Shared Autonomous Vehicles will be a reality. To ensure passenger safety, there is a need to create a monitoring system inside the vehicle capable of recognizing human actions. We introduce two datasets to train human action recognition inside the vehicle, focusing on violence detection. The InCar dataset tackles violent actions for in-car background which give us more realistic data. The InVicon dataset although doesn't have the realistic background as the InCar dataset can provide skeleton (3D body joints) data. This datasets were recorded with RGB, Depth, Thermal, Event-based, and Skeleton data. The resulting dataset contains 6 400 video samples and more than 3 million frames, collected from sixteen distinct subjects. The dataset contains 58 action classes, including violent and neutral (i.e., non-violent) activities.}
}

@data{datarepositorium/1S8QVP_2022,
author = {R. P. Rodrigues, Nelson and M. C. da Costa, Nuno and Novais, Rita and Fonseca, Jaime and Cardoso, Paulo and Borges, Joao},
publisher = {RepositÃ³rio de Dados da Universidade do Minho},
title = {{MoLa InCar AR: Dataset for Action Recognition}},
UNF = {UNF:6:t/LCTlQafeWpztygw8cACQ==},
year = {2022},
version = {V2},
doi = {10.34622/datarepositorium/1S8QVP},
url = {https://doi.org/10.34622/datarepositorium/1S8QVP}
}

```





