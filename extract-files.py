#!/usr/bin/env -S PYTHONPATH=../../../tools/extract-utils python3
#
# SPDX-FileCopyrightText: 2024 The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

from extract_utils.fixups_blob import (
    blob_fixup,
    blob_fixups_user_type,
)
from extract_utils.fixups_lib import (
    lib_fixups,
    lib_fixups_user_type,
)
from extract_utils.main import (
    ExtractUtils,
    ExtractUtilsModule,
)

namespace_imports = [
    'device/sony/sm8550-common',
    'hardware/qcom-caf/sm8550',
    'hardware/qcom-caf/wlan',
    'hardware/sony',
    'hardware/sony/libidd',
    'vendor/qcom/opensource/commonsys/display',
    'vendor/qcom/opensource/commonsys-intf/display',
    'vendor/qcom/opensource/dataservices',
    'vendor/sony/sm8550-common',
]


def lib_fixup_vendor_suffix(lib: str, partition: str, *args, **kwargs):
    return f'{lib}_{partition}' if partition == 'vendor' else None


lib_fixups: lib_fixups_user_type = {
    **lib_fixups,
    (
        'vendor.qti.hardware.fm@1.0',
        'vendor.qti.hardware.data.cne.internal.api@1.0',
        'vendor.qti.hardware.data.cne.internal.constants@1.0',
        'vendor.qti.hardware.data.cne.internal.server@1.0',
        'vendor.qti.hardware.data.connection@1.0',
        'vendor.qti.hardware.data.connection@1.1',
        'vendor.qti.hardware.data.dynamicdds@1.0',
        'vendor.qti.hardware.data.iwlan@1.0',
        'vendor.qti.hardware.data.qmi@1.0',
        'com.qualcomm.qti.dpm.api@1.0',
        'vendor.qti.hardware.dpmservice@1.0',
        'vendor.qti.diaghal@1.0',
        'vendor.qti.imsrtpservice@3.0',
        'vendor.qti.imsrtpservice@3.1',
        'vendor.qti.hardware.qccsyshal@1.0',
        'vendor.qti.hardware.qccsyshal@1.1',
        'vendor.qti.hardware.qccsyshal@1.2',
        'vendor.qti.hardware.qccvndhal@1.0',
        'vendor.qti.hardware.wifidisplaysession@1.0',
        'vendor.qti.qesdhal@1.0',
        'vendor.qti.qesdhal@1.1',
        'vendor.qti.qesdhal@1.2',
    ): lib_fixup_vendor_suffix,
}

