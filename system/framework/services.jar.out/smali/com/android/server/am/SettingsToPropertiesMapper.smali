.class public Lcom/android/server/am/SettingsToPropertiesMapper;
.super Ljava/lang/Object;
.source "SettingsToPropertiesMapper.java"


# static fields
.field private static final GLOBAL_SETTINGS_CATEGORY:Ljava/lang/String; = "global_settings"

.field public static final NAMESPACE_LOCAL_OVERRIDES:Ljava/lang/String; = "device_config_overrides"

.field public static final NAMESPACE_REBOOT_STAGING:Ljava/lang/String; = "staged"

.field public static final NAMESPACE_REBOOT_STAGING_DELIMITER:Ljava/lang/String; = "*"

.field private static final NAMESPACE_TETHERING_U_OR_LATER_NATIVE:Ljava/lang/String; = "tethering_u_or_later_native"

.field private static final RESET_PERFORMED_PROPERTY:Ljava/lang/String; = "device_config.reset_performed"

.field private static final RESET_RECORD_FILE_PATH:Ljava/lang/String; = "/data/server_configurable_flags/reset_flags"

.field private static final SYSTEM_PROPERTY_INVALID_SUBSTRING:Ljava/lang/String; = ".."

.field private static final SYSTEM_PROPERTY_MAX_LENGTH:I = 0x5c

.field private static final SYSTEM_PROPERTY_PREFIX:Ljava/lang/String; = "persist.device_config."

.field private static final SYSTEM_PROPERTY_VALID_CHARACTERS_REGEX:Ljava/lang/String; = "^[\\w\\.\\-@:]*$"

.field private static final TAG:Ljava/lang/String; = "SettingsToPropertiesMapper"

