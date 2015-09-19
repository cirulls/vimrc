# vimrc
This repository contains my vimrc configuration and the following vim plugins:

- [pathogen](https://github.com/tpope/vim-pathogen)
- [syntastic](https://github.com/scrooloose/syntastic)
- [eregex](https://github.com/othree/eregex.vim)
- [nerdtree](https://github.com/scrooloose/nerdtree)
- [perl-support](https://github.com/vim-scripts/perl-support.vim)
- [jedi-vim](https://github.com/davidhalter/jedi-vim) 
- [tabline](https://github.com/mkitt/tabline.vim)
- [vim-commentary](https://github.com/tpope/vim-commentary)
- [vim-json](https://github.com/elzr/vim-json)
- [vim-xpath](https://github.com/actionshrimp/vim-xpath)

I clone this configuration to my home directory every time I need my vim configuration on a new machine (typically when using cloud instances). 

This configuration assumes that vim 7.+ with python support is installed. You can check the vim version with
```
vim --version
```


## Libraries requirements
### lxml
In case you get the following warning: 

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


## Licenses
This configuration is licensed under GNU GPL3 but each plugin has its own license. vim itself is licensed under a [charityware license](https://github.com/vim/vim#copying) (GPL compatible).
