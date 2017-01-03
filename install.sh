#Reads corrector
git clone --recursive https://github.com/GATB/bloocoo.git
cd bloocoo;
mkdir build;
cd build;
cmake ..;
make -j 4;
cd ../..;
#binary here https://github.com/GATB/bloocoo/releases

#Assembler
git clone --recursive https://github.com/GATB/minia.git
cd minia;
mkdir build;
cd build;
cmake -DKSIZE_LIST="32 64 96" ..;
make -j 4;
cd ../..;
#binary here https://github.com/GATB/minia/releases

#N50
make;

#reads simulator
wgethttps://github.com/GATB/bloocoo/blob/master/test/bloocootest/mutareads .;