.field static final sDeviceConfigAconfigScopes:[Ljava/lang/String;

.field static final sDeviceConfigScopes:[Ljava/lang/String;

.field static final sGlobalSettings:[Ljava/lang/String;


# instance fields
.field private final mContentResolver:Landroid/content/ContentResolver;

.field private final mDeviceConfigScopes:[Ljava/lang/String;

.field private final mGlobalSettings:[Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$EgBV8Dz39zCT3L1Nko75WeB64pU(Lcom/android/server/am/SettingsToPropertiesMapper;Landroid/provider/DeviceConfig$Properties;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/am/SettingsToPropertiesMapper;->lambda$updatePropertiesFromSettings$0(Landroid/provider/DeviceConfig$Properties;)V

    return-void
.end method

.method public static synthetic $r8$lambda$U8GR0ipUE8X3hDRtGmnQloaxLkU(Landroid/provider/DeviceConfig$Properties;)V
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/server/am/SettingsToPropertiesMapper;->lambda$updatePropertiesFromSettings$2(Landroid/provider/DeviceConfig$Properties;)V

    return-void
.end method

.method public static synthetic $r8$lambda$xaooDt4T3agG1Hk5_pT9j0XnxEM(Landroid/provider/DeviceConfig$Properties;)V
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/server/am/SettingsToPropertiesMapper;->lambda$updatePropertiesFromSettings$1(Landroid/provider/DeviceConfig$Properties;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 170

    .line 89
    const-string/jumbo v0, "native_flags_health_check_enabled"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/SettingsToPropertiesMapper;->sGlobalSettings:[Ljava/lang/String;

    .line 103
    const-string/jumbo v29, "hdmi_control"

    const-string/jumbo v30, "tethering_u_or_later_native"

    const-string v1, "activity_manager_native_boot"

    const-string v2, "camera_native"

    const-string v3, "configuration"

    const-string v4, "connectivity"

    const-string v5, "edgetpu_native"

    const-string/jumbo v6, "input_native_boot"

    const-string/jumbo v7, "intelligence_content_suggestions"

    const-string/jumbo v8, "lmkd_native"

    const-string/jumbo v9, "media_native"

    const-string/jumbo v10, "mglru_native"

    const-string/jumbo v11, "mmd_native"

    const-string/jumbo v12, "netd_native"

    const-string/jumbo v13, "nnapi_native"

    const-string/jumbo v14, "profcollect_native_boot"

    const-string/jumbo v15, "remote_key_provisioning_native"

    const-string/jumbo v16, "runtime_native"

    const-string/jumbo v17, "runtime_native_boot"

    const-string/jumbo v18, "statsd_native"

    const-string/jumbo v19, "statsd_native_boot"

    const-string/jumbo v20, "storage_native_boot"

    const-string/jumbo v21, "surface_flinger_native_boot"

    const-string/jumbo v22, "swcodec_native"

    const-string/jumbo v23, "vendor_system_native"

    const-string/jumbo v24, "vendor_system_native_boot"

    const-string/jumbo v25, "virtualization_framework_native"

    const-string/jumbo v26, "window_manager_native_boot"

    const-string/jumbo v27, "memory_safety_native_boot"

    const-string/jumbo v28, "memory_safety_native"

    filled-new-array/range {v1 .. v30}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/SettingsToPropertiesMapper;->sDeviceConfigScopes:[Ljava/lang/String;

    .line 139
    const-string/jumbo v168, "windowing_frontend"

    const-string/jumbo v169, "xr"

    const-string/jumbo v1, "tv_os"

    const-string v2, "aaos_carframework_triage"

    const-string v3, "aaos_performance_triage"

    const-string v4, "aaos_input_triage"

    const-string v5, "aaos_user_triage"

    const-string v6, "aaos_window_triage"

    const-string v7, "aaos_audio_triage"

    const-string v8, "aaos_power_triage"

    const-string v9, "aaos_storage_triage"

    const-string v10, "aaos_sdv"

    const-string v11, "aaos_vac_triage"

    const-string v12, "accessibility"

    const-string v13, "android_core_networking"

    const-string v14, "android_health_services"

    const-string v15, "android_sdk"

    const-string v16, "android_kernel"

    const-string v17, "aoc"

    const-string v18, "app_widgets"

    const-string v19, "arc_next"

    const-string v20, "art_cloud"

    const-string v21, "art_mainline"

    const-string v22, "art_performance"

    const-string v23, "attack_tools"

    const-string v24, "automotive_cast"

    const-string v25, "avic"

    const-string v26, "desktop_firmware"

    const-string v27, "biometrics"

    const-string v28, "biometrics_framework"

    const-string v29, "biometrics_integration"

    const-string v30, "bluetooth"

    const-string v31, "brownout_mitigation_audio"

    const-string v32, "brownout_mitigation_modem"

    const-string v33, "build"

    const-string v34, "camera_hal"

    const-string v35, "camera_platform"

    const-string v36, "car_framework"

    const-string v37, "car_perception"

    const-string v38, "car_security"

    const-string v39, "car_telemetry"

    const-string v40, "codec_fwk"

    const-string v41, "companion"

    const-string v42, "com_android_adbd"

    const-string v43, "content_protection"

    const-string v44, "context_hub"

    const-string v45, "core_experiments_team_internal"

    const-string v46, "core_graphics"

    const-string v47, "core_libraries"

    const-string v48, "crumpet"

    const-string v49, "dck_framework"

    const-string v50, "desktop_apps"

    const-string v51, "desktop_audio"

    const-string v52, "desktop_better_together"

    const-string v53, "desktop_bsp"

    const-string v54, "desktop_camera"

    const-string v55, "desktop_connectivity"

    const-string v56, "desktop_dev_experience"

    const-string v57, "desktop_display"

    const-string v58, "desktop_commercial"

    const-string v59, "desktop_firmware"

    const-string v60, "desktop_graphics"

    const-string v61, "desktop_hwsec"

    const-string v62, "desktop_input"

    const-string v63, "desktop_kernel"

    const-string v64, "desktop_ml"

    const-string v65, "desktop_networking"

    const-string v66, "desktop_serviceability"

    const-string v67, "desktop_oobe"

    const-string v68, "desktop_peripherals"

    const-string v69, "desktop_personalization"

    const-string v70, "desktop_pnp"

    const-string v71, "desktop_privacy"

    const-string v72, "desktop_release"

    const-string v73, "desktop_security"

    const-string v74, "desktop_stats"

    const-string v75, "desktop_sysui"

    const-string v76, "desktop_users_and_accounts"

    const-string v77, "desktop_video"

    const-string v78, "desktop_wifi"

    const-string v79, "devoptions_settings"

    const-string/jumbo v80, "game"

    const-string/jumbo v81, "gpu"

    const-string/jumbo v82, "haptics"

    const-string/jumbo v83, "hardware_backed_security_mainline"

    const-string/jumbo v84, "input"

    const-string/jumbo v85, "incremental"

    const-string/jumbo v86, "llvm_and_toolchains"

    const-string/jumbo v87, "lse_desktop_experience"

    const-string/jumbo v88, "machine_learning"

    const-string/jumbo v89, "mainline_modularization"

    const-string/jumbo v90, "mainline_sdk"

    const-string/jumbo v91, "make_pixel_haptics"

    const-string/jumbo v92, "media_audio"

    const-string/jumbo v93, "media_drm"

    const-string/jumbo v94, "media_projection"

    const-string/jumbo v95, "media_reliability"

    const-string/jumbo v96, "media_solutions"

    const-string/jumbo v97, "media_tv"

    const-string/jumbo v98, "microxr"

    const-string/jumbo v99, "nearby"

    const-string/jumbo v100, "nfc"

    const-string/jumbo v101, "pdf_viewer"

    const-string/jumbo v102, "perfetto"

    const-string/jumbo v103, "pixel_audio_android"

    const-string/jumbo v104, "pixel_biometrics_face"

    const-string/jumbo v105, "pixel_bluetooth"

    const-string/jumbo v106, "pixel_connectivity_gps"

    const-string/jumbo v107, "pixel_continuity"

    const-string/jumbo v108, "pixel_display"

    const-string/jumbo v109, "pixel_fingerprint"

    const-string/jumbo v110, "pixel_gsc"

    const-string/jumbo v111, "pixel_perf"

    const-string/jumbo v112, "pixel_sensai"

    const-string/jumbo v113, "pixel_sensors"

    const-string/jumbo v114, "pixel_state_server"

    const-string/jumbo v115, "pixel_system_sw_video"

    const-string/jumbo v116, "pixel_video_sw"

    const-string/jumbo v117, "pixel_vpn"

    const-string/jumbo v118, "pixel_watch"

    const-string/jumbo v119, "pixel_watch_debug_trace"

    const-string/jumbo v120, "pixel_watch_watchfaces"

    const-string/jumbo v121, "pixel_wifi"

    const-string/jumbo v122, "platform_compat"

    const-string/jumbo v123, "platform_security"

    const-string/jumbo v124, "pmw"

    const-string/jumbo v125, "power"

    const-string/jumbo v126, "preload_safety"

    const-string/jumbo v127, "printing"

    const-string/jumbo v128, "privacy_infra_policy"

    const-string/jumbo v129, "psap_ai"

    const-string/jumbo v130, "ravenwood"

    const-string/jumbo v131, "resource_manager"

    const-string/jumbo v132, "responsible_apis"

    const-string/jumbo v133, "rust"

    const-string/jumbo v134, "safety_center"

    const-string/jumbo v135, "sensors"

    const-string/jumbo v136, "spoon"

    const-string/jumbo v137, "stability"

    const-string/jumbo v138, "statsd"

    const-string/jumbo v139, "system_performance"

    const-string/jumbo v140, "system_sw_battery"

    const-string/jumbo v141, "system_sw_touch"

    const-string/jumbo v142, "system_sw_usb"

    const-string/jumbo v143, "test_suites"

    const-string/jumbo v144, "text"

    const-string/jumbo v145, "threadnetwork"

    const-string/jumbo v146, "treble"

    const-string/jumbo v147, "tv_os_media"

    const-string/jumbo v148, "tv_system_ui"

    const-string/jumbo v149, "usb"

    const-string/jumbo v150, "vibrator"

    const-string/jumbo v151, "virtual_devices"

    const-string/jumbo v152, "virtualization"

    const-string/jumbo v153, "wallet_integration"

    const-string/jumbo v154, "wear_calling_messaging"

    const-string/jumbo v155, "wear_connectivity"

    const-string/jumbo v156, "wear_esim_carriers"

    const-string/jumbo v157, "wear_frameworks"

    const-string/jumbo v158, "wear_media"

    const-string/jumbo v159, "wear_offload"

    const-string/jumbo v160, "wear_security"

    const-string/jumbo v161, "wear_system_health"

    const-string/jumbo v162, "wear_systems"

    const-string/jumbo v163, "wear_sysui"

    const-string/jumbo v164, "wear_system_managed_surfaces"

    const-string/jumbo v165, "wear_watchfaces"

    const-string/jumbo v166, "web_apps_on_chromeos_and_android"

    const-string/jumbo v167, "window_surfaces"

    filled-new-array/range {v1 .. v169}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/SettingsToPropertiesMapper;->sDeviceConfigAconfigScopes:[Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Landroid/content/ContentResolver;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0
    .param p1, "contentResolver"    # Landroid/content/ContentResolver;
    .param p2, "globalSettings"    # [Ljava/lang/String;
    .param p3, "deviceConfigScopes"    # [Ljava/lang/String;
    .param p4, "deviceConfigAconfigScopes"    # [Ljava/lang/String;

    .line 326
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 327
    iput-object p1, p0, Lcom/android/server/am/SettingsToPropertiesMapper;->mContentResolver:Landroid/content/ContentResolver;

    .line 328
    iput-object p2, p0, Lcom/android/server/am/SettingsToPropertiesMapper;->mGlobalSettings:[Ljava/lang/String;

    .line 329
    iput-object p3, p0, Lcom/android/server/am/SettingsToPropertiesMapper;->mDeviceConfigScopes:[Ljava/lang/String;

    .line 330
    return-void
.end method

.method static getResetFlagsFileContent()Ljava/lang/String;
    .locals 4

    .line 770
    const/4 v0, 0x0

    .line 772
    .local v0, "content":Ljava/lang/String;
    :try_start_0
    new-instance v1, Ljava/io/File;

    const-string v2, "/data/server_configurable_flags/reset_flags"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 773
    .local v1, "reset_flag_file":Ljava/io/File;
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, v1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 774
    .local v2, "br":Ljava/io/BufferedReader;
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    .line 776
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 779
    .end local v1    # "reset_flag_file":Ljava/io/File;
    .end local v2    # "br":Ljava/io/BufferedReader;
    goto :goto_0

    .line 777
    :catch_0
    move-exception v1

    .line 778
    .local v1, "ioe":Ljava/io/IOException;
    const-string v2, "failed to read file /data/server_configurable_flags/reset_flags"

    invoke-static {v2, v1}, Lcom/android/server/am/SettingsToPropertiesMapper;->logErr(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 780
    .end local v1    # "ioe":Ljava/io/IOException;
    :goto_0
    return-object v0
.end method

.method public static getResetNativeCategories()[Ljava/lang/String;
    .locals 10

    .line 643
    invoke-static {}, Lcom/android/server/am/SettingsToPropertiesMapper;->isNativeFlagsResetPerformed()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 644
    new-array v0, v1, [Ljava/lang/String;

    return-object v0

    .line 647
    :cond_0
    invoke-static {}, Lcom/android/server/am/SettingsToPropertiesMapper;->getResetFlagsFileContent()Ljava/lang/String;

    move-result-object v0

    .line 648
    .local v0, "content":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 649
    new-array v1, v1, [Ljava/lang/String;

    return-object v1

    .line 652
    :cond_1
    const-string v2, ";"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 653
    .local v2, "property_names":[Ljava/lang/String;
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 654
    .local v3, "categories":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    array-length v4, v2

    move v5, v1

    :goto_0
    if-ge v5, v4, :cond_3

    aget-object v6, v2, v5

    .line 655
    .local v6, "property_name":Ljava/lang/String;
    const-string v7, "\\."

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 656
    .local v7, "segments":[Ljava/lang/String;
    array-length v8, v7

    const/4 v9, 0x3

    if-ge v8, v9, :cond_2

    .line 657
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "failed to extract category name from property "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/server/am/SettingsToPropertiesMapper;->logErr(Ljava/lang/String;)V

    .line 658
    goto :goto_1

    .line 660
    :cond_2
    const/4 v8, 0x2

    aget-object v8, v7, v8

    invoke-virtual {v3, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 654
    .end local v6    # "property_name":Ljava/lang/String;
    .end local v7    # "segments":[Ljava/lang/String;
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 662
    :cond_3
    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    return-object v1
.end method

.method public static isNativeFlagsResetPerformed()Z
    .locals 2

    .line 633
    const-string v0, "device_config.reset_performed"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 634
    .local v0, "value":Ljava/lang/String;
    const-string/jumbo v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method private synthetic lambda$updatePropertiesFromSettings$0(Landroid/provider/DeviceConfig$Properties;)V
    .locals 5
    .param p1, "properties"    # Landroid/provider/DeviceConfig$Properties;

    .line 366
    invoke-virtual {p1}, Landroid/provider/DeviceConfig$Properties;->getNamespace()Ljava/lang/String;

    move-result-object v0

    .line 367
    .local v0, "scope":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/provider/DeviceConfig$Properties;->getKeyset()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 368
    .local v2, "key":Ljava/lang/String;
    invoke-static {v0, v2}, Lcom/android/server/am/SettingsToPropertiesMapper;->makePropertyName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 369
    .local v3, "propertyName":Ljava/lang/String;
    if-nez v3, :cond_0

    .line 370
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unable to construct system property for "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/am/SettingsToPropertiesMapper;->logErr(Ljava/lang/String;)V

    .line 372
    return-void

    .line 374
    :cond_0
    const/4 v4, 0x0

    invoke-virtual {p1, v2, v4}, Landroid/provider/DeviceConfig$Properties;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/android/server/am/SettingsToPropertiesMapper;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "propertyName":Ljava/lang/String;
    goto :goto_0

    .line 376
    :cond_1
    return-void
.end method

.method private static synthetic lambda$updatePropertiesFromSettings$1(Landroid/provider/DeviceConfig$Properties;)V
    .locals 0
    .param p0, "properties"    # Landroid/provider/DeviceConfig$Properties;

    .line 386
    nop

    .line 387
    invoke-static {p0}, Lcom/android/server/am/SettingsToPropertiesMapper;->stageFlagsInNewStorage(Landroid/provider/DeviceConfig$Properties;)V

    .line 388
    return-void
.end method

.method private static synthetic lambda$updatePropertiesFromSettings$2(Landroid/provider/DeviceConfig$Properties;)V
    .locals 0
    .param p0, "properties"    # Landroid/provider/DeviceConfig$Properties;

    .line 397
    nop

    .line 398
    invoke-static {p0}, Lcom/android/server/am/SettingsToPropertiesMapper;->setLocalOverridesInNewStorage(Landroid/provider/DeviceConfig$Properties;)V

    .line 399
    return-void
.end method

.method private static logErr(Ljava/lang/String;)V
    .locals 2
    .param p0, "msg"    # Ljava/lang/String;

    .line 761
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    const-string v1, "SettingsToPropertiesMapper"

    if-eqz v0, :cond_0

    .line 762
    invoke-static {v1, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 764
    :cond_0
    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 766
    :goto_0
    return-void
.end method

.method private static logErr(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 2
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "e"    # Ljava/lang/Exception;

    .line 753
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    const-string v1, "SettingsToPropertiesMapper"

    if-eqz v0, :cond_0

    .line 754
    invoke-static {v1, p0, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 756
    :cond_0
    invoke-static {v1, p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 758
    :goto_0
    return-void
.end method

.method static makePropertyName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "categoryName"    # Ljava/lang/String;
    .param p1, "flagName"    # Ljava/lang/String;

    .line 675
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "persist.device_config."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 677
    .local v0, "propertyName":Ljava/lang/String;
    const-string v1, "^[\\w\\.\\-@:]*$"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    nop

    if-eqz v1, :cond_1

    .line 678
    const-string v1, ".."

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 682
    :cond_0
    return-object v0

    .line 679
    :cond_1
    :goto_0
    const/4 v1, 0x0

    return-object v1
.end method

.method static parseAndLogAconfigdReturn(Landroid/util/proto/ProtoInputStream;)V
    .locals 6
    .param p0, "proto"    # Landroid/util/proto/ProtoInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 530
    nop

    :goto_0
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 554
    :pswitch_0
    const-string/jumbo v0, "invalid message type, expect storage return message"

    invoke-static {v0}, Lcom/android/server/am/SettingsToPropertiesMapper;->logErr(Ljava/lang/String;)V

    .line 555
    goto :goto_0

    .line 532
    :pswitch_1
    const-wide v0, 0x20b00000001L

    invoke-virtual {p0, v0, v1}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v0

    .line 533
    .local v0, "msgsToken":J
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v2

    const-string v3, "SettingsToPropertiesMapper"

    sparse-switch v2, :sswitch_data_0

    .line 546
    const-string/jumbo v2, "invalid message type, expecting only flag override return or error message"

    invoke-static {v2}, Lcom/android/server/am/SettingsToPropertiesMapper;->logErr(Ljava/lang/String;)V

    goto :goto_1

    .line 540
    :sswitch_0
    const-wide v4, 0x10900000008L

    invoke-virtual {p0, v4, v5}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v2

    .line 541
    .local v2, "errmsg":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "override request failed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    goto :goto_1

    .line 535
    .end local v2    # "errmsg":Ljava/lang/String;
    :sswitch_1
    const-string/jumbo v2, "successfully handled override requests"

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 536
    const-wide v2, 0x10b00000002L

    invoke-virtual {p0, v2, v3}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v2

    .line 537
    .local v2, "msgToken":J
    invoke-virtual {p0, v2, v3}, Landroid/util/proto/ProtoInputStream;->end(J)V

    .line 538
    goto :goto_1

    .line 544
    .end local v2    # "msgToken":J
    :sswitch_2
    nop

    .line 549
    :goto_1
    invoke-virtual {p0, v0, v1}, Landroid/util/proto/ProtoInputStream;->end(J)V

    .line 550
    goto :goto_0

    .line 552
    .end local v0    # "msgsToken":J
    :pswitch_2
    return-void

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        -0x1 -> :sswitch_2
        0x2 -> :sswitch_1
        0x8 -> :sswitch_0
    .end sparse-switch
.end method

.method static sendAconfigdRequests(Ljava/lang/String;Landroid/util/proto/ProtoOutputStream;)Landroid/util/proto/ProtoInputStream;
    .locals 9
    .param p0, "socketName"    # Ljava/lang/String;
    .param p1, "requests"    # Landroid/util/proto/ProtoOutputStream;

    .line 434
    const-string v0, " socket"

    const-string v1, "SettingsToPropertiesMapper"

    new-instance v2, Landroid/net/LocalSocket;

    invoke-direct {v2}, Landroid/net/LocalSocket;-><init>()V

    .line 436
    .local v2, "client":Landroid/net/LocalSocket;
    const/4 v3, 0x0

    :try_start_0
    new-instance v4, Landroid/net/LocalSocketAddress;

    sget-object v5, Landroid/net/LocalSocketAddress$Namespace;->RESERVED:Landroid/net/LocalSocketAddress$Namespace;

    invoke-direct {v4, p0, v5}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V

    invoke-virtual {v2, v4}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V

    .line 438
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "connected to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    .line 442
    nop

    .line 444
    const/4 v0, 0x0

    .line 445
    .local v0, "inputStream":Ljava/io/DataInputStream;
    const/4 v4, 0x0

    .line 447
    .local v4, "outputStream":Ljava/io/DataOutputStream;
    :try_start_1
    new-instance v5, Ljava/io/DataInputStream;

    invoke-virtual {v2}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v0, v5

    .line 448
    new-instance v5, Ljava/io/DataOutputStream;

    invoke-virtual {v2}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 452
    .end local v4    # "outputStream":Ljava/io/DataOutputStream;
    .local v5, "outputStream":Ljava/io/DataOutputStream;
    nop

    .line 456
    :try_start_2
    invoke-virtual {p1}, Landroid/util/proto/ProtoOutputStream;->getBytes()[B

    move-result-object v4

    .line 457
    .local v4, "requests_bytes":[B
    array-length v6, v4

    invoke-virtual {v5, v6}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 458
    array-length v6, v4

    const/4 v7, 0x0

    invoke-virtual {v5, v4, v7, v6}, Ljava/io/DataOutputStream;->write([BII)V

    .line 459
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "flag override requests sent to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 463
    nop

    .line 467
    .end local v4    # "requests_bytes":[B
    :try_start_3
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v4

    .line 468
    .local v4, "num_bytes":I
    new-instance v6, Landroid/util/proto/ProtoInputStream;

    invoke-direct {v6, v0}, Landroid/util/proto/ProtoInputStream;-><init>(Ljava/io/InputStream;)V

    .line 469
    .local v6, "returns":Landroid/util/proto/ProtoInputStream;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "received "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " bytes back from "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 470
    return-object v6

    .line 471
    .end local v4    # "num_bytes":I
    .end local v6    # "returns":Landroid/util/proto/ProtoInputStream;
    :catch_0
    move-exception v1

    .line 472
    .local v1, "ioe":Ljava/io/IOException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "failed to read requests return from "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v1}, Lcom/android/server/am/SettingsToPropertiesMapper;->logErr(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 473
    return-object v3

    .line 460
    .end local v1    # "ioe":Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 461
    .restart local v1    # "ioe":Ljava/io/IOException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "failed to send requests to "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v1}, Lcom/android/server/am/SettingsToPropertiesMapper;->logErr(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 462
    return-object v3

    .line 449
    .end local v1    # "ioe":Ljava/io/IOException;
    .end local v5    # "outputStream":Ljava/io/DataOutputStream;
    .local v4, "outputStream":Ljava/io/DataOutputStream;
    :catch_2
    move-exception v1

    .line 450
    .restart local v1    # "ioe":Ljava/io/IOException;
    const-string v5, "failed to get local socket iostreams"

    invoke-static {v5, v1}, Lcom/android/server/am/SettingsToPropertiesMapper;->logErr(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 451
    return-object v3

    .line 439
    .end local v0    # "inputStream":Ljava/io/DataInputStream;
    .end local v1    # "ioe":Ljava/io/IOException;
    .end local v4    # "outputStream":Ljava/io/DataOutputStream;
    :catch_3
    move-exception v1

    .line 440
    .restart local v1    # "ioe":Ljava/io/IOException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "failed to connect to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/android/server/am/SettingsToPropertiesMapper;->logErr(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 441
    return-object v3
.end method

.method static sendAconfigdRequests(Landroid/util/proto/ProtoOutputStream;)V
    .locals 3
    .param p0, "requests"    # Landroid/util/proto/ProtoOutputStream;

    .line 410
    const-string v0, "failed to parse aconfigd return"

    const-string v1, "aconfigd_system"

    invoke-static {v1, p0}, Lcom/android/server/am/SettingsToPropertiesMapper;->sendAconfigdRequests(Ljava/lang/String;Landroid/util/proto/ProtoOutputStream;)Landroid/util/proto/ProtoInputStream;

    move-result-object v1

    .line 412
    .local v1, "returns":Landroid/util/proto/ProtoInputStream;
    :try_start_0
    invoke-static {v1}, Lcom/android/server/am/SettingsToPropertiesMapper;->parseAndLogAconfigdReturn(Landroid/util/proto/ProtoInputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 415
    goto :goto_0

    .line 413
    :catch_0
    move-exception v2

    .line 414
    .local v2, "ioe":Ljava/io/IOException;
    invoke-static {v0, v2}, Lcom/android/server/am/SettingsToPropertiesMapper;->logErr(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 416
    .end local v2    # "ioe":Ljava/io/IOException;
    :goto_0
    nop

    .line 417
    const-string v2, "aconfigd_mainline"

    invoke-static {v2, p0}, Lcom/android/server/am/SettingsToPropertiesMapper;->sendAconfigdRequests(Ljava/lang/String;Landroid/util/proto/ProtoOutputStream;)Landroid/util/proto/ProtoInputStream;

    move-result-object v1

    .line 419
    :try_start_1
    invoke-static {v1}, Lcom/android/server/am/SettingsToPropertiesMapper;->parseAndLogAconfigdReturn(Landroid/util/proto/ProtoInputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 422
    goto :goto_1

    .line 420
    :catch_1
    move-exception v2

    .line 421
    .restart local v2    # "ioe":Ljava/io/IOException;
    invoke-static {v0, v2}, Lcom/android/server/am/SettingsToPropertiesMapper;->logErr(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 424
    .end local v2    # "ioe":Ljava/io/IOException;
    :goto_1
    return-void
.end method

.method public static setLocalOverridesInNewStorage(Landroid/provider/DeviceConfig$Properties;)V
    .locals 12
    .param p0, "props"    # Landroid/provider/DeviceConfig$Properties;

    .line 566
    const/4 v0, 0x0

    .line 567
    .local v0, "num_requests":I
    new-instance v1, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {v1}, Landroid/util/proto/ProtoOutputStream;-><init>()V

    .line 568
    .local v1, "requests":Landroid/util/proto/ProtoOutputStream;
    invoke-virtual {p0}, Landroid/provider/DeviceConfig$Properties;->getKeyset()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 569
    .local v3, "flagName":Ljava/lang/String;
    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Landroid/provider/DeviceConfig$Properties;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 571
    .local v4, "flagValue":Ljava/lang/String;
    nop

    .line 572
    if-nez v3, :cond_0

    .line 573
    goto :goto_0

    .line 581
    :cond_0
    const-string v5, ":"

    invoke-virtual {v3, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    .line 582
    .local v5, "idx":I
    const/4 v6, -0x1

    if-eq v5, v6, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v8, 0x1

    sub-int/2addr v7, v8

    if-eq v5, v7, :cond_1

    if-nez v5, :cond_2

    :cond_1
    goto :goto_2

    .line 586
    :cond_2
    const/4 v7, 0x0

    invoke-virtual {v3, v7, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 587
    .local v9, "actualNamespace":Ljava/lang/String;
    add-int/lit8 v10, v5, 0x1

    invoke-virtual {v3, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    .line 588
    .local v10, "fullFlagName":Ljava/lang/String;
    const-string v11, "."

    invoke-virtual {v10, v11}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    .line 589
    if-ne v5, v6, :cond_3

    .line 590
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "invalid flag name: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/am/SettingsToPropertiesMapper;->logErr(Ljava/lang/String;)V

    .line 591
    goto :goto_0

    .line 593
    :cond_3
    invoke-virtual {v10, v7, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 594
    .local v6, "packageName":Ljava/lang/String;
    add-int/lit8 v7, v5, 0x1

    invoke-virtual {v10, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 596
    .local v7, "realFlagName":Ljava/lang/String;
    if-nez v4, :cond_4

    .line 597
    nop

    .line 598
    invoke-static {v1, v6, v7, v8}, Lcom/android/server/am/SettingsToPropertiesMapper;->writeFlagOverrideRemovalRequest(Landroid/util/proto/ProtoOutputStream;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_1

    .line 603
    :cond_4
    invoke-static {v1, v6, v7, v4, v8}, Lcom/android/server/am/SettingsToPropertiesMapper;->writeFlagOverrideRequest(Landroid/util/proto/ProtoOutputStream;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 606
    :goto_1
    nop

    .end local v3    # "flagName":Ljava/lang/String;
    .end local v4    # "flagValue":Ljava/lang/String;
    .end local v5    # "idx":I
    .end local v6    # "packageName":Ljava/lang/String;
    .end local v7    # "realFlagName":Ljava/lang/String;
    .end local v9    # "actualNamespace":Ljava/lang/String;
    .end local v10    # "fullFlagName":Ljava/lang/String;
    add-int/lit8 v0, v0, 0x1

    .line 607
    goto :goto_0

    .line 583
    .restart local v3    # "flagName":Ljava/lang/String;
    .restart local v4    # "flagValue":Ljava/lang/String;
    .restart local v5    # "idx":I
    :goto_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "invalid local flag override: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/am/SettingsToPropertiesMapper;->logErr(Ljava/lang/String;)V

    .line 584
    goto :goto_0

    .line 609
    .end local v3    # "flagName":Ljava/lang/String;
    .end local v4    # "flagValue":Ljava/lang/String;
    .end local v5    # "idx":I
    :cond_5
    if-nez v0, :cond_6

    .line 610
    return-void

    .line 614
    :cond_6
    invoke-static {v1}, Lcom/android/server/am/SettingsToPropertiesMapper;->sendAconfigdRequests(Landroid/util/proto/ProtoOutputStream;)V

    .line 615
    return-void
.end method

.method private setProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 730
    if-nez p2, :cond_1

    .line 733
    invoke-static {p1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 734
    return-void

    .line 736
    :cond_0
    const-string p2, ""

    goto :goto_0

    .line 737
    :cond_1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x5c

    if-le v0, v1, :cond_2

    .line 738
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "key="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " exceeds system property max length."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/SettingsToPropertiesMapper;->logErr(Ljava/lang/String;)V

    .line 739
    return-void

    .line 743
    :cond_2
    :goto_0
    :try_start_0
    invoke-static {p1, p2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 749
    goto :goto_1

    .line 744
    :catch_0
    move-exception v0

    .line 748
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to set property "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " value \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/server/am/SettingsToPropertiesMapper;->logErr(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 750
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method static stageFlagsInNewStorage(Landroid/provider/DeviceConfig$Properties;)V
    .locals 11
    .param p0, "props"    # Landroid/provider/DeviceConfig$Properties;

    .line 693
    const/4 v0, 0x0

    .line 694
    .local v0, "num_requests":I
    new-instance v1, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {v1}, Landroid/util/proto/ProtoOutputStream;-><init>()V

    .line 695
    .local v1, "requests":Landroid/util/proto/ProtoOutputStream;
    invoke-virtual {p0}, Landroid/provider/DeviceConfig$Properties;->getKeyset()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 696
    .local v3, "flagName":Ljava/lang/String;
    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Landroid/provider/DeviceConfig$Properties;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 697
    .local v4, "flagValue":Ljava/lang/String;
    nop

    nop

    if-eqz v3, :cond_0

    if-nez v4, :cond_1

    .line 698
    goto :goto_0

    .line 701
    :cond_1
    const-string v5, "*"

    invoke-virtual {v3, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    .line 702
    .local v5, "idx":I
    const/4 v6, -0x1

    if-eq v5, v6, :cond_2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    if-eq v5, v7, :cond_2

    if-nez v5, :cond_3

    :cond_2
    goto :goto_1

    .line 706
    :cond_3
    const/4 v7, 0x0

    invoke-virtual {v3, v7, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 707
    .local v8, "actualNamespace":Ljava/lang/String;
    add-int/lit8 v9, v5, 0x1

    invoke-virtual {v3, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    .line 709
    .local v9, "fullFlagName":Ljava/lang/String;
    const-string v10, "."

    invoke-virtual {v9, v10}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    .line 710
    if-ne v5, v6, :cond_4

    .line 711
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "invalid flag name: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/am/SettingsToPropertiesMapper;->logErr(Ljava/lang/String;)V

    .line 712
    goto :goto_0

    .line 714
    :cond_4
    invoke-virtual {v9, v7, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 715
    .local v6, "packageName":Ljava/lang/String;
    add-int/lit8 v10, v5, 0x1

    invoke-virtual {v9, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    .line 716
    .local v10, "realFlagName":Ljava/lang/String;
    invoke-static {v1, v6, v10, v4, v7}, Lcom/android/server/am/SettingsToPropertiesMapper;->writeFlagOverrideRequest(Landroid/util/proto/ProtoOutputStream;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 717
    nop

    .end local v3    # "flagName":Ljava/lang/String;
    .end local v4    # "flagValue":Ljava/lang/String;
    .end local v5    # "idx":I
    .end local v6    # "packageName":Ljava/lang/String;
    .end local v8    # "actualNamespace":Ljava/lang/String;
    .end local v9    # "fullFlagName":Ljava/lang/String;
    .end local v10    # "realFlagName":Ljava/lang/String;
    add-int/lit8 v0, v0, 0x1

    .line 718
    goto :goto_0

    .line 703
    .restart local v3    # "flagName":Ljava/lang/String;
    .restart local v4    # "flagValue":Ljava/lang/String;
    .restart local v5    # "idx":I
    :goto_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "invalid local flag override: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/am/SettingsToPropertiesMapper;->logErr(Ljava/lang/String;)V

    .line 704
    goto :goto_0

    .line 720
    .end local v3    # "flagName":Ljava/lang/String;
    .end local v4    # "flagValue":Ljava/lang/String;
    .end local v5    # "idx":I
    :cond_5
    if-nez v0, :cond_6

    .line 721
    return-void

    .line 725
    :cond_6
    invoke-static {v1}, Lcom/android/server/am/SettingsToPropertiesMapper;->sendAconfigdRequests(Landroid/util/proto/ProtoOutputStream;)V

    .line 726
    return-void
.end method

.method public static start(Landroid/content/ContentResolver;)Lcom/android/server/am/SettingsToPropertiesMapper;
    .locals 4
    .param p0, "contentResolver"    # Landroid/content/ContentResolver;

    .line 618
    new-instance v0, Lcom/android/server/am/SettingsToPropertiesMapper;

    sget-object v1, Lcom/android/server/am/SettingsToPropertiesMapper;->sGlobalSettings:[Ljava/lang/String;

    sget-object v2, Lcom/android/server/am/SettingsToPropertiesMapper;->sDeviceConfigScopes:[Ljava/lang/String;

    sget-object v3, Lcom/android/server/am/SettingsToPropertiesMapper;->sDeviceConfigAconfigScopes:[Ljava/lang/String;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/server/am/SettingsToPropertiesMapper;-><init>(Landroid/content/ContentResolver;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 623
    .local v0, "mapper":Lcom/android/server/am/SettingsToPropertiesMapper;
    invoke-virtual {v0}, Lcom/android/server/am/SettingsToPropertiesMapper;->updatePropertiesFromSettings()V

    .line 624
    return-object v0
.end method

.method public static writeFlagOverrideRemovalRequest(Landroid/util/proto/ProtoOutputStream;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 7
    .param p0, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "flagName"    # Ljava/lang/String;
    .param p3, "immediate"    # Z

    .line 511
    const-wide v0, 0x20b00000001L

    invoke-virtual {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 512
    .local v0, "msgsToken":J
    const-wide v2, 0x10b00000005L

    invoke-virtual {p0, v2, v3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v2

    .line 513
    .local v2, "msgToken":J
    const-wide v4, 0x10900000002L

    invoke-virtual {p0, v4, v5, p1}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 514
    const-wide v4, 0x10900000003L

    invoke-virtual {p0, v4, v5, p2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 515
    const-wide v4, 0x10800000001L

    const/4 v6, 0x0

    invoke-virtual {p0, v4, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 516
    nop

    .line 517
    if-eqz p3, :cond_0

    .line 518
    const/4 v4, 0x1

    goto :goto_0

    .line 519
    :cond_0
    const/4 v4, 0x2

    .line 516
    :goto_0
    const-wide v5, 0x10e00000004L

    invoke-virtual {p0, v5, v6, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 520
    invoke-virtual {p0, v2, v3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 521
    invoke-virtual {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 522
    return-void
.end method

.method static writeFlagOverrideRequest(Landroid/util/proto/ProtoOutputStream;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 8
    .param p0, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "flagName"    # Ljava/lang/String;
    .param p3, "flagValue"    # Ljava/lang/String;
    .param p4, "isLocal"    # Z

    .line 484
    nop

    .line 486
    const/4 v0, 0x2

    .line 488
    .local v0, "localOverrideTag":I
    const-wide v1, 0x20b00000001L

    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v1

    .line 489
    .local v1, "msgsToken":J
    const-wide v3, 0x10b00000002L

    invoke-virtual {p0, v3, v4}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v3

    .line 490
    .local v3, "msgToken":J
    const-wide v5, 0x10900000001L

    invoke-virtual {p0, v5, v6, p1}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 491
    const-wide v5, 0x10900000002L

    invoke-virtual {p0, v5, v6, p2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 492
    const-wide v5, 0x10900000003L

    invoke-virtual {p0, v5, v6, p3}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 493
    if-eqz p4, :cond_0

    .line 494
    move v5, v0

    goto :goto_0

    .line 495
    :cond_0
    const/4 v5, 0x3

    .line 493
    :goto_0
    const-wide v6, 0x10e00000004L

    invoke-virtual {p0, v6, v7, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 496
    invoke-virtual {p0, v3, v4}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 497
    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 498
    return-void
.end method


# virtual methods
.method updatePropertiesFromSettings()V
    .locals 9

    .line 334
    iget-object v0, p0, Lcom/android/server/am/SettingsToPropertiesMapper;->mGlobalSettings:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_3

    aget-object v4, v0, v3

    .line 335
    .local v4, "globalSetting":Ljava/lang/String;
    invoke-static {v4}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 336
    .local v5, "settingUri":Landroid/net/Uri;
    const-string/jumbo v6, "global_settings"

    invoke-static {v6, v4}, Lcom/android/server/am/SettingsToPropertiesMapper;->makePropertyName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 337
    .local v6, "propName":Ljava/lang/String;
    if-nez v5, :cond_0

    .line 338
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "setting uri is null for globalSetting "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/server/am/SettingsToPropertiesMapper;->logErr(Ljava/lang/String;)V

    .line 339
    goto :goto_1

    .line 341
    :cond_0
    if-nez v6, :cond_1

    .line 342
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "invalid prop name for globalSetting "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/server/am/SettingsToPropertiesMapper;->logErr(Ljava/lang/String;)V

    .line 343
    goto :goto_1

    .line 346
    :cond_1
    new-instance v7, Lcom/android/server/am/SettingsToPropertiesMapper$1;

    const/4 v8, 0x0

    invoke-direct {v7, p0, v8, v4, v6}, Lcom/android/server/am/SettingsToPropertiesMapper$1;-><init>(Lcom/android/server/am/SettingsToPropertiesMapper;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    .local v7, "co":Landroid/database/ContentObserver;
    invoke-static {}, Lcom/android/server/am/SettingsToPropertiesMapper;->isNativeFlagsResetPerformed()Z

    move-result v8

    if-nez v8, :cond_2

    .line 356
    invoke-virtual {p0, v4, v6}, Lcom/android/server/am/SettingsToPropertiesMapper;->updatePropertyFromSetting(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    :cond_2
    iget-object v8, p0, Lcom/android/server/am/SettingsToPropertiesMapper;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v8, v5, v2, v7}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 334
    .end local v4    # "globalSetting":Ljava/lang/String;
    .end local v5    # "settingUri":Landroid/net/Uri;
    .end local v6    # "propName":Ljava/lang/String;
    .end local v7    # "co":Landroid/database/ContentObserver;
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 361
    :cond_3
    iget-object v0, p0, Lcom/android/server/am/SettingsToPropertiesMapper;->mDeviceConfigScopes:[Ljava/lang/String;

    array-length v1, v0

    :goto_2
    if-ge v2, v1, :cond_4

    aget-object v3, v0, v2

    .line 362
    .local v3, "deviceConfigScope":Ljava/lang/String;
    sget-object v4, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-instance v5, Lcom/android/server/am/SettingsToPropertiesMapper$$ExternalSyntheticLambda0;

    invoke-direct {v5, p0}, Lcom/android/server/am/SettingsToPropertiesMapper$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/am/SettingsToPropertiesMapper;)V

    invoke-static {v3, v4, v5}, Landroid/provider/DeviceConfig;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    .line 361
    .end local v3    # "deviceConfigScope":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 380
    :cond_4
    nop

    .line 382
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    new-instance v1, Lcom/android/server/am/SettingsToPropertiesMapper$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/android/server/am/SettingsToPropertiesMapper$$ExternalSyntheticLambda1;-><init>()V

    .line 380
    const-string/jumbo v2, "staged"

    invoke-static {v2, v0, v1}, Landroid/provider/DeviceConfig;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    .line 393
    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/server/am/SettingsToPropertiesMapper$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Lcom/android/server/am/SettingsToPropertiesMapper$$ExternalSyntheticLambda2;-><init>()V

    const-string v2, "device_config_overrides"

    invoke-static {v2, v0, v1}, Landroid/provider/DeviceConfig;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    .line 402
    return-void
.end method

.method updatePropertyFromSetting(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "settingName"    # Ljava/lang/String;
    .param p2, "propName"    # Ljava/lang/String;

    .line 785
    iget-object v0, p0, Lcom/android/server/am/SettingsToPropertiesMapper;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v0, p1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 786
    .local v0, "settingValue":Ljava/lang/String;
    invoke-direct {p0, p2, v0}, Lcom/android/server/am/SettingsToPropertiesMapper;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 787
    return-void
.end method
