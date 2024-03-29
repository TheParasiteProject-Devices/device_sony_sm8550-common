# Audio
PRODUCT_ODM_PROPERTIES += \
ro.vendor.qti.va_odm.support=1

PRODUCT_PRODUCT_PROPERTIES += \
ro.config.media_vol_default=10 \
ro.config.media_vol_steps=100 \
ro.config.vc_call_vol_default=4 \
ro.config.vc_call_vol_steps=8

PRODUCT_SYSTEM_PROPERTIES += \
audio.offload.min.duration.secs=30

PRODUCT_VENDOR_PROPERTIES += \
aaudio.hw_burst_min_usec=2000 \
aaudio.mmap_exclusive_policy=2 \
aaudio.mmap_policy=2 \
af.fast_track_multiplier=1 \
audio.deep_buffer.media=true \
audio.offload.video=true \
audio.sys.noisy.broadcast.delay=600 \
audio.sys.offload.pstimeout.secs=3 \
persist.audio.fluence.speaker=true \
persist.audio.fluence.voicecall=true \
persist.audio.fluence.voicecomm=true \
persist.audio.fluence.voicerec=false \
persist.vendor.audio.ambisonic.auto.profile=false \
persist.vendor.audio.ambisonic.capture=false \
persist.vendor.audio.apptype.multirec.enabled=false \
persist.vendor.audio.avs.afe_api_version=2 \
persist.vendor.audio.bcl.enabled=true \
persist.vendor.audio.fluence.speaker=true \
persist.vendor.audio.fluence.tmic.enabled=false \
persist.vendor.audio.fluence.voicecall=true \
persist.vendor.audio.fluence.voicecomm=true \
persist.vendor.audio.fluence.voicerec=false \
persist.vendor.audio.ha_proxy.enabled=true \
persist.vendor.audio.ras.enabled=true \
persist.vendor.audio.spv3.enable=true \
persist.vendor.audio.sys.a2h_delay_for_a2dp=250 \
persist.vendor.audio.voicecall.speaker.stereo=true \
ro.af.client_heap_size_kbyte=7168 \
ro.audio.flinger_standbytime_ms=2000 \
ro.qc.sdk.audio.fluencetype=none \
ro.qc.sdk.audio.ssr=false \
ro.vendor.audio.frame_count_needed_constant=16384 \
ro.vendor.audio.sdk.fluencetype=none \
ro.vendor.audio.sdk.ssr=false \
vendor.audio_hal.in_period_size=144 \
vendor.audio.c2.preferred=true \
vendor.audio.compress_capture.aac=true \
vendor.audio.compress_capture.enabled=true \
vendor.audio.enable.cirrus.speaker=true \
vendor.audio.enable.mirrorlink=false \
vendor.audio.feature.a2dp_offload.enable=true \
vendor.audio.feature.afe_proxy.enable=true \
vendor.audio.feature.anc_headset.enable=false \
vendor.audio.feature.audiozoom.enable=false \
vendor.audio.feature.battery_listener.enable=true \
vendor.audio.feature.compr_cap.enable=false \
vendor.audio.feature.compr_voip.enable=false \
vendor.audio.feature.compress_in.enable=true \
vendor.audio.feature.compress_meta_data.enable=true \
vendor.audio.feature.concurrent_capture.enable=true \
vendor.audio.feature.custom_stereo.enable=true \
vendor.audio.feature.deepbuffer_as_primary.enable=false \
vendor.audio.feature.display_port.enable=true \
vendor.audio.feature.dmabuf.cma.memory.enable=false \
vendor.audio.feature.dsm_feedback.enable=false \
vendor.audio.feature.dynamic_ecns.enable=true \
vendor.audio.feature.ext_hw_plugin.enable=false \
vendor.audio.feature.external_dsp.enable=false \
vendor.audio.feature.external_speaker_tfa.enable=false \
vendor.audio.feature.external_speaker.enable=false \
vendor.audio.feature.fluence.enable=true \
vendor.audio.feature.fm.enable=true \
vendor.audio.feature.hdmi_edid.enable=true \
vendor.audio.feature.hdmi_passthrough.enable=true \
vendor.audio.feature.hfp.enable=true \
vendor.audio.feature.hifi_audio.enable=false \
vendor.audio.feature.hwdep_cal.enable=false \
vendor.audio.feature.incall_music.enable=true \
vendor.audio.feature.keep_alive.enable=true \
vendor.audio.feature.kpi_optimize.enable=true \
vendor.audio.feature.maxx_audio.enable=false \
vendor.audio.feature.multi_voice_session.enable=true \
vendor.audio.feature.ras.enable=true \
vendor.audio.feature.record_play_concurency.enable=false \
vendor.audio.feature.snd_mon.enable=true \
vendor.audio.feature.spkr_prot.enable=true \
vendor.audio.feature.src_trkn.enable=true \
vendor.audio.feature.ssrec.enable=true \
vendor.audio.feature.usb_offload_burst_mode.enable=true \
vendor.audio.feature.usb_offload_sidetone_volume.enable=false \
vendor.audio.feature.usb_offload.enable=true \
vendor.audio.feature.vbat.enable=true \
vendor.audio.feature.wsa.enable=false \
vendor.audio.flac.sw.decoder.24bit=true \
vendor.audio.hal.boot.timeout.ms=20000 \
vendor.audio.hal.output.suspend.supported=true \
vendor.audio.hdr.record.enable=false \
vendor.audio.hw.aac.encoder=false \
vendor.audio.offload.buffer.size.kb=256 \
vendor.audio.offload.gapless.enabled=true \
vendor.audio.offload.multiaac.enable=true \
vendor.audio.offload.multiple.enabled=false \
vendor.audio.offload.passthrough=false \
vendor.audio.offload.track.enable=true \
vendor.audio.parser.ip.buffer.size=262144 \
vendor.audio.safx.pbe.enabled=false \
vendor.audio.tunnel.encode=false \
vendor.audio.ull_record_period_multiplier=2 \
vendor.audio.use.sw.alac.decoder=true \
vendor.audio.use.sw.ape.decoder=true \
vendor.audio.use.sw.mpegh.decoder=true \
vendor.audio.volume.headset.gain.depcal=true \
vendor.qc2audio.per_frame.flac.dec.enabled=true \
vendor.qc2audio.suspend.enabled=true \
vendor.voice.path.for.pcm.voip=true

