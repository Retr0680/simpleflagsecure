.class Lcom/android/server/wm/AppCompatReachabilityOverrides;
.super Ljava/lang/Object;
.source "AppCompatReachabilityOverrides.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/AppCompatReachabilityOverrides$ReachabilityState;
    }
.end annotation


# instance fields
.field private final mActivityRecord:Lcom/android/server/wm/ActivityRecord;

.field private final mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

.field private final mAppCompatDeviceStateQuery:Lcom/android/server/wm/AppCompatDeviceStateQuery;

.field private final mReachabilityState:Lcom/android/server/wm/AppCompatReachabilityOverrides$ReachabilityState;


# direct methods
.method constructor <init>(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/AppCompatConfiguration;Lcom/android/server/wm/AppCompatDeviceStateQuery;)V
    .locals 2
    .param p1, "activityRecord"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "appCompatConfiguration"    # Lcom/android/server/wm/AppCompatConfiguration;
    .param p3, "appCompatDeviceStateQuery"    # Lcom/android/server/wm/AppCompatDeviceStateQuery;

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lcom/android/server/wm/AppCompatReachabilityOverrides;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 56
    iput-object p2, p0, Lcom/android/server/wm/AppCompatReachabilityOverrides;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    .line 57
    iput-object p3, p0, Lcom/android/server/wm/AppCompatReachabilityOverrides;->mAppCompatDeviceStateQuery:Lcom/android/server/wm/AppCompatDeviceStateQuery;

    .line 58
    new-instance v0, Lcom/android/server/wm/AppCompatReachabilityOverrides$ReachabilityState;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/wm/AppCompatReachabilityOverrides$ReachabilityState;-><init>(Lcom/android/server/wm/AppCompatReachabilityOverrides-IA;)V

    iput-object v0, p0, Lcom/android/server/wm/AppCompatReachabilityOverrides;->mReachabilityState:Lcom/android/server/wm/AppCompatReachabilityOverrides$ReachabilityState;

    .line 59
    return-void
.end method

.method private isDisplayFullScreenAndSeparatingHinge()Z
    .locals 3

    .line 215
    iget-object v0, p0, Lcom/android/server/wm/AppCompatReachabilityOverrides;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    .line 216
    .local v0, "task":Lcom/android/server/wm/Task;
    iget-object v1, p0, Lcom/android/server/wm/AppCompatReachabilityOverrides;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    iget-object v1, v1, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    nop

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/AppCompatReachabilityOverrides;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    iget-object v1, v1, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 217
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDisplayRotation()Lcom/android/server/wm/DisplayRotation;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayRotation;->isDisplaySeparatingHinge()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 219
    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 216
    :goto_0
    return v2
.end method

.method private isFullScreenAndBookModeEnabled()Z
    .locals 2

    .line 255
    iget-object v0, p0, Lcom/android/server/wm/AppCompatReachabilityOverrides;->mAppCompatDeviceStateQuery:Lcom/android/server/wm/AppCompatDeviceStateQuery;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/wm/AppCompatDeviceStateQuery;->isDisplayFullScreenAndInPosture(Z)Z

    move-result v0

    nop

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/AppCompatReachabilityOverrides;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    .line 256
    invoke-virtual {v0}, Lcom/android/server/wm/AppCompatConfiguration;->getIsAutomaticReachabilityInBookModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    nop

    .line 255
    :goto_0
    return v1
.end method

