#ifndef MAINWINDOW_H
#define MAINWINDOW_H

#include <QMainWindow>

namespace Ui {
class MainWindow;
}

class MainWindow : public QMainWindow
{
    Q_OBJECT

public:
    explicit MainWindow(QWidget *parent = 0);
    ~MainWindow();

private slots:
    void on_readFromDBButton_clicked();
    void handleButton();

    void on_MainWindow_iconSizeChanged(const QSize &iconSize);

private:
    Ui::MainWindow *ui;
    void substituteIconsIntoButtons();
};

#endif // MAINWINDOW_H
