### 安装说明

- **1** 安装所有必备库，包括Git。对于类似Debian的Linux发行版（如Ubuntu），将是以下内容：
```ruby 

$ sudo apt-get install libncurses5-dev libgnome2-dev libgnomeui-dev \
    libgtk2.0-dev libatk1.0-dev libbonoboui2-dev \
    libcairo2-dev libx11-dev libxpm-dev libxt-dev python-dev \
    python3-dev ruby-dev lua5.1 lua5.1-dev libperl-dev git

```
>**ps：** 在Ubuntu 16.04上，liblua5.1-dev是lua dev包名称，不是lua5.1-dev。
请确认 vim 版本是7.4 + ，并且支持Python,通过命令测试 :echo has('python') || has('python3')
如果结果是1则支持，否则不支持。

- **2** clone code,把clone后的代码vim目录改为.vim 并且执行下面命令进行安装：
 
```ruby

$ cd ./vim
$ sudo ./scripts/setup

```
>**ps：** 如果出现安装失败，可以检查plugins 里面的路径是否正确，或者可能超时导致，进行重试。

- **3** Install YCM
git submodule update --init --recursive
sudo apt-get install build-essential cmake
确保python头文件已安装：sudo apt-get install python-dev

- **4** 安装YouCompleteMe
- **5** 下载和编译llvm & clang http://releases.llvm.org/download.html
1. 把下载好的llvm 和 clang 分别解压存放到新建文件夹llvm和clang，然后在把clang文件存放到 llvm/tools
2. 编译llvm和clang，详细步骤请到http://clang.llvm.org/get_started.html
```ruby

$ mkdir build (in-tree build is not supported)
$ cd build
$ cmake -G "Unix Makefiles" ../llvm
$ make

```
3. 下载Pre-Built Binaries (clang+llvm-3.9.0-x86_64-linux-gnu-ubuntu-16.04.tar.xz) 
并且解压到 ~/ycm_temp/llvm_root_dir
```ruby

$ cd ~
$ mkdir ycm_build
$ cd ycm_build
//支持 C/C++ 语义
$ cmake -G "Unix Makefiles" -DPATH_TO_LLVM_ROOT=~/ycm_temp/llvm_root_dir . ~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp
//否则如果不想支持 
$ cmake -G "Unix Makefiles" . ~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp
//编译
$ cmake --build . --target ycm_core --config Release

```
>**ps：** --config Release部分特定于Windows，在Unix操作系统上将被忽略。
如果手动安装vim
```ruby

$ sudo apt-get install libncurses5-dev libgnome2-dev libgnomeui-dev \
    libgtk2.0-dev libatk1.0-dev libbonoboui2-dev \
    libcairo2-dev libx11-dev libxpm-dev libxt-dev python-dev \
    python3-dev ruby-dev lua5.1 lua5.1-dev libperl-dev

ps: 在Ubuntu 16.04上，liblua5.1-dev是lua dev包名称，不是lua5.1-dev

$ cd ~
$ git clone https://github.com/vim/vim.git
$ cd vim
$ ./configure --with-features=huge             --enable-multibyte             --enable-rubyinterp=yes             --enable-pythoninterp=yes             --with-python-config-dir=/usr/lib/python2.7/config-x86_64-linux-gnu/    --enable-luainterp=yes             --enable-gui=gtk2 --enable-cscope --prefix=/usr
$ make VIMRUNTIMEDIR=/usr/share/vim/vim80
$ sudo make install

```
### 反馈与建议
- 微信公众号：ylct__
- 邮箱：<hj7.com@gmail.com>
