sudo apt-get update
sudo apt-get install paraview
sudo apt-get install octave
sudo apt-get install evince
sudo apt-get git-core
sudo apt-get gedit

cd $HOME/data/
mkdir CFDEM
cd CFDEM
git clone git://github.com/CFDEMproject/CFDEMcoupling-PUBLIC.git
cd $HOME/data/CFDEM/
mkdir LIGGGHTS
cd LIGGGHTS
git clone git://github.com/CFDEMproject/LIGGGHTS-PUBLIC.git
git clone git://github.com/CFDEMproject/LPP.git lpp


cd $HOME/data
mkdir OpenFOAM
cd OpenFOAM

git clone git://github.com/OpenFOAM/OpenFOAM-5.x.git
git clone git://github.com/OpenFOAM/ThirdParty-5.x.git
cd OpenFOAM-5.x
git checkout 538044ac05c4672b37c7df607dca1116fa88df88


sudo apt-get install build-essential flex bison cmake zlib1g-dev libboost-system-dev libboost-thread-dev libopenmpi-dev openmpi-bin gnuplot libreadline-dev libncurses-dev libxt-dev libscotch-dev libptscotch-dev

sudo apt-get install libvtk6-dev
sudo apt-get install python-numpy

cp $HOME/data/CFDEM/.bashrc/ ~/.bashrc

source ~/.bashrc
cd $WM_PROJECT_DIR
./Allwmake


cd $HOME/data/CFDEM/CFDEM
mv CFDEMcoupling-PUBLIC CFDEMcoupling-PUBLIC-$WM_PROJECT_VERSION


cfdemSysTest

cfdemCompCFDEMall
