#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QQuickStyle>

int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);
    QQmlApplicationEngine engine;

    // Load the style
    QQuickStyle::setStyle("Material");
    // QQuickStyle::setStyle("Universal");
    // QQuickStyle::setStyle("iOS");
    // QQuickStyle::setStyle("macOS");
    // QQuickStyle::setStyle("Fusion");
    // QQuickStyle::setStyle("Imagine");
    QObject::connect(
        &engine,
        &QQmlApplicationEngine::objectCreationFailed,
        &app,
        []() { QCoreApplication::exit(-1); },
        Qt::QueuedConnection);
    engine.loadFromModule("L9_2_Button", "Main");

    return app.exec();
}
