# DevEnvBootstrap
一键创建你专属的开发环境。

原本使用[容器方案](https://github.com/kevin1sMe/dev-container)，其隔离性对于环境维护有时不是必须的，反而引发一些问题。
现基于Devbox的方案，原有的两大痛点都可得以解决：
* 因文件系统的隔离，配置变更等在更新/重建容器后消失的问题。
* 软件的管理不方便，因前一问题，打镜像方式增删改软件成本高。


## 基本使用
### Linux
```bash
# 克隆本仓库
git clone https://github.com/kevin1sMe/DevEnvBootstrap.git && cd devbox 

# 安装nix+devbox
# 下述脚本会尝试使用国内加速镜像来安装软件
bash setup.sh
# 若上述执行有问题，可直接使用如下安装nix+devbox
#curl -fsSL https://get.jetpack.io/devbox | bash

# 获得个人开发环境
devbox shell
```

### 功能点
- [x] 基础包安装
- [x] 各工具配置设定(基于Plugin)
   - [x] vault的环境变量&&配置
   - [x] earthly的环境变量&&配置
- [x] 使用国内源加速
- [ ] 非源内工具安装

### 基础软件包
* kubectl
* istioctl
* vault
* earthly
* k9s


### 非源内工具安装
- [ ] gitee-golangci-lint(仅为测试)

## 一些资料
### 如何在nix构建go包
https://github.com/NixOS/nixpkgs/blob/nixos-unstable/doc/languages-frameworks/go.section.md