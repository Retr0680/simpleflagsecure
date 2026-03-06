.class Lcom/android/server/display/LogicalDisplayMapper;
.super Ljava/lang/Object;
.source "LogicalDisplayMapper.java"

# interfaces
.implements Lcom/android/server/display/DisplayDeviceRepository$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/LogicalDisplayMapper$Listener;,
        Lcom/android/server/display/LogicalDisplayMapper$LogicalDisplayMapperHandler;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field public static final DISPLAY_GROUP_EVENT_ADDED:I = 0x1

.field public static final DISPLAY_GROUP_EVENT_CHANGED:I = 0x2

.field public static final DISPLAY_GROUP_EVENT_REMOVED:I = 0x3

.field public static final LOGICAL_DISPLAY_EVENT_ADDED:I = 0x1

.field public static final LOGICAL_DISPLAY_EVENT_BASE:I = 0x0

.field public static final LOGICAL_DISPLAY_EVENT_BASIC_CHANGED:I = 0x2

.field public static final LOGICAL_DISPLAY_EVENT_COMMITTED_STATE_CHANGED:I = 0x800

.field public static final LOGICAL_DISPLAY_EVENT_CONNECTED:I = 0x80

.field public static final LOGICAL_DISPLAY_EVENT_DEVICE_STATE_TRANSITION:I = 0x20

.field public static final LOGICAL_DISPLAY_EVENT_DISCONNECTED:I = 0x100

.field public static final LOGICAL_DISPLAY_EVENT_FRAME_RATE_OVERRIDES_CHANGED:I = 0x10

.field public static final LOGICAL_DISPLAY_EVENT_HDR_SDR_RATIO_CHANGED:I = 0x40

.field public static final LOGICAL_DISPLAY_EVENT_REFRESH_RATE_CHANGED:I = 0x200

.field public static final LOGICAL_DISPLAY_EVENT_REMOVED:I = 0x4

.field public static final LOGICAL_DISPLAY_EVENT_STATE_CHANGED:I = 0x400

.field public static final LOGICAL_DISPLAY_EVENT_SWAPPED:I = 0x8

.field private static final MSG_TRANSITION_TO_PENDING_DEVICE_STATE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "LogicalDisplayMapper"

.field private static final TIMEOUT_STATE_TRANSITION_MILLIS:I = 0x1f4

.field private static final UPDATE_STATE_NEW:I = 0x0

.field private static final UPDATE_STATE_TRANSITION:I = 0x1

.field private static final UPDATE_STATE_UPDATED:I = 0x2

.field private static sNextNonDefaultDisplayId:I


# instance fields
.field private mBootCompleted:Z

.field private mCurrentLayout:Lcom/android/server/display/layout/Layout;

.field private final mDeviceDisplayGroupIds:Landroid/util/SparseIntArray;

.field private mDeviceState:Landroid/hardware/devicestate/DeviceState;

.field private final mDeviceStateManagerFlags:Lcom/android/internal/hidden_from_bootclasspath/android/hardware/devicestate/feature/flags/FeatureFlags;

.field private mDeviceStateToBeAppliedAfterBoot:Landroid/hardware/devicestate/DeviceState;

.field private final mDeviceStateToLayoutMap:Lcom/android/server/display/DeviceStateToLayoutMap;

.field private final mDeviceStatesOnWhichToSelectiveSleep:Landroid/util/SparseBooleanArray;

.field private final mDeviceStatesOnWhichToWakeUp:Landroid/util/SparseBooleanArray;

.field private final mDisplayDeviceRepo:Lcom/android/server/display/DisplayDeviceRepository;

.field private final mDisplayGroupIdsByName:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mDisplayGroups:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/display/DisplayGroup;",
            ">;"
        }
    .end annotation
.end field

.field private final mDisplayGroupsToUpdate:Landroid/util/SparseIntArray;

.field private final mDisplaysEnabledCache:Landroid/util/SparseBooleanArray;

.field private final mFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

.field private final mFoldGracePeriodProvider:Lcom/android/internal/foldables/FoldGracePeriodProvider;

.field private final mFoldSettingProvider:Lcom/android/server/utils/FoldSettingProvider;

.field private final mHandler:Lcom/android/server/display/LogicalDisplayMapper$LogicalDisplayMapperHandler;

.field private final mIdProducer:Lcom/android/server/display/layout/DisplayIdProducer;

.field private mInteractive:Z

.field private final mListener:Lcom/android/server/display/LogicalDisplayMapper$Listener;

.field private final mLogicalDisplays:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/display/LogicalDisplay;",
            ">;"
        }
    .end annotation
.end field

.field private final mLogicalDisplaysToUpdate:Landroid/util/SparseIntArray;

.field private mNextBuiltInDisplayId:I

.field private mNextNonDefaultGroupId:I

.field private mPendingDeviceState:Landroid/hardware/devicestate/DeviceState;

.field private final mPowerManager:Landroid/os/PowerManager;

.field private final mSingleDisplayDemoMode:Z

.field private final mSupportsConcurrentInternalDisplays:Z

.field private final mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

.field private final mSyntheticModeManager:Lcom/android/server/display/mode/SyntheticModeManager;

.field private final mTempDisplayInfo:Landroid/view/DisplayInfo;

.field private final mTempNonOverrideDisplayInfo:Landroid/view/DisplayInfo;

.field private final mUpdatedDisplayGroups:Landroid/util/SparseIntArray;

.field private final mUpdatedLogicalDisplays:Landroid/util/SparseIntArray;

.field private final mVirtualDeviceDisplayMapping:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mWindowManagerPolicy:Lcom/android/server/policy/WindowManagerPolicy;


