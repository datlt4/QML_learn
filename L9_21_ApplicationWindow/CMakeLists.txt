cmake_minimum_required(VERSION 3.16)

project(L9_21_ApplicationWindow VERSION 0.1 LANGUAGES CXX)

set(CMAKE_CXX_STANDARD_REQUIRED ON)

find_package(Qt6 REQUIRED COMPONENTS Quick)
find_package(Qt6 REQUIRED COMPONENTS QuickControls2)

qt_standard_project_setup(REQUIRES 6.8)

qt_add_executable(appL9_21_ApplicationWindow
    main.cpp
)

qt_add_qml_module(appL9_21_ApplicationWindow
    URI L9_21_ApplicationWindow
    QML_FILES
        Main.qml
        Page1.qml
        Page2.qml
        Page3.qml
        QML_FILES Page4.qml
        QML_FILES Page5.qml
)

qt_add_resources (appL9_21_ApplicationWindow "qml"
    PREFIX /
    FILES
        icons/copyIcon.png
        icons/cutIcon.png
        icons/info.png
        icons/newFileIcon.png
        icons/openIcon.png
        icons/pasteIcon.png
        icons/quitIcon.png
        icons/redoIcon.png
        icons/saveAsIcon.png
        icons/saveIcon.png
        icons/undoIcon.png
        images/421574165_122126060042109154_8776216084891792925_n.jpg
        images/432709120_1851082228661713_3511410575503876448_n.jpg
        images/434659016_1855479724888630_5652418056339393694_n.jpg
        images/435192702_311878735245531_2050622773468968864_n.jpg
        images/436352920_1863554007414535_8685845882949267719_n.jpg
)

# Qt for iOS sets MACOSX_BUNDLE_GUI_IDENTIFIER automatically since Qt 6.1.
# If you are developing for iOS or macOS you should consider setting an
# explicit, fixed bundle identifier manually though.
set_target_properties(appL9_21_ApplicationWindow PROPERTIES
#    MACOSX_BUNDLE_GUI_IDENTIFIER com.example.appL9_21_ApplicationWindow
    MACOSX_BUNDLE_BUNDLE_VERSION ${PROJECT_VERSION}
    MACOSX_BUNDLE_SHORT_VERSION_STRING ${PROJECT_VERSION_MAJOR}.${PROJECT_VERSION_MINOR}
    MACOSX_BUNDLE TRUE
    WIN32_EXECUTABLE TRUE
)

target_link_libraries(appL9_21_ApplicationWindow
    PRIVATE Qt6::Quick Qt6::QuickControls2
)

include(GNUInstallDirs)
install(TARGETS appL9_21_ApplicationWindow
    BUNDLE DESTINATION .
    LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR}
    RUNTIME DESTINATION ${CMAKE_INSTALL_BINDIR}
)