.method private isHorizontalReachabilityEnabled(Landroid/content/res/Configuration;)Z
    .locals 7
    .param p1, "parentConfiguration"    # Landroid/content/res/Configuration;

    .line 270
    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatReachabilityOverrides;->allowHorizontalReachabilityForThinLetterbox()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 271
    return v1

    .line 273
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/AppCompatReachabilityOverrides;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getParentAppBoundsOverride()Landroid/graphics/Rect;

    move-result-object v0

    .line 274
    .local v0, "parentAppBoundsOverride":Landroid/graphics/Rect;
    if-eqz v0, :cond_1

    .line 275
    move-object v2, v0

    goto :goto_0

    :cond_1
    iget-object v2, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v2}, Landroid/app/WindowConfiguration;->getAppBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 278
    .local v2, "parentAppBounds":Landroid/graphics/Rect;
    :goto_0
    iget-object v3, p0, Lcom/android/server/wm/AppCompatReachabilityOverrides;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    iget-object v3, v3, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    .line 279
    invoke-virtual {v3}, Lcom/android/server/wm/AppCompatController;->getTransparentPolicy()Lcom/android/server/wm/TransparentPolicy;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wm/TransparentPolicy;->getFirstOpaqueActivity()Ljava/util/Optional;

    move-result-object v3

    new-instance v4, Lcom/android/server/wm/AppCompatReachabilityOverrides$$ExternalSyntheticLambda0;

    invoke-direct {v4}, Lcom/android/server/wm/AppCompatReachabilityOverrides$$ExternalSyntheticLambda0;-><init>()V

    .line 280
    invoke-virtual {v3, v4}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wm/AppCompatReachabilityOverrides;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 281
    invoke-virtual {v4}, Lcom/android/server/wm/ActivityRecord;->getScreenResolvedBounds()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Rect;

    .line 282
    .local v3, "opaqueActivityBounds":Landroid/graphics/Rect;
    iget-object v4, p0, Lcom/android/server/wm/AppCompatReachabilityOverrides;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    invoke-virtual {v4}, Lcom/android/server/wm/AppCompatConfiguration;->getIsHorizontalReachabilityEnabled()Z

    move-result v4

    nop

    if-eqz v4, :cond_2

    iget-object v4, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 283
    invoke-virtual {v4}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2

    .line 286
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v4

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v6

    if-gt v4, v6, :cond_2

    .line 287
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v6

    if-le v4, v6, :cond_2

    move v1, v5

    goto :goto_1

    :cond_2
    nop

    .line 282
    :goto_1
    return v1
.end method

.method private isVerticalReachabilityEnabled(Landroid/content/res/Configuration;)Z
    .locals 7
    .param p1, "parentConfiguration"    # Landroid/content/res/Configuration;

    .line 301
    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatReachabilityOverrides;->allowVerticalReachabilityForThinLetterbox()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 302
    return v1

    .line 304
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/AppCompatReachabilityOverrides;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getParentAppBoundsOverride()Landroid/graphics/Rect;

    move-result-object v0

    .line 305
    .local v0, "parentAppBoundsOverride":Landroid/graphics/Rect;
    if-eqz v0, :cond_1

    .line 306
    move-object v2, v0

    goto :goto_0

    :cond_1
    iget-object v2, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v2}, Landroid/app/WindowConfiguration;->getAppBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 309
    .local v2, "parentAppBounds":Landroid/graphics/Rect;
    :goto_0
    iget-object v3, p0, Lcom/android/server/wm/AppCompatReachabilityOverrides;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    iget-object v3, v3, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    .line 310
    invoke-virtual {v3}, Lcom/android/server/wm/AppCompatController;->getTransparentPolicy()Lcom/android/server/wm/TransparentPolicy;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wm/TransparentPolicy;->getFirstOpaqueActivity()Ljava/util/Optional;

    move-result-object v3

    new-instance v4, Lcom/android/server/wm/AppCompatReachabilityOverrides$$ExternalSyntheticLambda0;

    invoke-direct {v4}, Lcom/android/server/wm/AppCompatReachabilityOverrides$$ExternalSyntheticLambda0;-><init>()V

    .line 311
    invoke-virtual {v3, v4}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wm/AppCompatReachabilityOverrides;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 312
    invoke-virtual {v4}, Lcom/android/server/wm/ActivityRecord;->getScreenResolvedBounds()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Rect;

    .line 313
    .local v3, "opaqueActivityBounds":Landroid/graphics/Rect;
    iget-object v4, p0, Lcom/android/server/wm/AppCompatReachabilityOverrides;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    invoke-virtual {v4}, Lcom/android/server/wm/AppCompatConfiguration;->getIsVerticalReachabilityEnabled()Z

    move-result v4

    nop

    if-eqz v4, :cond_2

    iget-object v4, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 314
    invoke-virtual {v4}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2

    .line 317
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v6

    if-gt v4, v6, :cond_2

    .line 318
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v4

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v6

    if-le v4, v6, :cond_2

    move v1, v5

    goto :goto_1

    :cond_2
    nop

    .line 313
    :goto_1
    return v1
