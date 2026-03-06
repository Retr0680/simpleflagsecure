.class final Lcom/android/server/wm/DisplayRotationImmersiveAppCompatPolicy;
.super Ljava/lang/Object;
.source "DisplayRotationImmersiveAppCompatPolicy.java"


# instance fields
.field private final mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

.field private final mDisplayContent:Lcom/android/server/wm/DisplayContent;

.field private final mDisplayRotation:Lcom/android/server/wm/DisplayRotation;


# direct methods
.method public static synthetic $r8$lambda$goMWfxf-NANK8C-U8-jjfWI8u4E(Lcom/android/server/wm/DisplayRotationImmersiveAppCompatPolicy;Lcom/android/server/wm/WindowOrientationListener;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/wm/DisplayRotationImmersiveAppCompatPolicy;->lambda$deferOrientationUpdate$0(Lcom/android/server/wm/WindowOrientationListener;)V

    return-void
.end method

.method private constructor <init>(Lcom/android/server/wm/AppCompatConfiguration;Lcom/android/server/wm/DisplayRotation;Lcom/android/server/wm/DisplayContent;)V
    .locals 0
    .param p1, "appCompatConfiguration"    # Lcom/android/server/wm/AppCompatConfiguration;
    .param p2, "displayRotation"    # Lcom/android/server/wm/DisplayRotation;
    .param p3, "displayContent"    # Lcom/android/server/wm/DisplayContent;

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p2, p0, Lcom/android/server/wm/DisplayRotationImmersiveAppCompatPolicy;->mDisplayRotation:Lcom/android/server/wm/DisplayRotation;

    .line 67
    iput-object p1, p0, Lcom/android/server/wm/DisplayRotationImmersiveAppCompatPolicy;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    .line 68
    iput-object p3, p0, Lcom/android/server/wm/DisplayRotationImmersiveAppCompatPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 69
    return-void
.end method

.method static createIfNeeded(Lcom/android/server/wm/AppCompatConfiguration;Lcom/android/server/wm/DisplayRotation;Lcom/android/server/wm/DisplayContent;)Lcom/android/server/wm/DisplayRotationImmersiveAppCompatPolicy;
    .locals 1
    .param p0, "appCompatConfiguration"    # Lcom/android/server/wm/AppCompatConfiguration;
    .param p1, "displayRotation"    # Lcom/android/server/wm/DisplayRotation;
    .param p2, "displayContent"    # Lcom/android/server/wm/DisplayContent;

    .line 49
    nop

    .line 50
    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatConfiguration;->isDisplayRotationImmersiveAppCompatPolicyEnabledAtBuildTime()Z

    move-result v0

    if-nez v0, :cond_0

    .line 51
    const/4 v0, 0x0

    return-object v0

    .line 54
    :cond_0
    new-instance v0, Lcom/android/server/wm/DisplayRotationImmersiveAppCompatPolicy;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/wm/DisplayRotationImmersiveAppCompatPolicy;-><init>(Lcom/android/server/wm/AppCompatConfiguration;Lcom/android/server/wm/DisplayRotation;Lcom/android/server/wm/DisplayContent;)V

    return-object v0
.end method

.method private hasRequestedToHideStatusAndNavBars(Lcom/android/server/wm/ActivityRecord;)Z
    .locals 5
    .param p1, "activity"    # Lcom/android/server/wm/ActivityRecord;

    .line 173
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->findMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v0

    .line 174
    .local v0, "mainWindow":Lcom/android/server/wm/WindowState;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 175
    return v1

    .line 177
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getRequestedVisibleTypes()I

    move-result v2

    .line 178
    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    move-result v3

    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v4

    or-int/2addr v3, v4

    and-int/2addr v2, v3

    if-nez v2, :cond_1

    const/4 v1, 0x1

    .line 177
    :cond_1
    return v1
.end method

.method private isRotationLockEnforcedLocked(I)Z
    .locals 5
    .param p1, "proposedRotation"    # I

    .line 133
    iget-object v0, p0, Lcom/android/server/wm/DisplayRotationImmersiveAppCompatPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getIgnoreOrientationRequest()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 134
    return v1

    .line 137
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/DisplayRotationImmersiveAppCompatPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->topRunningActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 138
    .local v0, "activityRecord":Lcom/android/server/wm/ActivityRecord;
    if-nez v0, :cond_1

    .line 139
    return v1

    .line 143
    :cond_1
    invoke-direct {p0, v0}, Lcom/android/server/wm/DisplayRotationImmersiveAppCompatPolicy;->hasRequestedToHideStatusAndNavBars(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 144
    return v1

    .line 149
    :cond_2
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 150
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_3

    goto :goto_0

    .line 155
    :cond_3
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->areBoundsLetterboxed()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 156
    return v1

    .line 159
    :cond_4
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getRequestedConfigurationOrientation()I

    move-result v2

    if-nez v2, :cond_5

    .line 160
    return v1

    .line 165
    :cond_5
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getRequestedConfigurationOrientation()I

    move-result v2

    .line 166
    invoke-direct {p0, p1}, Lcom/android/server/wm/DisplayRotationImmersiveAppCompatPolicy;->surfaceRotationToConfigurationOrientation(I)I

    move-result v4

    if-eq v2, v4, :cond_6

    move v1, v3

    .line 165
    :cond_6
    return v1

    .line 151
    :cond_7
    :goto_0
    return v1
.end method

.method private synthetic lambda$deferOrientationUpdate$0(Lcom/android/server/wm/WindowOrientationListener;)V
    .locals 2
    .param p1, "orientationListener"    # Lcom/android/server/wm/WindowOrientationListener;

    .line 94
    invoke-virtual {p1}, Lcom/android/server/wm/WindowOrientationListener;->getProposedRotation()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/wm/DisplayRotationImmersiveAppCompatPolicy;->isRotationLockEnforcedLocked(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/android/server/wm/DisplayRotationImmersiveAppCompatPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Lcom/android/server/wm/WindowManagerService;->updateRotation(ZZ)V

    .line 98
    :cond_0
    return-void
.end method

.method private surfaceRotationToConfigurationOrientation(I)I
    .locals 1
    .param p1, "rotation"    # I

    .line 183
    iget-object v0, p0, Lcom/android/server/wm/DisplayRotationImmersiveAppCompatPolicy;->mDisplayRotation:Lcom/android/server/wm/DisplayRotation;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/DisplayRotation;->isAnyPortrait(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 184
    const/4 v0, 0x1

    return v0

    .line 185
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/DisplayRotationImmersiveAppCompatPolicy;->mDisplayRotation:Lcom/android/server/wm/DisplayRotation;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/DisplayRotation;->isLandscapeOrSeascape(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 186
    const/4 v0, 0x2

    return v0

    .line 188
    :cond_1
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method deferOrientationUpdate()Z
    .locals 4

    .line 77
    iget-object v0, p0, Lcom/android/server/wm/DisplayRotationImmersiveAppCompatPolicy;->mDisplayRotation:Lcom/android/server/wm/DisplayRotation;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayRotation;->getUserRotation()I

    move-result v0

    const/4 v1, 0x0

    nop

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/server/wm/DisplayRotationImmersiveAppCompatPolicy;->mDisplayRotation:Lcom/android/server/wm/DisplayRotation;

    .line 78
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayRotation;->getLastOrientation()I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    goto :goto_1

    .line 81
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/DisplayRotationImmersiveAppCompatPolicy;->mDisplayRotation:Lcom/android/server/wm/DisplayRotation;

    .line 82
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayRotation;->getOrientationListener()Lcom/android/server/wm/WindowOrientationListener;

    move-result-object v0

    .line 83
    .local v0, "orientationListener":Lcom/android/server/wm/WindowOrientationListener;
    if-eqz v0, :cond_3

    .line 84
    invoke-virtual {v0}, Lcom/android/server/wm/WindowOrientationListener;->getProposedRotation()I

    move-result v2

    iget-object v3, p0, Lcom/android/server/wm/DisplayRotationImmersiveAppCompatPolicy;->mDisplayRotation:Lcom/android/server/wm/DisplayRotation;

    invoke-virtual {v3}, Lcom/android/server/wm/DisplayRotation;->getRotation()I

    move-result v3

    if-ne v2, v3, :cond_1

    goto :goto_0

    .line 90
    :cond_1
    iget-object v2, p0, Lcom/android/server/wm/DisplayRotationImmersiveAppCompatPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v2, v2, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    iget-object v3, p0, Lcom/android/server/wm/DisplayRotationImmersiveAppCompatPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v2, v3}, Lcom/android/server/wm/TransitionController;->hasTransientLaunch(Lcom/android/server/wm/DisplayContent;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 91
    return v1

    .line 93
    :cond_2
    iget-object v1, p0, Lcom/android/server/wm/DisplayRotationImmersiveAppCompatPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v1, v1, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    iget-object v1, v1, Lcom/android/server/wm/TransitionController;->mStateValidators:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/server/wm/DisplayRotationImmersiveAppCompatPolicy$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v0}, Lcom/android/server/wm/DisplayRotationImmersiveAppCompatPolicy$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/DisplayRotationImmersiveAppCompatPolicy;Lcom/android/server/wm/WindowOrientationListener;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 99
    const/4 v1, 0x1

    return v1

    .line 85
    :cond_3
    :goto_0
    return v1

    .line 79
    .end local v0    # "orientationListener":Lcom/android/server/wm/WindowOrientationListener;
    :cond_4
    :goto_1
    return v1
.end method

.method isRotationLockEnforced(I)Z
    .locals 2
    .param p1, "proposedRotation"    # I

    .line 124
    iget-object v0, p0, Lcom/android/server/wm/DisplayRotationImmersiveAppCompatPolicy;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    invoke-virtual {v0}, Lcom/android/server/wm/AppCompatConfiguration;->isDisplayRotationImmersiveAppCompatPolicyEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 125
    const/4 v0, 0x0

    return v0

    .line 127
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/DisplayRotationImmersiveAppCompatPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    .line 128
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/wm/DisplayRotationImmersiveAppCompatPolicy;->isRotationLockEnforcedLocked(I)Z

    move-result v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v1

    .line 129
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method
