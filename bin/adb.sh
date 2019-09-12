#!/bin/bash

APKPACKAGE=$(adb shell pm list packages | grep tec | cut -d':' -f 2)
APKPACKAGEPATH=$(adb shell pm path $(echo $APKPACKAGE))
adb pull $APKPACKAGEPATH
