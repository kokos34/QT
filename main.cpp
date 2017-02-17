#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include "performcalculation.h"

int main(int argc, char *argv[])
{
    // Doing random change in code!

    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);
    QGuiApplication app(argc, argv);

    QQmlEngine engine;
    QQmlComponent component(&engine, "main.qml");
    QObject* object = component.create();

    bool isBiggerThan

    QQmlApplicationEngine engine;
    engine.load(QUrl(QLatin1String("qrc:/main.qml")));

    return app.exec();
}
