cmake_minimum_required(VERSION 3.16)

project(L10_7_CustomDialog VERSION 0.1 LANGUAGES CXX)

set(CMAKE_CXX_STANDARD_REQUIRED ON)

find_package(Qt6 REQUIRED COMPONENTS Quick)
find_package(Qt6 REQUIRED COMPONENTS QuickControls2)

qt_standard_project_setup(REQUIRES 6.8)

qt_add_executable(appL10_7_CustomDialog
    main.cpp
)

qt_add_qml_module(appL10_7_CustomDialog
    URI L10_7_CustomDialog
    QML_FILES
        Main.qml
)

qt_add_resources (appL10_7_CustomDialog "qml"
    PREFIX /
    FILES
        images/LearnQtLogo.png
)

# Qt for iOS sets MACOSX_BUNDLE_GUI_IDENTIFIER automatically since Qt 6.1.
# If you are developing for iOS or macOS you should consider setting an
# explicit, fixed bundle identifier manually though.
set_target_properties(appL10_7_CustomDialog PROPERTIES
#    MACOSX_BUNDLE_GUI_IDENTIFIER com.example.appL10_7_CustomDialog
    MACOSX_BUNDLE_BUNDLE_VERSION ${PROJECT_VERSION}
    MACOSX_BUNDLE_SHORT_VERSION_STRING ${PROJECT_VERSION_MAJOR}.${PROJECT_VERSION_MINOR}
    MACOSX_BUNDLE TRUE
    WIN32_EXECUTABLE TRUE
)

target_link_libraries(appL10_7_CustomDialog
    PRIVATE Qt6::Quick Qt6::QuickControls2
)

include(GNUInstallDirs)
install(TARGETS appL10_7_CustomDialog
    BUNDLE DESTINATION .
    LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR}
    RUNTIME DESTINATION ${CMAKE_INSTALL_BINDIR}
)
