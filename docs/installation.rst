Prerequisites when You install on Your local Machine:
    - Ubuntu Xenial or newer
    - download all .sh files and the directory lib_bash to Your home directory
      and make them executable
    - xvfb Service installed and running for headless machines

If You want to install on Travis, just copy the travis.yml and .sh Files as well as the directory lib_bash to
Your project directory, there should be only minimal adoption needed to the yml file.

You might delete the codecov related entries if You dont have an account on codecov.
