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

- **3**

### 反馈与建议
- 微信公众号：ylct__
- 邮箱：<hj7.com@gmail.com>