# Audio (Misc)
PRODUCT_PRODUCT_PROPERTIES += \
af.resampler.quality=7 \
audio.safemedia.bypass=true \
persist.bluetooth.sbc_hd_higher_bitrate=1 \
ro.audio.resampler.psd.enable_at_samplerate=44100 \
ro.audio.resampler.psd.halflength=408 \
ro.audio.resampler.psd.stopband=179 \
ro.audio.resampler.psd.tbwcheat=99 \
vendor.audio_hal.period_multiplier=1 \
vendor.audio_hal.period_size=120 \
vendor.audio.adm.buffering.ms=2 \
vendor.audio.usb.out.period_count=2 \
vendor.audio.usb.out.period_us=2500 \
vendor.audio.usb.perio=2500

# Bluetooth
PRODUCT_PRODUCT_PROPERTIES += \
persist.vendor.bt.a2dp_offload_cap=sbc-aptx-aptxtws-aptxhd-aac-ldac

PRODUCT_VENDOR_PROPERTIES += \
bluetooth.device.class_of_device=90,2,12 \
bluetooth.hardware.power.idle_cur_ma=6 \
bluetooth.hardware.power.operating_voltage_mv=3700 \
bluetooth.hardware.power.rx_cur_ma=28 \
bluetooth.hardware.power.tx_cur_ma=36 \
bluetooth.profile.a2dp.source.enabled?=true \
bluetooth.profile.asha.central.enabled?=true \
bluetooth.profile.avrcp.controller.enabled?=true \
bluetooth.profile.avrcp.target.enabled?=true \
bluetooth.profile.bap.broadcast.assist.enabled?=true \
bluetooth.profile.bap.broadcast.source.enabled?=true \
bluetooth.profile.bap.unicast.client.enabled?=true \
bluetooth.profile.bas.client.enabled?=true \
bluetooth.profile.ccp.server.enabled?=true \
bluetooth.profile.ccp.server.enabled?=true \
bluetooth.profile.csip.set_coordinator.enabled?=true \
bluetooth.profile.gatt.enabled?=true \
bluetooth.profile.hfp.ag.enabled?=true \
bluetooth.profile.hid.device.enabled?=true \
bluetooth.profile.hid.host.enabled?=true \
bluetooth.profile.map.server.enabled?=true \
bluetooth.profile.mcp.server.enabled?=true \
bluetooth.profile.opp.enabled?=true \
bluetooth.profile.pan.nap.enabled?=true \
bluetooth.profile.pan.panu.enabled?=true \
bluetooth.profile.pbap.server.enabled?=true \
bluetooth.profile.sap.server.enabled?=true \
bluetooth.profile.vcp.controller.enabled?=true \
persist.bluetooth.a2dp_offload.disabled=false \
persist.vendor.bt.aac_frm_ctl.enabled=true \
persist.vendor.bt.aac_vbr_frm_ctl.enabled=true \
persist.vendor.qcom.bluetooth.aptxadaptiver2_1_support=true \
persist.vendor.qcom.bluetooth.aptxadaptiver2_2_support=true \
ro.bluetooth.a2dp_offload.supported=true \
ro.vendor.bt.bdaddr_path=/data/vendor/etc/bluetooth_bdaddr

