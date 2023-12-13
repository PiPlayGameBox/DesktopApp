// Copyright (C) 2021 The Qt Company Ltd.
// SPDX-License-Identifier: LicenseRef-Qt-Commercial OR GPL-3.0-only

import QtQuick 6.5
import PiBox
import QtQuick3D 6.5

Window {
    width: mainScreen.width
    height: mainScreen.height

    visible: true
    title: "PiBox"

    Screen01 {
        id: mainScreen
    }

}
