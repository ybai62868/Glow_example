## Installation

### Requirements

- Linux 
- Python 3.0 + 
- GCC ( G++ ) 4.8.5 or higher
- [Miniconda Linux 64-bit](https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh)

We have tested the following version of OS and software:

- OS:  CentOS Linux release 7.5.1804 (Core)
- GCC ( G++ ): 4.8.5
- AWS EC2 Instance: 1.5.0

### Install Samples(DigitRec) on AWS

a. Install HeteroCL from my repo using the aws branch.

```shell
git clone -b aws https://github.com/ybai62868/heterocl.git
```

b. Clone the aws-fpga tool repository.

```shell
git clone https://github.com/aws/aws-fpga.git 
```

c. Install SDAccel development environment 

```shell
source envir.sh
```

**Note:** You should put the envir.sh outside the aws-fpga folder and envir.sh can be found in `docs folder`.

d. Clone the DigitRec Lab repository.

```shell
git clone https://github.com/ybai62868/lab_digitrec_aws.git
```

**Note:** The default location for this repo is `/home/centos/src/project_data/lab_digitrec_aws` in AWS. If your folder structure is different, you may need to change the correpsonding paths in some files. But I recommend you use this structure.



