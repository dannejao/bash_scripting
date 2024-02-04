#!/bin/bash

package=htop
#package=htoppp
# >> redirectar output till en log fil istället.
sudo apt install $package >> package_install_results.log

if [ $? == 0 ]
then
    echo "Installationen av $package lyckades."
    echo "Det nya commandot är tillgängligt:"
    which $package
else
    echo "installationen av $package misslyckades"
    echo "Installationen av $package misslyckades" >> package_install_failure.log
fi