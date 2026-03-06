.class final Lcom/android/server/display/LogicalDisplay;
.super Ljava/lang/Object;
.source "LogicalDisplay.java"


# static fields
.field private static final BLANK_LAYER_STACK:I = -0x1

.field private static final EMPTY_DISPLAY_INFO:Landroid/view/DisplayInfo;

.field private static final TAG:Ljava/lang/String; = "LogicalDisplay"


# instance fields
.field private mAlwaysRotateDisplayDeviceEnabled:Z

.field private final mBaseDisplayInfo:Landroid/view/DisplayInfo;

.field private mCanHostTasks:Z

.field private mDesiredDisplayModeSpecs:Lcom/android/server/display/mode/DisplayModeDirector$DesiredDisplayModeSpecs;

.field private mDevicePosition:I

.field private mDirty:Z

.field private mDisplayGroupId:I

.field private mDisplayGroupName:Ljava/lang/String;

.field private final mDisplayId:I

.field private mDisplayOffloadSession:Lcom/android/server/display/DisplayOffloadSessionImpl;

.field private mDisplayOffsetX:I

.field private mDisplayOffsetY:I

.field private final mDisplayPosition:Landroid/graphics/Point;

.field private mDisplayScalingDisabled:Z

.field private mFrameRateOverrides:[Landroid/view/DisplayEventReceiver$FrameRateOverride;

.field private mHasContent:Z

.field private final mInfo:Lcom/android/server/display/DisplayInfoProxy;

.field private final mIsAnisotropyCorrectionEnabled:Z

.field private mIsEnabled:Z

.field private mIsInTransition:Z

.field private final mLayerStack:I

.field private mLayoutLimitedRefreshRate:Landroid/view/SurfaceControl$RefreshRateRange;

.field private mLeadDisplayId:I

.field private mOverrideDisplayInfo:Landroid/view/DisplayInfo;

.field private mPendingFrameRateOverrideUids:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mPowerThrottlingDataId:Ljava/lang/String;

.field private mPrimaryDisplayDevice:Lcom/android/server/display/DisplayDevice;

.field private mPrimaryDisplayDeviceInfo:Lcom/android/server/display/DisplayDeviceInfo;

.field private mRequestedColorMode:I

.field private mRequestedMinimalPostProcessing:Z

.field private final mSyncedResolutionSwitchEnabled:Z

.field private final mTempDisplayRect:Landroid/graphics/Rect;

.field private final mTempFrameRateOverride:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final mTempLayerStackRect:Landroid/graphics/Rect;

.field private mThermalBrightnessThrottlingDataId:Ljava/lang/String;

.field private mThermalRefreshRateThrottling:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/view/SurfaceControl$RefreshRateRange;",
            ">;"
        }
    .end annotation
.end field

.field private mUserDisabledHdrTypes:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 79
    new-instance v0, Landroid/view/DisplayInfo;

    invoke-direct {v0}, Landroid/view/DisplayInfo;-><init>()V

    sput-object v0, Lcom/android/server/display/LogicalDisplay;->EMPTY_DISPLAY_INFO:Landroid/view/DisplayInfo;

    return-void
.end method

.method constructor <init>(IILcom/android/server/display/DisplayDevice;)V
    .locals 7
    .param p1, "displayId"    # I
    .param p2, "layerStack"    # I
    .param p3, "primaryDisplayDevice"    # Lcom/android/server/display/DisplayDevice;

    .line 236
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    .end local p1    # "displayId":I
    .end local p2    # "layerStack":I
    .end local p3    # "primaryDisplayDevice":Lcom/android/server/display/DisplayDevice;
    .local v1, "displayId":I
    .local v2, "layerStack":I
    .local v3, "primaryDisplayDevice":Lcom/android/server/display/DisplayDevice;
    invoke-direct/range {v0 .. v6}, Lcom/android/server/display/LogicalDisplay;-><init>(IILcom/android/server/display/DisplayDevice;ZZZ)V

    .line 237
    return-void
.end method

