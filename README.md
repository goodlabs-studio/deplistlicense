# deplistlicense
A shell script to take the name of the package and print all the dependency packages' licenses information

This script uses dnp and need internet access to https://rpmfind.net to extract license information from there.

./deplistlicense.sh google-chrome-stable 

License report of all dependency packages for google-chrome-stable
=====================================================================
Package : alsa-lib
Detail  : alsa-lib-1.2.2-1.fc31.x86_64
License : LGPLv2+
-------------------------------------------------------------------
Package : alternatives
Detail  : alternatives-1.11-5.fc31.x86_64
License : GPLv2
-------------------------------------------------------------------
Package : at-spi2-atk
Detail  : at-spi2-atk-2.34.2-1.fc31.x86_64
License : LGPLv2+
-------------------------------------------------------------------
Package : at-spi2-core
Detail  : at-spi2-core-2.34.0-1.fc31.x86_64
License : LGPLv2+
-------------------------------------------------------------------
Package : atk
Detail  : atk-2.34.1-1.fc31.x86_64
License : LGPLv2+
-------------------------------------------------------------------
Package : bash
Detail  : bash-5.0.11-1.fc31.i686
License : GPLv3+

.....
