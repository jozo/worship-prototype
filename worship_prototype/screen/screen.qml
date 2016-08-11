import QtQuick 2.0
import QtQuick.Controls 1.4
import QtMultimedia 5.0
import QtGraphicalEffects 1.0

Rectangle {
    id: root
    focus: true
    color: "transparent"
    border.width: 2

    MediaPlayer {
        id: player
        source: "../../echo.mp4"
        autoPlay: true
        muted: true
        loops: MediaPlayer.Infinite
    }

    VideoOutput {
        id: videoOutput
        source: player
        anchors.fill: parent
        fillMode: VideoOutput.PreserveAspectCrop
    }

    Text {
        id: lyrics
        anchors.centerIn: root
        text: "Lorem ipsum dolor sit amet, an vix mediocrem forensibus, pri albucius pericula reprimique id. Zril molestie quaestio cum id, ad vivendum volutpat elaboraret pro, sea id esse solum. Oporteat perfecto id cum, id vix eligendi facilisi. Vis duis patrioque ad, soleat primis sadipscing te has, ipsum tollit ancillae sea at. Natum possim nec te, stet everti necessitatibus qui ei. Vim prodesset abhorreant ut, sit novum integre ex."
        //text: "Hello world"
        wrapMode: Text.Wrap
        color: "white"
        fontSizeMode: Text.Fit
        font.pixelSize: 30
        font.bold: true
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
        width: parent.width * 0.85
        height: parent.height * 0.85
    }

    DropShadow {
        anchors.fill: lyrics
        source: lyrics
        horizontalOffset: 0
        verticalOffset: 0
        color: "black"
        radius: 10
        samples: 10
        spread: 0.5
    }

    Rectangle {
        width: lyrics.contentWidth
        height: lyrics.contentHeight
        border.width: 2
        border.color: "red"
        color: "transparent"
    }

    Rectangle {
        width: lyrics.width
        height: lyrics.height
        border.width: 2
        border.color: "blue"
        color: "transparent"
    }

    function showText(text) {
        lyrics.text = text;
    }
}