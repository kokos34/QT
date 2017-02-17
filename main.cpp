#include <QGuiApplication>

#include <QQmlApplicationEngine>
#include <QQmlComponent>
#include <QQmlProperty>
#include <QQuickView>
#include <QDebug>
#include <QQuickItem>

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

    // Finding random value between 1 and 200
    int someNumber = rand()%200;
    bool isBiggerThan100 = PerformCalculation::isGivenNumberBiggerThan100(someNumber);

    // Passing random value to QML form
    QQmlProperty::write(object, "isBigger", isBiggerThan100);

    std::cout << "bool: " << QQmlProperty::read(object, "isBigger").toBool() << std::endl;

    // Finding parent
    QObject* model = object->findChild<QObject*>("functionalItem");

    // Invoking function
    QMetaObject::invokeMethod(model, "someFunction");

    return app.exec();
}
