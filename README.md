# Part 1: C/C++ Ide

1. Install `GNU GLOBAL`; must have a recent version
2. Add `Melpa` support to Emacs
3. Add `el-get`, `ggtags`, `req-package`, `company`, `flycheck`

# Part 2: TFLOW
mkdir -p /mnt/notebooks/obj/opt/conda/lib/python3.5/site-packages/tensorflow/include
cd /opt/conda/lib/python3.5/site-packages/tensorflow/include
gtags /mnt/notebooks/obj/opt/conda/lib/python3.5/site-packages/tensorflow/include

mkdir -p /mnt/notebooks/obj/usr/include/
pushd .
pushd /usr/include
gtags /mnt/notebooks/obj/usr/include
pushd

1. copy cp -R /opt/conda/lib/python3.5/site-packages/tensorflow/include  /mnt/notebooks/obj_tf
2. MAKEOBJDIRPREFIX=/mnt/notebooks/obj_tf gtags

# Part 3: Scala
1. install `ensime` for emacs
2. refer to http://ensime.github.io/ for `Ensime`
3. add the plugins.sbt to .sbt in home directory

# Part 4: Java
1. install eclipse from sources
2. install eclim http://eclim.org/install.html; important: must run headless server
3. mvn eclipse:eclipse in the project directory
4. install the emacs eclimd extension

# PART TO DEVELOP
Code factorization and customization look at
https://github.com/kpurdon/.emacs.d/
https://realpython.com/emacs-the-best-python-editor/#configuration-and-packages