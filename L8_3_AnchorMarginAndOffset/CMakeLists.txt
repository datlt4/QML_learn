cmake_minimum_required(VERSION 3.16)

project(L8_3_AnchorMarginAndOffset VERSION 0.1 LANGUAGES CXX)

set(CMAKE_CXX_STANDARD_REQUIRED ON)

find_package(Qt6 REQUIRED COMPONENTS Quick)

qt_standard_project_setup(REQUIRES 6.8)

qt_add_executable(appL8_3_AnchorMarginAndOffset
    main.cpp
)

qt_add_qml_module(appL8_3_AnchorMarginAndOffset
    URI L8_3_AnchorMarginAndOffset
    VERSION 1.0
    QML_FILES
        Main.qml
)

# Qt for iOS sets MACOSX_BUNDLE_GUI_IDENTIFIER automatically since Qt 6.1.
# If you are developing for iOS or macOS you should consider setting an
# explicit, fixed bundle identifier manually though.
set_target_properties(appL8_3_AnchorMarginAndOffset PROPERTIES
#    MACOSX_BUNDLE_GUI_IDENTIFIER com.example.appL8_3_AnchorMarginAndOffset
    MACOSX_BUNDLE_BUNDLE_VERSION ${PROJECT_VERSION}
    MACOSX_BUNDLE_SHORT_VERSION_STRING ${PROJECT_VERSION_MAJOR}.${PROJECT_VERSION_MINOR}
    MACOSX_BUNDLE TRUE
    WIN32_EXECUTABLE TRUE
)

target_link_libraries(appL8_3_AnchorMarginAndOffset
    PRIVATE Qt6::Quick
)

include(GNUInstallDirs)
install(TARGETS appL8_3_AnchorMarginAndOffset
    BUNDLE DESTINATION .
    LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR}
    RUNTIME DESTINATION ${CMAKE_INSTALL_BINDIR}
)
