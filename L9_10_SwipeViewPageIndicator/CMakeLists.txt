cmake_minimum_required(VERSION 3.16)

project(L9_10_SwipeViewPageIndicator VERSION 0.1 LANGUAGES CXX)

set(CMAKE_CXX_STANDARD_REQUIRED ON)

find_package(Qt6 REQUIRED COMPONENTS Quick)
find_package(Qt6 REQUIRED COMPONENTS QuickControls2)

qt_standard_project_setup(REQUIRES 6.8)

qt_add_executable(appL9_10_SwipeViewPageIndicator
    main.cpp
)

qt_add_qml_module(appL9_10_SwipeViewPageIndicator
    URI L9_10_SwipeViewPageIndicator
    VERSION 1.0
    QML_FILES
        Main.qml
)

qt_add_resources (appL9_10_SwipeViewPageIndicator "qml"
    PREFIX /
    FILES
        images/499503202_2163547444081855_7290185599450784418_n.jpg
        images/500848189_2169231250180141_209551542658879089_n.jpg
        images/501669158_2169231200180146_490546309070415351_n.jpg
        images/480687225_2087508565019077_9035317453601345641_n.jpg
        images/481128239_2087508635019070_5351633556119221901_n.jpg
        images/480743943_2087508591685741_6447659269095078401_n.jpg
        images/422772868_122126059442109154_2689902235878989290_n.jpg
        images/382111409_199927789773960_7868107960252762207_n.jpg
        images/431315872_1843352049434731_8690507193226399847_n.jpg
)

# Qt for iOS sets MACOSX_BUNDLE_GUI_IDENTIFIER automatically since Qt 6.1.
# If you are developing for iOS or macOS you should consider setting an
# explicit, fixed bundle identifier manually though.
set_target_properties(appL9_10_SwipeViewPageIndicator PROPERTIES
#    MACOSX_BUNDLE_GUI_IDENTIFIER com.example.appL9_10_SwipeViewPageIndicator
    MACOSX_BUNDLE_BUNDLE_VERSION ${PROJECT_VERSION}
    MACOSX_BUNDLE_SHORT_VERSION_STRING ${PROJECT_VERSION_MAJOR}.${PROJECT_VERSION_MINOR}
    MACOSX_BUNDLE TRUE
    WIN32_EXECUTABLE TRUE
)

target_link_libraries(appL9_10_SwipeViewPageIndicator
    PRIVATE Qt6::Quick Qt6::QuickControls2
)

include(GNUInstallDirs)
install(TARGETS appL9_10_SwipeViewPageIndicator
    BUNDLE DESTINATION .
    LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR}
    RUNTIME DESTINATION ${CMAKE_INSTALL_BINDIR}
)