# Camera
PRODUCT_SYSTEM_PROPERTIES += \
camera.disable_zsl_mode=true

PRODUCT_VENDOR_PROPERTIES += \
ro.camera.enableCamera1MaxZsl=1 \
vendor.camera.enable.uvc=true \
vendor.mm.enable.qcom_parser=16777215

# Chipset
PRODUCT_VENDOR_PROPERTIES += \
ro.soc.manufacturer=QTI \
ro.soc.model=SM8550

# CNE
PRODUCT_SYSTEM_PROPERTIES += \
persist.vendor.cne.feature=1

# Crypto
PRODUCT_VENDOR_PROPERTIES += \
ro.crypto.dm_default_key.options_format.version=2 \
ro.crypto.volume.metadata.method=dm-default-key

# Disable MTE Async for system server
PRODUCT_SYSTEM_PROPERTIES += \
persist.arm64.memtag.system_server=off

# Display
PRODUCT_ODM_PROPERTIES += \
persist.vendor.colorgamut.mode=1 \
persist.vendor.display.colorgamut.mode=1 \
persist.vendor.display.opec_mode=0 \
persist.vendor.display.pcc_matrix=0.000000,0.000000,0.000000,0.000000,0.117647,0.235294 \
persist.vendor.display.sspp_color_mode=1 \
vendor.display.hmd_mode=0

PRODUCT_SYSTEM_PROPERTIES += \
debug.hwui.renderer=skiavk \
debug.sf.auto_latch_unsignaled=1 \
debug.sf.enable_hwc_vds=1 \
debug.sf.enable_transaction_tracing=false \
debug.sf.frame_rate_multiple_threshold=120

PRODUCT_PRODUCT_PROPERTIES += \
vendor.display.disable_rounded_corner=1

PRODUCT_VENDOR_PROPERTIES += \
persist.sys.sf.color_mode=9 \
persist.sys.sf.color_saturation=1.0 \
ro.hardware.lights=sony \
vendor.display.comp_mask=0 \
vendor.display.disable_3d_adaptive_tm=1 \
vendor.display.disable_excl_rect_partial_fb=1 \
vendor.display.disable_excl_rect=0 \
vendor.display.disable_hw_recovery_dump=1 \
vendor.display.disable_offline_rotator=1 \
vendor.display.disable_scaler=0 \
vendor.display.disable_sdr_dimming=1 \
vendor.display.disable_sdr_histogram=1 \
vendor.display.disable_stc_dimming=1 \
vendor.display.enable_async_powermode=0 \
vendor.display.enable_async_vds_creation=1 \
vendor.display.enable_dpps_dynamic_fps=1 \
vendor.display.enable_early_wakeup=1 \
vendor.display.enable_hdr10_gpu_target=0 \
vendor.display.enable_optimize_refresh=0 \
vendor.display.enable_rc_support=1 \
vendor.display.use_smooth_motion=0 \
vendor.display.vds_allow_hwc=1 \
vendor.gralloc.disable_ubwc=0 \
vendor.gralloc.enable_logs=0

