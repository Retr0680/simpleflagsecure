.class public Lcom/android/systemui/CustomFeatureFlags;
.super Ljava/lang/Object;
.source "CustomFeatureFlags.java"

# interfaces
.implements Lcom/android/systemui/FeatureFlags;


# instance fields
.field private mGetValueImpl:Ljava/util/function/BiPredicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/BiPredicate<",
            "Ljava/lang/String;",
            "Ljava/util/function/Predicate<",
            "Lcom/android/systemui/FeatureFlags;",
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
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiPredicate<",
            "Ljava/lang/String;",
            "Ljava/util/function/Predicate<",
            "Lcom/android/systemui/FeatureFlags;",
            ">;>;)V"
        }
    .end annotation

    .line 16
    .local p1, "getValueImpl":Ljava/util/function/BiPredicate;, "Ljava/util/function/BiPredicate<Ljava/lang/String;Ljava/util/function/Predicate<Lcom/android/systemui/FeatureFlags;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2281
    new-instance v0, Ljava/util/HashSet;

    const/16 v1, 0x119

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "com.android.systemui.activity_transition_use_largest_window"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "com.android.systemui.add_black_background_for_window_magnifier"

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string v2, "com.android.systemui.always_compose_qs_ui_fragment"

    const/4 v3, 0x2

    aput-object v2, v1, v3

    const-string v2, "com.android.systemui.ambient_touch_monitor_listen_to_display_changes"

    const/4 v3, 0x3

    aput-object v2, v1, v3

    const-string v2, "com.android.systemui.app_clips_backlinks"

    const/4 v3, 0x4

    aput-object v2, v1, v3

    const-string v2, "com.android.systemui.app_shortcut_removal_fix"

    const/4 v3, 0x5

    aput-object v2, v1, v3

    const-string v2, "com.android.systemui.avalanche_replace_hun_when_critical"

    const/4 v3, 0x6

    aput-object v2, v1, v3

    const-string v2, "com.android.systemui.bind_keyguard_media_visibility"

    const/4 v3, 0x7

    aput-object v2, v1, v3

    const-string v2, "com.android.systemui.bouncer_ui_revamp"

    const/16 v3, 0x8

    aput-object v2, v1, v3

    const-string v2, "com.android.systemui.bouncer_ui_revamp_2"

    const/16 v3, 0x9

    aput-object v2, v1, v3

    const-string v2, "com.android.systemui.bp_colors"

    const/16 v3, 0xa

    aput-object v2, v1, v3

    const-string v2, "com.android.systemui.brightness_slider_focus_state"

    const/16 v3, 0xb

    aput-object v2, v1, v3

    const-string v2, "com.android.systemui.check_lockscreen_gone_transition"

    const/16 v3, 0xc

    aput-object v2, v1, v3

    const-string v2, "com.android.systemui.classic_flags_multi_user"

    const/16 v3, 0xd

    aput-object v2, v1, v3

    const-string v2, "com.android.systemui.clipboard_image_timeout"

    const/16 v3, 0xe

    aput-object v2, v1, v3

    const-string v2, "com.android.systemui.clipboard_noninteractive_on_lockscreen"

    const/16 v3, 0xf

    aput-object v2, v1, v3

    const-string v2, "com.android.systemui.clipboard_overlay_multiuser"

    const/16 v3, 0x10

    aput-object v2, v1, v3

    const-string v2, "com.android.systemui.clipboard_shared_transitions"

    const/16 v3, 0x11

    aput-object v2, v1, v3

    const-string v2, "com.android.systemui.clipboard_use_description_mimetype"

    const/16 v3, 0x12

    aput-object v2, v1, v3

    const-string v2, "com.android.systemui.clock_fidget_animation"

    const/16 v3, 0x13

    aput-object v2, v1, v3

    const-string v2, "com.android.systemui.communal_bouncer_do_not_modify_plugin_open"

    const/16 v3, 0x14

    aput-object v2, v1, v3

    const-string v2, "com.android.systemui.communal_edit_widgets_activity_finish_fix"

    const/16 v3, 0x15

    aput-object v2, v1, v3

    const-string v2, "com.android.systemui.communal_hub"

    const/16 v3, 0x16

    aput-object v2, v1, v3

    const-string v2, "com.android.systemui.communal_hub_use_thread_pool_for_widgets"

    const/16 v3, 0x17

    aput-object v2, v1, v3

    const-string v2, "com.android.systemui.communal_responsive_grid"

    const/16 v3, 0x18

    aput-object v2, v1, v3

    const-string v2, "com.android.systemui.communal_scene_ktf_refactor"

    const/16 v3, 0x19

    aput-object v2, v1, v3

    const-string v2, "com.android.systemui.communal_standalone_support"

    const/16 v3, 0x1a

    aput-object v2, v1, v3

    const-string v2, "com.android.systemui.communal_timer_flicker_fix"

    const/16 v3, 0x1b

    aput-object v2, v1, v3

    const-string v2, "com.android.systemui.communal_widget_resizing"

    const/16 v3, 0x1c

    aput-object v2, v1, v3

    const-string v2, "com.android.systemui.communal_widget_trampoline_fix"

    const/16 v3, 0x1d

    aput-object v2, v1, v3

    const-string v2, "com.android.systemui.compose_bouncer"

    const/16 v3, 0x1e

    aput-object v2, v1, v3

    const-string v2, "com.android.systemui.confine_notification_touch_to_view_width"

    const/16 v3, 0x1f

    aput-object v2, v1, v3

    const-string v2, "com.android.systemui.cont_auth_plugin"

    const/16 v3, 0x20

    aput-object v2, v1, v3

    const-string v2, "com.android.systemui.contextual_tips_assistant_dismiss_fix"

    const/16 v3, 0x21

    aput-object v2, v1, v3

    const-string v2, "com.android.systemui.coroutine_tracing"

    const/16 v3, 0x22

    aput-object v2, v1, v3

    const-string v2, "com.android.systemui.create_windowless_window_magnifier"

    const/16 v3, 0x23

    aput-object v2, v1, v3

    const-string v2, "com.android.systemui.debug_live_updates_promote_all"

    const/16 v3, 0x24

    aput-object v2, v1, v3

    const-string v2, "com.android.systemui.decouple_view_controller_in_animlib"

    const/16 v3, 0x25

    aput-object v2, v1, v3

    const-string v2, "com.android.systemui.delay_show_magnification_button"

    const/16 v3, 0x26

    aput-object v2, v1, v3

    const-string v2, "com.android.systemui.desktop_effects_qs_tile"

    const/16 v3, 0x27

    aput-object v2, v1, v3

    const-string v2, "com.android.systemui.device_entry_udfps_refactor"

    const/16 v3, 0x28

    aput-object v2, v1, v3

    const-string v2, "com.android.systemui.disable_blurred_shade_visible"

    const/16 v3, 0x29

    aput-object v2, v1, v3

    const-string v2, "com.android.systemui.disable_contextual_tips_frequency_check"

    const/16 v3, 0x2a

    aput-object v2, v1, v3

    const-string v2, "com.android.systemui.disable_contextual_tips_ios_switcher_check"

    const/16 v3, 0x2b

    aput-object v2, v1, v3

    const-string v2, "com.android.systemui.disable_shade_trackpad_two_finger_swipe"

    const/16 v3, 0x2c

    aput-object v2, v1, v3

    const-string v2, "com.android.systemui.double_tap_to_sleep"

    const/16 v3, 0x2d

    aput-object v2, v1, v3

    const-string v2, "com.android.systemui.dream_input_session_pilfer_once"

    const/16 v3, 0x2e

    aput-object v2, v1, v3

    const-string v2, "com.android.systemui.dream_overlay_bouncer_swipe_direction_filtering"

    const/16 v3, 0x2f

    aput-object v2, v1, v3

    const-string v2, "com.android.systemui.dream_overlay_updated_font"

    const/16 v3, 0x30

    aput-object v2, v1, v3

    const-string v2, "com.android.systemui.edge_back_gesture_handler_thread"

    const/16 v3, 0x31

    aput-object v2, v1, v3

    const-string v2, "com.android.systemui.edgeback_gesture_handler_get_running_tasks_background"

    const/16 v3, 0x32

    aput-object v2, v1, v3

    const-string v2, "com.android.systemui.enable_background_keyguard_ondrawn_callback"

    const/16 v3, 0x33

    aput-object v2, v1, v3

    const-string v2, "com.android.systemui.enable_contextual_tip_for_mute_volume"

    const/16 v3, 0x34

    aput-object v2, v1, v3

    const-string v2, "com.android.systemui.enable_contextual_tip_for_power_off"

    const/16 v3, 0x35

    aput-object v2, v1, v3

    const-string v2, "com.android.systemui.enable_contextual_tip_for_take_screenshot"

    const/16 v3, 0x36

    aput-object v2, v1, v3

    const-string v2, "com.android.systemui.enable_contextual_tips"

    const/16 v3, 0x37

    aput-object v2, v1, v3

    const-string v2, "com.android.systemui.enable_efficient_display_repository"

    const/16 v3, 0x38

    aput-object v2, v1, v3

    const-string v2, "com.android.systemui.enable_layout_tracing"

    const/16 v3, 0x39

    aput-object v2, v1, v3

    const-string v2, "com.android.systemui.enable_underlay"

    const/16 v3, 0x3a

    aput-object v2, v1, v3

    const-string v2, "com.android.systemui.enable_view_capture_tracing"

    const/16 v3, 0x3b

    aput-object v2, v1, v3

    const-string v2, "com.android.systemui.enforce_brightness_base_user_restriction"

    const/16 v3, 0x3c

    aput-object v2, v1, v3

    const-string v2, "com.android.systemui.example_flag"

    const/16 v3, 0x3d

    aput-object v2, v1, v3

    const-string v2, "com.android.systemui.expand_collapse_privacy_dialog"

    const/16 v3, 0x3e

    aput-object v2, v1, v3

    const-string v2, "com.android.systemui.expand_heads_up_on_inline_reply"

    const/16 v3, 0x3f

    aput-object v2, v1, v3

    const-string v2, "com.android.systemui.expanded_privacy_indicators_on_large_screen"

    const/16 v3, 0x40

    aput-object v2, v1, v3

    const-string v2, "com.android.systemui.extended_apps_shortcut_category"

    const/16 v3, 0x41

    aput-object v2, v1, v3

    const-string v2, "com.android.systemui.face_message_defer_update"

    const/16 v3, 0x42

    aput-object v2, v1, v3

    const-string v2, "com.android.systemui.face_scanning_animation_npe_fix"

    const/16 v3, 0x43

    aput-object v2, v1, v3

    const-string v2, "com.android.systemui.faster_unlock_transition"

    const/16 v3, 0x44

    aput-object v2, v1, v3

    const-string v2, "com.android.systemui.fetch_bookmarks_xml_keyboard_shortcuts"

    const/16 v3, 0x45

    aput-object v2, v1, v3

    const-string v2, "com.android.systemui.fix_image_wallpaper_crash_surface_already_released"

    const/16 v3, 0x46

    aput-object v2, v1, v3

    const-string v2, "com.android.systemui.fix_screenshot_action_dismiss_system_windows"

    const/16 v3, 0x47

    aput-object v2, v1, v3

    const-string v2, "com.android.systemui.floating_menu_animated_tuck"

    const/16 v3, 0x48

    aput-object v2, v1, v3

    const-string v2, "com.android.systemui.floating_menu_display_cutout_support"

    const/16 v3, 0x49

    aput-object v2, v1, v3

    const-string v2, "com.android.systemui.floating_menu_drag_to_edit"

    const/16 v3, 0x4a

    aput-object v2, v1, v3

    const-string v2, "com.android.systemui.floating_menu_drag_to_hide"

    const/16 v3, 0x4b

    aput-object v2, v1, v3

    const-string v2, "com.android.systemui.floating_menu_hearing_device_status_icon"

    const/16 v3, 0x4c

    aput-object v2, v1, v3

    const-string v2, "com.android.systemui.floating_menu_ime_displacement_animation"

    const/16 v3, 0x4d

    aput-object v2, v1, v3

    const-string v2, "com.android.systemui.floating_menu_narrow_target_content_observer"

    const/16 v3, 0x4e

    aput-object v2, v1, v3

    const-string v2, "com.android.systemui.floating_menu_notify_targets_changed_on_strict_diff"

    const/16 v3, 0x4f

    aput-object v2, v1, v3

    const-string v2, "com.android.systemui.floating_menu_overlaps_nav_bars_flag"

    const/16 v3, 0x50

    aput-object v2, v1, v3

    const-string v2, "com.android.systemui.floating_menu_radii_animation"

    const/16 v3, 0x51

    aput-object v2, v1, v3

    const-string v2, "com.android.systemui.get_connected_device_name_unsynchronized"

    const/16 v3, 0x52

    aput-object v2, v1, v3

    const-string v2, "com.android.systemui.glanceable_hub_allow_keyguard_when_dreaming"

    const/16 v3, 0x53

    aput-object v2, v1, v3

    const-string v2, "com.android.systemui.glanceable_hub_blurred_background"

    const/16 v3, 0x54

    aput-object v2, v1, v3

    const-string v2, "com.android.systemui.glanceable_hub_direct_edit_mode"

    const/16 v3, 0x55

    aput-object v2, v1, v3

    const-string v2, "com.android.systemui.glanceable_hub_v2"

    const/16 v3, 0x56

    aput-object v2, v1, v3

    const-string v2, "com.android.systemui.glanceable_hub_v2_resources"

    const/16 v3, 0x57

    aput-object v2, v1, v3

    const-string v2, "com.android.systemui.haptics_for_compose_sliders"

    const/16 v3, 0x58

    aput-object v2, v1, v3

    const-string v2, "com.android.systemui.hardware_color_styles"

    const/16 v3, 0x59

    aput-object v2, v1, v3

    const-string v2, "com.android.systemui.hearing_aids_qs_tile_dialog"

    const/16 v3, 0x5a

    aput-object v2, v1, v3

    const-string v2, "com.android.systemui.hearing_devices_dialog_related_tools"

    const/16 v3, 0x5b

    aput-object v2, v1, v3

    const-string v2, "com.android.systemui.hide_ringer_button_in_single_volume_mode"

    const/16 v3, 0x5c

    aput-object v2, v1, v3

    const-string v2, "com.android.systemui.home_controls_dream_hsum"

    const/16 v3, 0x5d

    aput-object v2, v1, v3

    const-string v2, "com.android.systemui.hub_edit_mode_touch_adjustments"

    const/16 v3, 0x5e

    aput-object v2, v1, v3

    const-string v2, "com.android.systemui.hubmode_fullscreen_vertical_swipe"

    const/16 v3, 0x5f

    aput-object v2, v1, v3

    const-string v2, "com.android.systemui.hubmode_fullscreen_vertical_swipe_fix"

    const/16 v3, 0x60

    aput-object v2, v1, v3

    const-string v2, "com.android.systemui.icon_refresh_2025"

    const/16 v3, 0x61

    aput-object v2, v1, v3

    const-string v2, "com.android.systemui.ignore_touches_next_to_notification_shelf"

    const/16 v3, 0x62

    aput-object v2, v1, v3

    const-string v2, "com.android.systemui.indication_text_a11y_fix"

    const/16 v3, 0x63

    aput-object v2, v1, v3

    const-string v2, "com.android.systemui.keyboard_docking_indicator"

    const/16 v3, 0x64

    aput-object v2, v1, v3

    const-string v2, "com.android.systemui.keyboard_shortcut_helper_rewrite"

    const/16 v3, 0x65

    aput-object v2, v1, v3

    const-string v2, "com.android.systemui.keyboard_shortcut_helper_shortcut_customizer"

    const/16 v3, 0x66

    aput-object v2, v1, v3

    const-string v2, "com.android.systemui.keyboard_touchpad_contextual_education"

    const/16 v3, 0x67

    aput-object v2, v1, v3

    const-string v2, "com.android.systemui.keyguard_transition_force_finish_on_screen_off"

    const/16 v3, 0x68

    aput-object v2, v1, v3

    const-string v2, "com.android.systemui.keyguard_wm_reorder_atms_calls"

    const/16 v3, 0x69

    aput-object v2, v1, v3

    const-string v2, "com.android.systemui.keyguard_wm_state_refactor"

    const/16 v3, 0x6a

    aput-object v2, v1, v3

    const-string v2, "com.android.systemui.lockscreen_font"

    const/16 v3, 0x6b

    aput-object v2, v1, v3

    const-string v2, "com.android.systemui.low_light_clock_dream"

    const/16 v3, 0x6c

    aput-object v2, v1, v3

    const-string v2, "com.android.systemui.magnetic_notification_swipes"

    const/16 v3, 0x6d

    aput-object v2, v1, v3

    const-string v2, "com.android.systemui.media_controls_a11y_colors"

    const/16 v3, 0x6e

    aput-object v2, v1, v3

    const-string v2, "com.android.systemui.media_controls_button_media3"

    const/16 v3, 0x6f

    aput-object v2, v1, v3

    const-string v2, "com.android.systemui.media_controls_button_media3_placement"

    const/16 v3, 0x70

    aput-object v2, v1, v3

    const-string v2, "com.android.systemui.media_controls_device_manager_background_execution"

    const/16 v3, 0x71

    aput-object v2, v1, v3

    const-string v2, "com.android.systemui.media_controls_drawables_reuse_bugfix"

    const/16 v3, 0x72

    aput-object v2, v1, v3

    const-string v2, "com.android.systemui.media_controls_lockscreen_shade_bug_fix"

    const/16 v3, 0x73

    aput-object v2, v1, v3

    const-string v2, "com.android.systemui.media_controls_ui_update"

    const/16 v3, 0x74

    aput-object v2, v1, v3

    const-string v2, "com.android.systemui.media_controls_umo_inflation_in_background"

    const/16 v3, 0x75

    aput-object v2, v1, v3

    const-string v2, "com.android.systemui.media_controls_user_initiated_deleteintent"

    const/16 v3, 0x76

    aput-object v2, v1, v3

    const-string v2, "com.android.systemui.media_load_metadata_via_media_data_loader"

    const/16 v3, 0x77

    aput-object v2, v1, v3

    const-string v2, "com.android.systemui.media_lockscreen_launch_animation"

    const/16 v3, 0x78

    aput-object v2, v1, v3

    const-string v2, "com.android.systemui.media_projection_dialog_behind_lockscreen"

    const/16 v3, 0x79

    aput-object v2, v1, v3

    const-string v2, "com.android.systemui.media_projection_grey_error_text"

    const/16 v3, 0x7a

    aput-object v2, v1, v3

    const-string v2, "com.android.systemui.media_projection_request_attribution_fix"

    const/16 v3, 0x7b

    aput-object v2, v1, v3

    const-string v2, "com.android.systemui.modes_ui_dialog_paging"

    const/16 v3, 0x7c

    aput-object v2, v1, v3

    const-string v2, "com.android.systemui.move_transition_animation_layer"

    const/16 v3, 0x7d

    aput-object v2, v1, v3

    const-string v2, "com.android.systemui.msdl_feedback"

    const/16 v3, 0x7e

    aput-object v2, v1, v3

    const-string v2, "com.android.systemui.multiuser_wifi_picker_tracker_support"

    const/16 v3, 0x7f

    aput-object v2, v1, v3

    const-string v2, "com.android.systemui.new_aod_transition"

    const/16 v3, 0x80

    aput-object v2, v1, v3

    const-string v2, "com.android.systemui.new_volume_panel"

    const/16 v3, 0x81

    aput-object v2, v1, v3

    const-string v2, "com.android.systemui.non_touchscreen_devices_bypass_falsing"

    const/16 v3, 0x82

    aput-object v2, v1, v3

    const-string v2, "com.android.systemui.notes_role_qs_tile"

    const/16 v3, 0x83

    aput-object v2, v1, v3

    const-string v2, "com.android.systemui.notification_add_x_on_hover_to_dismiss"

    const/16 v3, 0x84

    aput-object v2, v1, v3

    const-string v2, "com.android.systemui.notification_ambient_suppression_after_inflation"

    const/16 v3, 0x85

    aput-object v2, v1, v3

    const-string v2, "com.android.systemui.notification_animated_actions_treatment"

    const/16 v3, 0x86

    aput-object v2, v1, v3

    const-string v2, "com.android.systemui.notification_appear_nonlinear"

    const/16 v3, 0x87

    aput-object v2, v1, v3

    const-string v2, "com.android.systemui.notification_async_group_header_inflation"

    const/16 v3, 0x88

    aput-object v2, v1, v3

    const-string v2, "com.android.systemui.notification_async_hybrid_view_inflation"

    const/16 v3, 0x89

    aput-object v2, v1, v3

    const-string v2, "com.android.systemui.notification_avalanche_suppression"

    const/16 v3, 0x8a

    aput-object v2, v1, v3

    const-string v2, "com.android.systemui.notification_avalanche_throttle_hun"

    const/16 v3, 0x8b

    aput-object v2, v1, v3

    const-string v2, "com.android.systemui.notification_background_tint_optimization"

    const/16 v3, 0x8c

    aput-object v2, v1, v3

    const-string v2, "com.android.systemui.notification_bundle_ui"

    const/16 v3, 0x8d

    aput-object v2, v1, v3

    const-string v2, "com.android.systemui.notification_color_update_logger"

    const/16 v3, 0x8e

    aput-object v2, v1, v3

    const-string v2, "com.android.systemui.notification_content_alpha_optimization"

    const/16 v3, 0x8f

    aput-object v2, v1, v3

    const-string v2, "com.android.systemui.notification_footer_background_tint_optimization"

    const/16 v3, 0x90

    aput-object v2, v1, v3

    const-string v2, "com.android.systemui.notification_over_expansion_clipping_fix"

    const/16 v3, 0x91

    aput-object v2, v1, v3

    const-string v2, "com.android.systemui.notification_reentrant_dismiss"

    const/16 v3, 0x92

    aput-object v2, v1, v3

    const-string v2, "com.android.systemui.notification_row_accessibility_expanded"

    const/16 v3, 0x93

    aput-object v2, v1, v3

    const-string v2, "com.android.systemui.notification_row_content_binder_refactor"

    const/16 v3, 0x94

    aput-object v2, v1, v3

    const-string v2, "com.android.systemui.notification_row_transparency"

    const/16 v3, 0x95

    aput-object v2, v1, v3

    const-string v2, "com.android.systemui.notification_row_user_context"

    const/16 v3, 0x96

    aput-object v2, v1, v3

    const-string v2, "com.android.systemui.notification_shade_blur"

    const/16 v3, 0x97

    aput-object v2, v1, v3

    const-string v2, "com.android.systemui.notification_shade_ui_thread"

    const/16 v3, 0x98

    aput-object v2, v1, v3

    const-string v2, "com.android.systemui.notification_skip_silent_updates"

    const/16 v3, 0x99

    aput-object v2, v1, v3

    const-string v2, "com.android.systemui.notification_transparent_header_fix"

    const/16 v3, 0x9a

    aput-object v2, v1, v3

    const-string v2, "com.android.systemui.notification_view_flipper_pausing_v2"

    const/16 v3, 0x9b

    aput-object v2, v1, v3

    const-string v2, "com.android.systemui.notifications_background_icons"

    const/16 v3, 0x9c

    aput-object v2, v1, v3

    const-string v2, "com.android.systemui.notifications_footer_visibility_fix"

    const/16 v3, 0x9d

    aput-object v2, v1, v3

    const-string v2, "com.android.systemui.notifications_hide_on_display_switch"

    const/16 v3, 0x9e

    aput-object v2, v1, v3

    const-string v2, "com.android.systemui.notifications_hun_shared_animation_values"

    const/16 v3, 0x9f

    aput-object v2, v1, v3

    const-string v2, "com.android.systemui.notifications_icon_container_refactor"

    const/16 v3, 0xa0

    aput-object v2, v1, v3

    const-string v2, "com.android.systemui.notifications_launch_radius"

    const/16 v3, 0xa1

    aput-object v2, v1, v3

    const-string v2, "com.android.systemui.notifications_live_data_store_refactor"

    const/16 v3, 0xa2

    aput-object v2, v1, v3

    const-string v2, "com.android.systemui.notifications_pinned_hun_in_shade"

    const/16 v3, 0xa3

    aput-object v2, v1, v3

    const-string v2, "com.android.systemui.notifications_redesign_footer_view"

    const/16 v3, 0xa4

    aput-object v2, v1, v3

    const-string v2, "com.android.systemui.notifications_redesign_guts"

    const/16 v3, 0xa5

    aput-object v2, v1, v3

    const-string v2, "com.android.systemui.notify_password_text_view_user_activity_in_background"

    const/16 v3, 0xa6

    aput-object v2, v1, v3

    const-string v2, "com.android.systemui.notify_power_manager_user_activity_background"

    const/16 v3, 0xa7

    aput-object v2, v1, v3

    const-string v2, "com.android.systemui.only_show_media_stream_slider_in_single_volume_mode"

    const/16 v3, 0xa8

    aput-object v2, v1, v3

    const-string v2, "com.android.systemui.output_switcher_redesign"

    const/16 v3, 0xa9

    aput-object v2, v1, v3

    const-string v2, "com.android.systemui.override_suppress_overlay_condition"

    const/16 v3, 0xaa

    aput-object v2, v1, v3

    const-string v2, "com.android.systemui.permission_helper_inline_ui_rich_ongoing"

    const/16 v3, 0xab

    aput-object v2, v1, v3

    const-string v2, "com.android.systemui.permission_helper_ui_rich_ongoing"

    const/16 v3, 0xac

    aput-object v2, v1, v3

    const-string v2, "com.android.systemui.physical_notification_movement"

    const/16 v3, 0xad

    aput-object v2, v1, v3

    const-string v2, "com.android.systemui.pin_input_field_styled_focus_state"

    const/16 v3, 0xae

    aput-object v2, v1, v3

    const-string v2, "com.android.systemui.predictive_back_animate_shade"

    const/16 v3, 0xaf

    aput-object v2, v1, v3

    const-string v2, "com.android.systemui.predictive_back_delay_wm_transition"

    const/16 v3, 0xb0

    aput-object v2, v1, v3

    const-string v2, "com.android.systemui.priority_people_section"

    const/16 v3, 0xb1

    aput-object v2, v1, v3

    const-string v2, "com.android.systemui.promote_notifications_automatically"

    const/16 v3, 0xb2

    aput-object v2, v1, v3

    const-string v2, "com.android.systemui.pss_app_selector_recents_split_screen"

    const/16 v3, 0xb3

    aput-object v2, v1, v3

    const-string v2, "com.android.systemui.pss_task_switcher"

    const/16 v3, 0xb4

    aput-object v2, v1, v3

    const-string v2, "com.android.systemui.qs_custom_tile_click_guaranteed_bug_fix"

    const/16 v3, 0xb5

    aput-object v2, v1, v3

    const-string v2, "com.android.systemui.qs_new_tiles"

    const/16 v3, 0xb6

    aput-object v2, v1, v3

    const-string v2, "com.android.systemui.qs_new_tiles_future"

    const/16 v3, 0xb7

    aput-object v2, v1, v3

    const-string v2, "com.android.systemui.qs_quick_rebind_active_tiles"

    const/16 v3, 0xb8

    aput-object v2, v1, v3

    const-string v2, "com.android.systemui.qs_register_setting_observer_on_bg_thread"

    const/16 v3, 0xb9

    aput-object v2, v1, v3

    const-string v2, "com.android.systemui.qs_tile_detailed_view"

    const/16 v3, 0xba

    aput-object v2, v1, v3

    const-string v2, "com.android.systemui.qs_tile_focus_state"

    const/16 v3, 0xbb

    aput-object v2, v1, v3

    const-string v2, "com.android.systemui.qs_ui_refactor"

    const/16 v3, 0xbc

    aput-object v2, v1, v3

    const-string v2, "com.android.systemui.qs_ui_refactor_compose_fragment"

    const/16 v3, 0xbd

    aput-object v2, v1, v3

    const-string v2, "com.android.systemui.record_issue_qs_tile"

    const/16 v3, 0xbe

    aput-object v2, v1, v3

    const-string v2, "com.android.systemui.redesign_magnification_window_size"

    const/16 v3, 0xbf

    aput-object v2, v1, v3

    const-string v2, "com.android.systemui.refactor_get_current_user"

    const/16 v3, 0xc0

    aput-object v2, v1, v3

    const-string v2, "com.android.systemui.register_battery_controller_receivers_in_corestartable"

    const/16 v3, 0xc1

    aput-object v2, v1, v3

    const-string v2, "com.android.systemui.register_content_observers_async"

    const/16 v3, 0xc2

    aput-object v2, v1, v3

    const-string v2, "com.android.systemui.register_new_wallet_card_in_background"

    const/16 v3, 0xc3

    aput-object v2, v1, v3

    const-string v2, "com.android.systemui.register_wallpaper_notifier_background"

    const/16 v3, 0xc4

    aput-object v2, v1, v3

    const-string v2, "com.android.systemui.relock_with_power_button_immediately"

    const/16 v3, 0xc5

    aput-object v2, v1, v3

    const-string v2, "com.android.systemui.remove_dream_overlay_hide_on_touch"

    const/16 v3, 0xc6

    aput-object v2, v1, v3

    const-string v2, "com.android.systemui.remove_update_listener_in_qs_icon_view_impl"

    const/16 v3, 0xc7

    aput-object v2, v1, v3

    const-string v2, "com.android.systemui.rest_to_unlock"

    const/16 v3, 0xc8

    aput-object v2, v1, v3

    const-string v2, "com.android.systemui.restart_dream_on_unocclude"

    const/16 v3, 0xc9

    aput-object v2, v1, v3

    const-string v2, "com.android.systemui.revamped_bouncer_messages"

    const/16 v3, 0xca

    aput-object v2, v1, v3

    const-string v2, "com.android.systemui.run_fingerprint_detect_on_dismissible_keyguard"

    const/16 v3, 0xcb

    aput-object v2, v1, v3

    const-string v2, "com.android.systemui.save_and_restore_magnification_settings_buttons"

    const/16 v3, 0xcc

    aput-object v2, v1, v3

    const-string v2, "com.android.systemui.scene_container"

    const/16 v3, 0xcd

    aput-object v2, v1, v3

    const-string v2, "com.android.systemui.screenshare_notification_hiding_bug_fix"

    const/16 v3, 0xce

    aput-object v2, v1, v3

    const-string v2, "com.android.systemui.screenshot_action_dismiss_system_windows"

    const/16 v3, 0xcf

    aput-object v2, v1, v3

    const-string v2, "com.android.systemui.screenshot_multidisplay_focus_change"

    const/16 v3, 0xd0

    aput-object v2, v1, v3

    const-string v2, "com.android.systemui.screenshot_policy_split_and_desktop_mode"

    const/16 v3, 0xd1

    aput-object v2, v1, v3

    const-string v2, "com.android.systemui.screenshot_scroll_crop_view_crash_fix"

    const/16 v3, 0xd2

    aput-object v2, v1, v3

    const-string v2, "com.android.systemui.screenshot_ui_controller_refactor"

    const/16 v3, 0xd3

    aput-object v2, v1, v3

    const-string v2, "com.android.systemui.secondary_user_widget_host"

    const/16 v3, 0xd4

    aput-object v2, v1, v3

    const-string v2, "com.android.systemui.settings_ext_register_content_observer_on_bg_thread"

    const/16 v3, 0xd5

    aput-object v2, v1, v3

    const-string v2, "com.android.systemui.shade_expands_on_status_bar_long_press"

    const/16 v3, 0xd6

    aput-object v2, v1, v3

    const-string v2, "com.android.systemui.shade_header_font_update"

    const/16 v3, 0xd7

    aput-object v2, v1, v3

    const-string v2, "com.android.systemui.shade_launch_accessibility"

    const/16 v3, 0xd8

    aput-object v2, v1, v3

    const-string v2, "com.android.systemui.shade_window_goes_around"

    const/16 v3, 0xd9

    aput-object v2, v1, v3

    const-string v2, "com.android.systemui.shaderlib_loading_effect_refactor"

    const/16 v3, 0xda

    aput-object v2, v1, v3

    const-string v2, "com.android.systemui.shortcut_helper_key_glyph"

    const/16 v3, 0xdb

    aput-object v2, v1, v3

    const-string v2, "com.android.systemui.show_audio_sharing_slider_in_volume_panel"

    const/16 v3, 0xdc

    aput-object v2, v1, v3

    const-string v2, "com.android.systemui.show_clipboard_indication"

    const/16 v3, 0xdd

    aput-object v2, v1, v3

    const-string v2, "com.android.systemui.show_locked_by_your_watch_keyguard_indicator"

    const/16 v3, 0xde

    aput-object v2, v1, v3

    const-string v2, "com.android.systemui.show_toast_when_app_control_brightness"

    const/16 v3, 0xdf

    aput-object v2, v1, v3

    const-string v2, "com.android.systemui.sim_pin_bouncer_reset"

    const/16 v3, 0xe0

    aput-object v2, v1, v3

    const-string v2, "com.android.systemui.sim_pin_race_condition_on_restart"

    const/16 v3, 0xe1

    aput-object v2, v1, v3

    const-string v2, "com.android.systemui.sim_pin_use_slot_id"

    const/16 v3, 0xe2

    aput-object v2, v1, v3

    const-string v2, "com.android.systemui.skip_hide_sensitive_notif_animation"

    const/16 v3, 0xe3

    aput-object v2, v1, v3

    const-string v2, "com.android.systemui.slice_broadcast_relay_in_background"

    const/16 v3, 0xe4

    aput-object v2, v1, v3

    const-string v2, "com.android.systemui.slice_manager_binder_call_background"

    const/16 v3, 0xe5

    aput-object v2, v1, v3

    const-string v2, "com.android.systemui.smartspace_lockscreen_viewmodel"

    const/16 v3, 0xe6

    aput-object v2, v1, v3

    const-string v2, "com.android.systemui.smartspace_relocate_to_bottom"

    const/16 v3, 0xe7

    aput-object v2, v1, v3

    const-string v2, "com.android.systemui.smartspace_remoteviews_rendering_fix"

    const/16 v3, 0xe8

    aput-object v2, v1, v3

    const-string v2, "com.android.systemui.smartspace_swipe_event_logging_fix"

    const/16 v3, 0xe9

    aput-object v2, v1, v3

    const-string v2, "com.android.systemui.smartspace_viewpager2"

    const/16 v3, 0xea

    aput-object v2, v1, v3

    const-string v2, "com.android.systemui.sounddose_customization"

    const/16 v3, 0xeb

    aput-object v2, v1, v3

    const-string v2, "com.android.systemui.spatial_model_app_pushback"

    const/16 v3, 0xec

    aput-object v2, v1, v3

    const-string v2, "com.android.systemui.stabilize_heads_up_group_v2"

    const/16 v3, 0xed

    aput-object v2, v1, v3

    const-string v2, "com.android.systemui.status_bar_always_check_underlying_networks"

    const/16 v3, 0xee

    aput-object v2, v1, v3

    const-string v2, "com.android.systemui.status_bar_auto_start_screen_record_chip"

    const/16 v3, 0xef

    aput-object v2, v1, v3

    const-string v2, "com.android.systemui.status_bar_chips_modernization"

    const/16 v3, 0xf0

    aput-object v2, v1, v3

    const-string v2, "com.android.systemui.status_bar_chips_return_animations"

    const/16 v3, 0xf1

    aput-object v2, v1, v3

    const-string v2, "com.android.systemui.status_bar_font_updates"

    const/16 v3, 0xf2

    aput-object v2, v1, v3

    const-string v2, "com.android.systemui.status_bar_mobile_icon_kairos"

    const/16 v3, 0xf3

    aput-object v2, v1, v3

    const-string v2, "com.android.systemui.status_bar_monochrome_icons_fix"

    const/16 v3, 0xf4

    aput-object v2, v1, v3

    const-string v2, "com.android.systemui.status_bar_no_hun_behavior"

    const/16 v3, 0xf5

    aput-object v2, v1, v3

    const-string v2, "com.android.systemui.status_bar_popup_chips"

    const/16 v3, 0xf6

    aput-object v2, v1, v3

    const-string v2, "com.android.systemui.status_bar_root_modernization"

    const/16 v3, 0xf7

    aput-object v2, v1, v3

    const-string v2, "com.android.systemui.status_bar_show_audio_only_projection_chip"

    const/16 v3, 0xf8

    aput-object v2, v1, v3

    const-string v2, "com.android.systemui.status_bar_signal_policy_refactor"

    const/16 v3, 0xf9

    aput-object v2, v1, v3

    const-string v2, "com.android.systemui.status_bar_signal_policy_refactor_ethernet"

    const/16 v3, 0xfa

    aput-object v2, v1, v3

    const-string v2, "com.android.systemui.status_bar_static_inout_indicators"

    const/16 v3, 0xfb

    aput-object v2, v1, v3

    const-string v2, "com.android.systemui.status_bar_stop_updating_window_height"

    const/16 v3, 0xfc

    aput-object v2, v1, v3

    const-string v2, "com.android.systemui.status_bar_swipe_over_chip"

    const/16 v3, 0xfd

    aput-object v2, v1, v3

    const-string v2, "com.android.systemui.status_bar_switch_to_spn_from_data_spn"

    const/16 v3, 0xfe

    aput-object v2, v1, v3

    const-string v2, "com.android.systemui.status_bar_ui_thread"

    const/16 v3, 0xff

    aput-object v2, v1, v3

    const-string v2, "com.android.systemui.status_bar_window_no_custom_touch"

    const/16 v3, 0x100

    aput-object v2, v1, v3

    const-string v2, "com.android.systemui.stoppable_fgs_system_app"

    const/16 v3, 0x101

    aput-object v2, v1, v3

    const-string v2, "com.android.systemui.switch_user_on_bg"

    const/16 v3, 0x102

    aput-object v2, v1, v3

    const-string v2, "com.android.systemui.sysui_teamfood"

    const/16 v3, 0x103

    aput-object v2, v1, v3

    const-string v2, "com.android.systemui.theme_overlay_controller_wakefulness_deprecation"

    const/16 v3, 0x104

    aput-object v2, v1, v3

    const-string v2, "com.android.systemui.transition_race_condition"

    const/16 v3, 0x105

    aput-object v2, v1, v3

    const-string v2, "com.android.systemui.translucent_occluding_activity_fix"

    const/16 v3, 0x106

    aput-object v2, v1, v3

    const-string v2, "com.android.systemui.tv_global_actions_focus"

    const/16 v3, 0x107

    aput-object v2, v1, v3

    const-string v2, "com.android.systemui.udfps_view_performance"

    const/16 v3, 0x108

    aput-object v2, v1, v3

    const-string v2, "com.android.systemui.unfold_animation_background_progress"

    const/16 v3, 0x109

    aput-object v2, v1, v3

    const-string v2, "com.android.systemui.unfold_latency_tracking_fix"

    const/16 v3, 0x10a

    aput-object v2, v1, v3

    const-string v2, "com.android.systemui.update_corner_radius_on_display_changed"

    const/16 v3, 0x10b

    aput-object v2, v1, v3

    const-string v2, "com.android.systemui.update_user_switcher_background"

    const/16 v3, 0x10c

    aput-object v2, v1, v3

    const-string v2, "com.android.systemui.update_window_magnifier_bottom_boundary"

    const/16 v3, 0x10d

    aput-object v2, v1, v3

    const-string v2, "com.android.systemui.use_aad_prox_sensor"

    const/16 v3, 0x10e

    aput-object v2, v1, v3

    const-string v2, "com.android.systemui.use_notif_inflation_thread_for_footer"

    const/16 v3, 0x10f

    aput-object v2, v1, v3

    const-string v2, "com.android.systemui.use_notif_inflation_thread_for_row"

    const/16 v3, 0x110

    aput-object v2, v1, v3

    const-string v2, "com.android.systemui.use_transitions_for_keyguard_occluded"

    const/16 v3, 0x111

    aput-object v2, v1, v3

    const-string v2, "com.android.systemui.use_volume_controller"

    const/16 v3, 0x112

    aput-object v2, v1, v3

    const-string v2, "com.android.systemui.user_aware_settings_repositories"

    const/16 v3, 0x113

    aput-object v2, v1, v3

    const-string v2, "com.android.systemui.user_encrypted_source"

    const/16 v3, 0x114

    aput-object v2, v1, v3

    const-string v2, "com.android.systemui.user_switcher_add_sign_out_option"

    const/16 v3, 0x115

    aput-object v2, v1, v3

    const-string v2, "com.android.systemui.visual_interruptions_refactor"

    const/16 v3, 0x116

    aput-object v2, v1, v3

    const-string v2, "com.android.systemui.volume_redesign"

    const/16 v3, 0x117

    aput-object v2, v1, v3

    const-string v2, ""

    const/16 v3, 0x118

    aput-object v2, v1, v3

    .line 2282
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/systemui/CustomFeatureFlags;->mReadOnlyFlagsSet:Ljava/util/Set;

    .line 17
    iput-object p1, p0, Lcom/android/systemui/CustomFeatureFlags;->mGetValueImpl:Ljava/util/function/BiPredicate;

    .line 18
    return-void
