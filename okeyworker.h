#ifndef OKEYWORKER_H
#define OKEYWORKER_H

#include <QObject>
#include "okeycontroller.h"
#include <QTcpSocket>
#include <QThread>
#include <QTimer>

class OkeyWorker : public QThread
{
    Q_OBJECT
public:

    explicit OkeyWorker(OkeyController &controller, QTcpSocket &socket, QObject *parent = nullptr);

public slots:
    void run() override;

private:
    OkeyController &okeyController;
    QTcpSocket &socket;

    std::vector<char *> split(char *str, const char *delimiter);

    int charToInt(char c);
    bool updateBoard(std::vector<char *> playerString, QList<QObject *> playerBoard);
signals:

};

#endif // OKEYWORKER_H
