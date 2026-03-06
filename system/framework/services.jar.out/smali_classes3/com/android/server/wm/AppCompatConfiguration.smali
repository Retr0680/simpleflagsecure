.class final Lcom/android/server/wm/AppCompatConfiguration;
.super Ljava/lang/Object;
.source "AppCompatConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/AppCompatConfiguration$LetterboxVerticalReachabilityPosition;,
        Lcom/android/server/wm/AppCompatConfiguration$LetterboxHorizontalReachabilityPosition;,
        Lcom/android/server/wm/AppCompatConfiguration$LetterboxBackgroundType;
    }
.end annotation


# static fields
.field static final DEFAULT_LETTERBOX_ASPECT_RATIO_FOR_MULTI_WINDOW:F = 1.01f

.field private static final DEFAULT_VALUE_ALLOW_IGNORE_ORIENTATION_REQUEST:Z = true

.field private static final DEFAULT_VALUE_ENABLE_CAMERA_COMPAT_TREATMENT:Z = true

.field private static final DEFAULT_VALUE_ENABLE_COMPAT_FAKE_FOCUS:Z = true

.field private static final DEFAULT_VALUE_ENABLE_DISPLAY_ROTATION_IMMERSIVE_APP_COMPAT_POLICY:Z = true

.field private static final DEFAULT_VALUE_ENABLE_LETTERBOX_BACKGROUND_WALLPAPER:Z = false

.field private static final DEFAULT_VALUE_ENABLE_LETTERBOX_TRANSLUCENT_ACTIVITY:Z = true

.field private static final DEFAULT_VALUE_ENABLE_USER_ASPECT_RATIO_FULLSCREEN:Z = true

.field private static final DEFAULT_VALUE_ENABLE_USER_ASPECT_RATIO_SETTINGS:Z = true

.field private static final KEY_ALLOW_IGNORE_ORIENTATION_REQUEST:Ljava/lang/String; = "allow_ignore_orientation_request"

.field private static final KEY_ENABLE_CAMERA_COMPAT_TREATMENT:Ljava/lang/String; = "enable_compat_camera_treatment"

.field private static final KEY_ENABLE_COMPAT_FAKE_FOCUS:Ljava/lang/String; = "enable_compat_fake_focus"

.field private static final KEY_ENABLE_DISPLAY_ROTATION_IMMERSIVE_APP_COMPAT_POLICY:Ljava/lang/String; = "enable_display_rotation_immersive_app_compat_policy"

.field private static final KEY_ENABLE_LETTERBOX_BACKGROUND_WALLPAPER:Ljava/lang/String; = "enable_letterbox_background_wallpaper"

.field private static final KEY_ENABLE_LETTERBOX_TRANSLUCENT_ACTIVITY:Ljava/lang/String; = "enable_letterbox_translucent_activity"

.field private static final KEY_ENABLE_USER_ASPECT_RATIO_FULLSCREEN:Ljava/lang/String; = "enable_app_compat_user_aspect_ratio_fullscreen"

.field private static final KEY_ENABLE_USER_ASPECT_RATIO_SETTINGS:Ljava/lang/String; = "enable_app_compat_aspect_ratio_user_settings"

.field static final LETTERBOX_BACKGROUND_APP_COLOR_BACKGROUND:I = 0x1

.field static final LETTERBOX_BACKGROUND_APP_COLOR_BACKGROUND_FLOATING:I = 0x2

.field static final LETTERBOX_BACKGROUND_OVERRIDE_UNSET:I = -0x1

.field static final LETTERBOX_BACKGROUND_SOLID_COLOR:I = 0x0

.field static final LETTERBOX_BACKGROUND_WALLPAPER:I = 0x3

.field static final LETTERBOX_HORIZONTAL_REACHABILITY_POSITION_CENTER:I = 0x1

.field static final LETTERBOX_HORIZONTAL_REACHABILITY_POSITION_LEFT:I = 0x0

.field static final LETTERBOX_HORIZONTAL_REACHABILITY_POSITION_RIGHT:I = 0x2

.field static final LETTERBOX_POSITION_MULTIPLIER_CENTER:F = 0.5f

.field static final LETTERBOX_VERTICAL_REACHABILITY_POSITION_BOTTOM:I = 0x2

.field static final LETTERBOX_VERTICAL_REACHABILITY_POSITION_CENTER:I = 0x1

.field static final LETTERBOX_VERTICAL_REACHABILITY_POSITION_TOP:I = 0x0

.field static final MIN_FIXED_ORIENTATION_LETTERBOX_ASPECT_RATIO:F = 1.0f

.field private static final TAG:Ljava/lang/String; = "ActivityTaskManager"


# instance fields
.field private final mAppCompatConfigurationPersister:Lcom/android/server/wm/AppCompatConfigurationPersister;

.field private mCameraCompatAspectRatio:F

.field final mContext:Landroid/content/Context;

.field private mDefaultMinAspectRatioForUnresizableApps:F

.field private mDefaultPositionForHorizontalReachability:I

.field private mDefaultPositionForVerticalReachability:I

.field private final mDeviceConfig:Lcom/android/server/wm/SynchedDeviceConfig;

.field private mFixedOrientationLetterboxAspectRatio:F

.field private mIsAutomaticReachabilityInBookModeEnabled:Z

.field private mIsCameraCompatFreeformWindowingTreatmentEnabled:Z

.field private mIsCameraCompatRefreshCycleThroughStopEnabled:Z

.field private final mIsCameraCompatSplitScreenAspectRatioEnabled:Z

.field private mIsCameraCompatTreatmentRefreshEnabled:Z

.field private mIsDisplayAspectRatioEnabledForFixedOrientationLetterbox:Z

.field private mIsEducationEnabled:Z

.field private mIsHorizontalReachabilityEnabled:Z

.field private final mIsPolicyForIgnoringRequestedOrientationEnabled:Z

.field private mIsSplitScreenAspectRatioForUnresizableAppsEnabled:Z

.field private mIsVerticalReachabilityEnabled:Z

.field private mLetterboxActivityCornersRadius:I

.field private mLetterboxBackgroundColorOverride:Landroid/graphics/Color;

.field private mLetterboxBackgroundColorResourceIdOverride:Ljava/lang/Integer;

.field private final mLetterboxBackgroundType:I

.field private mLetterboxBackgroundTypeOverride:I

.field private mLetterboxBackgroundWallpaperBlurRadiusPx:I

.field private mLetterboxBackgroundWallpaperDarkScrimAlpha:F

.field private mLetterboxBookModePositionMultiplier:F

.field private mLetterboxHorizontalPositionMultiplier:F

.field private mLetterboxTabletopModePositionMultiplier:F

.field private mLetterboxVerticalPositionMultiplier:F

.field private final mThinLetterboxHeightPxSupplier:Lcom/android/server/wm/utils/DimenPxIntSupplier;

.field private final mThinLetterboxWidthPxSupplier:Lcom/android/server/wm/utils/DimenPxIntSupplier;

.field private mTranslucentLetterboxingOverrideEnabled:Z

.field private mUserAppAspectRatioFullscreenOverrideEnabled:Z

.field private mUserAppAspectRatioSettingsOverrideEnabled:Z