.end method

.method private isOptimizationEnabled()Z
    .locals 1

    .line 1989
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public activityTransitionUseLargestWindow()Z
    .locals 2

    .line 22
    new-instance v0, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "com.android.systemui.activity_transition_use_largest_window"

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public addBlackBackgroundForWindowMagnifier()Z
    .locals 2

    .line 29
    new-instance v0, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "com.android.systemui.add_black_background_for_window_magnifier"

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public alwaysComposeQsUiFragment()Z
    .locals 2

    .line 36
    new-instance v0, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "com.android.systemui.always_compose_qs_ui_fragment"

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public ambientTouchMonitorListenToDisplayChanges()Z
    .locals 2

    .line 43
    new-instance v0, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "com.android.systemui.ambient_touch_monitor_listen_to_display_changes"

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public appClipsBacklinks()Z
    .locals 2

    .line 50
    new-instance v0, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "com.android.systemui.app_clips_backlinks"

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public appShortcutRemovalFix()Z
    .locals 2

    .line 57
    new-instance v0, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "com.android.systemui.app_shortcut_removal_fix"

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public avalancheReplaceHunWhenCritical()Z
    .locals 2

    .line 64
    new-instance v0, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "com.android.systemui.avalanche_replace_hun_when_critical"

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public bindKeyguardMediaVisibility()Z
    .locals 2

    .line 71
    new-instance v0, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "com.android.systemui.bind_keyguard_media_visibility"

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public bouncerUiRevamp()Z
    .locals 2

    .line 78
    new-instance v0, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "com.android.systemui.bouncer_ui_revamp"

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public bouncerUiRevamp2()Z
    .locals 2

    .line 85
    new-instance v0, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "com.android.systemui.bouncer_ui_revamp_2"

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public bpColors()Z
    .locals 2

    .line 92
    new-instance v0, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "com.android.systemui.bp_colors"

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public brightnessSliderFocusState()Z
    .locals 2

    .line 99
    new-instance v0, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "com.android.systemui.brightness_slider_focus_state"

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public checkLockscreenGoneTransition()Z
    .locals 2

    .line 106
    new-instance v0, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "com.android.systemui.check_lockscreen_gone_transition"

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public classicFlagsMultiUser()Z
    .locals 2

    .line 113
    new-instance v0, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "com.android.systemui.classic_flags_multi_user"

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public clipboardImageTimeout()Z
    .locals 2

    .line 120
    new-instance v0, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "com.android.systemui.clipboard_image_timeout"

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public clipboardNoninteractiveOnLockscreen()Z
    .locals 2

    .line 127
    new-instance v0, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "com.android.systemui.clipboard_noninteractive_on_lockscreen"

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public clipboardOverlayMultiuser()Z
    .locals 2

    .line 134
    new-instance v0, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "com.android.systemui.clipboard_overlay_multiuser"

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public clipboardSharedTransitions()Z
    .locals 2

    .line 141
    new-instance v0, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "com.android.systemui.clipboard_shared_transitions"

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public clipboardUseDescriptionMimetype()Z
    .locals 2

    .line 148
    new-instance v0, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "com.android.systemui.clipboard_use_description_mimetype"

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public clockFidgetAnimation()Z
    .locals 2

    .line 155
    new-instance v0, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "com.android.systemui.clock_fidget_animation"

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public communalBouncerDoNotModifyPluginOpen()Z
    .locals 2

    .line 162
    new-instance v0, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "com.android.systemui.communal_bouncer_do_not_modify_plugin_open"

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public communalEditWidgetsActivityFinishFix()Z
    .locals 2

    .line 169
    new-instance v0, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "com.android.systemui.communal_edit_widgets_activity_finish_fix"

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public communalHub()Z
    .locals 2

    .line 176
    new-instance v0, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "com.android.systemui.communal_hub"

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public communalHubUseThreadPoolForWidgets()Z
    .locals 2

    .line 183
    new-instance v0, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "com.android.systemui.communal_hub_use_thread_pool_for_widgets"

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public communalResponsiveGrid()Z
    .locals 2

    .line 190
    new-instance v0, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "com.android.systemui.communal_responsive_grid"

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public communalSceneKtfRefactor()Z
    .locals 2

    .line 197
    new-instance v0, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "com.android.systemui.communal_scene_ktf_refactor"

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public communalStandaloneSupport()Z
    .locals 2

    .line 204
    new-instance v0, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "com.android.systemui.communal_standalone_support"

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public communalTimerFlickerFix()Z
    .locals 2

    .line 211
    new-instance v0, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "com.android.systemui.communal_timer_flicker_fix"

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public communalWidgetResizing()Z
    .locals 2

    .line 218
    new-instance v0, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "com.android.systemui.communal_widget_resizing"

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public communalWidgetTrampolineFix()Z
    .locals 2

    .line 225
    new-instance v0, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "com.android.systemui.communal_widget_trampoline_fix"

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public composeBouncer()Z
    .locals 2

    .line 232
    new-instance v0, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "com.android.systemui.compose_bouncer"

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public confineNotificationTouchToViewWidth()Z
    .locals 2

    .line 239
    new-instance v0, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "com.android.systemui.confine_notification_touch_to_view_width"

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public contAuthPlugin()Z
    .locals 2

    .line 246
    new-instance v0, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "com.android.systemui.cont_auth_plugin"

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public contextualTipsAssistantDismissFix()Z
    .locals 2

    .line 253
    new-instance v0, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "com.android.systemui.contextual_tips_assistant_dismiss_fix"

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public coroutineTracing()Z
    .locals 2

    .line 260
    new-instance v0, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "com.android.systemui.coroutine_tracing"

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public createWindowlessWindowMagnifier()Z
    .locals 2

    .line 267
    new-instance v0, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "com.android.systemui.create_windowless_window_magnifier"

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public debugLiveUpdatesPromoteAll()Z
    .locals 2

    .line 274
    new-instance v0, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "com.android.systemui.debug_live_updates_promote_all"

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public decoupleViewControllerInAnimlib()Z
    .locals 2

    .line 281
    new-instance v0, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "com.android.systemui.decouple_view_controller_in_animlib"

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public delayShowMagnificationButton()Z
    .locals 2

    .line 288
    new-instance v0, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "com.android.systemui.delay_show_magnification_button"

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public desktopEffectsQsTile()Z
    .locals 2

    .line 295
    new-instance v0, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "com.android.systemui.desktop_effects_qs_tile"

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public deviceEntryUdfpsRefactor()Z
    .locals 2

    .line 302
    new-instance v0, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "com.android.systemui.device_entry_udfps_refactor"

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public disableBlurredShadeVisible()Z
    .locals 2

    .line 309
    new-instance v0, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "com.android.systemui.disable_blurred_shade_visible"

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public disableContextualTipsFrequencyCheck()Z
    .locals 2

    .line 316
    new-instance v0, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "com.android.systemui.disable_contextual_tips_frequency_check"

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public disableContextualTipsIosSwitcherCheck()Z
    .locals 2

    .line 323
    new-instance v0, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "com.android.systemui.disable_contextual_tips_ios_switcher_check"

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public disableShadeTrackpadTwoFingerSwipe()Z
    .locals 2

    .line 330
    new-instance v0, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "com.android.systemui.disable_shade_trackpad_two_finger_swipe"

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public doubleTapToSleep()Z
    .locals 2

    .line 337
    new-instance v0, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "com.android.systemui.double_tap_to_sleep"

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public dreamInputSessionPilferOnce()Z
    .locals 2

    .line 344
    new-instance v0, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "com.android.systemui.dream_input_session_pilfer_once"

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public dreamOverlayBouncerSwipeDirectionFiltering()Z
    .locals 2

    .line 351
    new-instance v0, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "com.android.systemui.dream_overlay_bouncer_swipe_direction_filtering"

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public dreamOverlayUpdatedFont()Z
    .locals 2

    .line 358
    new-instance v0, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "com.android.systemui.dream_overlay_updated_font"

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public edgeBackGestureHandlerThread()Z
    .locals 2

    .line 365
    new-instance v0, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "com.android.systemui.edge_back_gesture_handler_thread"

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public edgebackGestureHandlerGetRunningTasksBackground()Z
    .locals 2

    .line 372
    new-instance v0, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "com.android.systemui.edgeback_gesture_handler_get_running_tasks_background"

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public enableBackgroundKeyguardOndrawnCallback()Z
    .locals 2

    .line 379
    new-instance v0, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "com.android.systemui.enable_background_keyguard_ondrawn_callback"

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public enableContextualTipForMuteVolume()Z
    .locals 2

    .line 386
    new-instance v0, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "com.android.systemui.enable_contextual_tip_for_mute_volume"

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public enableContextualTipForPowerOff()Z
    .locals 2

    .line 393
    new-instance v0, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "com.android.systemui.enable_contextual_tip_for_power_off"

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public enableContextualTipForTakeScreenshot()Z
    .locals 2

    .line 400
    new-instance v0, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "com.android.systemui.enable_contextual_tip_for_take_screenshot"

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public enableContextualTips()Z
    .locals 2

    .line 407
    new-instance v0, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "com.android.systemui.enable_contextual_tips"

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public enableEfficientDisplayRepository()Z
    .locals 2

    .line 414
    new-instance v0, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "com.android.systemui.enable_efficient_display_repository"

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public enableLayoutTracing()Z
    .locals 2

    .line 421
    new-instance v0, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "com.android.systemui.enable_layout_tracing"

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public enableUnderlay()Z
    .locals 2

    .line 428
    new-instance v0, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "com.android.systemui.enable_underlay"

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public enableViewCaptureTracing()Z
    .locals 2

    .line 435
    new-instance v0, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "com.android.systemui.enable_view_capture_tracing"

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public enforceBrightnessBaseUserRestriction()Z
    .locals 2

    .line 442
    new-instance v0, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "com.android.systemui.enforce_brightness_base_user_restriction"

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public exampleFlag()Z
    .locals 2

    .line 449
    new-instance v0, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "com.android.systemui.example_flag"

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public expandCollapsePrivacyDialog()Z
    .locals 2

    .line 456
    new-instance v0, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "com.android.systemui.expand_collapse_privacy_dialog"

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public expandHeadsUpOnInlineReply()Z
    .locals 2

    .line 463
    new-instance v0, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "com.android.systemui.expand_heads_up_on_inline_reply"

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public expandedPrivacyIndicatorsOnLargeScreen()Z
    .locals 2

    .line 470
    new-instance v0, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "com.android.systemui.expanded_privacy_indicators_on_large_screen"

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public extendedAppsShortcutCategory()Z
    .locals 2

    .line 477
    new-instance v0, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "com.android.systemui.extended_apps_shortcut_category"

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public faceMessageDeferUpdate()Z
    .locals 2

    .line 484
    new-instance v0, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "com.android.systemui.face_message_defer_update"

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public faceScanningAnimationNpeFix()Z
    .locals 2

    .line 491
    new-instance v0, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "com.android.systemui.face_scanning_animation_npe_fix"

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public fasterUnlockTransition()Z
    .locals 2

    .line 498
    new-instance v0, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "com.android.systemui.faster_unlock_transition"

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public fetchBookmarksXmlKeyboardShortcuts()Z
    .locals 2

    .line 505
    new-instance v0, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "com.android.systemui.fetch_bookmarks_xml_keyboard_shortcuts"

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public fixImageWallpaperCrashSurfaceAlreadyReleased()Z
    .locals 2

    .line 512
    new-instance v0, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "com.android.systemui.fix_image_wallpaper_crash_surface_already_released"

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public fixScreenshotActionDismissSystemWindows()Z
    .locals 2

    .line 519
    new-instance v0, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "com.android.systemui.fix_screenshot_action_dismiss_system_windows"

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public floatingMenuAnimatedTuck()Z
    .locals 2

    .line 526
    new-instance v0, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "com.android.systemui.floating_menu_animated_tuck"

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public floatingMenuDisplayCutoutSupport()Z
    .locals 2

    .line 533
    new-instance v0, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "com.android.systemui.floating_menu_display_cutout_support"

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public floatingMenuDragToEdit()Z
    .locals 2

    .line 540
    new-instance v0, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "com.android.systemui.floating_menu_drag_to_edit"

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public floatingMenuDragToHide()Z
    .locals 2

    .line 547
    new-instance v0, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "com.android.systemui.floating_menu_drag_to_hide"

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public floatingMenuHearingDeviceStatusIcon()Z
    .locals 2

    .line 554
    new-instance v0, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "com.android.systemui.floating_menu_hearing_device_status_icon"

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public floatingMenuImeDisplacementAnimation()Z
    .locals 2

    .line 561
    new-instance v0, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "com.android.systemui.floating_menu_ime_displacement_animation"

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public floatingMenuNarrowTargetContentObserver()Z
    .locals 2

    .line 568
    new-instance v0, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "com.android.systemui.floating_menu_narrow_target_content_observer"

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public floatingMenuNotifyTargetsChangedOnStrictDiff()Z
    .locals 2

    .line 575
    new-instance v0, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "com.android.systemui.floating_menu_notify_targets_changed_on_strict_diff"

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public floatingMenuOverlapsNavBarsFlag()Z
    .locals 2

    .line 582
    new-instance v0, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "com.android.systemui.floating_menu_overlaps_nav_bars_flag"

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public floatingMenuRadiiAnimation()Z
    .locals 2

    .line 589
    new-instance v0, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "com.android.systemui.floating_menu_radii_animation"

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public getConnectedDeviceNameUnsynchronized()Z
    .locals 2

    .line 596
    new-instance v0, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "com.android.systemui.get_connected_device_name_unsynchronized"

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public getFlagNames()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1997
    const/16 v0, 0x118

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "com.android.systemui.activity_transition_use_largest_window"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "com.android.systemui.add_black_background_for_window_magnifier"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "com.android.systemui.always_compose_qs_ui_fragment"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "com.android.systemui.ambient_touch_monitor_listen_to_display_changes"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string v1, "com.android.systemui.app_clips_backlinks"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string v1, "com.android.systemui.app_shortcut_removal_fix"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string v1, "com.android.systemui.avalanche_replace_hun_when_critical"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string v1, "com.android.systemui.bind_keyguard_media_visibility"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-string v1, "com.android.systemui.bouncer_ui_revamp"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const-string v1, "com.android.systemui.bouncer_ui_revamp_2"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    const-string v1, "com.android.systemui.bp_colors"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    const-string v1, "com.android.systemui.brightness_slider_focus_state"

    const/16 v2, 0xb

    aput-object v1, v0, v2

    const-string v1, "com.android.systemui.check_lockscreen_gone_transition"

    const/16 v2, 0xc

    aput-object v1, v0, v2

    const-string v1, "com.android.systemui.classic_flags_multi_user"

    const/16 v2, 0xd

    aput-object v1, v0, v2

    const-string v1, "com.android.systemui.clipboard_image_timeout"

    const/16 v2, 0xe

    aput-object v1, v0, v2

    const-string v1, "com.android.systemui.clipboard_noninteractive_on_lockscreen"

    const/16 v2, 0xf

    aput-object v1, v0, v2

    const-string v1, "com.android.systemui.clipboard_overlay_multiuser"

    const/16 v2, 0x10

    aput-object v1, v0, v2

    const-string v1, "com.android.systemui.clipboard_shared_transitions"

    const/16 v2, 0x11

    aput-object v1, v0, v2

    const-string v1, "com.android.systemui.clipboard_use_description_mimetype"

    const/16 v2, 0x12

    aput-object v1, v0, v2

    const-string v1, "com.android.systemui.clock_fidget_animation"

    const/16 v2, 0x13

    aput-object v1, v0, v2

    const-string v1, "com.android.systemui.communal_bouncer_do_not_modify_plugin_open"

    const/16 v2, 0x14

    aput-object v1, v0, v2

    const-string v1, "com.android.systemui.communal_edit_widgets_activity_finish_fix"

    const/16 v2, 0x15

    aput-object v1, v0, v2

    const-string v1, "com.android.systemui.communal_hub"

    const/16 v2, 0x16

    aput-object v1, v0, v2

    const-string v1, "com.android.systemui.communal_hub_use_thread_pool_for_widgets"

    const/16 v2, 0x17

    aput-object v1, v0, v2

    const-string v1, "com.android.systemui.communal_responsive_grid"

    const/16 v2, 0x18

    aput-object v1, v0, v2

    const-string v1, "com.android.systemui.communal_scene_ktf_refactor"

    const/16 v2, 0x19

    aput-object v1, v0, v2

    const-string v1, "com.android.systemui.communal_standalone_support"

    const/16 v2, 0x1a

    aput-object v1, v0, v2

    const-string v1, "com.android.systemui.communal_timer_flicker_fix"

    const/16 v2, 0x1b

    aput-object v1, v0, v2

    const-string v1, "com.android.systemui.communal_widget_resizing"

    const/16 v2, 0x1c

    aput-object v1, v0, v2

    const-string v1, "com.android.systemui.communal_widget_trampoline_fix"

    const/16 v2, 0x1d

    aput-object v1, v0, v2

    const-string v1, "com.android.systemui.compose_bouncer"

    const/16 v2, 0x1e

    aput-object v1, v0, v2

    const-string v1, "com.android.systemui.confine_notification_touch_to_view_width"

    const/16 v2, 0x1f

    aput-object v1, v0, v2

    const-string v1, "com.android.systemui.cont_auth_plugin"

    const/16 v2, 0x20

    aput-object v1, v0, v2

    const-string v1, "com.android.systemui.contextual_tips_assistant_dismiss_fix"

    const/16 v2, 0x21

    aput-object v1, v0, v2

    const-string v1, "com.android.systemui.coroutine_tracing"

    const/16 v2, 0x22

    aput-object v1, v0, v2

    const-string v1, "com.android.systemui.create_windowless_window_magnifier"

    const/16 v2, 0x23

    aput-object v1, v0, v2

    const-string v1, "com.android.systemui.debug_live_updates_promote_all"

    const/16 v2, 0x24

    aput-object v1, v0, v2

    const-string v1, "com.android.systemui.decouple_view_controller_in_animlib"

    const/16 v2, 0x25

    aput-object v1, v0, v2

    const-string v1, "com.android.systemui.delay_show_magnification_button"

    const/16 v2, 0x26

    aput-object v1, v0, v2

    const-string v1, "com.android.systemui.desktop_effects_qs_tile"

    const/16 v2, 0x27

    aput-object v1, v0, v2

    const-string v1, "com.android.systemui.device_entry_udfps_refactor"

    const/16 v2, 0x28

    aput-object v1, v0, v2

    const-string v1, "com.android.systemui.disable_blurred_shade_visible"

    const/16 v2, 0x29

    aput-object v1, v0, v2

    const-string v1, "com.android.systemui.disable_contextual_tips_frequency_check"

    const/16 v2, 0x2a

    aput-object v1, v0, v2

    const-string v1, "com.android.systemui.disable_contextual_tips_ios_switcher_check"

    const/16 v2, 0x2b

    aput-object v1, v0, v2

    const-string v1, "com.android.systemui.disable_shade_trackpad_two_finger_swipe"

    const/16 v2, 0x2c

    aput-object v1, v0, v2

    const-string v1, "com.android.systemui.double_tap_to_sleep"

    const/16 v2, 0x2d

    aput-object v1, v0, v2

    const-string v1, "com.android.systemui.dream_input_session_pilfer_once"

    const/16 v2, 0x2e

    aput-object v1, v0, v2

    const-string v1, "com.android.systemui.dream_overlay_bouncer_swipe_direction_filtering"

    const/16 v2, 0x2f

    aput-object v1, v0, v2

    const-string v1, "com.android.systemui.dream_overlay_updated_font"

    const/16 v2, 0x30

    aput-object v1, v0, v2

    const-string v1, "com.android.systemui.edge_back_gesture_handler_thread"

    const/16 v2, 0x31

    aput-object v1, v0, v2

    const-string v1, "com.android.systemui.edgeback_gesture_handler_get_running_tasks_background"

    const/16 v2, 0x32

    aput-object v1, v0, v2

    const-string v1, "com.android.systemui.enable_background_keyguard_ondrawn_callback"

    const/16 v2, 0x33

    aput-object v1, v0, v2

    const-string v1, "com.android.systemui.enable_contextual_tip_for_mute_volume"

    const/16 v2, 0x34

    aput-object v1, v0, v2

    const-string v1, "com.android.systemui.enable_contextual_tip_for_power_off"

    const/16 v2, 0x35

    aput-object v1, v0, v2

    const-string v1, "com.android.systemui.enable_contextual_tip_for_take_screenshot"

    const/16 v2, 0x36

    aput-object v1, v0, v2

    const-string v1, "com.android.systemui.enable_contextual_tips"

    const/16 v2, 0x37

    aput-object v1, v0, v2

    const-string v1, "com.android.systemui.enable_efficient_display_repository"

    const/16 v2, 0x38

    aput-object v1, v0, v2

    const-string v1, "com.android.systemui.enable_layout_tracing"

    const/16 v2, 0x39

    aput-object v1, v0, v2

    const-string v1, "com.android.systemui.enable_underlay"

    const/16 v2, 0x3a

    aput-object v1, v0, v2

    const-string v1, "com.android.systemui.enable_view_capture_tracing"

    const/16 v2, 0x3b

    aput-object v1, v0, v2

    const-string v1, "com.android.systemui.enforce_brightness_base_user_restriction"

    const/16 v2, 0x3c

    aput-object v1, v0, v2

    const-string v1, "com.android.systemui.example_flag"

    const/16 v2, 0x3d

    aput-object v1, v0, v2

    const-string v1, "com.android.systemui.expand_collapse_privacy_dialog"

    const/16 v2, 0x3e

    aput-object v1, v0, v2

    const-string v1, "com.android.systemui.expand_heads_up_on_inline_reply"

    const/16 v2, 0x3f

    aput-object v1, v0, v2

    const-string v1, "com.android.systemui.expanded_privacy_indicators_on_large_screen"

    const/16 v2, 0x40

    aput-object v1, v0, v2

    const-string v1, "com.android.systemui.extended_apps_shortcut_category"

    const/16 v2, 0x41

    aput-object v1, v0, v2

    const-string v1, "com.android.systemui.face_message_defer_update"

    const/16 v2, 0x42

    aput-object v1, v0, v2

    const-string v1, "com.android.systemui.face_scanning_animation_npe_fix"

    const/16 v2, 0x43

    aput-object v1, v0, v2

    const-string v1, "com.android.systemui.faster_unlock_transition"

    const/16 v2, 0x44

    aput-object v1, v0, v2

    const-string v1, "com.android.systemui.fetch_bookmarks_xml_keyboard_shortcuts"

    const/16 v2, 0x45

    aput-object v1, v0, v2

    const-string v1, "com.android.systemui.fix_image_wallpaper_crash_surface_already_released"

    const/16 v2, 0x46

    aput-object v1, v0, v2

    const-string v1, "com.android.systemui.fix_screenshot_action_dismiss_system_windows"

    const/16 v2, 0x47

    aput-object v1, v0, v2

    const-string v1, "com.android.systemui.floating_menu_animated_tuck"

    const/16 v2, 0x48

    aput-object v1, v0, v2

    const-string v1, "com.android.systemui.floating_menu_display_cutout_support"

    const/16 v2, 0x49

    aput-object v1, v0, v2

    const-string v1, "com.android.systemui.floating_menu_drag_to_edit"

    const/16 v2, 0x4a

    aput-object v1, v0, v2

    const-string v1, "com.android.systemui.floating_menu_drag_to_hide"

    const/16 v2, 0x4b

    aput-object v1, v0, v2

    const-string v1, "com.android.systemui.floating_menu_hearing_device_status_icon"

    const/16 v2, 0x4c

    aput-object v1, v0, v2

    const-string v1, "com.android.systemui.floating_menu_ime_displacement_animation"

    const/16 v2, 0x4d

    aput-object v1, v0, v2

    const-string v1, "com.android.systemui.floating_menu_narrow_target_content_observer"

    const/16 v2, 0x4e

    aput-object v1, v0, v2

    const-string v1, "com.android.systemui.floating_menu_notify_targets_changed_on_strict_diff"

    const/16 v2, 0x4f

    aput-object v1, v0, v2

    const-string v1, "com.android.systemui.floating_menu_overlaps_nav_bars_flag"

    const/16 v2, 0x50

    aput-object v1, v0, v2

    const-string v1, "com.android.systemui.floating_menu_radii_animation"

    const/16 v2, 0x51

    aput-object v1, v0, v2

    const-string v1, "com.android.systemui.get_connected_device_name_unsynchronized"

    const/16 v2, 0x52

    aput-object v1, v0, v2

    const-string v1, "com.android.systemui.glanceable_hub_allow_keyguard_when_dreaming"

    const/16 v2, 0x53

    aput-object v1, v0, v2

    const-string v1, "com.android.systemui.glanceable_hub_blurred_background"

    const/16 v2, 0x54

    aput-object v1, v0, v2

    const-string v1, "com.android.systemui.glanceable_hub_direct_edit_mode"

    const/16 v2, 0x55

    aput-object v1, v0, v2

    const-string v1, "com.android.systemui.glanceable_hub_v2"

    const/16 v2, 0x56

    aput-object v1, v0, v2

    const-string v1, "com.android.systemui.glanceable_hub_v2_resources"

    const/16 v2, 0x57

    aput-object v1, v0, v2

    const-string v1, "com.android.systemui.haptics_for_compose_sliders"

    const/16 v2, 0x58

    aput-object v1, v0, v2

    const-string v1, "com.android.systemui.hardware_color_styles"

    const/16 v2, 0x59

    aput-object v1, v0, v2

    const-string v1, "com.android.systemui.hearing_aids_qs_tile_dialog"

    const/16 v2, 0x5a

    aput-object v1, v0, v2

    const-string v1, "com.android.systemui.hearing_devices_dialog_related_tools"

    const/16 v2, 0x5b

    aput-object v1, v0, v2

    const-string v1, "com.android.systemui.hide_ringer_button_in_single_volume_mode"

    const/16 v2, 0x5c

    aput-object v1, v0, v2

    const-string v1, "com.android.systemui.home_controls_dream_hsum"

    const/16 v2, 0x5d

    aput-object v1, v0, v2

    const-string v1, "com.android.systemui.hub_edit_mode_touch_adjustments"

    const/16 v2, 0x5e

    aput-object v1, v0, v2

    const-string v1, "com.android.systemui.hubmode_fullscreen_vertical_swipe"

    const/16 v2, 0x5f

    aput-object v1, v0, v2

    const-string v1, "com.android.systemui.hubmode_fullscreen_vertical_swipe_fix"

    const/16 v2, 0x60

    aput-object v1, v0, v2

    const-string v1, "com.android.systemui.icon_refresh_2025"

    const/16 v2, 0x61

    aput-object v1, v0, v2

    const-string v1, "com.android.systemui.ignore_touches_next_to_notification_shelf"

    const/16 v2, 0x62

    aput-object v1, v0, v2

    const-string v1, "com.android.systemui.indication_text_a11y_fix"

    const/16 v2, 0x63

    aput-object v1, v0, v2

    const-string v1, "com.android.systemui.keyboard_docking_indicator"

    const/16 v2, 0x64

    aput-object v1, v0, v2

    const-string v1, "com.android.systemui.keyboard_shortcut_helper_rewrite"

    const/16 v2, 0x65

    aput-object v1, v0, v2

    const-string v1, "com.android.systemui.keyboard_shortcut_helper_shortcut_customizer"

    const/16 v2, 0x66

    aput-object v1, v0, v2

    const-string v1, "com.android.systemui.keyboard_touchpad_contextual_education"

    const/16 v2, 0x67

    aput-object v1, v0, v2

    const-string v1, "com.android.systemui.keyguard_transition_force_finish_on_screen_off"

    const/16 v2, 0x68

    aput-object v1, v0, v2

    const-string v1, "com.android.systemui.keyguard_wm_reorder_atms_calls"

    const/16 v2, 0x69

    aput-object v1, v0, v2

    const-string v1, "com.android.systemui.keyguard_wm_state_refactor"

    const/16 v2, 0x6a

    aput-object v1, v0, v2

    const-string v1, "com.android.systemui.lockscreen_font"

    const/16 v2, 0x6b

    aput-object v1, v0, v2

    const-string v1, "com.android.systemui.low_light_clock_dream"

    const/16 v2, 0x6c

    aput-object v1, v0, v2

    const-string v1, "com.android.systemui.magnetic_notification_swipes"

    const/16 v2, 0x6d

    aput-object v1, v0, v2

    const-string v1, "com.android.systemui.media_controls_a11y_colors"

    const/16 v2, 0x6e

    aput-object v1, v0, v2

    const-string v1, "com.android.systemui.media_controls_button_media3"

    const/16 v2, 0x6f

    aput-object v1, v0, v2

    const-string v1, "com.android.systemui.media_controls_button_media3_placement"

    const/16 v2, 0x70

    aput-object v1, v0, v2

    const-string v1, "com.android.systemui.media_controls_device_manager_background_execution"

    const/16 v2, 0x71

    aput-object v1, v0, v2

    const-string v1, "com.android.systemui.media_controls_drawables_reuse_bugfix"

    const/16 v2, 0x72

    aput-object v1, v0, v2

    const-string v1, "com.android.systemui.media_controls_lockscreen_shade_bug_fix"

    const/16 v2, 0x73

    aput-object v1, v0, v2

    const-string v1, "com.android.systemui.media_controls_ui_update"

    const/16 v2, 0x74

    aput-object v1, v0, v2

    const-string v1, "com.android.systemui.media_controls_umo_inflation_in_background"

    const/16 v2, 0x75

    aput-object v1, v0, v2

    const-string v1, "com.android.systemui.media_controls_user_initiated_deleteintent"

    const/16 v2, 0x76

    aput-object v1, v0, v2

    const-string v1, "com.android.systemui.media_load_metadata_via_media_data_loader"

    const/16 v2, 0x77

    aput-object v1, v0, v2

    const-string v1, "com.android.systemui.media_lockscreen_launch_animation"

    const/16 v2, 0x78

    aput-object v1, v0, v2

    const-string v1, "com.android.systemui.media_projection_dialog_behind_lockscreen"

    const/16 v2, 0x79

    aput-object v1, v0, v2

    const-string v1, "com.android.systemui.media_projection_grey_error_text"

    const/16 v2, 0x7a

    aput-object v1, v0, v2

    const-string v1, "com.android.systemui.media_projection_request_attribution_fix"

    const/16 v2, 0x7b

    aput-object v1, v0, v2

    const-string v1, "com.android.systemui.modes_ui_dialog_paging"

    const/16 v2, 0x7c

    aput-object v1, v0, v2

    const-string v1, "com.android.systemui.move_transition_animation_layer"

    const/16 v2, 0x7d

    aput-object v1, v0, v2

    const-string v1, "com.android.systemui.msdl_feedback"

    const/16 v2, 0x7e

    aput-object v1, v0, v2

    const-string v1, "com.android.systemui.multiuser_wifi_picker_tracker_support"

    const/16 v2, 0x7f

    aput-object v1, v0, v2

    const-string v1, "com.android.systemui.new_aod_transition"

    const/16 v2, 0x80

    aput-object v1, v0, v2

    const-string v1, "com.android.systemui.new_volume_panel"

    const/16 v2, 0x81

    aput-object v1, v0, v2

    const-string v1, "com.android.systemui.non_touchscreen_devices_bypass_falsing"

    const/16 v2, 0x82

    aput-object v1, v0, v2

    const-string v1, "com.android.systemui.notes_role_qs_tile"

    const/16 v2, 0x83

    aput-object v1, v0, v2

    const-string v1, "com.android.systemui.notification_add_x_on_hover_to_dismiss"

    const/16 v2, 0x84

    aput-object v1, v0, v2

    const-string v1, "com.android.systemui.notification_ambient_suppression_after_inflation"

    const/16 v2, 0x85

    aput-object v1, v0, v2

    const-string v1, "com.android.systemui.notification_animated_actions_treatment"

    const/16 v2, 0x86

    aput-object v1, v0, v2

    const-string v1, "com.android.systemui.notification_appear_nonlinear"

    const/16 v2, 0x87

    aput-object v1, v0, v2

    const-string v1, "com.android.systemui.notification_async_group_header_inflation"

    const/16 v2, 0x88

    aput-object v1, v0, v2

    const-string v1, "com.android.systemui.notification_async_hybrid_view_inflation"

    const/16 v2, 0x89

    aput-object v1, v0, v2

    const-string v1, "com.android.systemui.notification_avalanche_suppression"

    const/16 v2, 0x8a

    aput-object v1, v0, v2

    const-string v1, "com.android.systemui.notification_avalanche_throttle_hun"

    const/16 v2, 0x8b

    aput-object v1, v0, v2

    const-string v1, "com.android.systemui.notification_background_tint_optimization"

    const/16 v2, 0x8c

    aput-object v1, v0, v2

    const-string v1, "com.android.systemui.notification_bundle_ui"

    const/16 v2, 0x8d

    aput-object v1, v0, v2

    const-string v1, "com.android.systemui.notification_color_update_logger"

    const/16 v2, 0x8e

    aput-object v1, v0, v2

    const-string v1, "com.android.systemui.notification_content_alpha_optimization"

    const/16 v2, 0x8f

    aput-object v1, v0, v2

    const-string v1, "com.android.systemui.notification_footer_background_tint_optimization"

    const/16 v2, 0x90

    aput-object v1, v0, v2

    const-string v1, "com.android.systemui.notification_over_expansion_clipping_fix"

    const/16 v2, 0x91

    aput-object v1, v0, v2

    const-string v1, "com.android.systemui.notification_reentrant_dismiss"

    const/16 v2, 0x92

    aput-object v1, v0, v2

    const-string v1, "com.android.systemui.notification_row_accessibility_expanded"

    const/16 v2, 0x93

    aput-object v1, v0, v2

    const-string v1, "com.android.systemui.notification_row_content_binder_refactor"

    const/16 v2, 0x94

    aput-object v1, v0, v2

    const-string v1, "com.android.systemui.notification_row_transparency"

    const/16 v2, 0x95

    aput-object v1, v0, v2

    const-string v1, "com.android.systemui.notification_row_user_context"

    const/16 v2, 0x96

    aput-object v1, v0, v2

    const-string v1, "com.android.systemui.notification_shade_blur"

    const/16 v2, 0x97

    aput-object v1, v0, v2

    const-string v1, "com.android.systemui.notification_shade_ui_thread"

    const/16 v2, 0x98

    aput-object v1, v0, v2

    const-string v1, "com.android.systemui.notification_skip_silent_updates"

    const/16 v2, 0x99

    aput-object v1, v0, v2

    const-string v1, "com.android.systemui.notification_transparent_header_fix"

    const/16 v2, 0x9a

    aput-object v1, v0, v2

    const-string v1, "com.android.systemui.notification_view_flipper_pausing_v2"

    const/16 v2, 0x9b

    aput-object v1, v0, v2

    const-string v1, "com.android.systemui.notifications_background_icons"

    const/16 v2, 0x9c

    aput-object v1, v0, v2

    const-string v1, "com.android.systemui.notifications_footer_visibility_fix"

    const/16 v2, 0x9d

    aput-object v1, v0, v2

    const-string v1, "com.android.systemui.notifications_hide_on_display_switch"

    const/16 v2, 0x9e

    aput-object v1, v0, v2

    const-string v1, "com.android.systemui.notifications_hun_shared_animation_values"

    const/16 v2, 0x9f

    aput-object v1, v0, v2

    const-string v1, "com.android.systemui.notifications_icon_container_refactor"

    const/16 v2, 0xa0

    aput-object v1, v0, v2

    const-string v1, "com.android.systemui.notifications_launch_radius"

    const/16 v2, 0xa1

    aput-object v1, v0, v2

    const-string v1, "com.android.systemui.notifications_live_data_store_refactor"

    const/16 v2, 0xa2

    aput-object v1, v0, v2

    const-string v1, "com.android.systemui.notifications_pinned_hun_in_shade"

    const/16 v2, 0xa3

    aput-object v1, v0, v2

    const-string v1, "com.android.systemui.notifications_redesign_footer_view"

    const/16 v2, 0xa4

    aput-object v1, v0, v2

    const-string v1, "com.android.systemui.notifications_redesign_guts"

    const/16 v2, 0xa5

    aput-object v1, v0, v2

    const-string v1, "com.android.systemui.notify_password_text_view_user_activity_in_background"

    const/16 v2, 0xa6

    aput-object v1, v0, v2

    const-string v1, "com.android.systemui.notify_power_manager_user_activity_background"

    const/16 v2, 0xa7

    aput-object v1, v0, v2

    const-string v1, "com.android.systemui.only_show_media_stream_slider_in_single_volume_mode"

    const/16 v2, 0xa8

    aput-object v1, v0, v2

    const-string v1, "com.android.systemui.output_switcher_redesign"

    const/16 v2, 0xa9

    aput-object v1, v0, v2

    const-string v1, "com.android.systemui.override_suppress_overlay_condition"

    const/16 v2, 0xaa

    aput-object v1, v0, v2

    const-string v1, "com.android.systemui.permission_helper_inline_ui_rich_ongoing"

    const/16 v2, 0xab

    aput-object v1, v0, v2

    const-string v1, "com.android.systemui.permission_helper_ui_rich_ongoing"

    const/16 v2, 0xac

    aput-object v1, v0, v2

    const-string v1, "com.android.systemui.physical_notification_movement"

    const/16 v2, 0xad

    aput-object v1, v0, v2

    const-string v1, "com.android.systemui.pin_input_field_styled_focus_state"

    const/16 v2, 0xae

    aput-object v1, v0, v2

    const-string v1, "com.android.systemui.predictive_back_animate_shade"

    const/16 v2, 0xaf

    aput-object v1, v0, v2

    const-string v1, "com.android.systemui.predictive_back_delay_wm_transition"

    const/16 v2, 0xb0

    aput-object v1, v0, v2

    const-string v1, "com.android.systemui.priority_people_section"

    const/16 v2, 0xb1

    aput-object v1, v0, v2

    const-string v1, "com.android.systemui.promote_notifications_automatically"

    const/16 v2, 0xb2

    aput-object v1, v0, v2

    const-string v1, "com.android.systemui.pss_app_selector_recents_split_screen"

    const/16 v2, 0xb3

    aput-object v1, v0, v2

    const-string v1, "com.android.systemui.pss_task_switcher"

    const/16 v2, 0xb4

    aput-object v1, v0, v2

    const-string v1, "com.android.systemui.qs_custom_tile_click_guaranteed_bug_fix"

    const/16 v2, 0xb5

    aput-object v1, v0, v2

    const-string v1, "com.android.systemui.qs_new_tiles"

    const/16 v2, 0xb6

    aput-object v1, v0, v2

    const-string v1, "com.android.systemui.qs_new_tiles_future"

    const/16 v2, 0xb7

    aput-object v1, v0, v2

    const-string v1, "com.android.systemui.qs_quick_rebind_active_tiles"

    const/16 v2, 0xb8

    aput-object v1, v0, v2

    const-string v1, "com.android.systemui.qs_register_setting_observer_on_bg_thread"

    const/16 v2, 0xb9

    aput-object v1, v0, v2

    const-string v1, "com.android.systemui.qs_tile_detailed_view"

    const/16 v2, 0xba

    aput-object v1, v0, v2

    const-string v1, "com.android.systemui.qs_tile_focus_state"

    const/16 v2, 0xbb

    aput-object v1, v0, v2

    const-string v1, "com.android.systemui.qs_ui_refactor"

    const/16 v2, 0xbc

    aput-object v1, v0, v2

    const-string v1, "com.android.systemui.qs_ui_refactor_compose_fragment"

    const/16 v2, 0xbd

    aput-object v1, v0, v2

    const-string v1, "com.android.systemui.record_issue_qs_tile"

    const/16 v2, 0xbe

    aput-object v1, v0, v2

    const-string v1, "com.android.systemui.redesign_magnification_window_size"

    const/16 v2, 0xbf

    aput-object v1, v0, v2

    const-string v1, "com.android.systemui.refactor_get_current_user"

    const/16 v2, 0xc0

    aput-object v1, v0, v2

    const-string v1, "com.android.systemui.register_battery_controller_receivers_in_corestartable"

    const/16 v2, 0xc1

    aput-object v1, v0, v2

    const-string v1, "com.android.systemui.register_content_observers_async"

    const/16 v2, 0xc2

    aput-object v1, v0, v2

    const-string v1, "com.android.systemui.register_new_wallet_card_in_background"

    const/16 v2, 0xc3

    aput-object v1, v0, v2

    const-string v1, "com.android.systemui.register_wallpaper_notifier_background"

    const/16 v2, 0xc4

    aput-object v1, v0, v2

    const-string v1, "com.android.systemui.relock_with_power_button_immediately"

    const/16 v2, 0xc5

    aput-object v1, v0, v2

    const-string v1, "com.android.systemui.remove_dream_overlay_hide_on_touch"

    const/16 v2, 0xc6

    aput-object v1, v0, v2

    const-string v1, "com.android.systemui.remove_update_listener_in_qs_icon_view_impl"

    const/16 v2, 0xc7

    aput-object v1, v0, v2

    const-string v1, "com.android.systemui.rest_to_unlock"

    const/16 v2, 0xc8

    aput-object v1, v0, v2

    const-string v1, "com.android.systemui.restart_dream_on_unocclude"

    const/16 v2, 0xc9

    aput-object v1, v0, v2

    const-string v1, "com.android.systemui.revamped_bouncer_messages"

    const/16 v2, 0xca

    aput-object v1, v0, v2

    const-string v1, "com.android.systemui.run_fingerprint_detect_on_dismissible_keyguard"

    const/16 v2, 0xcb

    aput-object v1, v0, v2

    const-string v1, "com.android.systemui.save_and_restore_magnification_settings_buttons"

    const/16 v2, 0xcc

    aput-object v1, v0, v2

    const-string v1, "com.android.systemui.scene_container"

    const/16 v2, 0xcd

    aput-object v1, v0, v2

    const-string v1, "com.android.systemui.screenshare_notification_hiding_bug_fix"

    const/16 v2, 0xce

    aput-object v1, v0, v2

    const-string v1, "com.android.systemui.screenshot_action_dismiss_system_windows"

    const/16 v2, 0xcf

    aput-object v1, v0, v2

    const-string v1, "com.android.systemui.screenshot_multidisplay_focus_change"

    const/16 v2, 0xd0

    aput-object v1, v0, v2

    const-string v1, "com.android.systemui.screenshot_policy_split_and_desktop_mode"

    const/16 v2, 0xd1

    aput-object v1, v0, v2

    const-string v1, "com.android.systemui.screenshot_scroll_crop_view_crash_fix"

    const/16 v2, 0xd2

    aput-object v1, v0, v2

    const-string v1, "com.android.systemui.screenshot_ui_controller_refactor"

    const/16 v2, 0xd3

    aput-object v1, v0, v2

    const-string v1, "com.android.systemui.secondary_user_widget_host"

    const/16 v2, 0xd4

    aput-object v1, v0, v2

    const-string v1, "com.android.systemui.settings_ext_register_content_observer_on_bg_thread"

    const/16 v2, 0xd5

    aput-object v1, v0, v2

    const-string v1, "com.android.systemui.shade_expands_on_status_bar_long_press"

    const/16 v2, 0xd6

    aput-object v1, v0, v2

    const-string v1, "com.android.systemui.shade_header_font_update"

    const/16 v2, 0xd7

    aput-object v1, v0, v2

    const-string v1, "com.android.systemui.shade_launch_accessibility"

    const/16 v2, 0xd8

    aput-object v1, v0, v2

    const-string v1, "com.android.systemui.shade_window_goes_around"

    const/16 v2, 0xd9

    aput-object v1, v0, v2

    const-string v1, "com.android.systemui.shaderlib_loading_effect_refactor"

    const/16 v2, 0xda

    aput-object v1, v0, v2

    const-string v1, "com.android.systemui.shortcut_helper_key_glyph"

    const/16 v2, 0xdb

    aput-object v1, v0, v2

    const-string v1, "com.android.systemui.show_audio_sharing_slider_in_volume_panel"

    const/16 v2, 0xdc

    aput-object v1, v0, v2

    const-string v1, "com.android.systemui.show_clipboard_indication"

    const/16 v2, 0xdd

    aput-object v1, v0, v2

    const-string v1, "com.android.systemui.show_locked_by_your_watch_keyguard_indicator"

    const/16 v2, 0xde

    aput-object v1, v0, v2

    const-string v1, "com.android.systemui.show_toast_when_app_control_brightness"

    const/16 v2, 0xdf

    aput-object v1, v0, v2

    const-string v1, "com.android.systemui.sim_pin_bouncer_reset"

    const/16 v2, 0xe0

    aput-object v1, v0, v2

    const-string v1, "com.android.systemui.sim_pin_race_condition_on_restart"

    const/16 v2, 0xe1

    aput-object v1, v0, v2

    const-string v1, "com.android.systemui.sim_pin_use_slot_id"

    const/16 v2, 0xe2

    aput-object v1, v0, v2

    const-string v1, "com.android.systemui.skip_hide_sensitive_notif_animation"

    const/16 v2, 0xe3

    aput-object v1, v0, v2

    const-string v1, "com.android.systemui.slice_broadcast_relay_in_background"

    const/16 v2, 0xe4

    aput-object v1, v0, v2

    const-string v1, "com.android.systemui.slice_manager_binder_call_background"

    const/16 v2, 0xe5

    aput-object v1, v0, v2

    const-string v1, "com.android.systemui.smartspace_lockscreen_viewmodel"

    const/16 v2, 0xe6

    aput-object v1, v0, v2

    const-string v1, "com.android.systemui.smartspace_relocate_to_bottom"

    const/16 v2, 0xe7

    aput-object v1, v0, v2

    const-string v1, "com.android.systemui.smartspace_remoteviews_rendering_fix"

    const/16 v2, 0xe8

    aput-object v1, v0, v2

    const-string v1, "com.android.systemui.smartspace_swipe_event_logging_fix"

    const/16 v2, 0xe9

    aput-object v1, v0, v2

    const-string v1, "com.android.systemui.smartspace_viewpager2"

    const/16 v2, 0xea

    aput-object v1, v0, v2

    const-string v1, "com.android.systemui.sounddose_customization"

    const/16 v2, 0xeb

    aput-object v1, v0, v2

    const-string v1, "com.android.systemui.spatial_model_app_pushback"

    const/16 v2, 0xec

    aput-object v1, v0, v2

    const-string v1, "com.android.systemui.stabilize_heads_up_group_v2"

    const/16 v2, 0xed

    aput-object v1, v0, v2

    const-string v1, "com.android.systemui.status_bar_always_check_underlying_networks"

    const/16 v2, 0xee

    aput-object v1, v0, v2

    const-string v1, "com.android.systemui.status_bar_auto_start_screen_record_chip"

    const/16 v2, 0xef

    aput-object v1, v0, v2

    const-string v1, "com.android.systemui.status_bar_chips_modernization"

    const/16 v2, 0xf0

    aput-object v1, v0, v2

    const-string v1, "com.android.systemui.status_bar_chips_return_animations"

    const/16 v2, 0xf1

    aput-object v1, v0, v2

    const-string v1, "com.android.systemui.status_bar_font_updates"

    const/16 v2, 0xf2

    aput-object v1, v0, v2

    const-string v1, "com.android.systemui.status_bar_mobile_icon_kairos"

    const/16 v2, 0xf3

    aput-object v1, v0, v2

    const-string v1, "com.android.systemui.status_bar_monochrome_icons_fix"

    const/16 v2, 0xf4

    aput-object v1, v0, v2

    const-string v1, "com.android.systemui.status_bar_no_hun_behavior"

    const/16 v2, 0xf5

    aput-object v1, v0, v2

    const-string v1, "com.android.systemui.status_bar_popup_chips"

    const/16 v2, 0xf6

    aput-object v1, v0, v2

    const-string v1, "com.android.systemui.status_bar_root_modernization"

    const/16 v2, 0xf7

    aput-object v1, v0, v2

    const-string v1, "com.android.systemui.status_bar_show_audio_only_projection_chip"

    const/16 v2, 0xf8

    aput-object v1, v0, v2

    const-string v1, "com.android.systemui.status_bar_signal_policy_refactor"

    const/16 v2, 0xf9

    aput-object v1, v0, v2

    const-string v1, "com.android.systemui.status_bar_signal_policy_refactor_ethernet"

    const/16 v2, 0xfa

    aput-object v1, v0, v2

    const-string v1, "com.android.systemui.status_bar_static_inout_indicators"

    const/16 v2, 0xfb

    aput-object v1, v0, v2

    const-string v1, "com.android.systemui.status_bar_stop_updating_window_height"

    const/16 v2, 0xfc

    aput-object v1, v0, v2

    const-string v1, "com.android.systemui.status_bar_swipe_over_chip"

    const/16 v2, 0xfd

    aput-object v1, v0, v2

    const-string v1, "com.android.systemui.status_bar_switch_to_spn_from_data_spn"

    const/16 v2, 0xfe

    aput-object v1, v0, v2

    const-string v1, "com.android.systemui.status_bar_ui_thread"

    const/16 v2, 0xff

    aput-object v1, v0, v2

    const-string v1, "com.android.systemui.status_bar_window_no_custom_touch"

    const/16 v2, 0x100

    aput-object v1, v0, v2

    const-string v1, "com.android.systemui.stoppable_fgs_system_app"

    const/16 v2, 0x101

    aput-object v1, v0, v2

    const-string v1, "com.android.systemui.switch_user_on_bg"

    const/16 v2, 0x102

    aput-object v1, v0, v2

    const-string v1, "com.android.systemui.sysui_teamfood"

    const/16 v2, 0x103

    aput-object v1, v0, v2

    const-string v1, "com.android.systemui.theme_overlay_controller_wakefulness_deprecation"

    const/16 v2, 0x104

    aput-object v1, v0, v2

    const-string v1, "com.android.systemui.transition_race_condition"

    const/16 v2, 0x105

    aput-object v1, v0, v2

    const-string v1, "com.android.systemui.translucent_occluding_activity_fix"

    const/16 v2, 0x106

    aput-object v1, v0, v2

    const-string v1, "com.android.systemui.tv_global_actions_focus"

    const/16 v2, 0x107

    aput-object v1, v0, v2

    const-string v1, "com.android.systemui.udfps_view_performance"

    const/16 v2, 0x108

    aput-object v1, v0, v2

    const-string v1, "com.android.systemui.unfold_animation_background_progress"

    const/16 v2, 0x109

    aput-object v1, v0, v2

    const-string v1, "com.android.systemui.unfold_latency_tracking_fix"

    const/16 v2, 0x10a

    aput-object v1, v0, v2

    const-string v1, "com.android.systemui.update_corner_radius_on_display_changed"

    const/16 v2, 0x10b

    aput-object v1, v0, v2

    const-string v1, "com.android.systemui.update_user_switcher_background"

    const/16 v2, 0x10c

    aput-object v1, v0, v2

    const-string v1, "com.android.systemui.update_window_magnifier_bottom_boundary"

    const/16 v2, 0x10d

    aput-object v1, v0, v2

    const-string v1, "com.android.systemui.use_aad_prox_sensor"

    const/16 v2, 0x10e

    aput-object v1, v0, v2

    const-string v1, "com.android.systemui.use_notif_inflation_thread_for_footer"

    const/16 v2, 0x10f

    aput-object v1, v0, v2

    const-string v1, "com.android.systemui.use_notif_inflation_thread_for_row"

    const/16 v2, 0x110

    aput-object v1, v0, v2

    const-string v1, "com.android.systemui.use_transitions_for_keyguard_occluded"

    const/16 v2, 0x111

    aput-object v1, v0, v2

    const-string v1, "com.android.systemui.use_volume_controller"

    const/16 v2, 0x112

    aput-object v1, v0, v2

    const-string v1, "com.android.systemui.user_aware_settings_repositories"

    const/16 v2, 0x113

    aput-object v1, v0, v2

    const-string v1, "com.android.systemui.user_encrypted_source"

    const/16 v2, 0x114

    aput-object v1, v0, v2

    const-string v1, "com.android.systemui.user_switcher_add_sign_out_option"

    const/16 v2, 0x115

    aput-object v1, v0, v2

    const-string v1, "com.android.systemui.visual_interruptions_refactor"

    const/16 v2, 0x116

    aput-object v1, v0, v2

    const-string v1, "com.android.systemui.volume_redesign"

    const/16 v2, 0x117

    aput-object v1, v0, v2

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
            "Lcom/android/systemui/FeatureFlags;",
            ">;)Z"
        }
    .end annotation

    .line 1993
    .local p2, "getter":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/systemui/FeatureFlags;>;"
    iget-object v0, p0, Lcom/android/systemui/CustomFeatureFlags;->mGetValueImpl:Ljava/util/function/BiPredicate;

    invoke-interface {v0, p1, p2}, Ljava/util/function/BiPredicate;->test(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public glanceableHubAllowKeyguardWhenDreaming()Z
    .locals 2

    .line 603
    new-instance v0, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "com.android.systemui.glanceable_hub_allow_keyguard_when_dreaming"

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public glanceableHubBlurredBackground()Z
    .locals 2

    .line 610
    new-instance v0, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "com.android.systemui.glanceable_hub_blurred_background"

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public glanceableHubDirectEditMode()Z
    .locals 2

    .line 617
    new-instance v0, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "com.android.systemui.glanceable_hub_direct_edit_mode"

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public glanceableHubV2()Z
    .locals 2

    .line 624
    new-instance v0, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "com.android.systemui.glanceable_hub_v2"

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public glanceableHubV2Resources()Z
    .locals 2

    .line 631
    new-instance v0, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "com.android.systemui.glanceable_hub_v2_resources"

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public hapticsForComposeSliders()Z
    .locals 2

    .line 638
    new-instance v0, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "com.android.systemui.haptics_for_compose_sliders"

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public hardwareColorStyles()Z
    .locals 2

    .line 645
    new-instance v0, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "com.android.systemui.hardware_color_styles"

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public hearingAidsQsTileDialog()Z
    .locals 2

    .line 652
    new-instance v0, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "com.android.systemui.hearing_aids_qs_tile_dialog"

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public hearingDevicesDialogRelatedTools()Z
    .locals 2

    .line 659
    new-instance v0, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "com.android.systemui.hearing_devices_dialog_related_tools"

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public hideRingerButtonInSingleVolumeMode()Z
    .locals 2

    .line 666
    new-instance v0, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "com.android.systemui.hide_ringer_button_in_single_volume_mode"

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public homeControlsDreamHsum()Z
    .locals 2

    .line 673
    new-instance v0, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "com.android.systemui.home_controls_dream_hsum"

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public hubEditModeTouchAdjustments()Z
    .locals 2

    .line 680
    new-instance v0, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "com.android.systemui.hub_edit_mode_touch_adjustments"

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public hubmodeFullscreenVerticalSwipe()Z
    .locals 2

    .line 687
    new-instance v0, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "com.android.systemui.hubmode_fullscreen_vertical_swipe"

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public hubmodeFullscreenVerticalSwipeFix()Z
    .locals 2

    .line 694
    new-instance v0, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "com.android.systemui.hubmode_fullscreen_vertical_swipe_fix"

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public iconRefresh2025()Z
    .locals 2

    .line 701
    new-instance v0, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "com.android.systemui.icon_refresh_2025"

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public ignoreTouchesNextToNotificationShelf()Z
    .locals 2

    .line 708
    new-instance v0, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "com.android.systemui.ignore_touches_next_to_notification_shelf"

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public indicationTextA11yFix()Z
    .locals 2

    .line 715
    new-instance v0, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "com.android.systemui.indication_text_a11y_fix"

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public isFlagReadOnlyOptimized(Ljava/lang/String;)Z
    .locals 1
    .param p1, "flagName"    # Ljava/lang/String;

    .line 1980
    iget-object v0, p0, Lcom/android/systemui/CustomFeatureFlags;->mReadOnlyFlagsSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1981
    nop

    .line 1982
    const/4 v0, 0x1

    return v0

    .line 1984
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public keyboardDockingIndicator()Z
    .locals 2

    .line 722
    new-instance v0, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "com.android.systemui.keyboard_docking_indicator"

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public keyboardShortcutHelperRewrite()Z
    .locals 2

    .line 729
    new-instance v0, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "com.android.systemui.keyboard_shortcut_helper_rewrite"

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public keyboardShortcutHelperShortcutCustomizer()Z
    .locals 2

    .line 736
    new-instance v0, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "com.android.systemui.keyboard_shortcut_helper_shortcut_customizer"

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public keyboardTouchpadContextualEducation()Z
    .locals 2

    .line 743
    new-instance v0, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "com.android.systemui.keyboard_touchpad_contextual_education"

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public keyguardTransitionForceFinishOnScreenOff()Z
    .locals 2

    .line 750
    new-instance v0, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "com.android.systemui.keyguard_transition_force_finish_on_screen_off"

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public keyguardWmReorderAtmsCalls()Z
    .locals 2

    .line 757
    new-instance v0, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "com.android.systemui.keyguard_wm_reorder_atms_calls"

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public keyguardWmStateRefactor()Z
    .locals 2

    .line 764
    new-instance v0, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "com.android.systemui.keyguard_wm_state_refactor"

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public lockscreenFont()Z
    .locals 2

    .line 771
    new-instance v0, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "com.android.systemui.lockscreen_font"

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public lowLightClockDream()Z
    .locals 2

    .line 778
    new-instance v0, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "com.android.systemui.low_light_clock_dream"

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public magneticNotificationSwipes()Z
    .locals 2

    .line 785
    new-instance v0, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "com.android.systemui.magnetic_notification_swipes"

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public mediaControlsA11yColors()Z
    .locals 2

    .line 792
    new-instance v0, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "com.android.systemui.media_controls_a11y_colors"

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public mediaControlsButtonMedia3()Z
    .locals 2

    .line 799
    new-instance v0, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "com.android.systemui.media_controls_button_media3"

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public mediaControlsButtonMedia3Placement()Z
    .locals 2

    .line 806
    new-instance v0, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "com.android.systemui.media_controls_button_media3_placement"

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public mediaControlsDeviceManagerBackgroundExecution()Z
    .locals 2

    .line 813
    new-instance v0, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "com.android.systemui.media_controls_device_manager_background_execution"

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public mediaControlsDrawablesReuseBugfix()Z
    .locals 2

    .line 820
    new-instance v0, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "com.android.systemui.media_controls_drawables_reuse_bugfix"

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public mediaControlsLockscreenShadeBugFix()Z
    .locals 2

    .line 827
    new-instance v0, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "com.android.systemui.media_controls_lockscreen_shade_bug_fix"

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public mediaControlsUiUpdate()Z
    .locals 2

    .line 834
    new-instance v0, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "com.android.systemui.media_controls_ui_update"

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public mediaControlsUmoInflationInBackground()Z
    .locals 2

    .line 841
    new-instance v0, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "com.android.systemui.media_controls_umo_inflation_in_background"

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public mediaControlsUserInitiatedDeleteintent()Z
    .locals 2

    .line 848
    new-instance v0, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "com.android.systemui.media_controls_user_initiated_deleteintent"

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public mediaLoadMetadataViaMediaDataLoader()Z
    .locals 2

    .line 855
    new-instance v0, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "com.android.systemui.media_load_metadata_via_media_data_loader"

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public mediaLockscreenLaunchAnimation()Z
    .locals 2

    .line 862
    new-instance v0, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "com.android.systemui.media_lockscreen_launch_animation"

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public mediaProjectionDialogBehindLockscreen()Z
    .locals 2

    .line 869
    new-instance v0, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "com.android.systemui.media_projection_dialog_behind_lockscreen"

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public mediaProjectionGreyErrorText()Z
    .locals 2

    .line 876
    new-instance v0, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "com.android.systemui.media_projection_grey_error_text"

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public mediaProjectionRequestAttributionFix()Z
    .locals 2

    .line 883
    new-instance v0, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "com.android.systemui.media_projection_request_attribution_fix"

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public modesUiDialogPaging()Z
    .locals 2

    .line 890
    new-instance v0, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "com.android.systemui.modes_ui_dialog_paging"

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public moveTransitionAnimationLayer()Z
    .locals 2

    .line 897
    new-instance v0, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "com.android.systemui.move_transition_animation_layer"

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public msdlFeedback()Z
    .locals 2

    .line 904
    new-instance v0, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "com.android.systemui.msdl_feedback"

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public multiuserWifiPickerTrackerSupport()Z
    .locals 2

    .line 911
    new-instance v0, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "com.android.systemui.multiuser_wifi_picker_tracker_support"

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public newAodTransition()Z
    .locals 2

    .line 918
    new-instance v0, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "com.android.systemui.new_aod_transition"

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public newVolumePanel()Z
    .locals 2

    .line 925
    new-instance v0, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "com.android.systemui.new_volume_panel"

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public nonTouchscreenDevicesBypassFalsing()Z
    .locals 2

    .line 932
    new-instance v0, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "com.android.systemui.non_touchscreen_devices_bypass_falsing"

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public notesRoleQsTile()Z
    .locals 2

    .line 939
    new-instance v0, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "com.android.systemui.notes_role_qs_tile"

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public notificationAddXOnHoverToDismiss()Z
    .locals 2

    .line 946
    new-instance v0, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "com.android.systemui.notification_add_x_on_hover_to_dismiss"

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public notificationAmbientSuppressionAfterInflation()Z
    .locals 2

    .line 953
    new-instance v0, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "com.android.systemui.notification_ambient_suppression_after_inflation"

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public notificationAnimatedActionsTreatment()Z
    .locals 2

    .line 960
    new-instance v0, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "com.android.systemui.notification_animated_actions_treatment"

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public notificationAppearNonlinear()Z
    .locals 2

    .line 967
    new-instance v0, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "com.android.systemui.notification_appear_nonlinear"

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public notificationAsyncGroupHeaderInflation()Z
    .locals 2

    .line 974
    new-instance v0, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "com.android.systemui.notification_async_group_header_inflation"

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public notificationAsyncHybridViewInflation()Z
    .locals 2

    .line 981
    new-instance v0, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "com.android.systemui.notification_async_hybrid_view_inflation"

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public notificationAvalancheSuppression()Z
    .locals 2

    .line 988
    new-instance v0, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "com.android.systemui.notification_avalanche_suppression"

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public notificationAvalancheThrottleHun()Z
    .locals 2

    .line 995
    new-instance v0, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "com.android.systemui.notification_avalanche_throttle_hun"

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public notificationBackgroundTintOptimization()Z
    .locals 2

    .line 1002
    new-instance v0, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "com.android.systemui.notification_background_tint_optimization"

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public notificationBundleUi()Z
    .locals 2

    .line 1009
    new-instance v0, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "com.android.systemui.notification_bundle_ui"

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public notificationColorUpdateLogger()Z
    .locals 2

    .line 1016
    new-instance v0, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "com.android.systemui.notification_color_update_logger"

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public notificationContentAlphaOptimization()Z
    .locals 2

    .line 1023
    new-instance v0, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "com.android.systemui.notification_content_alpha_optimization"

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public notificationFooterBackgroundTintOptimization()Z
    .locals 2

    .line 1030
    new-instance v0, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "com.android.systemui.notification_footer_background_tint_optimization"

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public notificationOverExpansionClippingFix()Z
    .locals 2

    .line 1037
    new-instance v0, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "com.android.systemui.notification_over_expansion_clipping_fix"

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public notificationReentrantDismiss()Z
    .locals 2

    .line 1044
    new-instance v0, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "com.android.systemui.notification_reentrant_dismiss"

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public notificationRowAccessibilityExpanded()Z
    .locals 2

    .line 1051
    new-instance v0, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "com.android.systemui.notification_row_accessibility_expanded"

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public notificationRowContentBinderRefactor()Z
    .locals 2

    .line 1058
    new-instance v0, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "com.android.systemui.notification_row_content_binder_refactor"

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public notificationRowTransparency()Z
    .locals 2

    .line 1065
    new-instance v0, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "com.android.systemui.notification_row_transparency"

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public notificationRowUserContext()Z
    .locals 2

    .line 1072
    new-instance v0, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "com.android.systemui.notification_row_user_context"

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public notificationShadeBlur()Z
    .locals 2

    .line 1079
    new-instance v0, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "com.android.systemui.notification_shade_blur"

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public notificationShadeUiThread()Z
    .locals 2

    .line 1086
    new-instance v0, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "com.android.systemui.notification_shade_ui_thread"

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public notificationSkipSilentUpdates()Z
    .locals 2

    .line 1093
    new-instance v0, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "com.android.systemui.notification_skip_silent_updates"

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public notificationTransparentHeaderFix()Z
    .locals 2

    .line 1100
    new-instance v0, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "com.android.systemui.notification_transparent_header_fix"

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public notificationViewFlipperPausingV2()Z
    .locals 2

    .line 1107
    new-instance v0, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "com.android.systemui.notification_view_flipper_pausing_v2"

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public notificationsBackgroundIcons()Z
    .locals 2

    .line 1114
    new-instance v0, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "com.android.systemui.notifications_background_icons"

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public notificationsFooterVisibilityFix()Z
    .locals 2

    .line 1121
    new-instance v0, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "com.android.systemui.notifications_footer_visibility_fix"

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public notificationsHideOnDisplaySwitch()Z
    .locals 2

    .line 1128
    new-instance v0, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "com.android.systemui.notifications_hide_on_display_switch"

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public notificationsHunSharedAnimationValues()Z
    .locals 2

    .line 1135
    new-instance v0, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "com.android.systemui.notifications_hun_shared_animation_values"

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public notificationsIconContainerRefactor()Z
    .locals 2

    .line 1142
    new-instance v0, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "com.android.systemui.notifications_icon_container_refactor"

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public notificationsLaunchRadius()Z
    .locals 2

    .line 1149
    new-instance v0, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "com.android.systemui.notifications_launch_radius"

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public notificationsLiveDataStoreRefactor()Z
    .locals 2

    .line 1156
    new-instance v0, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "com.android.systemui.notifications_live_data_store_refactor"

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public notificationsPinnedHunInShade()Z
    .locals 2

    .line 1163
    new-instance v0, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "com.android.systemui.notifications_pinned_hun_in_shade"

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public notificationsRedesignFooterView()Z
    .locals 2

    .line 1170
    new-instance v0, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "com.android.systemui.notifications_redesign_footer_view"

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public notificationsRedesignGuts()Z
    .locals 2

    .line 1177
    new-instance v0, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "com.android.systemui.notifications_redesign_guts"

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public notifyPasswordTextViewUserActivityInBackground()Z
    .locals 2

    .line 1184
    new-instance v0, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "com.android.systemui.notify_password_text_view_user_activity_in_background"

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public notifyPowerManagerUserActivityBackground()Z
    .locals 2

    .line 1191
    new-instance v0, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "com.android.systemui.notify_power_manager_user_activity_background"

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public onlyShowMediaStreamSliderInSingleVolumeMode()Z
    .locals 2

    .line 1198
    new-instance v0, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "com.android.systemui.only_show_media_stream_slider_in_single_volume_mode"

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public outputSwitcherRedesign()Z
    .locals 2

    .line 1205
    new-instance v0, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "com.android.systemui.output_switcher_redesign"

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public overrideSuppressOverlayCondition()Z
    .locals 2

    .line 1212
    new-instance v0, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "com.android.systemui.override_suppress_overlay_condition"

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public permissionHelperInlineUiRichOngoing()Z
    .locals 2

    .line 1219
    new-instance v0, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "com.android.systemui.permission_helper_inline_ui_rich_ongoing"

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public permissionHelperUiRichOngoing()Z
    .locals 2

    .line 1226
    new-instance v0, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "com.android.systemui.permission_helper_ui_rich_ongoing"

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public physicalNotificationMovement()Z
    .locals 2

    .line 1233
    new-instance v0, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "com.android.systemui.physical_notification_movement"

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public pinInputFieldStyledFocusState()Z
    .locals 2

    .line 1240
    new-instance v0, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "com.android.systemui.pin_input_field_styled_focus_state"

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public predictiveBackAnimateShade()Z
    .locals 2

    .line 1247
    new-instance v0, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "com.android.systemui.predictive_back_animate_shade"

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public predictiveBackDelayWmTransition()Z
    .locals 2

    .line 1254
    new-instance v0, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "com.android.systemui.predictive_back_delay_wm_transition"

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public priorityPeopleSection()Z
    .locals 2

    .line 1261
    new-instance v0, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "com.android.systemui.priority_people_section"

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public promoteNotificationsAutomatically()Z
    .locals 2

    .line 1268
    new-instance v0, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "com.android.systemui.promote_notifications_automatically"

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public pssAppSelectorRecentsSplitScreen()Z
    .locals 2

    .line 1275
    new-instance v0, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "com.android.systemui.pss_app_selector_recents_split_screen"

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public pssTaskSwitcher()Z
    .locals 2

    .line 1282
    new-instance v0, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "com.android.systemui.pss_task_switcher"

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public qsCustomTileClickGuaranteedBugFix()Z
    .locals 2

    .line 1289
    new-instance v0, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "com.android.systemui.qs_custom_tile_click_guaranteed_bug_fix"

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public qsNewTiles()Z
    .locals 2

    .line 1296
    new-instance v0, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "com.android.systemui.qs_new_tiles"

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public qsNewTilesFuture()Z
    .locals 2

    .line 1303
    new-instance v0, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "com.android.systemui.qs_new_tiles_future"

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public qsQuickRebindActiveTiles()Z
    .locals 2

    .line 1310
    new-instance v0, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "com.android.systemui.qs_quick_rebind_active_tiles"

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public qsRegisterSettingObserverOnBgThread()Z
    .locals 2

    .line 1317
    new-instance v0, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "com.android.systemui.qs_register_setting_observer_on_bg_thread"

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public qsTileDetailedView()Z
    .locals 2

    .line 1324
    new-instance v0, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "com.android.systemui.qs_tile_detailed_view"

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public qsTileFocusState()Z
    .locals 2

    .line 1331
    new-instance v0, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "com.android.systemui.qs_tile_focus_state"

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public qsUiRefactor()Z
    .locals 2

    .line 1338
    new-instance v0, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "com.android.systemui.qs_ui_refactor"

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public qsUiRefactorComposeFragment()Z
    .locals 2

    .line 1345
    new-instance v0, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "com.android.systemui.qs_ui_refactor_compose_fragment"

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public recordIssueQsTile()Z
    .locals 2

    .line 1352
    new-instance v0, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "com.android.systemui.record_issue_qs_tile"

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public redesignMagnificationWindowSize()Z
    .locals 2

    .line 1359
    new-instance v0, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "com.android.systemui.redesign_magnification_window_size"

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public refactorGetCurrentUser()Z
    .locals 2

    .line 1366
    new-instance v0, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "com.android.systemui.refactor_get_current_user"

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public registerBatteryControllerReceiversInCorestartable()Z
    .locals 2

    .line 1373
    new-instance v0, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "com.android.systemui.register_battery_controller_receivers_in_corestartable"

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public registerContentObserversAsync()Z
    .locals 2

    .line 1380
    new-instance v0, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "com.android.systemui.register_content_observers_async"

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public registerNewWalletCardInBackground()Z
    .locals 2

    .line 1387
    new-instance v0, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "com.android.systemui.register_new_wallet_card_in_background"

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public registerWallpaperNotifierBackground()Z
    .locals 2

    .line 1394
    new-instance v0, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "com.android.systemui.register_wallpaper_notifier_background"

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public relockWithPowerButtonImmediately()Z
    .locals 2

    .line 1401
    new-instance v0, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "com.android.systemui.relock_with_power_button_immediately"

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public removeDreamOverlayHideOnTouch()Z
    .locals 2

    .line 1408
    new-instance v0, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "com.android.systemui.remove_dream_overlay_hide_on_touch"

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public removeUpdateListenerInQsIconViewImpl()Z
    .locals 2

    .line 1415
    new-instance v0, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "com.android.systemui.remove_update_listener_in_qs_icon_view_impl"

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public restToUnlock()Z
    .locals 2

    .line 1422
    new-instance v0, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "com.android.systemui.rest_to_unlock"

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public restartDreamOnUnocclude()Z
    .locals 2

    .line 1429
    new-instance v0, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "com.android.systemui.restart_dream_on_unocclude"

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public revampedBouncerMessages()Z
    .locals 2

    .line 1436
    new-instance v0, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "com.android.systemui.revamped_bouncer_messages"

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public runFingerprintDetectOnDismissibleKeyguard()Z
    .locals 2

    .line 1443
    new-instance v0, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "com.android.systemui.run_fingerprint_detect_on_dismissible_keyguard"

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public saveAndRestoreMagnificationSettingsButtons()Z
    .locals 2

    .line 1450
    new-instance v0, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "com.android.systemui.save_and_restore_magnification_settings_buttons"

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public sceneContainer()Z
    .locals 2

    .line 1457
    new-instance v0, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "com.android.systemui.scene_container"

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public screenshareNotificationHidingBugFix()Z
    .locals 2

    .line 1464
    new-instance v0, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "com.android.systemui.screenshare_notification_hiding_bug_fix"

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public screenshotActionDismissSystemWindows()Z
    .locals 2

    .line 1471
    new-instance v0, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "com.android.systemui.screenshot_action_dismiss_system_windows"

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public screenshotMultidisplayFocusChange()Z
    .locals 2

    .line 1478
    new-instance v0, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "com.android.systemui.screenshot_multidisplay_focus_change"

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public screenshotPolicySplitAndDesktopMode()Z
    .locals 2

    .line 1485
    new-instance v0, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "com.android.systemui.screenshot_policy_split_and_desktop_mode"

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public screenshotScrollCropViewCrashFix()Z
    .locals 2

    .line 1492
    new-instance v0, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "com.android.systemui.screenshot_scroll_crop_view_crash_fix"

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public screenshotUiControllerRefactor()Z
    .locals 2

    .line 1499
    new-instance v0, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "com.android.systemui.screenshot_ui_controller_refactor"

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public secondaryUserWidgetHost()Z
    .locals 2

    .line 1506
    new-instance v0, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "com.android.systemui.secondary_user_widget_host"

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public settingsExtRegisterContentObserverOnBgThread()Z
    .locals 2

    .line 1513
    new-instance v0, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "com.android.systemui.settings_ext_register_content_observer_on_bg_thread"

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public shadeExpandsOnStatusBarLongPress()Z
    .locals 2

    .line 1520
    new-instance v0, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "com.android.systemui.shade_expands_on_status_bar_long_press"

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public shadeHeaderFontUpdate()Z
    .locals 2

    .line 1527
    new-instance v0, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "com.android.systemui.shade_header_font_update"

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public shadeLaunchAccessibility()Z
    .locals 2

    .line 1534
    new-instance v0, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "com.android.systemui.shade_launch_accessibility"

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public shadeWindowGoesAround()Z
    .locals 2

    .line 1541
    new-instance v0, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "com.android.systemui.shade_window_goes_around"

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public shaderlibLoadingEffectRefactor()Z
    .locals 2

    .line 1548
    new-instance v0, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "com.android.systemui.shaderlib_loading_effect_refactor"

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public shortcutHelperKeyGlyph()Z
    .locals 2

    .line 1555
    new-instance v0, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "com.android.systemui.shortcut_helper_key_glyph"

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public showAudioSharingSliderInVolumePanel()Z
    .locals 2

    .line 1562
    new-instance v0, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "com.android.systemui.show_audio_sharing_slider_in_volume_panel"

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public showClipboardIndication()Z
    .locals 2

    .line 1569
    new-instance v0, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "com.android.systemui.show_clipboard_indication"

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public showLockedByYourWatchKeyguardIndicator()Z
    .locals 2

    .line 1576
    new-instance v0, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "com.android.systemui.show_locked_by_your_watch_keyguard_indicator"

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public showToastWhenAppControlBrightness()Z
    .locals 2

    .line 1583
    new-instance v0, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "com.android.systemui.show_toast_when_app_control_brightness"

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public simPinBouncerReset()Z
    .locals 2

    .line 1590
    new-instance v0, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "com.android.systemui.sim_pin_bouncer_reset"

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public simPinRaceConditionOnRestart()Z
    .locals 2

    .line 1597
    new-instance v0, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "com.android.systemui.sim_pin_race_condition_on_restart"

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public simPinUseSlotId()Z
    .locals 2

    .line 1604
    new-instance v0, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "com.android.systemui.sim_pin_use_slot_id"

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public skipHideSensitiveNotifAnimation()Z
    .locals 2

    .line 1611
    new-instance v0, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "com.android.systemui.skip_hide_sensitive_notif_animation"

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public sliceBroadcastRelayInBackground()Z
    .locals 2

    .line 1618
    new-instance v0, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "com.android.systemui.slice_broadcast_relay_in_background"

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public sliceManagerBinderCallBackground()Z
    .locals 2

    .line 1625
    new-instance v0, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "com.android.systemui.slice_manager_binder_call_background"

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public smartspaceLockscreenViewmodel()Z
    .locals 2

    .line 1632
    new-instance v0, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "com.android.systemui.smartspace_lockscreen_viewmodel"

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public smartspaceRelocateToBottom()Z
    .locals 2

    .line 1639
    new-instance v0, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "com.android.systemui.smartspace_relocate_to_bottom"

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public smartspaceRemoteviewsRenderingFix()Z
    .locals 2

    .line 1646
    new-instance v0, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "com.android.systemui.smartspace_remoteviews_rendering_fix"

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public smartspaceSwipeEventLoggingFix()Z
    .locals 2

    .line 1653
    new-instance v0, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "com.android.systemui.smartspace_swipe_event_logging_fix"

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public smartspaceViewpager2()Z
    .locals 2

    .line 1660
    new-instance v0, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "com.android.systemui.smartspace_viewpager2"

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public sounddoseCustomization()Z
    .locals 2

    .line 1667
    new-instance v0, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "com.android.systemui.sounddose_customization"

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public spatialModelAppPushback()Z
    .locals 2

    .line 1674
    new-instance v0, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "com.android.systemui.spatial_model_app_pushback"

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public stabilizeHeadsUpGroupV2()Z
    .locals 2

    .line 1681
    new-instance v0, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "com.android.systemui.stabilize_heads_up_group_v2"

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public statusBarAlwaysCheckUnderlyingNetworks()Z
    .locals 2

    .line 1688
    new-instance v0, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "com.android.systemui.status_bar_always_check_underlying_networks"

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public statusBarAutoStartScreenRecordChip()Z
    .locals 2

    .line 1695
    new-instance v0, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "com.android.systemui.status_bar_auto_start_screen_record_chip"

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public statusBarChipsModernization()Z
    .locals 2

    .line 1702
    new-instance v0, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "com.android.systemui.status_bar_chips_modernization"

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public statusBarChipsReturnAnimations()Z
    .locals 2

    .line 1709
    new-instance v0, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "com.android.systemui.status_bar_chips_return_animations"

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public statusBarFontUpdates()Z
    .locals 2

    .line 1716
    new-instance v0, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "com.android.systemui.status_bar_font_updates"

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public statusBarMobileIconKairos()Z
    .locals 2

    .line 1723
    new-instance v0, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "com.android.systemui.status_bar_mobile_icon_kairos"

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public statusBarMonochromeIconsFix()Z
    .locals 2

    .line 1730
    new-instance v0, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "com.android.systemui.status_bar_monochrome_icons_fix"

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public statusBarNoHunBehavior()Z
    .locals 2

    .line 1737
    new-instance v0, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "com.android.systemui.status_bar_no_hun_behavior"

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public statusBarPopupChips()Z
    .locals 2

    .line 1744
    new-instance v0, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "com.android.systemui.status_bar_popup_chips"

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public statusBarRootModernization()Z
    .locals 2

    .line 1751
    new-instance v0, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "com.android.systemui.status_bar_root_modernization"

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public statusBarShowAudioOnlyProjectionChip()Z
    .locals 2

    .line 1758
    new-instance v0, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "com.android.systemui.status_bar_show_audio_only_projection_chip"

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public statusBarSignalPolicyRefactor()Z
    .locals 2

    .line 1765
    new-instance v0, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "com.android.systemui.status_bar_signal_policy_refactor"

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public statusBarSignalPolicyRefactorEthernet()Z
    .locals 2

    .line 1772
    new-instance v0, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "com.android.systemui.status_bar_signal_policy_refactor_ethernet"

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public statusBarStaticInoutIndicators()Z
    .locals 2

    .line 1779
    new-instance v0, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "com.android.systemui.status_bar_static_inout_indicators"

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public statusBarStopUpdatingWindowHeight()Z
    .locals 2

    .line 1786
    new-instance v0, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "com.android.systemui.status_bar_stop_updating_window_height"

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public statusBarSwipeOverChip()Z
    .locals 2

    .line 1793
    new-instance v0, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "com.android.systemui.status_bar_swipe_over_chip"

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public statusBarSwitchToSpnFromDataSpn()Z
    .locals 2

    .line 1800
    new-instance v0, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "com.android.systemui.status_bar_switch_to_spn_from_data_spn"

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public statusBarUiThread()Z
    .locals 2

    .line 1807
    new-instance v0, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "com.android.systemui.status_bar_ui_thread"

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public statusBarWindowNoCustomTouch()Z
    .locals 2

    .line 1814
    new-instance v0, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "com.android.systemui.status_bar_window_no_custom_touch"

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public stoppableFgsSystemApp()Z
    .locals 2

    .line 1821
    new-instance v0, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "com.android.systemui.stoppable_fgs_system_app"

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public switchUserOnBg()Z
    .locals 2

    .line 1828
    new-instance v0, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "com.android.systemui.switch_user_on_bg"

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public sysuiTeamfood()Z
    .locals 2

    .line 1835
    new-instance v0, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "com.android.systemui.sysui_teamfood"

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public themeOverlayControllerWakefulnessDeprecation()Z
    .locals 2

    .line 1842
    new-instance v0, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "com.android.systemui.theme_overlay_controller_wakefulness_deprecation"

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public transitionRaceCondition()Z
    .locals 2

    .line 1849
    new-instance v0, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "com.android.systemui.transition_race_condition"

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public translucentOccludingActivityFix()Z
    .locals 2

    .line 1856
    new-instance v0, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "com.android.systemui.translucent_occluding_activity_fix"

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public tvGlobalActionsFocus()Z
    .locals 2

    .line 1863
    new-instance v0, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "com.android.systemui.tv_global_actions_focus"

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public udfpsViewPerformance()Z
    .locals 2

    .line 1870
    new-instance v0, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "com.android.systemui.udfps_view_performance"

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public unfoldAnimationBackgroundProgress()Z
    .locals 2

    .line 1877
    new-instance v0, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "com.android.systemui.unfold_animation_background_progress"

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public unfoldLatencyTrackingFix()Z
    .locals 2

    .line 1884
    new-instance v0, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "com.android.systemui.unfold_latency_tracking_fix"

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public updateCornerRadiusOnDisplayChanged()Z
    .locals 2

    .line 1891
    new-instance v0, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "com.android.systemui.update_corner_radius_on_display_changed"

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public updateUserSwitcherBackground()Z
    .locals 2

    .line 1898
    new-instance v0, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "com.android.systemui.update_user_switcher_background"

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public updateWindowMagnifierBottomBoundary()Z
    .locals 2

    .line 1905
    new-instance v0, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "com.android.systemui.update_window_magnifier_bottom_boundary"

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public useAadProxSensor()Z
    .locals 2

    .line 1912
    new-instance v0, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "com.android.systemui.use_aad_prox_sensor"

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public useNotifInflationThreadForFooter()Z
    .locals 2

    .line 1919
    new-instance v0, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "com.android.systemui.use_notif_inflation_thread_for_footer"

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public useNotifInflationThreadForRow()Z
    .locals 2

    .line 1926
    new-instance v0, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "com.android.systemui.use_notif_inflation_thread_for_row"

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public useTransitionsForKeyguardOccluded()Z
    .locals 2

    .line 1933
    new-instance v0, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "com.android.systemui.use_transitions_for_keyguard_occluded"

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public useVolumeController()Z
    .locals 2

    .line 1940
    new-instance v0, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "com.android.systemui.use_volume_controller"

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public userAwareSettingsRepositories()Z
    .locals 2

    .line 1947
    new-instance v0, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "com.android.systemui.user_aware_settings_repositories"

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public userEncryptedSource()Z
    .locals 2

    .line 1954
    new-instance v0, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "com.android.systemui.user_encrypted_source"

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public userSwitcherAddSignOutOption()Z
    .locals 2

    .line 1961
    new-instance v0, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "com.android.systemui.user_switcher_add_sign_out_option"

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public visualInterruptionsRefactor()Z
    .locals 2

    .line 1968
    new-instance v0, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "com.android.systemui.visual_interruptions_refactor"

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public volumeRedesign()Z
    .locals 2

    .line 1975
    new-instance v0, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/systemui/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "com.android.systemui.volume_redesign"

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method
