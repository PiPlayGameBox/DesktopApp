

/*
This is a UI file (.ui.qml) that is intended to be edited in Qt Design Studio only.
It is supposed to be strictly declarative and only uses a subset of QML. If you edit
this file manually, you might introduce QML code that is not supported by Qt Design Studio.
Check out https://doc.qt.io/qtcreator/creator-quick-ui-forms.html for details on .ui.qml files.
*/
import QtQuick 6.5
import QtQuick.Controls 6.5
import QtQuick3D 6.5
import PiBox
import Quick3DAssets.Ludo0
//import Quick3DAssets.Okey
import Quick3DAssets.Okey


Rectangle {
    width: Constants.width
    height: Constants.height

    color: Constants.backgroundColor

    View3D {
        id: view3D
        anchors.fill: parent

        environment: sceneEnvironment

        SceneEnvironment {
            id: sceneEnvironment
            antialiasingMode: SceneEnvironment.MSAA
            antialiasingQuality: SceneEnvironment.High
        }

        Node {
            id: scene
            DirectionalLight {
                id: directionalLight
                x: -0
                y: 168.472
                z: 52.73455
                eulerRotation.z: 0.00002
                eulerRotation.y: -0.00001
                eulerRotation.x: -60.65488
            }

            PerspectiveCamera {
                id: sceneCamera
                x: -0
                y: 159.953
                eulerRotation.z: 0.00001
                eulerRotation.y: -0
                eulerRotation.x: -33.23155
                z: 290.7511
            }

            Ludo0 {
                id: ludo0
            }
        }
    }

    Item {
        id: __materialLibrary__
        DefaultMaterial {
            id: defaultMaterial
            objectName: "Default Material"
            diffuseColor: "#4aee45"
        }
    }

    Text {
        text: qsTr("Hello PiBox")
        anchors.top: parent.top
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.topMargin: 100
        font.family: Constants.font.family
    }
}
