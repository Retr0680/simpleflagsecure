.class public Lcom/android/server/accessibility/CustomFeatureFlags;
.super Ljava/lang/Object;
.source "CustomFeatureFlags.java"

# interfaces
.implements Lcom/android/server/accessibility/FeatureFlags;


# instance fields
.field private mGetValueImpl:Ljava/util/function/BiPredicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/BiPredicate<",
            "Ljava/lang/String;",
            "Ljava/util/function/Predicate<",
            "Lcom/android/server/accessibility/FeatureFlags;",
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
    .locals 46
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiPredicate<",
            "Ljava/lang/String;",
            "Ljava/util/function/Predicate<",
            "Lcom/android/server/accessibility/FeatureFlags;",
            ">;>;)V"
        }
    .end annotation

    .line 16
    .local p1, "getValueImpl":Ljava/util/function/BiPredicate;, "Ljava/util/function/BiPredicate<Ljava/lang/String;Ljava/util/function/Predicate<Lcom/android/server/accessibility/FeatureFlags;>;>;"
    move-object/from16 v0, p0

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 385
    new-instance v1, Ljava/util/HashSet;

    const-string v44, "com.android.server.accessibility.skip_package_change_before_user_switch"

    const-string v45, ""

    const-string v2, "com.android.server.accessibility.add_window_token_without_lock"

    const-string v3, "com.android.server.accessibility.allow_secure_screenshots"

    const-string v4, "com.android.server.accessibility.always_allow_observing_touch_events"

    const-string v5, "com.android.server.accessibility.cleanup_a11y_overlays"

    const-string v6, "com.android.server.accessibility.clear_default_from_a11y_shortcut_target_service_restore"

    const-string v7, "com.android.server.accessibility.clear_shortcuts_when_activity_updates_to_service"

    const-string v8, "com.android.server.accessibility.deprecate_package_list_observer"

    const-string v9, "com.android.server.accessibility.disable_continuous_shortcut_on_force_stop"

    const-string v10, "com.android.server.accessibility.do_not_reset_key_event_state"

    const-string v11, "com.android.server.accessibility.enable_a11y_checker_logging"

    const-string v12, "com.android.server.accessibility.enable_autoclick_indicator"

    const-string v13, "com.android.server.accessibility.enable_color_correction_saturation"

    const-string v14, "com.android.server.accessibility.enable_hardware_shortcut_disables_warning"

    const-string v15, "com.android.server.accessibility.enable_low_vision_generic_feedback"

    const-string v16, "com.android.server.accessibility.enable_low_vision_hats"

    const-string v17, "com.android.server.accessibility.enable_magnification_follows_mouse_with_pointer_motion_filter"

    const-string v18, "com.android.server.accessibility.enable_magnification_joystick"

    const-string v19, "com.android.server.accessibility.enable_magnification_keyboard_control"

    const-string v20, "com.android.server.accessibility.enable_magnification_multiple_finger_multiple_tap_gesture"

    const-string v21, "com.android.server.accessibility.enable_magnification_one_finger_panning_gesture"

    const-string v22, "com.android.server.accessibility.event_dispatcher_raw_event"

    const-string v23, "com.android.server.accessibility.fix_drag_pointer_when_ending_drag"

    const-string v24, "com.android.server.accessibility.focus_click_point_window_bounds_from_a11y_window_info"

    const-string v25, "com.android.server.accessibility.fullscreen_fling_gesture"

    const-string v26, "com.android.server.accessibility.handle_multi_device_input"

    const-string v27, "com.android.server.accessibility.hearing_input_change_when_comm_device"

    const-string v28, "com.android.server.accessibility.magnification_enlarge_pointer_bugfix"

    const-string v29, "com.android.server.accessibility.manager_avoid_receiver_timeout"

    const-string v30, "com.android.server.accessibility.manager_lifecycle_user_change"

    const-string v31, "com.android.server.accessibility.manager_package_monitor_logic_fix"

    const-string v32, "com.android.server.accessibility.motion_event_injector_cancel_fix"

    const-string v33, "com.android.server.accessibility.package_monitor_dedicated_thread"

    const-string v34, "com.android.server.accessibility.pinch_zoom_zero_min_span"

    const-string v35, "com.android.server.accessibility.pointer_up_motion_event_in_touch_exploration"

    const-string v36, "com.android.server.accessibility.proxy_use_apps_on_virtual_device_listener"

    const-string v37, "com.android.server.accessibility.remove_on_window_infos_changed_handler"

    const-string v38, "com.android.server.accessibility.reset_hover_event_timer_on_action_up"

    const-string v39, "com.android.server.accessibility.reset_input_dispatcher_before_first_touch_exploration"

    const-string v40, "com.android.server.accessibility.resettable_dynamic_properties"

    const-string v41, "com.android.server.accessibility.scan_packages_without_lock"

    const-string v42, "com.android.server.accessibility.send_a11y_events_based_on_state"

    const-string v43, "com.android.server.accessibility.send_hover_events_based_on_event_stream"

    filled-new-array/range {v2 .. v45}, [Ljava/lang/String;

    move-result-object v2

    .line 386
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Lcom/android/server/accessibility/CustomFeatureFlags;->mReadOnlyFlagsSet:Ljava/util/Set;

    .line 17
    move-object/from16 v1, p1

    iput-object v1, v0, Lcom/android/server/accessibility/CustomFeatureFlags;->mGetValueImpl:Ljava/util/function/BiPredicate;

    .line 18
    return-void
.end method

.method private isOptimizationEnabled()Z
    .locals 1

    .line 330
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public addWindowTokenWithoutLock()Z
    .locals 2

    .line 22
    new-instance v0, Lcom/android/server/accessibility/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/server/accessibility/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "com.android.server.accessibility.add_window_token_without_lock"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/accessibility/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public allowSecureScreenshots()Z
    .locals 2

    .line 29
    new-instance v0, Lcom/android/server/accessibility/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/server/accessibility/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "com.android.server.accessibility.allow_secure_screenshots"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/accessibility/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public alwaysAllowObservingTouchEvents()Z
    .locals 2

    .line 36
    new-instance v0, Lcom/android/server/accessibility/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/server/accessibility/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "com.android.server.accessibility.always_allow_observing_touch_events"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/accessibility/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public cleanupA11yOverlays()Z
    .locals 2

    .line 43
    new-instance v0, Lcom/android/server/accessibility/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/server/accessibility/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "com.android.server.accessibility.cleanup_a11y_overlays"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/accessibility/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public clearDefaultFromA11yShortcutTargetServiceRestore()Z
    .locals 2

    .line 50
    new-instance v0, Lcom/android/server/accessibility/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/server/accessibility/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "com.android.server.accessibility.clear_default_from_a11y_shortcut_target_service_restore"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/accessibility/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public clearShortcutsWhenActivityUpdatesToService()Z
    .locals 2

    .line 57
    new-instance v0, Lcom/android/server/accessibility/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/server/accessibility/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "com.android.server.accessibility.clear_shortcuts_when_activity_updates_to_service"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/accessibility/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public deprecatePackageListObserver()Z
    .locals 2

    .line 64
    new-instance v0, Lcom/android/server/accessibility/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/server/accessibility/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "com.android.server.accessibility.deprecate_package_list_observer"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/accessibility/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public disableContinuousShortcutOnForceStop()Z
    .locals 2

    .line 71
    new-instance v0, Lcom/android/server/accessibility/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/server/accessibility/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "com.android.server.accessibility.disable_continuous_shortcut_on_force_stop"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/accessibility/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public doNotResetKeyEventState()Z
    .locals 2

    .line 78
    new-instance v0, Lcom/android/server/accessibility/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/server/accessibility/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "com.android.server.accessibility.do_not_reset_key_event_state"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/accessibility/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public enableA11yCheckerLogging()Z
    .locals 2

    .line 85
    new-instance v0, Lcom/android/server/accessibility/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/server/accessibility/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "com.android.server.accessibility.enable_a11y_checker_logging"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/accessibility/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public enableAutoclickIndicator()Z
    .locals 2

    .line 92
    new-instance v0, Lcom/android/server/accessibility/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/server/accessibility/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "com.android.server.accessibility.enable_autoclick_indicator"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/accessibility/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public enableColorCorrectionSaturation()Z
    .locals 2

    .line 99
    new-instance v0, Lcom/android/server/accessibility/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/server/accessibility/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "com.android.server.accessibility.enable_color_correction_saturation"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/accessibility/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public enableHardwareShortcutDisablesWarning()Z
    .locals 2

    .line 106
    new-instance v0, Lcom/android/server/accessibility/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/server/accessibility/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "com.android.server.accessibility.enable_hardware_shortcut_disables_warning"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/accessibility/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public enableLowVisionGenericFeedback()Z
    .locals 2

    .line 113
    new-instance v0, Lcom/android/server/accessibility/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/server/accessibility/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "com.android.server.accessibility.enable_low_vision_generic_feedback"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/accessibility/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public enableLowVisionHats()Z
    .locals 2

    .line 120
    new-instance v0, Lcom/android/server/accessibility/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/server/accessibility/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "com.android.server.accessibility.enable_low_vision_hats"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/accessibility/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public enableMagnificationFollowsMouseWithPointerMotionFilter()Z
    .locals 2

    .line 127
    new-instance v0, Lcom/android/server/accessibility/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/server/accessibility/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "com.android.server.accessibility.enable_magnification_follows_mouse_with_pointer_motion_filter"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/accessibility/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public enableMagnificationJoystick()Z
    .locals 2

    .line 134
    new-instance v0, Lcom/android/server/accessibility/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/server/accessibility/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "com.android.server.accessibility.enable_magnification_joystick"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/accessibility/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public enableMagnificationKeyboardControl()Z
    .locals 2

    .line 141
    new-instance v0, Lcom/android/server/accessibility/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/server/accessibility/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "com.android.server.accessibility.enable_magnification_keyboard_control"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/accessibility/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public enableMagnificationMultipleFingerMultipleTapGesture()Z
    .locals 2

    .line 148
    new-instance v0, Lcom/android/server/accessibility/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/server/accessibility/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "com.android.server.accessibility.enable_magnification_multiple_finger_multiple_tap_gesture"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/accessibility/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public enableMagnificationOneFingerPanningGesture()Z
    .locals 2

    .line 155
    new-instance v0, Lcom/android/server/accessibility/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/server/accessibility/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "com.android.server.accessibility.enable_magnification_one_finger_panning_gesture"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/accessibility/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public eventDispatcherRawEvent()Z
    .locals 2

    .line 162
    new-instance v0, Lcom/android/server/accessibility/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/server/accessibility/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "com.android.server.accessibility.event_dispatcher_raw_event"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/accessibility/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public fixDragPointerWhenEndingDrag()Z
    .locals 2

    .line 169
    new-instance v0, Lcom/android/server/accessibility/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/server/accessibility/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "com.android.server.accessibility.fix_drag_pointer_when_ending_drag"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/accessibility/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public focusClickPointWindowBoundsFromA11yWindowInfo()Z
    .locals 2

    .line 176
    new-instance v0, Lcom/android/server/accessibility/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/server/accessibility/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "com.android.server.accessibility.focus_click_point_window_bounds_from_a11y_window_info"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/accessibility/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public fullscreenFlingGesture()Z
    .locals 2

    .line 183
    new-instance v0, Lcom/android/server/accessibility/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/server/accessibility/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "com.android.server.accessibility.fullscreen_fling_gesture"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/accessibility/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public getFlagNames()Ljava/util/List;
    .locals 44
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 338
    const-string v42, "com.android.server.accessibility.send_hover_events_based_on_event_stream"

    const-string v43, "com.android.server.accessibility.skip_package_change_before_user_switch"

    const-string v1, "com.android.server.accessibility.add_window_token_without_lock"

    const-string v2, "com.android.server.accessibility.allow_secure_screenshots"

    const-string v3, "com.android.server.accessibility.always_allow_observing_touch_events"

    const-string v4, "com.android.server.accessibility.cleanup_a11y_overlays"

    const-string v5, "com.android.server.accessibility.clear_default_from_a11y_shortcut_target_service_restore"

    const-string v6, "com.android.server.accessibility.clear_shortcuts_when_activity_updates_to_service"

    const-string v7, "com.android.server.accessibility.deprecate_package_list_observer"

    const-string v8, "com.android.server.accessibility.disable_continuous_shortcut_on_force_stop"

    const-string v9, "com.android.server.accessibility.do_not_reset_key_event_state"

    const-string v10, "com.android.server.accessibility.enable_a11y_checker_logging"

    const-string v11, "com.android.server.accessibility.enable_autoclick_indicator"

    const-string v12, "com.android.server.accessibility.enable_color_correction_saturation"

    const-string v13, "com.android.server.accessibility.enable_hardware_shortcut_disables_warning"

    const-string v14, "com.android.server.accessibility.enable_low_vision_generic_feedback"

    const-string v15, "com.android.server.accessibility.enable_low_vision_hats"

    const-string v16, "com.android.server.accessibility.enable_magnification_follows_mouse_with_pointer_motion_filter"

    const-string v17, "com.android.server.accessibility.enable_magnification_joystick"

    const-string v18, "com.android.server.accessibility.enable_magnification_keyboard_control"

    const-string v19, "com.android.server.accessibility.enable_magnification_multiple_finger_multiple_tap_gesture"

    const-string v20, "com.android.server.accessibility.enable_magnification_one_finger_panning_gesture"

    const-string v21, "com.android.server.accessibility.event_dispatcher_raw_event"

    const-string v22, "com.android.server.accessibility.fix_drag_pointer_when_ending_drag"

    const-string v23, "com.android.server.accessibility.focus_click_point_window_bounds_from_a11y_window_info"

    const-string v24, "com.android.server.accessibility.fullscreen_fling_gesture"

    const-string v25, "com.android.server.accessibility.handle_multi_device_input"

    const-string v26, "com.android.server.accessibility.hearing_input_change_when_comm_device"

    const-string v27, "com.android.server.accessibility.magnification_enlarge_pointer_bugfix"

    const-string v28, "com.android.server.accessibility.manager_avoid_receiver_timeout"

    const-string v29, "com.android.server.accessibility.manager_lifecycle_user_change"

    const-string v30, "com.android.server.accessibility.manager_package_monitor_logic_fix"

    const-string v31, "com.android.server.accessibility.motion_event_injector_cancel_fix"

    const-string v32, "com.android.server.accessibility.package_monitor_dedicated_thread"

    const-string v33, "com.android.server.accessibility.pinch_zoom_zero_min_span"

    const-string v34, "com.android.server.accessibility.pointer_up_motion_event_in_touch_exploration"

    const-string v35, "com.android.server.accessibility.proxy_use_apps_on_virtual_device_listener"

    const-string v36, "com.android.server.accessibility.remove_on_window_infos_changed_handler"

    const-string v37, "com.android.server.accessibility.reset_hover_event_timer_on_action_up"

    const-string v38, "com.android.server.accessibility.reset_input_dispatcher_before_first_touch_exploration"

    const-string v39, "com.android.server.accessibility.resettable_dynamic_properties"

    const-string v40, "com.android.server.accessibility.scan_packages_without_lock"

    const-string v41, "com.android.server.accessibility.send_a11y_events_based_on_state"

    filled-new-array/range {v1 .. v43}, [Ljava/lang/String;

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
            "Lcom/android/server/accessibility/FeatureFlags;",
            ">;)Z"
        }
    .end annotation

    .line 334
    .local p2, "getter":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/accessibility/FeatureFlags;>;"
    iget-object v0, p0, Lcom/android/server/accessibility/CustomFeatureFlags;->mGetValueImpl:Ljava/util/function/BiPredicate;

    invoke-interface {v0, p1, p2}, Ljava/util/function/BiPredicate;->test(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public handleMultiDeviceInput()Z
    .locals 2

    .line 190
    new-instance v0, Lcom/android/server/accessibility/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/server/accessibility/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "com.android.server.accessibility.handle_multi_device_input"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/accessibility/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public hearingInputChangeWhenCommDevice()Z
    .locals 2

    .line 197
    new-instance v0, Lcom/android/server/accessibility/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/server/accessibility/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "com.android.server.accessibility.hearing_input_change_when_comm_device"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/accessibility/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public isFlagReadOnlyOptimized(Ljava/lang/String;)Z
    .locals 1
    .param p1, "flagName"    # Ljava/lang/String;

    .line 321
    iget-object v0, p0, Lcom/android/server/accessibility/CustomFeatureFlags;->mReadOnlyFlagsSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 322
    nop

    .line 323
    const/4 v0, 0x1

    return v0

    .line 325
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public magnificationEnlargePointerBugfix()Z
    .locals 2

    .line 204
    new-instance v0, Lcom/android/server/accessibility/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/server/accessibility/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "com.android.server.accessibility.magnification_enlarge_pointer_bugfix"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/accessibility/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public managerAvoidReceiverTimeout()Z
    .locals 2

    .line 211
    new-instance v0, Lcom/android/server/accessibility/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/server/accessibility/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "com.android.server.accessibility.manager_avoid_receiver_timeout"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/accessibility/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public managerLifecycleUserChange()Z
    .locals 2

    .line 218
    new-instance v0, Lcom/android/server/accessibility/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/server/accessibility/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "com.android.server.accessibility.manager_lifecycle_user_change"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/accessibility/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public managerPackageMonitorLogicFix()Z
    .locals 2

    .line 225
    new-instance v0, Lcom/android/server/accessibility/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/server/accessibility/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "com.android.server.accessibility.manager_package_monitor_logic_fix"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/accessibility/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public motionEventInjectorCancelFix()Z
    .locals 2

    .line 232
    new-instance v0, Lcom/android/server/accessibility/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/server/accessibility/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "com.android.server.accessibility.motion_event_injector_cancel_fix"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/accessibility/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public packageMonitorDedicatedThread()Z
    .locals 2

    .line 239
    new-instance v0, Lcom/android/server/accessibility/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/server/accessibility/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "com.android.server.accessibility.package_monitor_dedicated_thread"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/accessibility/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public pinchZoomZeroMinSpan()Z
    .locals 2

    .line 246
    new-instance v0, Lcom/android/server/accessibility/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/server/accessibility/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "com.android.server.accessibility.pinch_zoom_zero_min_span"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/accessibility/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public pointerUpMotionEventInTouchExploration()Z
    .locals 2

    .line 253
    new-instance v0, Lcom/android/server/accessibility/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/server/accessibility/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "com.android.server.accessibility.pointer_up_motion_event_in_touch_exploration"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/accessibility/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public proxyUseAppsOnVirtualDeviceListener()Z
    .locals 2

    .line 260
    new-instance v0, Lcom/android/server/accessibility/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/server/accessibility/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "com.android.server.accessibility.proxy_use_apps_on_virtual_device_listener"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/accessibility/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public removeOnWindowInfosChangedHandler()Z
    .locals 2

    .line 267
    new-instance v0, Lcom/android/server/accessibility/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/server/accessibility/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "com.android.server.accessibility.remove_on_window_infos_changed_handler"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/accessibility/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public resetHoverEventTimerOnActionUp()Z
    .locals 2

    .line 274
    new-instance v0, Lcom/android/server/accessibility/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/server/accessibility/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "com.android.server.accessibility.reset_hover_event_timer_on_action_up"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/accessibility/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public resetInputDispatcherBeforeFirstTouchExploration()Z
    .locals 2

    .line 281
    new-instance v0, Lcom/android/server/accessibility/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/server/accessibility/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "com.android.server.accessibility.reset_input_dispatcher_before_first_touch_exploration"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/accessibility/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public resettableDynamicProperties()Z
    .locals 2

    .line 288
    new-instance v0, Lcom/android/server/accessibility/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/server/accessibility/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "com.android.server.accessibility.resettable_dynamic_properties"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/accessibility/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public scanPackagesWithoutLock()Z
    .locals 2

    .line 295
    new-instance v0, Lcom/android/server/accessibility/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/server/accessibility/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "com.android.server.accessibility.scan_packages_without_lock"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/accessibility/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public sendA11yEventsBasedOnState()Z
    .locals 2

    .line 302
    new-instance v0, Lcom/android/server/accessibility/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/server/accessibility/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "com.android.server.accessibility.send_a11y_events_based_on_state"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/accessibility/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public sendHoverEventsBasedOnEventStream()Z
    .locals 2

    .line 309
    new-instance v0, Lcom/android/server/accessibility/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/server/accessibility/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "com.android.server.accessibility.send_hover_events_based_on_event_stream"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/accessibility/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public skipPackageChangeBeforeUserSwitch()Z
    .locals 2

    .line 316
    new-instance v0, Lcom/android/server/accessibility/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/server/accessibility/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "com.android.server.accessibility.skip_package_change_before_user_switch"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/accessibility/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method
