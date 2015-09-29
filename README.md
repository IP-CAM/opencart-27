# Payfort Start plugin for OpenCart

Start Payment Gateway Extension for Opencart 2.0

This is a Start Payment Gateway Extension for Opencart **2.0**. We also have [plugin](https://github.com/payfort/opencart-1.5.6) for OpenCart 1.5.6.

## Installation

Depending on your exisintg setup we can offer a different ways to install our
plugin:

### You have an ftp access to your server

Here are the steps you need to follow:

1. Go to Admin > Settings > Edit your store
2. Select FTP tab and enter all required data to upload extension to your server
  then save changes
3. Go to Extensions / Extension Installer to upload prepared extensions
4. Upload vqmod extension https://github.com/payfort/opencart/raw/master/vqmod.ocmod.zip
5. Upload Payfort Start extension https://github.com/payfort/opencart/raw/master/star_oc_2.0.ocmod.zip
6. visit http://yoursite.com/vqmod/install to enable vqmod
7. Done!

### You have ssh access to your server

We have an installer script that will download vqmod and our plugin, extract it
and copy into your opencart root. To get an idea of what it does, please look at its
[source code](installer.sh)

Follow this steps to install vqmod and our plugin using installer.sh scripe:

1. ssh to your server
2. download and run installer like this
```bash
$ wget https://github.com/payfort/opencart/raw/master/install.sh
$ ./install.sh
```
3. visit http://yoursite.com/vqmod/install to enable vqmod
4. Done!

### You want to do it yourself

Here are the steps you need to follow:

1. install [vqmod](https://github.com/vqmod/vqmod) for opencart on your server ([here are the instructions](https://github.com/vqmod/vqmod/wiki/Installing-vQmod-on-OpenCart) how to do it)
2. upload content of /upload from this repository to your server
3. Done!


## Configuration

Go to Admin > Extensions > Payments and click install next to the Payfort Start module.

Click on the edit link to set up the module and add your API keys.
