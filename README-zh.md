# 基于IMDLBenCo框架的IML-ViT的训练和评估
[English Version](README.md) | 简体中文

## 两个非常相关的仓库

[![Readme Card](https://github-readme-stats.vercel.app/api/pin/?username=Sunnyhaze&repo=iml-vit)](https://github.com/Sunnyhaze/iml-vit)

[![Readme Card](https://github-readme-stats.vercel.app/api/pin/?username=scu-zjz&repo=imdlbenco)](https://github.com/scu-zjz/imdlbenco)

## 简介

- 包括非常轻松方便的训练和评估过程，适用于绝大多数篡改检测任务。
- 使用[IMDLBenCo](https://github.com/scu-zjz/IMDLBenCo)框架开发，您后续自己的模型也可以参考这样的设计范式来release仓库。
- 具体来说是使用了`benco init`功能，详情参考本[样例](https://scu-zjz.github.io/IMDLBenCo-doc/guide/quickstart/3_demo.html)：

## Prepare Dataset and pre-trained weights
- 参考BenCo教程中的[数据集准备章节](https://scu-zjz.github.io/IMDLBenCo-doc/guide/quickstart/0_dataprepare.html)或[IML-ViT的Readme](https://github.com/SunnyHaze/IML-ViT/blob/main/README.md)，它们的内容是一致的。
- 请参考[MAE下载链接](./pretrained-weights/mae_download_page.md)下载MAE预训练权重到该路径下。
## Quick Start

随后，你只需要修改`train_imlvit.sh`中的`--data_path`和`--test_data_path`路径为你准备好的数据集路径即可。

而后运行如下指令开始训练，日志会被输出到`output_dir`中的`logs.log`，而报错则会输出到`error.log`中。

```shell
sh train_imlvit.sh
```
同理，修改另外两个测试脚本中的数据集路径后，执行如下指令完成测试和鲁棒性测试。这个过程可以尽量参考IMDLBenCo的[数据集准备教程](https://scu-zjz.github.io/IMDLBenCo-doc/guide/quickstart/0_dataprepare.html)。和[案例三教程](https://scu-zjz.github.io/IMDLBenCo-doc/guide/quickstart/3_demo.html)。

```shell
sh test_mymodel.sh
```

```shell
sh test_robust_mymodel.sh
```