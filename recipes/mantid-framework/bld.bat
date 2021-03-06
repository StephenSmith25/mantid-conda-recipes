mkdir build && cd build

cmake ^
    -DCMAKE_INSTALL_PREFIX=%LIBRARY_PREFIX% ^
    -DCMAKE_INSTALL_LIBDIR=%LIBRARY_LIB% ^
    -DCMAKE_PREFIX_PATH=%LIBRARY_PREFIX% ^
    -DCONDA_BUILD=True ^
    -DENABLE_PRECOMMIT=OFF ^
    -DENABLE_DOCS=OFF ^
    -DUSE_SYSTEM_EIGEN=ON ^
    -DWORKBENCH_SITE_PACKAGES=%SP_DIR% ^
    -DMANTID_FRAMEWORK_LIB=BUILD ^
    -DMANTID_QT_LIB=OFF ^
    -DENABLE_WORKBENCH=OFF ^
    ..

if errorlevel 1 exit 1
cmake --build . --config Release
cmake --build . --config Release --target install
if errorlevel 1 exit 1