.end method

.method private letterboxHorizontalReachabilityPositionToLetterboxPositionForLogging(I)I
    .locals 3
    .param p1, "position"    # I

    .line 224
    packed-switch p1, :pswitch_data_0

    .line 232
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected letterbox horizontal reachability position type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 230
    :pswitch_0
    const/4 v0, 0x4

    return v0

    .line 228
    :pswitch_1
    const/4 v0, 0x2

    return v0

    .line 226
    :pswitch_2
    const/4 v0, 0x3

    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private letterboxVerticalReachabilityPositionToLetterboxPositionForLogging(I)I
    .locals 3
    .param p1, "position"    # I

    .line 240
    packed-switch p1, :pswitch_data_0

    .line 248
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected letterbox vertical reachability position type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 246
    :pswitch_0
    const/4 v0, 0x6

    return v0

    .line 244
    :pswitch_1
    const/4 v0, 0x2

    return v0

    .line 242
    :pswitch_2
    const/4 v0, 0x5

    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method allowHorizontalReachabilityForThinLetterbox()Z
    .locals 1

    .line 174
    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatReachabilityOverrides;->isHorizontalThinLetterboxed()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method allowVerticalReachabilityForThinLetterbox()Z
    .locals 1

    .line 164
    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatReachabilityOverrides;->isVerticalThinLetterboxed()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method getHorizontalPositionMultiplier(Landroid/content/res/Configuration;)F
    .locals 2
    .param p1, "parentConfiguration"    # Landroid/content/res/Configuration;

    .line 84
    invoke-direct {p0}, Lcom/android/server/wm/AppCompatReachabilityOverrides;->isFullScreenAndBookModeEnabled()Z

    move-result v0

    .line 85
    .local v0, "bookModeEnabled":Z
    invoke-direct {p0, p1}, Lcom/android/server/wm/AppCompatReachabilityOverrides;->isHorizontalReachabilityEnabled(Landroid/content/res/Configuration;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 88
    iget-object v1, p0, Lcom/android/server/wm/AppCompatReachabilityOverrides;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/AppCompatConfiguration;->getHorizontalMultiplierForReachability(Z)F

    move-result v1

    goto :goto_0

    .line 89
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/AppCompatReachabilityOverrides;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/AppCompatConfiguration;->getLetterboxHorizontalPositionMultiplier(Z)F

    move-result v1

    .line 85
    :goto_0
    return v1
.end method

.method getLetterboxPositionForHorizontalReachability()I
    .locals 2

    .line 134
    invoke-direct {p0}, Lcom/android/server/wm/AppCompatReachabilityOverrides;->isFullScreenAndBookModeEnabled()Z

    move-result v0

    .line 135
    .local v0, "isInFullScreenBookMode":Z
    iget-object v1, p0, Lcom/android/server/wm/AppCompatReachabilityOverrides;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/AppCompatConfiguration;->getLetterboxPositionForHorizontalReachability(Z)I

    move-result v1

    return v1
.end method

.method getLetterboxPositionForLogging()I
    .locals 4

    .line 140
    const/4 v0, 0x0

    .line 141
    .local v0, "positionToLog":I
    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatReachabilityOverrides;->isHorizontalReachabilityEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 142
    iget-object v1, p0, Lcom/android/server/wm/AppCompatReachabilityOverrides;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    iget-object v2, p0, Lcom/android/server/wm/AppCompatReachabilityOverrides;->mAppCompatDeviceStateQuery:Lcom/android/server/wm/AppCompatDeviceStateQuery;

    .line 144
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/server/wm/AppCompatDeviceStateQuery;->isDisplayFullScreenAndInPosture(Z)Z

    move-result v2

    .line 143
    invoke-virtual {v1, v2}, Lcom/android/server/wm/AppCompatConfiguration;->getLetterboxPositionForHorizontalReachability(Z)I

    move-result v1

    .line 145
    .local v1, "letterboxPositionForHorizontalReachability":I
    invoke-direct {p0, v1}, Lcom/android/server/wm/AppCompatReachabilityOverrides;->letterboxHorizontalReachabilityPositionToLetterboxPositionForLogging(I)I

    move-result v0

    .line 147
    .end local v1    # "letterboxPositionForHorizontalReachability":I
    :cond_0
    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatReachabilityOverrides;->isVerticalReachabilityEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 148
    iget-object v1, p0, Lcom/android/server/wm/AppCompatReachabilityOverrides;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    iget-object v2, p0, Lcom/android/server/wm/AppCompatReachabilityOverrides;->mAppCompatDeviceStateQuery:Lcom/android/server/wm/AppCompatDeviceStateQuery;

    .line 150
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/server/wm/AppCompatDeviceStateQuery;->isDisplayFullScreenAndInPosture(Z)Z

    move-result v2

    .line 149
    invoke-virtual {v1, v2}, Lcom/android/server/wm/AppCompatConfiguration;->getLetterboxPositionForVerticalReachability(Z)I

    move-result v1

    .line 151
    .local v1, "letterboxPositionForVerticalReachability":I
    invoke-direct {p0, v1}, Lcom/android/server/wm/AppCompatReachabilityOverrides;->letterboxVerticalReachabilityPositionToLetterboxPositionForLogging(I)I

    move-result v0

    .line 154
    .end local v1    # "letterboxPositionForVerticalReachability":I
    :goto_0
    return v0
.end method

.method getLetterboxPositionForVerticalReachability()I
    .locals 2

    .line 126
    iget-object v0, p0, Lcom/android/server/wm/AppCompatReachabilityOverrides;->mAppCompatDeviceStateQuery:Lcom/android/server/wm/AppCompatDeviceStateQuery;

    .line 127
    invoke-virtual {v0}, Lcom/android/server/wm/AppCompatDeviceStateQuery;->isDisplayFullScreenAndSeparatingHinge()Z

    move-result v0

    .line 128
    .local v0, "isInFullScreenTabletopMode":Z
    iget-object v1, p0, Lcom/android/server/wm/AppCompatReachabilityOverrides;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/AppCompatConfiguration;->getLetterboxPositionForVerticalReachability(Z)I

    move-result v1

    return v1
.end method

.method getVerticalPositionMultiplier(Landroid/content/res/Configuration;)F
    .locals 2
    .param p1, "parentConfiguration"    # Landroid/content/res/Configuration;

    .line 103
    iget-object v0, p0, Lcom/android/server/wm/AppCompatReachabilityOverrides;->mAppCompatDeviceStateQuery:Lcom/android/server/wm/AppCompatDeviceStateQuery;

    .line 104
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/AppCompatDeviceStateQuery;->isDisplayFullScreenAndInPosture(Z)Z

    move-result v0

    .line 105
    .local v0, "tabletopMode":Z
    invoke-direct {p0, p1}, Lcom/android/server/wm/AppCompatReachabilityOverrides;->isVerticalReachabilityEnabled(Landroid/content/res/Configuration;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 108
    iget-object v1, p0, Lcom/android/server/wm/AppCompatReachabilityOverrides;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/AppCompatConfiguration;->getVerticalMultiplierForReachability(Z)F

    move-result v1

    goto :goto_0

    .line 109
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/AppCompatReachabilityOverrides;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/AppCompatConfiguration;->getLetterboxVerticalPositionMultiplier(Z)F

    move-result v1

    .line 105
    :goto_0
    return v1
.end method

.method isDoubleTapEvent()Z
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/android/server/wm/AppCompatReachabilityOverrides;->mReachabilityState:Lcom/android/server/wm/AppCompatReachabilityOverrides$ReachabilityState;

    invoke-static {v0}, Lcom/android/server/wm/AppCompatReachabilityOverrides$ReachabilityState;->-$$Nest$fgetmIsDoubleTapEvent(Lcom/android/server/wm/AppCompatReachabilityOverrides$ReachabilityState;)Z

    move-result v0

    return v0
.end method

.method isFromDoubleTap()Z
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/android/server/wm/AppCompatReachabilityOverrides;->mReachabilityState:Lcom/android/server/wm/AppCompatReachabilityOverrides$ReachabilityState;

    invoke-virtual {v0}, Lcom/android/server/wm/AppCompatReachabilityOverrides$ReachabilityState;->isFromDoubleTap()Z

    move-result v0

    return v0
.end method

.method isHorizontalReachabilityEnabled()Z
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/android/server/wm/AppCompatReachabilityOverrides;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wm/AppCompatReachabilityOverrides;->isHorizontalReachabilityEnabled(Landroid/content/res/Configuration;)Z

    move-result v0

    return v0
.end method

.method isHorizontalThinLetterboxed()Z
    .locals 5

    .line 198
    iget-object v0, p0, Lcom/android/server/wm/AppCompatReachabilityOverrides;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    invoke-virtual {v0}, Lcom/android/server/wm/AppCompatConfiguration;->getThinLetterboxWidthPx()I

    move-result v0

    .line 199
    .local v0, "thinWidth":I
    const/4 v1, 0x0

    if-gez v0, :cond_0

    .line 200
    return v1

    .line 202
    :cond_0
    iget-object v2, p0, Lcom/android/server/wm/AppCompatReachabilityOverrides;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v2

    .line 203
    .local v2, "task":Lcom/android/server/wm/Task;
    if-nez v2, :cond_1

    .line 204
    return v1

    .line 206
    :cond_1
    nop

    .line 207
    invoke-virtual {v2}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    iget-object v4, p0, Lcom/android/server/wm/AppCompatReachabilityOverrides;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v4}, Lcom/android/server/wm/ActivityRecord;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    sub-int/2addr v3, v4

    .line 206
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    .line 208
    .local v3, "padding":I
    if-gt v3, v0, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method isLetterboxDoubleTapEducationEnabled()Z
    .locals 1

    .line 121
    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatReachabilityOverrides;->isHorizontalReachabilityEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatReachabilityOverrides;->isVerticalReachabilityEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method isVerticalReachabilityEnabled()Z
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/android/server/wm/AppCompatReachabilityOverrides;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wm/AppCompatReachabilityOverrides;->isVerticalReachabilityEnabled(Landroid/content/res/Configuration;)Z

    move-result v0

    return v0
.end method

.method isVerticalThinLetterboxed()Z
    .locals 5

    .line 181
    iget-object v0, p0, Lcom/android/server/wm/AppCompatReachabilityOverrides;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    invoke-virtual {v0}, Lcom/android/server/wm/AppCompatConfiguration;->getThinLetterboxHeightPx()I

    move-result v0

    .line 182
    .local v0, "thinHeight":I
    const/4 v1, 0x0

    if-gez v0, :cond_0

    .line 183
    return v1

    .line 185
    :cond_0
    iget-object v2, p0, Lcom/android/server/wm/AppCompatReachabilityOverrides;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v2

    .line 186
    .local v2, "task":Lcom/android/server/wm/Task;
    if-nez v2, :cond_1

    .line 187
    return v1

    .line 189
    :cond_1
    nop

    .line 190
    invoke-virtual {v2}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    iget-object v4, p0, Lcom/android/server/wm/AppCompatReachabilityOverrides;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v4}, Lcom/android/server/wm/ActivityRecord;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    sub-int/2addr v3, v4

    .line 189
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    .line 191
    .local v3, "padding":I
    if-gt v3, v0, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method setDoubleTapEvent()V
    .locals 2

    .line 70
    iget-object v0, p0, Lcom/android/server/wm/AppCompatReachabilityOverrides;->mReachabilityState:Lcom/android/server/wm/AppCompatReachabilityOverrides$ReachabilityState;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/server/wm/AppCompatReachabilityOverrides$ReachabilityState;->-$$Nest$fputmIsDoubleTapEvent(Lcom/android/server/wm/AppCompatReachabilityOverrides$ReachabilityState;Z)V

    .line 71
    return-void
.end method