# DPM
PRODUCT_SYSTEM_EXT_PROPERTIES += \
persist.vendor.dpm.feature=11

PRODUCT_VENDOR_PROPERTIES += \
persist.vendor.dpm.vndr.feature=11 \
persist.vendor.dpm.vndr.halservice.enable=1 \
persist.vendor.dpm.vndr.idletimer.mode=default

# DRM
PRODUCT_VENDOR_PROPERTIES += \
drm.service.enabled=true

# FRP
PRODUCT_VENDOR_PROPERTIES += \
ro.frp.pst=/dev/block/bootdevice/by-name/frp

# Fuse
PRODUCT_VENDOR_PROPERTIES += \
persist.sys.fuse.passthrough.enable=true

# Gatekeeper
PRODUCT_VENDOR_PROPERTIES += \
vendor.gatekeeper.disable_spu=true

# GPS
PRODUCT_SYSTEM_EXT_PROPERTIES += \
persist.backup.ntpServer=0.pool.ntp.org

# Graphics
PRODUCT_VENDOR_PROPERTIES += \
debug.sf.disable_client_composition_cache=1 \
debug.sf.enable_advanced_sf_phase_offset=1 \
debug.sf.enable_gl_backpressure=1 \
debug.sf.latch_unsignaled=1 \
debug.sf.predict_hwc_composition_strategy=0 \
debug.sf.treat_170m_as_sRGB=1 \
ro.hardware.egl=adreno \
ro.hardware.vulkan=adreno \
ro.opengles.version=196610 \
ro.surface_flinger.enable_frame_rate_override=false \
ro.surface_flinger.force_hwc_copy_for_virtual_displays=true \
ro.surface_flinger.has_HDR_display=true \
ro.surface_flinger.has_wide_color_display=true \
ro.surface_flinger.max_frame_buffer_acquired_buffers=3 \
ro.surface_flinger.max_virtual_display_dimension=4096 \
ro.surface_flinger.protected_contents=true \
ro.surface_flinger.use_color_management=true \
ro.surface_flinger.use_content_detection_for_refresh_rate=true \
ro.surface_flinger.wcg_composition_dataspace=143261696

# HWUI
PRODUCT_VENDOR_PROPERTIES += \
debug.hwui.target_cpu_time_percent=30 \
debug.hwui.use_hint_manager=true

# IMS
PRODUCT_SYSTEM_PROPERTIES += \
persist.dbg.volte_avail_ovr=1 \
persist.dbg.vt_avail_ovr=1 \
persist.dbg.wfc_avail_ovr=1 \
persist.rcs.supported=1 \
persist.vendor.ims.disableADBLogs=1 \
persist.vendor.ims.disableDebugLogs=1 \
persist.vendor.ims.disableIMSLogs=1 \
persist.vendor.ims.disableQXDMLogs=1 \
persist.vendor.rcs.singlereg.feature=0

# Incremental FS
PRODUCT_VENDOR_PROPERTIES += \
ro.incremental.enable=true

# IOP
PRODUCT_SYSTEM_PROPERTIES += \
vendor.iop.enable_prefetch_ofr=1 \
vendor.iop.enable_uxe=0

# Keystore
PRODUCT_VENDOR_PROPERTIES += \
ro.hardware.keystore_desede=true

# Legit Touch Hax
PRODUCT_SYSTEM_EXT_PROPERTIES += \
MultitouchMinDistance=1px \
MultitouchSettleInterval=1ms \
TapInterval=1ms \
TapSlop=1px \
touch.coverage.calibration=box \
touch.distance.calibration=none \
touch.distance.scale=0 \
touch.gestureMode=spots \
touch.pressure.scale=0.001 \
touch.size.bias=0 \
touch.size.isSummed=0 \
touch.size.scale=1

