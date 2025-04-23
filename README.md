# Training and Evaluation of IML-ViT Based on IMDLBenCo Framework
English Version | [简体中文](README-zh.md)
## Two Highly Relevant Repositories

[![Readme Card](https://github-readme-stats.vercel.app/api/pin/?username=Sunnyhaze&repo=iml-vit)](https://github.com/Sunnyhaze/iml-vit)

[![Readme Card](https://github-readme-stats.vercel.app/api/pin/?username=scu-zjz&repo=imdlbenco)](https://github.com/scu-zjz/imdlbenco)

## Introduction
- Includes very easy and convenient training and evaluation processes suitable for most tampering detection tasks.
- Developed using the [IMDLBenCo](https://github.com/scu-zjz/IMDLBenCo) framework. You can refer to this design paradigm when releasing your own models in the future.
- Specifically, it uses the `benco init` feature. For details, please refer to this [example](https://scu-zjz.github.io/IMDLBenCo-doc/guide/quickstart/3_demo.html):


## Quick Start Guide

### Environment Setup  
Please run the following command to clone this repository into your working directory:  
```shell
git clone https://github.com/SunnyHaze/IML-ViT-IMDLBenCo.git
```

Then, run the following command to install the required dependencies (make sure you have PyTorch installed beforehand):  
```shell
pip install -r requirements.txt
```

## Prepare Dataset and Pre-trained Weights
- Refer to the [Dataset Preparation Section](https://scu-zjz.github.io/IMDLBenCo-doc/guide/quickstart/0_dataprepare.html) in the BenCo tutorial or the [IML-ViT Readme](https://github.com/SunnyHaze/IML-ViT/blob/main/README.md) - their contents are identical.
- Please refer to the [MAE Download Link](./pretrained-weights/mae_download_page.md) to download MAE pre-trained weights to this path.

Afterwards, you only need to modify the `--data_path` and `--test_data_path` in `train_imlvit.sh` to your prepared dataset paths.

Then run the following command to start training. Logs will be output to `logs.log` in `output_dir`, while errors will be output to `error.log`.

```shell
sh train_imlvit.sh
```
Similarly, after modifying the dataset paths in the other two test scripts, execute the following commands to complete testing and robustness testing. This process can refer to IMDLBenCo's [Dataset Preparation Tutorial](https://scu-zjz.github.io/IMDLBenCo-doc/guide/quickstart/0_dataprepare.html) and [Case Three Tutorial](https://scu-zjz.github.io/IMDLBenCo-doc/guide/quickstart/3_demo.html).

```shell
sh test_mymodel.sh
```

```shell
sh test_robust_mymodel.sh
```