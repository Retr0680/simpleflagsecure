.class final Lcom/android/server/wm/CameraCompatFreeformPolicy;
.super Ljava/lang/Object;
.source "CameraCompatFreeformPolicy.java"

# interfaces
.implements Lcom/android/server/wm/CameraStateMonitor$CameraCompatStateListener;
.implements Lcom/android/server/wm/ActivityRefresher$Evaluator;


# static fields
.field private static final TAG:Ljava/lang/String; = "WindowManager"


# instance fields
.field private final mActivityRefresher:Lcom/android/server/wm/ActivityRefresher;

.field private final mCameraStateMonitor:Lcom/android/server/wm/CameraStateMonitor;

.field private mCameraTask:Lcom/android/server/wm/Task;

.field private final mDisplayContent:Lcom/android/server/wm/DisplayContent;

.field private mIsRunning:Z


# direct methods
.method constructor <init>(Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/CameraStateMonitor;Lcom/android/server/wm/ActivityRefresher;)V
    .locals 0
    .param p1, "displayContent"    # Lcom/android/server/wm/DisplayContent;
    .param p2, "cameraStateMonitor"    # Lcom/android/server/wm/CameraStateMonitor;
    .param p3, "activityRefresher"    # Lcom/android/server/wm/ActivityRefresher;

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    iput-object p1, p0, Lcom/android/server/wm/CameraCompatFreeformPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 86
    iput-object p2, p0, Lcom/android/server/wm/CameraCompatFreeformPolicy;->mCameraStateMonitor:Lcom/android/server/wm/CameraStateMonitor;

    .line 87
    iput-object p3, p0, Lcom/android/server/wm/CameraCompatFreeformPolicy;->mActivityRefresher:Lcom/android/server/wm/ActivityRefresher;

    .line 88
    return-void
.end method

.method private getTopActivityFromCameraTask()Lcom/android/server/wm/ActivityRecord;
    .locals 2

    .line 325
    iget-object v0, p0, Lcom/android/server/wm/CameraCompatFreeformPolicy;->mCameraTask:Lcom/android/server/wm/Task;

    if-eqz v0, :cond_0

    .line 326
    iget-object v0, p0, Lcom/android/server/wm/CameraCompatFreeformPolicy;->mCameraTask:Lcom/android/server/wm/Task;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Lcom/android/server/wm/WindowContainer;->getTopActivity(ZZ)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    goto :goto_0

    .line 327
    :cond_0
    const/4 v0, 0x0

    .line 325
    :goto_0
    return-object v0
.end method

.method private haveCameraCompatAttributesChanged(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)Z
    .locals 9
    .param p1, "newConfig"    # Landroid/content/res/Configuration;
    .param p2, "lastReportedConfig"    # Landroid/content/res/Configuration;

    .line 124
    iget-object v0, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    iget-object v1, p2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/app/WindowConfiguration;->diff(Landroid/app/WindowConfiguration;Z)J

    move-result-wide v0

    .line 126
    .local v0, "diff":J
    const-wide/16 v3, 0x2

    and-long/2addr v3, v0

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v4

    .line 127
    .local v3, "appBoundsChanged":Z
    :goto_0
    const-wide/16 v7, 0x80

    and-long/2addr v7, v0

    cmp-long v5, v7, v5

    if-eqz v5, :cond_1

    move v5, v2

    goto :goto_1

    :cond_1
    move v5, v4

    .line 128
    .local v5, "displayRotationChanged":Z
    :goto_1
    if-nez v3, :cond_2

    if-eqz v5, :cond_3

    :cond_2
    goto :goto_2

    :cond_3
    move v2, v4

    :goto_2
    return v2
.end method

