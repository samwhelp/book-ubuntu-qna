---
layout: page
title: 探索套件「cuda-repo-ubuntu1404-7-5-local」
description: >
  探索套件「cuda-repo-ubuntu1404-7-5-local」。
parent:
  title: 安裝 NVIDIA CUDA
  url: /read/case/nvidia-cuda
---

## 原始討論

原始討論「[回覆: unmet dependencies && broken packages](http://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=352464#forumpost352464)」。

## 回覆內容


# deb (local)

## 前置作業

準備工作環境資料夾

``` sh
mkdir ~/Downloads/cuda_local -p
cd ~/Downloads/cuda_local
```


## 下載檔案

下載「[cuda-repo-ubuntu1404-7-5-local_7.5-18_amd64.deb](http://developer.download.nvidia.com/compute/cuda/7.5/Prod/local_installers/cuda-repo-ubuntu1404-7-5-local_7.5-18_amd64.deb)」

``` sh
$ wget -c http://developer.download.nvidia.com/compute/cuda/7.5/Prod/local_installers/cuda-repo-ubuntu1404-7-5-local_7.5-18_amd64.deb
```

## 解開檔案

``` sh
$ dpkg -x cuda-repo-ubuntu1404-7-5-local_7.5-18_amd64.deb cuda-repo-ubuntu1404-local
```


## 小結

若有興趣研究探索的話，
一些指令使用，可以參考上一個「[回覆](http://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=352462#forumpost352462)」的介紹，來操作練習，

而「deb (local)」和「deb (network)」，最大的不同，

就是「deb (local)」裡面包含有很多其他的「deb檔」，放在「/var/cuda-repo-7-5-local」，

所以「cuda-repo-ubuntu1404-7-5-local_7.5-18_amd64.deb」這個檔案很大(1.9G)。

而「套件庫來源」則是指到本機的「/var/cuda-repo-7-5-local」這個資料夾。

``` sh
$ cat cuda-repo-ubuntu1404-local/etc/apt/sources.list.d/cuda-7-5-local.list
```

顯示

```
deb file:///var/cuda-repo-7-5-local /
```


執行

``` sh
$ tree cuda-repo-ubuntu1404-local
```

顯示

```
cuda-repo-ubuntu1404-local/
├── etc
│   └── apt
│       └── sources.list.d
│           └── cuda-7-5-local.list
├── usr
│   └── share
│       ├── doc
│       │   └── cuda-repo-ubuntu1404-7-5-local
│       │       ├── changelog.Debian.gz
│       │       └── copyright
│       └── lintian
│           └── overrides
│               └── cuda-repo-ubuntu1404-7-5-local
└── var
    └── cuda-repo-7-5-local
        ├── cuda_7.5-18_amd64.deb
        ├── cuda-7-5_7.5-18_amd64.deb
        ├── cuda-command-line-tools-7-5_7.5-18_amd64.deb
        ├── cuda-core-7-5_7.5-18_amd64.deb
        ├── cuda-cross-aarch64_7.5-18_amd64.deb
        ├── cuda-cross-aarch64-7-5_7.5-18_amd64.deb
        ├── cuda-cross-armhf_7.5-18_amd64.deb
        ├── cuda-cross-armhf-7-5_7.5-18_amd64.deb
        ├── cuda-cross-ppc64el_7.5-18_amd64.deb
        ├── cuda-cross-ppc64el-7-5_7.5-18_amd64.deb
        ├── cuda-cublas-7-5_7.5-18_amd64.deb
        ├── cuda-cublas-cross-aarch64-7-5_7.5-18_aarch64.deb
        ├── cuda-cublas-cross-armhf-7-5_7.5-18_armhf.deb
        ├── cuda-cublas-cross-ppc64el-7-5_7.5-18_ppc64el.deb
        ├── cuda-cublas-dev-7-5_7.5-18_amd64.deb
        ├── cuda-cudart-7-5_7.5-18_amd64.deb
        ├── cuda-cudart-cross-aarch64-7-5_7.5-18_aarch64.deb
        ├── cuda-cudart-cross-armhf-7-5_7.5-18_armhf.deb
        ├── cuda-cudart-cross-ppc64el-7-5_7.5-18_ppc64el.deb
        ├── cuda-cudart-dev-7-5_7.5-18_amd64.deb
        ├── cuda-cudnn-cross-armhf-7-5_7.5-18_armhf.deb
        ├── cuda-cufft-7-5_7.5-18_amd64.deb
        ├── cuda-cufft-cross-aarch64-7-5_7.5-18_aarch64.deb
        ├── cuda-cufft-cross-armhf-7-5_7.5-18_armhf.deb
        ├── cuda-cufft-cross-ppc64el-7-5_7.5-18_ppc64el.deb
        ├── cuda-cufft-dev-7-5_7.5-18_amd64.deb
        ├── cuda-curand-7-5_7.5-18_amd64.deb
        ├── cuda-curand-cross-aarch64-7-5_7.5-18_aarch64.deb
        ├── cuda-curand-cross-armhf-7-5_7.5-18_armhf.deb
        ├── cuda-curand-cross-ppc64el-7-5_7.5-18_ppc64el.deb
        ├── cuda-curand-dev-7-5_7.5-18_amd64.deb
        ├── cuda-cusolver-7-5_7.5-18_amd64.deb
        ├── cuda-cusolver-cross-aarch64-7-5_7.5-18_aarch64.deb
        ├── cuda-cusolver-cross-armhf-7-5_7.5-18_armhf.deb
        ├── cuda-cusolver-cross-ppc64el-7-5_7.5-18_ppc64el.deb
        ├── cuda-cusolver-dev-7-5_7.5-18_amd64.deb
        ├── cuda-cusparse-7-5_7.5-18_amd64.deb
        ├── cuda-cusparse-cross-aarch64-7-5_7.5-18_aarch64.deb
        ├── cuda-cusparse-cross-armhf-7-5_7.5-18_armhf.deb
        ├── cuda-cusparse-cross-ppc64el-7-5_7.5-18_ppc64el.deb
        ├── cuda-cusparse-dev-7-5_7.5-18_amd64.deb
        ├── cuda-documentation-7-5_7.5-18_amd64.deb
        ├── cuda-driver-cross-aarch64-7-5_7.5-18_aarch64.deb
        ├── cuda-driver-cross-armhf-7-5_7.5-18_armhf.deb
        ├── cuda-driver-cross-ppc64el-7-5_7.5-18_ppc64el.deb
        ├── cuda-driver-dev-7-5_7.5-18_amd64.deb
        ├── cuda-driver-headers-cross-armhf_352.39-1_armhf.deb
        ├── cuda-driver-libs-cross-armhf_352.39-1_armhf.deb
        ├── cuda-drivers_352.39-1_amd64.deb
        ├── cuda-gdb-src-7-5_7.5-18_amd64.deb
        ├── cuda-license-7-5_7.5-18_amd64.deb
        ├── cuda-minimal-build-7-5_7.5-18_amd64.deb
        ├── cuda-misc-headers-7-5_7.5-18_amd64.deb
        ├── cuda-misc-headers-cross-aarch64-7-5_7.5-18_aarch64.deb
        ├── cuda-misc-headers-cross-armhf-7-5_7.5-18_armhf.deb
        ├── cuda-misc-headers-cross-ppc64el-7-5_7.5-18_ppc64el.deb
        ├── cuda-npp-7-5_7.5-18_amd64.deb
        ├── cuda-npp-cross-aarch64-7-5_7.5-18_aarch64.deb
        ├── cuda-npp-cross-armhf-7-5_7.5-18_armhf.deb
        ├── cuda-npp-cross-ppc64el-7-5_7.5-18_ppc64el.deb
        ├── cuda-npp-dev-7-5_7.5-18_amd64.deb
        ├── cuda-nvrtc-7-5_7.5-18_amd64.deb
        ├── cuda-nvrtc-cross-aarch64-7-5_7.5-18_aarch64.deb
        ├── cuda-nvrtc-cross-armhf-7-5_7.5-18_armhf.deb
        ├── cuda-nvrtc-cross-ppc64el-7-5_7.5-18_ppc64el.deb
        ├── cuda-nvrtc-dev-7-5_7.5-18_amd64.deb
        ├── cuda-runtime-7-5_7.5-18_amd64.deb
        ├── cuda-samples-7-5_7.5-18_amd64.deb
        ├── cuda-toolkit-7-5_7.5-18_amd64.deb
        ├── cuda-visual-tools-7-5_7.5-18_amd64.deb
        ├── GPGKEY
        ├── gpu-deployment-kit_352.39-1_amd64.deb
        ├── libcuda1-352_352.39-0ubuntu1_amd64.deb
        ├── libxnvctrl0_352.39-0ubuntu1_amd64.deb
        ├── libxnvctrl-dev_352.39-0ubuntu1_amd64.deb
        ├── nvidia-352_352.39-0ubuntu1_amd64.deb
        ├── nvidia-352-dev_352.39-0ubuntu1_amd64.deb
        ├── nvidia-352-uvm_352.39-0ubuntu1_amd64.deb
        ├── nvidia-libopencl1-352_352.39-0ubuntu1_amd64.deb
        ├── nvidia-modprobe_352.39-0ubuntu1_amd64.deb
        ├── nvidia-opencl-icd-352_352.39-0ubuntu1_amd64.deb
        ├── nvidia-settings_352.39-0ubuntu1_amd64.deb
        ├── Packages.gz
        ├── Release
        └── Release.gpg

11 directories, 89 files
```
