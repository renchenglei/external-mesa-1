export C_INCLUDE_PATH=/usr/local/include
export CPLUS_INCLUDE_PATH=/usr/local/include
mkdir build_d3d12_android
/home/rcl/Work/CIV/Code/meson/meson.py build_d3d12_android \
--cross-file android-d3d12-config \
-Dplatforms=android \
-Dplatform-sdk-version=28 \
-Dandroid-stub=true \
-Dgallium-drivers=swrast,d3d12 \
-Dllvm=disabled \
-Dshared-llvm=disabled \
-Ddri-drivers= \
-Degl=enabled \
-Dgbm=disabled \
-Dvulkan-drivers=
ninja -C build_d3d12_android