# direct methods
.method public static synthetic $r8$lambda$180v0r73SgWuHOXH9KeuIhm0OfE(Z)I
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/server/display/LogicalDisplayMapper;->lambda$new$1(Z)I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$CLkgta2MkaptkxpiszN50MW0yV0(Z)I
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/server/display/LogicalDisplayMapper;->lambda$new$0(Z)I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$N8BYO3VRk9SxOshZBRw21dnZJC8(Lcom/android/server/display/LogicalDisplayMapper;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/display/LogicalDisplayMapper;->lambda$setDeviceStateLocked$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$ltxpdCphLYKBtSHlpUiAJoWLQCA(Lcom/android/server/display/LogicalDisplayMapper;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/display/LogicalDisplayMapper;->lambda$setDeviceStateLocked$3(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmSyncRoot(Lcom/android/server/display/LogicalDisplayMapper;)Lcom/android/server/display/DisplayManagerService$SyncRoot;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mfinishStateTransitionLocked(Lcom/android/server/display/LogicalDisplayMapper;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/display/LogicalDisplayMapper;->finishStateTransitionLocked(Z)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 81
    const-string v0, "LogicalDisplayMapper"

    invoke-static {v0}, Lcom/android/server/display/utils/DebugUtils;->isDebuggable(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/display/LogicalDisplayMapper;->DEBUG:Z

    .line 110
    const/4 v0, 0x1

    sput v0, Lcom/android/server/display/LogicalDisplayMapper;->sNextNonDefaultDisplayId:I

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/server/utils/FoldSettingProvider;Lcom/android/internal/foldables/FoldGracePeriodProvider;Lcom/android/server/display/DisplayDeviceRepository;Lcom/android/server/display/LogicalDisplayMapper$Listener;Lcom/android/server/display/DisplayManagerService$SyncRoot;Landroid/os/Handler;Lcom/android/server/display/DeviceStateToLayoutMap;Lcom/android/server/display/feature/DisplayManagerFlags;Lcom/android/server/display/mode/SyntheticModeManager;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "foldSettingProvider"    # Lcom/android/server/utils/FoldSettingProvider;
    .param p3, "foldGracePeriodProvider"    # Lcom/android/internal/foldables/FoldGracePeriodProvider;
    .param p4, "repo"    # Lcom/android/server/display/DisplayDeviceRepository;
    .param p5, "listener"    # Lcom/android/server/display/LogicalDisplayMapper$Listener;
    .param p6, "syncRoot"    # Lcom/android/server/display/DisplayManagerService$SyncRoot;
    .param p7, "handler"    # Landroid/os/Handler;
    .param p8, "deviceStateToLayoutMap"    # Lcom/android/server/display/DeviceStateToLayoutMap;
    .param p9, "flags"    # Lcom/android/server/display/feature/DisplayManagerFlags;
    .param p10, "syntheticModeManager"    # Lcom/android/server/display/mode/SyntheticModeManager;

    .line 239
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    new-instance v0, Landroid/view/DisplayInfo;

    invoke-direct {v0}, Landroid/view/DisplayInfo;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mTempDisplayInfo:Landroid/view/DisplayInfo;

    .line 116
    new-instance v0, Landroid/view/DisplayInfo;

    invoke-direct {v0}, Landroid/view/DisplayInfo;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mTempNonOverrideDisplayInfo:Landroid/view/DisplayInfo;

    .line 147
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mLogicalDisplays:Landroid/util/SparseArray;

    .line 149
    const/16 v0, 0x1000

    iput v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mNextBuiltInDisplayId:I

    .line 152
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDisplaysEnabledCache:Landroid/util/SparseBooleanArray;

    .line 155
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDisplayGroups:Landroid/util/SparseArray;

    .line 161
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDeviceDisplayGroupIds:Landroid/util/SparseIntArray;

    .line 166
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDisplayGroupIdsByName:Landroid/util/ArrayMap;

    .line 181
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mUpdatedLogicalDisplays:Landroid/util/SparseIntArray;

    .line 190
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mUpdatedDisplayGroups:Landroid/util/SparseIntArray;

    .line 195
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mLogicalDisplaysToUpdate:Landroid/util/SparseIntArray;

    .line 200
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDisplayGroupsToUpdate:Landroid/util/SparseIntArray;

    .line 206
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mVirtualDeviceDisplayMapping:Landroid/util/ArrayMap;

    .line 209
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mNextNonDefaultGroupId:I

    .line 210
    new-instance v0, Lcom/android/server/display/LogicalDisplayMapper$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/android/server/display/LogicalDisplayMapper$$ExternalSyntheticLambda2;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mIdProducer:Lcom/android/server/display/layout/DisplayIdProducer;

    .line 212
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mCurrentLayout:Lcom/android/server/display/layout/Layout;

    .line 213
    sget-object v0, Landroid/hardware/devicestate/DeviceStateManager;->INVALID_DEVICE_STATE:Landroid/hardware/devicestate/DeviceState;

    iput-object v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDeviceState:Landroid/hardware/devicestate/DeviceState;

    .line 214
    sget-object v0, Landroid/hardware/devicestate/DeviceStateManager;->INVALID_DEVICE_STATE:Landroid/hardware/devicestate/DeviceState;

    iput-object v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mPendingDeviceState:Landroid/hardware/devicestate/DeviceState;

    .line 215
    sget-object v0, Landroid/hardware/devicestate/DeviceStateManager;->INVALID_DEVICE_STATE:Landroid/hardware/devicestate/DeviceState;

    iput-object v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDeviceStateToBeAppliedAfterBoot:Landroid/hardware/devicestate/DeviceState;

    .line 216
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mBootCompleted:Z

    .line 240
    iput-object p6, p0, Lcom/android/server/display/LogicalDisplayMapper;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    .line 241
    const-class v1, Landroid/os/PowerManager;

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    iput-object v1, p0, Lcom/android/server/display/LogicalDisplayMapper;->mPowerManager:Landroid/os/PowerManager;

    .line 242
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplayMapper;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v1}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/display/LogicalDisplayMapper;->mInteractive:Z

    .line 243
    new-instance v1, Lcom/android/server/display/LogicalDisplayMapper$LogicalDisplayMapperHandler;

    invoke-virtual {p7}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/server/display/LogicalDisplayMapper$LogicalDisplayMapperHandler;-><init>(Lcom/android/server/display/LogicalDisplayMapper;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/display/LogicalDisplayMapper;->mHandler:Lcom/android/server/display/LogicalDisplayMapper$LogicalDisplayMapperHandler;

    .line 244
    iput-object p4, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDisplayDeviceRepo:Lcom/android/server/display/DisplayDeviceRepository;

    .line 245
    iput-object p5, p0, Lcom/android/server/display/LogicalDisplayMapper;->mListener:Lcom/android/server/display/LogicalDisplayMapper$Listener;

    .line 246
    iput-object p2, p0, Lcom/android/server/display/LogicalDisplayMapper;->mFoldSettingProvider:Lcom/android/server/utils/FoldSettingProvider;

    .line 247
    iput-object p3, p0, Lcom/android/server/display/LogicalDisplayMapper;->mFoldGracePeriodProvider:Lcom/android/internal/foldables/FoldGracePeriodProvider;

    .line 248
    const-string/jumbo v1, "persist.demo.singledisplay"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mSingleDisplayDemoMode:Z

    .line 249
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x111026b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mSupportsConcurrentInternalDisplays:Z

    .line 251
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1070048

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/display/LogicalDisplayMapper;->toSparseBooleanArray([I)Landroid/util/SparseBooleanArray;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDeviceStatesOnWhichToWakeUp:Landroid/util/SparseBooleanArray;

    .line 253
    nop

    .line 254
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1070047

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    .line 253
    invoke-direct {p0, v0}, Lcom/android/server/display/LogicalDisplayMapper;->toSparseBooleanArray([I)Landroid/util/SparseBooleanArray;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDeviceStatesOnWhichToSelectiveSleep:Landroid/util/SparseBooleanArray;

    .line 256
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDisplayDeviceRepo:Lcom/android/server/display/DisplayDeviceRepository;

    invoke-virtual {v0, p0}, Lcom/android/server/display/DisplayDeviceRepository;->addListener(Lcom/android/server/display/DisplayDeviceRepository$Listener;)V

    .line 257
    iput-object p8, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDeviceStateToLayoutMap:Lcom/android/server/display/DeviceStateToLayoutMap;

    .line 258
    iput-object p9, p0, Lcom/android/server/display/LogicalDisplayMapper;->mFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

    .line 259
    iput-object p10, p0, Lcom/android/server/display/LogicalDisplayMapper;->mSyntheticModeManager:Lcom/android/server/display/mode/SyntheticModeManager;

    .line 260
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/hardware/devicestate/feature/flags/FeatureFlagsImpl;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/hardware/devicestate/feature/flags/FeatureFlagsImpl;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDeviceStateManagerFlags:Lcom/android/internal/hidden_from_bootclasspath/android/hardware/devicestate/feature/flags/FeatureFlags;

    .line 261
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/server/utils/FoldSettingProvider;Lcom/android/internal/foldables/FoldGracePeriodProvider;Lcom/android/server/display/DisplayDeviceRepository;Lcom/android/server/display/LogicalDisplayMapper$Listener;Lcom/android/server/display/DisplayManagerService$SyncRoot;Landroid/os/Handler;Lcom/android/server/display/feature/DisplayManagerFlags;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "foldSettingProvider"    # Lcom/android/server/utils/FoldSettingProvider;
    .param p3, "foldGracePeriodProvider"    # Lcom/android/internal/foldables/FoldGracePeriodProvider;
    .param p4, "repo"    # Lcom/android/server/display/DisplayDeviceRepository;
    .param p5, "listener"    # Lcom/android/server/display/LogicalDisplayMapper$Listener;
    .param p6, "syncRoot"    # Lcom/android/server/display/DisplayManagerService$SyncRoot;
    .param p7, "handler"    # Landroid/os/Handler;
    .param p8, "flags"    # Lcom/android/server/display/feature/DisplayManagerFlags;

    .line 227
    move-object/from16 v9, p8

    new-instance v8, Lcom/android/server/display/DeviceStateToLayoutMap;

    new-instance v0, Lcom/android/server/display/LogicalDisplayMapper$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Lcom/android/server/display/LogicalDisplayMapper$$ExternalSyntheticLambda3;-><init>()V

    invoke-direct {v8, v0, v9}, Lcom/android/server/display/DeviceStateToLayoutMap;-><init>(Lcom/android/server/display/layout/DisplayIdProducer;Lcom/android/server/display/feature/DisplayManagerFlags;)V

    new-instance v10, Lcom/android/server/display/mode/SyntheticModeManager;

    invoke-direct {v10, v9}, Lcom/android/server/display/mode/SyntheticModeManager;-><init>(Lcom/android/server/display/feature/DisplayManagerFlags;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    invoke-direct/range {v0 .. v10}, Lcom/android/server/display/LogicalDisplayMapper;-><init>(Landroid/content/Context;Lcom/android/server/utils/FoldSettingProvider;Lcom/android/internal/foldables/FoldGracePeriodProvider;Lcom/android/server/display/DisplayDeviceRepository;Lcom/android/server/display/LogicalDisplayMapper$Listener;Lcom/android/server/display/DisplayManagerService$SyncRoot;Landroid/os/Handler;Lcom/android/server/display/DeviceStateToLayoutMap;Lcom/android/server/display/feature/DisplayManagerFlags;Lcom/android/server/display/mode/SyntheticModeManager;)V

    .line 232
    return-void
.end method

.method private applyLayoutLocked()V
    .locals 14

    .line 1200
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mCurrentLayout:Lcom/android/server/display/layout/Layout;

    .line 1201
    .local v0, "oldLayout":Lcom/android/server/display/layout/Layout;
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDeviceStateToLayoutMap:Lcom/android/server/display/DeviceStateToLayoutMap;

    iget-object v2, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDeviceState:Landroid/hardware/devicestate/DeviceState;

    invoke-virtual {v2}, Landroid/hardware/devicestate/DeviceState;->getIdentifier()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/server/display/DeviceStateToLayoutMap;->get(I)Lcom/android/server/display/layout/Layout;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/display/LogicalDisplayMapper;->mCurrentLayout:Lcom/android/server/display/layout/Layout;

    .line 1202
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Applying layout: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/display/LogicalDisplayMapper;->mCurrentLayout:Lcom/android/server/display/layout/Layout;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", Previous layout: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "LogicalDisplayMapper"

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1205
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplayMapper;->mCurrentLayout:Lcom/android/server/display/layout/Layout;

    invoke-virtual {v1}, Lcom/android/server/display/layout/Layout;->size()I

    move-result v1

    .line 1206
    .local v1, "size":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_6

    .line 1207
    iget-object v4, p0, Lcom/android/server/display/LogicalDisplayMapper;->mCurrentLayout:Lcom/android/server/display/layout/Layout;

    invoke-virtual {v4, v3}, Lcom/android/server/display/layout/Layout;->getAt(I)Lcom/android/server/display/layout/Layout$Display;

    move-result-object v4

    .line 1213
    .local v4, "displayLayout":Lcom/android/server/display/layout/Layout$Display;
    invoke-virtual {v4}, Lcom/android/server/display/layout/Layout$Display;->getAddress()Landroid/view/DisplayAddress;

    move-result-object v5

    .line 1214
    .local v5, "address":Landroid/view/DisplayAddress;
    iget-object v6, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDisplayDeviceRepo:Lcom/android/server/display/DisplayDeviceRepository;

    invoke-virtual {v6, v5}, Lcom/android/server/display/DisplayDeviceRepository;->getByAddressLocked(Landroid/view/DisplayAddress;)Lcom/android/server/display/DisplayDevice;

    move-result-object v6

    .line 1215
    .local v6, "device":Lcom/android/server/display/DisplayDevice;
    if-nez v6, :cond_0

    .line 1216
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "applyLayoutLocked: The display device ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, "), is not available for the display state "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDeviceState:Landroid/hardware/devicestate/DeviceState;

    .line 1217
    invoke-virtual {v8}, Landroid/hardware/devicestate/DeviceState;->getIdentifier()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1216
    invoke-static {v2, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1218
    goto/16 :goto_3

    .line 1223
    :cond_0
    invoke-virtual {v4}, Lcom/android/server/display/layout/Layout$Display;->getLogicalDisplayId()I

    move-result v7

    .line 1225
    .local v7, "logicalDisplayId":I
    invoke-virtual {p0, v7}, Lcom/android/server/display/LogicalDisplayMapper;->getDisplayLocked(I)Lcom/android/server/display/LogicalDisplay;

    move-result-object v8

    .line 1226
    .local v8, "newDisplay":Lcom/android/server/display/LogicalDisplay;
    const/4 v9, 0x0

    .line 1227
    .local v9, "newDisplayCreated":Z
    if-nez v8, :cond_1

    .line 1228
    const/4 v10, 0x0

    invoke-direct {p0, v10, v7}, Lcom/android/server/display/LogicalDisplayMapper;->createNewLogicalDisplayLocked(Lcom/android/server/display/DisplayDevice;I)Lcom/android/server/display/LogicalDisplay;

    move-result-object v8

    .line 1230
    const/4 v9, 0x1

    .line 1234
    :cond_1
    invoke-virtual {p0, v6}, Lcom/android/server/display/LogicalDisplayMapper;->getDisplayLocked(Lcom/android/server/display/DisplayDevice;)Lcom/android/server/display/LogicalDisplay;

    move-result-object v10

    .line 1235
    .local v10, "oldDisplay":Lcom/android/server/display/LogicalDisplay;
    if-eq v8, v10, :cond_3

    .line 1238
    if-nez v9, :cond_2

    iget-object v11, p0, Lcom/android/server/display/LogicalDisplayMapper;->mWindowManagerPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    if-eqz v11, :cond_2

    .line 1239
    iget-object v11, p0, Lcom/android/server/display/LogicalDisplayMapper;->mWindowManagerPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-virtual {v8}, Lcom/android/server/display/LogicalDisplay;->getDisplayIdLocked()I

    move-result v12

    invoke-interface {v11, v12}, Lcom/android/server/policy/WindowManagerPolicy;->onDisplaySwitchStart(I)V

    .line 1242
    :cond_2
    invoke-virtual {v8, v10}, Lcom/android/server/display/LogicalDisplay;->swapDisplaysLocked(Lcom/android/server/display/LogicalDisplay;)V

    .line 1244
    :cond_3
    invoke-virtual {v6}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceConfig()Lcom/android/server/display/DisplayDeviceConfig;

    move-result-object v11

    .line 1246
    .local v11, "config":Lcom/android/server/display/DisplayDeviceConfig;
    invoke-virtual {v4}, Lcom/android/server/display/layout/Layout$Display;->getPosition()I

    move-result v12

    invoke-virtual {v8, v12}, Lcom/android/server/display/LogicalDisplay;->setDevicePositionLocked(I)V

    .line 1247
    invoke-virtual {v4}, Lcom/android/server/display/layout/Layout$Display;->getLeadDisplayId()I

    move-result v12

    invoke-virtual {v8, v12}, Lcom/android/server/display/LogicalDisplay;->setLeadDisplayLocked(I)V

    .line 1248
    nop

    .line 1249
    invoke-virtual {v4}, Lcom/android/server/display/layout/Layout$Display;->getRefreshRateZoneId()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/android/server/display/DisplayDeviceConfig;->getRefreshRange(Ljava/lang/String;)Landroid/view/SurfaceControl$RefreshRateRange;

    move-result-object v12

    .line 1248
    invoke-virtual {v8, v12}, Lcom/android/server/display/LogicalDisplay;->updateLayoutLimitedRefreshRateLocked(Landroid/view/SurfaceControl$RefreshRateRange;)V

    .line 1251
    nop

    .line 1253
    invoke-virtual {v4}, Lcom/android/server/display/layout/Layout$Display;->getRefreshRateThermalThrottlingMapId()Ljava/lang/String;

    move-result-object v12

    .line 1252
    invoke-virtual {v11, v12}, Lcom/android/server/display/DisplayDeviceConfig;->getThermalRefreshRateThrottlingData(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v12

    .line 1251
    invoke-virtual {v8, v12}, Lcom/android/server/display/LogicalDisplay;->updateThermalRefreshRateThrottling(Landroid/util/SparseArray;)V

    .line 1256
    invoke-virtual {v4}, Lcom/android/server/display/layout/Layout$Display;->isEnabled()Z

    move-result v12

    invoke-virtual {p0, v8, v12}, Lcom/android/server/display/LogicalDisplayMapper;->setEnabledLocked(Lcom/android/server/display/LogicalDisplay;Z)V

    .line 1257
    nop

    .line 1258
    invoke-virtual {v4}, Lcom/android/server/display/layout/Layout$Display;->getThermalBrightnessThrottlingMapId()Ljava/lang/String;

    move-result-object v12

    const-string v13, "default"

    if-nez v12, :cond_4

    .line 1259
    move-object v12, v13

    goto :goto_1

    .line 1260
    :cond_4
    invoke-virtual {v4}, Lcom/android/server/display/layout/Layout$Display;->getThermalBrightnessThrottlingMapId()Ljava/lang/String;

    move-result-object v12

    .line 1257
    :goto_1
    invoke-virtual {v8, v12}, Lcom/android/server/display/LogicalDisplay;->setThermalBrightnessThrottlingDataIdLocked(Ljava/lang/String;)V

    .line 1261
    nop

    .line 1262
    invoke-virtual {v4}, Lcom/android/server/display/layout/Layout$Display;->getPowerThrottlingMapId()Ljava/lang/String;

    move-result-object v12

    if-nez v12, :cond_5

    .line 1263
    goto :goto_2

    .line 1264
    :cond_5
    invoke-virtual {v4}, Lcom/android/server/display/layout/Layout$Display;->getPowerThrottlingMapId()Ljava/lang/String;

    move-result-object v13

    .line 1261
    :goto_2
    invoke-virtual {v8, v13}, Lcom/android/server/display/LogicalDisplay;->setPowerThrottlingDataIdLocked(Ljava/lang/String;)V

    .line 1265
    invoke-virtual {v4}, Lcom/android/server/display/layout/Layout$Display;->getDisplayGroupName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v12}, Lcom/android/server/display/LogicalDisplay;->setDisplayGroupNameLocked(Ljava/lang/String;)V

    .line 1206
    .end local v4    # "displayLayout":Lcom/android/server/display/layout/Layout$Display;
    .end local v5    # "address":Landroid/view/DisplayAddress;
    .end local v6    # "device":Lcom/android/server/display/DisplayDevice;
    .end local v7    # "logicalDisplayId":I
    .end local v8    # "newDisplay":Lcom/android/server/display/LogicalDisplay;
    .end local v9    # "newDisplayCreated":Z
    .end local v10    # "oldDisplay":Lcom/android/server/display/LogicalDisplay;
    .end local v11    # "config":Lcom/android/server/display/DisplayDeviceConfig;
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_6
    nop

    .line 1267
    .end local v3    # "i":I
    return-void
.end method

.method private areAllTransitioningDisplaysOffLocked()Z
    .locals 7

    .line 679
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mLogicalDisplays:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 680
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/4 v2, 0x1

    if-ge v1, v0, :cond_2

    .line 681
    iget-object v3, p0, Lcom/android/server/display/LogicalDisplayMapper;->mLogicalDisplays:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/display/LogicalDisplay;

    .line 682
    .local v3, "display":Lcom/android/server/display/LogicalDisplay;
    invoke-virtual {v3}, Lcom/android/server/display/LogicalDisplay;->isInTransitionLocked()Z

    move-result v4

    if-nez v4, :cond_0

    .line 683
    goto :goto_1

    .line 686
    :cond_0
    invoke-virtual {v3}, Lcom/android/server/display/LogicalDisplay;->getPrimaryDisplayDeviceLocked()Lcom/android/server/display/DisplayDevice;

    move-result-object v4

    .line 687
    .local v4, "device":Lcom/android/server/display/DisplayDevice;
    if-eqz v4, :cond_1

    .line 688
    invoke-virtual {v4}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;

    move-result-object v5

    .line 689
    .local v5, "info":Lcom/android/server/display/DisplayDeviceInfo;
    iget v6, v5, Lcom/android/server/display/DisplayDeviceInfo;->state:I

    if-eq v6, v2, :cond_1

    .line 690
    const/4 v2, 0x0

    return v2

    .line 680
    .end local v3    # "display":Lcom/android/server/display/LogicalDisplay;
    .end local v4    # "device":Lcom/android/server/display/DisplayDevice;
    .end local v5    # "info":Lcom/android/server/display/DisplayDeviceInfo;
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    nop

    .line 694
    .end local v1    # "i":I
    return v2
.end method

.method private assignDisplayGroupIdLocked(ZLjava/lang/String;ZLjava/lang/Integer;)I
    .locals 3
    .param p1, "isOwnDisplayGroup"    # Z
    .param p2, "displayGroupName"    # Ljava/lang/String;
    .param p3, "isDeviceDisplayGroup"    # Z
    .param p4, "linkedDeviceUniqueId"    # Ljava/lang/Integer;

    .line 1317
    if-eqz p3, :cond_1

    if-eqz p4, :cond_1

    .line 1318
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDeviceDisplayGroupIds:Landroid/util/SparseIntArray;

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    .line 1320
    .local v0, "deviceDisplayGroupId":I
    if-nez v0, :cond_0

    .line 1321
    iget v1, p0, Lcom/android/server/display/LogicalDisplayMapper;->mNextNonDefaultGroupId:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/server/display/LogicalDisplayMapper;->mNextNonDefaultGroupId:I

    move v0, v1

    .line 1322
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDeviceDisplayGroupIds:Landroid/util/SparseIntArray;

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1324
    :cond_0
    return v0

    .line 1326
    .end local v0    # "deviceDisplayGroupId":I
    :cond_1
    if-nez p1, :cond_2

    const/4 v0, 0x0

    return v0

    .line 1327
    :cond_2
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDisplayGroupIdsByName:Landroid/util/ArrayMap;

    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1328
    .local v0, "displayGroupId":Ljava/lang/Integer;
    if-nez v0, :cond_3

    .line 1329
    iget v1, p0, Lcom/android/server/display/LogicalDisplayMapper;->mNextNonDefaultGroupId:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/server/display/LogicalDisplayMapper;->mNextNonDefaultGroupId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 1330
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDisplayGroupIdsByName:Landroid/util/ArrayMap;

    invoke-virtual {v1, p2, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1332
    :cond_3
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1
.end method

.method private assignDisplayGroupLocked(Lcom/android/server/display/LogicalDisplay;)V
    .locals 17
    .param p1, "display"    # Lcom/android/server/display/LogicalDisplay;

    .line 1058
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v1}, Lcom/android/server/display/LogicalDisplay;->isValidLocked()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1059
    return-void

    .line 1062
    :cond_0
    invoke-virtual {v1}, Lcom/android/server/display/LogicalDisplay;->getPrimaryDisplayDeviceLocked()Lcom/android/server/display/DisplayDevice;

    move-result-object v2

    .line 1064
    .local v2, "displayDevice":Lcom/android/server/display/DisplayDevice;
    invoke-virtual {v1}, Lcom/android/server/display/LogicalDisplay;->getDisplayIdLocked()I

    move-result v3

    .line 1065
    .local v3, "displayId":I
    invoke-virtual {v2}, Lcom/android/server/display/DisplayDevice;->getUniqueId()Ljava/lang/String;

    move-result-object v4

    .line 1066
    .local v4, "primaryDisplayUniqueId":Ljava/lang/String;
    iget-object v5, v0, Lcom/android/server/display/LogicalDisplayMapper;->mVirtualDeviceDisplayMapping:Landroid/util/ArrayMap;

    .line 1067
    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    .line 1070
    .local v5, "linkedDeviceUniqueId":Ljava/lang/Integer;
    invoke-virtual {v0, v3}, Lcom/android/server/display/LogicalDisplayMapper;->getDisplayGroupIdFromDisplayIdLocked(I)I

    move-result v6

    .line 1071
    .local v6, "groupId":I
    const/4 v7, 0x0

    .line 1072
    .local v7, "deviceDisplayGroupId":Ljava/lang/Integer;
    nop

    nop

    if-eqz v5, :cond_1

    iget-object v8, v0, Lcom/android/server/display/LogicalDisplayMapper;->mDeviceDisplayGroupIds:Landroid/util/SparseIntArray;

    .line 1073
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v8

    if-lez v8, :cond_1

    .line 1074
    iget-object v8, v0, Lcom/android/server/display/LogicalDisplayMapper;->mDeviceDisplayGroupIds:Landroid/util/SparseIntArray;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/util/SparseIntArray;->get(I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 1076
    :cond_1
    invoke-virtual {v0, v6}, Lcom/android/server/display/LogicalDisplayMapper;->getDisplayGroupLocked(I)Lcom/android/server/display/DisplayGroup;

    move-result-object v8

    .line 1079
    .local v8, "oldGroup":Lcom/android/server/display/DisplayGroup;
    invoke-virtual {v1}, Lcom/android/server/display/LogicalDisplay;->getDisplayGroupNameLocked()Ljava/lang/String;

    move-result-object v9

    .line 1081
    .local v9, "groupName":Ljava/lang/String;
    invoke-virtual {v2}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;

    move-result-object v10

    .line 1085
    .local v10, "displayDeviceInfo":Lcom/android/server/display/DisplayDeviceInfo;
    iget v11, v10, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    and-int/lit16 v11, v11, 0x4000

    const/4 v13, 0x0

    if-nez v11, :cond_3

    .line 1087
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_2

    goto :goto_0

    :cond_2
    move v11, v13

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v11, 0x1

    :goto_1
    nop

    .line 1089
    .local v11, "needsOwnDisplayGroup":Z
    if-eqz v6, :cond_4

    const/4 v14, 0x1

    goto :goto_2

    :cond_4
    move v14, v13

    .line 1090
    .local v14, "hasOwnDisplayGroup":Z
    :goto_2
    if-nez v11, :cond_5

    if-eqz v5, :cond_5

    const/4 v15, 0x1

    goto :goto_3

    :cond_5
    move v15, v13

    .line 1092
    .local v15, "needsDeviceDisplayGroup":Z
    :goto_3
    if-eqz v7, :cond_6

    .line 1093
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v12

    if-ne v6, v12, :cond_6

    const/4 v12, 0x1

    goto :goto_4

    :cond_6
    move v12, v13

    :goto_4
    nop

    .line 1094
    .local v12, "hasDeviceDisplayGroup":Z
    const/4 v13, -0x1

    if-eq v6, v13, :cond_7

    if-ne v14, v11, :cond_7

    if-eq v12, v15, :cond_8

    .line 1097
    :cond_7
    nop

    .line 1099
    invoke-virtual {v1}, Lcom/android/server/display/LogicalDisplay;->getDisplayGroupNameLocked()Ljava/lang/String;

    move-result-object v13

    .line 1098
    invoke-direct {v0, v11, v13, v15, v5}, Lcom/android/server/display/LogicalDisplayMapper;->assignDisplayGroupIdLocked(ZLjava/lang/String;ZLjava/lang/Integer;)I

    move-result v6

    .line 1104
    :cond_8
    invoke-virtual {v0, v6}, Lcom/android/server/display/LogicalDisplayMapper;->getDisplayGroupLocked(I)Lcom/android/server/display/DisplayGroup;

    move-result-object v13

    .line 1105
    .local v13, "newGroup":Lcom/android/server/display/DisplayGroup;
    if-nez v13, :cond_9

    .line 1106
    move-object/from16 v16, v2

    .end local v2    # "displayDevice":Lcom/android/server/display/DisplayDevice;
    .local v16, "displayDevice":Lcom/android/server/display/DisplayDevice;
    new-instance v2, Lcom/android/server/display/DisplayGroup;

    invoke-direct {v2, v6}, Lcom/android/server/display/DisplayGroup;-><init>(I)V

    move-object v13, v2

    .line 1107
    iget-object v2, v0, Lcom/android/server/display/LogicalDisplayMapper;->mDisplayGroups:Landroid/util/SparseArray;

    invoke-virtual {v2, v6, v13}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    goto :goto_5

    .line 1105
    .end local v16    # "displayDevice":Lcom/android/server/display/DisplayDevice;
    .restart local v2    # "displayDevice":Lcom/android/server/display/DisplayDevice;
    :cond_9
    move-object/from16 v16, v2

    .line 1109
    .end local v2    # "displayDevice":Lcom/android/server/display/DisplayDevice;
    .restart local v16    # "displayDevice":Lcom/android/server/display/DisplayDevice;
    :goto_5
    if-eq v8, v13, :cond_c

    .line 1110
    if-eqz v8, :cond_a

    .line 1111
    invoke-virtual {v8, v1}, Lcom/android/server/display/DisplayGroup;->removeDisplayLocked(Lcom/android/server/display/LogicalDisplay;)Z

    .line 1113
    :cond_a
    invoke-virtual {v13, v1}, Lcom/android/server/display/DisplayGroup;->addDisplayLocked(Lcom/android/server/display/LogicalDisplay;)V

    .line 1114
    invoke-virtual {v1, v6}, Lcom/android/server/display/LogicalDisplay;->updateDisplayGroupIdLocked(I)V

    .line 1115
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Setting new display group "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " for display "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", from previous group: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1117
    if-eqz v8, :cond_b

    invoke-virtual {v8}, Lcom/android/server/display/DisplayGroup;->getGroupId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_6

    :cond_b
    const-string/jumbo v0, "null"

    :goto_6
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1115
    const-string v2, "LogicalDisplayMapper"

    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1119
    :cond_c
    return-void
.end method

.method private assignLayerStackLocked(I)I
    .locals 0
    .param p1, "displayId"    # I

    .line 1352
    return p1
.end method

.method private createNewLogicalDisplayLocked(Lcom/android/server/display/DisplayDevice;I)Lcom/android/server/display/LogicalDisplay;
    .locals 7
    .param p1, "device"    # Lcom/android/server/display/DisplayDevice;
    .param p2, "displayId"    # I

    .line 1278
    invoke-direct {p0, p2}, Lcom/android/server/display/LogicalDisplayMapper;->assignLayerStackLocked(I)I

    move-result v2

    .line 1279
    .local v2, "layerStack":I
    new-instance v0, Lcom/android/server/display/LogicalDisplay;

    iget-object v1, p0, Lcom/android/server/display/LogicalDisplayMapper;->mFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

    .line 1280
    invoke-virtual {v1}, Lcom/android/server/display/feature/DisplayManagerFlags;->isPixelAnisotropyCorrectionInLogicalDisplayEnabled()Z

    move-result v4

    iget-object v1, p0, Lcom/android/server/display/LogicalDisplayMapper;->mFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

    .line 1281
    invoke-virtual {v1}, Lcom/android/server/display/feature/DisplayManagerFlags;->isAlwaysRotateDisplayDeviceEnabled()Z

    move-result v5

    iget-object v1, p0, Lcom/android/server/display/LogicalDisplayMapper;->mFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

    .line 1282
    invoke-virtual {v1}, Lcom/android/server/display/feature/DisplayManagerFlags;->isSyncedResolutionSwitchEnabled()Z

    move-result v6

    move-object v3, p1

    move v1, p2

    .end local p1    # "device":Lcom/android/server/display/DisplayDevice;
    .end local p2    # "displayId":I
    .local v1, "displayId":I
    .local v3, "device":Lcom/android/server/display/DisplayDevice;
    invoke-direct/range {v0 .. v6}, Lcom/android/server/display/LogicalDisplay;-><init>(IILcom/android/server/display/DisplayDevice;ZZZ)V

    .line 1283
    .local v0, "display":Lcom/android/server/display/LogicalDisplay;
    iget-object p1, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDisplayDeviceRepo:Lcom/android/server/display/DisplayDeviceRepository;

    iget-object p2, p0, Lcom/android/server/display/LogicalDisplayMapper;->mSyntheticModeManager:Lcom/android/server/display/mode/SyntheticModeManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/display/LogicalDisplay;->updateLocked(Lcom/android/server/display/DisplayDeviceRepository;Lcom/android/server/display/mode/SyntheticModeManager;)V

    .line 1285
    invoke-virtual {v0}, Lcom/android/server/display/LogicalDisplay;->getDisplayInfoLocked()Landroid/view/DisplayInfo;

    move-result-object p1

    .line 1286
    .local p1, "info":Landroid/view/DisplayInfo;
    iget p2, p1, Landroid/view/DisplayInfo;->type:I

    const/4 v4, 0x1

    if-ne p2, v4, :cond_0

    iget-object p2, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDeviceStateToLayoutMap:Lcom/android/server/display/DeviceStateToLayoutMap;

    invoke-virtual {p2}, Lcom/android/server/display/DeviceStateToLayoutMap;->size()I

    move-result p2

    if-le p2, v4, :cond_0

    .line 1290
    const/4 p2, 0x0

    invoke-virtual {v0, p2}, Lcom/android/server/display/LogicalDisplay;->setEnabledLocked(Z)V

    .line 1293
    :cond_0
    iget-object p2, p0, Lcom/android/server/display/LogicalDisplayMapper;->mLogicalDisplays:Landroid/util/SparseArray;

    invoke-virtual {p2, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1294
    return-object v0
.end method

.method private displayEventToString(I)Ljava/lang/String;
    .locals 1
    .param p1, "msg"    # I

    .line 1374
    sparse-switch p1, :sswitch_data_0

    .line 1400
    const/4 v0, 0x0

    return-object v0

    .line 1394
    :sswitch_0
    const-string v0, "committed_state_changed"

    return-object v0

    .line 1392
    :sswitch_1
    const-string/jumbo v0, "state_changed"

    return-object v0

    .line 1396
    :sswitch_2
    const-string/jumbo v0, "refresh_rate_changed"

    return-object v0

    .line 1390
    :sswitch_3
    const-string v0, "disconnected"

    return-object v0

    .line 1388
    :sswitch_4
    const-string v0, "connected"

    return-object v0

    .line 1386
    :sswitch_5
    const-string/jumbo v0, "hdr_sdr_ratio_changed"

    return-object v0

    .line 1378
    :sswitch_6
    const-string/jumbo v0, "transition"

    return-object v0

    .line 1380
    :sswitch_7
    const-string v0, "framerate_override"

    return-object v0

    .line 1382
    :sswitch_8
    const-string/jumbo v0, "swapped"

    return-object v0

    .line 1384
    :sswitch_9
    const-string/jumbo v0, "removed"

    return-object v0

    .line 1398
    :sswitch_a
    const-string v0, "basic_changed"

    return-object v0

    .line 1376
    :sswitch_b
    const-string v0, "added"

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_b
        0x2 -> :sswitch_a
        0x4 -> :sswitch_9
        0x8 -> :sswitch_8
        0x10 -> :sswitch_7
        0x20 -> :sswitch_6
        0x40 -> :sswitch_5
        0x80 -> :sswitch_4
        0x100 -> :sswitch_3
        0x200 -> :sswitch_2
        0x400 -> :sswitch_1
        0x800 -> :sswitch_0
    .end sparse-switch
.end method

.method private finishStateTransitionLocked(Z)V
    .locals 6
    .param p1, "force"    # Z

    .line 707
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mPendingDeviceState:Landroid/hardware/devicestate/DeviceState;

    sget-object v1, Landroid/hardware/devicestate/DeviceStateManager;->INVALID_DEVICE_STATE:Landroid/hardware/devicestate/DeviceState;

    invoke-virtual {v0, v1}, Landroid/hardware/devicestate/DeviceState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 708
    return-void

    .line 711
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mPendingDeviceState:Landroid/hardware/devicestate/DeviceState;

    iget-object v1, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDeviceState:Landroid/hardware/devicestate/DeviceState;

    iget-boolean v2, p0, Lcom/android/server/display/LogicalDisplayMapper;->mInteractive:Z

    iget-boolean v3, p0, Lcom/android/server/display/LogicalDisplayMapper;->mBootCompleted:Z

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/server/display/LogicalDisplayMapper;->shouldDeviceBeWoken(Landroid/hardware/devicestate/DeviceState;Landroid/hardware/devicestate/DeviceState;ZZ)Z

    move-result v0

    .line 715
    .local v0, "waitingToWakeDevice":Z
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplayMapper;->mPendingDeviceState:Landroid/hardware/devicestate/DeviceState;

    iget-object v2, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDeviceState:Landroid/hardware/devicestate/DeviceState;

    iget-boolean v3, p0, Lcom/android/server/display/LogicalDisplayMapper;->mInteractive:Z

    iget-boolean v4, p0, Lcom/android/server/display/LogicalDisplayMapper;->mBootCompleted:Z

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/server/display/LogicalDisplayMapper;->shouldDeviceBePutToSleep(Landroid/hardware/devicestate/DeviceState;Landroid/hardware/devicestate/DeviceState;ZZ)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    .line 716
    invoke-direct {p0}, Lcom/android/server/display/LogicalDisplayMapper;->shouldStayAwakeOnFold()Z

    move-result v1

    if-nez v1, :cond_1

    move v1, v3

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    nop

    .line 718
    .local v1, "waitingToSleepDevice":Z
    invoke-direct {p0}, Lcom/android/server/display/LogicalDisplayMapper;->areAllTransitioningDisplaysOffLocked()Z

    move-result v4

    .line 719
    .local v4, "displaysOff":Z
    if-eqz v4, :cond_2

    if-nez v0, :cond_2

    if-nez v1, :cond_2

    move v2, v3

    .line 722
    .local v2, "isReadyToTransition":Z
    :cond_2
    if-nez v2, :cond_3

    if-eqz p1, :cond_4

    :cond_3
    goto :goto_1

    .line 725
    :cond_4
    sget-boolean v3, Lcom/android/server/display/LogicalDisplayMapper;->DEBUG:Z

    if-eqz v3, :cond_5

    .line 726
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Not yet ready to transition to state="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/display/LogicalDisplayMapper;->mPendingDeviceState:Landroid/hardware/devicestate/DeviceState;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " with displays-off="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", force="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", mInteractive="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/android/server/display/LogicalDisplayMapper;->mInteractive:Z

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", isReady="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "LogicalDisplayMapper"

    invoke-static {v5, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 723
    :goto_1
    invoke-direct {p0}, Lcom/android/server/display/LogicalDisplayMapper;->transitionToPendingStateLocked()V

    .line 724
    iget-object v5, p0, Lcom/android/server/display/LogicalDisplayMapper;->mHandler:Lcom/android/server/display/LogicalDisplayMapper$LogicalDisplayMapperHandler;

    invoke-virtual {v5, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 730
    :cond_5
    :goto_2
    return-void
.end method

.method private handleDisplayDeviceAddedLocked(Lcom/android/server/display/DisplayDevice;)V
    .locals 3
    .param p1, "device"    # Lcom/android/server/display/DisplayDevice;

    .line 733
    invoke-virtual {p1}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;

    move-result-object v0

    .line 738
    .local v0, "deviceInfo":Lcom/android/server/display/DisplayDeviceInfo;
    iget v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 739
    invoke-direct {p0, p1}, Lcom/android/server/display/LogicalDisplayMapper;->initializeDefaultDisplayDeviceLocked(Lcom/android/server/display/DisplayDevice;)V

    .line 743
    :cond_0
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplayMapper;->mIdProducer:Lcom/android/server/display/layout/DisplayIdProducer;

    .line 744
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/android/server/display/layout/DisplayIdProducer;->getId(Z)I

    move-result v1

    .line 743
    invoke-direct {p0, p1, v1}, Lcom/android/server/display/LogicalDisplayMapper;->createNewLogicalDisplayLocked(Lcom/android/server/display/DisplayDevice;I)Lcom/android/server/display/LogicalDisplay;

    move-result-object v1

    .line 746
    .local v1, "display":Lcom/android/server/display/LogicalDisplay;
    invoke-direct {p0}, Lcom/android/server/display/LogicalDisplayMapper;->applyLayoutLocked()V

    .line 747
    invoke-virtual {p0}, Lcom/android/server/display/LogicalDisplayMapper;->updateLogicalDisplaysLocked()V

    .line 748
    return-void
.end method

.method private handleDisplayDeviceRemovedLocked(Lcom/android/server/display/DisplayDevice;)V
    .locals 9
    .param p1, "device"    # Lcom/android/server/display/DisplayDevice;

    .line 751
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDeviceStateToLayoutMap:Lcom/android/server/display/DeviceStateToLayoutMap;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/android/server/display/DeviceStateToLayoutMap;->get(I)Lcom/android/server/display/layout/Layout;

    move-result-object v0

    .line 752
    .local v0, "layout":Lcom/android/server/display/layout/Layout;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/display/layout/Layout;->getById(I)Lcom/android/server/display/layout/Layout$Display;

    move-result-object v2

    .line 753
    .local v2, "layoutDisplay":Lcom/android/server/display/layout/Layout$Display;
    if-nez v2, :cond_0

    .line 754
    return-void

    .line 756
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;

    move-result-object v3

    .line 759
    .local v3, "deviceInfo":Lcom/android/server/display/DisplayDeviceInfo;
    iget-object v4, p0, Lcom/android/server/display/LogicalDisplayMapper;->mVirtualDeviceDisplayMapping:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Lcom/android/server/display/DisplayDevice;->getUniqueId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 761
    invoke-virtual {v2}, Lcom/android/server/display/layout/Layout$Display;->getAddress()Landroid/view/DisplayAddress;

    move-result-object v4

    iget-object v5, v3, Lcom/android/server/display/DisplayDeviceInfo;->address:Landroid/view/DisplayAddress;

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 762
    invoke-virtual {v0, v1}, Lcom/android/server/display/layout/Layout;->removeDisplayLocked(I)V

    .line 765
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v4, p0, Lcom/android/server/display/LogicalDisplayMapper;->mLogicalDisplays:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v1, v4, :cond_3

    .line 766
    iget-object v4, p0, Lcom/android/server/display/LogicalDisplayMapper;->mLogicalDisplays:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/display/LogicalDisplay;

    .line 767
    .local v4, "nextDisplay":Lcom/android/server/display/LogicalDisplay;
    invoke-virtual {v4}, Lcom/android/server/display/LogicalDisplay;->getPrimaryDisplayDeviceLocked()Lcom/android/server/display/DisplayDevice;

    move-result-object v5

    .line 768
    .local v5, "nextDevice":Lcom/android/server/display/DisplayDevice;
    if-nez v5, :cond_1

    .line 769
    goto :goto_1

    .line 771
    :cond_1
    invoke-virtual {v5}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;

    move-result-object v6

    .line 773
    .local v6, "nextDeviceInfo":Lcom/android/server/display/DisplayDeviceInfo;
    iget v7, v6, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    and-int/lit8 v7, v7, 0x1

    nop

    if-eqz v7, :cond_2

    iget-object v7, v6, Lcom/android/server/display/DisplayDeviceInfo;->address:Landroid/view/DisplayAddress;

    iget-object v8, v3, Lcom/android/server/display/DisplayDeviceInfo;->address:Landroid/view/DisplayAddress;

    .line 775
    invoke-virtual {v7, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 776
    iget-object v7, v6, Lcom/android/server/display/DisplayDeviceInfo;->address:Landroid/view/DisplayAddress;

    iget-object v8, p0, Lcom/android/server/display/LogicalDisplayMapper;->mIdProducer:Lcom/android/server/display/layout/DisplayIdProducer;

    invoke-virtual {v0, v7, v8}, Lcom/android/server/display/layout/Layout;->createDefaultDisplayLocked(Landroid/view/DisplayAddress;Lcom/android/server/display/layout/DisplayIdProducer;)V

    .line 777
    invoke-direct {p0}, Lcom/android/server/display/LogicalDisplayMapper;->applyLayoutLocked()V

    .line 778
    return-void

    .line 765
    .end local v4    # "nextDisplay":Lcom/android/server/display/LogicalDisplay;
    .end local v5    # "nextDevice":Lcom/android/server/display/DisplayDevice;
    .end local v6    # "nextDeviceInfo":Lcom/android/server/display/DisplayDeviceInfo;
    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 782
    .end local v1    # "i":I
    :cond_3
    return-void
.end method

.method private initializeDefaultDisplayDeviceLocked(Lcom/android/server/display/DisplayDevice;)V
    .locals 4
    .param p1, "device"    # Lcom/android/server/display/DisplayDevice;

    .line 1340
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDeviceStateToLayoutMap:Lcom/android/server/display/DeviceStateToLayoutMap;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/android/server/display/DeviceStateToLayoutMap;->get(I)Lcom/android/server/display/layout/Layout;

    move-result-object v0

    .line 1341
    .local v0, "layout":Lcom/android/server/display/layout/Layout;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/display/layout/Layout;->getById(I)Lcom/android/server/display/layout/Layout$Display;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1343
    return-void

    .line 1345
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;

    move-result-object v1

    .line 1346
    .local v1, "info":Lcom/android/server/display/DisplayDeviceInfo;
    iget-object v2, v1, Lcom/android/server/display/DisplayDeviceInfo;->address:Landroid/view/DisplayAddress;

    iget-object v3, p0, Lcom/android/server/display/LogicalDisplayMapper;->mIdProducer:Lcom/android/server/display/layout/DisplayIdProducer;

    invoke-virtual {v0, v2, v3}, Lcom/android/server/display/layout/Layout;->createDefaultDisplayLocked(Landroid/view/DisplayAddress;Lcom/android/server/display/layout/DisplayIdProducer;)V

    .line 1347
    return-void
.end method

.method private static synthetic lambda$new$0(Z)I
    .locals 2
    .param p0, "isDefault"    # Z

    .line 211
    if-eqz p0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    sget v0, Lcom/android/server/display/LogicalDisplayMapper;->sNextNonDefaultDisplayId:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/android/server/display/LogicalDisplayMapper;->sNextNonDefaultDisplayId:I

    :goto_0
    return v0
.end method

.method private static synthetic lambda$new$1(Z)I
    .locals 2
    .param p0, "isDefault"    # Z

    .line 229
    if-eqz p0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 230
    :cond_0
    sget v0, Lcom/android/server/display/LogicalDisplayMapper;->sNextNonDefaultDisplayId:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/android/server/display/LogicalDisplayMapper;->sNextNonDefaultDisplayId:I

    .line 229
    :goto_0
    return v0
.end method

.method private synthetic lambda$setDeviceStateLocked$2()V
    .locals 5

    .line 565
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const/16 v3, 0xc

    const-string/jumbo v4, "server.display:unfold"

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/PowerManager;->wakeUp(JILjava/lang/String;)V

    .line 567
    return-void
.end method

.method private synthetic lambda$setDeviceStateLocked$3(I)V
    .locals 4
    .param p1, "goToSleepFlag"    # I

    .line 574
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const/16 v3, 0xd

    invoke-virtual {v0, v1, v2, v3, p1}, Landroid/os/PowerManager;->goToSleep(JII)V

    .line 577
    return-void
.end method

.method private resetLayoutLocked(IIZ)V
    .locals 20
    .param p1, "fromState"    # I
    .param p2, "toState"    # I
    .param p3, "transitionValue"    # Z

    .line 1134
    move-object/from16 v0, p0

    move/from16 v1, p3

    iget-object v2, v0, Lcom/android/server/display/LogicalDisplayMapper;->mDeviceStateToLayoutMap:Lcom/android/server/display/DeviceStateToLayoutMap;

    move/from16 v3, p1

    invoke-virtual {v2, v3}, Lcom/android/server/display/DeviceStateToLayoutMap;->get(I)Lcom/android/server/display/layout/Layout;

    move-result-object v2

    .line 1135
    .local v2, "fromLayout":Lcom/android/server/display/layout/Layout;
    iget-object v4, v0, Lcom/android/server/display/LogicalDisplayMapper;->mDeviceStateToLayoutMap:Lcom/android/server/display/DeviceStateToLayoutMap;

    move/from16 v5, p2

    invoke-virtual {v4, v5}, Lcom/android/server/display/DeviceStateToLayoutMap;->get(I)Lcom/android/server/display/layout/Layout;

    move-result-object v4

    .line 1137
    .local v4, "toLayout":Lcom/android/server/display/layout/Layout;
    iget-object v6, v0, Lcom/android/server/display/LogicalDisplayMapper;->mLogicalDisplays:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6

    .line 1138
    .local v6, "count":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    if-ge v7, v6, :cond_11

    .line 1139
    iget-object v8, v0, Lcom/android/server/display/LogicalDisplayMapper;->mLogicalDisplays:Landroid/util/SparseArray;

    invoke-virtual {v8, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/display/LogicalDisplay;

    .line 1140
    .local v8, "logicalDisplay":Lcom/android/server/display/LogicalDisplay;
    invoke-virtual {v8}, Lcom/android/server/display/LogicalDisplay;->getDisplayIdLocked()I

    move-result v9

    .line 1141
    .local v9, "displayId":I
    invoke-virtual {v8}, Lcom/android/server/display/LogicalDisplay;->getPrimaryDisplayDeviceLocked()Lcom/android/server/display/DisplayDevice;

    move-result-object v10

    .line 1142
    .local v10, "device":Lcom/android/server/display/DisplayDevice;
    if-nez v10, :cond_0

    .line 1144
    move-object/from16 v17, v2

    goto/16 :goto_e

    .line 1149
    :cond_0
    invoke-virtual {v10}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;

    move-result-object v11

    iget-object v11, v11, Lcom/android/server/display/DisplayDeviceInfo;->address:Landroid/view/DisplayAddress;

    .line 1153
    .local v11, "address":Landroid/view/DisplayAddress;
    const/4 v12, 0x0

    if-eqz v11, :cond_1

    invoke-virtual {v2, v11}, Lcom/android/server/display/layout/Layout;->getByAddress(Landroid/view/DisplayAddress;)Lcom/android/server/display/layout/Layout$Display;

    move-result-object v13

    goto :goto_1

    :cond_1
    move-object v13, v12

    .line 1155
    .local v13, "fromDisplay":Lcom/android/server/display/layout/Layout$Display;
    :goto_1
    if-eqz v11, :cond_2

    invoke-virtual {v4, v11}, Lcom/android/server/display/layout/Layout;->getByAddress(Landroid/view/DisplayAddress;)Lcom/android/server/display/layout/Layout$Display;

    move-result-object v12

    .line 1159
    .local v12, "toDisplay":Lcom/android/server/display/layout/Layout$Display;
    :cond_2
    if-nez v13, :cond_3

    const/4 v14, 0x1

    goto :goto_2

    :cond_3
    const/4 v14, 0x0

    :goto_2
    if-nez v12, :cond_4

    const/4 v15, 0x1

    goto :goto_3

    :cond_4
    const/4 v15, 0x0

    :goto_3
    if-eq v14, v15, :cond_5

    const/4 v14, 0x1

    goto :goto_4

    :cond_5
    const/4 v14, 0x0

    .line 1163
    .local v14, "displayNotInBothLayouts":Z
    :goto_4
    if-eqz v13, :cond_6

    invoke-virtual {v13}, Lcom/android/server/display/layout/Layout$Display;->isEnabled()Z

    move-result v15

    if-eqz v15, :cond_7

    :cond_6
    goto :goto_5

    :cond_7
    const/4 v15, 0x0

    goto :goto_6

    :goto_5
    const/4 v15, 0x1

    .line 1164
    .local v15, "wasEnabled":Z
    :goto_6
    if-eqz v12, :cond_8

    invoke-virtual {v12}, Lcom/android/server/display/layout/Layout$Display;->isEnabled()Z

    move-result v17

    if-eqz v17, :cond_9

    :cond_8
    goto :goto_7

    :cond_9
    const/16 v17, 0x0

    goto :goto_8

    :goto_7
    const/16 v17, 0x1

    :goto_8
    move/from16 v18, v17

    .line 1166
    .local v18, "willBeEnabled":Z
    if-eqz v13, :cond_a

    if-eqz v12, :cond_a

    .line 1167
    move-object/from16 v17, v2

    .end local v2    # "fromLayout":Lcom/android/server/display/layout/Layout;
    .local v17, "fromLayout":Lcom/android/server/display/layout/Layout;
    invoke-virtual {v13}, Lcom/android/server/display/layout/Layout$Display;->getLogicalDisplayId()I

    move-result v2

    invoke-virtual {v12}, Lcom/android/server/display/layout/Layout$Display;->getLogicalDisplayId()I

    move-result v3

    if-eq v2, v3, :cond_b

    const/4 v2, 0x1

    goto :goto_9

    .line 1166
    .end local v17    # "fromLayout":Lcom/android/server/display/layout/Layout;
    .restart local v2    # "fromLayout":Lcom/android/server/display/layout/Layout;
    :cond_a
    move-object/from16 v17, v2

    .line 1167
    .end local v2    # "fromLayout":Lcom/android/server/display/layout/Layout;
    .restart local v17    # "fromLayout":Lcom/android/server/display/layout/Layout;
    :cond_b
    const/4 v2, 0x0

    :goto_9
    nop

    .line 1176
    .local v2, "deviceHasNewLogicalDisplayId":Z
    nop

    .line 1177
    invoke-virtual {v8}, Lcom/android/server/display/LogicalDisplay;->isInTransitionLocked()Z

    move-result v3

    if-nez v3, :cond_e

    move/from16 v3, v18

    .end local v18    # "willBeEnabled":Z
    .local v3, "willBeEnabled":Z
    if-ne v15, v3, :cond_c

    if-nez v2, :cond_c

    if-eqz v14, :cond_d

    :cond_c
    :goto_a
    goto :goto_b

    :cond_d
    const/16 v16, 0x0

    goto :goto_c

    .end local v3    # "willBeEnabled":Z
    .restart local v18    # "willBeEnabled":Z
    :cond_e
    move/from16 v3, v18

    .end local v18    # "willBeEnabled":Z
    .restart local v3    # "willBeEnabled":Z
    goto :goto_a

    :goto_b
    const/16 v16, 0x1

    .line 1182
    .local v16, "isTransitioning":Z
    :goto_c
    if-eqz v16, :cond_10

    .line 1183
    move/from16 v18, v2

    .end local v2    # "deviceHasNewLogicalDisplayId":Z
    .local v18, "deviceHasNewLogicalDisplayId":Z
    invoke-virtual {v8}, Lcom/android/server/display/LogicalDisplay;->isInTransitionLocked()Z

    move-result v2

    if-eq v1, v2, :cond_f

    .line 1184
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v19, v3

    .end local v3    # "willBeEnabled":Z
    .local v19, "willBeEnabled":Z
    const-string v3, "Set isInTransition on display "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "LogicalDisplayMapper"

    invoke-static {v3, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d

    .line 1183
    .end local v19    # "willBeEnabled":Z
    .restart local v3    # "willBeEnabled":Z
    :cond_f
    move/from16 v19, v3

    .line 1190
    .end local v3    # "willBeEnabled":Z
    .restart local v19    # "willBeEnabled":Z
    :goto_d
    invoke-virtual {v8, v1}, Lcom/android/server/display/LogicalDisplay;->setIsInTransitionLocked(Z)V

    .line 1191
    iget-object v2, v0, Lcom/android/server/display/LogicalDisplayMapper;->mUpdatedLogicalDisplays:Landroid/util/SparseIntArray;

    const/4 v3, 0x1

    invoke-virtual {v2, v9, v3}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_e

    .line 1182
    .end local v18    # "deviceHasNewLogicalDisplayId":Z
    .end local v19    # "willBeEnabled":Z
    .restart local v2    # "deviceHasNewLogicalDisplayId":Z
    .restart local v3    # "willBeEnabled":Z
    :cond_10
    move/from16 v18, v2

    move/from16 v19, v3

    .line 1138
    .end local v2    # "deviceHasNewLogicalDisplayId":Z
    .end local v3    # "willBeEnabled":Z
    .end local v8    # "logicalDisplay":Lcom/android/server/display/LogicalDisplay;
    .end local v9    # "displayId":I
    .end local v10    # "device":Lcom/android/server/display/DisplayDevice;
    .end local v11    # "address":Landroid/view/DisplayAddress;
    .end local v12    # "toDisplay":Lcom/android/server/display/layout/Layout$Display;
    .end local v13    # "fromDisplay":Lcom/android/server/display/layout/Layout$Display;
    .end local v14    # "displayNotInBothLayouts":Z
    .end local v15    # "wasEnabled":Z
    .end local v16    # "isTransitioning":Z
    :goto_e
    add-int/lit8 v7, v7, 0x1

    move/from16 v3, p1

    move-object/from16 v2, v17

    goto/16 :goto_0

    .end local v17    # "fromLayout":Lcom/android/server/display/layout/Layout;
    .local v2, "fromLayout":Lcom/android/server/display/layout/Layout;
    :cond_11
    nop

    .line 1194
    .end local v7    # "i":I
    return-void
.end method

.method private sendUpdatesForDisplaysLocked(I)V
    .locals 9
    .param p1, "logicalDisplayEvent"    # I

    .line 1000
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mLogicalDisplaysToUpdate:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_6

    .line 1001
    iget-object v2, p0, Lcom/android/server/display/LogicalDisplayMapper;->mLogicalDisplaysToUpdate:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v2

    .line 1002
    .local v2, "logicalDisplayEventMask":I
    and-int v3, v2, p1

    if-nez v3, :cond_0

    .line 1003
    goto :goto_3

    .line 1006
    :cond_0
    iget-object v3, p0, Lcom/android/server/display/LogicalDisplayMapper;->mLogicalDisplaysToUpdate:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v3

    .line 1007
    .local v3, "id":I
    invoke-virtual {p0, v3}, Lcom/android/server/display/LogicalDisplayMapper;->getDisplayLocked(I)Lcom/android/server/display/LogicalDisplay;

    move-result-object v4

    .line 1008
    .local v4, "display":Lcom/android/server/display/LogicalDisplay;
    sget-boolean v5, Lcom/android/server/display/LogicalDisplayMapper;->DEBUG:Z

    if-eqz v5, :cond_2

    .line 1009
    invoke-virtual {v4}, Lcom/android/server/display/LogicalDisplay;->getPrimaryDisplayDeviceLocked()Lcom/android/server/display/DisplayDevice;

    move-result-object v5

    .line 1010
    .local v5, "device":Lcom/android/server/display/DisplayDevice;
    if-nez v5, :cond_1

    const-string/jumbo v6, "null"

    goto :goto_1

    :cond_1
    invoke-virtual {v5}, Lcom/android/server/display/DisplayDevice;->getUniqueId()Ljava/lang/String;

    move-result-object v6

    .line 1011
    .local v6, "uniqueId":Ljava/lang/String;
    :goto_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Sending "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lcom/android/server/display/LogicalDisplayMapper;->displayEventToString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " for display="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " with device="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "LogicalDisplayMapper"

    invoke-static {v8, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1015
    .end local v5    # "device":Lcom/android/server/display/DisplayDevice;
    .end local v6    # "uniqueId":Ljava/lang/String;
    :cond_2
    if-ne p1, v1, :cond_3

    .line 1016
    iget-object v5, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDisplaysEnabledCache:Landroid/util/SparseBooleanArray;

    invoke-virtual {v5, v3, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    goto :goto_2

    .line 1017
    :cond_3
    const/4 v5, 0x4

    if-ne p1, v5, :cond_4

    .line 1018
    iget-object v5, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDisplaysEnabledCache:Landroid/util/SparseBooleanArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 1021
    :cond_4
    :goto_2
    iget-object v5, p0, Lcom/android/server/display/LogicalDisplayMapper;->mListener:Lcom/android/server/display/LogicalDisplayMapper$Listener;

    invoke-interface {v5, v4, p1}, Lcom/android/server/display/LogicalDisplayMapper$Listener;->onLogicalDisplayEventLocked(Lcom/android/server/display/LogicalDisplay;I)V

    .line 1023
    const/16 v5, 0x100

    if-ne p1, v5, :cond_5

    .line 1024
    iget-object v5, p0, Lcom/android/server/display/LogicalDisplayMapper;->mLogicalDisplays:Landroid/util/SparseArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->delete(I)V

    .line 1000
    .end local v2    # "logicalDisplayEventMask":I
    .end local v3    # "id":I
    .end local v4    # "display":Lcom/android/server/display/LogicalDisplay;
    :cond_5
    :goto_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_6
    nop

    .line 1027
    .end local v0    # "i":I
    return-void
.end method

.method private sendUpdatesForGroupsLocked(I)V
    .locals 5
    .param p1, "msg"    # I

    .line 1033
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDisplayGroupsToUpdate:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_2

    .line 1034
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDisplayGroupsToUpdate:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v1

    .line 1035
    .local v1, "currMsg":I
    if-eq v1, p1, :cond_0

    .line 1036
    goto :goto_1

    .line 1039
    :cond_0
    iget-object v2, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDisplayGroupsToUpdate:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v2

    .line 1040
    .local v2, "id":I
    iget-object v3, p0, Lcom/android/server/display/LogicalDisplayMapper;->mListener:Lcom/android/server/display/LogicalDisplayMapper$Listener;

    invoke-interface {v3, v2, p1}, Lcom/android/server/display/LogicalDisplayMapper$Listener;->onDisplayGroupEventLocked(II)V

    .line 1041
    const/4 v3, 0x3

    if-ne p1, v3, :cond_1

    .line 1044
    iget-object v3, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDisplayGroups:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->delete(I)V

    .line 1046
    iget-object v3, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDeviceDisplayGroupIds:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseIntArray;->indexOfValue(I)I

    move-result v3

    .line 1047
    .local v3, "deviceIndex":I
    if-ltz v3, :cond_1

    .line 1048
    iget-object v4, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDeviceDisplayGroupIds:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseIntArray;->removeAt(I)V

    .line 1033
    .end local v1    # "currMsg":I
    .end local v2    # "id":I
    .end local v3    # "deviceIndex":I
    :cond_1
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    nop

    .line 1052
    .end local v0    # "i":I
    return-void
.end method

.method private shouldStayAwakeOnFold()Z
    .locals 1

    .line 1368
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mFoldSettingProvider:Lcom/android/server/utils/FoldSettingProvider;

    invoke-virtual {v0}, Lcom/android/server/utils/FoldSettingProvider;->shouldStayAwakeOnFold()Z

    move-result v0

    nop

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mFoldSettingProvider:Lcom/android/server/utils/FoldSettingProvider;

    .line 1369
    invoke-virtual {v0}, Lcom/android/server/utils/FoldSettingProvider;->shouldSelectiveStayAwakeOnFold()Z

    move-result v0

    nop

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mFoldGracePeriodProvider:Lcom/android/internal/foldables/FoldGracePeriodProvider;

    .line 1370
    invoke-virtual {v0}, Lcom/android/internal/foldables/FoldGracePeriodProvider;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 1368
    :goto_1
    return v0
.end method

.method private toSparseBooleanArray([I)Landroid/util/SparseBooleanArray;
    .locals 4
    .param p1, "input"    # [I

    .line 1356
    new-instance v0, Landroid/util/SparseBooleanArray;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/util/SparseBooleanArray;-><init>(I)V

    .line 1357
    .local v0, "retval":Landroid/util/SparseBooleanArray;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-eqz p1, :cond_0

    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 1358
    aget v2, p1, v1

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 1357
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1360
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method private transitionToPendingStateLocked()V
    .locals 3

    .line 698
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDeviceState:Landroid/hardware/devicestate/DeviceState;

    invoke-virtual {v0}, Landroid/hardware/devicestate/DeviceState;->getIdentifier()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/display/LogicalDisplayMapper;->mPendingDeviceState:Landroid/hardware/devicestate/DeviceState;

    .line 699
    invoke-virtual {v1}, Landroid/hardware/devicestate/DeviceState;->getIdentifier()I

    move-result v1

    .line 698
    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/display/LogicalDisplayMapper;->resetLayoutLocked(IIZ)V

    .line 700
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mPendingDeviceState:Landroid/hardware/devicestate/DeviceState;

    iput-object v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDeviceState:Landroid/hardware/devicestate/DeviceState;

    .line 701
    sget-object v0, Landroid/hardware/devicestate/DeviceStateManager;->INVALID_DEVICE_STATE:Landroid/hardware/devicestate/DeviceState;

    iput-object v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mPendingDeviceState:Landroid/hardware/devicestate/DeviceState;

    .line 702
    invoke-direct {p0}, Lcom/android/server/display/LogicalDisplayMapper;->applyLayoutLocked()V

    .line 703
    invoke-virtual {p0}, Lcom/android/server/display/LogicalDisplayMapper;->updateLogicalDisplaysLocked()V

    .line 704
    return-void
.end method

.method private updateLogicalDisplaysLocked(I)V
    .locals 1
    .param p1, "diff"    # I

    .line 796
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/display/LogicalDisplayMapper;->updateLogicalDisplaysLocked(IZ)V

    .line 797
    return-void
.end method

.method private updateLogicalDisplaysLocked(IZ)V
    .locals 19
    .param p1, "diff"    # I
    .param p2, "isSecondLoop"    # Z

    .line 810
    move-object/from16 v0, p0

    move/from16 v1, p1

    const/4 v2, 0x0

    .line 814
    .local v2, "reloop":Z
    iget-object v3, v0, Lcom/android/server/display/LogicalDisplayMapper;->mLogicalDisplays:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    .local v3, "i":I
    :goto_0
    const/4 v7, 0x0

    if-ltz v3, :cond_13

    .line 815
    iget-object v9, v0, Lcom/android/server/display/LogicalDisplayMapper;->mLogicalDisplays:Landroid/util/SparseArray;

    invoke-virtual {v9, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v9

    .line 816
    .local v9, "displayId":I
    iget-object v10, v0, Lcom/android/server/display/LogicalDisplayMapper;->mLogicalDisplays:Landroid/util/SparseArray;

    invoke-virtual {v10, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/display/LogicalDisplay;

    .line 817
    .local v10, "display":Lcom/android/server/display/LogicalDisplay;
    invoke-direct {v0, v10}, Lcom/android/server/display/LogicalDisplayMapper;->assignDisplayGroupLocked(Lcom/android/server/display/LogicalDisplay;)V

    .line 819
    invoke-virtual {v10}, Lcom/android/server/display/LogicalDisplay;->isDirtyLocked()Z

    move-result v11

    .line 820
    .local v11, "wasDirty":Z
    iget-object v12, v0, Lcom/android/server/display/LogicalDisplayMapper;->mTempDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v10}, Lcom/android/server/display/LogicalDisplay;->getDisplayInfoLocked()Landroid/view/DisplayInfo;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/view/DisplayInfo;->copyFrom(Landroid/view/DisplayInfo;)V

    .line 821
    iget-object v12, v0, Lcom/android/server/display/LogicalDisplayMapper;->mTempNonOverrideDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v10, v12}, Lcom/android/server/display/LogicalDisplay;->getNonOverrideDisplayInfoLocked(Landroid/view/DisplayInfo;)V

    .line 823
    iget-object v12, v0, Lcom/android/server/display/LogicalDisplayMapper;->mDisplayDeviceRepo:Lcom/android/server/display/DisplayDeviceRepository;

    iget-object v13, v0, Lcom/android/server/display/LogicalDisplayMapper;->mSyntheticModeManager:Lcom/android/server/display/mode/SyntheticModeManager;

    invoke-virtual {v10, v12, v13}, Lcom/android/server/display/LogicalDisplay;->updateLocked(Lcom/android/server/display/DisplayDeviceRepository;Lcom/android/server/display/mode/SyntheticModeManager;)V

    .line 824
    invoke-virtual {v10}, Lcom/android/server/display/LogicalDisplay;->getDisplayInfoLocked()Landroid/view/DisplayInfo;

    move-result-object v12

    .line 825
    .local v12, "newDisplayInfo":Landroid/view/DisplayInfo;
    iget-object v13, v0, Lcom/android/server/display/LogicalDisplayMapper;->mUpdatedLogicalDisplays:Landroid/util/SparseIntArray;

    invoke-virtual {v13, v9, v7}, Landroid/util/SparseIntArray;->get(II)I

    move-result v13

    .line 826
    .local v13, "updateState":I
    if-eqz v13, :cond_0

    move v14, v4

    goto :goto_1

    :cond_0
    move v14, v7

    .line 827
    .local v14, "wasPreviouslyUpdated":Z
    :goto_1
    iget-object v15, v0, Lcom/android/server/display/LogicalDisplayMapper;->mDisplaysEnabledCache:Landroid/util/SparseBooleanArray;

    invoke-virtual {v15, v9}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v15

    .line 828
    .local v15, "wasPreviouslyEnabled":Z
    invoke-virtual {v10}, Lcom/android/server/display/LogicalDisplay;->isEnabledLocked()Z

    move-result v5

    .line 829
    .local v5, "isCurrentlyEnabled":Z
    iget-object v8, v0, Lcom/android/server/display/LogicalDisplayMapper;->mLogicalDisplaysToUpdate:Landroid/util/SparseIntArray;

    .line 830
    invoke-virtual {v8, v9, v7}, Landroid/util/SparseIntArray;->get(II)I

    move-result v7

    .line 831
    .local v7, "logicalDisplayEventMask":I
    iget-object v8, v0, Lcom/android/server/display/LogicalDisplayMapper;->mTempDisplayInfo:Landroid/view/DisplayInfo;

    .line 832
    invoke-virtual {v8, v12, v4}, Landroid/view/DisplayInfo;->equals(Landroid/view/DisplayInfo;Z)Z

    move-result v8

    xor-int/2addr v8, v4

    .line 834
    .local v8, "hasBasicInfoChanged":Z
    invoke-virtual {v10}, Lcom/android/server/display/LogicalDisplay;->isValidLocked()Z

    move-result v17

    if-nez v17, :cond_4

    .line 836
    nop

    .line 837
    invoke-virtual {v0, v9}, Lcom/android/server/display/LogicalDisplayMapper;->getDisplayGroupIdFromDisplayIdLocked(I)I

    move-result v6

    .line 836
    invoke-virtual {v0, v6}, Lcom/android/server/display/LogicalDisplayMapper;->getDisplayGroupLocked(I)Lcom/android/server/display/DisplayGroup;

    move-result-object v6

    .line 838
    .local v6, "displayGroup":Lcom/android/server/display/DisplayGroup;
    if-eqz v6, :cond_1

    .line 839
    invoke-virtual {v6, v10}, Lcom/android/server/display/DisplayGroup;->removeDisplayLocked(Lcom/android/server/display/LogicalDisplay;)Z

    .line 842
    :cond_1
    if-eqz v14, :cond_3

    .line 845
    iget-object v4, v0, Lcom/android/server/display/LogicalDisplayMapper;->mDisplaysEnabledCache:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4, v9}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 847
    const/4 v2, 0x1

    .line 848
    or-int/lit8 v7, v7, 0x4

    goto :goto_2

    .line 850
    :cond_2
    iget-object v4, v0, Lcom/android/server/display/LogicalDisplayMapper;->mUpdatedLogicalDisplays:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v9}, Landroid/util/SparseIntArray;->delete(I)V

    .line 851
    or-int/lit16 v7, v7, 0x100

    goto :goto_2

    .line 855
    :cond_3
    iget-object v4, v0, Lcom/android/server/display/LogicalDisplayMapper;->mLogicalDisplays:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->removeAt(I)V

    .line 857
    :goto_2
    iget-object v4, v0, Lcom/android/server/display/LogicalDisplayMapper;->mLogicalDisplaysToUpdate:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v9, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 858
    goto/16 :goto_6

    .line 861
    .end local v6    # "displayGroup":Lcom/android/server/display/DisplayGroup;
    :cond_4
    if-nez v14, :cond_5

    .line 863
    const/4 v2, 0x1

    .line 864
    or-int/lit16 v4, v7, 0x80

    .end local v7    # "logicalDisplayEventMask":I
    .local v4, "logicalDisplayEventMask":I
    goto/16 :goto_5

    .line 866
    .end local v4    # "logicalDisplayEventMask":I
    .restart local v7    # "logicalDisplayEventMask":I
    :cond_5
    iget-object v4, v0, Lcom/android/server/display/LogicalDisplayMapper;->mTempDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v4, v4, Landroid/view/DisplayInfo;->uniqueId:Ljava/lang/String;

    iget-object v6, v12, Landroid/view/DisplayInfo;->uniqueId:Ljava/lang/String;

    invoke-static {v4, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 867
    or-int/lit8 v4, v7, 0x8

    .end local v7    # "logicalDisplayEventMask":I
    .restart local v4    # "logicalDisplayEventMask":I
    goto/16 :goto_5

    .line 870
    .end local v4    # "logicalDisplayEventMask":I
    .restart local v7    # "logicalDisplayEventMask":I
    :cond_6
    if-eq v15, v5, :cond_8

    .line 871
    if-eqz v5, :cond_7

    const/16 v16, 0x1

    goto :goto_3

    .line 872
    :cond_7
    const/16 v16, 0x4

    :goto_3
    nop

    .line 873
    .local v16, "event":I
    or-int v4, v7, v16

    .line 874
    .end local v7    # "logicalDisplayEventMask":I
    .end local v16    # "event":I
    .restart local v4    # "logicalDisplayEventMask":I
    goto/16 :goto_5

    .end local v4    # "logicalDisplayEventMask":I
    .restart local v7    # "logicalDisplayEventMask":I
    :cond_8
    if-eqz v11, :cond_a

    .line 876
    const/16 v4, 0x10

    if-ne v1, v4, :cond_9

    .line 877
    or-int/lit8 v4, v7, 0x40

    .end local v7    # "logicalDisplayEventMask":I
    .restart local v4    # "logicalDisplayEventMask":I
    goto/16 :goto_5

    .line 879
    .end local v4    # "logicalDisplayEventMask":I
    .restart local v7    # "logicalDisplayEventMask":I
    :cond_9
    or-int/lit16 v4, v7, 0x602

    .end local v7    # "logicalDisplayEventMask":I
    .restart local v4    # "logicalDisplayEventMask":I
    goto/16 :goto_5

    .line 884
    .end local v4    # "logicalDisplayEventMask":I
    .restart local v7    # "logicalDisplayEventMask":I
    :cond_a
    if-nez v8, :cond_10

    iget-object v4, v0, Lcom/android/server/display/LogicalDisplayMapper;->mTempDisplayInfo:Landroid/view/DisplayInfo;

    .line 885
    invoke-virtual {v4}, Landroid/view/DisplayInfo;->getRefreshRate()F

    move-result v4

    invoke-virtual {v12}, Landroid/view/DisplayInfo;->getRefreshRate()F

    move-result v6

    cmpl-float v4, v4, v6

    if-nez v4, :cond_f

    iget-object v4, v0, Lcom/android/server/display/LogicalDisplayMapper;->mTempDisplayInfo:Landroid/view/DisplayInfo;

    iget v4, v4, Landroid/view/DisplayInfo;->committedState:I

    iget v6, v12, Landroid/view/DisplayInfo;->committedState:I

    if-eq v4, v6, :cond_b

    move/from16 v18, v2

    goto :goto_4

    .line 900
    :cond_b
    const/4 v4, 0x1

    if-ne v13, v4, :cond_c

    .line 901
    or-int/lit8 v4, v7, 0x20

    .end local v7    # "logicalDisplayEventMask":I
    .restart local v4    # "logicalDisplayEventMask":I
    goto :goto_5

    .line 904
    .end local v4    # "logicalDisplayEventMask":I
    .restart local v7    # "logicalDisplayEventMask":I
    :cond_c
    invoke-virtual {v10}, Lcom/android/server/display/LogicalDisplay;->getPendingFrameRateOverrideUids()Landroid/util/ArraySet;

    move-result-object v4

    invoke-virtual {v4}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_d

    .line 905
    or-int/lit8 v4, v7, 0x10

    .end local v7    # "logicalDisplayEventMask":I
    .restart local v4    # "logicalDisplayEventMask":I
    goto :goto_5

    .line 912
    .end local v4    # "logicalDisplayEventMask":I
    .restart local v7    # "logicalDisplayEventMask":I
    :cond_d
    iget-object v4, v0, Lcom/android/server/display/LogicalDisplayMapper;->mTempDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v10, v4}, Lcom/android/server/display/LogicalDisplay;->getNonOverrideDisplayInfoLocked(Landroid/view/DisplayInfo;)V

    .line 913
    iget-object v4, v0, Lcom/android/server/display/LogicalDisplayMapper;->mTempNonOverrideDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v6, v0, Lcom/android/server/display/LogicalDisplayMapper;->mTempDisplayInfo:Landroid/view/DisplayInfo;

    move/from16 v18, v2

    const/4 v2, 0x1

    .end local v2    # "reloop":Z
    .local v18, "reloop":Z
    invoke-virtual {v4, v6, v2}, Landroid/view/DisplayInfo;->equals(Landroid/view/DisplayInfo;Z)Z

    move-result v4

    if-nez v4, :cond_e

    .line 915
    or-int/lit8 v7, v7, 0x2

    .line 917
    :cond_e
    iget-object v2, v0, Lcom/android/server/display/LogicalDisplayMapper;->mTempNonOverrideDisplayInfo:Landroid/view/DisplayInfo;

    .line 918
    invoke-virtual {v0, v2}, Lcom/android/server/display/LogicalDisplayMapper;->updateAndGetMaskForDisplayPropertyChanges(Landroid/view/DisplayInfo;)I

    move-result v2

    or-int v4, v7, v2

    move/from16 v2, v18

    .end local v7    # "logicalDisplayEventMask":I
    .restart local v4    # "logicalDisplayEventMask":I
    goto :goto_5

    .line 885
    .end local v4    # "logicalDisplayEventMask":I
    .end local v18    # "reloop":Z
    .restart local v2    # "reloop":Z
    .restart local v7    # "logicalDisplayEventMask":I
    :cond_f
    move/from16 v18, v2

    .end local v2    # "reloop":Z
    .restart local v18    # "reloop":Z
    goto :goto_4

    .line 884
    .end local v18    # "reloop":Z
    .restart local v2    # "reloop":Z
    :cond_10
    move/from16 v18, v2

    .line 889
    .end local v2    # "reloop":Z
    .restart local v18    # "reloop":Z
    :goto_4
    const/16 v4, 0x10

    if-ne v1, v4, :cond_11

    .line 890
    or-int/lit8 v4, v7, 0x40

    move/from16 v2, v18

    .end local v7    # "logicalDisplayEventMask":I
    .restart local v4    # "logicalDisplayEventMask":I
    goto :goto_5

    .line 893
    .end local v4    # "logicalDisplayEventMask":I
    .restart local v7    # "logicalDisplayEventMask":I
    :cond_11
    if-eqz v8, :cond_12

    .line 894
    or-int/lit8 v7, v7, 0x2

    .line 896
    :cond_12
    nop

    .line 897
    invoke-virtual {v0, v12}, Lcom/android/server/display/LogicalDisplayMapper;->updateAndGetMaskForDisplayPropertyChanges(Landroid/view/DisplayInfo;)I

    move-result v2

    or-int v4, v7, v2

    move/from16 v2, v18

    .line 920
    .end local v7    # "logicalDisplayEventMask":I
    .end local v18    # "reloop":Z
    .restart local v2    # "reloop":Z
    .restart local v4    # "logicalDisplayEventMask":I
    :goto_5
    iget-object v6, v0, Lcom/android/server/display/LogicalDisplayMapper;->mLogicalDisplaysToUpdate:Landroid/util/SparseIntArray;

    invoke-virtual {v6, v9, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 921
    iget-object v6, v0, Lcom/android/server/display/LogicalDisplayMapper;->mUpdatedLogicalDisplays:Landroid/util/SparseIntArray;

    const/4 v7, 0x2

    invoke-virtual {v6, v9, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 814
    .end local v4    # "logicalDisplayEventMask":I
    .end local v5    # "isCurrentlyEnabled":Z
    .end local v8    # "hasBasicInfoChanged":Z
    .end local v9    # "displayId":I
    .end local v10    # "display":Lcom/android/server/display/LogicalDisplay;
    .end local v11    # "wasDirty":Z
    .end local v12    # "newDisplayInfo":Landroid/view/DisplayInfo;
    .end local v13    # "updateState":I
    .end local v14    # "wasPreviouslyUpdated":Z
    .end local v15    # "wasPreviouslyEnabled":Z
    :goto_6
    add-int/lit8 v3, v3, -0x1

    const/4 v4, 0x1

    goto/16 :goto_0

    :cond_13
    move/from16 v18, v2

    .line 928
    .end local v2    # "reloop":Z
    .end local v3    # "i":I
    .restart local v18    # "reloop":Z
    iget-object v2, v0, Lcom/android/server/display/LogicalDisplayMapper;->mDisplayGroups:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    const/16 v17, 0x1

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_7
    const/4 v3, 0x3

    if-ltz v2, :cond_19

    .line 929
    iget-object v4, v0, Lcom/android/server/display/LogicalDisplayMapper;->mDisplayGroups:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    .line 930
    .local v4, "groupId":I
    iget-object v5, v0, Lcom/android/server/display/LogicalDisplayMapper;->mDisplayGroups:Landroid/util/SparseArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/display/DisplayGroup;

    .line 931
    .local v5, "group":Lcom/android/server/display/DisplayGroup;
    iget-object v6, v0, Lcom/android/server/display/LogicalDisplayMapper;->mUpdatedDisplayGroups:Landroid/util/SparseIntArray;

    invoke-virtual {v6, v4}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v6

    const/4 v8, -0x1

    if-le v6, v8, :cond_14

    const/4 v6, 0x1

    goto :goto_8

    :cond_14
    move v6, v7

    .line 932
    .local v6, "wasPreviouslyUpdated":Z
    :goto_8
    invoke-virtual {v5}, Lcom/android/server/display/DisplayGroup;->getChangeCountLocked()I

    move-result v8

    .line 934
    .local v8, "changeCount":I
    invoke-virtual {v5}, Lcom/android/server/display/DisplayGroup;->isEmptyLocked()Z

    move-result v9

    if-eqz v9, :cond_15

    .line 935
    iget-object v9, v0, Lcom/android/server/display/LogicalDisplayMapper;->mUpdatedDisplayGroups:Landroid/util/SparseIntArray;

    invoke-virtual {v9, v4}, Landroid/util/SparseIntArray;->delete(I)V

    .line 936
    if-eqz v6, :cond_18

    .line 937
    iget-object v9, v0, Lcom/android/server/display/LogicalDisplayMapper;->mDisplayGroupsToUpdate:Landroid/util/SparseIntArray;

    invoke-virtual {v9, v4, v3}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_a

    .line 940
    :cond_15
    if-nez v6, :cond_16

    .line 941
    iget-object v3, v0, Lcom/android/server/display/LogicalDisplayMapper;->mDisplayGroupsToUpdate:Landroid/util/SparseIntArray;

    const/4 v9, 0x1

    invoke-virtual {v3, v4, v9}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_9

    .line 942
    :cond_16
    iget-object v3, v0, Lcom/android/server/display/LogicalDisplayMapper;->mUpdatedDisplayGroups:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v4}, Landroid/util/SparseIntArray;->get(I)I

    move-result v3

    if-eq v3, v8, :cond_17

    .line 943
    iget-object v3, v0, Lcom/android/server/display/LogicalDisplayMapper;->mDisplayGroupsToUpdate:Landroid/util/SparseIntArray;

    const/4 v9, 0x2

    invoke-virtual {v3, v4, v9}, Landroid/util/SparseIntArray;->put(II)V

    .line 945
    :cond_17
    :goto_9
    iget-object v3, v0, Lcom/android/server/display/LogicalDisplayMapper;->mUpdatedDisplayGroups:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v4, v8}, Landroid/util/SparseIntArray;->put(II)V

    .line 928
    .end local v4    # "groupId":I
    .end local v5    # "group":Lcom/android/server/display/DisplayGroup;
    .end local v6    # "wasPreviouslyUpdated":Z
    .end local v8    # "changeCount":I
    :cond_18
    :goto_a
    add-int/lit8 v2, v2, -0x1

    goto :goto_7

    :cond_19
    nop

    .line 950
    .end local v2    # "i":I
    const/16 v2, 0x20

    invoke-direct {v0, v2}, Lcom/android/server/display/LogicalDisplayMapper;->sendUpdatesForDisplaysLocked(I)V

    .line 951
    const/4 v2, 0x1

    invoke-direct {v0, v2}, Lcom/android/server/display/LogicalDisplayMapper;->sendUpdatesForGroupsLocked(I)V

    .line 952
    const/4 v2, 0x4

    invoke-direct {v0, v2}, Lcom/android/server/display/LogicalDisplayMapper;->sendUpdatesForDisplaysLocked(I)V

    .line 953
    const/16 v2, 0x100

    invoke-direct {v0, v2}, Lcom/android/server/display/LogicalDisplayMapper;->sendUpdatesForDisplaysLocked(I)V

    .line 954
    const/4 v7, 0x2

    invoke-direct {v0, v7}, Lcom/android/server/display/LogicalDisplayMapper;->sendUpdatesForDisplaysLocked(I)V

    .line 955
    const/16 v2, 0x200

    invoke-direct {v0, v2}, Lcom/android/server/display/LogicalDisplayMapper;->sendUpdatesForDisplaysLocked(I)V

    .line 956
    const/16 v2, 0x400

    invoke-direct {v0, v2}, Lcom/android/server/display/LogicalDisplayMapper;->sendUpdatesForDisplaysLocked(I)V

    .line 957
    const/16 v2, 0x800

    invoke-direct {v0, v2}, Lcom/android/server/display/LogicalDisplayMapper;->sendUpdatesForDisplaysLocked(I)V

    .line 958
    const/16 v4, 0x10

    invoke-direct {v0, v4}, Lcom/android/server/display/LogicalDisplayMapper;->sendUpdatesForDisplaysLocked(I)V

    .line 959
    const/16 v2, 0x8

    invoke-direct {v0, v2}, Lcom/android/server/display/LogicalDisplayMapper;->sendUpdatesForDisplaysLocked(I)V

    .line 960
    const/16 v2, 0x80

    invoke-direct {v0, v2}, Lcom/android/server/display/LogicalDisplayMapper;->sendUpdatesForDisplaysLocked(I)V

    .line 961
    const/4 v2, 0x1

    invoke-direct {v0, v2}, Lcom/android/server/display/LogicalDisplayMapper;->sendUpdatesForDisplaysLocked(I)V

    .line 962
    const/16 v2, 0x40

    invoke-direct {v0, v2}, Lcom/android/server/display/LogicalDisplayMapper;->sendUpdatesForDisplaysLocked(I)V

    .line 963
    const/4 v7, 0x2

    invoke-direct {v0, v7}, Lcom/android/server/display/LogicalDisplayMapper;->sendUpdatesForGroupsLocked(I)V

    .line 964
    invoke-direct {v0, v3}, Lcom/android/server/display/LogicalDisplayMapper;->sendUpdatesForGroupsLocked(I)V

    .line 966
    iget-object v2, v0, Lcom/android/server/display/LogicalDisplayMapper;->mLogicalDisplaysToUpdate:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->clear()V

    .line 967
    iget-object v2, v0, Lcom/android/server/display/LogicalDisplayMapper;->mDisplayGroupsToUpdate:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->clear()V

    .line 969
    if-eqz v18, :cond_1b

    .line 970
    if-eqz p2, :cond_1a

    .line 971
    const-string v2, "LogicalDisplayMapper"

    const-string v3, "Trying to loop a third time"

    invoke-static {v2, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 972
    return-void

    .line 974
    :cond_1a
    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/android/server/display/LogicalDisplayMapper;->updateLogicalDisplaysLocked(IZ)V

    .line 976
    :cond_1b
    return-void
.end method


# virtual methods
.method associateDisplayDeviceWithVirtualDevice(Lcom/android/server/display/DisplayDevice;I)V
    .locals 3
    .param p1, "displayDevice"    # Lcom/android/server/display/DisplayDevice;
    .param p2, "virtualDeviceUniqueId"    # I

    .line 511
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mVirtualDeviceDisplayMapping:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Lcom/android/server/display/DisplayDevice;->getUniqueId()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 512
    return-void
.end method

.method public dumpLocked(Ljava/io/PrintWriter;)V
    .locals 9
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 452
    const-string v0, "LogicalDisplayMapper:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 453
    const-string v0, "---------------------"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 454
    new-instance v0, Landroid/util/IndentingPrintWriter;

    const-string v1, "  "

    invoke-direct {v0, p1, v1}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 455
    .local v0, "ipw":Landroid/util/IndentingPrintWriter;
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 457
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mSingleDisplayDemoMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/display/LogicalDisplayMapper;->mSingleDisplayDemoMode:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 458
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mCurrentLayout="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/display/LogicalDisplayMapper;->mCurrentLayout:Lcom/android/server/display/layout/Layout;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 459
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mDeviceStatesOnWhichToWakeUp="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDeviceStatesOnWhichToWakeUp:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 460
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mDeviceStatesOnWhichSelectiveSleep="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDeviceStatesOnWhichToSelectiveSleep:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 461
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mInteractive="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/display/LogicalDisplayMapper;->mInteractive:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 462
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mBootCompleted="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/display/LogicalDisplayMapper;->mBootCompleted:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 464
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 466
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mDeviceState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDeviceState:Landroid/hardware/devicestate/DeviceState;

    invoke-virtual {v2}, Landroid/hardware/devicestate/DeviceState;->getIdentifier()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 467
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mPendingDeviceState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/display/LogicalDisplayMapper;->mPendingDeviceState:Landroid/hardware/devicestate/DeviceState;

    invoke-virtual {v2}, Landroid/hardware/devicestate/DeviceState;->getIdentifier()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 468
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mDeviceStateToBeAppliedAfterBoot="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDeviceStateToBeAppliedAfterBoot:Landroid/hardware/devicestate/DeviceState;

    .line 469
    invoke-virtual {v2}, Landroid/hardware/devicestate/DeviceState;->getIdentifier()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 468
    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 471
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplayMapper;->mLogicalDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 472
    .local v1, "logicalDisplayCount":I
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 473
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Logical Displays: size="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 474
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const-string v3, ":"

    if-ge v2, v1, :cond_0

    .line 475
    iget-object v4, p0, Lcom/android/server/display/LogicalDisplayMapper;->mLogicalDisplays:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    .line 476
    .local v4, "displayId":I
    iget-object v5, p0, Lcom/android/server/display/LogicalDisplayMapper;->mLogicalDisplays:Landroid/util/SparseArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/display/LogicalDisplay;

    .line 477
    .local v5, "display":Lcom/android/server/display/LogicalDisplay;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Display "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 478
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 479
    invoke-virtual {v5, v0}, Lcom/android/server/display/LogicalDisplay;->dumpLocked(Ljava/io/PrintWriter;)V

    .line 480
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 481
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 474
    .end local v4    # "displayId":I
    .end local v5    # "display":Lcom/android/server/display/LogicalDisplay;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    nop

    .line 484
    .end local v2    # "i":I
    iget-object v2, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDisplayGroups:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 485
    .local v2, "displayGroupCount":I
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 486
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Display Groups: size="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 487
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v2, :cond_1

    .line 488
    iget-object v5, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDisplayGroups:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    .line 489
    .local v5, "groupId":I
    iget-object v6, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDisplayGroups:Landroid/util/SparseArray;

    invoke-virtual {v6, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/display/DisplayGroup;

    .line 490
    .local v6, "displayGroup":Lcom/android/server/display/DisplayGroup;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Group "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 491
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 492
    invoke-virtual {v6, v0}, Lcom/android/server/display/DisplayGroup;->dumpLocked(Landroid/util/IndentingPrintWriter;)V

    .line 493
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 494
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 487
    .end local v5    # "groupId":I
    .end local v6    # "displayGroup":Lcom/android/server/display/DisplayGroup;
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    nop

    .line 498
    .end local v4    # "i":I
    iget-object v3, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDeviceStateToLayoutMap:Lcom/android/server/display/DeviceStateToLayoutMap;

    invoke-virtual {v3, v0}, Lcom/android/server/display/DeviceStateToLayoutMap;->dumpLocked(Landroid/util/IndentingPrintWriter;)V

    .line 499
    return-void
.end method

.method public forEachLocked(Ljava/util/function/Consumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/display/LogicalDisplay;",
            ">;)V"
        }
    .end annotation

    .line 371
    .local p1, "consumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Lcom/android/server/display/LogicalDisplay;>;"
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/server/display/LogicalDisplayMapper;->forEachLocked(Ljava/util/function/Consumer;Z)V

    .line 372
    return-void
.end method

.method public forEachLocked(Ljava/util/function/Consumer;Z)V
    .locals 4
    .param p2, "includeDisabled"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/display/LogicalDisplay;",
            ">;Z)V"
        }
    .end annotation

    .line 375
    .local p1, "consumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Lcom/android/server/display/LogicalDisplay;>;"
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mLogicalDisplays:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 376
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 377
    iget-object v2, p0, Lcom/android/server/display/LogicalDisplayMapper;->mLogicalDisplays:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/display/LogicalDisplay;

    .line 378
    .local v2, "display":Lcom/android/server/display/LogicalDisplay;
    invoke-virtual {v2}, Lcom/android/server/display/LogicalDisplay;->isEnabledLocked()Z

    move-result v3

    if-nez v3, :cond_0

    if-eqz p2, :cond_1

    .line 379
    :cond_0
    invoke-interface {p1, v2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 376
    .end local v2    # "display":Lcom/android/server/display/LogicalDisplay;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    nop

    .line 382
    .end local v1    # "i":I
    return-void
.end method

.method public getDisplayGroupIdFromDisplayIdLocked(I)I
    .locals 6
    .param p1, "displayId"    # I

    .line 386
    invoke-virtual {p0, p1}, Lcom/android/server/display/LogicalDisplayMapper;->getDisplayLocked(I)Lcom/android/server/display/LogicalDisplay;

    move-result-object v0

    .line 387
    .local v0, "display":Lcom/android/server/display/LogicalDisplay;
    const/4 v1, -0x1

    if-nez v0, :cond_0

    .line 388
    return v1

    .line 391
    :cond_0
    iget-object v2, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDisplayGroups:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 392
    .local v2, "size":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_2

    .line 393
    iget-object v4, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDisplayGroups:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/display/DisplayGroup;

    .line 394
    .local v4, "displayGroup":Lcom/android/server/display/DisplayGroup;
    invoke-virtual {v4, v0}, Lcom/android/server/display/DisplayGroup;->containsLocked(Lcom/android/server/display/LogicalDisplay;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 395
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDisplayGroups:Landroid/util/SparseArray;

    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    return v1

    .line 394
    :cond_1
    nop

    .line 392
    .end local v4    # "displayGroup":Lcom/android/server/display/DisplayGroup;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    nop

    .line 399
    .end local v3    # "i":I
    return v1
.end method

.method public getDisplayGroupLocked(I)Lcom/android/server/display/DisplayGroup;
    .locals 1
    .param p1, "groupId"    # I

    .line 403
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDisplayGroups:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/display/DisplayGroup;

    return-object v0
.end method

.method public getDisplayIdsByGroupIdLocked()Landroid/util/SparseArray;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "[I>;"
        }
    .end annotation

    .line 362
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 363
    .local v0, "displayIdsByGroupIds":Landroid/util/SparseArray;, "Landroid/util/SparseArray<[I>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDisplayGroups:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 364
    iget-object v2, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDisplayGroups:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 365
    .local v2, "displayGroupId":I
    invoke-virtual {p0, v2}, Lcom/android/server/display/LogicalDisplayMapper;->getDisplayIdsForGroupLocked(I)[I

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 363
    .end local v2    # "displayGroupId":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    nop

    .line 367
    .end local v1    # "i":I
    return-object v0
.end method

.method public getDisplayIdsForGroupLocked(I)[I
    .locals 2
    .param p1, "groupId"    # I

    .line 354
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDisplayGroups:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/display/DisplayGroup;

    .line 355
    .local v0, "displayGroup":Lcom/android/server/display/DisplayGroup;
    if-nez v0, :cond_0

    .line 356
    const/4 v1, 0x0

    new-array v1, v1, [I

    return-object v1

    .line 358
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/display/DisplayGroup;->getIdsLocked()[I

    move-result-object v1

    return-object v1
.end method

.method public getDisplayIdsLocked(IZ)[I
    .locals 8
    .param p1, "callingUid"    # I
    .param p2, "includeDisabled"    # Z

    .line 335
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mLogicalDisplays:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 336
    .local v0, "count":I
    new-array v1, v0, [I

    .line 337
    .local v1, "displayIds":[I
    const/4 v2, 0x0

    .line 338
    .local v2, "n":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_2

    .line 339
    iget-object v4, p0, Lcom/android/server/display/LogicalDisplayMapper;->mLogicalDisplays:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/display/LogicalDisplay;

    .line 340
    .local v4, "display":Lcom/android/server/display/LogicalDisplay;
    invoke-virtual {v4}, Lcom/android/server/display/LogicalDisplay;->isEnabledLocked()Z

    move-result v5

    if-nez v5, :cond_0

    if-eqz p2, :cond_1

    .line 341
    :cond_0
    invoke-virtual {v4}, Lcom/android/server/display/LogicalDisplay;->getDisplayInfoLocked()Landroid/view/DisplayInfo;

    move-result-object v5

    .line 342
    .local v5, "info":Landroid/view/DisplayInfo;
    invoke-virtual {v5, p1}, Landroid/view/DisplayInfo;->hasAccess(I)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 343
    add-int/lit8 v6, v2, 0x1

    .end local v2    # "n":I
    .local v6, "n":I
    iget-object v7, p0, Lcom/android/server/display/LogicalDisplayMapper;->mLogicalDisplays:Landroid/util/SparseArray;

    invoke-virtual {v7, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v7

    aput v7, v1, v2

    move v2, v6

    .line 338
    .end local v4    # "display":Lcom/android/server/display/LogicalDisplay;
    .end local v5    # "info":Landroid/view/DisplayInfo;
    .end local v6    # "n":I
    .restart local v2    # "n":I
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    nop

    .line 347
    .end local v3    # "i":I
    if-eq v2, v0, :cond_3

    .line 348
    const/4 v3, 0x0

    invoke-static {v1, v3, v2}, Ljava/util/Arrays;->copyOfRange([III)[I

    move-result-object v1

    .line 350
    :cond_3
    return-object v1
.end method

.method public getDisplayInfoForStateLocked(II)Landroid/view/DisplayInfo;
    .locals 9
    .param p1, "deviceState"    # I
    .param p2, "displayId"    # I

    .line 420
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDeviceStateToLayoutMap:Lcom/android/server/display/DeviceStateToLayoutMap;

    invoke-virtual {v0, p1}, Lcom/android/server/display/DeviceStateToLayoutMap;->get(I)Lcom/android/server/display/layout/Layout;

    move-result-object v0

    .line 421
    .local v0, "layout":Lcom/android/server/display/layout/Layout;
    const/4 v1, 0x0

    const-string v2, "LogicalDisplayMapper"

    if-nez v0, :cond_0

    .line 423
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot get layout for given state:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    return-object v1

    .line 427
    :cond_0
    invoke-virtual {v0, p2}, Lcom/android/server/display/layout/Layout;->getById(I)Lcom/android/server/display/layout/Layout$Display;

    move-result-object v3

    .line 428
    .local v3, "display":Lcom/android/server/display/layout/Layout$Display;
    if-nez v3, :cond_1

    .line 430
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot get display for given layout:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    return-object v1

    .line 434
    :cond_1
    iget-object v4, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDisplayDeviceRepo:Lcom/android/server/display/DisplayDeviceRepository;

    invoke-virtual {v3}, Lcom/android/server/display/layout/Layout$Display;->getAddress()Landroid/view/DisplayAddress;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/server/display/DisplayDeviceRepository;->getByAddressLocked(Landroid/view/DisplayAddress;)Lcom/android/server/display/DisplayDevice;

    move-result-object v4

    .line 435
    .local v4, "device":Lcom/android/server/display/DisplayDevice;
    const-string v5, "), is not available for the display state "

    if-nez v4, :cond_2

    .line 436
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "The display device ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/android/server/display/layout/Layout$Display;->getAddress()Landroid/view/DisplayAddress;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDeviceState:Landroid/hardware/devicestate/DeviceState;

    .line 437
    invoke-virtual {v5}, Landroid/hardware/devicestate/DeviceState;->getIdentifier()I

    move-result v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 436
    invoke-static {v2, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    return-object v1

    .line 440
    :cond_2
    const/4 v6, 0x1

    invoke-virtual {p0, v4, v6}, Lcom/android/server/display/LogicalDisplayMapper;->getDisplayLocked(Lcom/android/server/display/DisplayDevice;Z)Lcom/android/server/display/LogicalDisplay;

    move-result-object v6

    .line 441
    .local v6, "logicalDisplay":Lcom/android/server/display/LogicalDisplay;
    if-nez v6, :cond_3

    .line 442
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "The logical display associated with address ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/android/server/display/layout/Layout$Display;->getAddress()Landroid/view/DisplayAddress;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDeviceState:Landroid/hardware/devicestate/DeviceState;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    return-object v1

    .line 446
    :cond_3
    new-instance v1, Landroid/view/DisplayInfo;

    invoke-virtual {v6}, Lcom/android/server/display/LogicalDisplay;->getDisplayInfoLocked()Landroid/view/DisplayInfo;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/view/DisplayInfo;-><init>(Landroid/view/DisplayInfo;)V

    .line 447
    .local v1, "displayInfo":Landroid/view/DisplayInfo;
    iput p2, v1, Landroid/view/DisplayInfo;->displayId:I

    .line 448
    return-object v1
.end method

.method public getDisplayLocked(I)Lcom/android/server/display/LogicalDisplay;
    .locals 1
    .param p1, "displayId"    # I

    .line 302
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/server/display/LogicalDisplayMapper;->getDisplayLocked(IZ)Lcom/android/server/display/LogicalDisplay;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayLocked(IZ)Lcom/android/server/display/LogicalDisplay;
    .locals 2
    .param p1, "displayId"    # I
    .param p2, "includeDisabled"    # Z

    .line 306
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mLogicalDisplays:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/display/LogicalDisplay;

    .line 307
    .local v0, "display":Lcom/android/server/display/LogicalDisplay;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/display/LogicalDisplay;->isEnabledLocked()Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz p2, :cond_1

    :cond_0
    goto :goto_0

    .line 310
    :cond_1
    const/4 v1, 0x0

    return-object v1

    .line 308
    :goto_0
    return-object v0
.end method

.method public getDisplayLocked(Lcom/android/server/display/DisplayDevice;)Lcom/android/server/display/LogicalDisplay;
    .locals 1
    .param p1, "device"    # Lcom/android/server/display/DisplayDevice;

    .line 314
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/server/display/LogicalDisplayMapper;->getDisplayLocked(Lcom/android/server/display/DisplayDevice;Z)Lcom/android/server/display/LogicalDisplay;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayLocked(Lcom/android/server/display/DisplayDevice;Z)Lcom/android/server/display/LogicalDisplay;
    .locals 5
    .param p1, "device"    # Lcom/android/server/display/DisplayDevice;
    .param p2, "includeDisabled"    # Z

    .line 318
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 319
    return-object v0

    .line 321
    :cond_0
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplayMapper;->mLogicalDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 322
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_4

    .line 323
    iget-object v3, p0, Lcom/android/server/display/LogicalDisplayMapper;->mLogicalDisplays:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/display/LogicalDisplay;

    .line 324
    .local v3, "display":Lcom/android/server/display/LogicalDisplay;
    invoke-virtual {v3}, Lcom/android/server/display/LogicalDisplay;->getPrimaryDisplayDeviceLocked()Lcom/android/server/display/DisplayDevice;

    move-result-object v4

    if-ne v4, p1, :cond_3

    .line 325
    invoke-virtual {v3}, Lcom/android/server/display/LogicalDisplay;->isEnabledLocked()Z

    move-result v4

    if-nez v4, :cond_1

    if-eqz p2, :cond_2

    :cond_1
    goto :goto_1

    .line 328
    :cond_2
    return-object v0

    .line 326
    :goto_1
    return-object v3

    .line 324
    :cond_3
    nop

    .line 322
    .end local v3    # "display":Lcom/android/server/display/LogicalDisplay;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    nop

    .line 331
    .end local v2    # "i":I
    return-object v0
.end method

.method onBootCompleted()V
    .locals 3

    .line 586
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    .line 587
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/android/server/display/LogicalDisplayMapper;->mBootCompleted:Z

    .line 588
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDeviceStateToBeAppliedAfterBoot:Landroid/hardware/devicestate/DeviceState;

    sget-object v2, Landroid/hardware/devicestate/DeviceStateManager;->INVALID_DEVICE_STATE:Landroid/hardware/devicestate/DeviceState;

    invoke-virtual {v1, v2}, Landroid/hardware/devicestate/DeviceState;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 589
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDeviceStateToBeAppliedAfterBoot:Landroid/hardware/devicestate/DeviceState;

    invoke-virtual {p0, v1}, Lcom/android/server/display/LogicalDisplayMapper;->setDeviceStateLocked(Landroid/hardware/devicestate/DeviceState;)V

    goto :goto_0

    .line 591
    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    .line 592
    return-void

    .line 591
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onDisplayDeviceChangedLocked(Lcom/android/server/display/DisplayDevice;I)V
    .locals 2
    .param p1, "device"    # Lcom/android/server/display/DisplayDevice;
    .param p2, "diff"    # I

    .line 285
    sget-boolean v0, Lcom/android/server/display/LogicalDisplayMapper;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 286
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Display device changed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LogicalDisplayMapper"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/display/LogicalDisplayMapper;->finishStateTransitionLocked(Z)V

    .line 289
    invoke-direct {p0, p2}, Lcom/android/server/display/LogicalDisplayMapper;->updateLogicalDisplaysLocked(I)V

    .line 290
    return-void
.end method

.method public onDisplayDeviceEventLocked(Lcom/android/server/display/DisplayDevice;I)V
    .locals 3
    .param p1, "device"    # Lcom/android/server/display/DisplayDevice;
    .param p2, "event"    # I

    .line 265
    const-string v0, "LogicalDisplayMapper"

    packed-switch p2, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 274
    :pswitch_1
    sget-boolean v1, Lcom/android/server/display/LogicalDisplayMapper;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 275
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Display device removed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/display/LogicalDisplayMapper;->handleDisplayDeviceRemovedLocked(Lcom/android/server/display/DisplayDevice;)V

    .line 278
    invoke-virtual {p0}, Lcom/android/server/display/LogicalDisplayMapper;->updateLogicalDisplaysLocked()V

    goto :goto_0

    .line 267
    :pswitch_2
    sget-boolean v1, Lcom/android/server/display/LogicalDisplayMapper;->DEBUG:Z

    if-eqz v1, :cond_1

    .line 268
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Display device added: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/server/display/LogicalDisplayMapper;->handleDisplayDeviceAddedLocked(Lcom/android/server/display/DisplayDevice;)V

    .line 271
    nop

    .line 281
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method onEarlyInteractivityChange(Z)V
    .locals 2
    .param p1, "interactive"    # Z

    .line 595
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    .line 596
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/display/LogicalDisplayMapper;->mInteractive:Z

    if-eq v1, p1, :cond_0

    .line 597
    iput-boolean p1, p0, Lcom/android/server/display/LogicalDisplayMapper;->mInteractive:Z

    .line 598
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/server/display/LogicalDisplayMapper;->finishStateTransitionLocked(Z)V

    goto :goto_0

    .line 600
    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    .line 601
    return-void

    .line 600
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onTraversalRequested()V
    .locals 1

    .line 294
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mListener:Lcom/android/server/display/LogicalDisplayMapper$Listener;

    invoke-interface {v0}, Lcom/android/server/display/LogicalDisplayMapper$Listener;->onTraversalRequested()V

    .line 295
    return-void
.end method

.method public onWindowManagerReady()V
    .locals 1

    .line 298
    const-class v0, Lcom/android/server/policy/WindowManagerPolicy;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/policy/WindowManagerPolicy;

    iput-object v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mWindowManagerPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    .line 299
    return-void
.end method

.method setDeviceStateLocked(Landroid/hardware/devicestate/DeviceState;)V
    .locals 8
    .param p1, "state"    # Landroid/hardware/devicestate/DeviceState;

    .line 515
    iget-boolean v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mBootCompleted:Z

    const-string v1, "Postponing transition to state: "

    const-string v2, "LogicalDisplayMapper"

    if-nez v0, :cond_1

    .line 518
    sget-boolean v0, Lcom/android/server/display/LogicalDisplayMapper;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 519
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/LogicalDisplayMapper;->mPendingDeviceState:Landroid/hardware/devicestate/DeviceState;

    .line 520
    invoke-virtual {v1}, Landroid/hardware/devicestate/DeviceState;->getIdentifier()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " until boot is completed"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 519
    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    :cond_0
    iput-object p1, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDeviceStateToBeAppliedAfterBoot:Landroid/hardware/devicestate/DeviceState;

    .line 523
    return-void

    .line 530
    :cond_1
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDeviceState:Landroid/hardware/devicestate/DeviceState;

    invoke-virtual {v0}, Landroid/hardware/devicestate/DeviceState;->getIdentifier()I

    move-result v0

    .line 531
    invoke-virtual {p1}, Landroid/hardware/devicestate/DeviceState;->getIdentifier()I

    move-result v3

    .line 530
    const/4 v4, 0x1

    invoke-direct {p0, v0, v3, v4}, Lcom/android/server/display/LogicalDisplayMapper;->resetLayoutLocked(IIZ)V

    .line 532
    iput-object p1, p0, Lcom/android/server/display/LogicalDisplayMapper;->mPendingDeviceState:Landroid/hardware/devicestate/DeviceState;

    .line 533
    sget-object v0, Landroid/hardware/devicestate/DeviceStateManager;->INVALID_DEVICE_STATE:Landroid/hardware/devicestate/DeviceState;

    iput-object v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDeviceStateToBeAppliedAfterBoot:Landroid/hardware/devicestate/DeviceState;

    .line 534
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mPendingDeviceState:Landroid/hardware/devicestate/DeviceState;

    iget-object v3, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDeviceState:Landroid/hardware/devicestate/DeviceState;

    iget-boolean v5, p0, Lcom/android/server/display/LogicalDisplayMapper;->mInteractive:Z

    iget-boolean v6, p0, Lcom/android/server/display/LogicalDisplayMapper;->mBootCompleted:Z

    invoke-virtual {p0, v0, v3, v5, v6}, Lcom/android/server/display/LogicalDisplayMapper;->shouldDeviceBeWoken(Landroid/hardware/devicestate/DeviceState;Landroid/hardware/devicestate/DeviceState;ZZ)Z

    move-result v0

    .line 536
    .local v0, "wakeDevice":Z
    iget-object v3, p0, Lcom/android/server/display/LogicalDisplayMapper;->mPendingDeviceState:Landroid/hardware/devicestate/DeviceState;

    iget-object v5, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDeviceState:Landroid/hardware/devicestate/DeviceState;

    iget-boolean v6, p0, Lcom/android/server/display/LogicalDisplayMapper;->mInteractive:Z

    iget-boolean v7, p0, Lcom/android/server/display/LogicalDisplayMapper;->mBootCompleted:Z

    invoke-virtual {p0, v3, v5, v6, v7}, Lcom/android/server/display/LogicalDisplayMapper;->shouldDeviceBePutToSleep(Landroid/hardware/devicestate/DeviceState;Landroid/hardware/devicestate/DeviceState;ZZ)Z

    move-result v3

    .line 539
    .local v3, "sleepDevice":Z
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Requesting Transition to state: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/hardware/devicestate/DeviceState;->getIdentifier()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", from state="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDeviceState:Landroid/hardware/devicestate/DeviceState;

    .line 540
    invoke-virtual {v6}, Landroid/hardware/devicestate/DeviceState;->getIdentifier()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", interactive="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p0, Lcom/android/server/display/LogicalDisplayMapper;->mInteractive:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", mBootCompleted="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p0, Lcom/android/server/display/LogicalDisplayMapper;->mBootCompleted:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", wakeDevice="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", sleepDevice="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 539
    invoke-static {v2, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 547
    invoke-direct {p0}, Lcom/android/server/display/LogicalDisplayMapper;->areAllTransitioningDisplaysOffLocked()Z

    move-result v5

    if-eqz v5, :cond_2

    if-nez v0, :cond_2

    if-nez v3, :cond_2

    .line 548
    invoke-direct {p0}, Lcom/android/server/display/LogicalDisplayMapper;->transitionToPendingStateLocked()V

    .line 549
    return-void

    .line 552
    :cond_2
    sget-boolean v5, Lcom/android/server/display/LogicalDisplayMapper;->DEBUG:Z

    if-eqz v5, :cond_3

    .line 553
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/LogicalDisplayMapper;->mPendingDeviceState:Landroid/hardware/devicestate/DeviceState;

    invoke-virtual {v1}, Landroid/hardware/devicestate/DeviceState;->getIdentifier()I

    move-result v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 557
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/display/LogicalDisplayMapper;->updateLogicalDisplaysLocked()V

    .line 559
    if-nez v0, :cond_4

    if-eqz v3, :cond_7

    .line 560
    :cond_4
    if-eqz v0, :cond_5

    .line 564
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplayMapper;->mHandler:Lcom/android/server/display/LogicalDisplayMapper$LogicalDisplayMapperHandler;

    new-instance v2, Lcom/android/server/display/LogicalDisplayMapper$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/android/server/display/LogicalDisplayMapper$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/display/LogicalDisplayMapper;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 568
    :cond_5
    if-eqz v3, :cond_7

    .line 571
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplayMapper;->mFoldSettingProvider:Lcom/android/server/utils/FoldSettingProvider;

    invoke-virtual {v1}, Lcom/android/server/utils/FoldSettingProvider;->shouldSleepOnFold()Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v1, 0x0

    goto :goto_0

    .line 572
    :cond_6
    const/4 v1, 0x2

    :goto_0
    nop

    .line 573
    .local v1, "goToSleepFlag":I
    iget-object v2, p0, Lcom/android/server/display/LogicalDisplayMapper;->mHandler:Lcom/android/server/display/LogicalDisplayMapper$LogicalDisplayMapperHandler;

    new-instance v5, Lcom/android/server/display/LogicalDisplayMapper$$ExternalSyntheticLambda1;

    invoke-direct {v5, p0, v1}, Lcom/android/server/display/LogicalDisplayMapper$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/display/LogicalDisplayMapper;I)V

    invoke-virtual {v2, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 581
    .end local v1    # "goToSleepFlag":I
    :cond_7
    :goto_1
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplayMapper;->mHandler:Lcom/android/server/display/LogicalDisplayMapper$LogicalDisplayMapperHandler;

    const-wide/16 v5, 0x1f4

    invoke-virtual {v1, v4, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 583
    return-void
.end method

.method setDisplayEnabledLocked(Lcom/android/server/display/LogicalDisplay;Z)V
    .locals 3
    .param p1, "display"    # Lcom/android/server/display/LogicalDisplay;
    .param p2, "enabled"    # Z

    .line 1404
    invoke-virtual {p1}, Lcom/android/server/display/LogicalDisplay;->isEnabledLocked()Z

    move-result v0

    .line 1405
    .local v0, "isEnabled":Z
    if-ne v0, p2, :cond_1

    .line 1406
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Display is already "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_0

    const-string v2, "enabled"

    goto :goto_0

    :cond_0
    const-string v2, "disabled"

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1407
    invoke-virtual {p1}, Lcom/android/server/display/LogicalDisplay;->getDisplayIdLocked()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1406
    const-string v2, "LogicalDisplayMapper"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1408
    return-void

    .line 1410
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/android/server/display/LogicalDisplayMapper;->setEnabledLocked(Lcom/android/server/display/LogicalDisplay;Z)V

    .line 1411
    invoke-virtual {p0}, Lcom/android/server/display/LogicalDisplayMapper;->updateLogicalDisplaysLocked()V

    .line 1412
    return-void
.end method

.method setEnabledLocked(Lcom/android/server/display/LogicalDisplay;Z)V
    .locals 6
    .param p1, "display"    # Lcom/android/server/display/LogicalDisplay;
    .param p2, "isEnabled"    # Z

    .line 1298
    invoke-virtual {p1}, Lcom/android/server/display/LogicalDisplay;->getDisplayIdLocked()I

    move-result v0

    .line 1299
    .local v0, "displayId":I
    invoke-virtual {p1}, Lcom/android/server/display/LogicalDisplay;->getDisplayInfoLocked()Landroid/view/DisplayInfo;

    move-result-object v1

    .line 1301
    .local v1, "info":Landroid/view/DisplayInfo;
    iget-boolean v2, p0, Lcom/android/server/display/LogicalDisplayMapper;->mSingleDisplayDemoMode:Z

    if-eqz v2, :cond_0

    iget v2, v1, Landroid/view/DisplayInfo;->type:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 1303
    .local v3, "disallowSecondaryDisplay":Z
    :goto_0
    const-string v2, "LogicalDisplayMapper"

    if-eqz p2, :cond_1

    if-eqz v3, :cond_1

    .line 1304
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Not creating a logical display for a secondary display because single display demo mode is enabled: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1305
    invoke-virtual {p1}, Lcom/android/server/display/LogicalDisplay;->getDisplayInfoLocked()Landroid/view/DisplayInfo;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1304
    invoke-static {v2, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1306
    const/4 p2, 0x0

    .line 1309
    :cond_1
    invoke-virtual {p1}, Lcom/android/server/display/LogicalDisplay;->isEnabledLocked()Z

    move-result v4

    if-eq v4, p2, :cond_2

    .line 1310
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SetEnabled on display "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1311
    invoke-virtual {p1, p2}, Lcom/android/server/display/LogicalDisplay;->setEnabledLocked(Z)V

    .line 1313
    :cond_2
    return-void
.end method

.method shouldDeviceBePutToSleep(Landroid/hardware/devicestate/DeviceState;Landroid/hardware/devicestate/DeviceState;ZZ)Z
    .locals 2
    .param p1, "pendingState"    # Landroid/hardware/devicestate/DeviceState;
    .param p2, "currentState"    # Landroid/hardware/devicestate/DeviceState;
    .param p3, "isInteractive"    # Z
    .param p4, "isBootCompleted"    # Z

    .line 658
    nop

    .line 659
    const/16 v0, 0xd

    invoke-virtual {p1, v0}, Landroid/hardware/devicestate/DeviceState;->hasProperty(I)Z

    move-result v1

    nop

    if-eqz v1, :cond_0

    sget-object v1, Landroid/hardware/devicestate/DeviceStateManager;->INVALID_DEVICE_STATE:Landroid/hardware/devicestate/DeviceState;

    .line 660
    invoke-virtual {p2, v1}, Landroid/hardware/devicestate/DeviceState;->equals(Ljava/lang/Object;)Z

    move-result v1

    nop

    if-nez v1, :cond_0

    .line 661
    invoke-virtual {p2, v0}, Landroid/hardware/devicestate/DeviceState;->hasProperty(I)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p3, :cond_0

    if-eqz p4, :cond_0

    iget-object v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mFoldSettingProvider:Lcom/android/server/utils/FoldSettingProvider;

    .line 664
    invoke-virtual {v0}, Lcom/android/server/utils/FoldSettingProvider;->shouldStayAwakeOnFold()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 659
    :goto_0
    return v0
.end method

.method shouldDeviceBeWoken(Landroid/hardware/devicestate/DeviceState;Landroid/hardware/devicestate/DeviceState;ZZ)Z
    .locals 3
    .param p1, "pendingState"    # Landroid/hardware/devicestate/DeviceState;
    .param p2, "currentState"    # Landroid/hardware/devicestate/DeviceState;
    .param p3, "isInteractive"    # Z
    .param p4, "isBootCompleted"    # Z

    .line 619
    nop

    .line 620
    const/16 v0, 0xa

    filled-new-array {v0}, [I

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/hardware/devicestate/DeviceState;->hasProperties([I)Z

    move-result v1

    const/4 v2, 0x0

    nop

    if-eqz v1, :cond_0

    filled-new-array {v0}, [I

    move-result-object v0

    .line 621
    invoke-virtual {p1, v0}, Landroid/hardware/devicestate/DeviceState;->hasProperties([I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 624
    return v2

    .line 627
    :cond_0
    const/16 v0, 0xe

    invoke-virtual {p1, v0}, Landroid/hardware/devicestate/DeviceState;->hasProperty(I)Z

    move-result v1

    nop

    if-eqz v1, :cond_1

    sget-object v1, Landroid/hardware/devicestate/DeviceStateManager;->INVALID_DEVICE_STATE:Landroid/hardware/devicestate/DeviceState;

    .line 628
    invoke-virtual {p2, v1}, Landroid/hardware/devicestate/DeviceState;->equals(Ljava/lang/Object;)Z

    move-result v1

    nop

    if-nez v1, :cond_1

    .line 629
    invoke-virtual {p2, v0}, Landroid/hardware/devicestate/DeviceState;->hasProperty(I)Z

    move-result v0

    if-nez v0, :cond_1

    if-nez p3, :cond_1

    if-eqz p4, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    nop

    .line 627
    :goto_0
    return v2
.end method

.method updateAndGetMaskForDisplayPropertyChanges(Landroid/view/DisplayInfo;)I
    .locals 3
    .param p1, "newDisplayInfo"    # Landroid/view/DisplayInfo;

    .line 980
    const/4 v0, 0x0

    .line 981
    .local v0, "mask":I
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplayMapper;->mTempDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v1}, Landroid/view/DisplayInfo;->getRefreshRate()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/DisplayInfo;->getRefreshRate()F

    move-result v2

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_0

    .line 982
    or-int/lit16 v0, v0, 0x200

    .line 985
    :cond_0
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplayMapper;->mFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

    invoke-virtual {v1}, Lcom/android/server/display/feature/DisplayManagerFlags;->isDisplayListenerPerformanceImprovementsEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/display/LogicalDisplayMapper;->mTempDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v1, Landroid/view/DisplayInfo;->state:I

    iget v2, p1, Landroid/view/DisplayInfo;->state:I

    if-eq v1, v2, :cond_1

    .line 987
    or-int/lit16 v0, v0, 0x400

    .line 990
    :cond_1
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplayMapper;->mFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

    invoke-virtual {v1}, Lcom/android/server/display/feature/DisplayManagerFlags;->isCommittedStateSeparateEventEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/display/LogicalDisplayMapper;->mTempDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v1, Landroid/view/DisplayInfo;->committedState:I

    iget v2, p1, Landroid/view/DisplayInfo;->committedState:I

    if-eq v1, v2, :cond_2

    .line 992
    or-int/lit16 v0, v0, 0x800

    .line 994
    :cond_2
    return v0
.end method

.method updateLogicalDisplays()V
    .locals 2

    .line 786
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    .line 787
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/display/LogicalDisplayMapper;->updateLogicalDisplaysLocked()V

    .line 788
    monitor-exit v0

    .line 789
    return-void

    .line 788
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method updateLogicalDisplaysLocked()V
    .locals 1

    .line 792
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/android/server/display/LogicalDisplayMapper;->updateLogicalDisplaysLocked(I)V

    .line 793
    return-void
.end method
