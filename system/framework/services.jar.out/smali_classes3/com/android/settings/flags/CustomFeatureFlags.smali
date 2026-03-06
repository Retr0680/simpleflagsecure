.class public Lcom/android/settings/flags/CustomFeatureFlags;
.super Ljava/lang/Object;
.source "CustomFeatureFlags.java"

# interfaces
.implements Lcom/android/settings/flags/FeatureFlags;


# instance fields
.field private mGetValueImpl:Ljava/util/function/BiPredicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/BiPredicate<",
            "Ljava/lang/String;",
            "Ljava/util/function/Predicate<",
            "Lcom/android/settings/flags/FeatureFlags;",
            ">;>;"
        }
    .end annotation
.end field

.field private mReadOnlyFlagsSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/function/BiPredicate;)V
    .locals 104
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiPredicate<",
            "Ljava/lang/String;",
            "Ljava/util/function/Predicate<",
            "Lcom/android/settings/flags/FeatureFlags;",
            ">;>;)V"
        }
    .end annotation

    .line 16
    .local p1, "getValueImpl":Ljava/util/function/BiPredicate;, "Ljava/util/function/BiPredicate<Ljava/lang/String;Ljava/util/function/Predicate<Lcom/android/settings/flags/FeatureFlags;>;>;"
    move-object/from16 v0, p0

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 849
    new-instance v1, Ljava/util/HashSet;

    const-string v102, "com.android.settings.flags.utils_return_user_handle_for_current_user_id"

    const-string v103, ""

    const-string v2, "com.android.settings.flags.accessibility_appearance_settings_backup_enabled"

    const-string v3, "com.android.settings.flags.accessibility_customize_text_reading_preview"

    const-string v4, "com.android.settings.flags.accessibility_show_app_info_button"

    const-string v5, "com.android.settings.flags.active_unlock_finish_parent"

    const-string v6, "com.android.settings.flags.add_security_algorithms_to_eng_menu"

    const-string v7, "com.android.settings.flags.app_archiving"

    const-string v8, "com.android.settings.flags.biometric_onboarding_education"

    const-string v9, "com.android.settings.flags.biometric_settings_provider"

    const-string v10, "com.android.settings.flags.biometrics_onboarding_education"

    const-string v11, "com.android.settings.flags.catalyst"

    const-string v12, "com.android.settings.flags.catalyst_accessibility_color_and_motion"

    const-string v13, "com.android.settings.flags.catalyst_adaptive_connectivity"

    const-string v14, "com.android.settings.flags.catalyst_auto_rotate"

    const-string v15, "com.android.settings.flags.catalyst_battery_saver_screen"

    const-string v16, "com.android.settings.flags.catalyst_bluetooth_switchbar_screen"

    const-string v17, "com.android.settings.flags.catalyst_color_mode"

    const-string v18, "com.android.settings.flags.catalyst_dark_ui_mode"

    const-string v19, "com.android.settings.flags.catalyst_display_settings_screen"

    const-string v20, "com.android.settings.flags.catalyst_display_settings_screen_25q3"

    const-string v21, "com.android.settings.flags.catalyst_firmware_version"

    const-string v22, "com.android.settings.flags.catalyst_gesture_system_navigation_input_summary"

    const-string v23, "com.android.settings.flags.catalyst_internet_settings"

    const-string v24, "com.android.settings.flags.catalyst_language_setting"

    const-string v25, "com.android.settings.flags.catalyst_legal_information"

    const-string v26, "com.android.settings.flags.catalyst_location_settings"

    const-string v27, "com.android.settings.flags.catalyst_lockscreen_from_display_settings"

    const-string v28, "com.android.settings.flags.catalyst_media_controls"

    const-string v29, "com.android.settings.flags.catalyst_mobile_network_list"

    const-string v30, "com.android.settings.flags.catalyst_my_device_info_pref_screen"

    const-string v31, "com.android.settings.flags.catalyst_network_provider_and_internet_screen"

    const-string v32, "com.android.settings.flags.catalyst_night_display"

    const-string v33, "com.android.settings.flags.catalyst_power_usage_summary_screen"

    const-string v34, "com.android.settings.flags.catalyst_restrict_background_parent_entry"

    const-string v35, "com.android.settings.flags.catalyst_screen_brightness_mode"

    const-string v36, "com.android.settings.flags.catalyst_screen_resolution"

    const-string v37, "com.android.settings.flags.catalyst_screen_timeout"

    const-string v38, "com.android.settings.flags.catalyst_screen_timeout_25q3"

    const-string v39, "com.android.settings.flags.catalyst_service"

    const-string v40, "com.android.settings.flags.catalyst_sound_screen"

    const-string v41, "com.android.settings.flags.catalyst_sound_screen_25q3"

    const-string v42, "com.android.settings.flags.catalyst_spatial_audio"

    const-string v43, "com.android.settings.flags.catalyst_tether_settings"

    const-string v44, "com.android.settings.flags.catalyst_tether_settings_25q3"

    const-string v45, "com.android.settings.flags.catalyst_text_reading_screen"

    const-string v46, "com.android.settings.flags.catalyst_vibration_intensity_screen"

    const-string v47, "com.android.settings.flags.catalyst_vibration_screen"

    const-string v48, "com.android.settings.flags.catalyst_wifi_calling"

    const-string v49, "com.android.settings.flags.datetime_feedback"

    const-string v50, "com.android.settings.flags.dedupe_dnd_settings_channels"

    const-string v51, "com.android.settings.flags.development_game_default_frame_rate"

    const-string v52, "com.android.settings.flags.development_hdr_sdr_ratio"

    const-string v53, "com.android.settings.flags.display_size_connected_display_setting"

    const-string v54, "com.android.settings.flags.display_topology_pane_in_display_list"

    const-string v55, "com.android.settings.flags.dynamic_injection_category"

    const-string v56, "com.android.settings.flags.enable_auth_challenge_for_usb_preferences"

    const-string v57, "com.android.settings.flags.enable_battery_level_display"

    const-string v58, "com.android.settings.flags.enable_bluetooth_device_details_polish"

    const-string v59, "com.android.settings.flags.enable_bluetooth_key_missing_dialog"

    const-string v60, "com.android.settings.flags.enable_contacts_default_account_in_settings"

    const-string v61, "com.android.settings.flags.enable_device_diagnostics_in_settings"

    const-string v62, "com.android.settings.flags.enable_hub_mode_settings_on_mobile"

    const-string v63, "com.android.settings.flags.enable_nearby_share_entrypoint"

    const-string v64, "com.android.settings.flags.enable_nested_toggle_switches"

    const-string v65, "com.android.settings.flags.enable_offload_bluetooth_operations_to_background_thread"

    const-string v66, "com.android.settings.flags.enable_remove_association_bt_unpair"

    const-string v67, "com.android.settings.flags.enable_sound_backup"

    const-string v68, "com.android.settings.flags.enable_voice_activation_apps_in_settings"

    const-string v69, "com.android.settings.flags.enable_wifi_sharing_runtime_fragment"

    const-string v70, "com.android.settings.flags.enroll_layout_truncate_improvement"

    const-string v71, "com.android.settings.flags.exclude_webcam_auth_challenge"

    const-string v72, "com.android.settings.flags.extended_screenshots_exclude_nested_scrollables"

    const-string v73, "com.android.settings.flags.fingerprint_v2_enrollment"

    const-string v74, "com.android.settings.flags.hide_le_audio_toggle_for_le_audio_only_device"

    const-string v75, "com.android.settings.flags.homepage_revamp"

    const-string v76, "com.android.settings.flags.is_dual_sim_onboarding_enabled"

    const-string v77, "com.android.settings.flags.locale_notification_enabled"

    const-string v78, "com.android.settings.flags.mainline_module_explicit_intent"

    const-string v79, "com.android.settings.flags.mobile_network_security_2g_toggle"

    const-string v80, "com.android.settings.flags.new_apn_page_enabled"

    const-string v81, "com.android.settings.flags.new_hearing_device_pairing_page"

    const-string v82, "com.android.settings.flags.page_size_app_compat_setting"

    const-string v83, "com.android.settings.flags.protect_lock_after_timeout_with_auth"

    const-string v84, "com.android.settings.flags.protect_screen_timeout_with_auth"

    const-string v85, "com.android.settings.flags.refactor_print_settings"

    const-string v86, "com.android.settings.flags.regional_preferences_api_enabled"

    const-string v87, "com.android.settings.flags.remove_key_hide_enable_2g"

    const-string v88, "com.android.settings.flags.resolution_and_enable_connected_display_setting"

    const-string v89, "com.android.settings.flags.rotation_connected_display_setting"

    const-string v90, "com.android.settings.flags.satellite_oem_settings_ux_migration"

    const-string v91, "com.android.settings.flags.screen_off_unlock_power_optimization"

    const-string v92, "com.android.settings.flags.separate_accessibility_vibration_settings_fragments"

    const-string v93, "com.android.settings.flags.settings_search_result_deep_link_in_same_task"

    const-string v94, "com.android.settings.flags.sfps_enroll_refinement"

    const-string v95, "com.android.settings.flags.show_factory_reset_cancel_button"

    const-string v96, "com.android.settings.flags.slices_retirement"

    const-string v97, "com.android.settings.flags.support_raw_dynamic_icons"

    const-string v98, "com.android.settings.flags.terms_of_address_enabled"

    const-string v99, "com.android.settings.flags.thread_settings_enabled"

    const-string v100, "com.android.settings.flags.udfps_enroll_calibration"

    const-string v101, "com.android.settings.flags.updated_suggestion_card_aosp"

    filled-new-array/range {v2 .. v103}, [Ljava/lang/String;

    move-result-object v2

    .line 850
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Lcom/android/settings/flags/CustomFeatureFlags;->mReadOnlyFlagsSet:Ljava/util/Set;

    .line 17
    move-object/from16 v1, p1

    iput-object v1, v0, Lcom/android/settings/flags/CustomFeatureFlags;->mGetValueImpl:Ljava/util/function/BiPredicate;

    .line 18
    return-void
.end method

.method private isOptimizationEnabled()Z
    .locals 1

    .line 736
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public accessibilityAppearanceSettingsBackupEnabled()Z
    .locals 2

    .line 22
    new-instance v0, Lcom/android/settings/flags/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/settings/flags/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "com.android.settings.flags.accessibility_appearance_settings_backup_enabled"

    invoke-virtual {p0, v1, v0}, Lcom/android/settings/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public accessibilityCustomizeTextReadingPreview()Z
    .locals 2

    .line 29
    new-instance v0, Lcom/android/settings/flags/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/settings/flags/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "com.android.settings.flags.accessibility_customize_text_reading_preview"

    invoke-virtual {p0, v1, v0}, Lcom/android/settings/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public accessibilityShowAppInfoButton()Z
    .locals 2

    .line 36
    new-instance v0, Lcom/android/settings/flags/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/settings/flags/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "com.android.settings.flags.accessibility_show_app_info_button"

    invoke-virtual {p0, v1, v0}, Lcom/android/settings/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public activeUnlockFinishParent()Z
    .locals 2

    .line 43
    new-instance v0, Lcom/android/settings/flags/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/settings/flags/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "com.android.settings.flags.active_unlock_finish_parent"

    invoke-virtual {p0, v1, v0}, Lcom/android/settings/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public addSecurityAlgorithmsToEngMenu()Z
    .locals 2

    .line 50
    new-instance v0, Lcom/android/settings/flags/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/settings/flags/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "com.android.settings.flags.add_security_algorithms_to_eng_menu"

    invoke-virtual {p0, v1, v0}, Lcom/android/settings/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public appArchiving()Z
    .locals 2

    .line 57
    new-instance v0, Lcom/android/settings/flags/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/settings/flags/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "com.android.settings.flags.app_archiving"

    invoke-virtual {p0, v1, v0}, Lcom/android/settings/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public biometricOnboardingEducation()Z
    .locals 2

    .line 64
    new-instance v0, Lcom/android/settings/flags/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/settings/flags/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "com.android.settings.flags.biometric_onboarding_education"

    invoke-virtual {p0, v1, v0}, Lcom/android/settings/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public biometricSettingsProvider()Z
    .locals 2

    .line 71
    new-instance v0, Lcom/android/settings/flags/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/settings/flags/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "com.android.settings.flags.biometric_settings_provider"

    invoke-virtual {p0, v1, v0}, Lcom/android/settings/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public biometricsOnboardingEducation()Z
    .locals 2

    .line 78
    new-instance v0, Lcom/android/settings/flags/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/settings/flags/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "com.android.settings.flags.biometrics_onboarding_education"

    invoke-virtual {p0, v1, v0}, Lcom/android/settings/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public catalyst()Z
    .locals 2

    .line 85
    new-instance v0, Lcom/android/settings/flags/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/settings/flags/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "com.android.settings.flags.catalyst"

    invoke-virtual {p0, v1, v0}, Lcom/android/settings/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public catalystAccessibilityColorAndMotion()Z
    .locals 2

    .line 92
    new-instance v0, Lcom/android/settings/flags/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/settings/flags/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "com.android.settings.flags.catalyst_accessibility_color_and_motion"

    invoke-virtual {p0, v1, v0}, Lcom/android/settings/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public catalystAdaptiveConnectivity()Z
    .locals 2

    .line 99
    new-instance v0, Lcom/android/settings/flags/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/settings/flags/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "com.android.settings.flags.catalyst_adaptive_connectivity"

    invoke-virtual {p0, v1, v0}, Lcom/android/settings/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public catalystAutoRotate()Z
    .locals 2

    .line 106
    new-instance v0, Lcom/android/settings/flags/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/settings/flags/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "com.android.settings.flags.catalyst_auto_rotate"

    invoke-virtual {p0, v1, v0}, Lcom/android/settings/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public catalystBatterySaverScreen()Z
    .locals 2

    .line 113
    new-instance v0, Lcom/android/settings/flags/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/settings/flags/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "com.android.settings.flags.catalyst_battery_saver_screen"

    invoke-virtual {p0, v1, v0}, Lcom/android/settings/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public catalystBluetoothSwitchbarScreen()Z
    .locals 2

    .line 120
    new-instance v0, Lcom/android/settings/flags/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/settings/flags/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "com.android.settings.flags.catalyst_bluetooth_switchbar_screen"

    invoke-virtual {p0, v1, v0}, Lcom/android/settings/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public catalystColorMode()Z
    .locals 2

    .line 127
    new-instance v0, Lcom/android/settings/flags/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/settings/flags/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "com.android.settings.flags.catalyst_color_mode"

    invoke-virtual {p0, v1, v0}, Lcom/android/settings/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public catalystDarkUiMode()Z
    .locals 2

    .line 134
    new-instance v0, Lcom/android/settings/flags/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/settings/flags/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "com.android.settings.flags.catalyst_dark_ui_mode"

    invoke-virtual {p0, v1, v0}, Lcom/android/settings/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public catalystDisplaySettingsScreen()Z
    .locals 2

    .line 141
    new-instance v0, Lcom/android/settings/flags/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/settings/flags/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "com.android.settings.flags.catalyst_display_settings_screen"

    invoke-virtual {p0, v1, v0}, Lcom/android/settings/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public catalystDisplaySettingsScreen25q3()Z
    .locals 2

    .line 148
    new-instance v0, Lcom/android/settings/flags/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/settings/flags/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "com.android.settings.flags.catalyst_display_settings_screen_25q3"

    invoke-virtual {p0, v1, v0}, Lcom/android/settings/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public catalystFirmwareVersion()Z
    .locals 2

    .line 155
    new-instance v0, Lcom/android/settings/flags/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/settings/flags/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "com.android.settings.flags.catalyst_firmware_version"

    invoke-virtual {p0, v1, v0}, Lcom/android/settings/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public catalystGestureSystemNavigationInputSummary()Z
    .locals 2

    .line 162
    new-instance v0, Lcom/android/settings/flags/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/settings/flags/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "com.android.settings.flags.catalyst_gesture_system_navigation_input_summary"

    invoke-virtual {p0, v1, v0}, Lcom/android/settings/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public catalystInternetSettings()Z
    .locals 2

    .line 169
    new-instance v0, Lcom/android/settings/flags/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/settings/flags/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "com.android.settings.flags.catalyst_internet_settings"

    invoke-virtual {p0, v1, v0}, Lcom/android/settings/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public catalystLanguageSetting()Z
    .locals 2

    .line 176
    new-instance v0, Lcom/android/settings/flags/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/settings/flags/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "com.android.settings.flags.catalyst_language_setting"

    invoke-virtual {p0, v1, v0}, Lcom/android/settings/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public catalystLegalInformation()Z
    .locals 2

    .line 183
    new-instance v0, Lcom/android/settings/flags/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/settings/flags/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "com.android.settings.flags.catalyst_legal_information"

    invoke-virtual {p0, v1, v0}, Lcom/android/settings/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public catalystLocationSettings()Z
    .locals 2

    .line 190
    new-instance v0, Lcom/android/settings/flags/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/settings/flags/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "com.android.settings.flags.catalyst_location_settings"

    invoke-virtual {p0, v1, v0}, Lcom/android/settings/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public catalystLockscreenFromDisplaySettings()Z
    .locals 2

    .line 197
    new-instance v0, Lcom/android/settings/flags/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/settings/flags/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "com.android.settings.flags.catalyst_lockscreen_from_display_settings"

    invoke-virtual {p0, v1, v0}, Lcom/android/settings/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public catalystMediaControls()Z
    .locals 2

    .line 204
    new-instance v0, Lcom/android/settings/flags/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/settings/flags/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "com.android.settings.flags.catalyst_media_controls"

    invoke-virtual {p0, v1, v0}, Lcom/android/settings/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public catalystMobileNetworkList()Z
    .locals 2

    .line 211
    new-instance v0, Lcom/android/settings/flags/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/settings/flags/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "com.android.settings.flags.catalyst_mobile_network_list"

    invoke-virtual {p0, v1, v0}, Lcom/android/settings/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public catalystMyDeviceInfoPrefScreen()Z
    .locals 2

    .line 218
    new-instance v0, Lcom/android/settings/flags/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/settings/flags/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "com.android.settings.flags.catalyst_my_device_info_pref_screen"

    invoke-virtual {p0, v1, v0}, Lcom/android/settings/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public catalystNetworkProviderAndInternetScreen()Z
    .locals 2

    .line 225
    new-instance v0, Lcom/android/settings/flags/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/settings/flags/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "com.android.settings.flags.catalyst_network_provider_and_internet_screen"

    invoke-virtual {p0, v1, v0}, Lcom/android/settings/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public catalystNightDisplay()Z
    .locals 2

    .line 232
    new-instance v0, Lcom/android/settings/flags/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/settings/flags/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "com.android.settings.flags.catalyst_night_display"

    invoke-virtual {p0, v1, v0}, Lcom/android/settings/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public catalystPowerUsageSummaryScreen()Z
    .locals 2

    .line 239
    new-instance v0, Lcom/android/settings/flags/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/settings/flags/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "com.android.settings.flags.catalyst_power_usage_summary_screen"

    invoke-virtual {p0, v1, v0}, Lcom/android/settings/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public catalystRestrictBackgroundParentEntry()Z
    .locals 2

    .line 246
    new-instance v0, Lcom/android/settings/flags/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/settings/flags/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "com.android.settings.flags.catalyst_restrict_background_parent_entry"

    invoke-virtual {p0, v1, v0}, Lcom/android/settings/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public catalystScreenBrightnessMode()Z
    .locals 2

    .line 253
    new-instance v0, Lcom/android/settings/flags/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/settings/flags/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "com.android.settings.flags.catalyst_screen_brightness_mode"

    invoke-virtual {p0, v1, v0}, Lcom/android/settings/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public catalystScreenResolution()Z
    .locals 2

    .line 260
    new-instance v0, Lcom/android/settings/flags/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/settings/flags/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "com.android.settings.flags.catalyst_screen_resolution"

    invoke-virtual {p0, v1, v0}, Lcom/android/settings/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public catalystScreenTimeout()Z
    .locals 2

    .line 267
    new-instance v0, Lcom/android/settings/flags/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/settings/flags/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "com.android.settings.flags.catalyst_screen_timeout"

    invoke-virtual {p0, v1, v0}, Lcom/android/settings/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public catalystScreenTimeout25q3()Z
    .locals 2

    .line 274
    new-instance v0, Lcom/android/settings/flags/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/settings/flags/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "com.android.settings.flags.catalyst_screen_timeout_25q3"

    invoke-virtual {p0, v1, v0}, Lcom/android/settings/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public catalystService()Z
    .locals 2

    .line 281
    new-instance v0, Lcom/android/settings/flags/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/settings/flags/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "com.android.settings.flags.catalyst_service"

    invoke-virtual {p0, v1, v0}, Lcom/android/settings/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public catalystSoundScreen()Z
    .locals 2

    .line 288
    new-instance v0, Lcom/android/settings/flags/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/settings/flags/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "com.android.settings.flags.catalyst_sound_screen"

    invoke-virtual {p0, v1, v0}, Lcom/android/settings/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public catalystSoundScreen25q3()Z
    .locals 2

    .line 295
    new-instance v0, Lcom/android/settings/flags/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/settings/flags/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "com.android.settings.flags.catalyst_sound_screen_25q3"

    invoke-virtual {p0, v1, v0}, Lcom/android/settings/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public catalystSpatialAudio()Z
    .locals 2

    .line 302
    new-instance v0, Lcom/android/settings/flags/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/settings/flags/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "com.android.settings.flags.catalyst_spatial_audio"

    invoke-virtual {p0, v1, v0}, Lcom/android/settings/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public catalystTetherSettings()Z
    .locals 2

    .line 309
    new-instance v0, Lcom/android/settings/flags/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/settings/flags/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "com.android.settings.flags.catalyst_tether_settings"

    invoke-virtual {p0, v1, v0}, Lcom/android/settings/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public catalystTetherSettings25q3()Z
    .locals 2

    .line 316
    new-instance v0, Lcom/android/settings/flags/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/settings/flags/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "com.android.settings.flags.catalyst_tether_settings_25q3"

    invoke-virtual {p0, v1, v0}, Lcom/android/settings/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public catalystTextReadingScreen()Z
    .locals 2

    .line 323
    new-instance v0, Lcom/android/settings/flags/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/settings/flags/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "com.android.settings.flags.catalyst_text_reading_screen"

    invoke-virtual {p0, v1, v0}, Lcom/android/settings/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public catalystVibrationIntensityScreen()Z
    .locals 2

    .line 330
    new-instance v0, Lcom/android/settings/flags/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/settings/flags/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "com.android.settings.flags.catalyst_vibration_intensity_screen"

    invoke-virtual {p0, v1, v0}, Lcom/android/settings/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public catalystVibrationScreen()Z
    .locals 2

    .line 337
    new-instance v0, Lcom/android/settings/flags/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/settings/flags/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "com.android.settings.flags.catalyst_vibration_screen"

    invoke-virtual {p0, v1, v0}, Lcom/android/settings/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public catalystWifiCalling()Z
    .locals 2

    .line 344
    new-instance v0, Lcom/android/settings/flags/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/settings/flags/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "com.android.settings.flags.catalyst_wifi_calling"

    invoke-virtual {p0, v1, v0}, Lcom/android/settings/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public datetimeFeedback()Z
    .locals 2

    .line 351
    new-instance v0, Lcom/android/settings/flags/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/settings/flags/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "com.android.settings.flags.datetime_feedback"

    invoke-virtual {p0, v1, v0}, Lcom/android/settings/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public dedupeDndSettingsChannels()Z
    .locals 2

    .line 358
    new-instance v0, Lcom/android/settings/flags/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/settings/flags/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "com.android.settings.flags.dedupe_dnd_settings_channels"

    invoke-virtual {p0, v1, v0}, Lcom/android/settings/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public developmentGameDefaultFrameRate()Z
    .locals 2

    .line 365
    new-instance v0, Lcom/android/settings/flags/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/settings/flags/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "com.android.settings.flags.development_game_default_frame_rate"

    invoke-virtual {p0, v1, v0}, Lcom/android/settings/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public developmentHdrSdrRatio()Z
    .locals 2

    .line 372
    new-instance v0, Lcom/android/settings/flags/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/settings/flags/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "com.android.settings.flags.development_hdr_sdr_ratio"

    invoke-virtual {p0, v1, v0}, Lcom/android/settings/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public displaySizeConnectedDisplaySetting()Z
    .locals 2

    .line 379
    new-instance v0, Lcom/android/settings/flags/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/settings/flags/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "com.android.settings.flags.display_size_connected_display_setting"

    invoke-virtual {p0, v1, v0}, Lcom/android/settings/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public displayTopologyPaneInDisplayList()Z
    .locals 2

    .line 386
    new-instance v0, Lcom/android/settings/flags/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/settings/flags/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "com.android.settings.flags.display_topology_pane_in_display_list"

    invoke-virtual {p0, v1, v0}, Lcom/android/settings/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public dynamicInjectionCategory()Z
    .locals 2

    .line 393
    new-instance v0, Lcom/android/settings/flags/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/settings/flags/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "com.android.settings.flags.dynamic_injection_category"

    invoke-virtual {p0, v1, v0}, Lcom/android/settings/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public enableAuthChallengeForUsbPreferences()Z
    .locals 2

    .line 400
    new-instance v0, Lcom/android/settings/flags/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/settings/flags/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "com.android.settings.flags.enable_auth_challenge_for_usb_preferences"

    invoke-virtual {p0, v1, v0}, Lcom/android/settings/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public enableBatteryLevelDisplay()Z
    .locals 2

    .line 407
    new-instance v0, Lcom/android/settings/flags/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/settings/flags/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "com.android.settings.flags.enable_battery_level_display"

    invoke-virtual {p0, v1, v0}, Lcom/android/settings/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public enableBluetoothDeviceDetailsPolish()Z
    .locals 2

    .line 414
    new-instance v0, Lcom/android/settings/flags/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/settings/flags/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "com.android.settings.flags.enable_bluetooth_device_details_polish"

    invoke-virtual {p0, v1, v0}, Lcom/android/settings/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public enableBluetoothKeyMissingDialog()Z
    .locals 2

    .line 421
    new-instance v0, Lcom/android/settings/flags/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/settings/flags/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "com.android.settings.flags.enable_bluetooth_key_missing_dialog"

    invoke-virtual {p0, v1, v0}, Lcom/android/settings/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public enableContactsDefaultAccountInSettings()Z
    .locals 2

    .line 428
    new-instance v0, Lcom/android/settings/flags/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/settings/flags/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "com.android.settings.flags.enable_contacts_default_account_in_settings"

    invoke-virtual {p0, v1, v0}, Lcom/android/settings/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public enableDeviceDiagnosticsInSettings()Z
    .locals 2

    .line 435
    new-instance v0, Lcom/android/settings/flags/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/settings/flags/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "com.android.settings.flags.enable_device_diagnostics_in_settings"

    invoke-virtual {p0, v1, v0}, Lcom/android/settings/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public enableHubModeSettingsOnMobile()Z
    .locals 2

    .line 442
    new-instance v0, Lcom/android/settings/flags/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/settings/flags/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "com.android.settings.flags.enable_hub_mode_settings_on_mobile"

    invoke-virtual {p0, v1, v0}, Lcom/android/settings/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public enableNearbyShareEntrypoint()Z
    .locals 2

    .line 449
    new-instance v0, Lcom/android/settings/flags/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/settings/flags/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "com.android.settings.flags.enable_nearby_share_entrypoint"

    invoke-virtual {p0, v1, v0}, Lcom/android/settings/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public enableNestedToggleSwitches()Z
    .locals 2

    .line 456
    new-instance v0, Lcom/android/settings/flags/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/settings/flags/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "com.android.settings.flags.enable_nested_toggle_switches"

    invoke-virtual {p0, v1, v0}, Lcom/android/settings/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public enableOffloadBluetoothOperationsToBackgroundThread()Z
    .locals 2

    .line 463
    new-instance v0, Lcom/android/settings/flags/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/settings/flags/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "com.android.settings.flags.enable_offload_bluetooth_operations_to_background_thread"

    invoke-virtual {p0, v1, v0}, Lcom/android/settings/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public enableRemoveAssociationBtUnpair()Z
    .locals 2

    .line 470
    new-instance v0, Lcom/android/settings/flags/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/settings/flags/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "com.android.settings.flags.enable_remove_association_bt_unpair"

    invoke-virtual {p0, v1, v0}, Lcom/android/settings/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public enableSoundBackup()Z
    .locals 2

    .line 477
    new-instance v0, Lcom/android/settings/flags/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/settings/flags/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "com.android.settings.flags.enable_sound_backup"

    invoke-virtual {p0, v1, v0}, Lcom/android/settings/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public enableVoiceActivationAppsInSettings()Z
    .locals 2

    .line 484
    new-instance v0, Lcom/android/settings/flags/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/settings/flags/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "com.android.settings.flags.enable_voice_activation_apps_in_settings"

    invoke-virtual {p0, v1, v0}, Lcom/android/settings/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public enableWifiSharingRuntimeFragment()Z
    .locals 2

    .line 491
    new-instance v0, Lcom/android/settings/flags/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/settings/flags/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "com.android.settings.flags.enable_wifi_sharing_runtime_fragment"

    invoke-virtual {p0, v1, v0}, Lcom/android/settings/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public enrollLayoutTruncateImprovement()Z
    .locals 2

    .line 498
    new-instance v0, Lcom/android/settings/flags/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/settings/flags/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "com.android.settings.flags.enroll_layout_truncate_improvement"

    invoke-virtual {p0, v1, v0}, Lcom/android/settings/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public excludeWebcamAuthChallenge()Z
    .locals 2

    .line 505
    new-instance v0, Lcom/android/settings/flags/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/settings/flags/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "com.android.settings.flags.exclude_webcam_auth_challenge"

    invoke-virtual {p0, v1, v0}, Lcom/android/settings/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public extendedScreenshotsExcludeNestedScrollables()Z
    .locals 2

    .line 512
    new-instance v0, Lcom/android/settings/flags/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/settings/flags/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "com.android.settings.flags.extended_screenshots_exclude_nested_scrollables"

    invoke-virtual {p0, v1, v0}, Lcom/android/settings/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public fingerprintV2Enrollment()Z
    .locals 2

    .line 519
    new-instance v0, Lcom/android/settings/flags/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/settings/flags/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "com.android.settings.flags.fingerprint_v2_enrollment"

    invoke-virtual {p0, v1, v0}, Lcom/android/settings/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public getFlagNames()Ljava/util/List;
    .locals 102
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 744
    const-string v100, "com.android.settings.flags.updated_suggestion_card_aosp"

    const-string v101, "com.android.settings.flags.utils_return_user_handle_for_current_user_id"

    const-string v1, "com.android.settings.flags.accessibility_appearance_settings_backup_enabled"

    const-string v2, "com.android.settings.flags.accessibility_customize_text_reading_preview"

    const-string v3, "com.android.settings.flags.accessibility_show_app_info_button"

    const-string v4, "com.android.settings.flags.active_unlock_finish_parent"

    const-string v5, "com.android.settings.flags.add_security_algorithms_to_eng_menu"

    const-string v6, "com.android.settings.flags.app_archiving"

    const-string v7, "com.android.settings.flags.biometric_onboarding_education"

    const-string v8, "com.android.settings.flags.biometric_settings_provider"

    const-string v9, "com.android.settings.flags.biometrics_onboarding_education"

    const-string v10, "com.android.settings.flags.catalyst"

    const-string v11, "com.android.settings.flags.catalyst_accessibility_color_and_motion"

    const-string v12, "com.android.settings.flags.catalyst_adaptive_connectivity"

    const-string v13, "com.android.settings.flags.catalyst_auto_rotate"

    const-string v14, "com.android.settings.flags.catalyst_battery_saver_screen"

    const-string v15, "com.android.settings.flags.catalyst_bluetooth_switchbar_screen"

    const-string v16, "com.android.settings.flags.catalyst_color_mode"

    const-string v17, "com.android.settings.flags.catalyst_dark_ui_mode"

    const-string v18, "com.android.settings.flags.catalyst_display_settings_screen"

    const-string v19, "com.android.settings.flags.catalyst_display_settings_screen_25q3"

    const-string v20, "com.android.settings.flags.catalyst_firmware_version"

    const-string v21, "com.android.settings.flags.catalyst_gesture_system_navigation_input_summary"

    const-string v22, "com.android.settings.flags.catalyst_internet_settings"

    const-string v23, "com.android.settings.flags.catalyst_language_setting"

    const-string v24, "com.android.settings.flags.catalyst_legal_information"

    const-string v25, "com.android.settings.flags.catalyst_location_settings"

    const-string v26, "com.android.settings.flags.catalyst_lockscreen_from_display_settings"

    const-string v27, "com.android.settings.flags.catalyst_media_controls"

    const-string v28, "com.android.settings.flags.catalyst_mobile_network_list"

    const-string v29, "com.android.settings.flags.catalyst_my_device_info_pref_screen"

    const-string v30, "com.android.settings.flags.catalyst_network_provider_and_internet_screen"

    const-string v31, "com.android.settings.flags.catalyst_night_display"

    const-string v32, "com.android.settings.flags.catalyst_power_usage_summary_screen"

    const-string v33, "com.android.settings.flags.catalyst_restrict_background_parent_entry"

    const-string v34, "com.android.settings.flags.catalyst_screen_brightness_mode"

    const-string v35, "com.android.settings.flags.catalyst_screen_resolution"

    const-string v36, "com.android.settings.flags.catalyst_screen_timeout"

    const-string v37, "com.android.settings.flags.catalyst_screen_timeout_25q3"

    const-string v38, "com.android.settings.flags.catalyst_service"

    const-string v39, "com.android.settings.flags.catalyst_sound_screen"

    const-string v40, "com.android.settings.flags.catalyst_sound_screen_25q3"

    const-string v41, "com.android.settings.flags.catalyst_spatial_audio"

    const-string v42, "com.android.settings.flags.catalyst_tether_settings"

    const-string v43, "com.android.settings.flags.catalyst_tether_settings_25q3"

    const-string v44, "com.android.settings.flags.catalyst_text_reading_screen"

    const-string v45, "com.android.settings.flags.catalyst_vibration_intensity_screen"

    const-string v46, "com.android.settings.flags.catalyst_vibration_screen"

    const-string v47, "com.android.settings.flags.catalyst_wifi_calling"

    const-string v48, "com.android.settings.flags.datetime_feedback"

    const-string v49, "com.android.settings.flags.dedupe_dnd_settings_channels"

    const-string v50, "com.android.settings.flags.development_game_default_frame_rate"

    const-string v51, "com.android.settings.flags.development_hdr_sdr_ratio"

    const-string v52, "com.android.settings.flags.display_size_connected_display_setting"

    const-string v53, "com.android.settings.flags.display_topology_pane_in_display_list"

    const-string v54, "com.android.settings.flags.dynamic_injection_category"

    const-string v55, "com.android.settings.flags.enable_auth_challenge_for_usb_preferences"

    const-string v56, "com.android.settings.flags.enable_battery_level_display"

    const-string v57, "com.android.settings.flags.enable_bluetooth_device_details_polish"

    const-string v58, "com.android.settings.flags.enable_bluetooth_key_missing_dialog"

    const-string v59, "com.android.settings.flags.enable_contacts_default_account_in_settings"

    const-string v60, "com.android.settings.flags.enable_device_diagnostics_in_settings"

    const-string v61, "com.android.settings.flags.enable_hub_mode_settings_on_mobile"

    const-string v62, "com.android.settings.flags.enable_nearby_share_entrypoint"

    const-string v63, "com.android.settings.flags.enable_nested_toggle_switches"

    const-string v64, "com.android.settings.flags.enable_offload_bluetooth_operations_to_background_thread"

    const-string v65, "com.android.settings.flags.enable_remove_association_bt_unpair"

    const-string v66, "com.android.settings.flags.enable_sound_backup"

    const-string v67, "com.android.settings.flags.enable_voice_activation_apps_in_settings"

    const-string v68, "com.android.settings.flags.enable_wifi_sharing_runtime_fragment"

    const-string v69, "com.android.settings.flags.enroll_layout_truncate_improvement"

    const-string v70, "com.android.settings.flags.exclude_webcam_auth_challenge"

    const-string v71, "com.android.settings.flags.extended_screenshots_exclude_nested_scrollables"

    const-string v72, "com.android.settings.flags.fingerprint_v2_enrollment"

    const-string v73, "com.android.settings.flags.hide_le_audio_toggle_for_le_audio_only_device"

    const-string v74, "com.android.settings.flags.homepage_revamp"

    const-string v75, "com.android.settings.flags.is_dual_sim_onboarding_enabled"

    const-string v76, "com.android.settings.flags.locale_notification_enabled"

    const-string v77, "com.android.settings.flags.mainline_module_explicit_intent"

    const-string v78, "com.android.settings.flags.mobile_network_security_2g_toggle"

    const-string v79, "com.android.settings.flags.new_apn_page_enabled"

    const-string v80, "com.android.settings.flags.new_hearing_device_pairing_page"

    const-string v81, "com.android.settings.flags.page_size_app_compat_setting"

    const-string v82, "com.android.settings.flags.protect_lock_after_timeout_with_auth"

    const-string v83, "com.android.settings.flags.protect_screen_timeout_with_auth"

    const-string v84, "com.android.settings.flags.refactor_print_settings"

    const-string v85, "com.android.settings.flags.regional_preferences_api_enabled"

    const-string v86, "com.android.settings.flags.remove_key_hide_enable_2g"

    const-string v87, "com.android.settings.flags.resolution_and_enable_connected_display_setting"

    const-string v88, "com.android.settings.flags.rotation_connected_display_setting"

    const-string v89, "com.android.settings.flags.satellite_oem_settings_ux_migration"

    const-string v90, "com.android.settings.flags.screen_off_unlock_power_optimization"

    const-string v91, "com.android.settings.flags.separate_accessibility_vibration_settings_fragments"

    const-string v92, "com.android.settings.flags.settings_search_result_deep_link_in_same_task"

    const-string v93, "com.android.settings.flags.sfps_enroll_refinement"

    const-string v94, "com.android.settings.flags.show_factory_reset_cancel_button"

    const-string v95, "com.android.settings.flags.slices_retirement"

    const-string v96, "com.android.settings.flags.support_raw_dynamic_icons"

    const-string v97, "com.android.settings.flags.terms_of_address_enabled"

    const-string v98, "com.android.settings.flags.thread_settings_enabled"

    const-string v99, "com.android.settings.flags.udfps_enroll_calibration"

    filled-new-array/range {v1 .. v101}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z
    .locals 1
    .param p1, "flagName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/function/Predicate<",
            "Lcom/android/settings/flags/FeatureFlags;",
            ">;)Z"
        }
    .end annotation

    .line 740
    .local p2, "getter":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/settings/flags/FeatureFlags;>;"
    iget-object v0, p0, Lcom/android/settings/flags/CustomFeatureFlags;->mGetValueImpl:Ljava/util/function/BiPredicate;

    invoke-interface {v0, p1, p2}, Ljava/util/function/BiPredicate;->test(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hideLeAudioToggleForLeAudioOnlyDevice()Z
    .locals 2

    .line 526
    new-instance v0, Lcom/android/settings/flags/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/settings/flags/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "com.android.settings.flags.hide_le_audio_toggle_for_le_audio_only_device"

    invoke-virtual {p0, v1, v0}, Lcom/android/settings/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public homepageRevamp()Z
    .locals 2

    .line 533
    new-instance v0, Lcom/android/settings/flags/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/settings/flags/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "com.android.settings.flags.homepage_revamp"

    invoke-virtual {p0, v1, v0}, Lcom/android/settings/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public isDualSimOnboardingEnabled()Z
    .locals 2

    .line 540
    new-instance v0, Lcom/android/settings/flags/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/settings/flags/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "com.android.settings.flags.is_dual_sim_onboarding_enabled"

    invoke-virtual {p0, v1, v0}, Lcom/android/settings/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public isFlagReadOnlyOptimized(Ljava/lang/String;)Z
    .locals 1
    .param p1, "flagName"    # Ljava/lang/String;

    .line 727
    iget-object v0, p0, Lcom/android/settings/flags/CustomFeatureFlags;->mReadOnlyFlagsSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 728
    nop

    .line 729
    const/4 v0, 0x1

    return v0

    .line 731
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public localeNotificationEnabled()Z
    .locals 2

    .line 547
    new-instance v0, Lcom/android/settings/flags/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/settings/flags/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "com.android.settings.flags.locale_notification_enabled"

    invoke-virtual {p0, v1, v0}, Lcom/android/settings/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public mainlineModuleExplicitIntent()Z
    .locals 2

    .line 554
    new-instance v0, Lcom/android/settings/flags/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/settings/flags/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "com.android.settings.flags.mainline_module_explicit_intent"

    invoke-virtual {p0, v1, v0}, Lcom/android/settings/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public mobileNetworkSecurity2gToggle()Z
    .locals 2

    .line 561
    new-instance v0, Lcom/android/settings/flags/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/settings/flags/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "com.android.settings.flags.mobile_network_security_2g_toggle"

    invoke-virtual {p0, v1, v0}, Lcom/android/settings/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public newApnPageEnabled()Z
    .locals 2

    .line 568
    new-instance v0, Lcom/android/settings/flags/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/settings/flags/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "com.android.settings.flags.new_apn_page_enabled"

    invoke-virtual {p0, v1, v0}, Lcom/android/settings/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public newHearingDevicePairingPage()Z
    .locals 2

    .line 575
    new-instance v0, Lcom/android/settings/flags/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/settings/flags/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "com.android.settings.flags.new_hearing_device_pairing_page"

    invoke-virtual {p0, v1, v0}, Lcom/android/settings/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public pageSizeAppCompatSetting()Z
    .locals 2

    .line 582
    new-instance v0, Lcom/android/settings/flags/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/settings/flags/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "com.android.settings.flags.page_size_app_compat_setting"

    invoke-virtual {p0, v1, v0}, Lcom/android/settings/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public protectLockAfterTimeoutWithAuth()Z
    .locals 2

    .line 589
    new-instance v0, Lcom/android/settings/flags/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/settings/flags/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "com.android.settings.flags.protect_lock_after_timeout_with_auth"

    invoke-virtual {p0, v1, v0}, Lcom/android/settings/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public protectScreenTimeoutWithAuth()Z
    .locals 2

    .line 596
    new-instance v0, Lcom/android/settings/flags/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/settings/flags/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "com.android.settings.flags.protect_screen_timeout_with_auth"

    invoke-virtual {p0, v1, v0}, Lcom/android/settings/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public refactorPrintSettings()Z
    .locals 2

    .line 603
    new-instance v0, Lcom/android/settings/flags/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/settings/flags/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "com.android.settings.flags.refactor_print_settings"

    invoke-virtual {p0, v1, v0}, Lcom/android/settings/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public regionalPreferencesApiEnabled()Z
    .locals 2

    .line 610
    new-instance v0, Lcom/android/settings/flags/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/settings/flags/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "com.android.settings.flags.regional_preferences_api_enabled"

    invoke-virtual {p0, v1, v0}, Lcom/android/settings/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public removeKeyHideEnable2g()Z
    .locals 2

    .line 617
    new-instance v0, Lcom/android/settings/flags/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/settings/flags/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "com.android.settings.flags.remove_key_hide_enable_2g"

    invoke-virtual {p0, v1, v0}, Lcom/android/settings/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public resolutionAndEnableConnectedDisplaySetting()Z
    .locals 2

    .line 624
    new-instance v0, Lcom/android/settings/flags/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/settings/flags/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "com.android.settings.flags.resolution_and_enable_connected_display_setting"

    invoke-virtual {p0, v1, v0}, Lcom/android/settings/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public rotationConnectedDisplaySetting()Z
    .locals 2

    .line 631
    new-instance v0, Lcom/android/settings/flags/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/settings/flags/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "com.android.settings.flags.rotation_connected_display_setting"

    invoke-virtual {p0, v1, v0}, Lcom/android/settings/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public satelliteOemSettingsUxMigration()Z
    .locals 2

    .line 638
    new-instance v0, Lcom/android/settings/flags/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/settings/flags/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "com.android.settings.flags.satellite_oem_settings_ux_migration"

    invoke-virtual {p0, v1, v0}, Lcom/android/settings/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public screenOffUnlockPowerOptimization()Z
    .locals 2

    .line 645
    new-instance v0, Lcom/android/settings/flags/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/settings/flags/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "com.android.settings.flags.screen_off_unlock_power_optimization"

    invoke-virtual {p0, v1, v0}, Lcom/android/settings/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public separateAccessibilityVibrationSettingsFragments()Z
    .locals 2

    .line 652
    new-instance v0, Lcom/android/settings/flags/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/settings/flags/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "com.android.settings.flags.separate_accessibility_vibration_settings_fragments"

    invoke-virtual {p0, v1, v0}, Lcom/android/settings/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public settingsSearchResultDeepLinkInSameTask()Z
    .locals 2

    .line 659
    new-instance v0, Lcom/android/settings/flags/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/settings/flags/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "com.android.settings.flags.settings_search_result_deep_link_in_same_task"

    invoke-virtual {p0, v1, v0}, Lcom/android/settings/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public sfpsEnrollRefinement()Z
    .locals 2

    .line 666
    new-instance v0, Lcom/android/settings/flags/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/settings/flags/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "com.android.settings.flags.sfps_enroll_refinement"

    invoke-virtual {p0, v1, v0}, Lcom/android/settings/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public showFactoryResetCancelButton()Z
    .locals 2

    .line 673
    new-instance v0, Lcom/android/settings/flags/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/settings/flags/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "com.android.settings.flags.show_factory_reset_cancel_button"

    invoke-virtual {p0, v1, v0}, Lcom/android/settings/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public slicesRetirement()Z
    .locals 2

    .line 680
    new-instance v0, Lcom/android/settings/flags/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/settings/flags/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "com.android.settings.flags.slices_retirement"

    invoke-virtual {p0, v1, v0}, Lcom/android/settings/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public supportRawDynamicIcons()Z
    .locals 2

    .line 687
    new-instance v0, Lcom/android/settings/flags/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/settings/flags/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "com.android.settings.flags.support_raw_dynamic_icons"

    invoke-virtual {p0, v1, v0}, Lcom/android/settings/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public termsOfAddressEnabled()Z
    .locals 2

    .line 694
    new-instance v0, Lcom/android/settings/flags/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/settings/flags/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "com.android.settings.flags.terms_of_address_enabled"

    invoke-virtual {p0, v1, v0}, Lcom/android/settings/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public threadSettingsEnabled()Z
    .locals 2

    .line 701
    new-instance v0, Lcom/android/settings/flags/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/settings/flags/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "com.android.settings.flags.thread_settings_enabled"

    invoke-virtual {p0, v1, v0}, Lcom/android/settings/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public udfpsEnrollCalibration()Z
    .locals 2

    .line 708
    new-instance v0, Lcom/android/settings/flags/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/settings/flags/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "com.android.settings.flags.udfps_enroll_calibration"

    invoke-virtual {p0, v1, v0}, Lcom/android/settings/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public updatedSuggestionCardAosp()Z
    .locals 2

    .line 715
    new-instance v0, Lcom/android/settings/flags/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/settings/flags/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "com.android.settings.flags.updated_suggestion_card_aosp"

    invoke-virtual {p0, v1, v0}, Lcom/android/settings/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public utilsReturnUserHandleForCurrentUserId()Z
    .locals 2

    .line 722
    new-instance v0, Lcom/android/settings/flags/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/settings/flags/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "com.android.settings.flags.utils_return_user_handle_for_current_user_id"

    invoke-virtual {p0, v1, v0}, Lcom/android/settings/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method
