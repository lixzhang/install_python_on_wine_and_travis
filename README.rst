Install wine / python on Linux and/or Travis
============================================

|Build Status|

- Scripts and travis.yml file to install wine on linux

- Scripts and travis.yml file to install python on wine

- Scripts and travis.yml file to install Git on Wine 32 Bit or 64 Bit

- Scripts and travis.yml file to run pytest ond codecov on python on wine

- travis .yml to install Windows Python 2.7 and 3.7 builds

- travis .yml to install pypy Python 2.7 and 3.7 builds

- travis .yml to install OsX Python 2.7 and 3.7 builds

`100% working, tested under Linux, OsX, Windows and Wine <https://travis-ci.org/bitranox/install_python_on_wine_and_travis>`_

Prerequisites when You install on Your local Machine:
=====================================================

    - Ubuntu Xenial or newer
    - download all .sh files and make them executable
    - xvfb Service installed and running for headless machines


If You want to install on Travis, just copy the travis.yml and .sh Files to Your project directory, there should be no adoption needed on the yml file.

Install WINE
============

.. code-block:: bash


    # set the wine_version from Your command prompt
    export wine_version="stable"     # for wine version stable, somehow old
    export wine_version="devel"      # for wine version development, recommended
    export wine_version="staging"    # for wine version staging, the newest version, might be unstable

    # next step will install wine - after that You will be able to set up 32 and 64 Bit Wine Machines
    install_wine.sh


Set up Wine Machine
===================

you can set up as many Wine Machines as You want, with different settings, by selecting different WINEPREFIX
the WINEPREFIX is the path to the Wine machine, defaults to /home/<user>/.wine

You need to set the Architecture, default is 64 Bit :


.. code-block:: bash

    #############################################
    # Install Wine Machine 1 (32 Bit)
    #############################################
    # set Wine Prefix for Machine 1 (32 Bit)
    export WINEPREFIX=${HOME}/wine/wine32_machine_01
    # set Architecture to 32 Bit
    export WINEARCH="win32"
    # set wine_windows_version to report, defaults to "win10"
    # possible values: win10, win2k, win2k3, win2k8, win31, win7, win8, win81, win95, win98, winxp
    export wine_windows_version="win10"
    # next step is to set up the wine machine
    install_wine_machine.sh

    #############################################
    # Install Wine Machine 1 (64 Bit)
    #############################################
    # set Wine Prefix for Machine 2 (64 Bit)
    export WINEPREFIX=${HOME}/wine/wine64_machine_02
    # set Architecture to 64 Bit
    export WINEARCH=""
    # set wine_windows_version to report, defaults to "win10"
    # possible values: win10, win2k, win2k3, win2k8, win31, win7, win8, win81, win95, win98, winxp
    export wine_windows_version="win10"
    # next step is to set up the wine machine
    install_wine_machine.sh


Install latest Python 2.7 on WINE
=================================

you should install a 32 Bit Python on a 32 Bit Wine Machine, and 64 Bit Python on a 64 Bit Wine Machine.
Other combinations will probably not work.
The path setting in the registry of the wine machine will be adapted to point to the python 2.7 directories


.. code-block:: bash

    #############################################
    # install python 2.7 32 Bit Version on Machine 1
    #############################################
    # set Wine Prefix for Machine 1 (32 Bit)
    export WINEPREFIX=${HOME}/wine/wine32_machine_01
    # set Architecture to 32 Bit
    export WINEARCH="win32"
    # next step is to install python 2.7 on the Wine Machine
    install_win_python2_preinstalled.sh

    #############################################
    # install python 2.7 64 Bit Version on Machine 2
    #############################################
    # set Wine Prefix for Machine 2 (64 Bit)
    export WINEPREFIX=${HOME}/wine/wine64_machine_02
    # set Architecture to 64 Bit
    export WINEARCH=""
    # next step is to install python 2.7 on the Wine Machine
    install_win_python2_preinstalled.sh



Install latest Python 3.7 on WINE
=================================

