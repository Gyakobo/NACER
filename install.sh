# Basically just follow this site's instructions: http://techawarey.com/programming/install-opencv-c-c-in-ubuntu-18-04-lts-step-by-step-guide/



# Step 1. Update the Ubuntu System Package 
sudo apt-get update && sudo apt-get upgrade
sudo apt install software-properties-common
sudo apt install apt-file

# Step 2. Install Required tools and packages 
sudo apt-get install build-essential cmake git libgtk2.0-dev pkg-config libavcodec-dev libavformat-dev libswscale-dev

	# If you encounter an error in below code just run the next command
sudo apt install libopencv-dev python3-opencv

# Step 3. Download OpenCV Sources using git
sudo -s
cd /opt
git clone https://github.com/Itseez/opencv.git
git clone https://github.com/Itseez/opencv_contrib.git

# Step 4. Build & Install OpenCV 

cd opencv
mkdir release
cd release
cmake -D BUILD_TIFF=ON -D WITH_CUDA=OFF -D ENABLE_AVX=OFF -D WITH_OPENGL=OFF -D WITH_OPENCL=OFF -D WITH_IPP=OFF -D WITH_TBB=ON -D BUILD_TBB=ON -D WITH_EIGEN=OFF -D WITH_V4L=OFF -D WITH_VTK=OFF -D BUILD_TESTS=OFF -D BUILD_PERF_TESTS=OFF -D OPENCV_GENERATE_PKGCONFIG=ON -D CMAKE_BUILD_TYPE=RELEASE -D CMAKE_INSTALL_PREFIX=/usr/local -D OPENCV_EXTRA_MODULES_PATH=/opt/opencv_contrib/modules /opt/opencv/

make -j4
make install
ldconfig
exit
cd ~

