#include <QGuiApplication>

#include <QQmlApplicationEngine>
#include <QQmlComponent>
#include <QQmlProperty>

#include <QDebug>

#include "performcalculation.h"

#include <time.h>
#include <iostream>

int main(int argc, char *argv[])
{
    // Doing random change in code!

    srand(time(NULL));

    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);
    QGuiApplication app(argc, argv);

    QQmlEngine engine1;
    QQmlComponent component(&engine1, "qrc:/main.qml");
    QObject* object = component.create();

    int someNumber = rand()%200;
    bool isBiggerThan100 = PerformCalculation::isGivenNumberBiggerThan100(someNumber);

    QQmlProperty::write(object, "isBigger", isBiggerThan100);

    QMetaObject::invokeMethod(object, "functionalItem.someFunction");

    //QQmlApplicationEngine engine;
    //engine.load(QUrl(QLatin1String("qrc:/main.qml")));

    return app.exec();

    std::cout << "bool = " << object->property("isBigger").toBool();
}