blob_fixups: blob_fixups_user_type = {
    (
        'vendor/bin/hw/android.hardware.security.keymint-service-qti',
        'vendor/bin/hw/vendor.semc.hardware.secd@1.1-service',
        'vendor/bin/keyprovd',
        'vendor/lib64/libqtikeymint.so',
        'vendor/lib64/librkp.so',
    ): blob_fixup()
    .add_needed(
        'android.hardware.security.rkp-V3-ndk.so'
    ),
    'vendor/bin/slim_daemon': blob_fixup()
    .add_needed(
        'libc++_shared.so',
    ),
    'vendor/etc/msm_irqbalance.conf': blob_fixup()
    .regex_replace(
        'IGNORED_IRQ=27,23,38', 'IGNORED_IRQ=27,23,38,115,332'
    ),
    'vendor/etc/seccomp_policy/qwesd@2.0.policy': blob_fixup()
    .add_line_if_missing(
        'pipe2: 1'
    ).add_line_if_missing(
        'gettid: 1'
    ),
    (
        'vendor/bin/hw/vendor.semc.hardware.extlight-service.somc',
        'vendor/lib64/vendor.semc.hardware.extlight-V1-ndk_platform.so',
    ): blob_fixup()
    .replace_needed(
        'android.hardware.light-V1-ndk_platform.so', 'android.hardware.light-V1-ndk.so'
    ),
    (
        'vendor/etc/seccomp_policy/wfdhdcphalservice.policy',
    ): blob_fixup()
    .add_line_if_missing(
        'gettid: 1'
    ),
    'vendor/lib64/vendor.libdpmframework.so': blob_fixup()
    .add_needed(
        'libhidlbase_shim.so',
    ),
    'vendor/lib64/libqcodec2_core.so': blob_fixup()
    .add_needed(
        'libcodec2_shim.so'
    ),
    # < 00009680: 6370 7566 7265 712d 6370 7525 6400 0000  cpufreq-cpu%d...
    # < 00009690: 0000 0073 5f61 7070 5f73 746f 7000 2573  ...s_app_stop.%s
    # ---
    # > 00009680: 7468 6572 6d61 6c2d 6370 7566 7265 712d  thermal-cpufreq-
    # > 00009690: 2564 0073 5f61 7070 5f73 746f 7000 2573  %d.s_app_stop.%s
    'vendor/bin/thermal-engine-v2': blob_fixup()
    .binary_regex_replace(b'thermal-cpufreq-%d\x00s_app_stop\x00%s',
                          b'cpufreq-cpu%d\x00\x00\x00\x00\x00\x00s_app_stop\x00%s'),
    'vendor/lib64/hw/fingerprint.default.so': blob_fixup()
    .binary_regex_replace(b'bix.fingerprint', b'fingerprint\x00\x00\x00\x00'),
    'vendor/lib64/nfc_nci.nqx.default.hw.so': blob_fixup()
    .add_needed(
        'libbase_shim.so'
    ),
    'system_ext/lib64/libwfdnative.so': blob_fixup()
    .add_needed(
        'libinput_shim.so'
    ),
    (
        'vendor/bin/poweropt-service',
        'vendor/lib64/libaodoptfeature.so',
        'vendor/lib64/libapengine.so',
        'vendor/lib64/libdpps.so',
        'vendor/lib64/liblearningmodule.so',
        'vendor/lib64/liboemcrypto.so',
        'vendor/lib64/libpowercore.so',
        'vendor/lib64/libpsmoptfeature.so',
        'vendor/lib64/libsnapdragoncolor-manager.so',
        'vendor/lib64/libstandbyfeature.so',
        'vendor/lib64/libvideooptfeature.so',
    ): blob_fixup()
        .replace_needed('libtinyxml2.so', 'libtinyxml2-v34.so'),
    'system_ext/lib64/vendor.qti.hardware.qccsyshal@1.2-halimpl.so': blob_fixup()
        .replace_needed('libprotobuf-cpp-full.so', 'libprotobuf-cpp-full-21.7.so'),
    'vendor/etc/wfdconfig.xml': blob_fixup()
        .regex_replace('<M4Enable>0</M4Enable>', '<M4Enable>1</M4Enable>')
        .regex_replace('<UIBCValid>0</UIBCValid>', '<UIBCValid>1</UIBCValid>')
        .regex_replace('<USB>1</USB>', '<USB>3</USB>'),
    # < 00146c60: 1f00 0071 e003 0091 f317 9f1a 4162 0494  ...q........Ab..
    # < 00146d80: 0900 0012 8902 090b 3f01 086b ca01 0054  ........?..k...T
    # ---
    # > 00146c60: 1f00 0071 e003 0091 1300 8052 4162 0494  ...q.......RAb..
    # > 00146d80: 0900 0012 8902 090b 3f01 086b 0e00 0014  ........?..k....
    'vendor/lib64/soundfx/libswdap.so': blob_fixup()
    .binary_regex_replace(b'\x1f\x00\x00\x71\xe0\x03\x00\x91\xf3\x17\x9f\x1a\x41\x62\x04\x94',
                          b'\x1f\x00\x00\x71\xe0\x03\x00\x91\x13\x00\x80\x52\x41\x62\x04\x94')
    .binary_regex_replace(rb'\x09\x00\x00\x12\x89\x02\x09\x0b\x3f\x01\x08\x6b\xca\x01\x00\x54',
                          b'\x09\x00\x00\x12\x89\x02\x09\x0b\x3f\x01\x08\x6b\x0e\x00\x00\x14'),
    'vendor/etc/seccomp_policy/c2audio.vendor.ext-arm64.policy': blob_fixup()
    .add_line_if_missing(
        'setsockopt: 1'
    ),
    'vendor/etc/vintf/manifest/c2_manifest_vendor.xml': blob_fixup()
        .regex_replace('<instance>default</instance>',
                       '<instance>default</instance>\n            <instance>dolby</instance>'
    ),
    'vendor/etc/seccomp_policy/gnss@2.0-qsap-location.policy': blob_fixup()
        .add_line_if_missing('sched_get_priority_min: 1')
        .add_line_if_missing('sched_get_priority_max: 1'
    ),

}  # fmt: skip

module = ExtractUtilsModule(
    'sm8550-common',
    'sony',
    blob_fixups=blob_fixups,
    lib_fixups=lib_fixups,
    namespace_imports=namespace_imports,
)

if __name__ == '__main__':
    utils = ExtractUtils.device(module)
    utils.run()
