## Installation

### Requirements

- Mac OS Mojave

- Python 3.7 + 

- VLGCC ( G++ ) 4.2.1 or higher

- [Miniconda Linux 64-bit](https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh)

- LLVM@07

  

### Install Glow from the official github

a. Install glow from this repo.

```shell
git clone https://github.com/pytorch/glow.git
```

b. Glow depends on a few submodules.

```shell
git submodule update --init --recursive
```

c. Install the requried dependencies using Homebrew.

```shell
brew install cmake graphviz libpng ninja protobuf wget glog autopep8

brew install llvm@7
```

d. Create a symbolic link to the Homebrew-installed `clang-*` tools so that the `utils/format.sh` script is able to find them later on.

```shell
ln -s "/usr/local/opt/llvm@7/bin/clang-format" "/usr/local/bin/clang-format"

ln -s "/usr/local/opt/llvm@7/bin/clang-tidy" "/usr/local/bin/clang-tidy"
```

e. Debug configuration (Build debug configuration outside of the source directory `glow`).

```shell
mkdir build_Debug
cd build_Debug
cmake -G Ninja -DCMAKE_BUILD_TYPE=Debug ../glow
ninja all
```

**Note:** If you're running Mac OS v10.14 (Mojave) and `ninja all` fails because it can't find headers (e.g. `string.h`), run this command to fix it, and try again.

```shel
open /Library/Developer/CommandLineTools/Packages/macOS_SDK_headers_for_macOS_10.14.pkg
```

f. Release configuration (Build release configuration in the source directory `glow`)

```shell
mkdir build
cd build
cmake ..
make -j128
make install 
```





