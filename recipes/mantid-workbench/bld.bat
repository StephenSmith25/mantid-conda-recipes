mkdir build && cd build

cmake ^
    -DCMAKE_INSTALL_PREFIX=%LIBRARY_PREFIX% ^
    -DCMAKE_INSTALL_LIBDIR=%LIBRARY_LIB% ^
    -DCMAKE_PREFIX_PATH=%LIBRARY_PREFIX% ^
    -DCONDA_BUILD=True ^
    -DENABLE_WORKBENCH=ON ^
    -DENABLE_PRECOMMIT=OFF ^
    -DENABLE_DOCS=OFF ^
    -DMANTID_FRAMEWORK_LIB=SYSTEM ^
    -DMANTID_QT_LIB=SYSTEM ^
    -DUSE_SYSTEM_EIGEN=ON ^
    -DWORKBENCH_SITE_PACKAGES=%SP_DIR% ^
    ..

if errorlevel 1 exit 1
cmake --build . --config Release
cmake --build . --config Release --target install
if errorlevel 1 exit 1