.class public Lcom/android/launcher3/CustomFeatureFlags;
.super Ljava/lang/Object;
.source "CustomFeatureFlags.java"

# interfaces
.implements Lcom/android/launcher3/FeatureFlags;


# instance fields
.field private mGetValueImpl:Ljava/util/function/BiPredicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/BiPredicate<",
            "Ljava/lang/String;",
            "Ljava/util/function/Predicate<",
            "Lcom/android/launcher3/FeatureFlags;",
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
    .locals 117
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiPredicate<",
            "Ljava/lang/String;",
            "Ljava/util/function/Predicate<",
            "Lcom/android/launcher3/FeatureFlags;",
            ">;>;)V"
        }
    .end annotation

    .line 16
    .local p1, "getValueImpl":Ljava/util/function/BiPredicate;, "Ljava/util/function/BiPredicate<Ljava/lang/String;Ljava/util/function/Predicate<Lcom/android/launcher3/FeatureFlags;>;>;"
    move-object/from16 v0, p0

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 953
    new-instance v1, Ljava/util/HashSet;

    const-string v115, "com.android.launcher3.work_scheduler_in_work_profile"

    const-string v116, ""

    const-string v2, "com.android.launcher3.accessibility_scroll_on_allapps"

    const-string v3, "com.android.launcher3.all_apps_blur"

    const-string v4, "com.android.launcher3.all_apps_sheet_for_handheld"

    const-string v5, "com.android.launcher3.coordinate_workspace_scale"

    const-string v6, "com.android.launcher3.enable_active_gesture_proto_log"

    const-string v7, "com.android.launcher3.enable_add_app_widget_via_config_activity_v2"

    const-string v8, "com.android.launcher3.enable_additional_home_animations"

    const-string v9, "com.android.launcher3.enable_all_apps_button_in_hotseat"

    const-string v10, "com.android.launcher3.enable_alt_tab_kqs_flatenning"

    const-string v11, "com.android.launcher3.enable_alt_tab_kqs_on_connected_displays"

    const-string v12, "com.android.launcher3.enable_categorized_widget_suggestions"

    const-string v13, "com.android.launcher3.enable_container_return_animations"

    const-string v14, "com.android.launcher3.enable_contrast_tiles"

    const-string v15, "com.android.launcher3.enable_cursor_hover_states"

    const-string v16, "com.android.launcher3.enable_desktop_exploded_view"

    const-string v17, "com.android.launcher3.enable_desktop_task_alpha_animation"

    const-string v18, "com.android.launcher3.enable_desktop_windowing_carousel_detach"

    const-string v19, "com.android.launcher3.enable_dismiss_prediction_undo"

    const-string v20, "com.android.launcher3.enable_expanding_pause_work_button"

    const-string v21, "com.android.launcher3.enable_expressive_dismiss_task_motion"

    const-string v22, "com.android.launcher3.enable_fallback_overview_in_window"

    const-string v23, "com.android.launcher3.enable_first_screen_broadcast_archiving_extras"

    const-string v24, "com.android.launcher3.enable_focus_outline"

    const-string v25, "com.android.launcher3.enable_generated_previews"

    const-string v26, "com.android.launcher3.enable_gesture_nav_horizontal_touch_slop"

    const-string v27, "com.android.launcher3.enable_gesture_nav_on_connected_displays"

    const-string v28, "com.android.launcher3.enable_grid_migration_fix"

    const-string v29, "com.android.launcher3.enable_grid_only_overview"

    const-string v30, "com.android.launcher3.enable_growth_nudge"

    const-string v31, "com.android.launcher3.enable_handle_delayed_gesture_callbacks"

    const-string v32, "com.android.launcher3.enable_home_transition_listener"

    const-string v33, "com.android.launcher3.enable_hover_of_child_elements_in_taskview"

    const-string v34, "com.android.launcher3.enable_large_desktop_windowing_tile"

    const-string v35, "com.android.launcher3.enable_launcher_br_metrics_fixed"

    const-string v36, "com.android.launcher3.enable_launcher_icon_shapes"

    const-string v37, "com.android.launcher3.enable_launcher_overview_in_window"

    const-string v38, "com.android.launcher3.enable_launcher_visual_refresh"

    const-string v39, "com.android.launcher3.enable_mouse_interaction_changes"

    const-string v40, "com.android.launcher3.enable_multi_instance_menu_taskbar"

    const-string v41, "com.android.launcher3.enable_narrow_grid_restore"

    const-string v42, "com.android.launcher3.enable_overview_background_wallpaper_blur"

    const-string v43, "com.android.launcher3.enable_overview_command_helper_timeout"

    const-string v44, "com.android.launcher3.enable_overview_desktop_tile_wallpaper_background"

    const-string v45, "com.android.launcher3.enable_overview_icon_menu"

    const-string v46, "com.android.launcher3.enable_overview_on_connected_displays"

    const-string v47, "com.android.launcher3.enable_pinning_app_with_context_menu"

    const-string v48, "com.android.launcher3.enable_predictive_back_gesture"

    const-string v49, "com.android.launcher3.enable_private_space"

    const-string v50, "com.android.launcher3.enable_private_space_install_shortcut"

    const-string v51, "com.android.launcher3.enable_reboot_unlock_animation"

    const-string v52, "com.android.launcher3.enable_recents_in_taskbar"

    const-string v53, "com.android.launcher3.enable_recents_window_proto_log"

    const-string v54, "com.android.launcher3.enable_refactor_task_thumbnail"

    const-string v55, "com.android.launcher3.enable_responsive_workspace"

    const-string v56, "com.android.launcher3.enable_scalability_for_desktop_experience"

    const-string v57, "com.android.launcher3.enable_scaling_reveal_home_animation"

    const-string v58, "com.android.launcher3.enable_separate_external_display_tasks"

    const-string v59, "com.android.launcher3.enable_shortcut_dont_suggest_app"

    const-string v60, "com.android.launcher3.enable_show_enabled_shortcuts_in_accessibility_menu"

    const-string v61, "com.android.launcher3.enable_smartspace_as_a_widget"

    const-string v62, "com.android.launcher3.enable_smartspace_removal_toggle"

    const-string v63, "com.android.launcher3.enable_state_manager_proto_log"

    const-string v64, "com.android.launcher3.enable_strict_mode"

    const-string v65, "com.android.launcher3.enable_support_for_archiving"

    const-string v66, "com.android.launcher3.enable_tablet_two_pane_picker_v2"

    const-string v67, "com.android.launcher3.enable_taskbar_behind_shade"

    const-string v68, "com.android.launcher3.enable_taskbar_customization"

    const-string v69, "com.android.launcher3.enable_taskbar_for_direct_boot"

    const-string v70, "com.android.launcher3.enable_taskbar_no_recreate"

    const-string v71, "com.android.launcher3.enable_taskbar_pinning"

    const-string v72, "com.android.launcher3.enable_tiered_widgets_by_default_in_picker"

    const-string v73, "com.android.launcher3.enable_two_pane_launcher_settings"

    const-string v74, "com.android.launcher3.enable_twoline_allapps"

    const-string v75, "com.android.launcher3.enable_twoline_toggle"

    const-string v76, "com.android.launcher3.enable_unfold_state_animation"

    const-string v77, "com.android.launcher3.enable_unfolded_two_pane_picker"

    const-string v78, "com.android.launcher3.enable_use_top_visible_activity_for_exclude_from_recent_task"

    const-string v79, "com.android.launcher3.enable_widget_tap_to_add"

    const-string v80, "com.android.launcher3.enable_workspace_inflation"

    const-string v81, "com.android.launcher3.enabled_folders_in_all_apps"

    const-string v82, "com.android.launcher3.expressive_theme_in_taskbar_and_navigation"

    const-string v83, "com.android.launcher3.extendible_theme_manager"

    const-string v84, "com.android.launcher3.floating_search_bar"

    const-string v85, "com.android.launcher3.force_monochrome_app_icons"

    const-string v86, "com.android.launcher3.grid_migration_refactor"

    const-string v87, "com.android.launcher3.gsf_res"

    const-string v88, "com.android.launcher3.ignore_three_finger_trackpad_for_nav_handle_long_press"

    const-string v89, "com.android.launcher3.letter_fast_scroller"

    const-string v90, "com.android.launcher3.msdl_feedback"

    const-string v91, "com.android.launcher3.multiline_search_bar"

    const-string v92, "com.android.launcher3.navigate_to_child_preference"

    const-string v93, "com.android.launcher3.one_grid_mounted_mode"

    const-string v94, "com.android.launcher3.one_grid_rotation_handling"

    const-string v95, "com.android.launcher3.one_grid_specs"

    const-string v96, "com.android.launcher3.predictive_back_to_home_blur"

    const-string v97, "com.android.launcher3.predictive_back_to_home_polish"

    const-string v98, "com.android.launcher3.private_space_add_floating_mask_view"

    const-string v99, "com.android.launcher3.private_space_animation"

    const-string v100, "com.android.launcher3.private_space_app_installer_button"

    const-string v101, "com.android.launcher3.private_space_restrict_accessibility_drag"

    const-string v102, "com.android.launcher3.private_space_restrict_item_drag"

    const-string v103, "com.android.launcher3.private_space_sys_apps_separation"

    const-string v104, "com.android.launcher3.remove_apps_refresh_on_right_click"

    const-string v105, "com.android.launcher3.remove_exclude_from_screen_magnification_flag_usage"

    const-string v106, "com.android.launcher3.restore_archived_app_icons_from_db"

    const-string v107, "com.android.launcher3.restore_archived_shortcuts"

    const-string v108, "com.android.launcher3.show_taskbar_pinning_popup_from_anywhere"

    const-string v109, "com.android.launcher3.sync_app_launch_with_taskbar_stash"

    const-string v110, "com.android.launcher3.taskbar_overflow"

    const-string v111, "com.android.launcher3.taskbar_quiet_mode_change_support"

    const-string v112, "com.android.launcher3.use_activity_overlay"

    const-string v113, "com.android.launcher3.use_new_icon_for_archived_apps"

    const-string v114, "com.android.launcher3.use_system_radius_for_app_widgets"

    filled-new-array/range {v2 .. v116}, [Ljava/lang/String;

    move-result-object v2

    .line 954
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Lcom/android/launcher3/CustomFeatureFlags;->mReadOnlyFlagsSet:Ljava/util/Set;

    .line 17
    move-object/from16 v1, p1

    iput-object v1, v0, Lcom/android/launcher3/CustomFeatureFlags;->mGetValueImpl:Ljava/util/function/BiPredicate;

    .line 18
    return-void
.end method

.method private isOptimizationEnabled()Z
    .locals 1

    .line 827
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public accessibilityScrollOnAllapps()Z
    .locals 2

    .line 22
    new-instance v0, Lcom/android/launcher3/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/launcher3/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "com.android.launcher3.accessibility_scroll_on_allapps"

    invoke-virtual {p0, v1, v0}, Lcom/android/launcher3/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public allAppsBlur()Z
    .locals 2

    .line 29
    new-instance v0, Lcom/android/launcher3/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/launcher3/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "com.android.launcher3.all_apps_blur"

    invoke-virtual {p0, v1, v0}, Lcom/android/launcher3/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public allAppsSheetForHandheld()Z
    .locals 2

    .line 36
    new-instance v0, Lcom/android/launcher3/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/launcher3/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "com.android.launcher3.all_apps_sheet_for_handheld"

    invoke-virtual {p0, v1, v0}, Lcom/android/launcher3/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public coordinateWorkspaceScale()Z
    .locals 2

    .line 43
    new-instance v0, Lcom/android/launcher3/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/launcher3/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "com.android.launcher3.coordinate_workspace_scale"

    invoke-virtual {p0, v1, v0}, Lcom/android/launcher3/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public enableActiveGestureProtoLog()Z
    .locals 2

    .line 50
    new-instance v0, Lcom/android/launcher3/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/launcher3/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "com.android.launcher3.enable_active_gesture_proto_log"

    invoke-virtual {p0, v1, v0}, Lcom/android/launcher3/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public enableAddAppWidgetViaConfigActivityV2()Z
    .locals 2

    .line 57
    new-instance v0, Lcom/android/launcher3/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/launcher3/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "com.android.launcher3.enable_add_app_widget_via_config_activity_v2"

    invoke-virtual {p0, v1, v0}, Lcom/android/launcher3/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public enableAdditionalHomeAnimations()Z
    .locals 2

    .line 64
    new-instance v0, Lcom/android/launcher3/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/launcher3/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "com.android.launcher3.enable_additional_home_animations"

    invoke-virtual {p0, v1, v0}, Lcom/android/launcher3/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public enableAllAppsButtonInHotseat()Z
    .locals 2

    .line 71
    new-instance v0, Lcom/android/launcher3/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/launcher3/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "com.android.launcher3.enable_all_apps_button_in_hotseat"

    invoke-virtual {p0, v1, v0}, Lcom/android/launcher3/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public enableAltTabKqsFlatenning()Z
    .locals 2

    .line 78
    new-instance v0, Lcom/android/launcher3/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/launcher3/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "com.android.launcher3.enable_alt_tab_kqs_flatenning"

    invoke-virtual {p0, v1, v0}, Lcom/android/launcher3/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public enableAltTabKqsOnConnectedDisplays()Z
    .locals 2

    .line 85
    new-instance v0, Lcom/android/launcher3/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/launcher3/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "com.android.launcher3.enable_alt_tab_kqs_on_connected_displays"

    invoke-virtual {p0, v1, v0}, Lcom/android/launcher3/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public enableCategorizedWidgetSuggestions()Z
    .locals 2

    .line 92
    new-instance v0, Lcom/android/launcher3/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/launcher3/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "com.android.launcher3.enable_categorized_widget_suggestions"

    invoke-virtual {p0, v1, v0}, Lcom/android/launcher3/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public enableContainerReturnAnimations()Z
    .locals 2

    .line 99
    new-instance v0, Lcom/android/launcher3/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/launcher3/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "com.android.launcher3.enable_container_return_animations"

    invoke-virtual {p0, v1, v0}, Lcom/android/launcher3/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public enableContrastTiles()Z
    .locals 2

    .line 106
    new-instance v0, Lcom/android/launcher3/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/launcher3/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "com.android.launcher3.enable_contrast_tiles"

    invoke-virtual {p0, v1, v0}, Lcom/android/launcher3/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public enableCursorHoverStates()Z
    .locals 2

    .line 113
    new-instance v0, Lcom/android/launcher3/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/launcher3/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "com.android.launcher3.enable_cursor_hover_states"

    invoke-virtual {p0, v1, v0}, Lcom/android/launcher3/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public enableDesktopExplodedView()Z
    .locals 2

    .line 120
    new-instance v0, Lcom/android/launcher3/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/launcher3/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "com.android.launcher3.enable_desktop_exploded_view"

    invoke-virtual {p0, v1, v0}, Lcom/android/launcher3/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public enableDesktopTaskAlphaAnimation()Z
    .locals 2

    .line 127
    new-instance v0, Lcom/android/launcher3/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/launcher3/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "com.android.launcher3.enable_desktop_task_alpha_animation"

    invoke-virtual {p0, v1, v0}, Lcom/android/launcher3/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public enableDesktopWindowingCarouselDetach()Z
    .locals 2

    .line 134
    new-instance v0, Lcom/android/launcher3/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/launcher3/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "com.android.launcher3.enable_desktop_windowing_carousel_detach"

    invoke-virtual {p0, v1, v0}, Lcom/android/launcher3/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public enableDismissPredictionUndo()Z
    .locals 2

    .line 141
    new-instance v0, Lcom/android/launcher3/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/launcher3/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "com.android.launcher3.enable_dismiss_prediction_undo"

    invoke-virtual {p0, v1, v0}, Lcom/android/launcher3/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public enableExpandingPauseWorkButton()Z
    .locals 2

    .line 148
    new-instance v0, Lcom/android/launcher3/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/launcher3/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "com.android.launcher3.enable_expanding_pause_work_button"

    invoke-virtual {p0, v1, v0}, Lcom/android/launcher3/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public enableExpressiveDismissTaskMotion()Z
    .locals 2

    .line 155
    new-instance v0, Lcom/android/launcher3/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/launcher3/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "com.android.launcher3.enable_expressive_dismiss_task_motion"

    invoke-virtual {p0, v1, v0}, Lcom/android/launcher3/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public enableFallbackOverviewInWindow()Z
    .locals 2

    .line 162
    new-instance v0, Lcom/android/launcher3/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/launcher3/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "com.android.launcher3.enable_fallback_overview_in_window"

    invoke-virtual {p0, v1, v0}, Lcom/android/launcher3/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public enableFirstScreenBroadcastArchivingExtras()Z
    .locals 2

    .line 169
    new-instance v0, Lcom/android/launcher3/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/launcher3/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "com.android.launcher3.enable_first_screen_broadcast_archiving_extras"

    invoke-virtual {p0, v1, v0}, Lcom/android/launcher3/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public enableFocusOutline()Z
    .locals 2

    .line 176
    new-instance v0, Lcom/android/launcher3/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/launcher3/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "com.android.launcher3.enable_focus_outline"

    invoke-virtual {p0, v1, v0}, Lcom/android/launcher3/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public enableGeneratedPreviews()Z
    .locals 2

    .line 183
    new-instance v0, Lcom/android/launcher3/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/launcher3/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "com.android.launcher3.enable_generated_previews"

    invoke-virtual {p0, v1, v0}, Lcom/android/launcher3/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public enableGestureNavHorizontalTouchSlop()Z
    .locals 2

    .line 190
    new-instance v0, Lcom/android/launcher3/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/launcher3/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "com.android.launcher3.enable_gesture_nav_horizontal_touch_slop"

    invoke-virtual {p0, v1, v0}, Lcom/android/launcher3/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public enableGestureNavOnConnectedDisplays()Z
    .locals 2

    .line 197
    new-instance v0, Lcom/android/launcher3/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/launcher3/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "com.android.launcher3.enable_gesture_nav_on_connected_displays"

    invoke-virtual {p0, v1, v0}, Lcom/android/launcher3/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public enableGridMigrationFix()Z
    .locals 2

    .line 204
    new-instance v0, Lcom/android/launcher3/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/launcher3/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "com.android.launcher3.enable_grid_migration_fix"

    invoke-virtual {p0, v1, v0}, Lcom/android/launcher3/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public enableGridOnlyOverview()Z
    .locals 2

    .line 211
    new-instance v0, Lcom/android/launcher3/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/launcher3/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "com.android.launcher3.enable_grid_only_overview"

    invoke-virtual {p0, v1, v0}, Lcom/android/launcher3/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public enableGrowthNudge()Z
    .locals 2

    .line 218
    new-instance v0, Lcom/android/launcher3/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/launcher3/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "com.android.launcher3.enable_growth_nudge"

    invoke-virtual {p0, v1, v0}, Lcom/android/launcher3/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public enableHandleDelayedGestureCallbacks()Z
    .locals 2

    .line 225
    new-instance v0, Lcom/android/launcher3/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/launcher3/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "com.android.launcher3.enable_handle_delayed_gesture_callbacks"

    invoke-virtual {p0, v1, v0}, Lcom/android/launcher3/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public enableHomeTransitionListener()Z
    .locals 2

    .line 232
    new-instance v0, Lcom/android/launcher3/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/launcher3/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "com.android.launcher3.enable_home_transition_listener"

    invoke-virtual {p0, v1, v0}, Lcom/android/launcher3/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public enableHoverOfChildElementsInTaskview()Z
    .locals 2

    .line 239
    new-instance v0, Lcom/android/launcher3/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/launcher3/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "com.android.launcher3.enable_hover_of_child_elements_in_taskview"

    invoke-virtual {p0, v1, v0}, Lcom/android/launcher3/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public enableLargeDesktopWindowingTile()Z
    .locals 2

    .line 246
    new-instance v0, Lcom/android/launcher3/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/launcher3/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "com.android.launcher3.enable_large_desktop_windowing_tile"

    invoke-virtual {p0, v1, v0}, Lcom/android/launcher3/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public enableLauncherBrMetricsFixed()Z
    .locals 2

    .line 253
    new-instance v0, Lcom/android/launcher3/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/launcher3/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "com.android.launcher3.enable_launcher_br_metrics_fixed"

    invoke-virtual {p0, v1, v0}, Lcom/android/launcher3/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public enableLauncherIconShapes()Z
    .locals 2

    .line 260
    new-instance v0, Lcom/android/launcher3/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/launcher3/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "com.android.launcher3.enable_launcher_icon_shapes"

    invoke-virtual {p0, v1, v0}, Lcom/android/launcher3/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public enableLauncherOverviewInWindow()Z
    .locals 2

    .line 267
    new-instance v0, Lcom/android/launcher3/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/launcher3/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "com.android.launcher3.enable_launcher_overview_in_window"

    invoke-virtual {p0, v1, v0}, Lcom/android/launcher3/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public enableLauncherVisualRefresh()Z
    .locals 2

    .line 274
    new-instance v0, Lcom/android/launcher3/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/launcher3/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "com.android.launcher3.enable_launcher_visual_refresh"

    invoke-virtual {p0, v1, v0}, Lcom/android/launcher3/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public enableMouseInteractionChanges()Z
    .locals 2

    .line 281
    new-instance v0, Lcom/android/launcher3/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/launcher3/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "com.android.launcher3.enable_mouse_interaction_changes"

    invoke-virtual {p0, v1, v0}, Lcom/android/launcher3/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public enableMultiInstanceMenuTaskbar()Z
    .locals 2

    .line 288
    new-instance v0, Lcom/android/launcher3/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/launcher3/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "com.android.launcher3.enable_multi_instance_menu_taskbar"

    invoke-virtual {p0, v1, v0}, Lcom/android/launcher3/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public enableNarrowGridRestore()Z
    .locals 2

    .line 295
    new-instance v0, Lcom/android/launcher3/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/launcher3/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "com.android.launcher3.enable_narrow_grid_restore"

    invoke-virtual {p0, v1, v0}, Lcom/android/launcher3/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public enableOverviewBackgroundWallpaperBlur()Z
    .locals 2

    .line 302
    new-instance v0, Lcom/android/launcher3/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/launcher3/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "com.android.launcher3.enable_overview_background_wallpaper_blur"

    invoke-virtual {p0, v1, v0}, Lcom/android/launcher3/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public enableOverviewCommandHelperTimeout()Z
    .locals 2

    .line 309
    new-instance v0, Lcom/android/launcher3/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/launcher3/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "com.android.launcher3.enable_overview_command_helper_timeout"

    invoke-virtual {p0, v1, v0}, Lcom/android/launcher3/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public enableOverviewDesktopTileWallpaperBackground()Z
    .locals 2

    .line 316
    new-instance v0, Lcom/android/launcher3/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/launcher3/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "com.android.launcher3.enable_overview_desktop_tile_wallpaper_background"

    invoke-virtual {p0, v1, v0}, Lcom/android/launcher3/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public enableOverviewIconMenu()Z
    .locals 2

    .line 323
    new-instance v0, Lcom/android/launcher3/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/launcher3/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "com.android.launcher3.enable_overview_icon_menu"

    invoke-virtual {p0, v1, v0}, Lcom/android/launcher3/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public enableOverviewOnConnectedDisplays()Z
    .locals 2

    .line 330
    new-instance v0, Lcom/android/launcher3/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/launcher3/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "com.android.launcher3.enable_overview_on_connected_displays"

    invoke-virtual {p0, v1, v0}, Lcom/android/launcher3/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public enablePinningAppWithContextMenu()Z
    .locals 2

    .line 337
    new-instance v0, Lcom/android/launcher3/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/launcher3/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "com.android.launcher3.enable_pinning_app_with_context_menu"

    invoke-virtual {p0, v1, v0}, Lcom/android/launcher3/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public enablePredictiveBackGesture()Z
    .locals 2

    .line 344
    new-instance v0, Lcom/android/launcher3/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/launcher3/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "com.android.launcher3.enable_predictive_back_gesture"

    invoke-virtual {p0, v1, v0}, Lcom/android/launcher3/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public enablePrivateSpace()Z
    .locals 2

    .line 351
    new-instance v0, Lcom/android/launcher3/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/launcher3/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "com.android.launcher3.enable_private_space"

    invoke-virtual {p0, v1, v0}, Lcom/android/launcher3/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public enablePrivateSpaceInstallShortcut()Z
    .locals 2

    .line 358
    new-instance v0, Lcom/android/launcher3/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/launcher3/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "com.android.launcher3.enable_private_space_install_shortcut"

    invoke-virtual {p0, v1, v0}, Lcom/android/launcher3/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public enableRebootUnlockAnimation()Z
    .locals 2

    .line 365
    new-instance v0, Lcom/android/launcher3/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/launcher3/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "com.android.launcher3.enable_reboot_unlock_animation"

    invoke-virtual {p0, v1, v0}, Lcom/android/launcher3/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public enableRecentsInTaskbar()Z
    .locals 2

    .line 372
    new-instance v0, Lcom/android/launcher3/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/launcher3/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "com.android.launcher3.enable_recents_in_taskbar"

    invoke-virtual {p0, v1, v0}, Lcom/android/launcher3/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public enableRecentsWindowProtoLog()Z
    .locals 2

    .line 379
    new-instance v0, Lcom/android/launcher3/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/launcher3/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "com.android.launcher3.enable_recents_window_proto_log"

    invoke-virtual {p0, v1, v0}, Lcom/android/launcher3/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public enableRefactorTaskThumbnail()Z
    .locals 2

    .line 386
    new-instance v0, Lcom/android/launcher3/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/launcher3/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "com.android.launcher3.enable_refactor_task_thumbnail"

    invoke-virtual {p0, v1, v0}, Lcom/android/launcher3/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public enableResponsiveWorkspace()Z
    .locals 2

    .line 393
    new-instance v0, Lcom/android/launcher3/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/launcher3/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "com.android.launcher3.enable_responsive_workspace"

    invoke-virtual {p0, v1, v0}, Lcom/android/launcher3/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public enableScalabilityForDesktopExperience()Z
    .locals 2

    .line 400
    new-instance v0, Lcom/android/launcher3/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/launcher3/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "com.android.launcher3.enable_scalability_for_desktop_experience"

    invoke-virtual {p0, v1, v0}, Lcom/android/launcher3/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public enableScalingRevealHomeAnimation()Z
    .locals 2

    .line 407
    new-instance v0, Lcom/android/launcher3/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/launcher3/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "com.android.launcher3.enable_scaling_reveal_home_animation"

    invoke-virtual {p0, v1, v0}, Lcom/android/launcher3/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public enableSeparateExternalDisplayTasks()Z
    .locals 2

    .line 414
    new-instance v0, Lcom/android/launcher3/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/launcher3/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "com.android.launcher3.enable_separate_external_display_tasks"

    invoke-virtual {p0, v1, v0}, Lcom/android/launcher3/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public enableShortcutDontSuggestApp()Z
    .locals 2

    .line 421
    new-instance v0, Lcom/android/launcher3/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/launcher3/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "com.android.launcher3.enable_shortcut_dont_suggest_app"

    invoke-virtual {p0, v1, v0}, Lcom/android/launcher3/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public enableShowEnabledShortcutsInAccessibilityMenu()Z
    .locals 2

    .line 428
    new-instance v0, Lcom/android/launcher3/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/launcher3/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "com.android.launcher3.enable_show_enabled_shortcuts_in_accessibility_menu"

    invoke-virtual {p0, v1, v0}, Lcom/android/launcher3/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public enableSmartspaceAsAWidget()Z
    .locals 2

    .line 435
    new-instance v0, Lcom/android/launcher3/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/launcher3/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "com.android.launcher3.enable_smartspace_as_a_widget"

    invoke-virtual {p0, v1, v0}, Lcom/android/launcher3/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public enableSmartspaceRemovalToggle()Z
    .locals 2

    .line 442
    new-instance v0, Lcom/android/launcher3/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/launcher3/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "com.android.launcher3.enable_smartspace_removal_toggle"

    invoke-virtual {p0, v1, v0}, Lcom/android/launcher3/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public enableStateManagerProtoLog()Z
    .locals 2

    .line 449
    new-instance v0, Lcom/android/launcher3/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/launcher3/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "com.android.launcher3.enable_state_manager_proto_log"

    invoke-virtual {p0, v1, v0}, Lcom/android/launcher3/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public enableStrictMode()Z
    .locals 2

    .line 456
    new-instance v0, Lcom/android/launcher3/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/launcher3/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "com.android.launcher3.enable_strict_mode"

    invoke-virtual {p0, v1, v0}, Lcom/android/launcher3/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public enableSupportForArchiving()Z
    .locals 2

    .line 463
    new-instance v0, Lcom/android/launcher3/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/launcher3/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "com.android.launcher3.enable_support_for_archiving"

    invoke-virtual {p0, v1, v0}, Lcom/android/launcher3/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public enableTabletTwoPanePickerV2()Z
    .locals 2

    .line 470
    new-instance v0, Lcom/android/launcher3/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/launcher3/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "com.android.launcher3.enable_tablet_two_pane_picker_v2"

    invoke-virtual {p0, v1, v0}, Lcom/android/launcher3/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public enableTaskbarBehindShade()Z
    .locals 2

    .line 477
    new-instance v0, Lcom/android/launcher3/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/launcher3/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "com.android.launcher3.enable_taskbar_behind_shade"

    invoke-virtual {p0, v1, v0}, Lcom/android/launcher3/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public enableTaskbarCustomization()Z
    .locals 2

    .line 484
    new-instance v0, Lcom/android/launcher3/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/launcher3/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "com.android.launcher3.enable_taskbar_customization"

    invoke-virtual {p0, v1, v0}, Lcom/android/launcher3/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public enableTaskbarForDirectBoot()Z
    .locals 2

    .line 491
    new-instance v0, Lcom/android/launcher3/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/launcher3/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "com.android.launcher3.enable_taskbar_for_direct_boot"

    invoke-virtual {p0, v1, v0}, Lcom/android/launcher3/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public enableTaskbarNoRecreate()Z
    .locals 2

    .line 498
    new-instance v0, Lcom/android/launcher3/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/launcher3/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "com.android.launcher3.enable_taskbar_no_recreate"

    invoke-virtual {p0, v1, v0}, Lcom/android/launcher3/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public enableTaskbarPinning()Z
    .locals 2

    .line 505
    new-instance v0, Lcom/android/launcher3/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/launcher3/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "com.android.launcher3.enable_taskbar_pinning"

    invoke-virtual {p0, v1, v0}, Lcom/android/launcher3/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public enableTieredWidgetsByDefaultInPicker()Z
    .locals 2

    .line 512
    new-instance v0, Lcom/android/launcher3/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/launcher3/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "com.android.launcher3.enable_tiered_widgets_by_default_in_picker"

    invoke-virtual {p0, v1, v0}, Lcom/android/launcher3/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public enableTwoPaneLauncherSettings()Z
    .locals 2

    .line 519
    new-instance v0, Lcom/android/launcher3/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/launcher3/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "com.android.launcher3.enable_two_pane_launcher_settings"

    invoke-virtual {p0, v1, v0}, Lcom/android/launcher3/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public enableTwolineAllapps()Z
    .locals 2

    .line 526
    new-instance v0, Lcom/android/launcher3/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/launcher3/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "com.android.launcher3.enable_twoline_allapps"

    invoke-virtual {p0, v1, v0}, Lcom/android/launcher3/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public enableTwolineToggle()Z
    .locals 2

    .line 533
    new-instance v0, Lcom/android/launcher3/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/launcher3/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "com.android.launcher3.enable_twoline_toggle"

    invoke-virtual {p0, v1, v0}, Lcom/android/launcher3/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public enableUnfoldStateAnimation()Z
    .locals 2

    .line 540
    new-instance v0, Lcom/android/launcher3/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/launcher3/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "com.android.launcher3.enable_unfold_state_animation"

    invoke-virtual {p0, v1, v0}, Lcom/android/launcher3/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public enableUnfoldedTwoPanePicker()Z
    .locals 2

    .line 547
    new-instance v0, Lcom/android/launcher3/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/launcher3/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "com.android.launcher3.enable_unfolded_two_pane_picker"

    invoke-virtual {p0, v1, v0}, Lcom/android/launcher3/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public enableUseTopVisibleActivityForExcludeFromRecentTask()Z
    .locals 2

    .line 554
    new-instance v0, Lcom/android/launcher3/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/launcher3/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "com.android.launcher3.enable_use_top_visible_activity_for_exclude_from_recent_task"

    invoke-virtual {p0, v1, v0}, Lcom/android/launcher3/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public enableWidgetTapToAdd()Z
    .locals 2

    .line 561
    new-instance v0, Lcom/android/launcher3/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/launcher3/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "com.android.launcher3.enable_widget_tap_to_add"

    invoke-virtual {p0, v1, v0}, Lcom/android/launcher3/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public enableWorkspaceInflation()Z
    .locals 2

    .line 568
    new-instance v0, Lcom/android/launcher3/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/launcher3/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "com.android.launcher3.enable_workspace_inflation"

    invoke-virtual {p0, v1, v0}, Lcom/android/launcher3/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public enabledFoldersInAllApps()Z
    .locals 2

    .line 575
    new-instance v0, Lcom/android/launcher3/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/launcher3/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "com.android.launcher3.enabled_folders_in_all_apps"

    invoke-virtual {p0, v1, v0}, Lcom/android/launcher3/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public expressiveThemeInTaskbarAndNavigation()Z
    .locals 2

    .line 582
    new-instance v0, Lcom/android/launcher3/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/launcher3/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "com.android.launcher3.expressive_theme_in_taskbar_and_navigation"

    invoke-virtual {p0, v1, v0}, Lcom/android/launcher3/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public extendibleThemeManager()Z
    .locals 2

    .line 589
    new-instance v0, Lcom/android/launcher3/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/launcher3/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "com.android.launcher3.extendible_theme_manager"

    invoke-virtual {p0, v1, v0}, Lcom/android/launcher3/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public floatingSearchBar()Z
    .locals 2

    .line 596
    new-instance v0, Lcom/android/launcher3/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/launcher3/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "com.android.launcher3.floating_search_bar"

    invoke-virtual {p0, v1, v0}, Lcom/android/launcher3/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public forceMonochromeAppIcons()Z
    .locals 2

    .line 603
    new-instance v0, Lcom/android/launcher3/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/launcher3/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "com.android.launcher3.force_monochrome_app_icons"

    invoke-virtual {p0, v1, v0}, Lcom/android/launcher3/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public getFlagNames()Ljava/util/List;
    .locals 115
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 835
    const-string v113, "com.android.launcher3.use_system_radius_for_app_widgets"

    const-string v114, "com.android.launcher3.work_scheduler_in_work_profile"

    const-string v1, "com.android.launcher3.accessibility_scroll_on_allapps"

    const-string v2, "com.android.launcher3.all_apps_blur"

    const-string v3, "com.android.launcher3.all_apps_sheet_for_handheld"

    const-string v4, "com.android.launcher3.coordinate_workspace_scale"

    const-string v5, "com.android.launcher3.enable_active_gesture_proto_log"

    const-string v6, "com.android.launcher3.enable_add_app_widget_via_config_activity_v2"

    const-string v7, "com.android.launcher3.enable_additional_home_animations"

    const-string v8, "com.android.launcher3.enable_all_apps_button_in_hotseat"

    const-string v9, "com.android.launcher3.enable_alt_tab_kqs_flatenning"

    const-string v10, "com.android.launcher3.enable_alt_tab_kqs_on_connected_displays"

    const-string v11, "com.android.launcher3.enable_categorized_widget_suggestions"

    const-string v12, "com.android.launcher3.enable_container_return_animations"

    const-string v13, "com.android.launcher3.enable_contrast_tiles"

    const-string v14, "com.android.launcher3.enable_cursor_hover_states"

    const-string v15, "com.android.launcher3.enable_desktop_exploded_view"

    const-string v16, "com.android.launcher3.enable_desktop_task_alpha_animation"

    const-string v17, "com.android.launcher3.enable_desktop_windowing_carousel_detach"

    const-string v18, "com.android.launcher3.enable_dismiss_prediction_undo"

    const-string v19, "com.android.launcher3.enable_expanding_pause_work_button"

    const-string v20, "com.android.launcher3.enable_expressive_dismiss_task_motion"

    const-string v21, "com.android.launcher3.enable_fallback_overview_in_window"

    const-string v22, "com.android.launcher3.enable_first_screen_broadcast_archiving_extras"

    const-string v23, "com.android.launcher3.enable_focus_outline"

    const-string v24, "com.android.launcher3.enable_generated_previews"

    const-string v25, "com.android.launcher3.enable_gesture_nav_horizontal_touch_slop"

    const-string v26, "com.android.launcher3.enable_gesture_nav_on_connected_displays"

    const-string v27, "com.android.launcher3.enable_grid_migration_fix"

    const-string v28, "com.android.launcher3.enable_grid_only_overview"

    const-string v29, "com.android.launcher3.enable_growth_nudge"

    const-string v30, "com.android.launcher3.enable_handle_delayed_gesture_callbacks"

    const-string v31, "com.android.launcher3.enable_home_transition_listener"

    const-string v32, "com.android.launcher3.enable_hover_of_child_elements_in_taskview"

    const-string v33, "com.android.launcher3.enable_large_desktop_windowing_tile"

    const-string v34, "com.android.launcher3.enable_launcher_br_metrics_fixed"

    const-string v35, "com.android.launcher3.enable_launcher_icon_shapes"

    const-string v36, "com.android.launcher3.enable_launcher_overview_in_window"

    const-string v37, "com.android.launcher3.enable_launcher_visual_refresh"

    const-string v38, "com.android.launcher3.enable_mouse_interaction_changes"

    const-string v39, "com.android.launcher3.enable_multi_instance_menu_taskbar"

    const-string v40, "com.android.launcher3.enable_narrow_grid_restore"

    const-string v41, "com.android.launcher3.enable_overview_background_wallpaper_blur"

    const-string v42, "com.android.launcher3.enable_overview_command_helper_timeout"

    const-string v43, "com.android.launcher3.enable_overview_desktop_tile_wallpaper_background"

    const-string v44, "com.android.launcher3.enable_overview_icon_menu"

    const-string v45, "com.android.launcher3.enable_overview_on_connected_displays"

    const-string v46, "com.android.launcher3.enable_pinning_app_with_context_menu"

    const-string v47, "com.android.launcher3.enable_predictive_back_gesture"

    const-string v48, "com.android.launcher3.enable_private_space"

    const-string v49, "com.android.launcher3.enable_private_space_install_shortcut"

    const-string v50, "com.android.launcher3.enable_reboot_unlock_animation"

    const-string v51, "com.android.launcher3.enable_recents_in_taskbar"

    const-string v52, "com.android.launcher3.enable_recents_window_proto_log"

    const-string v53, "com.android.launcher3.enable_refactor_task_thumbnail"

    const-string v54, "com.android.launcher3.enable_responsive_workspace"

    const-string v55, "com.android.launcher3.enable_scalability_for_desktop_experience"

    const-string v56, "com.android.launcher3.enable_scaling_reveal_home_animation"

    const-string v57, "com.android.launcher3.enable_separate_external_display_tasks"

    const-string v58, "com.android.launcher3.enable_shortcut_dont_suggest_app"

    const-string v59, "com.android.launcher3.enable_show_enabled_shortcuts_in_accessibility_menu"

    const-string v60, "com.android.launcher3.enable_smartspace_as_a_widget"

    const-string v61, "com.android.launcher3.enable_smartspace_removal_toggle"

    const-string v62, "com.android.launcher3.enable_state_manager_proto_log"

    const-string v63, "com.android.launcher3.enable_strict_mode"

    const-string v64, "com.android.launcher3.enable_support_for_archiving"

    const-string v65, "com.android.launcher3.enable_tablet_two_pane_picker_v2"

    const-string v66, "com.android.launcher3.enable_taskbar_behind_shade"

    const-string v67, "com.android.launcher3.enable_taskbar_customization"

    const-string v68, "com.android.launcher3.enable_taskbar_for_direct_boot"

    const-string v69, "com.android.launcher3.enable_taskbar_no_recreate"

    const-string v70, "com.android.launcher3.enable_taskbar_pinning"

    const-string v71, "com.android.launcher3.enable_tiered_widgets_by_default_in_picker"

    const-string v72, "com.android.launcher3.enable_two_pane_launcher_settings"

    const-string v73, "com.android.launcher3.enable_twoline_allapps"

    const-string v74, "com.android.launcher3.enable_twoline_toggle"

    const-string v75, "com.android.launcher3.enable_unfold_state_animation"

    const-string v76, "com.android.launcher3.enable_unfolded_two_pane_picker"

    const-string v77, "com.android.launcher3.enable_use_top_visible_activity_for_exclude_from_recent_task"

    const-string v78, "com.android.launcher3.enable_widget_tap_to_add"

    const-string v79, "com.android.launcher3.enable_workspace_inflation"

    const-string v80, "com.android.launcher3.enabled_folders_in_all_apps"

    const-string v81, "com.android.launcher3.expressive_theme_in_taskbar_and_navigation"

    const-string v82, "com.android.launcher3.extendible_theme_manager"

    const-string v83, "com.android.launcher3.floating_search_bar"

    const-string v84, "com.android.launcher3.force_monochrome_app_icons"

    const-string v85, "com.android.launcher3.grid_migration_refactor"

    const-string v86, "com.android.launcher3.gsf_res"

    const-string v87, "com.android.launcher3.ignore_three_finger_trackpad_for_nav_handle_long_press"

    const-string v88, "com.android.launcher3.letter_fast_scroller"

    const-string v89, "com.android.launcher3.msdl_feedback"

    const-string v90, "com.android.launcher3.multiline_search_bar"

    const-string v91, "com.android.launcher3.navigate_to_child_preference"

    const-string v92, "com.android.launcher3.one_grid_mounted_mode"

    const-string v93, "com.android.launcher3.one_grid_rotation_handling"

    const-string v94, "com.android.launcher3.one_grid_specs"

    const-string v95, "com.android.launcher3.predictive_back_to_home_blur"

    const-string v96, "com.android.launcher3.predictive_back_to_home_polish"

    const-string v97, "com.android.launcher3.private_space_add_floating_mask_view"

    const-string v98, "com.android.launcher3.private_space_animation"

    const-string v99, "com.android.launcher3.private_space_app_installer_button"

    const-string v100, "com.android.launcher3.private_space_restrict_accessibility_drag"

    const-string v101, "com.android.launcher3.private_space_restrict_item_drag"

    const-string v102, "com.android.launcher3.private_space_sys_apps_separation"

    const-string v103, "com.android.launcher3.remove_apps_refresh_on_right_click"

    const-string v104, "com.android.launcher3.remove_exclude_from_screen_magnification_flag_usage"

    const-string v105, "com.android.launcher3.restore_archived_app_icons_from_db"

    const-string v106, "com.android.launcher3.restore_archived_shortcuts"

    const-string v107, "com.android.launcher3.show_taskbar_pinning_popup_from_anywhere"

    const-string v108, "com.android.launcher3.sync_app_launch_with_taskbar_stash"

    const-string v109, "com.android.launcher3.taskbar_overflow"

    const-string v110, "com.android.launcher3.taskbar_quiet_mode_change_support"

    const-string v111, "com.android.launcher3.use_activity_overlay"

    const-string v112, "com.android.launcher3.use_new_icon_for_archived_apps"

    filled-new-array/range {v1 .. v114}, [Ljava/lang/String;

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
            "Lcom/android/launcher3/FeatureFlags;",
            ">;)Z"
        }
    .end annotation

    .line 831
    .local p2, "getter":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/launcher3/FeatureFlags;>;"
    iget-object v0, p0, Lcom/android/launcher3/CustomFeatureFlags;->mGetValueImpl:Ljava/util/function/BiPredicate;

    invoke-interface {v0, p1, p2}, Ljava/util/function/BiPredicate;->test(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public gridMigrationRefactor()Z
    .locals 2

    .line 610
    new-instance v0, Lcom/android/launcher3/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/launcher3/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "com.android.launcher3.grid_migration_refactor"

    invoke-virtual {p0, v1, v0}, Lcom/android/launcher3/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public gsfRes()Z
    .locals 2

    .line 617
    new-instance v0, Lcom/android/launcher3/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/launcher3/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "com.android.launcher3.gsf_res"

    invoke-virtual {p0, v1, v0}, Lcom/android/launcher3/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public ignoreThreeFingerTrackpadForNavHandleLongPress()Z
    .locals 2

    .line 624
    new-instance v0, Lcom/android/launcher3/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/launcher3/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "com.android.launcher3.ignore_three_finger_trackpad_for_nav_handle_long_press"

    invoke-virtual {p0, v1, v0}, Lcom/android/launcher3/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public isFlagReadOnlyOptimized(Ljava/lang/String;)Z
    .locals 1
    .param p1, "flagName"    # Ljava/lang/String;

    .line 818
    iget-object v0, p0, Lcom/android/launcher3/CustomFeatureFlags;->mReadOnlyFlagsSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 819
    nop

    .line 820
    const/4 v0, 0x1

    return v0

    .line 822
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public letterFastScroller()Z
    .locals 2

    .line 631
    new-instance v0, Lcom/android/launcher3/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/launcher3/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "com.android.launcher3.letter_fast_scroller"

    invoke-virtual {p0, v1, v0}, Lcom/android/launcher3/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public msdlFeedback()Z
    .locals 2

    .line 638
    new-instance v0, Lcom/android/launcher3/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/launcher3/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "com.android.launcher3.msdl_feedback"

    invoke-virtual {p0, v1, v0}, Lcom/android/launcher3/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public multilineSearchBar()Z
    .locals 2

    .line 645
    new-instance v0, Lcom/android/launcher3/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/launcher3/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "com.android.launcher3.multiline_search_bar"

    invoke-virtual {p0, v1, v0}, Lcom/android/launcher3/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public navigateToChildPreference()Z
    .locals 2

    .line 652
    new-instance v0, Lcom/android/launcher3/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/launcher3/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "com.android.launcher3.navigate_to_child_preference"

    invoke-virtual {p0, v1, v0}, Lcom/android/launcher3/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public oneGridMountedMode()Z
    .locals 2

    .line 659
    new-instance v0, Lcom/android/launcher3/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/launcher3/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "com.android.launcher3.one_grid_mounted_mode"

    invoke-virtual {p0, v1, v0}, Lcom/android/launcher3/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public oneGridRotationHandling()Z
    .locals 2

    .line 666
    new-instance v0, Lcom/android/launcher3/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/launcher3/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "com.android.launcher3.one_grid_rotation_handling"

    invoke-virtual {p0, v1, v0}, Lcom/android/launcher3/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public oneGridSpecs()Z
    .locals 2

    .line 673
    new-instance v0, Lcom/android/launcher3/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/launcher3/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "com.android.launcher3.one_grid_specs"

    invoke-virtual {p0, v1, v0}, Lcom/android/launcher3/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public predictiveBackToHomeBlur()Z
    .locals 2

    .line 680
    new-instance v0, Lcom/android/launcher3/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/launcher3/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "com.android.launcher3.predictive_back_to_home_blur"

    invoke-virtual {p0, v1, v0}, Lcom/android/launcher3/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public predictiveBackToHomePolish()Z
    .locals 2

    .line 687
    new-instance v0, Lcom/android/launcher3/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/launcher3/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "com.android.launcher3.predictive_back_to_home_polish"

    invoke-virtual {p0, v1, v0}, Lcom/android/launcher3/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public privateSpaceAddFloatingMaskView()Z
    .locals 2

    .line 694
    new-instance v0, Lcom/android/launcher3/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/launcher3/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "com.android.launcher3.private_space_add_floating_mask_view"

    invoke-virtual {p0, v1, v0}, Lcom/android/launcher3/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public privateSpaceAnimation()Z
    .locals 2

    .line 701
    new-instance v0, Lcom/android/launcher3/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/launcher3/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "com.android.launcher3.private_space_animation"

    invoke-virtual {p0, v1, v0}, Lcom/android/launcher3/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public privateSpaceAppInstallerButton()Z
    .locals 2

    .line 708
    new-instance v0, Lcom/android/launcher3/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/launcher3/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "com.android.launcher3.private_space_app_installer_button"

    invoke-virtual {p0, v1, v0}, Lcom/android/launcher3/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public privateSpaceRestrictAccessibilityDrag()Z
    .locals 2

    .line 715
    new-instance v0, Lcom/android/launcher3/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/launcher3/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "com.android.launcher3.private_space_restrict_accessibility_drag"

    invoke-virtual {p0, v1, v0}, Lcom/android/launcher3/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public privateSpaceRestrictItemDrag()Z
    .locals 2

    .line 722
    new-instance v0, Lcom/android/launcher3/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/launcher3/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "com.android.launcher3.private_space_restrict_item_drag"

    invoke-virtual {p0, v1, v0}, Lcom/android/launcher3/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public privateSpaceSysAppsSeparation()Z
    .locals 2

    .line 729
    new-instance v0, Lcom/android/launcher3/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/launcher3/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "com.android.launcher3.private_space_sys_apps_separation"

    invoke-virtual {p0, v1, v0}, Lcom/android/launcher3/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public removeAppsRefreshOnRightClick()Z
    .locals 2

    .line 736
    new-instance v0, Lcom/android/launcher3/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/launcher3/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "com.android.launcher3.remove_apps_refresh_on_right_click"

    invoke-virtual {p0, v1, v0}, Lcom/android/launcher3/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public removeExcludeFromScreenMagnificationFlagUsage()Z
    .locals 2

    .line 743
    new-instance v0, Lcom/android/launcher3/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/launcher3/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "com.android.launcher3.remove_exclude_from_screen_magnification_flag_usage"

    invoke-virtual {p0, v1, v0}, Lcom/android/launcher3/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public restoreArchivedAppIconsFromDb()Z
    .locals 2

    .line 750
    new-instance v0, Lcom/android/launcher3/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/launcher3/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "com.android.launcher3.restore_archived_app_icons_from_db"

    invoke-virtual {p0, v1, v0}, Lcom/android/launcher3/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public restoreArchivedShortcuts()Z
    .locals 2

    .line 757
    new-instance v0, Lcom/android/launcher3/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/launcher3/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "com.android.launcher3.restore_archived_shortcuts"

    invoke-virtual {p0, v1, v0}, Lcom/android/launcher3/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public showTaskbarPinningPopupFromAnywhere()Z
    .locals 2

    .line 764
    new-instance v0, Lcom/android/launcher3/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/launcher3/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "com.android.launcher3.show_taskbar_pinning_popup_from_anywhere"

    invoke-virtual {p0, v1, v0}, Lcom/android/launcher3/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public syncAppLaunchWithTaskbarStash()Z
    .locals 2

    .line 771
    new-instance v0, Lcom/android/launcher3/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/launcher3/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "com.android.launcher3.sync_app_launch_with_taskbar_stash"

    invoke-virtual {p0, v1, v0}, Lcom/android/launcher3/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public taskbarOverflow()Z
    .locals 2

    .line 778
    new-instance v0, Lcom/android/launcher3/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/launcher3/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "com.android.launcher3.taskbar_overflow"

    invoke-virtual {p0, v1, v0}, Lcom/android/launcher3/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public taskbarQuietModeChangeSupport()Z
    .locals 2

    .line 785
    new-instance v0, Lcom/android/launcher3/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/launcher3/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "com.android.launcher3.taskbar_quiet_mode_change_support"

    invoke-virtual {p0, v1, v0}, Lcom/android/launcher3/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public useActivityOverlay()Z
    .locals 2

    .line 792
    new-instance v0, Lcom/android/launcher3/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/launcher3/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "com.android.launcher3.use_activity_overlay"

    invoke-virtual {p0, v1, v0}, Lcom/android/launcher3/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public useNewIconForArchivedApps()Z
    .locals 2

    .line 799
    new-instance v0, Lcom/android/launcher3/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/launcher3/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "com.android.launcher3.use_new_icon_for_archived_apps"

    invoke-virtual {p0, v1, v0}, Lcom/android/launcher3/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public useSystemRadiusForAppWidgets()Z
    .locals 2

    .line 806
    new-instance v0, Lcom/android/launcher3/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/launcher3/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "com.android.launcher3.use_system_radius_for_app_widgets"

    invoke-virtual {p0, v1, v0}, Lcom/android/launcher3/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public workSchedulerInWorkProfile()Z
    .locals 2

    .line 813
    new-instance v0, Lcom/android/launcher3/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/launcher3/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "com.android.launcher3.work_scheduler_in_work_profile"

    invoke-virtual {p0, v1, v0}, Lcom/android/launcher3/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method
