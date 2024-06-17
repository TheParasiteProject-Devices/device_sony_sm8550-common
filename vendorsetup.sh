#!/bin/bash

if [[ $(echo -n $TARGET_PRODUCT | sed -e 's/^aosp_//g') = "pdx234" ]]; then

if [ -z $VENDOR_SONY_SM8550_SETUP_DONE ]; then

cd vendor/qcom/opensource/usb
git reset --hard
git apply "../../../../device/sony/sm8550-common/.patch/0001-TMP-Import-sony-changes.patch"
cd ../../../../

export VENDOR_SONY_SM8550_SETUP_DONE=true
fi

fi