you should install a 32 Bit Python on a 32 Bit Wine Machine, and 64 Bit Python on a 64 Bit Wine Machine.
Other combinations will probably not work.
The path setting in the registry of the wine machine will be adapted to point to the python 3.7 directories
You CAN install Python 2.7 and 3.7 on the same WINE Machine, although the paths will point to the version installed at last.

.. code-block:: bash

    #############################################
    # install python 3.7 32 Bit Version on Machine 1
    #############################################
    # set Wine Prefix for Machine 1 (32 Bit)
    export WINEPREFIX=${HOME}/wine/wine32_machine_01
    # set Architecture to 32 Bit
    export WINEARCH="win32"
    # next step is to install python 3.7 on the Wine Machine
    install_win_python3_preinstalled.sh

    #############################################
    # install python 3.7 64 Bit Version on Machine 2
    #############################################
    # set Wine Prefix for Machine 2 (64 Bit)
    export WINEPREFIX=${HOME}/wine/wine64_machine_02
    # set Architecture to 64 Bit
    export WINEARCH=""
    # next step is to install python 3.7 on the Wine Machine
    install_win_python3_preinstalled.sh


Install GIT on WINE
===================


.. code-block:: bash

    #############################################
    # install Git 32 Bit Version on Machine 1
    #############################################
    # set Wine Prefix for Machine 1 (32 Bit)
    export WINEPREFIX=${HOME}/wine/wine32_machine_01
    # set Architecture to 32 Bit
    export WINEARCH="win32"
    # next step is to install Git 32 Bit on the Wine Machine
    install_wine_git_portable.sh

    #############################################
    # install Git 64 Bit Version on Machine 1
    #############################################
    # set Wine Prefix for Machine 2 (64 Bit)
    export WINEPREFIX=${HOME}/wine/wine64_machine_02
    # set Architecture to 64 Bit
    export WINEARCH=""
    # next step is to install Git 64 Bit on the Wine Machine
    install_win_python2_preinstalled.sh


Running Commands
================


.. code-block:: bash

    #############################################
    # Running Commands on Machine 1
    #############################################
    # set Wine Prefix for Machine 1 (32 Bit)
    export WINEPREFIX=${HOME}/wine/wine32_machine_01
    # test if it is working
    wine pip install --upgrade pip
    # opening wineconsole
    wineconsole

    #############################################
    # Running Commands on Machine 2
    #############################################
    # set Wine Prefix for Machine 2 (64 Bit)
    export WINEPREFIX=${HOME}/wine/wine64_machine_02
    # test if it is working
    wine pip install --upgrade pip
    # opening wineconsole
    wineconsole


-----


`Report Issues <https://github.com/bitranox/install_python_on_wine_and_travis/blob/master/ISSUE_TEMPLATE.md>`_

`Contribute <https://github.com/bitranox/install_python_on_wine_and_travis/blob/master/CONTRIBUTING.md>`_

`Pull Request <https://github.com/bitranox/install_python_on_wine_and_travis/blob/master/PULL_REQUEST_TEMPLATE.md>`_

`Code of Conduct <https://github.com/bitranox/install_python_on_wine_and_travis/blob/master/CODE_OF_CONDUCT.md>`_



Requirements
------------

python2 preinstalled (will be downloaded automatically), see : https://github.com/bitranox/binaries_python27_wine

python3 preinstalled (will be downloaded automatically), see : https://github.com/bitranox/binaries_python37_wine

portable Git preinstalled (will be downloaded automatically), see : https://github.com/bitranox/binaries_portable_git


Acknowledgement
---------------

special thanks to "uncle bob" Robert C. Martin, especially for his books on "clean code" and "clean architecture"

Contribute
----------

I would love for you to fork and send me pull request for this project.
Please contribute.

License
-------

This software is licensed under the `MIT license <http://en.wikipedia.org/wiki/MIT_License>`_

See `License file <https://github.com/bitranox/install_python_on_wine_and_travis/blob/master/LICENSE.txt>`_

.. |Build Status| image:: https://travis-ci.org/bitranox/install_python_on_wine_and_travis.svg?branch=master
   :target: https://travis-ci.org/bitranox/install_python_on_wine_and_travis