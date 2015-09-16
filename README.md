# vim
This repository contains my current vim configuration. It also contains the following plugins:

- pathogen
- syntastic
- eregex
- nerdtree
- perl-support
- tabline
- vim-commentary
- vim-json
- vim-xpath 

To copy and use it, simply go to your home directory and clone it:

```
cd ~
git clone https://github.com/cirulls/vim.git
```


## Libraries requirements
### lxml
If you get the following warning: 

*vim-xpath requires the lxml python library (http://lxml.de) to be installed. To stop this message from appearing, either install lxml, uninstall this plugin or add the line "let g:skip_xpath = 1" to your vimrc.*

first, make sure you have the development libraries of libxml and libxslt installed. On CentOS/RedHat/Fedora:

```
sudo yum install -y libxml-devel libxslt-devel
```

then, install the lxml python library as follows:

```
sudo pip install lxml
```

### powerline
If you want to use the powerline status bar (https://pypi.python.org/pypi/powerline-status/2.1.4), install it via pip:

```
pip install powerline-status
```

and check the correct path to the powerline package in the .vimrc file. For example, in my .vimrc file, this is set as follows:

```
set rtp+=/usr/lib/python2.7/site-packages/powerline/bindings/vim/
```

You may need to adjust the path according to the version of python you are using (python2.7 in this case).

For issues relates to fonts for powerline see https://powerline.readthedocs.org/en/latest/installation/linux.html#font-installation