.method constructor <init>(IILcom/android/server/display/DisplayDevice;ZZZ)V
    .locals 4
    .param p1, "displayId"    # I
    .param p2, "layerStack"    # I
    .param p3, "primaryDisplayDevice"    # Lcom/android/server/display/DisplayDevice;
    .param p4, "isAnisotropyCorrectionEnabled"    # Z
    .param p5, "isAlwaysRotateDisplayDeviceEnabled"    # Z
    .param p6, "isSyncedResolutionSwitchEnabled"    # Z

    .line 241
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    new-instance v0, Landroid/view/DisplayInfo;

    invoke-direct {v0}, Landroid/view/DisplayInfo;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    .line 89
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/display/LogicalDisplay;->mLeadDisplayId:I

    .line 91
    iput v0, p0, Lcom/android/server/display/LogicalDisplay;->mDisplayGroupId:I

    .line 105
    new-instance v1, Lcom/android/server/display/DisplayInfoProxy;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/server/display/DisplayInfoProxy;-><init>(Landroid/view/DisplayInfo;)V

    iput-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mInfo:Lcom/android/server/display/DisplayInfoProxy;

    .line 118
    const/4 v1, 0x0

    new-array v2, v1, [I

    iput-object v2, p0, Lcom/android/server/display/LogicalDisplay;->mUserDisabledHdrTypes:[I

    .line 120
    new-instance v2, Lcom/android/server/display/mode/DisplayModeDirector$DesiredDisplayModeSpecs;

    invoke-direct {v2}, Lcom/android/server/display/mode/DisplayModeDirector$DesiredDisplayModeSpecs;-><init>()V

    iput-object v2, p0, Lcom/android/server/display/LogicalDisplay;->mDesiredDisplayModeSpecs:Lcom/android/server/display/mode/DisplayModeDirector$DesiredDisplayModeSpecs;

    .line 130
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    iput-object v2, p0, Lcom/android/server/display/LogicalDisplay;->mDisplayPosition:Landroid/graphics/Point;

    .line 141
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/server/display/LogicalDisplay;->mTempLayerStackRect:Landroid/graphics/Rect;

    .line 142
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/server/display/LogicalDisplay;->mTempDisplayRect:Landroid/graphics/Rect;

    .line 177
    iput v0, p0, Lcom/android/server/display/LogicalDisplay;->mDevicePosition:I

    .line 181
    iput-boolean v1, p0, Lcom/android/server/display/LogicalDisplay;->mDirty:Z

    .line 204
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mThermalRefreshRateThrottling:Landroid/util/SparseArray;

    .line 242
    iput p1, p0, Lcom/android/server/display/LogicalDisplay;->mDisplayId:I

    .line 243
    iput p2, p0, Lcom/android/server/display/LogicalDisplay;->mLayerStack:I

    .line 244
    iput-object p3, p0, Lcom/android/server/display/LogicalDisplay;->mPrimaryDisplayDevice:Lcom/android/server/display/DisplayDevice;

    .line 245
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mPendingFrameRateOverrideUids:Landroid/util/ArraySet;

    .line 246
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mTempFrameRateOverride:Landroid/util/SparseArray;

    .line 247
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/display/LogicalDisplay;->mIsEnabled:Z

    .line 248
    iput-boolean v1, p0, Lcom/android/server/display/LogicalDisplay;->mIsInTransition:Z

    .line 249
    const-string v2, "default"

    iput-object v2, p0, Lcom/android/server/display/LogicalDisplay;->mThermalBrightnessThrottlingDataId:Ljava/lang/String;

    .line 250
    iput-object v2, p0, Lcom/android/server/display/LogicalDisplay;->mPowerThrottlingDataId:Ljava/lang/String;

    .line 251
    iget-object v2, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v3, p0, Lcom/android/server/display/LogicalDisplay;->mThermalBrightnessThrottlingDataId:Ljava/lang/String;

    iput-object v3, v2, Landroid/view/DisplayInfo;->thermalBrightnessThrottlingDataId:Ljava/lang/String;

    .line 252
    iput-boolean p4, p0, Lcom/android/server/display/LogicalDisplay;->mIsAnisotropyCorrectionEnabled:Z

    .line 253
    iput-boolean p5, p0, Lcom/android/server/display/LogicalDisplay;->mAlwaysRotateDisplayDeviceEnabled:Z

    .line 254
    iput-boolean p6, p0, Lcom/android/server/display/LogicalDisplay;->mSyncedResolutionSwitchEnabled:Z

    .line 255
    iget v2, p0, Lcom/android/server/display/LogicalDisplay;->mDisplayId:I

    if-nez v2, :cond_0

    move v1, v0

    :cond_0
    iput-boolean v1, p0, Lcom/android/server/display/LogicalDisplay;->mCanHostTasks:Z

    .line 256
    return-void
.end method

.method private static getMaskingInsets(Lcom/android/server/display/DisplayDeviceInfo;)Landroid/graphics/Rect;
    .locals 2
    .param p0, "deviceInfo"    # Lcom/android/server/display/DisplayDeviceInfo;

    .line 634
    iget v0, p0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 635
    .local v0, "maskCutout":Z
    :goto_0
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceInfo;->displayCutout:Landroid/view/DisplayCutout;

    if-eqz v1, :cond_1

    .line 637
    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceInfo;->displayCutout:Landroid/view/DisplayCutout;

    invoke-virtual {v1}, Landroid/view/DisplayCutout;->getSafeInsets()Landroid/graphics/Rect;

    move-result-object v1

    return-object v1

    .line 639
    :cond_1
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    return-object v1
.end method

.method private updateFrameRateOverrides(Lcom/android/server/display/DisplayDeviceInfo;)V
    .locals 8
    .param p1, "deviceInfo"    # Lcom/android/server/display/DisplayDeviceInfo;

    .line 593
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mTempFrameRateOverride:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 594
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mFrameRateOverrides:[Landroid/view/DisplayEventReceiver$FrameRateOverride;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 596
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mFrameRateOverrides:[Landroid/view/DisplayEventReceiver$FrameRateOverride;

    array-length v2, v0

    move v3, v1

    :goto_0
    nop

    if-ge v3, v2, :cond_0

    aget-object v4, v0, v3

    .line 597
    .local v4, "frameRateOverride":Landroid/view/DisplayEventReceiver$FrameRateOverride;
    iget-object v5, p0, Lcom/android/server/display/LogicalDisplay;->mTempFrameRateOverride:Landroid/util/SparseArray;

    iget v6, v4, Landroid/view/DisplayEventReceiver$FrameRateOverride;->uid:I

    iget v7, v4, Landroid/view/DisplayEventReceiver$FrameRateOverride;->frameRateHz:F

    .line 598
    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    .line 597
    invoke-virtual {v5, v6, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 596
    .end local v4    # "frameRateOverride":Landroid/view/DisplayEventReceiver$FrameRateOverride;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 601
    :cond_0
    iget-object v0, p1, Lcom/android/server/display/DisplayDeviceInfo;->frameRateOverrides:[Landroid/view/DisplayEventReceiver$FrameRateOverride;

    iput-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mFrameRateOverrides:[Landroid/view/DisplayEventReceiver$FrameRateOverride;

    .line 602
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mFrameRateOverrides:[Landroid/view/DisplayEventReceiver$FrameRateOverride;

    if-eqz v0, :cond_3

    .line 604
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mFrameRateOverrides:[Landroid/view/DisplayEventReceiver$FrameRateOverride;

    array-length v2, v0

    :goto_1
    nop

    if-ge v1, v2, :cond_3

    aget-object v3, v0, v1

    .line 605
    .local v3, "frameRateOverride":Landroid/view/DisplayEventReceiver$FrameRateOverride;
    iget-object v4, p0, Lcom/android/server/display/LogicalDisplay;->mTempFrameRateOverride:Landroid/util/SparseArray;

    iget v5, v3, Landroid/view/DisplayEventReceiver$FrameRateOverride;->uid:I

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-virtual {v4, v5, v7}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    .line 606
    .local v4, "refreshRate":F
    cmpl-float v5, v4, v6

    if-eqz v5, :cond_1

    iget v5, v3, Landroid/view/DisplayEventReceiver$FrameRateOverride;->frameRateHz:F

    cmpl-float v5, v5, v4

    if-eqz v5, :cond_2

    :cond_1
    goto :goto_2

    .line 610
    :cond_2
    iget-object v5, p0, Lcom/android/server/display/LogicalDisplay;->mTempFrameRateOverride:Landroid/util/SparseArray;

    iget v6, v3, Landroid/view/DisplayEventReceiver$FrameRateOverride;->uid:I

    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->delete(I)V

    goto :goto_3

    .line 607
    :goto_2
    iget-object v5, p0, Lcom/android/server/display/LogicalDisplay;->mTempFrameRateOverride:Landroid/util/SparseArray;

    iget v6, v3, Landroid/view/DisplayEventReceiver$FrameRateOverride;->uid:I

    iget v7, v3, Landroid/view/DisplayEventReceiver$FrameRateOverride;->frameRateHz:F

    .line 608
    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    .line 607
    invoke-virtual {v5, v6, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 604
    .end local v3    # "frameRateOverride":Landroid/view/DisplayEventReceiver$FrameRateOverride;
    .end local v4    # "refreshRate":F
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 614
    :cond_3
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_4
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mTempFrameRateOverride:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 615
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mPendingFrameRateOverrideUids:Landroid/util/ArraySet;

    iget-object v2, p0, Lcom/android/server/display/LogicalDisplay;->mTempFrameRateOverride:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 614
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_4
    nop

    .line 617
    .end local v0    # "i":I
    return-void
.end method

.method private validateCanHostTasksLocked(Z)Z
    .locals 4
    .param p1, "canHostTasks"    # Z

    .line 981
    invoke-virtual {p0}, Lcom/android/server/display/LogicalDisplay;->getDisplayIdLocked()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 982
    return v1

    .line 986
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mPrimaryDisplayDevice:Lcom/android/server/display/DisplayDevice;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayDevice;->shouldOnlyMirror()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 987
    return v2

    .line 991
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/display/LogicalDisplay;->getDevicePositionLocked()I

    move-result v0

    if-ne v0, v1, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v2

    .line 992
    .local v0, "isRearDisplay":Z
    :goto_0
    iget-object v3, p0, Lcom/android/server/display/LogicalDisplay;->mPrimaryDisplayDevice:Lcom/android/server/display/DisplayDevice;

    .line 993
    invoke-virtual {v3}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;

    move-result-object v3

    iget v3, v3, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    and-int/lit16 v3, v3, 0x80

    if-nez v3, :cond_3

    if-eqz v0, :cond_4

    :cond_3
    move v2, v1

    .line 997
    .local v2, "ownContent":Z
    :cond_4
    if-eqz v2, :cond_5

    .line 998
    return v1

    .line 1001
    :cond_5
    return p1
.end method


# virtual methods
.method canHostTasksLocked()Z
    .locals 1

    .line 950
    iget-boolean v0, p0, Lcom/android/server/display/LogicalDisplay;->mCanHostTasks:Z

    return v0
.end method

.method public clearPendingFrameRateOverrideUids()V
    .locals 1

    .line 321
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mPendingFrameRateOverrideUids:Landroid/util/ArraySet;

    .line 322
    return-void
.end method

.method public configureDisplayLocked(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/display/DisplayDevice;Z)V
    .locals 21
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;
    .param p2, "device"    # Lcom/android/server/display/DisplayDevice;
    .param p3, "isBlanked"    # Z

    .line 674
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    if-eqz p3, :cond_0

    const/4 v3, -0x1

    goto :goto_0

    :cond_0
    iget v3, v0, Lcom/android/server/display/LogicalDisplay;->mLayerStack:I

    :goto_0
    iget v4, v0, Lcom/android/server/display/LogicalDisplay;->mDisplayId:I

    invoke-virtual {v2, v1, v3, v4}, Lcom/android/server/display/DisplayDevice;->setLayerStackLocked(Landroid/view/SurfaceControl$Transaction;II)V

    .line 678
    nop

    .line 679
    invoke-virtual {v0}, Lcom/android/server/display/LogicalDisplay;->isEnabledLocked()Z

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;

    move-result-object v3

    iget v3, v3, Lcom/android/server/display/DisplayDeviceInfo;->touch:I

    if-eqz v3, :cond_1

    .line 680
    move v3, v4

    goto :goto_1

    .line 681
    :cond_1
    move v3, v5

    .line 678
    :goto_1
    invoke-virtual {v2, v1, v3}, Lcom/android/server/display/DisplayDevice;->setDisplayFlagsLocked(Landroid/view/SurfaceControl$Transaction;I)V

    .line 684
    iget-object v3, v0, Lcom/android/server/display/LogicalDisplay;->mPrimaryDisplayDevice:Lcom/android/server/display/DisplayDevice;

    if-ne v2, v3, :cond_2

    .line 685
    iget-object v3, v0, Lcom/android/server/display/LogicalDisplay;->mDesiredDisplayModeSpecs:Lcom/android/server/display/mode/DisplayModeDirector$DesiredDisplayModeSpecs;

    invoke-virtual {v2, v3}, Lcom/android/server/display/DisplayDevice;->setDesiredDisplayModeSpecsLocked(Lcom/android/server/display/mode/DisplayModeDirector$DesiredDisplayModeSpecs;)V

    .line 686
    iget v3, v0, Lcom/android/server/display/LogicalDisplay;->mRequestedColorMode:I

    invoke-virtual {v2, v3}, Lcom/android/server/display/DisplayDevice;->setRequestedColorModeLocked(I)V

    goto :goto_2

    .line 689
    :cond_2
    new-instance v3, Lcom/android/server/display/mode/DisplayModeDirector$DesiredDisplayModeSpecs;

    invoke-direct {v3}, Lcom/android/server/display/mode/DisplayModeDirector$DesiredDisplayModeSpecs;-><init>()V

    invoke-virtual {v2, v3}, Lcom/android/server/display/DisplayDevice;->setDesiredDisplayModeSpecsLocked(Lcom/android/server/display/mode/DisplayModeDirector$DesiredDisplayModeSpecs;)V

    .line 691
    invoke-virtual {v2, v5}, Lcom/android/server/display/DisplayDevice;->setRequestedColorModeLocked(I)V

    .line 694
    :goto_2
    iget-boolean v3, v0, Lcom/android/server/display/LogicalDisplay;->mRequestedMinimalPostProcessing:Z

    invoke-virtual {v2, v3}, Lcom/android/server/display/DisplayDevice;->setAutoLowLatencyModeLocked(Z)V

    .line 695
    iget-boolean v3, v0, Lcom/android/server/display/LogicalDisplay;->mRequestedMinimalPostProcessing:Z

    invoke-virtual {v2, v3}, Lcom/android/server/display/DisplayDevice;->setGameContentTypeLocked(Z)V

    .line 698
    invoke-virtual {v0}, Lcom/android/server/display/LogicalDisplay;->getDisplayInfoLocked()Landroid/view/DisplayInfo;

    move-result-object v3

    .line 699
    .local v3, "displayInfo":Landroid/view/DisplayInfo;
    invoke-virtual {v2}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;

    move-result-object v6

    .line 704
    .local v6, "displayDeviceInfo":Lcom/android/server/display/DisplayDeviceInfo;
    iget-object v7, v0, Lcom/android/server/display/LogicalDisplay;->mTempLayerStackRect:Landroid/graphics/Rect;

    iget v8, v3, Landroid/view/DisplayInfo;->logicalWidth:I

    iget v9, v3, Landroid/view/DisplayInfo;->logicalHeight:I

    invoke-virtual {v7, v5, v5, v8, v9}, Landroid/graphics/Rect;->set(IIII)V

    .line 709
    const/4 v7, 0x0

    .line 714
    .local v7, "orientation":I
    iget v8, v6, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    const/4 v9, 0x2

    and-int/2addr v8, v9

    if-nez v8, :cond_3

    iget-boolean v8, v0, Lcom/android/server/display/LogicalDisplay;->mAlwaysRotateDisplayDeviceEnabled:Z

    if-eqz v8, :cond_4

    .line 716
    :cond_3
    iget v7, v3, Landroid/view/DisplayInfo;->rotation:I

    .line 720
    :cond_4
    iget v8, v6, Lcom/android/server/display/DisplayDeviceInfo;->rotation:I

    add-int/2addr v8, v7

    rem-int/lit8 v8, v8, 0x4

    .line 727
    .end local v7    # "orientation":I
    .local v8, "orientation":I
    if-eq v8, v4, :cond_5

    const/4 v7, 0x3

    if-ne v8, v7, :cond_6

    :cond_5
    move v5, v4

    .line 729
    .local v5, "rotated":Z
    :cond_6
    if-eqz v5, :cond_7

    iget v7, v6, Lcom/android/server/display/DisplayDeviceInfo;->height:I

    goto :goto_3

    :cond_7
    iget v7, v6, Lcom/android/server/display/DisplayDeviceInfo;->width:I

    .line 730
    .local v7, "physWidth":I
    :goto_3
    if-eqz v5, :cond_8

    iget v10, v6, Lcom/android/server/display/DisplayDeviceInfo;->width:I

    goto :goto_4

    :cond_8
    iget v10, v6, Lcom/android/server/display/DisplayDeviceInfo;->height:I

    .line 732
    .local v10, "physHeight":I
    :goto_4
    invoke-static {v6}, Lcom/android/server/display/LogicalDisplay;->getMaskingInsets(Lcom/android/server/display/DisplayDeviceInfo;)Landroid/graphics/Rect;

    move-result-object v11

    .line 733
    .local v11, "maskingInsets":Landroid/graphics/Rect;
    invoke-static {v11, v8}, Lcom/android/server/wm/utils/InsetUtils;->rotateInsets(Landroid/graphics/Rect;I)V

    .line 735
    iget v12, v11, Landroid/graphics/Rect;->left:I

    iget v13, v11, Landroid/graphics/Rect;->right:I

    add-int/2addr v12, v13

    sub-int/2addr v7, v12

    .line 736
    iget v12, v11, Landroid/graphics/Rect;->top:I

    iget v13, v11, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v12, v13

    sub-int/2addr v10, v12

    .line 738
    iget v12, v3, Landroid/view/DisplayInfo;->logicalWidth:I

    .line 739
    .local v12, "displayLogicalWidth":I
    iget v13, v3, Landroid/view/DisplayInfo;->logicalHeight:I

    .line 741
    .local v13, "displayLogicalHeight":I
    iget-boolean v14, v0, Lcom/android/server/display/LogicalDisplay;->mIsAnisotropyCorrectionEnabled:Z

    if-eqz v14, :cond_d

    iget v14, v6, Lcom/android/server/display/DisplayDeviceInfo;->type:I

    if-ne v14, v9, :cond_d

    iget v14, v6, Lcom/android/server/display/DisplayDeviceInfo;->xDpi:F

    const/4 v15, 0x0

    cmpl-float v14, v14, v15

    if-lez v14, :cond_d

    iget v14, v6, Lcom/android/server/display/DisplayDeviceInfo;->yDpi:F

    cmpl-float v14, v14, v15

    if-lez v14, :cond_d

    .line 743
    iget v14, v6, Lcom/android/server/display/DisplayDeviceInfo;->xDpi:F

    iget v15, v6, Lcom/android/server/display/DisplayDeviceInfo;->yDpi:F

    const v16, 0x3f833333    # 1.025f

    mul-float v15, v15, v16

    cmpl-float v14, v14, v15

    const-wide/high16 v17, 0x3fe0000000000000L    # 0.5

    if-lez v14, :cond_b

    .line 744
    iget v14, v6, Lcom/android/server/display/DisplayDeviceInfo;->yDpi:F

    iget v15, v6, Lcom/android/server/display/DisplayDeviceInfo;->xDpi:F

    div-float/2addr v14, v15

    .line 745
    .local v14, "scalingFactor":F
    if-eqz v5, :cond_9

    .line 746
    int-to-float v15, v12

    mul-float/2addr v15, v14

    move/from16 v19, v9

    move/from16 v20, v10

    .end local v10    # "physHeight":I
    .local v20, "physHeight":I
    float-to-double v9, v15

    add-double v9, v9, v17

    double-to-int v12, v9

    goto :goto_5

    .line 748
    .end local v20    # "physHeight":I
    .restart local v10    # "physHeight":I
    :cond_9
    move/from16 v19, v9

    move/from16 v20, v10

    .end local v10    # "physHeight":I
    .restart local v20    # "physHeight":I
    int-to-float v9, v13

    mul-float/2addr v9, v14

    float-to-double v9, v9

    add-double v9, v9, v17

    double-to-int v13, v9

    .line 751
    .end local v14    # "scalingFactor":F
    :cond_a
    :goto_5
    goto :goto_6

    .end local v20    # "physHeight":I
    .restart local v10    # "physHeight":I
    :cond_b
    move/from16 v19, v9

    move/from16 v20, v10

    .end local v10    # "physHeight":I
    .restart local v20    # "physHeight":I
    iget v9, v6, Lcom/android/server/display/DisplayDeviceInfo;->xDpi:F

    mul-float v9, v9, v16

    iget v10, v6, Lcom/android/server/display/DisplayDeviceInfo;->yDpi:F

    cmpg-float v9, v9, v10

    if-gez v9, :cond_a

    .line 753
    iget v9, v6, Lcom/android/server/display/DisplayDeviceInfo;->xDpi:F

    iget v10, v6, Lcom/android/server/display/DisplayDeviceInfo;->yDpi:F

    div-float/2addr v9, v10

    .line 754
    .local v9, "scalingFactor":F
    if-eqz v5, :cond_c

    .line 755
    int-to-float v10, v13

    mul-float/2addr v10, v9

    float-to-double v14, v10

    add-double v14, v14, v17

    double-to-int v13, v14

    goto :goto_6

    .line 758
    :cond_c
    int-to-float v10, v12

    mul-float/2addr v10, v9

    float-to-double v14, v10

    add-double v14, v14, v17

    double-to-int v12, v14

    goto :goto_6

    .line 741
    .end local v9    # "scalingFactor":F
    .end local v20    # "physHeight":I
    .restart local v10    # "physHeight":I
    :cond_d
    move/from16 v19, v9

    move/from16 v20, v10

    .line 771
    .end local v10    # "physHeight":I
    .restart local v20    # "physHeight":I
    :goto_6
    iget v9, v3, Landroid/view/DisplayInfo;->flags:I

    const/high16 v10, 0x40000000    # 2.0f

    and-int/2addr v9, v10

    if-nez v9, :cond_e

    iget-boolean v9, v0, Lcom/android/server/display/LogicalDisplay;->mDisplayScalingDisabled:Z

    if-eqz v9, :cond_f

    :cond_e
    goto :goto_7

    .line 774
    :cond_f
    mul-int v9, v7, v13

    mul-int v10, v20, v12

    if-ge v9, v10, :cond_10

    .line 777
    move v9, v7

    .line 778
    .local v9, "displayRectWidth":I
    mul-int v10, v13, v7

    div-int/2addr v10, v12

    .local v10, "displayRectHeight":I
    goto :goto_8

    .line 781
    .end local v9    # "displayRectWidth":I
    .end local v10    # "displayRectHeight":I
    :cond_10
    mul-int v10, v12, v20

    div-int v9, v10, v13

    .line 782
    .restart local v9    # "displayRectWidth":I
    move/from16 v10, v20

    .restart local v10    # "displayRectHeight":I
    goto :goto_8

    .line 772
    .end local v9    # "displayRectWidth":I
    .end local v10    # "displayRectHeight":I
    :goto_7
    move v9, v12

    .line 773
    .restart local v9    # "displayRectWidth":I
    move v10, v13

    .line 784
    .restart local v10    # "displayRectHeight":I
    :goto_8
    sub-int v14, v20, v10

    div-int/lit8 v14, v14, 0x2

    .line 785
    .local v14, "displayRectTop":I
    sub-int v15, v7, v9

    div-int/lit8 v15, v15, 0x2

    .line 786
    .local v15, "displayRectLeft":I
    iget-object v4, v0, Lcom/android/server/display/LogicalDisplay;->mTempDisplayRect:Landroid/graphics/Rect;

    move-object/from16 v17, v3

    .end local v3    # "displayInfo":Landroid/view/DisplayInfo;
    .local v17, "displayInfo":Landroid/view/DisplayInfo;
    add-int v3, v15, v9

    move/from16 v18, v5

    .end local v5    # "rotated":Z
    .local v18, "rotated":Z
    add-int v5, v14, v10

    invoke-virtual {v4, v15, v14, v3, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 790
    iget-object v3, v0, Lcom/android/server/display/LogicalDisplay;->mTempDisplayRect:Landroid/graphics/Rect;

    iget v4, v11, Landroid/graphics/Rect;->left:I

    iget v5, v11, Landroid/graphics/Rect;->top:I

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Rect;->offset(II)V

    .line 792
    if-nez v8, :cond_11

    .line 793
    iget-object v3, v0, Lcom/android/server/display/LogicalDisplay;->mTempDisplayRect:Landroid/graphics/Rect;

    iget v4, v0, Lcom/android/server/display/LogicalDisplay;->mDisplayOffsetX:I

    iget v5, v0, Lcom/android/server/display/LogicalDisplay;->mDisplayOffsetY:I

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_9

    .line 794
    :cond_11
    const/4 v3, 0x1

    if-ne v8, v3, :cond_12

    .line 795
    iget-object v3, v0, Lcom/android/server/display/LogicalDisplay;->mTempDisplayRect:Landroid/graphics/Rect;

    iget v4, v0, Lcom/android/server/display/LogicalDisplay;->mDisplayOffsetY:I

    iget v5, v0, Lcom/android/server/display/LogicalDisplay;->mDisplayOffsetX:I

    neg-int v5, v5

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_9

    .line 796
    :cond_12
    move/from16 v3, v19

    if-ne v8, v3, :cond_13

    .line 797
    iget-object v3, v0, Lcom/android/server/display/LogicalDisplay;->mTempDisplayRect:Landroid/graphics/Rect;

    iget v4, v0, Lcom/android/server/display/LogicalDisplay;->mDisplayOffsetX:I

    neg-int v4, v4

    iget v5, v0, Lcom/android/server/display/LogicalDisplay;->mDisplayOffsetY:I

    neg-int v5, v5

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_9

    .line 799
    :cond_13
    iget-object v3, v0, Lcom/android/server/display/LogicalDisplay;->mTempDisplayRect:Landroid/graphics/Rect;

    iget v4, v0, Lcom/android/server/display/LogicalDisplay;->mDisplayOffsetY:I

    neg-int v4, v4

    iget v5, v0, Lcom/android/server/display/LogicalDisplay;->mDisplayOffsetX:I

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Rect;->offset(II)V

    .line 802
    :goto_9
    iget-object v3, v0, Lcom/android/server/display/LogicalDisplay;->mDisplayPosition:Landroid/graphics/Point;

    iget-object v4, v0, Lcom/android/server/display/LogicalDisplay;->mTempDisplayRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    iget-object v5, v0, Lcom/android/server/display/LogicalDisplay;->mTempDisplayRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Point;->set(II)V

    .line 804
    iget-boolean v3, v0, Lcom/android/server/display/LogicalDisplay;->mSyncedResolutionSwitchEnabled:Z

    if-nez v3, :cond_14

    iget v3, v6, Lcom/android/server/display/DisplayDeviceInfo;->type:I

    const/4 v4, 0x5

    if-ne v3, v4, :cond_15

    .line 805
    :cond_14
    invoke-virtual {v2, v1}, Lcom/android/server/display/DisplayDevice;->configureDisplaySizeLocked(Landroid/view/SurfaceControl$Transaction;)V

    .line 807
    :cond_15
    iget-object v3, v0, Lcom/android/server/display/LogicalDisplay;->mTempLayerStackRect:Landroid/graphics/Rect;

    iget-object v4, v0, Lcom/android/server/display/LogicalDisplay;->mTempDisplayRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v1, v8, v3, v4}, Lcom/android/server/display/DisplayDevice;->setProjectionLocked(Landroid/view/SurfaceControl$Transaction;ILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 808
    invoke-virtual {v2, v1}, Lcom/android/server/display/DisplayDevice;->configureSurfaceLocked(Landroid/view/SurfaceControl$Transaction;)V

    .line 809
    return-void
.end method

.method public dumpLocked(Ljava/io/PrintWriter;)V
    .locals 4
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 1145
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mDisplayId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/LogicalDisplay;->mDisplayId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1146
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mPrimaryDisplayDevice="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mPrimaryDisplayDevice:Lcom/android/server/display/DisplayDevice;

    const-string v2, ")"

    if-eqz v1, :cond_0

    .line 1148
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/server/display/LogicalDisplay;->mPrimaryDisplayDevice:Lcom/android/server/display/DisplayDevice;

    .line 1147
    invoke-virtual {v3}, Lcom/android/server/display/DisplayDevice;->getNameLocked()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/display/LogicalDisplay;->mPrimaryDisplayDevice:Lcom/android/server/display/DisplayDevice;

    invoke-virtual {v3}, Lcom/android/server/display/DisplayDevice;->getUniqueId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 1148
    :cond_0
    const-string/jumbo v1, "null"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1146
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1149
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mIsEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/LogicalDisplay;->mIsEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1150
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mIsInTransition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/LogicalDisplay;->mIsInTransition:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1151
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mLayerStack="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/LogicalDisplay;->mLayerStack:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1152
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mPosition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/LogicalDisplay;->mDevicePosition:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1153
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mHasContent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/LogicalDisplay;->mHasContent:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1154
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mDesiredDisplayModeSpecs={"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mDesiredDisplayModeSpecs:Lcom/android/server/display/mode/DisplayModeDirector$DesiredDisplayModeSpecs;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1155
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mRequestedColorMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/LogicalDisplay;->mRequestedColorMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1156
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mDisplayOffset=("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/LogicalDisplay;->mDisplayOffsetX:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/LogicalDisplay;->mDisplayOffsetY:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1157
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mDisplayScalingDisabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/LogicalDisplay;->mDisplayScalingDisabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1158
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mBaseDisplayInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1159
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mOverrideDisplayInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mOverrideDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1160
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mRequestedMinimalPostProcessing="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/LogicalDisplay;->mRequestedMinimalPostProcessing:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1161
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mFrameRateOverrides="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mFrameRateOverrides:[Landroid/view/DisplayEventReceiver$FrameRateOverride;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1162
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mPendingFrameRateOverrideUids="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mPendingFrameRateOverrideUids:Landroid/util/ArraySet;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1163
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mDisplayGroupId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/LogicalDisplay;->mDisplayGroupId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1164
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mDisplayGroupName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mDisplayGroupName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1165
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mThermalBrightnessThrottlingDataId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mThermalBrightnessThrottlingDataId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1166
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mLeadDisplayId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/LogicalDisplay;->mLeadDisplayId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1167
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mLayoutLimitedRefreshRate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mLayoutLimitedRefreshRate:Landroid/view/SurfaceControl$RefreshRateRange;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1168
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mThermalRefreshRateThrottling="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mThermalRefreshRateThrottling:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1169
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mPowerThrottlingDataId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mPowerThrottlingDataId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1170
    return-void
.end method

.method public getDesiredDisplayModeSpecsLocked()Lcom/android/server/display/mode/DisplayModeDirector$DesiredDisplayModeSpecs;
    .locals 1

    .line 846
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mDesiredDisplayModeSpecs:Lcom/android/server/display/mode/DisplayModeDirector$DesiredDisplayModeSpecs;

    return-object v0
.end method

.method public getDevicePositionLocked()I
    .locals 1

    .line 265
    iget v0, p0, Lcom/android/server/display/LogicalDisplay;->mDevicePosition:I

    return v0
.end method

.method public getDisplayGroupNameLocked()Ljava/lang/String;
    .locals 1

    .line 1133
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mDisplayGroupName:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplayIdLocked()I
    .locals 1

    .line 274
    iget v0, p0, Lcom/android/server/display/LogicalDisplay;->mDisplayId:I

    return v0
.end method

.method public getDisplayInfoLocked()Landroid/view/DisplayInfo;
    .locals 4

    .line 294
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mInfo:Lcom/android/server/display/DisplayInfoProxy;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayInfoProxy;->get()Landroid/view/DisplayInfo;

    move-result-object v0

    if-nez v0, :cond_0

    .line 295
    new-instance v0, Landroid/view/DisplayInfo;

    invoke-direct {v0}, Landroid/view/DisplayInfo;-><init>()V

    .line 296
    .local v0, "info":Landroid/view/DisplayInfo;
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v2, p0, Lcom/android/server/display/LogicalDisplay;->mOverrideDisplayInfo:Landroid/view/DisplayInfo;

    sget-object v3, Lcom/android/server/wm/utils/DisplayInfoOverrides;->WM_OVERRIDE_FIELDS:Lcom/android/server/wm/utils/DisplayInfoOverrides$DisplayInfoFieldsUpdater;

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wm/utils/DisplayInfoOverrides;->copyDisplayInfoFields(Landroid/view/DisplayInfo;Landroid/view/DisplayInfo;Landroid/view/DisplayInfo;Lcom/android/server/wm/utils/DisplayInfoOverrides$DisplayInfoFieldsUpdater;)V

    .line 298
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mInfo:Lcom/android/server/display/DisplayInfoProxy;

    invoke-virtual {v1, v0}, Lcom/android/server/display/DisplayInfoProxy;->set(Landroid/view/DisplayInfo;)V

    .line 300
    .end local v0    # "info":Landroid/view/DisplayInfo;
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mInfo:Lcom/android/server/display/DisplayInfoProxy;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayInfoProxy;->get()Landroid/view/DisplayInfo;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayOffloadSessionLocked()Lcom/android/server/display/DisplayOffloadSessionImpl;
    .locals 1

    .line 1141
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mDisplayOffloadSession:Lcom/android/server/display/DisplayOffloadSessionImpl;

    return-object v0
.end method

.method public getDisplayOffsetXLocked()I
    .locals 1

    .line 882
    iget v0, p0, Lcom/android/server/display/LogicalDisplay;->mDisplayOffsetX:I

    return v0
.end method

.method public getDisplayOffsetYLocked()I
    .locals 1

    .line 889
    iget v0, p0, Lcom/android/server/display/LogicalDisplay;->mDisplayOffsetY:I

    return v0
.end method

.method getDisplayPosition()Landroid/graphics/Point;
    .locals 2

    .line 650
    new-instance v0, Landroid/graphics/Point;

    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mDisplayPosition:Landroid/graphics/Point;

    invoke-direct {v0, v1}, Landroid/graphics/Point;-><init>(Landroid/graphics/Point;)V

    return-object v0
.end method

.method public getFrameRateOverrides()[Landroid/view/DisplayEventReceiver$FrameRateOverride;
    .locals 1

    .line 307
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mFrameRateOverrides:[Landroid/view/DisplayEventReceiver$FrameRateOverride;

    return-object v0
.end method

.method public getInsets()Landroid/graphics/Rect;
    .locals 1

    .line 627
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mPrimaryDisplayDeviceInfo:Lcom/android/server/display/DisplayDeviceInfo;

    invoke-static {v0}, Lcom/android/server/display/LogicalDisplay;->getMaskingInsets(Lcom/android/server/display/DisplayDeviceInfo;)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public getLeadDisplayIdLocked()I
    .locals 1

    .line 1119
    iget v0, p0, Lcom/android/server/display/LogicalDisplay;->mLeadDisplayId:I

    return v0
.end method

.method getNonOverrideDisplayInfoLocked(Landroid/view/DisplayInfo;)V
    .locals 1
    .param p1, "outInfo"    # Landroid/view/DisplayInfo;

    .line 328
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {p1, v0}, Landroid/view/DisplayInfo;->copyFrom(Landroid/view/DisplayInfo;)V

    .line 329
    return-void
.end method

.method public getPendingFrameRateOverrideUids()Landroid/util/ArraySet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 314
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mPendingFrameRateOverrideUids:Landroid/util/ArraySet;

    return-object v0
.end method

.method public getPowerThrottlingDataIdLocked()Ljava/lang/String;
    .locals 1

    .line 1099
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mPowerThrottlingDataId:Ljava/lang/String;

    return-object v0
.end method

.method public getPrimaryDisplayDeviceLocked()Lcom/android/server/display/DisplayDevice;
    .locals 1

    .line 283
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mPrimaryDisplayDevice:Lcom/android/server/display/DisplayDevice;

    return-object v0
.end method

.method public getRequestedColorModeLocked()I
    .locals 1

    .line 875
    iget v0, p0, Lcom/android/server/display/LogicalDisplay;->mRequestedColorMode:I

    return v0
.end method

.method public getRequestedMinimalPostProcessingLocked()Z
    .locals 1

    .line 860
    iget-boolean v0, p0, Lcom/android/server/display/LogicalDisplay;->mRequestedMinimalPostProcessing:Z

    return v0
.end method

.method public hasContentLocked()Z
    .locals 1

    .line 822
    iget-boolean v0, p0, Lcom/android/server/display/LogicalDisplay;->mHasContent:Z

    return v0
.end method

.method isDirtyLocked()Z
    .locals 1

    .line 370
    iget-boolean v0, p0, Lcom/android/server/display/LogicalDisplay;->mDirty:Z

    return v0
.end method

.method public isDisplayScalingDisabled()Z
    .locals 1

    .line 905
    iget-boolean v0, p0, Lcom/android/server/display/LogicalDisplay;->mDisplayScalingDisabled:Z

    return v0
.end method

.method public isEnabledLocked()Z
    .locals 1

    .line 1040
    iget-boolean v0, p0, Lcom/android/server/display/LogicalDisplay;->mIsEnabled:Z

    return v0
.end method

.method public isInTransitionLocked()Z
    .locals 1

    .line 1061
    iget-boolean v0, p0, Lcom/android/server/display/LogicalDisplay;->mIsInTransition:Z

    return v0
.end method

.method public isValidLocked()Z
    .locals 1

    .line 366
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mPrimaryDisplayDevice:Lcom/android/server/display/DisplayDevice;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method setCanHostTasksLocked(Z)Z
    .locals 2
    .param p1, "canHostTasks"    # Z

    .line 960
    invoke-direct {p0, p1}, Lcom/android/server/display/LogicalDisplay;->validateCanHostTasksLocked(Z)Z

    move-result p1

    .line 961
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget-boolean v0, v0, Landroid/view/DisplayInfo;->canHostTasks:Z

    if-ne v0, p1, :cond_0

    .line 962
    const/4 v0, 0x0

    return v0

    .line 965
    :cond_0
    iput-boolean p1, p0, Lcom/android/server/display/LogicalDisplay;->mCanHostTasks:Z

    .line 966
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iput-boolean p1, v0, Landroid/view/DisplayInfo;->canHostTasks:Z

    .line 967
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mInfo:Lcom/android/server/display/DisplayInfoProxy;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/display/DisplayInfoProxy;->set(Landroid/view/DisplayInfo;)V

    .line 968
    const/4 v0, 0x1

    return v0
.end method

.method public setDesiredDisplayModeSpecsLocked(Lcom/android/server/display/mode/DisplayModeDirector$DesiredDisplayModeSpecs;)V
    .locals 0
    .param p1, "specs"    # Lcom/android/server/display/mode/DisplayModeDirector$DesiredDisplayModeSpecs;

    .line 839
    iput-object p1, p0, Lcom/android/server/display/LogicalDisplay;->mDesiredDisplayModeSpecs:Lcom/android/server/display/mode/DisplayModeDirector$DesiredDisplayModeSpecs;

    .line 840
    return-void
.end method

.method public setDevicePositionLocked(I)V
    .locals 1
    .param p1, "position"    # I

    .line 259
    iget v0, p0, Lcom/android/server/display/LogicalDisplay;->mDevicePosition:I

    if-eq v0, p1, :cond_0

    .line 260
    iput p1, p0, Lcom/android/server/display/LogicalDisplay;->mDevicePosition:I

    .line 261
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/display/LogicalDisplay;->mDirty:Z

    .line 263
    :cond_0
    return-void
.end method

.method public setDisplayGroupNameLocked(Ljava/lang/String;)V
    .locals 0
    .param p1, "displayGroupName"    # Ljava/lang/String;

    .line 1126
    iput-object p1, p0, Lcom/android/server/display/LogicalDisplay;->mDisplayGroupName:Ljava/lang/String;

    .line 1127
    return-void
.end method

.method public setDisplayInfoOverrideFromWindowManagerLocked(Landroid/view/DisplayInfo;)Z
    .locals 3
    .param p1, "info"    # Landroid/view/DisplayInfo;

    .line 339
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    .line 340
    iget-object v2, p0, Lcom/android/server/display/LogicalDisplay;->mOverrideDisplayInfo:Landroid/view/DisplayInfo;

    if-nez v2, :cond_0

    .line 341
    new-instance v2, Landroid/view/DisplayInfo;

    invoke-direct {v2, p1}, Landroid/view/DisplayInfo;-><init>(Landroid/view/DisplayInfo;)V

    iput-object v2, p0, Lcom/android/server/display/LogicalDisplay;->mOverrideDisplayInfo:Landroid/view/DisplayInfo;

    .line 342
    iget-object v2, p0, Lcom/android/server/display/LogicalDisplay;->mInfo:Lcom/android/server/display/DisplayInfoProxy;

    invoke-virtual {v2, v1}, Lcom/android/server/display/DisplayInfoProxy;->set(Landroid/view/DisplayInfo;)V

    .line 343
    return v0

    .line 344
    :cond_0
    iget-object v2, p0, Lcom/android/server/display/LogicalDisplay;->mOverrideDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v2, p1}, Landroid/view/DisplayInfo;->equals(Landroid/view/DisplayInfo;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 345
    iget-object v2, p0, Lcom/android/server/display/LogicalDisplay;->mOverrideDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v2, p1}, Landroid/view/DisplayInfo;->copyFrom(Landroid/view/DisplayInfo;)V

    .line 346
    iget-object v2, p0, Lcom/android/server/display/LogicalDisplay;->mInfo:Lcom/android/server/display/DisplayInfoProxy;

    invoke-virtual {v2, v1}, Lcom/android/server/display/DisplayInfoProxy;->set(Landroid/view/DisplayInfo;)V

    .line 347
    return v0

    .line 349
    :cond_1
    iget-object v2, p0, Lcom/android/server/display/LogicalDisplay;->mOverrideDisplayInfo:Landroid/view/DisplayInfo;

    if-eqz v2, :cond_2

    .line 350
    iput-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mOverrideDisplayInfo:Landroid/view/DisplayInfo;

    .line 351
    iget-object v2, p0, Lcom/android/server/display/LogicalDisplay;->mInfo:Lcom/android/server/display/DisplayInfoProxy;

    invoke-virtual {v2, v1}, Lcom/android/server/display/DisplayInfoProxy;->set(Landroid/view/DisplayInfo;)V

    .line 352
    return v0

    .line 354
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public setDisplayOffloadSessionLocked(Lcom/android/server/display/DisplayOffloadSessionImpl;)V
    .locals 0
    .param p1, "session"    # Lcom/android/server/display/DisplayOffloadSessionImpl;

    .line 1137
    iput-object p1, p0, Lcom/android/server/display/LogicalDisplay;->mDisplayOffloadSession:Lcom/android/server/display/DisplayOffloadSessionImpl;

    .line 1138
    return-void
.end method

.method public setDisplayOffsetsLocked(II)V
    .locals 0
    .param p1, "x"    # I
    .param p2, "y"    # I

    .line 896
    iput p1, p0, Lcom/android/server/display/LogicalDisplay;->mDisplayOffsetX:I

    .line 897
    iput p2, p0, Lcom/android/server/display/LogicalDisplay;->mDisplayOffsetY:I

    .line 898
    return-void
.end method

.method public setDisplayScalingDisabledLocked(Z)V
    .locals 0
    .param p1, "disableScaling"    # Z

    .line 915
    iput-boolean p1, p0, Lcom/android/server/display/LogicalDisplay;->mDisplayScalingDisabled:Z

    .line 916
    return-void
.end method

.method public setEnabledLocked(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .line 1049
    iget-boolean v0, p0, Lcom/android/server/display/LogicalDisplay;->mIsEnabled:Z

    if-eq p1, v0, :cond_0

    .line 1050
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/display/LogicalDisplay;->mDirty:Z

    .line 1051
    iput-boolean p1, p0, Lcom/android/server/display/LogicalDisplay;->mIsEnabled:Z

    .line 1053
    :cond_0
    return-void
.end method

.method public setHasContentLocked(Z)V
    .locals 0
    .param p1, "hasContent"    # Z

    .line 831
    iput-boolean p1, p0, Lcom/android/server/display/LogicalDisplay;->mHasContent:Z

    .line 832
    return-void
.end method

.method public setIsForceSdr(Z)Z
    .locals 5
    .param p1, "isForceSdr"    # Z

    .line 935
    invoke-virtual {p0}, Lcom/android/server/display/LogicalDisplay;->getDisplayInfoLocked()Landroid/view/DisplayInfo;

    move-result-object v0

    iget v0, v0, Landroid/view/DisplayInfo;->type:I

    .line 936
    .local v0, "displayType":I
    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    const/4 v2, 0x4

    if-ne v0, v2, :cond_1

    :cond_0
    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 940
    .local v1, "isTargetDisplayType":Z
    :goto_0
    const/4 v2, 0x0

    .line 941
    .local v2, "handleLogicalDisplayChangedLocked":Z
    if-eqz v1, :cond_2

    iget-object v3, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget-boolean v3, v3, Landroid/view/DisplayInfo;->isForceSdr:Z

    if-eq v3, p1, :cond_2

    .line 942
    iget-object v3, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iput-boolean p1, v3, Landroid/view/DisplayInfo;->isForceSdr:Z

    .line 943
    iget-object v3, p0, Lcom/android/server/display/LogicalDisplay;->mInfo:Lcom/android/server/display/DisplayInfoProxy;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/server/display/DisplayInfoProxy;->set(Landroid/view/DisplayInfo;)V

    .line 944
    const/4 v2, 0x1

    .line 946
    :cond_2
    return v2
.end method

.method public setIsInTransitionLocked(Z)V
    .locals 0
    .param p1, "isInTransition"    # Z

    .line 1069
    iput-boolean p1, p0, Lcom/android/server/display/LogicalDisplay;->mIsInTransition:Z

    .line 1070
    return-void
.end method

.method public setLeadDisplayLocked(I)V
    .locals 2
    .param p1, "displayId"    # I

    .line 1113
    iget v0, p0, Lcom/android/server/display/LogicalDisplay;->mDisplayId:I

    iget v1, p0, Lcom/android/server/display/LogicalDisplay;->mLeadDisplayId:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/server/display/LogicalDisplay;->mDisplayId:I

    if-eq v0, p1, :cond_0

    .line 1114
    iput p1, p0, Lcom/android/server/display/LogicalDisplay;->mLeadDisplayId:I

    .line 1116
    :cond_0
    return-void
.end method

.method public setPowerThrottlingDataIdLocked(Ljava/lang/String;)V
    .locals 1
    .param p1, "powerThrottlingDataId"    # Ljava/lang/String;

    .line 1088
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mPowerThrottlingDataId:Ljava/lang/String;

    invoke-static {p1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1089
    iput-object p1, p0, Lcom/android/server/display/LogicalDisplay;->mPowerThrottlingDataId:Ljava/lang/String;

    .line 1090
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/display/LogicalDisplay;->mDirty:Z

    .line 1092
    :cond_0
    return-void
.end method

.method public setPrimaryDisplayDeviceLocked(Lcom/android/server/display/DisplayDevice;)Lcom/android/server/display/DisplayDevice;
    .locals 4
    .param p1, "device"    # Lcom/android/server/display/DisplayDevice;

    .line 1023
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mPrimaryDisplayDevice:Lcom/android/server/display/DisplayDevice;

    .line 1024
    .local v0, "old":Lcom/android/server/display/DisplayDevice;
    iput-object p1, p0, Lcom/android/server/display/LogicalDisplay;->mPrimaryDisplayDevice:Lcom/android/server/display/DisplayDevice;

    .line 1027
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mPrimaryDisplayDeviceInfo:Lcom/android/server/display/DisplayDeviceInfo;

    .line 1028
    iget-object v2, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    sget-object v3, Lcom/android/server/display/LogicalDisplay;->EMPTY_DISPLAY_INFO:Landroid/view/DisplayInfo;

    invoke-virtual {v2, v3}, Landroid/view/DisplayInfo;->copyFrom(Landroid/view/DisplayInfo;)V

    .line 1029
    iget-object v2, p0, Lcom/android/server/display/LogicalDisplay;->mInfo:Lcom/android/server/display/DisplayInfoProxy;

    invoke-virtual {v2, v1}, Lcom/android/server/display/DisplayInfoProxy;->set(Landroid/view/DisplayInfo;)V

    .line 1031
    return-object v0
.end method

.method public setRequestedColorModeLocked(I)V
    .locals 0
    .param p1, "colorMode"    # I

    .line 853
    iput p1, p0, Lcom/android/server/display/LogicalDisplay;->mRequestedColorMode:I

    .line 854
    return-void
.end method

.method public setRequestedMinimalPostProcessingLocked(Z)V
    .locals 0
    .param p1, "on"    # Z

    .line 870
    iput-boolean p1, p0, Lcom/android/server/display/LogicalDisplay;->mRequestedMinimalPostProcessing:Z

    .line 871
    return-void
.end method

.method public setThermalBrightnessThrottlingDataIdLocked(Ljava/lang/String;)V
    .locals 1
    .param p1, "brightnessThrottlingDataId"    # Ljava/lang/String;

    .line 1077
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mThermalBrightnessThrottlingDataId:Ljava/lang/String;

    invoke-static {p1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1078
    iput-object p1, p0, Lcom/android/server/display/LogicalDisplay;->mThermalBrightnessThrottlingDataId:Ljava/lang/String;

    .line 1079
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/display/LogicalDisplay;->mDirty:Z

    .line 1081
    :cond_0
    return-void
.end method

.method public setUserDisabledHdrTypes([I)V
    .locals 2
    .param p1, "userDisabledHdrTypes"    # [I

    .line 919
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mUserDisabledHdrTypes:[I

    if-eq v0, p1, :cond_0

    .line 920
    iput-object p1, p0, Lcom/android/server/display/LogicalDisplay;->mUserDisabledHdrTypes:[I

    .line 921
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iput-object p1, v0, Landroid/view/DisplayInfo;->userDisabledHdrTypes:[I

    .line 922
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mInfo:Lcom/android/server/display/DisplayInfoProxy;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/display/DisplayInfoProxy;->set(Landroid/view/DisplayInfo;)V

    .line 924
    :cond_0
    return-void
.end method

.method public swapDisplaysLocked(Lcom/android/server/display/LogicalDisplay;)V
    .locals 1
    .param p1, "targetDisplay"    # Lcom/android/server/display/LogicalDisplay;

    .line 1011
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mPrimaryDisplayDevice:Lcom/android/server/display/DisplayDevice;

    .line 1012
    invoke-virtual {p1, v0}, Lcom/android/server/display/LogicalDisplay;->setPrimaryDisplayDeviceLocked(Lcom/android/server/display/DisplayDevice;)Lcom/android/server/display/DisplayDevice;

    move-result-object v0

    .line 1013
    .local v0, "oldTargetDevice":Lcom/android/server/display/DisplayDevice;
    invoke-virtual {p0, v0}, Lcom/android/server/display/LogicalDisplay;->setPrimaryDisplayDeviceLocked(Lcom/android/server/display/DisplayDevice;)Lcom/android/server/display/DisplayDevice;

    .line 1014
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1174
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 1175
    .local v0, "sw":Ljava/io/StringWriter;
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {p0, v1}, Lcom/android/server/display/LogicalDisplay;->dumpLocked(Ljava/io/PrintWriter;)V

    .line 1176
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public updateDisplayGroupIdLocked(I)V
    .locals 1
    .param p1, "groupId"    # I

    .line 379
    iget v0, p0, Lcom/android/server/display/LogicalDisplay;->mDisplayGroupId:I

    if-eq p1, v0, :cond_0

    .line 380
    iput p1, p0, Lcom/android/server/display/LogicalDisplay;->mDisplayGroupId:I

    .line 381
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/display/LogicalDisplay;->mDirty:Z

    .line 383
    :cond_0
    return-void
.end method

.method public updateLayoutLimitedRefreshRateLocked(Landroid/view/SurfaceControl$RefreshRateRange;)V
    .locals 1
    .param p1, "layoutLimitedRefreshRate"    # Landroid/view/SurfaceControl$RefreshRateRange;

    .line 392
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mLayoutLimitedRefreshRate:Landroid/view/SurfaceControl$RefreshRateRange;

    invoke-static {p1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 393
    iput-object p1, p0, Lcom/android/server/display/LogicalDisplay;->mLayoutLimitedRefreshRate:Landroid/view/SurfaceControl$RefreshRateRange;

    .line 394
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/display/LogicalDisplay;->mDirty:Z

    .line 396
    :cond_0
    return-void
.end method

.method public updateLocked(Lcom/android/server/display/DisplayDeviceRepository;Lcom/android/server/display/mode/SyntheticModeManager;)V
    .locals 13
    .param p1, "deviceRepo"    # Lcom/android/server/display/DisplayDeviceRepository;
    .param p2, "syntheticModeManager"    # Lcom/android/server/display/mode/SyntheticModeManager;

    .line 423
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mPrimaryDisplayDevice:Lcom/android/server/display/DisplayDevice;

    if-nez v0, :cond_0

    .line 424
    return-void

    .line 428
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mPrimaryDisplayDevice:Lcom/android/server/display/DisplayDevice;

    invoke-virtual {p1, v0}, Lcom/android/server/display/DisplayDeviceRepository;->containsLocked(Lcom/android/server/display/DisplayDevice;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 429
    invoke-virtual {p0, v1}, Lcom/android/server/display/LogicalDisplay;->setPrimaryDisplayDeviceLocked(Lcom/android/server/display/DisplayDevice;)Lcom/android/server/display/DisplayDevice;

    .line 430
    return-void

    .line 438
    :cond_1
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mPrimaryDisplayDevice:Lcom/android/server/display/DisplayDevice;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;

    move-result-object v0

    .line 439
    .local v0, "deviceInfo":Lcom/android/server/display/DisplayDeviceInfo;
    iget-object v2, p0, Lcom/android/server/display/LogicalDisplay;->mPrimaryDisplayDevice:Lcom/android/server/display/DisplayDevice;

    invoke-virtual {v2}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceConfig()Lcom/android/server/display/DisplayDeviceConfig;

    move-result-object v2

    .line 440
    .local v2, "config":Lcom/android/server/display/DisplayDeviceConfig;
    iget-object v3, p0, Lcom/android/server/display/LogicalDisplay;->mPrimaryDisplayDeviceInfo:Lcom/android/server/display/DisplayDeviceInfo;

    invoke-static {v3, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Lcom/android/server/display/LogicalDisplay;->mDirty:Z

    if-eqz v3, :cond_1a

    .line 441
    :cond_2
    iget-object v3, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v4, p0, Lcom/android/server/display/LogicalDisplay;->mLayerStack:I

    iput v4, v3, Landroid/view/DisplayInfo;->layerStack:I

    .line 442
    iget-object v3, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    const/4 v4, 0x0

    iput v4, v3, Landroid/view/DisplayInfo;->flags:I

    .line 444
    iget-object v3, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iput v4, v3, Landroid/view/DisplayInfo;->removeMode:I

    .line 445
    iget v3, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    and-int/lit8 v3, v3, 0x8

    const/4 v5, 0x1

    if-eqz v3, :cond_3

    .line 446
    iget-object v3, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v6, v3, Landroid/view/DisplayInfo;->flags:I

    or-int/2addr v6, v5

    iput v6, v3, Landroid/view/DisplayInfo;->flags:I

    .line 448
    :cond_3
    iget v3, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    and-int/lit8 v3, v3, 0x4

    const/4 v6, 0x2

    if-eqz v3, :cond_4

    .line 449
    iget-object v3, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v7, v3, Landroid/view/DisplayInfo;->flags:I

    or-int/2addr v7, v6

    iput v7, v3, Landroid/view/DisplayInfo;->flags:I

    .line 451
    :cond_4
    iget v3, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    and-int/lit8 v3, v3, 0x10

    if-eqz v3, :cond_5

    .line 452
    iget-object v3, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v7, v3, Landroid/view/DisplayInfo;->flags:I

    or-int/lit8 v7, v7, 0x4

    iput v7, v3, Landroid/view/DisplayInfo;->flags:I

    .line 454
    iget-object v3, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iput v5, v3, Landroid/view/DisplayInfo;->removeMode:I

    .line 456
    :cond_5
    iget v3, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    and-int/lit16 v3, v3, 0x400

    if-eqz v3, :cond_6

    .line 457
    iget-object v3, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iput v5, v3, Landroid/view/DisplayInfo;->removeMode:I

    .line 459
    :cond_6
    iget v3, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    and-int/lit8 v3, v3, 0x40

    if-eqz v3, :cond_7

    .line 460
    iget-object v3, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v7, v3, Landroid/view/DisplayInfo;->flags:I

    or-int/lit8 v7, v7, 0x8

    iput v7, v3, Landroid/view/DisplayInfo;->flags:I

    .line 462
    :cond_7
    iget v3, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    and-int/lit16 v3, v3, 0x100

    if-eqz v3, :cond_8

    .line 463
    iget-object v3, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v7, v3, Landroid/view/DisplayInfo;->flags:I

    or-int/lit8 v7, v7, 0x10

    iput v7, v3, Landroid/view/DisplayInfo;->flags:I

    .line 465
    :cond_8
    iget v3, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    and-int/lit16 v3, v3, 0x200

    if-eqz v3, :cond_9

    .line 466
    iget-object v3, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v7, v3, Landroid/view/DisplayInfo;->flags:I

    or-int/lit8 v7, v7, 0x20

    iput v7, v3, Landroid/view/DisplayInfo;->flags:I

    .line 468
    :cond_9
    iget v3, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    and-int/lit16 v3, v3, 0x1000

    if-eqz v3, :cond_a

    .line 469
    iget-object v3, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v7, v3, Landroid/view/DisplayInfo;->flags:I

    or-int/lit8 v7, v7, 0x40

    iput v7, v3, Landroid/view/DisplayInfo;->flags:I

    .line 471
    :cond_a
    iget v3, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    and-int/lit16 v3, v3, 0x2000

    if-eqz v3, :cond_b

    .line 472
    iget-object v3, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v7, v3, Landroid/view/DisplayInfo;->flags:I

    or-int/lit16 v7, v7, 0x80

    iput v7, v3, Landroid/view/DisplayInfo;->flags:I

    .line 474
    :cond_b
    iget v3, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    and-int/lit16 v3, v3, 0x4000

    if-eqz v3, :cond_c

    .line 475
    iget-object v3, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v7, v3, Landroid/view/DisplayInfo;->flags:I

    or-int/lit16 v7, v7, 0x100

    iput v7, v3, Landroid/view/DisplayInfo;->flags:I

    .line 477
    :cond_c
    iget v3, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    const v7, 0x8000

    and-int/2addr v3, v7

    if-eqz v3, :cond_d

    .line 478
    iget-object v3, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v8, v3, Landroid/view/DisplayInfo;->flags:I

    or-int/lit16 v8, v8, 0x200

    iput v8, v3, Landroid/view/DisplayInfo;->flags:I

    .line 480
    :cond_d
    iget v3, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    and-int/2addr v3, v6

    if-eqz v3, :cond_e

    .line 481
    iget-object v3, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v8, v3, Landroid/view/DisplayInfo;->flags:I

    or-int/lit16 v8, v8, 0x4000

    iput v8, v3, Landroid/view/DisplayInfo;->flags:I

    .line 483
    :cond_e
    iget v3, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    const/high16 v8, 0x10000

    and-int/2addr v3, v8

    if-eqz v3, :cond_f

    .line 484
    iget-object v3, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v8, v3, Landroid/view/DisplayInfo;->flags:I

    or-int/lit16 v8, v8, 0x400

    iput v8, v3, Landroid/view/DisplayInfo;->flags:I

    .line 486
    :cond_f
    iget v3, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    const/high16 v8, 0x20000

    and-int/2addr v3, v8

    if-eqz v3, :cond_10

    .line 487
    iget-object v3, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v8, v3, Landroid/view/DisplayInfo;->flags:I

    or-int/lit16 v8, v8, 0x800

    iput v8, v3, Landroid/view/DisplayInfo;->flags:I

    .line 489
    :cond_10
    iget v3, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    const/high16 v8, 0x80000

    and-int/2addr v3, v8

    if-eqz v3, :cond_11

    .line 490
    iget-object v3, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v8, v3, Landroid/view/DisplayInfo;->flags:I

    or-int/lit16 v8, v8, 0x1000

    iput v8, v3, Landroid/view/DisplayInfo;->flags:I

    .line 493
    :cond_11
    iget v3, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    const/high16 v8, 0x100000

    and-int/2addr v3, v8

    if-eqz v3, :cond_12

    iget v3, p0, Lcom/android/server/display/LogicalDisplay;->mDevicePosition:I

    if-eq v3, v5, :cond_12

    .line 495
    iget-object v3, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v8, v3, Landroid/view/DisplayInfo;->flags:I

    or-int/2addr v7, v8

    iput v7, v3, Landroid/view/DisplayInfo;->flags:I

    .line 497
    :cond_12
    invoke-static {v0}, Lcom/android/server/display/LogicalDisplay;->getMaskingInsets(Lcom/android/server/display/DisplayDeviceInfo;)Landroid/graphics/Rect;

    move-result-object v3

    .line 498
    .local v3, "maskingInsets":Landroid/graphics/Rect;
    iget v7, v0, Lcom/android/server/display/DisplayDeviceInfo;->width:I

    iget v8, v3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v7, v8

    iget v8, v3, Landroid/graphics/Rect;->right:I

    sub-int/2addr v7, v8

    .line 499
    .local v7, "maskedWidth":I
    iget v8, v0, Lcom/android/server/display/DisplayDeviceInfo;->height:I

    iget v9, v3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v8, v9

    iget v9, v3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v8, v9

    .line 501
    .local v8, "maskedHeight":I
    iget-boolean v9, p0, Lcom/android/server/display/LogicalDisplay;->mIsAnisotropyCorrectionEnabled:Z

    if-eqz v9, :cond_14

    iget v9, v0, Lcom/android/server/display/DisplayDeviceInfo;->type:I

    if-ne v9, v6, :cond_14

    iget v6, v0, Lcom/android/server/display/DisplayDeviceInfo;->xDpi:F

    const/4 v9, 0x0

    cmpl-float v6, v6, v9

    if-lez v6, :cond_14

    iget v6, v0, Lcom/android/server/display/DisplayDeviceInfo;->yDpi:F

    cmpl-float v6, v6, v9

    if-lez v6, :cond_14

    .line 503
    iget v6, v0, Lcom/android/server/display/DisplayDeviceInfo;->xDpi:F

    iget v9, v0, Lcom/android/server/display/DisplayDeviceInfo;->yDpi:F

    const v10, 0x3f833333    # 1.025f

    mul-float/2addr v9, v10

    cmpl-float v6, v6, v9

    const-wide/high16 v11, 0x3fe0000000000000L    # 0.5

    if-lez v6, :cond_13

    .line 504
    int-to-float v6, v8

    iget v9, v0, Lcom/android/server/display/DisplayDeviceInfo;->xDpi:F

    mul-float/2addr v6, v9

    iget v9, v0, Lcom/android/server/display/DisplayDeviceInfo;->yDpi:F

    div-float/2addr v6, v9

    float-to-double v9, v6

    add-double/2addr v9, v11

    double-to-int v8, v9

    goto :goto_0

    .line 505
    :cond_13
    iget v6, v0, Lcom/android/server/display/DisplayDeviceInfo;->xDpi:F

    mul-float/2addr v6, v10

    iget v9, v0, Lcom/android/server/display/DisplayDeviceInfo;->yDpi:F

    cmpg-float v6, v6, v9

    if-gez v6, :cond_14

    .line 506
    int-to-float v6, v7

    iget v9, v0, Lcom/android/server/display/DisplayDeviceInfo;->yDpi:F

    mul-float/2addr v6, v9

    iget v9, v0, Lcom/android/server/display/DisplayDeviceInfo;->xDpi:F

    div-float/2addr v6, v9

    float-to-double v9, v6

    add-double/2addr v9, v11

    double-to-int v7, v9

    .line 510
    :cond_14
    :goto_0
    iget-object v6, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v9, v0, Lcom/android/server/display/DisplayDeviceInfo;->type:I

    iput v9, v6, Landroid/view/DisplayInfo;->type:I

    .line 511
    iget-object v6, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v9, v0, Lcom/android/server/display/DisplayDeviceInfo;->address:Landroid/view/DisplayAddress;

    iput-object v9, v6, Landroid/view/DisplayInfo;->address:Landroid/view/DisplayAddress;

    .line 512
    iget-object v6, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v9, v0, Lcom/android/server/display/DisplayDeviceInfo;->deviceProductInfo:Landroid/hardware/display/DeviceProductInfo;

    iput-object v9, v6, Landroid/view/DisplayInfo;->deviceProductInfo:Landroid/hardware/display/DeviceProductInfo;

    .line 513
    iget-object v6, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v9, v0, Lcom/android/server/display/DisplayDeviceInfo;->name:Ljava/lang/String;

    iput-object v9, v6, Landroid/view/DisplayInfo;->name:Ljava/lang/String;

    .line 514
    iget-object v6, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v9, v0, Lcom/android/server/display/DisplayDeviceInfo;->uniqueId:Ljava/lang/String;

    iput-object v9, v6, Landroid/view/DisplayInfo;->uniqueId:Ljava/lang/String;

    .line 515
    iget-object v6, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iput v7, v6, Landroid/view/DisplayInfo;->appWidth:I

    .line 516
    iget-object v6, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iput v8, v6, Landroid/view/DisplayInfo;->appHeight:I

    .line 517
    iget-object v6, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iput v7, v6, Landroid/view/DisplayInfo;->logicalWidth:I

    .line 518
    iget-object v6, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iput v8, v6, Landroid/view/DisplayInfo;->logicalHeight:I

    .line 519
    iget-object v6, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iput v4, v6, Landroid/view/DisplayInfo;->rotation:I

    .line 520
    iget-object v6, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v9, v0, Lcom/android/server/display/DisplayDeviceInfo;->modeId:I

    iput v9, v6, Landroid/view/DisplayInfo;->modeId:I

    .line 521
    iget-object v6, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v9, v0, Lcom/android/server/display/DisplayDeviceInfo;->renderFrameRate:F

    iput v9, v6, Landroid/view/DisplayInfo;->renderFrameRate:F

    .line 522
    iget-object v6, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget-boolean v9, v0, Lcom/android/server/display/DisplayDeviceInfo;->hasArrSupport:Z

    iput-boolean v9, v6, Landroid/view/DisplayInfo;->hasArrSupport:Z

    .line 523
    iget-object v6, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v9, v0, Lcom/android/server/display/DisplayDeviceInfo;->frameRateCategoryRate:Landroid/view/FrameRateCategoryRate;

    iput-object v9, v6, Landroid/view/DisplayInfo;->frameRateCategoryRate:Landroid/view/FrameRateCategoryRate;

    .line 524
    iget-object v6, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v9, v0, Lcom/android/server/display/DisplayDeviceInfo;->supportedRefreshRates:[F

    iget-object v10, v0, Lcom/android/server/display/DisplayDeviceInfo;->supportedRefreshRates:[F

    array-length v10, v10

    invoke-static {v9, v10}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v9

    iput-object v9, v6, Landroid/view/DisplayInfo;->supportedRefreshRates:[F

    .line 526
    iget-object v6, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v9, v0, Lcom/android/server/display/DisplayDeviceInfo;->defaultModeId:I

    iput v9, v6, Landroid/view/DisplayInfo;->defaultModeId:I

    .line 527
    iget-object v6, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v9, v0, Lcom/android/server/display/DisplayDeviceInfo;->userPreferredModeId:I

    iput v9, v6, Landroid/view/DisplayInfo;->userPreferredModeId:I

    .line 528
    iget-object v6, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v9, v0, Lcom/android/server/display/DisplayDeviceInfo;->supportedModes:[Landroid/view/Display$Mode;

    iget-object v10, v0, Lcom/android/server/display/DisplayDeviceInfo;->supportedModes:[Landroid/view/Display$Mode;

    array-length v10, v10

    invoke-static {v9, v10}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Landroid/view/Display$Mode;

    iput-object v9, v6, Landroid/view/DisplayInfo;->supportedModes:[Landroid/view/Display$Mode;

    .line 530
    iget-object v6, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v9, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v9, v9, Landroid/view/DisplayInfo;->supportedModes:[Landroid/view/Display$Mode;

    iget-object v10, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget-boolean v10, v10, Landroid/view/DisplayInfo;->hasArrSupport:Z

    invoke-virtual {p2, v2, v9, v10}, Lcom/android/server/display/mode/SyntheticModeManager;->createAppSupportedModes(Lcom/android/server/display/DisplayDeviceConfig;[Landroid/view/Display$Mode;Z)[Landroid/view/Display$Mode;

    move-result-object v9

    iput-object v9, v6, Landroid/view/DisplayInfo;->appsSupportedModes:[Landroid/view/Display$Mode;

    .line 533
    iget-object v6, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v9, v0, Lcom/android/server/display/DisplayDeviceInfo;->colorMode:I

    iput v9, v6, Landroid/view/DisplayInfo;->colorMode:I

    .line 534
    iget-object v6, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v9, v0, Lcom/android/server/display/DisplayDeviceInfo;->supportedColorModes:[I

    iget-object v10, v0, Lcom/android/server/display/DisplayDeviceInfo;->supportedColorModes:[I

    array-length v10, v10

    invoke-static {v9, v10}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v9

    iput-object v9, v6, Landroid/view/DisplayInfo;->supportedColorModes:[I

    .line 537
    iget-object v6, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v9, v0, Lcom/android/server/display/DisplayDeviceInfo;->hdrCapabilities:Landroid/view/Display$HdrCapabilities;

    iput-object v9, v6, Landroid/view/DisplayInfo;->hdrCapabilities:Landroid/view/Display$HdrCapabilities;

    .line 538
    iget-object v6, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget-boolean v9, v0, Lcom/android/server/display/DisplayDeviceInfo;->isForceSdr:Z

    iput-boolean v9, v6, Landroid/view/DisplayInfo;->isForceSdr:Z

    .line 539
    iget-object v6, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v9, p0, Lcom/android/server/display/LogicalDisplay;->mUserDisabledHdrTypes:[I

    iput-object v9, v6, Landroid/view/DisplayInfo;->userDisabledHdrTypes:[I

    .line 540
    iget-object v6, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget-boolean v9, v0, Lcom/android/server/display/DisplayDeviceInfo;->allmSupported:Z

    if-nez v9, :cond_15

    iget-boolean v9, v0, Lcom/android/server/display/DisplayDeviceInfo;->gameContentTypeSupported:Z

    if-eqz v9, :cond_16

    :cond_15
    goto :goto_1

    :cond_16
    move v9, v4

    goto :goto_2

    :goto_1
    move v9, v5

    :goto_2
    iput-boolean v9, v6, Landroid/view/DisplayInfo;->minimalPostProcessingSupported:Z

    .line 542
    iget-object v6, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v9, v0, Lcom/android/server/display/DisplayDeviceInfo;->densityDpi:I

    iput v9, v6, Landroid/view/DisplayInfo;->logicalDensityDpi:I

    .line 543
    iget-object v6, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v9, v0, Lcom/android/server/display/DisplayDeviceInfo;->xDpi:F

    iput v9, v6, Landroid/view/DisplayInfo;->physicalXDpi:F

    .line 544
    iget-object v6, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v9, v0, Lcom/android/server/display/DisplayDeviceInfo;->yDpi:F

    iput v9, v6, Landroid/view/DisplayInfo;->physicalYDpi:F

    .line 545
    iget-object v6, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget-wide v9, v0, Lcom/android/server/display/DisplayDeviceInfo;->appVsyncOffsetNanos:J

    iput-wide v9, v6, Landroid/view/DisplayInfo;->appVsyncOffsetNanos:J

    .line 546
    iget-object v6, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget-wide v9, v0, Lcom/android/server/display/DisplayDeviceInfo;->presentationDeadlineNanos:J

    iput-wide v9, v6, Landroid/view/DisplayInfo;->presentationDeadlineNanos:J

    .line 547
    iget-object v6, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v9, v0, Lcom/android/server/display/DisplayDeviceInfo;->state:I

    iput v9, v6, Landroid/view/DisplayInfo;->state:I

    .line 548
    iget-object v6, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v9, v0, Lcom/android/server/display/DisplayDeviceInfo;->committedState:I

    iput v9, v6, Landroid/view/DisplayInfo;->committedState:I

    .line 549
    iget-object v6, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iput v7, v6, Landroid/view/DisplayInfo;->smallestNominalAppWidth:I

    .line 550
    iget-object v6, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iput v8, v6, Landroid/view/DisplayInfo;->smallestNominalAppHeight:I

    .line 551
    iget-object v6, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iput v7, v6, Landroid/view/DisplayInfo;->largestNominalAppWidth:I

    .line 552
    iget-object v6, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iput v8, v6, Landroid/view/DisplayInfo;->largestNominalAppHeight:I

    .line 553
    iget-object v6, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v9, v0, Lcom/android/server/display/DisplayDeviceInfo;->ownerUid:I

    iput v9, v6, Landroid/view/DisplayInfo;->ownerUid:I

    .line 554
    iget-object v6, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v9, v0, Lcom/android/server/display/DisplayDeviceInfo;->ownerPackageName:Ljava/lang/String;

    iput-object v9, v6, Landroid/view/DisplayInfo;->ownerPackageName:Ljava/lang/String;

    .line 555
    iget v6, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    and-int/lit16 v6, v6, 0x800

    if-eqz v6, :cond_17

    move v6, v5

    goto :goto_3

    :cond_17
    move v6, v4

    .line 557
    .local v6, "maskCutout":Z
    :goto_3
    iget-object v9, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    if-eqz v6, :cond_18

    move-object v10, v1

    goto :goto_4

    :cond_18
    iget-object v10, v0, Lcom/android/server/display/DisplayDeviceInfo;->displayCutout:Landroid/view/DisplayCutout;

    :goto_4
    iput-object v10, v9, Landroid/view/DisplayInfo;->displayCutout:Landroid/view/DisplayCutout;

    .line 558
    iget-object v9, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v10, p0, Lcom/android/server/display/LogicalDisplay;->mDisplayId:I

    iput v10, v9, Landroid/view/DisplayInfo;->displayId:I

    .line 559
    iget-object v9, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v10, p0, Lcom/android/server/display/LogicalDisplay;->mDisplayGroupId:I

    iput v10, v9, Landroid/view/DisplayInfo;->displayGroupId:I

    .line 560
    invoke-direct {p0, v0}, Lcom/android/server/display/LogicalDisplay;->updateFrameRateOverrides(Lcom/android/server/display/DisplayDeviceInfo;)V

    .line 561
    iget-object v9, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v10, v0, Lcom/android/server/display/DisplayDeviceInfo;->brightnessMinimum:F

    iput v10, v9, Landroid/view/DisplayInfo;->brightnessMinimum:F

    .line 562
    iget-object v9, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v10, v0, Lcom/android/server/display/DisplayDeviceInfo;->brightnessMaximum:F

    iput v10, v9, Landroid/view/DisplayInfo;->brightnessMaximum:F

    .line 563
    iget-object v9, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v10, v0, Lcom/android/server/display/DisplayDeviceInfo;->brightnessDefault:F

    iput v10, v9, Landroid/view/DisplayInfo;->brightnessDefault:F

    .line 564
    iget-object v9, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v10, v0, Lcom/android/server/display/DisplayDeviceInfo;->brightnessDim:F

    iput v10, v9, Landroid/view/DisplayInfo;->brightnessDim:F

    .line 565
    iget-object v9, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v10, v0, Lcom/android/server/display/DisplayDeviceInfo;->hdrSdrRatio:F

    iput v10, v9, Landroid/view/DisplayInfo;->hdrSdrRatio:F

    .line 566
    iget-object v9, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v10, v0, Lcom/android/server/display/DisplayDeviceInfo;->roundedCorners:Landroid/view/RoundedCorners;

    iput-object v10, v9, Landroid/view/DisplayInfo;->roundedCorners:Landroid/view/RoundedCorners;

    .line 567
    iget-object v9, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v10, v0, Lcom/android/server/display/DisplayDeviceInfo;->installOrientation:I

    iput v10, v9, Landroid/view/DisplayInfo;->installOrientation:I

    .line 568
    iget-object v9, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v10, v0, Lcom/android/server/display/DisplayDeviceInfo;->displayShape:Landroid/view/DisplayShape;

    iput-object v10, v9, Landroid/view/DisplayInfo;->displayShape:Landroid/view/DisplayShape;

    .line 570
    iget v9, p0, Lcom/android/server/display/LogicalDisplay;->mDevicePosition:I

    if-ne v9, v5, :cond_19

    .line 576
    iget-object v9, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v10, v9, Landroid/view/DisplayInfo;->flags:I

    or-int/lit16 v10, v10, 0x2000

    iput v10, v9, Landroid/view/DisplayInfo;->flags:I

    .line 577
    iget-object v9, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v10, v9, Landroid/view/DisplayInfo;->flags:I

    or-int/lit8 v10, v10, 0x8

    iput v10, v9, Landroid/view/DisplayInfo;->flags:I

    .line 578
    iget-object v9, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iput v5, v9, Landroid/view/DisplayInfo;->removeMode:I

    .line 581
    :cond_19
    iget-object v5, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v9, p0, Lcom/android/server/display/LogicalDisplay;->mLayoutLimitedRefreshRate:Landroid/view/SurfaceControl$RefreshRateRange;

    iput-object v9, v5, Landroid/view/DisplayInfo;->layoutLimitedRefreshRate:Landroid/view/SurfaceControl$RefreshRateRange;

    .line 582
    iget-object v5, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v9, p0, Lcom/android/server/display/LogicalDisplay;->mThermalRefreshRateThrottling:Landroid/util/SparseArray;

    iput-object v9, v5, Landroid/view/DisplayInfo;->thermalRefreshRateThrottling:Landroid/util/SparseArray;

    .line 583
    iget-object v5, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v9, p0, Lcom/android/server/display/LogicalDisplay;->mThermalBrightnessThrottlingDataId:Ljava/lang/String;

    iput-object v9, v5, Landroid/view/DisplayInfo;->thermalBrightnessThrottlingDataId:Ljava/lang/String;

    .line 584
    iget-object v5, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget-boolean v9, p0, Lcom/android/server/display/LogicalDisplay;->mCanHostTasks:Z

    iput-boolean v9, v5, Landroid/view/DisplayInfo;->canHostTasks:Z

    .line 586
    iput-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mPrimaryDisplayDeviceInfo:Lcom/android/server/display/DisplayDeviceInfo;

    .line 587
    iget-object v5, p0, Lcom/android/server/display/LogicalDisplay;->mInfo:Lcom/android/server/display/DisplayInfoProxy;

    invoke-virtual {v5, v1}, Lcom/android/server/display/DisplayInfoProxy;->set(Landroid/view/DisplayInfo;)V

    .line 588
    iput-boolean v4, p0, Lcom/android/server/display/LogicalDisplay;->mDirty:Z

    .line 590
    .end local v3    # "maskingInsets":Landroid/graphics/Rect;
    .end local v6    # "maskCutout":Z
    .end local v7    # "maskedWidth":I
    .end local v8    # "maskedHeight":I
    :cond_1a
    return-void
.end method

.method public updateThermalRefreshRateThrottling(Landroid/util/SparseArray;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/view/SurfaceControl$RefreshRateRange;",
            ">;)V"
        }
    .end annotation

    .line 404
    .local p1, "refreshRanges":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/view/SurfaceControl$RefreshRateRange;>;"
    if-nez p1, :cond_0

    .line 405
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    move-object p1, v0

    .line 407
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mThermalRefreshRateThrottling:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->contentEquals(Landroid/util/SparseArray;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 408
    iput-object p1, p0, Lcom/android/server/display/LogicalDisplay;->mThermalRefreshRateThrottling:Landroid/util/SparseArray;

    .line 409
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/display/LogicalDisplay;->mDirty:Z

    .line 411
    :cond_1
    return-void
.end method
