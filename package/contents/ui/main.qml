/*
*   Copyright 2014 Abhijeet Nikam <connect08nikam@gmail.com>
*
*   This program is free software; you can redistribute it and/or modify
*   it under the terms of the GNU General Public License as
*   published by the Free Software Foundation; either version 2,
*   or (at your option) any later version.
*
*   This program is distributed in the hope that it will be useful,
*   but WITHOUT ANY WARRANTY; without even the implied warranty of
*   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
*   GNU General Public License for more details
*
*   You should have received a copy of the GNU General Public
*   License along with this program; if not, write to the
*   Free Software Foundation, Inc.,
*   51 Franklin Street, Fifth Floor, Boston, MA  02110-1301, USA.
*/

import QtQuick 1.1
import org.kde.plasma.components 0.1 as PlasmaComponents
import org.kde.plasma.core 0.1 as PlasmaCore
import org.kde.plasma.extras 0.1 as PlasmaExtras


Item {

  /*Text{
    id: label
    anchors {
      left: parent.left
    }
    y:17
    text:"SUBJECT"
    font.family : Geneva
    font.pixelSize:15
    font.underline: true
    font.bold: true

 }*/

    Rectangle{
        color: "black"
        height:390
        width:777

    }

    Column{
        y:45
        x:715
        spacing:10
/*Rectangle {
     x:700
     width:70
     height:
     color: "red"
   }*/
        PlasmaComponents.Button {
            id: recepient
            Text {
                y:40
                x:-5
                rotation: -90
                text :"Recepients"
            }
            height: 100
            width: 50
        }

        PlasmaComponents.Button {
            id: attachments
            Text {
                y:40
                x:-10
                rotation: -90
                text :"Attachments"
            }
            height: 100
            width: 50
        }

        PlasmaComponents.Button {
            id: settings
            Text {
            y:40
            rotation: -90
            text :"Settings"
        }
        height: 100
        width: 50
}
}




  PlasmaComponents.TextField {
      id: subject
      y:10
      height:40
      anchors {
	leftMargin:0
        rightMargin:70
        left: parent.left
        topMargin:12
        top: parent.top
        right: parent.right
      }
      placeholderText: "Insert your subject"
      clearButtonShown: true
    }

PlasmaComponents.TextArea {
height:320
width:700
placeholderText: "Compose your mail here!!"
anchors{
verticalCenter: parent.verticalCenter
leftMargin:50
top:subject.bottom
topMargin:10
bottomMargin:10
}
}


Row {
spacing: 90
anchors{
  bottom: parent.bottom
  topMargin:5
  bottomMargin: 5
  leftMargin:20
}

Row{
spacing: 10
PlasmaComponents.Button {
text : "SEND"
height: 40
width: 100
}

PlasmaComponents.Button {
id: discard
text :"DISCARD"
height: 40
width: 100
}

PlasmaComponents.Button {
id: drafts
text :"DRAFTS"
height: 40
width: 100
}
}

Row{
spacing:20

PlasmaComponents.RadioButton {
id: sign
anchors.leftMargin: 100
Text {
anchors.top: sign.bottom
font.pixelSize: 12
text: "SIGN"
}
}

Row{
width:320
y:20
  PlasmaComponents.Slider {
      anchors.fill: parent
      id: slideview
      orientation: 0
       }
 }
}
}



}