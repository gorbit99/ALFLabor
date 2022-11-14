#include "networkmanager.h"
#include <QNetworkRequest>
#include <QNetworkReply>
#include <QDebug>
#include <QJsonDocument>
#include <QJsonObject>

NetworkManager::NetworkManager(QObject *parent) : QObject(parent)
{
    connect(&this->manager,SIGNAL(finished(QNetworkReply*)),
    this,SLOT(requestFinished(QNetworkReply*)));
}

void NetworkManager::login(QVariant username, QVariant password)
{
    QString urlString = QString("https://silent-sound-6780.getsandbox.com/login?username=%1&password=%2")
            .arg(username.toString())
            .arg(password.toString());
    QNetworkRequest request = QNetworkRequest(QUrl(urlString));
    manager.get(request);
}

void NetworkManager::requestFinished(QNetworkReply *reply)
{
    QByteArray data = reply->readAll();
    qDebug()<<QString(data);
    QJsonDocument jsonDoc = QJsonDocument::fromJson(data);
    if(!jsonDoc.isEmpty())
    {
        QJsonObject rootObject = jsonDoc.object();
        emit loginSuccess(rootObject["url"].toString(),
                rootObject["title"].toString(),
                rootObject["subtitle"].toString(),
                rootObject["detail"].toString());
    }
}
