#!/bin/bash

BRANCH_MAIN=14
REMOTE_MAIN=https://github.com/2by2-Project

git clone -b ${BRANCH_MAIN} ${REMOTE_MAIN}/android_vendor_nxp_opensource_packages_apps_Nfc vendor/nxp/opensource/commonsys/packages/apps/Nfc
git clone -b ${BRANCH_MAIN} ${REMOTE_MAIN}/android_vendor_nxp_opensource_external_libnfc-nci vendor/nxp/opensource/commonsys/external/libnfc-nci

BRANCH_AOSPA=uvite-SN100X-legacy
REMOTE_AOSPA=https://github.com/AOSPA

git clone -b ${BRANCH_AOSPA} ${REMOTE_AOSPA}/android_vendor_nxp_opensource_halimpl vendor/nxp/opensource/halimpl
git clone -b ${BRANCH_AOSPA} ${REMOTE_AOSPA}/android_vendor_nxp_opensource_hidlimpl vendor/nxp/opensource/hidlimpl

BRANCH_QSSI=LA.QSSI.14.0.r1-11500-qssi.0
REMOTE_QSSI=https://git.codelinaro.org/clo/la

git clone -b ${BRANCH_QSSI} ${REMOTE_QSSI}/platform/vendor/nxp/opensource/frameworks vendor/nxp/opensource/commonsys/frameworks
git clone -b ${BRANCH_QSSI} ${REMOTE_QSSI}/platform/vendor/nxp/interfaces/opensource/nfc vendor/nxp/opensource/interfaces/nfc
