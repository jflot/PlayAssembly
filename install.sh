#Reads corrector
#~ git clone --recursive https://github.com/GATB/bloocoo.git
#~ cd bloocoo;
#~ mkdir build;
#~ cd build;
#~ cmake ..;
#~ make -j 4;
#~ cd ../..;
wget https://github.com/GATB/bloocoo/releases/download/v1.0.7/Bloocoo-v1.0.7-bin-Linux.tar.gz ;
tar -xvzf Bloocoo-v1.0.7-bin-Linux.tar.gz;

#Assembler
#~ git clone --recursive https://github.com/GATB/minia.git
#~ cd minia;
#~ mkdir build;
#~ cd build;
#~ cmake -DKSIZE_LIST="32 64 96" ..;
#~ make -j 4;
#~ cd ../..;
wget https://github.com/GATB/minia/releases/download/v2.0.7/minia-v2.0.7-bin-Linux.tar.gz;
tar -xvzf minia-v2.0.7-bin-Linux.tar.gz;

#N50
make;

#reads simulator
wget https://github.com/GATB/bloocoo/blob/master/test/bloocootest/mutareads;

#BRAW
git clone --recursive https://github.com/Malfoy/BRAW;
cd BRAW;
mkdir build;
make -j 6;
cd ../..;