.method private isActivityForCameraIdRefreshing(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;)Z
    .locals 1
    .param p1, "topActivity"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "cameraId"    # Ljava/lang/String;

    .line 332
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/CameraCompatFreeformPolicy;->isTreatmentEnabledForActivity(Lcom/android/server/wm/ActivityRecord;Z)Z

    move-result v0

    nop

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/CameraCompatFreeformPolicy;->mCameraStateMonitor:Lcom/android/server/wm/CameraStateMonitor;

    .line 333
    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/CameraStateMonitor;->isCameraWithIdRunningForActivity(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 336
    :cond_0
    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    invoke-virtual {v0}, Lcom/android/server/wm/AppCompatController;->getCameraOverrides()Lcom/android/server/wm/AppCompatCameraOverrides;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/AppCompatCameraOverrides;->isRefreshRequested()Z

    move-result v0

    return v0

    .line 334
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method private static isDisplayRotationPortrait(I)Z
    .locals 1
    .param p0, "displayRotation"    # I

    .line 284
    if-eqz p0, :cond_0

    const/4 v0, 0x2

    if-ne p0, v0, :cond_1

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

.method private updateAndDispatchCameraConfiguration()V
    .locals 3

    .line 179
    iget-object v0, p0, Lcom/android/server/wm/CameraCompatFreeformPolicy;->mCameraTask:Lcom/android/server/wm/Task;

    if-nez v0, :cond_0

    .line 180
    return-void

    .line 182
    :cond_0
    invoke-direct {p0}, Lcom/android/server/wm/CameraCompatFreeformPolicy;->getTopActivityFromCameraTask()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 183
    .local v0, "activity":Lcom/android/server/wm/ActivityRecord;
    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 184
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->recomputeConfiguration()V

    .line 185
    iget-object v2, p0, Lcom/android/server/wm/CameraCompatFreeformPolicy;->mCameraTask:Lcom/android/server/wm/Task;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/Task;->dispatchTaskInfoChangedIfNeeded(Z)V

    .line 186
    invoke-direct {p0, v0}, Lcom/android/server/wm/CameraCompatFreeformPolicy;->updateCompatibilityInfo(Lcom/android/server/wm/ActivityRecord;)V

    .line 187
    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityRecord;->ensureActivityConfiguration(Z)Z

    goto :goto_0

    .line 189
    :cond_1
    iget-object v2, p0, Lcom/android/server/wm/CameraCompatFreeformPolicy;->mCameraTask:Lcom/android/server/wm/Task;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/Task;->dispatchTaskInfoChangedIfNeeded(Z)V

    .line 191
    :goto_0
    return-void
.end method

.method private updateCompatibilityInfo(Lcom/android/server/wm/ActivityRecord;)V
    .locals 8
    .param p1, "activityRecord"    # Lcom/android/server/wm/ActivityRecord;

    .line 194
    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 195
    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityTaskManagerService;->compatibilityInfoForPackageLocked(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/CompatibilityInfo;

    move-result-object v0

    .line 196
    .local v0, "compatibilityInfo":Landroid/content/res/CompatibilityInfo;
    nop

    .line 198
    invoke-virtual {p0, p1}, Lcom/android/server/wm/CameraCompatFreeformPolicy;->getCameraCompatMode(Lcom/android/server/wm/ActivityRecord;)I

    move-result v1

    .line 197
    invoke-static {v1}, Landroid/app/CameraCompatTaskInfo;->getDisplayRotationFromCameraCompatMode(I)I

    move-result v1

    iput v1, v0, Landroid/content/res/CompatibilityInfo;->applicationDisplayRotation:I

    .line 201
    :try_start_0
    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowProcessController;->getThread()Landroid/app/IApplicationThread;

    move-result-object v1

    iget-object v2, p1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Landroid/app/IApplicationThread;->updatePackageCompatibilityInfo(Ljava/lang/String;Landroid/content/res/CompatibilityInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 206
    goto :goto_0

    .line 203
    :catch_0
    move-exception v1

    .line 204
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v2, Lcom/android/internal/protolog/ProtoLogImpl_1767190652$Cache;->WM_DEBUG_STATES_enabled:[Z

    const/4 v3, 0x3

    aget-boolean v2, v2, v3

    if-eqz v2, :cond_0

    iget-object v2, p1, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .local v2, "protoLogParam0":Ljava/lang/String;
    sget-object v3, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_STATES:Lcom/android/internal/protolog/WmProtoLogGroups;

    const/4 v4, 0x0

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v5

    const-wide v6, -0x22ee5aa881bfcabbL    # -2.101362514846833E140

    invoke-static {v3, v6, v7, v4, v5}, Lcom/android/internal/protolog/ProtoLogImpl_1767190652;->w(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 207
    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v2    # "protoLogParam0":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public canCameraBeClosed(Ljava/lang/String;)Z
    .locals 9
    .param p1, "cameraId"    # Ljava/lang/String;

    .line 152
    invoke-direct {p0}, Lcom/android/server/wm/CameraCompatFreeformPolicy;->getTopActivityFromCameraTask()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 153
    .local v0, "topActivity":Lcom/android/server/wm/ActivityRecord;
    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 154
    invoke-direct {p0, v0, p1}, Lcom/android/server/wm/CameraCompatFreeformPolicy;->isActivityForCameraIdRefreshing(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 155
    sget-object v2, Lcom/android/internal/protolog/ProtoLogImpl_1767190652$Cache;->WM_DEBUG_STATES_enabled:[Z

    aget-boolean v2, v2, v1

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/wm/CameraCompatFreeformPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget v2, v2, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    int-to-long v2, v2

    .local v2, "protoLogParam0":J
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .local v4, "protoLogParam1":Ljava/lang/String;
    sget-object v5, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_STATES:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    filled-new-array {v6, v4}, [Ljava/lang/Object;

    move-result-object v6

    const-wide v7, -0x1faf14ed0744c1d7L    # -9.073470276292075E155

    invoke-static {v5, v7, v8, v1, v6}, Lcom/android/internal/protolog/ProtoLogImpl_1767190652;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 159
    .end local v2    # "protoLogParam0":J
    .end local v4    # "protoLogParam1":Ljava/lang/String;
    :cond_0
    const/4 v1, 0x0

    return v1

    .line 162
    :cond_1
    return v1
.end method

.method dispose()V
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/android/server/wm/CameraCompatFreeformPolicy;->mCameraStateMonitor:Lcom/android/server/wm/CameraStateMonitor;

    invoke-virtual {v0, p0}, Lcom/android/server/wm/CameraStateMonitor;->removeCameraStateListener(Lcom/android/server/wm/CameraStateMonitor$CameraCompatStateListener;)V

    .line 99
    iget-object v0, p0, Lcom/android/server/wm/CameraCompatFreeformPolicy;->mActivityRefresher:Lcom/android/server/wm/ActivityRefresher;

    invoke-virtual {v0, p0}, Lcom/android/server/wm/ActivityRefresher;->removeEvaluator(Lcom/android/server/wm/ActivityRefresher$Evaluator;)V

    .line 100
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/CameraCompatFreeformPolicy;->mIsRunning:Z

    .line 101
    return-void
.end method

.method getCameraCompatAspectRatio(Lcom/android/server/wm/ActivityRecord;)F
    .locals 1
    .param p1, "activityRecord"    # Lcom/android/server/wm/ActivityRecord;

    .line 244
    invoke-virtual {p0, p1}, Lcom/android/server/wm/CameraCompatFreeformPolicy;->shouldCameraCompatControlAspectRatio(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 245
    iget-object v0, p1, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    invoke-virtual {v0}, Lcom/android/server/wm/AppCompatConfiguration;->getCameraCompatAspectRatio()F

    move-result v0

    return v0

    .line 248
    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method getCameraCompatMode(Lcom/android/server/wm/ActivityRecord;)I
    .locals 5
    .param p1, "topActivity"    # Lcom/android/server/wm/ActivityRecord;

    .line 253
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/CameraCompatFreeformPolicy;->isTreatmentEnabledForActivity(Lcom/android/server/wm/ActivityRecord;Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 254
    return v0

    .line 256
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getRequestedConfigurationOrientation()I

    move-result v1

    .line 259
    .local v1, "appOrientation":I
    iget-object v2, p1, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    .line 260
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getDisplayId()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/hardware/display/DisplayManagerInternal;->getDisplayInfo(I)Landroid/view/DisplayInfo;

    move-result-object v2

    .line 264
    .local v2, "displayInfo":Landroid/view/DisplayInfo;
    invoke-virtual {v2}, Landroid/view/DisplayInfo;->getNaturalHeight()I

    move-result v3

    invoke-virtual {v2}, Landroid/view/DisplayInfo;->getNaturalWidth()I

    move-result v4

    if-le v3, v4, :cond_4

    .line 265
    const/4 v3, 0x2

    if-ne v1, v0, :cond_2

    .line 266
    iget v0, v2, Landroid/view/DisplayInfo;->rotation:I

    invoke-static {v0}, Lcom/android/server/wm/CameraCompatFreeformPolicy;->isDisplayRotationPortrait(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 267
    const/4 v0, 0x4

    return v0

    .line 269
    :cond_1
    return v3

    .line 271
    :cond_2
    if-ne v1, v3, :cond_4

    .line 272
    iget v0, v2, Landroid/view/DisplayInfo;->rotation:I

    invoke-static {v0}, Lcom/android/server/wm/CameraCompatFreeformPolicy;->isDisplayRotationPortrait(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 273
    const/4 v0, 0x5

    return v0

    .line 275
    :cond_3
    const/4 v0, 0x3

    return v0

    .line 280
    :cond_4
    return v0
.end method

.method isCameraRunningAndWindowingModeEligible(Lcom/android/server/wm/ActivityRecord;)Z
    .locals 1
    .param p1, "activity"    # Lcom/android/server/wm/ActivityRecord;

    .line 224
    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    invoke-virtual {v0}, Lcom/android/server/wm/AppCompatController;->getCameraOverrides()Lcom/android/server/wm/AppCompatCameraOverrides;

    move-result-object v0

    .line 225
    invoke-virtual {v0}, Lcom/android/server/wm/AppCompatCameraOverrides;->shouldApplyFreeformTreatmentForCameraCompat()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 226
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    move-result v0

    nop

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/CameraCompatFreeformPolicy;->mCameraStateMonitor:Lcom/android/server/wm/CameraStateMonitor;

    .line 227
    invoke-virtual {v0, p1}, Lcom/android/server/wm/CameraStateMonitor;->isCameraRunningForActivity(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 224
    :goto_0
    return v0
.end method

.method isFreeformLetterboxingForCameraAllowed(Lcom/android/server/wm/ActivityRecord;)Z
    .locals 1
    .param p1, "activity"    # Lcom/android/server/wm/ActivityRecord;

    .line 216
    invoke-virtual {p0, p1}, Lcom/android/server/wm/CameraCompatFreeformPolicy;->isCameraRunningAndWindowingModeEligible(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v0

    return v0
.end method

.method isInFreeformCameraCompatMode(Lcom/android/server/wm/ActivityRecord;)Z
    .locals 2
    .param p1, "activity"    # Lcom/android/server/wm/ActivityRecord;

    .line 239
    invoke-virtual {p0, p1}, Lcom/android/server/wm/CameraCompatFreeformPolicy;->getCameraCompatMode(Lcom/android/server/wm/ActivityRecord;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 240
    invoke-virtual {p0, p1}, Lcom/android/server/wm/CameraCompatFreeformPolicy;->getCameraCompatMode(Lcom/android/server/wm/ActivityRecord;)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 239
    :goto_0
    return v1
.end method

.method isRunning()Z
    .locals 1

    .line 105
    iget-boolean v0, p0, Lcom/android/server/wm/CameraCompatFreeformPolicy;->mIsRunning:Z

    return v0
.end method

.method isTreatmentEnabledForActivity(Lcom/android/server/wm/ActivityRecord;Z)Z
    .locals 3
    .param p1, "activity"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "checkOrientation"    # Z

    .line 309
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getRequestedConfigurationOrientation()I

    move-result v0

    .line 310
    .local v0, "orientation":I
    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    invoke-virtual {v1}, Lcom/android/server/wm/AppCompatController;->getCameraOverrides()Lcom/android/server/wm/AppCompatCameraOverrides;

    move-result-object v1

    .line 311
    invoke-virtual {v1}, Lcom/android/server/wm/AppCompatCameraOverrides;->shouldApplyFreeformTreatmentForCameraCompat()Z

    move-result v1

    nop

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/wm/CameraCompatFreeformPolicy;->mCameraStateMonitor:Lcom/android/server/wm/CameraStateMonitor;

    .line 312
    invoke-virtual {v1, p1}, Lcom/android/server/wm/CameraStateMonitor;->isCameraRunningForActivity(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz p2, :cond_0

    if-eqz v0, :cond_1

    .line 314
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 317
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getRequestedOrientation()I

    move-result v1

    const/4 v2, 0x5

    if-eq v1, v2, :cond_1

    .line 318
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getRequestedOrientation()I

    move-result v1

    const/16 v2, 0xe

    if-eq v1, v2, :cond_1

    .line 320
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->isEmbedded()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 310
    :goto_0
    return v1
.end method

.method public onCameraClosed()V
    .locals 2

    .line 169
    invoke-direct {p0}, Lcom/android/server/wm/CameraCompatFreeformPolicy;->getTopActivityFromCameraTask()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 172
    .local v0, "topActivity":Lcom/android/server/wm/ActivityRecord;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/CameraCompatFreeformPolicy;->mCameraStateMonitor:Lcom/android/server/wm/CameraStateMonitor;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/CameraStateMonitor;->isCameraRunningForActivity(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 173
    :cond_0
    invoke-direct {p0}, Lcom/android/server/wm/CameraCompatFreeformPolicy;->updateAndDispatchCameraConfiguration()V

    .line 174
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/wm/CameraCompatFreeformPolicy;->mCameraTask:Lcom/android/server/wm/Task;

    .line 176
    :cond_1
    return-void
.end method

.method public onCameraOpened(Lcom/android/server/wm/ActivityRecord;)V
    .locals 1
    .param p1, "cameraActivity"    # Lcom/android/server/wm/ActivityRecord;

    .line 140
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/CameraCompatFreeformPolicy;->isTreatmentEnabledForActivity(Lcom/android/server/wm/ActivityRecord;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 141
    return-void

    .line 144
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/CameraCompatFreeformPolicy;->mCameraTask:Lcom/android/server/wm/Task;

    .line 145
    invoke-direct {p0}, Lcom/android/server/wm/CameraCompatFreeformPolicy;->updateAndDispatchCameraConfiguration()V

    .line 146
    return-void
.end method

.method shouldCameraCompatControlAspectRatio(Lcom/android/server/wm/ActivityRecord;)Z
    .locals 1
    .param p1, "activity"    # Lcom/android/server/wm/ActivityRecord;

    .line 234
    invoke-virtual {p0, p1}, Lcom/android/server/wm/CameraCompatFreeformPolicy;->isInFreeformCameraCompatMode(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v0

    nop

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    .line 235
    invoke-virtual {v0}, Lcom/android/server/wm/AppCompatController;->getCameraOverrides()Lcom/android/server/wm/AppCompatCameraOverrides;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/AppCompatCameraOverrides;->isOverrideMinAspectRatioForCameraEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 234
    :goto_0
    return v0
.end method

.method shouldCameraCompatControlOrientation(Lcom/android/server/wm/ActivityRecord;)Z
    .locals 1
    .param p1, "activity"    # Lcom/android/server/wm/ActivityRecord;

    .line 220
    invoke-virtual {p0, p1}, Lcom/android/server/wm/CameraCompatFreeformPolicy;->isCameraRunningAndWindowingModeEligible(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v0

    return v0
.end method

.method public shouldRefreshActivity(Lcom/android/server/wm/ActivityRecord;Landroid/content/res/Configuration;Landroid/content/res/Configuration;)Z
    .locals 2
    .param p1, "activity"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "newConfig"    # Landroid/content/res/Configuration;
    .param p3, "lastReportedConfig"    # Landroid/content/res/Configuration;

    .line 113
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/CameraCompatFreeformPolicy;->isTreatmentEnabledForActivity(Lcom/android/server/wm/ActivityRecord;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 114
    invoke-direct {p0, p2, p3}, Lcom/android/server/wm/CameraCompatFreeformPolicy;->haveCameraCompatAttributesChanged(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 113
    :goto_0
    return v0
.end method

.method start()V
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/android/server/wm/CameraCompatFreeformPolicy;->mCameraStateMonitor:Lcom/android/server/wm/CameraStateMonitor;

    invoke-virtual {v0, p0}, Lcom/android/server/wm/CameraStateMonitor;->addCameraStateListener(Lcom/android/server/wm/CameraStateMonitor$CameraCompatStateListener;)V

    .line 92
    iget-object v0, p0, Lcom/android/server/wm/CameraCompatFreeformPolicy;->mActivityRefresher:Lcom/android/server/wm/ActivityRefresher;

    invoke-virtual {v0, p0}, Lcom/android/server/wm/ActivityRefresher;->addEvaluator(Lcom/android/server/wm/ActivityRefresher$Evaluator;)V

    .line 93
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/CameraCompatFreeformPolicy;->mIsRunning:Z

    .line 94
    return-void
.end method
