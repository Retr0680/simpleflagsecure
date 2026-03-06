.class final Lcom/android/server/wm/DisplayRotationCompatPolicy;
.super Ljava/lang/Object;
.source "DisplayRotationCompatPolicy.java"

# interfaces
.implements Lcom/android/server/wm/CameraStateMonitor$CameraCompatStateListener;
.implements Lcom/android/server/wm/ActivityRefresher$Evaluator;


# instance fields
.field private final mActivityRefresher:Lcom/android/server/wm/ActivityRefresher;

.field private final mCameraStateMonitor:Lcom/android/server/wm/CameraStateMonitor;

.field private mCameraTask:Lcom/android/server/wm/Task;

.field private final mDisplayContent:Lcom/android/server/wm/DisplayContent;

.field private mIsRunning:Z

.field private mLastReportedOrientation:I

.field private final mWmService:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method public static synthetic $r8$lambda$Av6CGuCLDbwTspiKjtkFraTeB3o(Lcom/android/server/wm/DisplayRotationCompatPolicy;ILjava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/DisplayRotationCompatPolicy;->lambda$showToast$1(ILjava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$rFDLn8Ryhtmu-6HkJyhQZfSckGU(Lcom/android/server/wm/DisplayRotationCompatPolicy;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/wm/DisplayRotationCompatPolicy;->lambda$showToast$0(I)V

    return-void
.end method

.method constructor <init>(Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/CameraStateMonitor;Lcom/android/server/wm/ActivityRefresher;)V
    .locals 1
    .param p1, "displayContent"    # Lcom/android/server/wm/DisplayContent;
    .param p2, "cameraStateMonitor"    # Lcom/android/server/wm/CameraStateMonitor;
    .param p3, "activityRefresher"    # Lcom/android/server/wm/ActivityRefresher;

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    const/4 v0, -0x2

    iput v0, p0, Lcom/android/server/wm/DisplayRotationCompatPolicy;->mLastReportedOrientation:I

    .line 93
    iput-object p1, p0, Lcom/android/server/wm/DisplayRotationCompatPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 94
    iget-object v0, p1, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iput-object v0, p0, Lcom/android/server/wm/DisplayRotationCompatPolicy;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 95
    iput-object p2, p0, Lcom/android/server/wm/DisplayRotationCompatPolicy;->mCameraStateMonitor:Lcom/android/server/wm/CameraStateMonitor;

    .line 96
    iput-object p3, p0, Lcom/android/server/wm/DisplayRotationCompatPolicy;->mActivityRefresher:Lcom/android/server/wm/ActivityRefresher;

    .line 97
    return-void
.end method

.method private declared-synchronized getOrientationInternal()I
    .locals 14

    monitor-enter p0

    .line 147
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/wm/DisplayRotationCompatPolicy;->isTreatmentEnabledForDisplay()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, -0x1

    if-nez v0, :cond_0

    .line 148
    monitor-exit p0

    return v1

    .line 150
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/server/wm/DisplayRotationCompatPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/android/server/wm/DisplayContent;->topRunningActivity(Z)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 152
    .local v0, "topActivity":Lcom/android/server/wm/ActivityRecord;
    invoke-virtual {p0, v0}, Lcom/android/server/wm/DisplayRotationCompatPolicy;->isTreatmentEnabledForActivity(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v3, :cond_1

    .line 153
    monitor-exit p0

    return v1

    .line 155
    :cond_1
    nop

    .line 156
    :try_start_2
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getRequestedConfigurationOrientation()I

    move-result v1

    const/4 v3, 0x0

    if-ne v1, v2, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move v1, v3

    .line 157
    .local v1, "isPortraitActivity":Z
    :goto_0
    iget-object v4, p0, Lcom/android/server/wm/DisplayRotationCompatPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 158
    invoke-virtual {v4}, Lcom/android/server/wm/DisplayContent;->getNaturalOrientation()I

    move-result v4

    if-ne v4, v2, :cond_3

    move v4, v2

    goto :goto_1

    :cond_3
    move v4, v3

    .line 170
    .local v4, "isNaturalDisplayOrientationPortrait":Z
    :goto_1
    if-eqz v1, :cond_4

    if-nez v4, :cond_5

    :cond_4
    if-nez v1, :cond_6

    if-nez v4, :cond_6

    .line 171
    :cond_5
    move v3, v2

    goto :goto_2

    .line 172
    :cond_6
    nop

    :goto_2
    nop

    .line 173
    .local v3, "orientation":I
    sget-object v5, Lcom/android/internal/protolog/ProtoLogImpl_1767190652$Cache;->WM_DEBUG_ORIENTATION_enabled:[Z

    aget-boolean v2, v5, v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/android/server/wm/DisplayRotationCompatPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget v2, v2, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    int-to-long v5, v2

    .local v5, "protoLogParam0":J
    invoke-static {v3}, Landroid/content/pm/ActivityInfo;->screenOrientationToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .local v2, "protoLogParam1":Ljava/lang/String;
    move v7, v1

    .local v7, "protoLogParam2":Z
    move v8, v4

    .local v8, "protoLogParam3":Z
    sget-object v9, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_ORIENTATION:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    filled-new-array {v10, v2, v11, v12}, [Ljava/lang/Object;

    move-result-object v10

    const-wide v11, 0x67199a479e0e330cL    # 4.455970551920494E188

    const/16 v13, 0xf1

    invoke-static {v9, v11, v12, v13, v10}, Lcom/android/internal/protolog/ProtoLogImpl_1767190652;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    .line 146
    .end local v0    # "topActivity":Lcom/android/server/wm/ActivityRecord;
    .end local v1    # "isPortraitActivity":Z
    .end local v2    # "protoLogParam1":Ljava/lang/String;
    .end local v3    # "orientation":I
    .end local v4    # "isNaturalDisplayOrientationPortrait":Z
    .end local v5    # "protoLogParam0":J
    .end local v7    # "protoLogParam2":Z
    .end local v8    # "protoLogParam3":Z
    .end local p0    # "this":Lcom/android/server/wm/DisplayRotationCompatPolicy;
    :catchall_0
    move-exception v0

    goto :goto_4

    .line 179
    .restart local v0    # "topActivity":Lcom/android/server/wm/ActivityRecord;
    .restart local v1    # "isPortraitActivity":Z
    .restart local v3    # "orientation":I
    .restart local v4    # "isNaturalDisplayOrientationPortrait":Z
    :cond_7
    :goto_3
    monitor-exit p0

    return v3

    .line 146
    .end local v0    # "topActivity":Lcom/android/server/wm/ActivityRecord;
    .end local v1    # "isPortraitActivity":Z
    .end local v3    # "orientation":I
    .end local v4    # "isNaturalDisplayOrientationPortrait":Z
    :goto_4
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method private getTopActivity()Lcom/android/server/wm/ActivityRecord;
    .locals 2

    .line 446
    nop

    .line 450
    iget-object v0, p0, Lcom/android/server/wm/DisplayRotationCompatPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/DisplayContent;->topRunningActivity(Z)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    return-object v0
.end method

.method private isActivityForCameraIdRefreshing(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;)Z
    .locals 1
    .param p1, "activity"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "cameraId"    # Ljava/lang/String;

    .line 430
    invoke-virtual {p0, p1}, Lcom/android/server/wm/DisplayRotationCompatPolicy;->isTreatmentEnabledForActivity(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v0

    nop

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/DisplayRotationCompatPolicy;->mCameraStateMonitor:Lcom/android/server/wm/CameraStateMonitor;

    .line 431
    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/CameraStateMonitor;->isCameraWithIdRunningForActivity(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 434
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/DisplayRotationCompatPolicy;->mActivityRefresher:Lcom/android/server/wm/ActivityRefresher;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/ActivityRefresher;->isActivityRefreshing(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v0

    return v0

    .line 432
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method private isOrientationOverridden()Z
    .locals 2

    .line 233
    iget-object v0, p0, Lcom/android/server/wm/DisplayRotationCompatPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getRotationReversionController()Lcom/android/server/wm/DisplayRotationReversionController;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/DisplayRotationReversionController;->isOverrideActive(I)Z

    move-result v0

    return v0
.end method

.method private isTreatmentEnabledForActivity(Lcom/android/server/wm/ActivityRecord;Z)Z
    .locals 2
    .param p1, "activity"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "mustBeFullscreen"    # Z

    .line 321
    if-eqz p1, :cond_0

    .line 322
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/DisplayRotationCompatPolicy;->isCameraRunningAndWindowingModeEligible(Lcom/android/server/wm/ActivityRecord;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 323
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getRequestedConfigurationOrientation()I

    move-result v0

    if-eqz v0, :cond_0

    .line 326
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getOverrideOrientation()I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    .line 327
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getOverrideOrientation()I

    move-result v0

    const/16 v1, 0xe

    nop

    if-eq v0, v1, :cond_0

    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    .line 328
    invoke-virtual {v0}, Lcom/android/server/wm/AppCompatController;->getCameraOverrides()Lcom/android/server/wm/AppCompatCameraOverrides;

    move-result-object v0

    .line 329
    invoke-virtual {v0}, Lcom/android/server/wm/AppCompatCameraOverrides;->shouldForceRotateForCameraCompat()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 321
    :goto_0
    return v0
.end method

.method private isTreatmentEnabledForDisplay()Z
    .locals 2

    .line 275
    iget-object v0, p0, Lcom/android/server/wm/DisplayRotationCompatPolicy;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    invoke-virtual {v0}, Lcom/android/server/wm/AppCompatConfiguration;->isCameraCompatTreatmentEnabled()Z

    move-result v0

    nop

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/DisplayRotationCompatPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 276
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getIgnoreOrientationRequest()Z

    move-result v0

    nop

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/DisplayRotationCompatPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 278
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 275
    :goto_0
    return v1
.end method

.method private synthetic lambda$showToast$0(I)V
    .locals 2
    .param p1, "stringRes"    # I

    .line 366
    iget-object v0, p0, Lcom/android/server/wm/DisplayRotationCompatPolicy;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private synthetic lambda$showToast$1(ILjava/lang/String;)V
    .locals 3
    .param p1, "stringRes"    # I
    .param p2, "applicationLabel"    # Ljava/lang/String;

    .line 372
    iget-object v0, p0, Lcom/android/server/wm/DisplayRotationCompatPolicy;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/wm/DisplayRotationCompatPolicy;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object v2

    .line 374
    invoke-virtual {v1, p1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 372
    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 375
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 372
    return-void
.end method

.method private recomputeConfigurationForCameraCompatIfNeeded(Lcom/android/server/wm/ActivityRecord;)V
    .locals 1
    .param p1, "activityRecord"    # Lcom/android/server/wm/ActivityRecord;

    .line 439
    invoke-direct {p0, p1}, Lcom/android/server/wm/DisplayRotationCompatPolicy;->shouldRecomputeConfigurationForCameraCompat(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 440
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->recomputeConfiguration()V

    .line 442
    :cond_0
    return-void
.end method

.method private rememberOverriddenOrientationIfNeeded()V
    .locals 7

    .line 238
    invoke-direct {p0}, Lcom/android/server/wm/DisplayRotationCompatPolicy;->isOrientationOverridden()Z

    move-result v0

    if-nez v0, :cond_0

    .line 239
    iget-object v0, p0, Lcom/android/server/wm/DisplayRotationCompatPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getRotationReversionController()Lcom/android/server/wm/DisplayRotationReversionController;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/DisplayRotationReversionController;->beforeOverrideApplied(I)V

    .line 241
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_1767190652$Cache;->WM_DEBUG_ORIENTATION_enabled:[Z

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/DisplayRotationCompatPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getLastOrientation()I

    move-result v0

    int-to-long v2, v0

    .local v2, "protoLogParam0":J
    sget-object v0, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_ORIENTATION:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    const-wide v5, -0x1e60ce1df7c7c030L    # -1.7542870562025912E162

    invoke-static {v0, v5, v6, v1, v4}, Lcom/android/internal/protolog/ProtoLogImpl_1767190652;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 245
    .end local v2    # "protoLogParam0":J
    :cond_0
    return-void
.end method

.method private restoreOverriddenOrientationIfNeeded()V
    .locals 5

    .line 220
    invoke-direct {p0}, Lcom/android/server/wm/DisplayRotationCompatPolicy;->isOrientationOverridden()Z

    move-result v0

    if-nez v0, :cond_0

    .line 221
    return-void

    .line 223
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/DisplayRotationCompatPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getRotationReversionController()Lcom/android/server/wm/DisplayRotationReversionController;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/DisplayRotationReversionController;->revertOverride(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 225
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_1767190652$Cache;->WM_DEBUG_ORIENTATION_enabled:[Z

    aget-boolean v0, v0, v1

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_ORIENTATION:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v2, -0x47d799b0c849ca08L    # -3.5852057933235046E-38

    const/4 v4, 0x0

    invoke-static {v0, v2, v3, v4, v1}, Lcom/android/internal/protolog/ProtoLogImpl_1767190652;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 228
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/DisplayRotationCompatPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iput-object v1, v0, Lcom/android/server/wm/WindowContainer;->mLastOrientationSource:Lcom/android/server/wm/WindowContainer;

    .line 230
    :cond_2
    return-void
.end method

.method private shouldOverrideMinAspectRatio(Lcom/android/server/wm/ActivityRecord;)Z
    .locals 2
    .param p1, "activityRecord"    # Lcom/android/server/wm/ActivityRecord;

    .line 467
    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    invoke-virtual {v0}, Lcom/android/server/wm/AppCompatController;->getCameraOverrides()Lcom/android/server/wm/AppCompatCameraOverrides;

    move-result-object v0

    .line 468
    invoke-virtual {v0}, Lcom/android/server/wm/AppCompatCameraOverrides;->isOverrideMinAspectRatioForCameraEnabled()Z

    move-result v0

    nop

    if-eqz v0, :cond_0

    .line 469
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/DisplayRotationCompatPolicy;->isCameraRunningAndWindowingModeEligible(Lcom/android/server/wm/ActivityRecord;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 467
    :goto_0
    return v0
.end method

.method private shouldRecomputeConfigurationForCameraCompat(Lcom/android/server/wm/ActivityRecord;)Z
    .locals 2
    .param p1, "activityRecord"    # Lcom/android/server/wm/ActivityRecord;

    .line 459
    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    .line 460
    invoke-virtual {v0}, Lcom/android/server/wm/AppCompatController;->getCameraOverrides()Lcom/android/server/wm/AppCompatCameraOverrides;

    move-result-object v0

    .line 461
    .local v0, "overrides":Lcom/android/server/wm/AppCompatCameraOverrides;
    invoke-virtual {v0}, Lcom/android/server/wm/AppCompatCameraOverrides;->isOverrideOrientationOnlyForCameraEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 462
    invoke-virtual {v0}, Lcom/android/server/wm/AppCompatCameraOverrides;->isCameraCompatSplitScreenAspectRatioAllowed()Z

    move-result v1

    if-nez v1, :cond_1

    .line 463
    invoke-direct {p0, p1}, Lcom/android/server/wm/DisplayRotationCompatPolicy;->shouldOverrideMinAspectRatio(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    .line 461
    :goto_1
    return v1
.end method


# virtual methods
.method public canCameraBeClosed(Ljava/lang/String;)Z
    .locals 8
    .param p1, "cameraId"    # Ljava/lang/String;

    .line 380
    invoke-direct {p0}, Lcom/android/server/wm/DisplayRotationCompatPolicy;->getTopActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 382
    .local v0, "topActivity":Lcom/android/server/wm/ActivityRecord;
    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 383
    return v1

    .line 386
    :cond_0
    monitor-enter p0

    .line 389
    :try_start_0
    invoke-direct {p0, v0, p1}, Lcom/android/server/wm/DisplayRotationCompatPolicy;->isActivityForCameraIdRefreshing(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 390
    sget-object v2, Lcom/android/internal/protolog/ProtoLogImpl_1767190652$Cache;->WM_DEBUG_ORIENTATION_enabled:[Z

    aget-boolean v2, v2, v1

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/wm/DisplayRotationCompatPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget v2, v2, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    int-to-long v2, v2

    .local v2, "protoLogParam0":J
    sget-object v4, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_ORIENTATION:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    const-wide v6, -0x471416ad2fffcf8bL    # -1.6798574785979571E-34

    invoke-static {v4, v6, v7, v1, v5}, Lcom/android/internal/protolog/ProtoLogImpl_1767190652;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    goto :goto_0

    .line 396
    .end local v2    # "protoLogParam0":J
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 394
    :cond_1
    :goto_0
    monitor-exit p0

    const/4 v1, 0x0

    return v1

    .line 396
    :cond_2
    monitor-exit p0

    .line 397
    return v1

    .line 396
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method dispose()V
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/android/server/wm/DisplayRotationCompatPolicy;->mCameraStateMonitor:Lcom/android/server/wm/CameraStateMonitor;

    invoke-virtual {v0, p0}, Lcom/android/server/wm/CameraStateMonitor;->removeCameraStateListener(Lcom/android/server/wm/CameraStateMonitor$CameraCompatStateListener;)V

    .line 108
    iget-object v0, p0, Lcom/android/server/wm/DisplayRotationCompatPolicy;->mActivityRefresher:Lcom/android/server/wm/ActivityRefresher;

    invoke-virtual {v0, p0}, Lcom/android/server/wm/ActivityRefresher;->removeEvaluator(Lcom/android/server/wm/ActivityRefresher$Evaluator;)V

    .line 109
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/DisplayRotationCompatPolicy;->mIsRunning:Z

    .line 110
    return-void
.end method

.method getCameraCompatAspectRatio(Lcom/android/server/wm/ActivityRecord;)F
    .locals 1
    .param p1, "unusedActivity"    # Lcom/android/server/wm/ActivityRecord;

    .line 142
    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method getOrientation()I
    .locals 2

    .line 131
    invoke-direct {p0}, Lcom/android/server/wm/DisplayRotationCompatPolicy;->getOrientationInternal()I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/DisplayRotationCompatPolicy;->mLastReportedOrientation:I

    .line 132
    iget v0, p0, Lcom/android/server/wm/DisplayRotationCompatPolicy;->mLastReportedOrientation:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 133
    invoke-direct {p0}, Lcom/android/server/wm/DisplayRotationCompatPolicy;->rememberOverriddenOrientationIfNeeded()V

    goto :goto_0

    .line 135
    :cond_0
    invoke-direct {p0}, Lcom/android/server/wm/DisplayRotationCompatPolicy;->restoreOverriddenOrientationIfNeeded()V

    .line 137
    :goto_0
    iget v0, p0, Lcom/android/server/wm/DisplayRotationCompatPolicy;->mLastReportedOrientation:I

    return v0
.end method

.method getSummaryForDisplayRotationHistoryRecord()Ljava/lang/String;
    .locals 4

    .line 199
    const-string v0, ""

    .line 200
    .local v0, "summaryIfEnabled":Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/server/wm/DisplayRotationCompatPolicy;->isTreatmentEnabledForDisplay()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 201
    iget-object v1, p0, Lcom/android/server/wm/DisplayRotationCompatPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/server/wm/DisplayContent;->topRunningActivity(Z)Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    .line 203
    .local v1, "topActivity":Lcom/android/server/wm/ActivityRecord;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " mLastReportedOrientation="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/wm/DisplayRotationCompatPolicy;->mLastReportedOrientation:I

    .line 205
    invoke-static {v3}, Landroid/content/pm/ActivityInfo;->screenOrientationToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " topActivity="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    if-nez v1, :cond_0

    const-string v3, "null"

    goto :goto_0

    :cond_0
    iget-object v3, v1, Lcom/android/server/wm/ActivityRecord;->shortComponentName:Ljava/lang/String;

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " isTreatmentEnabledForActivity="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    invoke-virtual {p0, v1}, Lcom/android/server/wm/DisplayRotationCompatPolicy;->isTreatmentEnabledForActivity(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, "mCameraStateMonitor="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wm/DisplayRotationCompatPolicy;->mCameraStateMonitor:Lcom/android/server/wm/CameraStateMonitor;

    .line 211
    invoke-virtual {v3}, Lcom/android/server/wm/CameraStateMonitor;->getSummary()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 213
    .end local v1    # "topActivity":Lcom/android/server/wm/ActivityRecord;
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DisplayRotationCompatPolicy{ isTreatmentEnabledForDisplay="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    invoke-direct {p0}, Lcom/android/server/wm/DisplayRotationCompatPolicy;->isTreatmentEnabledForDisplay()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " }"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 213
    return-object v1
.end method

.method isActivityEligibleForOrientationOverride(Lcom/android/server/wm/ActivityRecord;)Z
    .locals 2
    .param p1, "activity"    # Lcom/android/server/wm/ActivityRecord;

    .line 282
    invoke-direct {p0}, Lcom/android/server/wm/DisplayRotationCompatPolicy;->isTreatmentEnabledForDisplay()Z

    move-result v0

    nop

    if-eqz v0, :cond_0

    .line 283
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/DisplayRotationCompatPolicy;->isCameraRunningAndWindowingModeEligible(Lcom/android/server/wm/ActivityRecord;Z)Z

    move-result v1

    nop

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    .line 284
    invoke-virtual {v1}, Lcom/android/server/wm/AppCompatController;->getCameraOverrides()Lcom/android/server/wm/AppCompatCameraOverrides;

    move-result-object v1

    .line 285
    invoke-virtual {v1}, Lcom/android/server/wm/AppCompatCameraOverrides;->shouldForceRotateForCameraCompat()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 282
    :goto_0
    return v0
.end method

.method isCameraRunningAndWindowingModeEligible(Lcom/android/server/wm/ActivityRecord;Z)Z
    .locals 1
    .param p1, "activity"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "mustBeFullscreen"    # Z

    .line 315
    if-eqz p2, :cond_0

    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->inMultiWindowMode()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/DisplayRotationCompatPolicy;->mCameraStateMonitor:Lcom/android/server/wm/CameraStateMonitor;

    .line 316
    invoke-virtual {v0, p1}, Lcom/android/server/wm/CameraStateMonitor;->isCameraRunningForActivity(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 315
    :goto_0
    return v0
.end method

.method isRunning()Z
    .locals 1

    .line 114
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayRotationCompatPolicy;->mIsRunning:Z

    return v0
.end method

.method isTreatmentEnabledForActivity(Lcom/android/server/wm/ActivityRecord;)Z
    .locals 1
    .param p1, "activity"    # Lcom/android/server/wm/ActivityRecord;

    .line 299
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/server/wm/DisplayRotationCompatPolicy;->isTreatmentEnabledForActivity(Lcom/android/server/wm/ActivityRecord;Z)Z

    move-result v0

    return v0
.end method

.method public onCameraClosed()V
    .locals 8

    .line 402
    invoke-direct {p0}, Lcom/android/server/wm/DisplayRotationCompatPolicy;->getTopActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 406
    .local v0, "topActivity":Lcom/android/server/wm/ActivityRecord;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/DisplayRotationCompatPolicy;->mCameraStateMonitor:Lcom/android/server/wm/CameraStateMonitor;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/CameraStateMonitor;->isCameraRunningForActivity(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 408
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/wm/DisplayRotationCompatPolicy;->mCameraTask:Lcom/android/server/wm/Task;

    .line 411
    :cond_1
    if-nez v0, :cond_2

    .line 412
    return-void

    .line 415
    :cond_2
    sget-object v1, Lcom/android/internal/protolog/ProtoLogImpl_1767190652$Cache;->WM_DEBUG_ORIENTATION_enabled:[Z

    const/4 v2, 0x1

    aget-boolean v1, v1, v2

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/server/wm/DisplayRotationCompatPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget v1, v1, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    int-to-long v3, v1

    .local v3, "protoLogParam0":J
    sget-object v1, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_ORIENTATION:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    const-wide v6, 0x188f6cf132e4334dL    # 2.204122436059243E-190

    invoke-static {v1, v6, v7, v2, v5}, Lcom/android/internal/protolog/ProtoLogImpl_1767190652;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 420
    .end local v3    # "protoLogParam0":J
    :cond_3
    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v1

    if-eq v1, v2, :cond_4

    .line 421
    return-void

    .line 423
    :cond_4
    invoke-direct {p0, v0}, Lcom/android/server/wm/DisplayRotationCompatPolicy;->recomputeConfigurationForCameraCompatIfNeeded(Lcom/android/server/wm/ActivityRecord;)V

    .line 424
    iget-object v1, p0, Lcom/android/server/wm/DisplayRotationCompatPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->updateOrientation()Z

    .line 425
    return-void
.end method

.method public onCameraOpened(Lcom/android/server/wm/ActivityRecord;)V
    .locals 8
    .param p1, "cameraActivity"    # Lcom/android/server/wm/ActivityRecord;

    .line 334
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/DisplayRotationCompatPolicy;->mCameraTask:Lcom/android/server/wm/Task;

    .line 337
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 338
    invoke-direct {p0, p1}, Lcom/android/server/wm/DisplayRotationCompatPolicy;->recomputeConfigurationForCameraCompatIfNeeded(Lcom/android/server/wm/ActivityRecord;)V

    .line 339
    iget-object v0, p0, Lcom/android/server/wm/DisplayRotationCompatPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->updateOrientation()Z

    .line 340
    return-void

    .line 344
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/DisplayRotationCompatPolicy;->mCameraTask:Lcom/android/server/wm/Task;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/DisplayRotationCompatPolicy;->mCameraTask:Lcom/android/server/wm/Task;

    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_1

    .line 345
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/wm/DisplayRotationCompatPolicy;->isTreatmentEnabledForActivity(Lcom/android/server/wm/ActivityRecord;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 347
    iget-object v1, p0, Lcom/android/server/wm/DisplayRotationCompatPolicy;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 349
    .local v1, "packageManager":Landroid/content/pm/PackageManager;
    :try_start_0
    iget-object v2, p1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    .line 352
    invoke-virtual {v1, v2, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    .line 351
    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 349
    const v3, 0x104036a

    invoke-virtual {p0, v3, v2}, Lcom/android/server/wm/DisplayRotationCompatPolicy;->showToast(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 359
    goto :goto_0

    .line 354
    :catch_0
    move-exception v2

    .line 355
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-object v3, Lcom/android/internal/protolog/ProtoLogImpl_1767190652$Cache;->WM_DEBUG_ORIENTATION_enabled:[Z

    const/4 v4, 0x4

    aget-boolean v3, v3, v4

    if-eqz v3, :cond_1

    iget-object v3, p1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .local v3, "protoLogParam0":Ljava/lang/String;
    sget-object v4, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_ORIENTATION:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v5, -0x154ca637dcf0c023L    # -9.7071995644044E205

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v7

    invoke-static {v4, v5, v6, v0, v7}, Lcom/android/internal/protolog/ProtoLogImpl_1767190652;->e(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 361
    .end local v1    # "packageManager":Landroid/content/pm/PackageManager;
    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v3    # "protoLogParam0":Ljava/lang/String;
    :cond_1
    :goto_0
    return-void
.end method

.method onScreenRotationAnimationFinished()V
    .locals 2

    .line 189
    iget-object v0, p0, Lcom/android/server/wm/DisplayRotationCompatPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/DisplayContent;->topRunningActivity(Z)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 191
    .local v0, "topActivity":Lcom/android/server/wm/ActivityRecord;
    invoke-direct {p0}, Lcom/android/server/wm/DisplayRotationCompatPolicy;->isTreatmentEnabledForDisplay()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 192
    invoke-virtual {p0, v0}, Lcom/android/server/wm/DisplayRotationCompatPolicy;->isTreatmentEnabledForActivity(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 195
    :cond_0
    const v1, 0x1040369

    invoke-virtual {p0, v1}, Lcom/android/server/wm/DisplayRotationCompatPolicy;->showToast(I)V

    .line 196
    return-void

    .line 193
    :cond_1
    :goto_0
    return-void
.end method

.method shouldCameraCompatControlAspectRatio(Lcom/android/server/wm/ActivityRecord;)Z
    .locals 1
    .param p1, "unusedActivity"    # Lcom/android/server/wm/ActivityRecord;

    .line 308
    const/4 v0, 0x0

    return v0
.end method

.method shouldCameraCompatControlOrientation(Lcom/android/server/wm/ActivityRecord;)Z
    .locals 1
    .param p1, "activity"    # Lcom/android/server/wm/ActivityRecord;

    .line 303
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/DisplayRotationCompatPolicy;->isCameraRunningAndWindowingModeEligible(Lcom/android/server/wm/ActivityRecord;Z)Z

    move-result v0

    return v0
.end method

.method public shouldRefreshActivity(Lcom/android/server/wm/ActivityRecord;Landroid/content/res/Configuration;Landroid/content/res/Configuration;)Z
    .locals 4
    .param p1, "activity"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "newConfig"    # Landroid/content/res/Configuration;
    .param p3, "lastReportedConfig"    # Landroid/content/res/Configuration;

    .line 252
    iget-object v0, p2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getDisplayRotation()I

    move-result v0

    iget-object v1, p3, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 253
    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getDisplayRotation()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v2

    .line 254
    .local v0, "displayRotationChanged":Z
    :goto_0
    invoke-direct {p0}, Lcom/android/server/wm/DisplayRotationCompatPolicy;->isTreatmentEnabledForDisplay()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 255
    invoke-virtual {p0, p1}, Lcom/android/server/wm/DisplayRotationCompatPolicy;->isTreatmentEnabledForActivity(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v1

    nop

    if-eqz v1, :cond_2

    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    .line 256
    invoke-virtual {v1}, Lcom/android/server/wm/AppCompatController;->getCameraOverrides()Lcom/android/server/wm/AppCompatCameraOverrides;

    move-result-object v1

    .line 257
    invoke-virtual {v1}, Lcom/android/server/wm/AppCompatCameraOverrides;->shouldRefreshActivityForCameraCompat()Z

    move-result v1

    nop

    if-eqz v1, :cond_2

    nop

    if-nez v0, :cond_1

    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    .line 259
    invoke-virtual {v1}, Lcom/android/server/wm/AppCompatController;->getCameraOverrides()Lcom/android/server/wm/AppCompatCameraOverrides;

    move-result-object v1

    .line 260
    invoke-virtual {v1}, Lcom/android/server/wm/AppCompatCameraOverrides;->isCameraCompatSplitScreenAspectRatioAllowed()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    move v2, v3

    goto :goto_1

    :cond_2
    nop

    .line 254
    :goto_1
    return v2
.end method

.method showToast(I)V
    .locals 2
    .param p1, "stringRes"    # I

    .line 365
    invoke-static {}, Lcom/android/server/UiThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/wm/DisplayRotationCompatPolicy$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/android/server/wm/DisplayRotationCompatPolicy$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/DisplayRotationCompatPolicy;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 367
    return-void
.end method

.method showToast(ILjava/lang/String;)V
    .locals 2
    .param p1, "stringRes"    # I
    .param p2, "applicationLabel"    # Ljava/lang/String;

    .line 371
    invoke-static {}, Lcom/android/server/UiThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/wm/DisplayRotationCompatPolicy$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/wm/DisplayRotationCompatPolicy$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/wm/DisplayRotationCompatPolicy;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 376
    return-void
.end method

.method start()V
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/android/server/wm/DisplayRotationCompatPolicy;->mCameraStateMonitor:Lcom/android/server/wm/CameraStateMonitor;

    invoke-virtual {v0, p0}, Lcom/android/server/wm/CameraStateMonitor;->addCameraStateListener(Lcom/android/server/wm/CameraStateMonitor$CameraCompatStateListener;)V

    .line 101
    iget-object v0, p0, Lcom/android/server/wm/DisplayRotationCompatPolicy;->mActivityRefresher:Lcom/android/server/wm/ActivityRefresher;

    invoke-virtual {v0, p0}, Lcom/android/server/wm/ActivityRefresher;->addEvaluator(Lcom/android/server/wm/ActivityRefresher$Evaluator;)V

    .line 102
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/DisplayRotationCompatPolicy;->mIsRunning:Z

    .line 103
    return-void
.end method