# Media
PRODUCT_SYSTEM_PROPERTIES += \
media.aac_51_output_enabled=true \
media.stagefright.enable-aac=true \
media.stagefright.enable-fma2dp=true \
media.stagefright.enable-http=true \
media.stagefright.enable-player=true \
media.stagefright.enable-qcp=true \
media.stagefright.enable-scan=true \
media.stagefright.thumbnail.prefer_hw_codecs=true \
mmp.enable.3g2=true \
persist.mm.enable.prefetch=true \
ro.mediacodec.max_sample_rate=2822400 \
ro.mediacodec.min_sample_rate=7350 \
vendor.mm.enable.qcom_parser=16777215

PRODUCT_VENDOR_PROPERTIES += \
debug.c2.use_dmabufheaps=1 \
debug.stagefright.c2inputsurface=-1 \
debug.stagefright.ccodec=4 \
debug.stagefright.omx_default_rank=0 \
ro.mediaserver.64b.enable=true

# Netmgr
PRODUCT_SYSTEM_PROPERTIES += \
persist.vendor.data.mode=concurrent \
ro.vendor.use_data_netmgrd=true

# NFC
PRODUCT_VENDOR_PROPERTIES += \
ro.camera.notify_nfc=1

# Perf
PRODUCT_VENDOR_PROPERTIES += \
ro.vendor.extension_library=libqti-perfd-client.so

# Phantom process monitoring
PRODUCT_PRODUCT_PROPERTIES += \
sys.fflag.override.settings_enable_monitor_phantom_procs=false

# Radio
PRODUCT_SYSTEM_PROPERTIES += \
persist.sys.fflag.override.settings_network_and_internet_v2=true \
ril.subscription.types=NV,RUIM \
rild.libpath=/vendor/lib64/libril-qc-hal-qmi.so

PRODUCT_VENDOR_PROPERTIES += \
persist.sys.strictmode.disable=true \
persist.vendor.radio.add_power_save=1 \
persist.vendor.radio.apm_sim_not_pwdn=1 \
persist.vendor.radio.custom_ecc=1 \
persist.vendor.radio.do_not_use_oprt_db=true \
persist.vendor.radio.enableadvancedscan=true \
persist.vendor.radio.manual_nw_rej_ct=1 \
persist.vendor.radio.mt_sms_ack=19 \
persist.vendor.radio.oem_socket=true \
persist.vendor.radio.procedure_bytes=SKIP \
persist.vendor.radio.rat_on=combine \
persist.vendor.radio.report_codec=1 \
persist.vendor.radio.sib16_support=1 \
persist.vendor.radio.unicode_op_names=true \
ro.telephony.default_network=33,33

# Sensor
PRODUCT_VENDOR_PROPERTIES += \
persist.vendor.sensors.debug.hal=0 \
vendor.dynamic_sensor.setup.timeout.ms=1600

# Shutdown
PRODUCT_SYSTEM_PROPERTIES += \
ro.build.shutdown_timeout=0

# Suspend properties
PRODUCT_VENDOR_PROPERTIES += \
suspend.max_sleep_time_millis=40000 \
suspend.short_suspend_backoff_enabled=true \
suspend.short_suspend_threshold_millis=2000

# SSR
PRODUCT_SYSTEM_PROPERTIES += \
persist.vendor.ssr.restart_level=ALL_ENABLE

# USB
PRODUCT_VENDOR_PROPERTIES += \
vendor.usb.controller=a600000.dwc3 \
vendor.usb.diag.func.name=ffs \
vendor.usb.dpl.inst.name=dpl \
vendor.usb.qdss.inst.name=qdss_sw \
vendor.usb.rmnet.func.name=gsi \
vendor.usb.rmnet.inst.name=rmnet \
vendor.usb.rndis.func.name=gsi \
vendor.usb.use_ffs_mtp=1 \
vendor.usb.use_gadget_hal=0 \
sys.usb.mtp.batchcancel=1

# Vendor
PRODUCT_SYSTEM_PROPERTIES += \
ro.vendor.qti.va_aosp.support=1

# Wifi
PRODUCT_VENDOR_PROPERTIES += \
wifi.aware.interface=wifi-aware0

# Zygote
PRODUCT_SYSTEM_PROPERTIES += \
persist.device_config.runtime_native.usap_pool_enabled=true

PRODUCT_VENDOR_PROPERTIES += \
zygote.critical_window.minute=10