# direct methods
.method public static synthetic $r8$lambda$1T9-bd9hU1PBwmmR2Ukw6jXdOCc(Landroid/content/Context;)Ljava/lang/Integer;
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/server/wm/AppCompatConfiguration;->lambda$new$2(Landroid/content/Context;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$BiemjI3Bs0jz1dJh3ts4y4kSTFo(Landroid/content/Context;)Ljava/lang/Integer;
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/server/wm/AppCompatConfiguration;->lambda$new$1(Landroid/content/Context;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$KQ2bkE3MuAlvpzaFzr-XNi9YiUM(ZLjava/lang/Integer;)Ljava/lang/Integer;
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/wm/AppCompatConfiguration;->lambda$movePositionForHorizontalReachabilityToNextLeftStop$5(ZLjava/lang/Integer;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$Oh5I2_GJ2LhD0pXm_ZTUkNtr-Jw(ZLjava/lang/Integer;)Ljava/lang/Integer;
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/wm/AppCompatConfiguration;->lambda$movePositionForHorizontalReachabilityToNextRightStop$4(ZLjava/lang/Integer;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$PTOq1ckEo7_ZoQCBsa5eR2iH428(Landroid/content/Context;)Ljava/lang/Integer;
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/server/wm/AppCompatConfiguration;->lambda$new$3(Landroid/content/Context;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$Vaw-d6xHC7DU4IzQJxPTXUI96zU(ZLjava/lang/Integer;)Ljava/lang/Integer;
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/wm/AppCompatConfiguration;->lambda$movePositionForVerticalReachabilityToNextTopStop$7(ZLjava/lang/Integer;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$YGl2W9-CUHlXccr4c-FWxmqxcZA(Landroid/content/Context;)Ljava/lang/Integer;
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/server/wm/AppCompatConfiguration;->lambda$new$0(Landroid/content/Context;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$q8CyIDu5FF5I69ki5uRYf3180RY(ZLjava/lang/Integer;)Ljava/lang/Integer;
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/wm/AppCompatConfiguration;->lambda$movePositionForVerticalReachabilityToNextBottomStop$6(ZLjava/lang/Integer;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "systemUiContext"    # Landroid/content/Context;

    .line 321
    new-instance v0, Lcom/android/server/wm/AppCompatConfigurationPersister;

    new-instance v1, Lcom/android/server/wm/AppCompatConfiguration$$ExternalSyntheticLambda3;

    invoke-direct {v1, p1}, Lcom/android/server/wm/AppCompatConfiguration$$ExternalSyntheticLambda3;-><init>(Landroid/content/Context;)V

    new-instance v2, Lcom/android/server/wm/AppCompatConfiguration$$ExternalSyntheticLambda4;

    invoke-direct {v2, p1}, Lcom/android/server/wm/AppCompatConfiguration$$ExternalSyntheticLambda4;-><init>(Landroid/content/Context;)V

    new-instance v3, Lcom/android/server/wm/AppCompatConfiguration$$ExternalSyntheticLambda5;

    invoke-direct {v3, p1}, Lcom/android/server/wm/AppCompatConfiguration$$ExternalSyntheticLambda5;-><init>(Landroid/content/Context;)V

    new-instance v4, Lcom/android/server/wm/AppCompatConfiguration$$ExternalSyntheticLambda6;

    invoke-direct {v4, p1}, Lcom/android/server/wm/AppCompatConfiguration$$ExternalSyntheticLambda6;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/wm/AppCompatConfigurationPersister;-><init>(Ljava/util/function/Supplier;Ljava/util/function/Supplier;Ljava/util/function/Supplier;Ljava/util/function/Supplier;)V

    invoke-direct {p0, p1, v0}, Lcom/android/server/wm/AppCompatConfiguration;-><init>(Landroid/content/Context;Lcom/android/server/wm/AppCompatConfigurationPersister;)V

    .line 330
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/server/wm/AppCompatConfigurationPersister;)V
    .locals 5
    .param p1, "systemUiContext"    # Landroid/content/Context;
    .param p2, "appCompatConfigurationPersister"    # Lcom/android/server/wm/AppCompatConfigurationPersister;

    .line 334
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 286
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/wm/AppCompatConfiguration;->mLetterboxBackgroundTypeOverride:I

    .line 299
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/AppCompatConfiguration;->mIsCameraCompatTreatmentRefreshEnabled:Z

    .line 305
    iput-boolean v0, p0, Lcom/android/server/wm/AppCompatConfiguration;->mIsCameraCompatRefreshCycleThroughStopEnabled:Z

    .line 310
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/wm/AppCompatConfiguration;->mIsCameraCompatFreeformWindowingTreatmentEnabled:Z

    .line 335
    iput-object p1, p0, Lcom/android/server/wm/AppCompatConfiguration;->mContext:Landroid/content/Context;

    .line 337
    iget-object v2, p0, Lcom/android/server/wm/AppCompatConfiguration;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10500e9

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v2

    iput v2, p0, Lcom/android/server/wm/AppCompatConfiguration;->mFixedOrientationLetterboxAspectRatio:F

    .line 339
    iget-object v2, p0, Lcom/android/server/wm/AppCompatConfiguration;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/server/wm/AppCompatConfiguration;->readLetterboxBackgroundTypeFromConfig(Landroid/content/Context;)I

    move-result v2

    iput v2, p0, Lcom/android/server/wm/AppCompatConfiguration;->mLetterboxBackgroundType:I

    .line 340
    iget-object v2, p0, Lcom/android/server/wm/AppCompatConfiguration;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10e00b1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/android/server/wm/AppCompatConfiguration;->mLetterboxActivityCornersRadius:I

    .line 342
    iget-object v2, p0, Lcom/android/server/wm/AppCompatConfiguration;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10500f1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/server/wm/AppCompatConfiguration;->mLetterboxBackgroundWallpaperBlurRadiusPx:I

    .line 344
    iget-object v2, p0, Lcom/android/server/wm/AppCompatConfiguration;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10500f0

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v2

    iput v2, p0, Lcom/android/server/wm/AppCompatConfiguration;->mLetterboxBackgroundWallpaperDarkScrimAlpha:F

    .line 346
    iget-object v2, p0, Lcom/android/server/wm/AppCompatConfiguration;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10500f4

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/server/wm/AppCompatConfiguration;->setLetterboxHorizontalPositionMultiplier(F)V

    .line 348
    iget-object v2, p0, Lcom/android/server/wm/AppCompatConfiguration;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10500f8

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/server/wm/AppCompatConfiguration;->setLetterboxVerticalPositionMultiplier(F)V

    .line 350
    iget-object v2, p0, Lcom/android/server/wm/AppCompatConfiguration;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10500f2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/server/wm/AppCompatConfiguration;->setLetterboxBookModePositionMultiplier(F)V

    .line 352
    iget-object v2, p0, Lcom/android/server/wm/AppCompatConfiguration;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 353
    const v3, 0x10500f5

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v2

    .line 352
    invoke-virtual {p0, v2}, Lcom/android/server/wm/AppCompatConfiguration;->setLetterboxTabletopModePositionMultiplier(F)V

    .line 354
    iget-object v2, p0, Lcom/android/server/wm/AppCompatConfiguration;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x11101e0

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/wm/AppCompatConfiguration;->mIsHorizontalReachabilityEnabled:Z

    .line 356
    iget-object v2, p0, Lcom/android/server/wm/AppCompatConfiguration;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x11101e3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/wm/AppCompatConfiguration;->mIsVerticalReachabilityEnabled:Z

    .line 358
    iget-object v2, p0, Lcom/android/server/wm/AppCompatConfiguration;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x11101db

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/wm/AppCompatConfiguration;->mIsAutomaticReachabilityInBookModeEnabled:Z

    .line 360
    iget-object v2, p0, Lcom/android/server/wm/AppCompatConfiguration;->mContext:Landroid/content/Context;

    .line 361
    invoke-static {v2, v1}, Lcom/android/server/wm/AppCompatConfiguration;->readLetterboxHorizontalReachabilityPositionFromConfig(Landroid/content/Context;Z)I

    move-result v2

    iput v2, p0, Lcom/android/server/wm/AppCompatConfiguration;->mDefaultPositionForHorizontalReachability:I

    .line 362
    iget-object v2, p0, Lcom/android/server/wm/AppCompatConfiguration;->mContext:Landroid/content/Context;

    .line 363
    invoke-static {v2, v1}, Lcom/android/server/wm/AppCompatConfiguration;->readLetterboxVerticalReachabilityPositionFromConfig(Landroid/content/Context;Z)I

    move-result v2

    iput v2, p0, Lcom/android/server/wm/AppCompatConfiguration;->mDefaultPositionForVerticalReachability:I

    .line 364
    iget-object v2, p0, Lcom/android/server/wm/AppCompatConfiguration;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x11101de

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/wm/AppCompatConfiguration;->mIsEducationEnabled:Z

    .line 366
    iget-object v2, p0, Lcom/android/server/wm/AppCompatConfiguration;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10500f3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/server/wm/AppCompatConfiguration;->setDefaultMinAspectRatioForUnresizableApps(F)V

    .line 368
    iget-object v2, p0, Lcom/android/server/wm/AppCompatConfiguration;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x11101e2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/wm/AppCompatConfiguration;->mIsSplitScreenAspectRatioForUnresizableAppsEnabled:Z

    .line 370
    iget-object v2, p0, Lcom/android/server/wm/AppCompatConfiguration;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 371
    const v3, 0x11101dc

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/wm/AppCompatConfiguration;->mIsDisplayAspectRatioEnabledForFixedOrientationLetterbox:Z

    .line 373
    iget-object v2, p0, Lcom/android/server/wm/AppCompatConfiguration;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x11101d0

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/wm/AppCompatConfiguration;->mIsCameraCompatSplitScreenAspectRatioEnabled:Z

    .line 375
    iget-object v2, p0, Lcom/android/server/wm/AppCompatConfiguration;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1050124

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v2

    iput v2, p0, Lcom/android/server/wm/AppCompatConfiguration;->mCameraCompatAspectRatio:F

    .line 377
    iget-object v2, p0, Lcom/android/server/wm/AppCompatConfiguration;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x11101e1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/wm/AppCompatConfiguration;->mIsPolicyForIgnoringRequestedOrientationEnabled:Z

    .line 380
    new-instance v2, Lcom/android/server/wm/utils/DimenPxIntSupplier;

    iget-object v3, p0, Lcom/android/server/wm/AppCompatConfiguration;->mContext:Landroid/content/Context;

    const v4, 0x10500f7

    invoke-direct {v2, v3, v4}, Lcom/android/server/wm/utils/DimenPxIntSupplier;-><init>(Landroid/content/Context;I)V

    iput-object v2, p0, Lcom/android/server/wm/AppCompatConfiguration;->mThinLetterboxWidthPxSupplier:Lcom/android/server/wm/utils/DimenPxIntSupplier;

    .line 382
    new-instance v2, Lcom/android/server/wm/utils/DimenPxIntSupplier;

    iget-object v3, p0, Lcom/android/server/wm/AppCompatConfiguration;->mContext:Landroid/content/Context;

    const v4, 0x10500f6

    invoke-direct {v2, v3, v4}, Lcom/android/server/wm/utils/DimenPxIntSupplier;-><init>(Landroid/content/Context;I)V

    iput-object v2, p0, Lcom/android/server/wm/AppCompatConfiguration;->mThinLetterboxHeightPxSupplier:Lcom/android/server/wm/utils/DimenPxIntSupplier;

    .line 385
    iput-object p2, p0, Lcom/android/server/wm/AppCompatConfiguration;->mAppCompatConfigurationPersister:Lcom/android/server/wm/AppCompatConfigurationPersister;

    .line 386
    iget-object v2, p0, Lcom/android/server/wm/AppCompatConfiguration;->mAppCompatConfigurationPersister:Lcom/android/server/wm/AppCompatConfigurationPersister;

    invoke-virtual {v2}, Lcom/android/server/wm/AppCompatConfigurationPersister;->start()V

    .line 388
    nop

    .line 389
    invoke-virtual {p1}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v2

    .line 388
    const-string v3, "window_manager"

    invoke-static {v3, v2}, Lcom/android/server/wm/SynchedDeviceConfig;->builder(Ljava/lang/String;Ljava/util/concurrent/Executor;)Lcom/android/server/wm/SynchedDeviceConfig$SynchedDeviceConfigBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wm/AppCompatConfiguration;->mContext:Landroid/content/Context;

    .line 392
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x11101d1

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    .line 390
    const-string v4, "enable_compat_camera_treatment"

    invoke-virtual {v2, v4, v0, v3}, Lcom/android/server/wm/SynchedDeviceConfig$SynchedDeviceConfigBuilder;->addDeviceConfigEntry(Ljava/lang/String;ZZ)Lcom/android/server/wm/SynchedDeviceConfig$SynchedDeviceConfigBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wm/AppCompatConfiguration;->mContext:Landroid/content/Context;

    .line 396
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x11101dd

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    .line 394
    const-string v4, "enable_display_rotation_immersive_app_compat_policy"

    invoke-virtual {v2, v4, v0, v3}, Lcom/android/server/wm/SynchedDeviceConfig$SynchedDeviceConfigBuilder;->addDeviceConfigEntry(Ljava/lang/String;ZZ)Lcom/android/server/wm/SynchedDeviceConfig$SynchedDeviceConfigBuilder;

    move-result-object v2

    .line 398
    const-string v3, "allow_ignore_orientation_request"

    invoke-virtual {v2, v3, v0, v0}, Lcom/android/server/wm/SynchedDeviceConfig$SynchedDeviceConfigBuilder;->addDeviceConfigEntry(Ljava/lang/String;ZZ)Lcom/android/server/wm/SynchedDeviceConfig$SynchedDeviceConfigBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wm/AppCompatConfiguration;->mContext:Landroid/content/Context;

    .line 402
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x11101ca

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    .line 400
    const-string v4, "enable_compat_fake_focus"

    invoke-virtual {v2, v4, v0, v3}, Lcom/android/server/wm/SynchedDeviceConfig$SynchedDeviceConfigBuilder;->addDeviceConfigEntry(Ljava/lang/String;ZZ)Lcom/android/server/wm/SynchedDeviceConfig$SynchedDeviceConfigBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wm/AppCompatConfiguration;->mContext:Landroid/content/Context;

    .line 405
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x11101df

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    .line 403
    const-string v4, "enable_letterbox_translucent_activity"

    invoke-virtual {v2, v4, v0, v3}, Lcom/android/server/wm/SynchedDeviceConfig$SynchedDeviceConfigBuilder;->addDeviceConfigEntry(Ljava/lang/String;ZZ)Lcom/android/server/wm/SynchedDeviceConfig$SynchedDeviceConfigBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wm/AppCompatConfiguration;->mContext:Landroid/content/Context;

    .line 409
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1110037

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    .line 407
    const-string v4, "enable_app_compat_aspect_ratio_user_settings"

    invoke-virtual {v2, v4, v0, v3}, Lcom/android/server/wm/SynchedDeviceConfig$SynchedDeviceConfigBuilder;->addDeviceConfigEntry(Ljava/lang/String;ZZ)Lcom/android/server/wm/SynchedDeviceConfig$SynchedDeviceConfigBuilder;

    move-result-object v2

    .line 411
    const-string v3, "enable_letterbox_background_wallpaper"

    invoke-virtual {v2, v3, v1, v0}, Lcom/android/server/wm/SynchedDeviceConfig$SynchedDeviceConfigBuilder;->addDeviceConfigEntry(Ljava/lang/String;ZZ)Lcom/android/server/wm/SynchedDeviceConfig$SynchedDeviceConfigBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/AppCompatConfiguration;->mContext:Landroid/content/Context;

    .line 415
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1110036

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    .line 413
    const-string v3, "enable_app_compat_user_aspect_ratio_fullscreen"

    invoke-virtual {v1, v3, v0, v2}, Lcom/android/server/wm/SynchedDeviceConfig$SynchedDeviceConfigBuilder;->addDeviceConfigEntry(Ljava/lang/String;ZZ)Lcom/android/server/wm/SynchedDeviceConfig$SynchedDeviceConfigBuilder;

    move-result-object v0

    .line 417
    invoke-virtual {v0}, Lcom/android/server/wm/SynchedDeviceConfig$SynchedDeviceConfigBuilder;->build()Lcom/android/server/wm/SynchedDeviceConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/AppCompatConfiguration;->mDeviceConfig:Lcom/android/server/wm/SynchedDeviceConfig;

    .line 418
    return-void
.end method

.method private assertValidMultiplier(FLjava/lang/String;)F
    .locals 3
    .param p1, "multiplier"    # F
    .param p2, "multiplierName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 1476
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-gtz v0, :cond_0

    .line 1480
    return p1

    .line 1477
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Trying to set "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " out of bounds: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getDefaultLetterboxBackgroundType()I
    .locals 2

    .line 586
    iget-object v0, p0, Lcom/android/server/wm/AppCompatConfiguration;->mDeviceConfig:Lcom/android/server/wm/SynchedDeviceConfig;

    const-string v1, "enable_letterbox_background_wallpaper"

    invoke-virtual {v0, v1}, Lcom/android/server/wm/SynchedDeviceConfig;->getFlagValue(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 587
    const/4 v0, 0x3

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/android/server/wm/AppCompatConfiguration;->mLetterboxBackgroundType:I

    .line 586
    :goto_0
    return v0
.end method

.method private static synthetic lambda$movePositionForHorizontalReachabilityToNextLeftStop$5(ZLjava/lang/Integer;)Ljava/lang/Integer;
    .locals 2
    .param p0, "isDeviceInBookMode"    # Z
    .param p1, "prev"    # Ljava/lang/Integer;

    .line 1091
    nop

    .line 1092
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz p0, :cond_0

    const/4 v1, 0x2

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    :goto_0
    sub-int/2addr v0, v1

    .line 1091
    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method private static synthetic lambda$movePositionForHorizontalReachabilityToNextRightStop$4(ZLjava/lang/Integer;)Ljava/lang/Integer;
    .locals 3
    .param p0, "isDeviceInBookMode"    # Z
    .param p1, "prev"    # Ljava/lang/Integer;

    .line 1081
    nop

    .line 1082
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x2

    if-eqz p0, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    :goto_0
    add-int/2addr v0, v2

    .line 1081
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method private static synthetic lambda$movePositionForVerticalReachabilityToNextBottomStop$6(ZLjava/lang/Integer;)Ljava/lang/Integer;
    .locals 3
    .param p0, "isDeviceInTabletopMode"    # Z
    .param p1, "prev"    # Ljava/lang/Integer;

    .line 1101
    nop

    .line 1102
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x2

    if-eqz p0, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    :goto_0
    add-int/2addr v0, v2

    .line 1101
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method private static synthetic lambda$movePositionForVerticalReachabilityToNextTopStop$7(ZLjava/lang/Integer;)Ljava/lang/Integer;
    .locals 2
    .param p0, "isDeviceInTabletopMode"    # Z
    .param p1, "prev"    # Ljava/lang/Integer;

    .line 1112
    nop

    .line 1113
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz p0, :cond_0

    const/4 v1, 0x2

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    :goto_0
    sub-int/2addr v0, v1

    .line 1112
    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method private static synthetic lambda$new$0(Landroid/content/Context;)Ljava/lang/Integer;
    .locals 1
    .param p0, "systemUiContext"    # Landroid/content/Context;

    .line 322
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/server/wm/AppCompatConfiguration;->readLetterboxHorizontalReachabilityPositionFromConfig(Landroid/content/Context;Z)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method private static synthetic lambda$new$1(Landroid/content/Context;)Ljava/lang/Integer;
    .locals 1
    .param p0, "systemUiContext"    # Landroid/content/Context;

    .line 324
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/server/wm/AppCompatConfiguration;->readLetterboxVerticalReachabilityPositionFromConfig(Landroid/content/Context;Z)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method private static synthetic lambda$new$2(Landroid/content/Context;)Ljava/lang/Integer;
    .locals 1
    .param p0, "systemUiContext"    # Landroid/content/Context;

    .line 326
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/android/server/wm/AppCompatConfiguration;->readLetterboxHorizontalReachabilityPositionFromConfig(Landroid/content/Context;Z)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method private static synthetic lambda$new$3(Landroid/content/Context;)Ljava/lang/Integer;
    .locals 1
    .param p0, "systemUiContext"    # Landroid/content/Context;

    .line 328
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/android/server/wm/AppCompatConfiguration;->readLetterboxVerticalReachabilityPositionFromConfig(Landroid/content/Context;Z)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method static letterboxBackgroundTypeToString(I)Ljava/lang/String;
    .locals 2
    .param p0, "backgroundType"    # I

    .line 593
    packed-switch p0, :pswitch_data_0

    .line 603
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unknown="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 601
    :pswitch_0
    const-string v0, "LETTERBOX_BACKGROUND_WALLPAPER"

    return-object v0

    .line 599
    :pswitch_1
    const-string v0, "LETTERBOX_BACKGROUND_APP_COLOR_BACKGROUND_FLOATING"

    return-object v0

    .line 597
    :pswitch_2
    const-string v0, "LETTERBOX_BACKGROUND_APP_COLOR_BACKGROUND"

    return-object v0

    .line 595
    :pswitch_3
    const-string v0, "LETTERBOX_BACKGROUND_SOLID_COLOR"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static letterboxHorizontalReachabilityPositionToString(I)Ljava/lang/String;
    .locals 3
    .param p0, "position"    # I

    .line 1047
    packed-switch p0, :pswitch_data_0

    .line 1055
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected letterbox position type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 1053
    :pswitch_0
    const-string v0, "LETTERBOX_HORIZONTAL_REACHABILITY_POSITION_RIGHT"

    return-object v0

    .line 1051
    :pswitch_1
    const-string v0, "LETTERBOX_HORIZONTAL_REACHABILITY_POSITION_CENTER"

    return-object v0

    .line 1049
    :pswitch_2
    const-string v0, "LETTERBOX_HORIZONTAL_REACHABILITY_POSITION_LEFT"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static letterboxVerticalReachabilityPositionToString(I)Ljava/lang/String;
    .locals 3
    .param p0, "position"    # I

    .line 1063
    packed-switch p0, :pswitch_data_0

    .line 1071
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected letterbox position type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 1069
    :pswitch_0
    const-string v0, "LETTERBOX_VERTICAL_REACHABILITY_POSITION_BOTTOM"

    return-object v0

    .line 1067
    :pswitch_1
    const-string v0, "LETTERBOX_VERTICAL_REACHABILITY_POSITION_CENTER"

    return-object v0

    .line 1065
    :pswitch_2
    const-string v0, "LETTERBOX_VERTICAL_REACHABILITY_POSITION_TOP"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static readLetterboxBackgroundTypeFromConfig(Landroid/content/Context;)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 609
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e00b2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 614
    .local v0, "backgroundType":I
    if-eqz v0, :cond_0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    :cond_0
    goto :goto_0

    .line 615
    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    :goto_0
    move v1, v0

    .line 611
    :goto_1
    return v1
.end method

.method private static readLetterboxHorizontalReachabilityPositionFromConfig(Landroid/content/Context;Z)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "forBookMode"    # Z

    .line 953
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 954
    if-eqz p1, :cond_0

    .line 955
    const v1, 0x10e00b3

    goto :goto_0

    .line 956
    :cond_0
    const v1, 0x10e00b4

    .line 953
    :goto_0
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 959
    .local v0, "position":I
    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_2

    :cond_1
    goto :goto_1

    .line 960
    :cond_2
    goto :goto_2

    :goto_1
    move v1, v0

    .line 957
    :goto_2
    return v1
.end method

.method private static readLetterboxVerticalReachabilityPositionFromConfig(Landroid/content/Context;Z)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "forTabletopMode"    # Z

    .line 966
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 967
    if-eqz p1, :cond_0

    .line 968
    const v1, 0x10e00b5

    goto :goto_0

    .line 969
    :cond_0
    const v1, 0x10e00b6

    .line 966
    :goto_0
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 972
    .local v0, "position":I
    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_2

    :cond_1
    goto :goto_1

    .line 973
    :cond_2
    goto :goto_2

    :goto_1
    move v1, v0

    .line 970
    :goto_2
    return v1
.end method

.method private updatePositionForHorizontalReachability(ZLjava/util/function/Function;)V
    .locals 3
    .param p1, "isDeviceInBookMode"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/function/Function<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1233
    .local p2, "newHorizonalPositionFun":Ljava/util/function/Function;, "Ljava/util/function/Function<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/android/server/wm/AppCompatConfiguration;->mAppCompatConfigurationPersister:Lcom/android/server/wm/AppCompatConfigurationPersister;

    .line 1234
    invoke-virtual {v0, p1}, Lcom/android/server/wm/AppCompatConfigurationPersister;->getLetterboxPositionForHorizontalReachability(Z)I

    move-result v0

    .line 1236
    .local v0, "letterboxPositionForHorizontalReachability":I
    nop

    .line 1237
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 1236
    invoke-interface {p2, v1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1238
    .local v1, "nextHorizontalPosition":I
    iget-object v2, p0, Lcom/android/server/wm/AppCompatConfiguration;->mAppCompatConfigurationPersister:Lcom/android/server/wm/AppCompatConfigurationPersister;

    invoke-virtual {v2, p1, v1}, Lcom/android/server/wm/AppCompatConfigurationPersister;->setLetterboxPositionForHorizontalReachability(ZI)V

    .line 1240
    return-void
.end method

.method private updatePositionForVerticalReachability(ZLjava/util/function/Function;)V
    .locals 3
    .param p1, "isDeviceInTabletopMode"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/function/Function<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1245
    .local p2, "newVerticalPositionFun":Ljava/util/function/Function;, "Ljava/util/function/Function<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/android/server/wm/AppCompatConfiguration;->mAppCompatConfigurationPersister:Lcom/android/server/wm/AppCompatConfigurationPersister;

    .line 1246
    invoke-virtual {v0, p1}, Lcom/android/server/wm/AppCompatConfigurationPersister;->getLetterboxPositionForVerticalReachability(Z)I

    move-result v0

    .line 1248
    .local v0, "letterboxPositionForVerticalReachability":I
    nop

    .line 1249
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 1248
    invoke-interface {p2, v1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1250
    .local v1, "nextVerticalPosition":I
    iget-object v2, p0, Lcom/android/server/wm/AppCompatConfiguration;->mAppCompatConfigurationPersister:Lcom/android/server/wm/AppCompatConfigurationPersister;

    invoke-virtual {v2, p1, v1}, Lcom/android/server/wm/AppCompatConfigurationPersister;->setLetterboxPositionForVerticalReachability(ZI)V

    .line 1252
    return-void
.end method


# virtual methods
.method dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 3
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 1448
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  letterboxPositionForHorizontalReachability="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1450
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/server/wm/AppCompatConfiguration;->getLetterboxPositionForHorizontalReachability(Z)I

    move-result v2

    .line 1449
    invoke-static {v2}, Lcom/android/server/wm/AppCompatConfiguration;->letterboxHorizontalReachabilityPositionToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1448
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1452
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  letterboxPositionForVerticalReachability="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1454
    invoke-virtual {p0, v1}, Lcom/android/server/wm/AppCompatConfiguration;->getLetterboxPositionForVerticalReachability(Z)I

    move-result v1

    .line 1453
    invoke-static {v1}, Lcom/android/server/wm/AppCompatConfiguration;->letterboxVerticalReachabilityPositionToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1452
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1456
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  fixedOrientationLetterboxAspectRatio="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1457
    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatConfiguration;->getFixedOrientationLetterboxAspectRatio()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1456
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1458
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  defaultMinAspectRatioForUnresizableApps="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1459
    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatConfiguration;->getDefaultMinAspectRatioForUnresizableApps()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1458
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1460
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  isSplitScreenAspectRatioForUnresizableAppsEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1461
    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatConfiguration;->getIsSplitScreenAspectRatioForUnresizableAppsEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1460
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1462
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  isDisplayAspectRatioEnabledForFixedOrientationLetterbox="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1463
    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatConfiguration;->getIsDisplayAspectRatioEnabledForFixedOrientationLetterbox()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1462
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1464
    return-void
.end method

.method getCameraCompatAspectRatio()F
    .locals 1

    .line 1346
    iget v0, p0, Lcom/android/server/wm/AppCompatConfiguration;->mCameraCompatAspectRatio:F

    return v0
.end method

.method getDefaultMinAspectRatioForUnresizableApps()F
    .locals 1

    .line 466
    iget v0, p0, Lcom/android/server/wm/AppCompatConfiguration;->mDefaultMinAspectRatioForUnresizableApps:F

    return v0
.end method

.method getDefaultPositionForHorizontalReachability()I
    .locals 1

    .line 845
    iget v0, p0, Lcom/android/server/wm/AppCompatConfiguration;->mDefaultPositionForHorizontalReachability:I

    return v0
.end method

.method getDefaultPositionForVerticalReachability()I
    .locals 1

    .line 857
    iget v0, p0, Lcom/android/server/wm/AppCompatConfiguration;->mDefaultPositionForVerticalReachability:I

    return v0
.end method

.method getFixedOrientationLetterboxAspectRatio()F
    .locals 1

    .line 451
    iget v0, p0, Lcom/android/server/wm/AppCompatConfiguration;->mFixedOrientationLetterboxAspectRatio:F

    return v0
.end method

.method getHorizontalMultiplierForReachability(Z)F
    .locals 4
    .param p1, "isDeviceInBookMode"    # Z

    .line 983
    iget-object v0, p0, Lcom/android/server/wm/AppCompatConfiguration;->mAppCompatConfigurationPersister:Lcom/android/server/wm/AppCompatConfigurationPersister;

    .line 984
    invoke-virtual {v0, p1}, Lcom/android/server/wm/AppCompatConfigurationPersister;->getLetterboxPositionForHorizontalReachability(Z)I

    move-result v0

    .line 986
    .local v0, "letterboxPositionForHorizontalReachability":I
    packed-switch v0, :pswitch_data_0

    .line 994
    new-instance v1, Ljava/lang/AssertionError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected letterbox position type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 992
    :pswitch_0
    const/high16 v1, 0x3f800000    # 1.0f

    return v1

    .line 990
    :pswitch_1
    const/high16 v1, 0x3f000000    # 0.5f

    return v1

    .line 988
    :pswitch_2
    const/4 v1, 0x0

    return v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method getIsAutomaticReachabilityInBookModeEnabled()Z
    .locals 1

    .line 779
    iget-boolean v0, p0, Lcom/android/server/wm/AppCompatConfiguration;->mIsAutomaticReachabilityInBookModeEnabled:Z

    return v0
.end method

.method getIsDisplayAspectRatioEnabledForFixedOrientationLetterbox()Z
    .locals 1

    .line 1151
    iget-boolean v0, p0, Lcom/android/server/wm/AppCompatConfiguration;->mIsDisplayAspectRatioEnabledForFixedOrientationLetterbox:Z

    return v0
.end method

.method getIsEducationEnabled()Z
    .locals 1

    .line 1121
    iget-boolean v0, p0, Lcom/android/server/wm/AppCompatConfiguration;->mIsEducationEnabled:Z

    return v0
.end method

.method getIsHorizontalReachabilityEnabled()Z
    .locals 1

    .line 763
    iget-boolean v0, p0, Lcom/android/server/wm/AppCompatConfiguration;->mIsHorizontalReachabilityEnabled:Z

    return v0
.end method

.method getIsSplitScreenAspectRatioForUnresizableAppsEnabled()Z
    .locals 1

    .line 1144
    iget-boolean v0, p0, Lcom/android/server/wm/AppCompatConfiguration;->mIsSplitScreenAspectRatioForUnresizableAppsEnabled:Z

    return v0
.end method

.method getIsVerticalReachabilityEnabled()Z
    .locals 1

    .line 771
    iget-boolean v0, p0, Lcom/android/server/wm/AppCompatConfiguration;->mIsVerticalReachabilityEnabled:Z

    return v0
.end method

.method getLetterboxActivityCornersRadius()I
    .locals 1

    .line 506
    iget v0, p0, Lcom/android/server/wm/AppCompatConfiguration;->mLetterboxActivityCornersRadius:I

    return v0
.end method

.method getLetterboxBackgroundColor()Landroid/graphics/Color;
    .locals 2

    .line 515
    iget-object v0, p0, Lcom/android/server/wm/AppCompatConfiguration;->mLetterboxBackgroundColorOverride:Landroid/graphics/Color;

    if-eqz v0, :cond_0

    .line 516
    iget-object v0, p0, Lcom/android/server/wm/AppCompatConfiguration;->mLetterboxBackgroundColorOverride:Landroid/graphics/Color;

    return-object v0

    .line 518
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/AppCompatConfiguration;->mLetterboxBackgroundColorResourceIdOverride:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    .line 519
    iget-object v0, p0, Lcom/android/server/wm/AppCompatConfiguration;->mLetterboxBackgroundColorResourceIdOverride:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    .line 520
    :cond_1
    const v0, 0x10601f9

    :goto_0
    nop

    .line 523
    .local v0, "colorId":I
    iget-object v1, p0, Lcom/android/server/wm/AppCompatConfiguration;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-static {v1}, Landroid/graphics/Color;->valueOf(I)Landroid/graphics/Color;

    move-result-object v1

    return-object v1
.end method

.method getLetterboxBackgroundType()I
    .locals 2

    .line 559
    iget v0, p0, Lcom/android/server/wm/AppCompatConfiguration;->mLetterboxBackgroundTypeOverride:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 560
    iget v0, p0, Lcom/android/server/wm/AppCompatConfiguration;->mLetterboxBackgroundTypeOverride:I

    goto :goto_0

    .line 561
    :cond_0
    invoke-direct {p0}, Lcom/android/server/wm/AppCompatConfiguration;->getDefaultLetterboxBackgroundType()I

    move-result v0

    .line 559
    :goto_0
    return v0
.end method

.method getLetterboxBackgroundWallpaperBlurRadiusPx()I
    .locals 1

    .line 673
    iget v0, p0, Lcom/android/server/wm/AppCompatConfiguration;->mLetterboxBackgroundWallpaperBlurRadiusPx:I

    return v0
.end method

.method getLetterboxBackgroundWallpaperDarkScrimAlpha()F
    .locals 1

    .line 643
    iget v0, p0, Lcom/android/server/wm/AppCompatConfiguration;->mLetterboxBackgroundWallpaperDarkScrimAlpha:F

    return v0
.end method

.method getLetterboxHorizontalPositionMultiplier(Z)F
    .locals 1
    .param p1, "isInBookMode"    # Z

    .line 683
    if-eqz p1, :cond_0

    iget v0, p0, Lcom/android/server/wm/AppCompatConfiguration;->mLetterboxBookModePositionMultiplier:F

    goto :goto_0

    .line 684
    :cond_0
    iget v0, p0, Lcom/android/server/wm/AppCompatConfiguration;->mLetterboxHorizontalPositionMultiplier:F

    .line 683
    :goto_0
    return v0
.end method

.method getLetterboxPositionForHorizontalReachability(Z)I
    .locals 1
    .param p1, "isInFullScreenBookMode"    # Z

    .line 1030
    iget-object v0, p0, Lcom/android/server/wm/AppCompatConfiguration;->mAppCompatConfigurationPersister:Lcom/android/server/wm/AppCompatConfigurationPersister;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/AppCompatConfigurationPersister;->getLetterboxPositionForHorizontalReachability(Z)I

    move-result v0

    return v0
.end method

.method getLetterboxPositionForVerticalReachability(Z)I
    .locals 1
    .param p1, "isInFullScreenTabletopMode"    # Z

    .line 1040
    iget-object v0, p0, Lcom/android/server/wm/AppCompatConfiguration;->mAppCompatConfigurationPersister:Lcom/android/server/wm/AppCompatConfigurationPersister;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/AppCompatConfigurationPersister;->getLetterboxPositionForVerticalReachability(Z)I

    move-result v0

    return v0
.end method

.method getLetterboxVerticalPositionMultiplier(Z)F
    .locals 1
    .param p1, "isInTabletopMode"    # Z

    .line 694
    if-eqz p1, :cond_0

    iget v0, p0, Lcom/android/server/wm/AppCompatConfiguration;->mLetterboxTabletopModePositionMultiplier:F

    goto :goto_0

    .line 695
    :cond_0
    iget v0, p0, Lcom/android/server/wm/AppCompatConfiguration;->mLetterboxVerticalPositionMultiplier:F

    .line 694
    :goto_0
    return v0
.end method

.method getThinLetterboxHeightPx()I
    .locals 1

    .line 1169
    iget-object v0, p0, Lcom/android/server/wm/AppCompatConfiguration;->mThinLetterboxHeightPxSupplier:Lcom/android/server/wm/utils/DimenPxIntSupplier;

    invoke-virtual {v0}, Lcom/android/server/wm/utils/DimenPxIntSupplier;->getAsInt()I

    move-result v0

    return v0
.end method

.method getThinLetterboxWidthPx()I
    .locals 1

    .line 1160
    iget-object v0, p0, Lcom/android/server/wm/AppCompatConfiguration;->mThinLetterboxWidthPxSupplier:Lcom/android/server/wm/utils/DimenPxIntSupplier;

    invoke-virtual {v0}, Lcom/android/server/wm/utils/DimenPxIntSupplier;->getAsInt()I

    move-result v0

    return v0
.end method

.method getVerticalMultiplierForReachability(Z)F
    .locals 4
    .param p1, "isDeviceInTabletopMode"    # Z

    .line 1007
    iget-object v0, p0, Lcom/android/server/wm/AppCompatConfiguration;->mAppCompatConfigurationPersister:Lcom/android/server/wm/AppCompatConfigurationPersister;

    .line 1008
    invoke-virtual {v0, p1}, Lcom/android/server/wm/AppCompatConfigurationPersister;->getLetterboxPositionForVerticalReachability(Z)I

    move-result v0

    .line 1010
    .local v0, "letterboxPositionForVerticalReachability":I
    packed-switch v0, :pswitch_data_0

    .line 1018
    new-instance v1, Ljava/lang/AssertionError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected letterbox position type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 1016
    :pswitch_0
    const/high16 v1, 0x3f800000    # 1.0f

    return v1

    .line 1014
    :pswitch_1
    const/high16 v1, 0x3f000000    # 0.5f

    return v1

    .line 1012
    :pswitch_2
    const/4 v1, 0x0

    return v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method isCameraCompatFreeformWindowingTreatmentEnabled()Z
    .locals 1

    .line 1371
    iget-boolean v0, p0, Lcom/android/server/wm/AppCompatConfiguration;->mIsCameraCompatFreeformWindowingTreatmentEnabled:Z

    return v0
.end method

.method isCameraCompatRefreshCycleThroughStopEnabled()Z
    .locals 1

    .line 1314
    iget-boolean v0, p0, Lcom/android/server/wm/AppCompatConfiguration;->mIsCameraCompatRefreshCycleThroughStopEnabled:Z

    return v0
.end method

.method isCameraCompatRefreshEnabled()Z
    .locals 1

    .line 1294
    iget-boolean v0, p0, Lcom/android/server/wm/AppCompatConfiguration;->mIsCameraCompatTreatmentRefreshEnabled:Z

    return v0
.end method

.method isCameraCompatSplitScreenAspectRatioEnabled()Z
    .locals 1

    .line 1273
    iget-boolean v0, p0, Lcom/android/server/wm/AppCompatConfiguration;->mIsCameraCompatSplitScreenAspectRatioEnabled:Z

    return v0
.end method

.method isCameraCompatTreatmentEnabled()Z
    .locals 2

    .line 1280
    iget-object v0, p0, Lcom/android/server/wm/AppCompatConfiguration;->mDeviceConfig:Lcom/android/server/wm/SynchedDeviceConfig;

    const-string v1, "enable_compat_camera_treatment"

    invoke-virtual {v0, v1}, Lcom/android/server/wm/SynchedDeviceConfig;->getFlagValue(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method isCameraCompatTreatmentEnabledAtBuildTime()Z
    .locals 2

    .line 1289
    iget-object v0, p0, Lcom/android/server/wm/AppCompatConfiguration;->mDeviceConfig:Lcom/android/server/wm/SynchedDeviceConfig;

    const-string v1, "enable_compat_camera_treatment"

    invoke-virtual {v0, v1}, Lcom/android/server/wm/SynchedDeviceConfig;->isBuildTimeFlagEnabled(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method isCompatFakeFocusEnabled()Z
    .locals 2

    .line 1256
    iget-object v0, p0, Lcom/android/server/wm/AppCompatConfiguration;->mDeviceConfig:Lcom/android/server/wm/SynchedDeviceConfig;

    const-string v1, "enable_compat_fake_focus"

    invoke-virtual {v0, v1}, Lcom/android/server/wm/SynchedDeviceConfig;->getFlagValue(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method isDisplayRotationImmersiveAppCompatPolicyEnabled()Z
    .locals 2

    .line 1406
    iget-object v0, p0, Lcom/android/server/wm/AppCompatConfiguration;->mDeviceConfig:Lcom/android/server/wm/SynchedDeviceConfig;

    const-string v1, "enable_display_rotation_immersive_app_compat_policy"

    invoke-virtual {v0, v1}, Lcom/android/server/wm/SynchedDeviceConfig;->getFlagValue(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method isDisplayRotationImmersiveAppCompatPolicyEnabledAtBuildTime()Z
    .locals 2

    .line 1393
    iget-object v0, p0, Lcom/android/server/wm/AppCompatConfiguration;->mDeviceConfig:Lcom/android/server/wm/SynchedDeviceConfig;

    const-string v1, "enable_display_rotation_immersive_app_compat_policy"

    invoke-virtual {v0, v1}, Lcom/android/server/wm/SynchedDeviceConfig;->isBuildTimeFlagEnabled(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method isIgnoreOrientationRequestAllowed()Z
    .locals 2

    .line 425
    iget-object v0, p0, Lcom/android/server/wm/AppCompatConfiguration;->mDeviceConfig:Lcom/android/server/wm/SynchedDeviceConfig;

    const-string v1, "allow_ignore_orientation_request"

    invoke-virtual {v0, v1}, Lcom/android/server/wm/SynchedDeviceConfig;->getFlagValue(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method isLetterboxActivityCornersRounded()Z
    .locals 1

    .line 499
    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatConfiguration;->getLetterboxActivityCornersRadius()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isPolicyForIgnoringRequestedOrientationEnabled()Z
    .locals 1

    .line 1265
    iget-boolean v0, p0, Lcom/android/server/wm/AppCompatConfiguration;->mIsPolicyForIgnoringRequestedOrientationEnabled:Z

    return v0
.end method

.method isTranslucentLetterboxingEnabled()Z
    .locals 2

    .line 1208
    iget-boolean v0, p0, Lcom/android/server/wm/AppCompatConfiguration;->mTranslucentLetterboxingOverrideEnabled:Z

    nop

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/AppCompatConfiguration;->mDeviceConfig:Lcom/android/server/wm/SynchedDeviceConfig;

    .line 1209
    const-string v1, "enable_letterbox_translucent_activity"

    invoke-virtual {v0, v1}, Lcom/android/server/wm/SynchedDeviceConfig;->getFlagValue(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 1208
    :goto_1
    return v0
.end method

.method isUserAppAspectRatioFullscreenEnabled()Z
    .locals 2

    .line 1433
    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatConfiguration;->isUserAppAspectRatioSettingsEnabled()Z

    move-result v0

    nop

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/wm/AppCompatConfiguration;->mUserAppAspectRatioFullscreenOverrideEnabled:Z

    nop

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/AppCompatConfiguration;->mDeviceConfig:Lcom/android/server/wm/SynchedDeviceConfig;

    .line 1435
    const-string v1, "enable_app_compat_user_aspect_ratio_fullscreen"

    invoke-virtual {v0, v1}, Lcom/android/server/wm/SynchedDeviceConfig;->getFlagValue(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 1433
    :goto_0
    return v0
.end method

.method isUserAppAspectRatioSettingsEnabled()Z
    .locals 2

    .line 1413
    iget-boolean v0, p0, Lcom/android/server/wm/AppCompatConfiguration;->mUserAppAspectRatioSettingsOverrideEnabled:Z

    nop

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/AppCompatConfiguration;->mDeviceConfig:Lcom/android/server/wm/SynchedDeviceConfig;

    .line 1414
    const-string v1, "enable_app_compat_aspect_ratio_user_settings"

    invoke-virtual {v0, v1}, Lcom/android/server/wm/SynchedDeviceConfig;->getFlagValue(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 1413
    :goto_1
    return v0
.end method

.method movePositionForHorizontalReachabilityToNextLeftStop(Z)V
    .locals 1
    .param p1, "isDeviceInBookMode"    # Z

    .line 1091
    new-instance v0, Lcom/android/server/wm/AppCompatConfiguration$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lcom/android/server/wm/AppCompatConfiguration$$ExternalSyntheticLambda0;-><init>(Z)V

    invoke-direct {p0, p1, v0}, Lcom/android/server/wm/AppCompatConfiguration;->updatePositionForHorizontalReachability(ZLjava/util/function/Function;)V

    .line 1094
    return-void
.end method

.method movePositionForHorizontalReachabilityToNextRightStop(Z)V
    .locals 1
    .param p1, "isDeviceInBookMode"    # Z

    .line 1081
    new-instance v0, Lcom/android/server/wm/AppCompatConfiguration$$ExternalSyntheticLambda2;

    invoke-direct {v0, p1}, Lcom/android/server/wm/AppCompatConfiguration$$ExternalSyntheticLambda2;-><init>(Z)V

    invoke-direct {p0, p1, v0}, Lcom/android/server/wm/AppCompatConfiguration;->updatePositionForHorizontalReachability(ZLjava/util/function/Function;)V

    .line 1084
    return-void
.end method

.method movePositionForVerticalReachabilityToNextBottomStop(Z)V
    .locals 1
    .param p1, "isDeviceInTabletopMode"    # Z

    .line 1101
    new-instance v0, Lcom/android/server/wm/AppCompatConfiguration$$ExternalSyntheticLambda7;

    invoke-direct {v0, p1}, Lcom/android/server/wm/AppCompatConfiguration$$ExternalSyntheticLambda7;-><init>(Z)V

    invoke-direct {p0, p1, v0}, Lcom/android/server/wm/AppCompatConfiguration;->updatePositionForVerticalReachability(ZLjava/util/function/Function;)V

    .line 1105
    return-void
.end method

.method movePositionForVerticalReachabilityToNextTopStop(Z)V
    .locals 1
    .param p1, "isDeviceInTabletopMode"    # Z

    .line 1112
    new-instance v0, Lcom/android/server/wm/AppCompatConfiguration$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1}, Lcom/android/server/wm/AppCompatConfiguration$$ExternalSyntheticLambda1;-><init>(Z)V

    invoke-direct {p0, p1, v0}, Lcom/android/server/wm/AppCompatConfiguration;->updatePositionForVerticalReachability(ZLjava/util/function/Function;)V

    .line 1115
    return-void
.end method

.method resetCameraCompatAspectRatio()V
    .locals 2

    .line 1354
    iget-object v0, p0, Lcom/android/server/wm/AppCompatConfiguration;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1050124

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v0

    iput v0, p0, Lcom/android/server/wm/AppCompatConfiguration;->mCameraCompatAspectRatio:F

    .line 1356
    return-void
.end method

.method resetCameraCompatRefreshCycleThroughStopEnabled()V
    .locals 1

    .line 1330
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/AppCompatConfiguration;->mIsCameraCompatRefreshCycleThroughStopEnabled:Z

    .line 1331
    return-void
.end method

.method resetCameraCompatRefreshEnabled()V
    .locals 1

    .line 1306
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/AppCompatConfiguration;->mIsCameraCompatTreatmentRefreshEnabled:Z

    .line 1307
    return-void
.end method

.method resetDefaultMinAspectRatioForUnresizableApps()V
    .locals 2

    .line 458
    iget-object v0, p0, Lcom/android/server/wm/AppCompatConfiguration;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10500f3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/AppCompatConfiguration;->setDefaultMinAspectRatioForUnresizableApps(F)V

    .line 460
    return-void
.end method

.method resetDefaultPositionForHorizontalReachability()V
    .locals 2

    .line 883
    iget-object v0, p0, Lcom/android/server/wm/AppCompatConfiguration;->mContext:Landroid/content/Context;

    .line 884
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/wm/AppCompatConfiguration;->readLetterboxHorizontalReachabilityPositionFromConfig(Landroid/content/Context;Z)I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/AppCompatConfiguration;->mDefaultPositionForHorizontalReachability:I

    .line 886
    return-void
.end method

.method resetDefaultPositionForVerticalReachability()V
    .locals 2

    .line 893
    iget-object v0, p0, Lcom/android/server/wm/AppCompatConfiguration;->mContext:Landroid/content/Context;

    .line 894
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/wm/AppCompatConfiguration;->readLetterboxVerticalReachabilityPositionFromConfig(Landroid/content/Context;Z)I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/AppCompatConfiguration;->mDefaultPositionForVerticalReachability:I

    .line 896
    return-void
.end method

.method resetEnabledAutomaticReachabilityInBookMode()V
    .locals 2

    .line 832
    iget-object v0, p0, Lcom/android/server/wm/AppCompatConfiguration;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x11101db

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/wm/AppCompatConfiguration;->mIsAutomaticReachabilityInBookModeEnabled:Z

    .line 834
    return-void
.end method

.method resetFixedOrientationLetterboxAspectRatio()V
    .locals 2

    .line 443
    iget-object v0, p0, Lcom/android/server/wm/AppCompatConfiguration;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10500e9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v0

    iput v0, p0, Lcom/android/server/wm/AppCompatConfiguration;->mFixedOrientationLetterboxAspectRatio:F

    .line 445
    return-void
.end method

.method resetIsCameraCompatFreeformWindowingTreatmentEnabled()V
    .locals 1

    .line 1379
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/AppCompatConfiguration;->mIsCameraCompatFreeformWindowingTreatmentEnabled:Z

    .line 1380
    return-void
.end method

.method resetIsDisplayAspectRatioEnabledForFixedOrientationLetterbox()V
    .locals 2

    .line 1202
    iget-object v0, p0, Lcom/android/server/wm/AppCompatConfiguration;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1203
    const v1, 0x11101dc

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/wm/AppCompatConfiguration;->mIsDisplayAspectRatioEnabledForFixedOrientationLetterbox:Z

    .line 1205
    return-void
.end method

.method resetIsEducationEnabled()V
    .locals 2

    .line 1136
    iget-object v0, p0, Lcom/android/server/wm/AppCompatConfiguration;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x11101de

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/wm/AppCompatConfiguration;->mIsEducationEnabled:Z

    .line 1138
    return-void
.end method

.method resetIsHorizontalReachabilityEnabled()V
    .locals 2

    .line 812
    iget-object v0, p0, Lcom/android/server/wm/AppCompatConfiguration;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x11101e0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/wm/AppCompatConfiguration;->mIsHorizontalReachabilityEnabled:Z

    .line 814
    return-void
.end method

.method resetIsSplitScreenAspectRatioForUnresizableAppsEnabled()V
    .locals 2

    .line 1193
    iget-object v0, p0, Lcom/android/server/wm/AppCompatConfiguration;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x11101e2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/wm/AppCompatConfiguration;->mIsSplitScreenAspectRatioForUnresizableAppsEnabled:Z

    .line 1195
    return-void
.end method

.method resetIsVerticalReachabilityEnabled()V
    .locals 2

    .line 822
    iget-object v0, p0, Lcom/android/server/wm/AppCompatConfiguration;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x11101e3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/wm/AppCompatConfiguration;->mIsVerticalReachabilityEnabled:Z

    .line 824
    return-void
.end method

.method resetLetterboxActivityCornersRadius()V
    .locals 2

    .line 491
    iget-object v0, p0, Lcom/android/server/wm/AppCompatConfiguration;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e00b1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/AppCompatConfiguration;->mLetterboxActivityCornersRadius:I

    .line 493
    return-void
.end method

.method resetLetterboxBackgroundColor()V
    .locals 1

    .line 550
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/AppCompatConfiguration;->mLetterboxBackgroundColorOverride:Landroid/graphics/Color;

    .line 551
    iput-object v0, p0, Lcom/android/server/wm/AppCompatConfiguration;->mLetterboxBackgroundColorResourceIdOverride:Ljava/lang/Integer;

    .line 552
    return-void
.end method

.method resetLetterboxBackgroundType()V
    .locals 1

    .line 578
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/wm/AppCompatConfiguration;->mLetterboxBackgroundTypeOverride:I

    .line 579
    return-void
.end method

.method resetLetterboxBackgroundWallpaperBlurRadiusPx()V
    .locals 2

    .line 664
    iget-object v0, p0, Lcom/android/server/wm/AppCompatConfiguration;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10500f1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/AppCompatConfiguration;->mLetterboxBackgroundWallpaperBlurRadiusPx:I

    .line 666
    return-void
.end method

.method resetLetterboxBackgroundWallpaperDarkScrimAlpha()V
    .locals 2

    .line 635
    iget-object v0, p0, Lcom/android/server/wm/AppCompatConfiguration;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10500f0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v0

    iput v0, p0, Lcom/android/server/wm/AppCompatConfiguration;->mLetterboxBackgroundWallpaperDarkScrimAlpha:F

    .line 637
    return-void
.end method

.method resetLetterboxHorizontalPositionMultiplier()V
    .locals 2

    .line 723
    iget-object v0, p0, Lcom/android/server/wm/AppCompatConfiguration;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10500f4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v0

    iput v0, p0, Lcom/android/server/wm/AppCompatConfiguration;->mLetterboxHorizontalPositionMultiplier:F

    .line 725
    return-void
.end method

.method resetLetterboxVerticalPositionMultiplier()V
    .locals 2

    .line 732
    iget-object v0, p0, Lcom/android/server/wm/AppCompatConfiguration;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10500f8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v0

    iput v0, p0, Lcom/android/server/wm/AppCompatConfiguration;->mLetterboxVerticalPositionMultiplier:F

    .line 734
    return-void
.end method

.method resetPersistentLetterboxPositionForHorizontalReachability()V
    .locals 3

    .line 924
    iget-object v0, p0, Lcom/android/server/wm/AppCompatConfiguration;->mAppCompatConfigurationPersister:Lcom/android/server/wm/AppCompatConfigurationPersister;

    iget-object v1, p0, Lcom/android/server/wm/AppCompatConfiguration;->mContext:Landroid/content/Context;

    .line 926
    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/server/wm/AppCompatConfiguration;->readLetterboxHorizontalReachabilityPositionFromConfig(Landroid/content/Context;Z)I

    move-result v1

    .line 924
    invoke-virtual {v0, v2, v1}, Lcom/android/server/wm/AppCompatConfigurationPersister;->setLetterboxPositionForHorizontalReachability(ZI)V

    .line 928
    iget-object v0, p0, Lcom/android/server/wm/AppCompatConfiguration;->mAppCompatConfigurationPersister:Lcom/android/server/wm/AppCompatConfigurationPersister;

    iget-object v1, p0, Lcom/android/server/wm/AppCompatConfiguration;->mContext:Landroid/content/Context;

    .line 930
    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/server/wm/AppCompatConfiguration;->readLetterboxHorizontalReachabilityPositionFromConfig(Landroid/content/Context;Z)I

    move-result v1

    .line 928
    invoke-virtual {v0, v2, v1}, Lcom/android/server/wm/AppCompatConfigurationPersister;->setLetterboxPositionForHorizontalReachability(ZI)V

    .line 932
    return-void
.end method

.method resetPersistentLetterboxPositionForVerticalReachability()V
    .locals 3

    .line 940
    iget-object v0, p0, Lcom/android/server/wm/AppCompatConfiguration;->mAppCompatConfigurationPersister:Lcom/android/server/wm/AppCompatConfigurationPersister;

    iget-object v1, p0, Lcom/android/server/wm/AppCompatConfiguration;->mContext:Landroid/content/Context;

    .line 942
    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/server/wm/AppCompatConfiguration;->readLetterboxVerticalReachabilityPositionFromConfig(Landroid/content/Context;Z)I

    move-result v1

    .line 940
    invoke-virtual {v0, v2, v1}, Lcom/android/server/wm/AppCompatConfigurationPersister;->setLetterboxPositionForVerticalReachability(ZI)V

    .line 944
    iget-object v0, p0, Lcom/android/server/wm/AppCompatConfiguration;->mAppCompatConfigurationPersister:Lcom/android/server/wm/AppCompatConfigurationPersister;

    iget-object v1, p0, Lcom/android/server/wm/AppCompatConfiguration;->mContext:Landroid/content/Context;

    .line 946
    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/server/wm/AppCompatConfiguration;->readLetterboxVerticalReachabilityPositionFromConfig(Landroid/content/Context;Z)I

    move-result v1

    .line 944
    invoke-virtual {v0, v2, v1}, Lcom/android/server/wm/AppCompatConfigurationPersister;->setLetterboxPositionForVerticalReachability(ZI)V

    .line 948
    return-void
.end method

.method resetTranslucentLetterboxingEnabled()V
    .locals 1

    .line 1227
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/AppCompatConfiguration;->setTranslucentLetterboxingOverrideEnabled(Z)V

    .line 1228
    return-void
.end method

.method resetUserAppAspectRatioFullscreenEnabled()V
    .locals 1

    .line 1443
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/AppCompatConfiguration;->setUserAppAspectRatioFullscreenOverrideEnabled(Z)V

    .line 1444
    return-void
.end method

.method resetUserAppAspectRatioSettingsEnabled()V
    .locals 1

    .line 1426
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/AppCompatConfiguration;->setUserAppAspectRatioSettingsOverrideEnabled(Z)V

    .line 1427
    return-void
.end method

.method setCameraCompatAspectRatio(F)V
    .locals 0
    .param p1, "aspectRatio"    # F

    .line 1338
    iput p1, p0, Lcom/android/server/wm/AppCompatConfiguration;->mCameraCompatAspectRatio:F

    .line 1339
    return-void
.end method

.method setCameraCompatRefreshCycleThroughStopEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .line 1322
    iput-boolean p1, p0, Lcom/android/server/wm/AppCompatConfiguration;->mIsCameraCompatRefreshCycleThroughStopEnabled:Z

    .line 1323
    return-void
.end method

.method setCameraCompatRefreshEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .line 1299
    iput-boolean p1, p0, Lcom/android/server/wm/AppCompatConfiguration;->mIsCameraCompatTreatmentRefreshEnabled:Z

    .line 1300
    return-void
.end method

.method setDefaultMinAspectRatioForUnresizableApps(F)V
    .locals 0
    .param p1, "aspectRatio"    # F

    .line 473
    iput p1, p0, Lcom/android/server/wm/AppCompatConfiguration;->mDefaultMinAspectRatioForUnresizableApps:F

    .line 474
    return-void
.end method

.method setDefaultPositionForHorizontalReachability(I)V
    .locals 0
    .param p1, "position"    # I

    .line 866
    iput p1, p0, Lcom/android/server/wm/AppCompatConfiguration;->mDefaultPositionForHorizontalReachability:I

    .line 867
    return-void
.end method

.method setDefaultPositionForVerticalReachability(I)V
    .locals 0
    .param p1, "position"    # I

    .line 875
    iput p1, p0, Lcom/android/server/wm/AppCompatConfiguration;->mDefaultPositionForVerticalReachability:I

    .line 876
    return-void
.end method

.method setFixedOrientationLetterboxAspectRatio(F)V
    .locals 0
    .param p1, "aspectRatio"    # F

    .line 435
    iput p1, p0, Lcom/android/server/wm/AppCompatConfiguration;->mFixedOrientationLetterboxAspectRatio:F

    .line 436
    return-void
.end method

.method setIsAutomaticReachabilityInBookModeEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .line 803
    iput-boolean p1, p0, Lcom/android/server/wm/AppCompatConfiguration;->mIsAutomaticReachabilityInBookModeEnabled:Z

    .line 804
    return-void
.end method

.method setIsCameraCompatFreeformWindowingTreatmentEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .line 1363
    iput-boolean p1, p0, Lcom/android/server/wm/AppCompatConfiguration;->mIsCameraCompatFreeformWindowingTreatmentEnabled:Z

    .line 1364
    return-void
.end method

.method setIsDisplayAspectRatioEnabledForFixedOrientationLetterbox(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .line 1185
    iput-boolean p1, p0, Lcom/android/server/wm/AppCompatConfiguration;->mIsDisplayAspectRatioEnabledForFixedOrientationLetterbox:Z

    .line 1186
    return-void
.end method

.method setIsEducationEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .line 1128
    iput-boolean p1, p0, Lcom/android/server/wm/AppCompatConfiguration;->mIsEducationEnabled:Z

    .line 1129
    return-void
.end method

.method setIsHorizontalReachabilityEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .line 787
    iput-boolean p1, p0, Lcom/android/server/wm/AppCompatConfiguration;->mIsHorizontalReachabilityEnabled:Z

    .line 788
    return-void
.end method

.method setIsSplitScreenAspectRatioForUnresizableAppsEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .line 1177
    iput-boolean p1, p0, Lcom/android/server/wm/AppCompatConfiguration;->mIsSplitScreenAspectRatioForUnresizableAppsEnabled:Z

    .line 1178
    return-void
.end method

.method setIsVerticalReachabilityEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .line 795
    iput-boolean p1, p0, Lcom/android/server/wm/AppCompatConfiguration;->mIsVerticalReachabilityEnabled:Z

    .line 796
    return-void
.end method

.method setLetterboxActivityCornersRadius(I)V
    .locals 0
    .param p1, "cornersRadius"    # I

    .line 483
    iput p1, p0, Lcom/android/server/wm/AppCompatConfiguration;->mLetterboxActivityCornersRadius:I

    .line 484
    return-void
.end method

.method setLetterboxBackgroundColor(Landroid/graphics/Color;)V
    .locals 0
    .param p1, "color"    # Landroid/graphics/Color;

    .line 533
    iput-object p1, p0, Lcom/android/server/wm/AppCompatConfiguration;->mLetterboxBackgroundColorOverride:Landroid/graphics/Color;

    .line 534
    return-void
.end method

.method setLetterboxBackgroundColorResourceId(I)V
    .locals 1
    .param p1, "colorId"    # I

    .line 542
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/AppCompatConfiguration;->mLetterboxBackgroundColorResourceIdOverride:Ljava/lang/Integer;

    .line 543
    return-void
.end method

.method setLetterboxBackgroundTypeOverride(I)V
    .locals 0
    .param p1, "backgroundType"    # I

    .line 566
    iput p1, p0, Lcom/android/server/wm/AppCompatConfiguration;->mLetterboxBackgroundTypeOverride:I

    .line 567
    return-void
.end method

.method setLetterboxBackgroundWallpaperBlurRadiusPx(I)V
    .locals 0
    .param p1, "radius"    # I

    .line 655
    iput p1, p0, Lcom/android/server/wm/AppCompatConfiguration;->mLetterboxBackgroundWallpaperBlurRadiusPx:I

    .line 656
    return-void
.end method

.method setLetterboxBackgroundWallpaperDarkScrimAlpha(F)V
    .locals 0
    .param p1, "alpha"    # F

    .line 627
    iput p1, p0, Lcom/android/server/wm/AppCompatConfiguration;->mLetterboxBackgroundWallpaperDarkScrimAlpha:F

    .line 628
    return-void
.end method

.method setLetterboxBookModePositionMultiplier(F)V
    .locals 1
    .param p1, "multiplier"    # F

    .line 754
    const-string v0, "mLetterboxBookModePositionMultiplier"

    invoke-direct {p0, p1, v0}, Lcom/android/server/wm/AppCompatConfiguration;->assertValidMultiplier(FLjava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/android/server/wm/AppCompatConfiguration;->mLetterboxBookModePositionMultiplier:F

    .line 756
    return-void
.end method

.method setLetterboxHorizontalPositionMultiplier(F)V
    .locals 1
    .param p1, "multiplier"    # F

    .line 704
    const-string v0, "mLetterboxHorizontalPositionMultiplier"

    invoke-direct {p0, p1, v0}, Lcom/android/server/wm/AppCompatConfiguration;->assertValidMultiplier(FLjava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/android/server/wm/AppCompatConfiguration;->mLetterboxHorizontalPositionMultiplier:F

    .line 706
    return-void
.end method

.method setLetterboxTabletopModePositionMultiplier(F)V
    .locals 1
    .param p1, "multiplier"    # F

    .line 743
    const-string v0, "mLetterboxTabletopModePositionMultiplier"

    invoke-direct {p0, p1, v0}, Lcom/android/server/wm/AppCompatConfiguration;->assertValidMultiplier(FLjava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/android/server/wm/AppCompatConfiguration;->mLetterboxTabletopModePositionMultiplier:F

    .line 745
    return-void
.end method

.method setLetterboxVerticalPositionMultiplier(F)V
    .locals 1
    .param p1, "multiplier"    # F

    .line 714
    const-string v0, "mLetterboxVerticalPositionMultiplier"

    invoke-direct {p0, p1, v0}, Lcom/android/server/wm/AppCompatConfiguration;->assertValidMultiplier(FLjava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/android/server/wm/AppCompatConfiguration;->mLetterboxVerticalPositionMultiplier:F

    .line 716
    return-void
.end method

.method setPersistentLetterboxPositionForHorizontalReachability(ZI)V
    .locals 1
    .param p1, "forBookMode"    # Z
    .param p2, "position"    # I

    .line 904
    iget-object v0, p0, Lcom/android/server/wm/AppCompatConfiguration;->mAppCompatConfigurationPersister:Lcom/android/server/wm/AppCompatConfigurationPersister;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/AppCompatConfigurationPersister;->setLetterboxPositionForHorizontalReachability(ZI)V

    .line 906
    return-void
.end method

.method setPersistentLetterboxPositionForVerticalReachability(ZI)V
    .locals 1
    .param p1, "forTabletopMode"    # Z
    .param p2, "position"    # I

    .line 914
    iget-object v0, p0, Lcom/android/server/wm/AppCompatConfiguration;->mAppCompatConfigurationPersister:Lcom/android/server/wm/AppCompatConfigurationPersister;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/AppCompatConfigurationPersister;->setLetterboxPositionForVerticalReachability(ZI)V

    .line 916
    return-void
.end method

.method setTranslucentLetterboxingOverrideEnabled(Z)V
    .locals 0
    .param p1, "translucentLetterboxingOverrideEnabled"    # Z

    .line 1218
    iput-boolean p1, p0, Lcom/android/server/wm/AppCompatConfiguration;->mTranslucentLetterboxingOverrideEnabled:Z

    .line 1219
    return-void
.end method

.method setUserAppAspectRatioFullscreenOverrideEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .line 1439
    iput-boolean p1, p0, Lcom/android/server/wm/AppCompatConfiguration;->mUserAppAspectRatioFullscreenOverrideEnabled:Z

    .line 1440
    return-void
.end method

.method setUserAppAspectRatioSettingsOverrideEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .line 1418
    iput-boolean p1, p0, Lcom/android/server/wm/AppCompatConfiguration;->mUserAppAspectRatioSettingsOverrideEnabled:Z

    .line 1419
    return-void
.end method
