.class public Lcom/android/systemui/shared/CustomFeatureFlags;
.super Ljava/lang/Object;
.source "CustomFeatureFlags.java"

# interfaces
.implements Lcom/android/systemui/shared/FeatureFlags;


# instance fields
.field private mGetValueImpl:Ljava/util/function/BiPredicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/BiPredicate<",
            "Ljava/lang/String;",
            "Ljava/util/function/Predicate<",
            "Lcom/android/systemui/shared/FeatureFlags;",
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
    .locals 27
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiPredicate<",
            "Ljava/lang/String;",
            "Ljava/util/function/Predicate<",
            "Lcom/android/systemui/shared/FeatureFlags;",
            ">;>;)V"
        }
    .end annotation

    .line 16
    .local p1, "getValueImpl":Ljava/util/function/BiPredicate;, "Ljava/util/function/BiPredicate<Ljava/lang/String;Ljava/util/function/Predicate<Lcom/android/systemui/shared/FeatureFlags;>;>;"
    move-object/from16 v0, p0

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 233
    new-instance v1, Ljava/util/HashSet;

    const-string v25, "com.android.systemui.shared.use_preferred_image_editor"

    const-string v26, ""

    const-string v2, "com.android.systemui.shared.ambient_aod"

    const-string v3, "com.android.systemui.shared.bouncer_area_exclusion"

    const-string v4, "com.android.systemui.shared.clock_reactive_smartspace_layout"

    const-string v5, "com.android.systemui.shared.clock_reactive_variants"

    const-string v6, "com.android.systemui.shared.cursor_hot_corner"

    const-string v7, "com.android.systemui.shared.enable_home_delay"

    const-string v8, "com.android.systemui.shared.enable_lpp_squeeze_effect"

    const-string v9, "com.android.systemui.shared.example_shared_flag"

    const-string v10, "com.android.systemui.shared.extended_wallpaper_effects"

    const-string v11, "com.android.systemui.shared.lockscreen_custom_clocks"

    const-string v12, "com.android.systemui.shared.new_customization_picker_ui"

    const-string v13, "com.android.systemui.shared.new_touchpad_gestures_tutorial"

    const-string v14, "com.android.systemui.shared.return_animation_framework_library"

    const-string v15, "com.android.systemui.shared.return_animation_framework_long_lived"

    const-string v16, "com.android.systemui.shared.screenshot_context_url"

    const-string v17, "com.android.systemui.shared.shade_allow_back_gesture"

    const-string v18, "com.android.systemui.shared.sidefps_controller_refactor"

    const-string v19, "com.android.systemui.shared.smartspace_remoteviews_intent_handler"

    const-string v20, "com.android.systemui.shared.smartspace_sports_card_background"

    const-string v21, "com.android.systemui.shared.smartspace_ui_update"

    const-string v22, "com.android.systemui.shared.smartspace_ui_update_resources"

    const-string v23, "com.android.systemui.shared.status_bar_connected_displays"

    const-string v24, "com.android.systemui.shared.three_button_corner_swipe"

    filled-new-array/range {v2 .. v26}, [Ljava/lang/String;

    move-result-object v2

    .line 234
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Lcom/android/systemui/shared/CustomFeatureFlags;->mReadOnlyFlagsSet:Ljava/util/Set;

    .line 17
    move-object/from16 v1, p1

    iput-object v1, v0, Lcom/android/systemui/shared/CustomFeatureFlags;->mGetValueImpl:Ljava/util/function/BiPredicate;

    .line 18
    return-void
.end method

.method private isOptimizationEnabled()Z
    .locals 1

    .line 197
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public ambientAod()Z
    .locals 2

    .line 22
    new-instance v0, Lcom/android/systemui/shared/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/systemui/shared/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "com.android.systemui.shared.ambient_aod"

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/shared/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public bouncerAreaExclusion()Z
    .locals 2

    .line 29
    new-instance v0, Lcom/android/systemui/shared/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/systemui/shared/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "com.android.systemui.shared.bouncer_area_exclusion"

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/shared/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public clockReactiveSmartspaceLayout()Z
    .locals 2

    .line 36
    new-instance v0, Lcom/android/systemui/shared/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/systemui/shared/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "com.android.systemui.shared.clock_reactive_smartspace_layout"

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/shared/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public clockReactiveVariants()Z
    .locals 2

    .line 43
    new-instance v0, Lcom/android/systemui/shared/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/systemui/shared/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "com.android.systemui.shared.clock_reactive_variants"

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/shared/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public cursorHotCorner()Z
    .locals 2

    .line 50
    new-instance v0, Lcom/android/systemui/shared/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/systemui/shared/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "com.android.systemui.shared.cursor_hot_corner"

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/shared/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public enableHomeDelay()Z
    .locals 2

    .line 57
    new-instance v0, Lcom/android/systemui/shared/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/systemui/shared/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "com.android.systemui.shared.enable_home_delay"

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/shared/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public enableLppSqueezeEffect()Z
    .locals 2

    .line 64
    new-instance v0, Lcom/android/systemui/shared/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/systemui/shared/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "com.android.systemui.shared.enable_lpp_squeeze_effect"

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/shared/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public exampleSharedFlag()Z
    .locals 2

    .line 71
    new-instance v0, Lcom/android/systemui/shared/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/systemui/shared/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "com.android.systemui.shared.example_shared_flag"

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/shared/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public extendedWallpaperEffects()Z
    .locals 2

    .line 78
    new-instance v0, Lcom/android/systemui/shared/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/systemui/shared/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "com.android.systemui.shared.extended_wallpaper_effects"

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/shared/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public getFlagNames()Ljava/util/List;
    .locals 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 205
    const-string v23, "com.android.systemui.shared.three_button_corner_swipe"

    const-string v24, "com.android.systemui.shared.use_preferred_image_editor"

    const-string v1, "com.android.systemui.shared.ambient_aod"

    const-string v2, "com.android.systemui.shared.bouncer_area_exclusion"

    const-string v3, "com.android.systemui.shared.clock_reactive_smartspace_layout"

    const-string v4, "com.android.systemui.shared.clock_reactive_variants"

    const-string v5, "com.android.systemui.shared.cursor_hot_corner"

    const-string v6, "com.android.systemui.shared.enable_home_delay"

    const-string v7, "com.android.systemui.shared.enable_lpp_squeeze_effect"

    const-string v8, "com.android.systemui.shared.example_shared_flag"

    const-string v9, "com.android.systemui.shared.extended_wallpaper_effects"

    const-string v10, "com.android.systemui.shared.lockscreen_custom_clocks"

    const-string v11, "com.android.systemui.shared.new_customization_picker_ui"

    const-string v12, "com.android.systemui.shared.new_touchpad_gestures_tutorial"

    const-string v13, "com.android.systemui.shared.return_animation_framework_library"

    const-string v14, "com.android.systemui.shared.return_animation_framework_long_lived"

    const-string v15, "com.android.systemui.shared.screenshot_context_url"

    const-string v16, "com.android.systemui.shared.shade_allow_back_gesture"

    const-string v17, "com.android.systemui.shared.sidefps_controller_refactor"

    const-string v18, "com.android.systemui.shared.smartspace_remoteviews_intent_handler"

    const-string v19, "com.android.systemui.shared.smartspace_sports_card_background"

    const-string v20, "com.android.systemui.shared.smartspace_ui_update"

    const-string v21, "com.android.systemui.shared.smartspace_ui_update_resources"

    const-string v22, "com.android.systemui.shared.status_bar_connected_displays"

    filled-new-array/range {v1 .. v24}, [Ljava/lang/String;

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
            "Lcom/android/systemui/shared/FeatureFlags;",
            ">;)Z"
        }
    .end annotation

    .line 201
    .local p2, "getter":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/systemui/shared/FeatureFlags;>;"
    iget-object v0, p0, Lcom/android/systemui/shared/CustomFeatureFlags;->mGetValueImpl:Ljava/util/function/BiPredicate;

    invoke-interface {v0, p1, p2}, Ljava/util/function/BiPredicate;->test(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isFlagReadOnlyOptimized(Ljava/lang/String;)Z
    .locals 1
    .param p1, "flagName"    # Ljava/lang/String;

    .line 188
    iget-object v0, p0, Lcom/android/systemui/shared/CustomFeatureFlags;->mReadOnlyFlagsSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 189
    nop

    .line 190
    const/4 v0, 0x1

    return v0

    .line 192
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public lockscreenCustomClocks()Z
    .locals 2

    .line 85
    new-instance v0, Lcom/android/systemui/shared/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/systemui/shared/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "com.android.systemui.shared.lockscreen_custom_clocks"

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/shared/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public newCustomizationPickerUi()Z
    .locals 2

    .line 92
    new-instance v0, Lcom/android/systemui/shared/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/systemui/shared/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "com.android.systemui.shared.new_customization_picker_ui"

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/shared/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public newTouchpadGesturesTutorial()Z
    .locals 2

    .line 99
    new-instance v0, Lcom/android/systemui/shared/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/systemui/shared/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "com.android.systemui.shared.new_touchpad_gestures_tutorial"

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/shared/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public returnAnimationFrameworkLibrary()Z
    .locals 2

    .line 106
    new-instance v0, Lcom/android/systemui/shared/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/systemui/shared/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "com.android.systemui.shared.return_animation_framework_library"

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/shared/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public returnAnimationFrameworkLongLived()Z
    .locals 2

    .line 113
    new-instance v0, Lcom/android/systemui/shared/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/systemui/shared/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "com.android.systemui.shared.return_animation_framework_long_lived"

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/shared/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public screenshotContextUrl()Z
    .locals 2

    .line 120
    new-instance v0, Lcom/android/systemui/shared/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/systemui/shared/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "com.android.systemui.shared.screenshot_context_url"

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/shared/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public shadeAllowBackGesture()Z
    .locals 2

    .line 127
    new-instance v0, Lcom/android/systemui/shared/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/systemui/shared/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "com.android.systemui.shared.shade_allow_back_gesture"

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/shared/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public sidefpsControllerRefactor()Z
    .locals 2

    .line 134
    new-instance v0, Lcom/android/systemui/shared/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/systemui/shared/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "com.android.systemui.shared.sidefps_controller_refactor"

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/shared/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public smartspaceRemoteviewsIntentHandler()Z
    .locals 2

    .line 141
    new-instance v0, Lcom/android/systemui/shared/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/systemui/shared/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "com.android.systemui.shared.smartspace_remoteviews_intent_handler"

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/shared/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public smartspaceSportsCardBackground()Z
    .locals 2

    .line 148
    new-instance v0, Lcom/android/systemui/shared/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/systemui/shared/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "com.android.systemui.shared.smartspace_sports_card_background"

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/shared/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public smartspaceUiUpdate()Z
    .locals 2

    .line 155
    new-instance v0, Lcom/android/systemui/shared/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/systemui/shared/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "com.android.systemui.shared.smartspace_ui_update"

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/shared/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public smartspaceUiUpdateResources()Z
    .locals 2

    .line 162
    new-instance v0, Lcom/android/systemui/shared/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/systemui/shared/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "com.android.systemui.shared.smartspace_ui_update_resources"

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/shared/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public statusBarConnectedDisplays()Z
    .locals 2

    .line 169
    new-instance v0, Lcom/android/systemui/shared/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/systemui/shared/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "com.android.systemui.shared.status_bar_connected_displays"

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/shared/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public threeButtonCornerSwipe()Z
    .locals 2

    .line 176
    new-instance v0, Lcom/android/systemui/shared/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/systemui/shared/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "com.android.systemui.shared.three_button_corner_swipe"

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/shared/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public usePreferredImageEditor()Z
    .locals 2

    .line 183
    new-instance v0, Lcom/android/systemui/shared/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/systemui/shared/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "com.android.systemui.shared.use_preferred_image_editor"

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/shared/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method
