.class public Lcom/android/server/display/mode/DisplayModeDirector;
.super Ljava/lang/Object;
.source "DisplayModeDirector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/mode/DisplayModeDirector$RealInjector;,
        Lcom/android/server/display/mode/DisplayModeDirector$Injector;,
        Lcom/android/server/display/mode/DisplayModeDirector$DisplayDeviceConfigProvider;,
        Lcom/android/server/display/mode/DisplayModeDirector$DisplayModeDirectorHandler;,
        Lcom/android/server/display/mode/DisplayModeDirector$AppRequestObserver;,
        Lcom/android/server/display/mode/DisplayModeDirector$DeviceConfigDisplaySettings;,
        Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;,
        Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;,
        Lcom/android/server/display/mode/DisplayModeDirector$UdfpsObserver;,
        Lcom/android/server/display/mode/DisplayModeDirector$DisplayObserver;,
        Lcom/android/server/display/mode/DisplayModeDirector$HbmObserver;,
        Lcom/android/server/display/mode/DisplayModeDirector$ThermalCallback;,
        Lcom/android/server/display/mode/DisplayModeDirector$DesiredDisplayModeSpecs;,
        Lcom/android/server/display/mode/DisplayModeDirector$DesiredDisplayModeSpecsListener;
    }
.end annotation


# static fields
.field private static final MSG_DEFAULT_PEAK_REFRESH_RATE_CHANGED:I = 0x3

.field private static final MSG_HIGH_BRIGHTNESS_THRESHOLDS_CHANGED:I = 0x6

.field private static final MSG_LOW_BRIGHTNESS_THRESHOLDS_CHANGED:I = 0x2

.field private static final MSG_REFRESH_RATE_DELAY_SEND:I = 0x14

.field private static final MSG_REFRESH_RATE_IN_HBM_HDR_CHANGED:I = 0x8

.field private static final MSG_REFRESH_RATE_IN_HBM_SUNLIGHT_CHANGED:I = 0x7

.field private static final MSG_REFRESH_RATE_IN_HIGH_ZONE_CHANGED:I = 0x5

.field private static final MSG_REFRESH_RATE_IN_LOW_ZONE_CHANGED:I = 0x4

.field private static final MSG_REFRESH_RATE_RANGE_CHANGED:I = 0x1

.field private static final MSG_SWITCH_USER:I = 0x9

.field public static final SYNCHRONIZED_REFRESH_RATE_TARGET:F = 60.0f

.field public static final SYNCHRONIZED_REFRESH_RATE_TOLERANCE:F = 1.0f

.field private static final TAG:Ljava/lang/String; = "DisplayModeDirector"


# instance fields
.field private mAlwaysRespectAppRequest:Z

.field private final mAppRequestObserver:Lcom/android/server/display/mode/DisplayModeDirector$AppRequestObserver;

.field private mAppSupportedModesByDisplay:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "[",
            "Landroid/view/Display$Mode;",
            ">;"
        }
    .end annotation
.end field

.field private mBootFinished:Z

.field private mBrightnessObserver:Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;

.field private final mConfigParameterProvider:Lcom/android/server/display/feature/DeviceConfigParameterProvider;

.field private final mContext:Landroid/content/Context;

.field private mDefaultDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

.field private mDefaultModeByDisplay:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/view/Display$Mode;",
            ">;"
        }
    .end annotation
.end field

.field private mDesiredDisplayModeSpecsListener:Lcom/android/server/display/mode/DisplayModeDirector$DesiredDisplayModeSpecsListener;

.field private final mDeviceConfigDisplaySettings:Lcom/android/server/display/mode/DisplayModeDirector$DeviceConfigDisplaySettings;

.field private mDisplayDeviceConfigByDisplay:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/display/DisplayDeviceConfig;",
            ">;"
        }
    .end annotation
.end field

.field private final mDisplayDeviceConfigProvider:Lcom/android/server/display/mode/DisplayModeDirector$DisplayDeviceConfigProvider;

.field private final mDisplayManagerFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

.field private final mDisplayObserver:Lcom/android/server/display/mode/DisplayModeDirector$DisplayObserver;

.field private final mExternalDisplaysConnected:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mHandler:Lcom/android/server/display/mode/DisplayModeDirector$DisplayModeDirectorHandler;

.field private mHasArrSupport:Landroid/util/SparseBooleanArray;

.field private final mHasArrSupportFlagEnabled:Z

.field private final mHbmObserver:Lcom/android/server/display/mode/DisplayModeDirector$HbmObserver;

.field private final mInjector:Lcom/android/server/display/mode/DisplayModeDirector$Injector;

.field private final mIsBackUpSmoothDisplayAndForcePeakRefreshRateEnabled:Z

.field private final mIsDisplayResolutionRangeVotingEnabled:Z

.field private final mIsDisplaysRefreshRatesSynchronizationEnabled:Z

.field private final mIsExternalDisplayLimitModeEnabled:Z

.field private final mIsUserPreferredModeVoteEnabled:Z

.field private final mLock:Ljava/lang/Object;

.field private mLoggingEnabled:Z

.field private final mModeChangeObserver:Lcom/android/server/display/mode/ModeChangeObserver;

.field private mModeSwitchingType:I

.field private final mSensorObserver:Lcom/android/server/display/mode/ProximitySensorObserver;

.field private final mSettingsObserver:Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;

.field private mSupportedModesByDisplay:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "[",
            "Landroid/view/Display$Mode;",
            ">;"
        }
    .end annotation
.end field

.field private final mSupportsFrameRateOverride:Z

.field private final mSystemRequestObserver:Lcom/android/server/display/mode/SystemRequestObserver;

.field private final mThermalCallback:Lcom/android/server/display/mode/DisplayModeDirector$ThermalCallback;

.field private final mUdfpsObserver:Lcom/android/server/display/mode/DisplayModeDirector$UdfpsObserver;

.field private final mVotesStatsReporter:Lcom/android/server/display/mode/VotesStatsReporter;

.field private final mVotesStorage:Lcom/android/server/display/mode/VotesStorage;


# direct methods
.method public static synthetic $r8$lambda$CBSdi5wPAhAASfeb2bCpd2owPvs(Lcom/android/server/display/mode/DisplayModeDirector;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/display/mode/DisplayModeDirector;->notifyDesiredDisplayModeSpecsChangedLocked()V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmAppSupportedModesByDisplay(Lcom/android/server/display/mode/DisplayModeDirector;)Landroid/util/SparseArray;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mAppSupportedModesByDisplay:Landroid/util/SparseArray;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmBrightnessObserver(Lcom/android/server/display/mode/DisplayModeDirector;)Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mBrightnessObserver:Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmConfigParameterProvider(Lcom/android/server/display/mode/DisplayModeDirector;)Lcom/android/server/display/feature/DeviceConfigParameterProvider;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mConfigParameterProvider:Lcom/android/server/display/feature/DeviceConfigParameterProvider;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/display/mode/DisplayModeDirector;)Landroid/content/Context;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDefaultDisplayDeviceConfig(Lcom/android/server/display/mode/DisplayModeDirector;)Lcom/android/server/display/DisplayDeviceConfig;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mDefaultDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDefaultModeByDisplay(Lcom/android/server/display/mode/DisplayModeDirector;)Landroid/util/SparseArray;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mDefaultModeByDisplay:Landroid/util/SparseArray;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDeviceConfigDisplaySettings(Lcom/android/server/display/mode/DisplayModeDirector;)Lcom/android/server/display/mode/DisplayModeDirector$DeviceConfigDisplaySettings;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mDeviceConfigDisplaySettings:Lcom/android/server/display/mode/DisplayModeDirector$DeviceConfigDisplaySettings;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDisplayDeviceConfigByDisplay(Lcom/android/server/display/mode/DisplayModeDirector;)Landroid/util/SparseArray;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mDisplayDeviceConfigByDisplay:Landroid/util/SparseArray;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDisplayDeviceConfigProvider(Lcom/android/server/display/mode/DisplayModeDirector;)Lcom/android/server/display/mode/DisplayModeDirector$DisplayDeviceConfigProvider;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mDisplayDeviceConfigProvider:Lcom/android/server/display/mode/DisplayModeDirector$DisplayDeviceConfigProvider;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDisplayManagerFlags(Lcom/android/server/display/mode/DisplayModeDirector;)Lcom/android/server/display/feature/DisplayManagerFlags;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mDisplayManagerFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmExternalDisplaysConnected(Lcom/android/server/display/mode/DisplayModeDirector;)Ljava/util/Set;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mExternalDisplaysConnected:Ljava/util/Set;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/server/display/mode/DisplayModeDirector;)Lcom/android/server/display/mode/DisplayModeDirector$DisplayModeDirectorHandler;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mHandler:Lcom/android/server/display/mode/DisplayModeDirector$DisplayModeDirectorHandler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmHasArrSupport(Lcom/android/server/display/mode/DisplayModeDirector;)Landroid/util/SparseBooleanArray;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mHasArrSupport:Landroid/util/SparseBooleanArray;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmHbmObserver(Lcom/android/server/display/mode/DisplayModeDirector;)Lcom/android/server/display/mode/DisplayModeDirector$HbmObserver;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mHbmObserver:Lcom/android/server/display/mode/DisplayModeDirector$HbmObserver;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmInjector(Lcom/android/server/display/mode/DisplayModeDirector;)Lcom/android/server/display/mode/DisplayModeDirector$Injector;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mInjector:Lcom/android/server/display/mode/DisplayModeDirector$Injector;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsDisplayResolutionRangeVotingEnabled(Lcom/android/server/display/mode/DisplayModeDirector;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mIsDisplayResolutionRangeVotingEnabled:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsDisplaysRefreshRatesSynchronizationEnabled(Lcom/android/server/display/mode/DisplayModeDirector;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mIsDisplaysRefreshRatesSynchronizationEnabled:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsExternalDisplayLimitModeEnabled(Lcom/android/server/display/mode/DisplayModeDirector;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mIsExternalDisplayLimitModeEnabled:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsUserPreferredModeVoteEnabled(Lcom/android/server/display/mode/DisplayModeDirector;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mIsUserPreferredModeVoteEnabled:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmLock(Lcom/android/server/display/mode/DisplayModeDirector;)Ljava/lang/Object;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLoggingEnabled(Lcom/android/server/display/mode/DisplayModeDirector;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mLoggingEnabled:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmModeSwitchingType(Lcom/android/server/display/mode/DisplayModeDirector;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mModeSwitchingType:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmSettingsObserver(Lcom/android/server/display/mode/DisplayModeDirector;)Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mSettingsObserver:Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSupportedModesByDisplay(Lcom/android/server/display/mode/DisplayModeDirector;)Landroid/util/SparseArray;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mSupportedModesByDisplay:Landroid/util/SparseArray;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmVotesStorage(Lcom/android/server/display/mode/DisplayModeDirector;)Lcom/android/server/display/mode/VotesStorage;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mVotesStorage:Lcom/android/server/display/mode/VotesStorage;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmModeSwitchingType(Lcom/android/server/display/mode/DisplayModeDirector;I)V
    .locals 0

    .line 0
    iput p1, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mModeSwitchingType:I

    return-void
.end method

.method static bridge synthetic -$$Nest$mgetMaxRefreshRateForFingerPrintLocked(Lcom/android/server/display/mode/DisplayModeDirector;I)F
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/display/mode/DisplayModeDirector;->getMaxRefreshRateForFingerPrintLocked(I)F

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mgetMaxRefreshRateLocked(Lcom/android/server/display/mode/DisplayModeDirector;I)F
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/display/mode/DisplayModeDirector;->getMaxRefreshRateLocked(I)F

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mnotifyDesiredDisplayModeSpecsChangedLocked(Lcom/android/server/display/mode/DisplayModeDirector;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/display/mode/DisplayModeDirector;->notifyDesiredDisplayModeSpecsChangedLocked()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/display/feature/DisplayManagerFlags;Lcom/android/server/display/mode/DisplayModeDirector$DisplayDeviceConfigProvider;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "displayManagerFlags"    # Lcom/android/server/display/feature/DisplayManagerFlags;
    .param p4, "displayDeviceConfigProvider"    # Lcom/android/server/display/mode/DisplayModeDirector$DisplayDeviceConfigProvider;

    .line 232
    new-instance v3, Lcom/android/server/display/mode/DisplayModeDirector$RealInjector;

    invoke-direct {v3, p1}, Lcom/android/server/display/mode/DisplayModeDirector$RealInjector;-><init>(Landroid/content/Context;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "handler":Landroid/os/Handler;
    .end local p3    # "displayManagerFlags":Lcom/android/server/display/feature/DisplayManagerFlags;
    .end local p4    # "displayDeviceConfigProvider":Lcom/android/server/display/mode/DisplayModeDirector$DisplayDeviceConfigProvider;
    .local v1, "context":Landroid/content/Context;
    .local v2, "handler":Landroid/os/Handler;
    .local v4, "displayManagerFlags":Lcom/android/server/display/feature/DisplayManagerFlags;
    .local v5, "displayDeviceConfigProvider":Lcom/android/server/display/mode/DisplayModeDirector$DisplayDeviceConfigProvider;
    invoke-direct/range {v0 .. v5}, Lcom/android/server/display/mode/DisplayModeDirector;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/display/mode/DisplayModeDirector$Injector;Lcom/android/server/display/feature/DisplayManagerFlags;Lcom/android/server/display/mode/DisplayModeDirector$DisplayDeviceConfigProvider;)V

    .line 234
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/display/mode/DisplayModeDirector$Injector;Lcom/android/server/display/feature/DisplayManagerFlags;Lcom/android/server/display/mode/DisplayModeDirector$DisplayDeviceConfigProvider;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "injector"    # Lcom/android/server/display/mode/DisplayModeDirector$Injector;
    .param p4, "displayManagerFlags"    # Lcom/android/server/display/feature/DisplayManagerFlags;
    .param p5, "displayDeviceConfigProvider"    # Lcom/android/server/display/mode/DisplayModeDirector$DisplayDeviceConfigProvider;

    .line 239
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 138
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mLock:Ljava/lang/Object;

    .line 174
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mDisplayDeviceConfigByDisplay:Landroid/util/SparseArray;

    .line 176
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mExternalDisplaysConnected:Ljava/util/Set;

    .line 201
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mModeSwitchingType:I

    .line 240
    nop

    .line 241
    invoke-virtual {p4}, Lcom/android/server/display/feature/DisplayManagerFlags;->isDisplayResolutionRangeVotingEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mIsDisplayResolutionRangeVotingEnabled:Z

    .line 242
    invoke-virtual {p4}, Lcom/android/server/display/feature/DisplayManagerFlags;->isUserPreferredModeVoteEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mIsUserPreferredModeVoteEnabled:Z

    .line 243
    nop

    .line 244
    invoke-virtual {p4}, Lcom/android/server/display/feature/DisplayManagerFlags;->isExternalDisplayLimitModeEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mIsExternalDisplayLimitModeEnabled:Z

    .line 245
    nop

    .line 246
    invoke-virtual {p4}, Lcom/android/server/display/feature/DisplayManagerFlags;->isDisplaysRefreshRatesSynchronizationEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mIsDisplaysRefreshRatesSynchronizationEnabled:Z

    .line 247
    nop

    .line 248
    invoke-virtual {p4}, Lcom/android/server/display/feature/DisplayManagerFlags;->isBackUpSmoothDisplayAndForcePeakRefreshRateEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mIsBackUpSmoothDisplayAndForcePeakRefreshRateEnabled:Z

    .line 249
    invoke-virtual {p4}, Lcom/android/server/display/feature/DisplayManagerFlags;->hasArrSupportFlag()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mHasArrSupportFlagEnabled:Z

    .line 250
    iput-object p4, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mDisplayManagerFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

    .line 251
    iput-object p5, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mDisplayDeviceConfigProvider:Lcom/android/server/display/mode/DisplayModeDirector$DisplayDeviceConfigProvider;

    .line 252
    iput-object p1, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mContext:Landroid/content/Context;

    .line 253
    new-instance v0, Lcom/android/server/display/mode/DisplayModeDirector$DisplayModeDirectorHandler;

    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/display/mode/DisplayModeDirector$DisplayModeDirectorHandler;-><init>(Lcom/android/server/display/mode/DisplayModeDirector;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mHandler:Lcom/android/server/display/mode/DisplayModeDirector$DisplayModeDirectorHandler;

    .line 254
    iput-object p3, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mInjector:Lcom/android/server/display/mode/DisplayModeDirector$Injector;

    .line 255
    invoke-interface {p3}, Lcom/android/server/display/mode/DisplayModeDirector$Injector;->getVotesStatsReporter()Lcom/android/server/display/mode/VotesStatsReporter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mVotesStatsReporter:Lcom/android/server/display/mode/VotesStatsReporter;

    .line 256
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mSupportedModesByDisplay:Landroid/util/SparseArray;

    .line 257
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mAppSupportedModesByDisplay:Landroid/util/SparseArray;

    .line 258
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mDefaultModeByDisplay:Landroid/util/SparseArray;

    .line 259
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mHasArrSupport:Landroid/util/SparseBooleanArray;

    .line 260
    new-instance v0, Lcom/android/server/display/mode/DisplayModeDirector$AppRequestObserver;

    invoke-direct {v0, p0, p4}, Lcom/android/server/display/mode/DisplayModeDirector$AppRequestObserver;-><init>(Lcom/android/server/display/mode/DisplayModeDirector;Lcom/android/server/display/feature/DisplayManagerFlags;)V

    iput-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mAppRequestObserver:Lcom/android/server/display/mode/DisplayModeDirector$AppRequestObserver;

    .line 261
    new-instance v0, Lcom/android/server/display/feature/DeviceConfigParameterProvider;

    invoke-interface {p3}, Lcom/android/server/display/mode/DisplayModeDirector$Injector;->getDeviceConfig()Landroid/provider/DeviceConfigInterface;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/server/display/feature/DeviceConfigParameterProvider;-><init>(Landroid/provider/DeviceConfigInterface;)V

    iput-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mConfigParameterProvider:Lcom/android/server/display/feature/DeviceConfigParameterProvider;

    .line 262
    new-instance v0, Lcom/android/server/display/mode/DisplayModeDirector$DeviceConfigDisplaySettings;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/display/mode/DisplayModeDirector$DeviceConfigDisplaySettings;-><init>(Lcom/android/server/display/mode/DisplayModeDirector;Lcom/android/server/display/mode/DisplayModeDirector-IA;)V

    iput-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mDeviceConfigDisplaySettings:Lcom/android/server/display/mode/DisplayModeDirector$DeviceConfigDisplaySettings;

    .line 263
    new-instance v0, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;

    invoke-direct {v0, p0, p1, p2, p4}, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;-><init>(Lcom/android/server/display/mode/DisplayModeDirector;Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/display/feature/DisplayManagerFlags;)V

    iput-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mSettingsObserver:Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;

    .line 264
    new-instance v2, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "handler":Landroid/os/Handler;
    .end local p3    # "injector":Lcom/android/server/display/mode/DisplayModeDirector$Injector;
    .end local p4    # "displayManagerFlags":Lcom/android/server/display/feature/DisplayManagerFlags;
    .local v4, "context":Landroid/content/Context;
    .local v5, "handler":Landroid/os/Handler;
    .local v6, "injector":Lcom/android/server/display/mode/DisplayModeDirector$Injector;
    .local v7, "displayManagerFlags":Lcom/android/server/display/feature/DisplayManagerFlags;
    invoke-direct/range {v2 .. v7}, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;-><init>(Lcom/android/server/display/mode/DisplayModeDirector;Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/display/mode/DisplayModeDirector$Injector;Lcom/android/server/display/feature/DisplayManagerFlags;)V

    move-object v8, v6

    move-object p1, v7

    move-object v6, v5

    move-object v5, v4

    move-object v4, v3

    .end local v4    # "context":Landroid/content/Context;
    .end local v7    # "displayManagerFlags":Lcom/android/server/display/feature/DisplayManagerFlags;
    .local v5, "context":Landroid/content/Context;
    .local v6, "handler":Landroid/os/Handler;
    .local v8, "injector":Lcom/android/server/display/mode/DisplayModeDirector$Injector;
    .local p1, "displayManagerFlags":Lcom/android/server/display/feature/DisplayManagerFlags;
    iput-object v2, v4, Lcom/android/server/display/mode/DisplayModeDirector;->mBrightnessObserver:Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;

    .line 266
    iput-object v1, v4, Lcom/android/server/display/mode/DisplayModeDirector;->mDefaultDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    .line 267
    new-instance p2, Lcom/android/server/display/mode/DisplayModeDirector$UdfpsObserver;

    invoke-direct {p2, p0, v1}, Lcom/android/server/display/mode/DisplayModeDirector$UdfpsObserver;-><init>(Lcom/android/server/display/mode/DisplayModeDirector;Lcom/android/server/display/mode/DisplayModeDirector-IA;)V

    iput-object p2, v4, Lcom/android/server/display/mode/DisplayModeDirector;->mUdfpsObserver:Lcom/android/server/display/mode/DisplayModeDirector$UdfpsObserver;

    .line 268
    new-instance p2, Lcom/android/server/display/mode/VotesStorage;

    new-instance p3, Lcom/android/server/display/mode/DisplayModeDirector$$ExternalSyntheticLambda0;

    invoke-direct {p3, p0}, Lcom/android/server/display/mode/DisplayModeDirector$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/display/mode/DisplayModeDirector;)V

    iget-object p4, v4, Lcom/android/server/display/mode/DisplayModeDirector;->mVotesStatsReporter:Lcom/android/server/display/mode/VotesStatsReporter;

    invoke-direct {p2, p3, p4}, Lcom/android/server/display/mode/VotesStorage;-><init>(Lcom/android/server/display/mode/VotesStorage$Listener;Lcom/android/server/display/mode/VotesStatsReporter;)V

    iput-object p2, v4, Lcom/android/server/display/mode/DisplayModeDirector;->mVotesStorage:Lcom/android/server/display/mode/VotesStorage;

    .line 270
    new-instance v3, Lcom/android/server/display/mode/DisplayModeDirector$DisplayObserver;

    iget-object v7, v4, Lcom/android/server/display/mode/DisplayModeDirector;->mVotesStorage:Lcom/android/server/display/mode/VotesStorage;

    invoke-direct/range {v3 .. v8}, Lcom/android/server/display/mode/DisplayModeDirector$DisplayObserver;-><init>(Lcom/android/server/display/mode/DisplayModeDirector;Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/display/mode/VotesStorage;Lcom/android/server/display/mode/DisplayModeDirector$Injector;)V

    move-object p2, v5

    move-object p3, v6

    .end local v5    # "context":Landroid/content/Context;
    .end local v6    # "handler":Landroid/os/Handler;
    .local p2, "context":Landroid/content/Context;
    .local p3, "handler":Landroid/os/Handler;
    iput-object v3, v4, Lcom/android/server/display/mode/DisplayModeDirector;->mDisplayObserver:Lcom/android/server/display/mode/DisplayModeDirector$DisplayObserver;

    .line 271
    new-instance p4, Lcom/android/server/display/mode/ProximitySensorObserver;

    iget-object v0, v4, Lcom/android/server/display/mode/DisplayModeDirector;->mVotesStorage:Lcom/android/server/display/mode/VotesStorage;

    invoke-direct {p4, v0, v8}, Lcom/android/server/display/mode/ProximitySensorObserver;-><init>(Lcom/android/server/display/mode/VotesStorage;Lcom/android/server/display/mode/DisplayModeDirector$Injector;)V

    iput-object p4, v4, Lcom/android/server/display/mode/DisplayModeDirector;->mSensorObserver:Lcom/android/server/display/mode/ProximitySensorObserver;

    .line 275
    new-instance p4, Lcom/android/server/display/mode/ModeChangeObserver;

    iget-object v0, v4, Lcom/android/server/display/mode/DisplayModeDirector;->mVotesStorage:Lcom/android/server/display/mode/VotesStorage;

    invoke-virtual {p3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {p4, v0, v8, v2}, Lcom/android/server/display/mode/ModeChangeObserver;-><init>(Lcom/android/server/display/mode/VotesStorage;Lcom/android/server/display/mode/DisplayModeDirector$Injector;Landroid/os/Looper;)V

    iput-object p4, v4, Lcom/android/server/display/mode/DisplayModeDirector;->mModeChangeObserver:Lcom/android/server/display/mode/ModeChangeObserver;

    .line 276
    new-instance v3, Lcom/android/server/display/mode/DisplayModeDirector$HbmObserver;

    iget-object v6, v4, Lcom/android/server/display/mode/DisplayModeDirector;->mVotesStorage:Lcom/android/server/display/mode/VotesStorage;

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v7

    move-object v5, v8

    .end local v8    # "injector":Lcom/android/server/display/mode/DisplayModeDirector$Injector;
    .local v5, "injector":Lcom/android/server/display/mode/DisplayModeDirector$Injector;
    iget-object v8, v4, Lcom/android/server/display/mode/DisplayModeDirector;->mDeviceConfigDisplaySettings:Lcom/android/server/display/mode/DisplayModeDirector$DeviceConfigDisplaySettings;

    invoke-direct/range {v3 .. v8}, Lcom/android/server/display/mode/DisplayModeDirector$HbmObserver;-><init>(Lcom/android/server/display/mode/DisplayModeDirector;Lcom/android/server/display/mode/DisplayModeDirector$Injector;Lcom/android/server/display/mode/VotesStorage;Landroid/os/Handler;Lcom/android/server/display/mode/DisplayModeDirector$DeviceConfigDisplaySettings;)V

    move-object v8, v5

    .end local v5    # "injector":Lcom/android/server/display/mode/DisplayModeDirector$Injector;
    .restart local v8    # "injector":Lcom/android/server/display/mode/DisplayModeDirector$Injector;
    iput-object v3, v4, Lcom/android/server/display/mode/DisplayModeDirector;->mHbmObserver:Lcom/android/server/display/mode/DisplayModeDirector$HbmObserver;

    .line 278
    invoke-virtual {p1}, Lcom/android/server/display/feature/DisplayManagerFlags;->isRestrictDisplayModesEnabled()Z

    move-result p4

    if-eqz p4, :cond_0

    .line 279
    new-instance p4, Lcom/android/server/display/mode/SystemRequestObserver;

    iget-object v0, v4, Lcom/android/server/display/mode/DisplayModeDirector;->mVotesStorage:Lcom/android/server/display/mode/VotesStorage;

    invoke-direct {p4, v0}, Lcom/android/server/display/mode/SystemRequestObserver;-><init>(Lcom/android/server/display/mode/VotesStorage;)V

    iput-object p4, v4, Lcom/android/server/display/mode/DisplayModeDirector;->mSystemRequestObserver:Lcom/android/server/display/mode/SystemRequestObserver;

    goto :goto_0

    .line 281
    :cond_0
    iput-object v1, v4, Lcom/android/server/display/mode/DisplayModeDirector;->mSystemRequestObserver:Lcom/android/server/display/mode/SystemRequestObserver;

    .line 283
    :goto_0
    const/4 p4, 0x0

    iput-boolean p4, v4, Lcom/android/server/display/mode/DisplayModeDirector;->mAlwaysRespectAppRequest:Z

    .line 284
    invoke-interface {v8}, Lcom/android/server/display/mode/DisplayModeDirector$Injector;->supportsFrameRateOverride()Z

    move-result v0

    iput-boolean v0, v4, Lcom/android/server/display/mode/DisplayModeDirector;->mSupportsFrameRateOverride:Z

    .line 287
    new-instance v0, Lcom/android/server/display/mode/DisplayModeDirector$ThermalCallback;

    const-string v1, "fps"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/display/mode/DisplayModeDirector$ThermalCallback;-><init>(Lcom/android/server/display/mode/DisplayModeDirector;[Ljava/lang/String;)V

    iput-object v0, v4, Lcom/android/server/display/mode/DisplayModeDirector;->mThermalCallback:Lcom/android/server/display/mode/DisplayModeDirector$ThermalCallback;

    .line 288
    iput-boolean p4, v4, Lcom/android/server/display/mode/DisplayModeDirector;->mBootFinished:Z

    .line 290
    return-void
.end method

.method private getMaxRefreshRateForFingerPrintLocked(I)F
    .locals 7
    .param p1, "displayId"    # I

    .line 690
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mSupportedModesByDisplay:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/view/Display$Mode;

    .line 691
    .local v0, "modes":[Landroid/view/Display$Mode;
    const/4 v1, 0x0

    .line 692
    .local v1, "maxRefreshRate":F
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v0, v3

    .line 693
    .local v4, "mode":Landroid/view/Display$Mode;
    invoke-virtual {v4}, Landroid/view/Display$Mode;->getRefreshRate()F

    move-result v5

    const/high16 v6, 0x42f20000    # 121.0f

    cmpg-float v5, v5, v6

    if-gez v5, :cond_0

    invoke-virtual {v4}, Landroid/view/Display$Mode;->getRefreshRate()F

    move-result v5

    cmpl-float v5, v5, v1

    if-lez v5, :cond_0

    .line 694
    invoke-virtual {v4}, Landroid/view/Display$Mode;->getRefreshRate()F

    move-result v1

    .line 692
    .end local v4    # "mode":Landroid/view/Display$Mode;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 697
    :cond_1
    return v1
.end method

.method private getMaxRefreshRateLocked(I)F
    .locals 6
    .param p1, "displayId"    # I

    .line 677
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mSupportedModesByDisplay:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/view/Display$Mode;

    .line 678
    .local v0, "modes":[Landroid/view/Display$Mode;
    const/4 v1, 0x0

    .line 679
    .local v1, "maxRefreshRate":F
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v0, v3

    .line 680
    .local v4, "mode":Landroid/view/Display$Mode;
    invoke-virtual {v4}, Landroid/view/Display$Mode;->getRefreshRate()F

    move-result v5

    cmpl-float v5, v5, v1

    if-lez v5, :cond_0

    .line 681
    invoke-virtual {v4}, Landroid/view/Display$Mode;->getRefreshRate()F

    move-result v1

    .line 679
    .end local v4    # "mode":Landroid/view/Display$Mode;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 684
    :cond_1
    return v1
.end method

.method private isVrrSupportedLocked(I)Z
    .locals 4
    .param p1, "displayId"    # I

    .line 509
    iget-boolean v0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mHasArrSupportFlagEnabled:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 510
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mHasArrSupport:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 511
    .local v0, "hasArrSupport":Ljava/lang/Boolean;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    move v1, v2

    :cond_0
    return v1

    .line 514
    .end local v0    # "hasArrSupport":Ljava/lang/Boolean;
    :cond_1
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mDisplayDeviceConfigByDisplay:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/display/DisplayDeviceConfig;

    .line 515
    .local v0, "config":Lcom/android/server/display/DisplayDeviceConfig;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/server/display/DisplayDeviceConfig;->isVrrSupportEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    move v1, v2

    :cond_2
    return v1
.end method

.method private notifyDesiredDisplayModeSpecsChangedLocked()V
    .locals 3

    .line 703
    iget-boolean v0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mBootFinished:Z

    if-nez v0, :cond_0

    .line 704
    return-void

    .line 708
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mDesiredDisplayModeSpecsListener:Lcom/android/server/display/mode/DisplayModeDirector$DesiredDisplayModeSpecsListener;

    nop

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mHandler:Lcom/android/server/display/mode/DisplayModeDirector$DisplayModeDirectorHandler;

    .line 709
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 714
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mHandler:Lcom/android/server/display/mode/DisplayModeDirector$DisplayModeDirectorHandler;

    iget-object v2, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mDesiredDisplayModeSpecsListener:Lcom/android/server/display/mode/DisplayModeDirector$DesiredDisplayModeSpecsListener;

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 716
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 718
    .end local v0    # "msg":Landroid/os/Message;
    :cond_1
    return-void
.end method

.method private static switchingTypeToString(I)Ljava/lang/String;
    .locals 2
    .param p0, "type"    # I

    .line 725
    packed-switch p0, :pswitch_data_0

    .line 735
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown SwitchingType "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 733
    :pswitch_0
    const-string v0, "SWITCHING_TYPE_RENDER_FRAME_RATE_ONLY"

    return-object v0

    .line 731
    :pswitch_1
    const-string v0, "SWITCHING_TYPE_ACROSS_AND_WITHIN_GROUPS"

    return-object v0

    .line 729
    :pswitch_2
    const-string v0, "SWITCHING_TYPE_WITHIN_GROUPS"

    return-object v0

    .line 727
    :pswitch_3
    const-string v0, "SWITCHING_TYPE_NONE"

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


# virtual methods
.method addExternalDisplayId(I)V
    .locals 2
    .param p1, "externalDisplayId"    # I

    .line 766
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mExternalDisplaysConnected:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 767
    return-void
.end method

.method public defaultDisplayDeviceUpdated(Lcom/android/server/display/DisplayDeviceConfig;)V
    .locals 3
    .param p1, "displayDeviceConfig"    # Lcom/android/server/display/DisplayDeviceConfig;

    .line 538
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 539
    :try_start_0
    iput-object p1, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mDefaultDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    .line 540
    iget-object v1, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mSettingsObserver:Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->setRefreshRates(Lcom/android/server/display/DisplayDeviceConfig;Z)V

    .line 542
    iget-object v1, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mBrightnessObserver:Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;

    invoke-virtual {v1, p1, v2}, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->updateBlockingZoneThresholds(Lcom/android/server/display/DisplayDeviceConfig;Z)V

    .line 544
    iget-object v1, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mBrightnessObserver:Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;

    invoke-static {v1, p1}, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->-$$Nest$mloadIdleScreenRefreshRateConfigs(Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;Lcom/android/server/display/DisplayDeviceConfig;)V

    .line 545
    iget-object v1, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mBrightnessObserver:Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;

    invoke-static {v1, p1}, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->-$$Nest$mreloadLightSensor(Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;Lcom/android/server/display/DisplayDeviceConfig;)V

    .line 546
    iget-object v1, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mHbmObserver:Lcom/android/server/display/mode/DisplayModeDirector$HbmObserver;

    invoke-virtual {v1, p1}, Lcom/android/server/display/mode/DisplayModeDirector$HbmObserver;->setupHdrRefreshRates(Lcom/android/server/display/DisplayDeviceConfig;)V

    .line 547
    monitor-exit v0

    .line 548
    return-void

    .line 547
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 6
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 639
    const-string v0, "DisplayModeDirector:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 640
    const-string v0, "--------------------"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 641
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 642
    :try_start_0
    const-string v1, "  mSupportedModesByDisplay:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 643
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mSupportedModesByDisplay:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 644
    iget-object v2, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mSupportedModesByDisplay:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 645
    .local v2, "id":I
    iget-object v3, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mSupportedModesByDisplay:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/view/Display$Mode;

    .line 646
    .local v3, "modes":[Landroid/view/Display$Mode;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "    "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " -> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 643
    .end local v2    # "id":I
    .end local v3    # "modes":[Landroid/view/Display$Mode;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 670
    .end local v1    # "i":I
    :catchall_0
    move-exception v1

    goto/16 :goto_3

    .line 643
    .restart local v1    # "i":I
    :cond_0
    nop

    .line 648
    .end local v1    # "i":I
    const-string v1, "  mAppSupportedModesByDisplay:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 649
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    iget-object v2, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mAppSupportedModesByDisplay:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 650
    iget-object v2, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mAppSupportedModesByDisplay:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 651
    .restart local v2    # "id":I
    iget-object v3, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mAppSupportedModesByDisplay:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/view/Display$Mode;

    .line 652
    .restart local v3    # "modes":[Landroid/view/Display$Mode;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "    "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " -> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 649
    .end local v2    # "id":I
    .end local v3    # "modes":[Landroid/view/Display$Mode;
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    nop

    .line 654
    .end local v1    # "i":I
    const-string v1, "  mDefaultModeByDisplay:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 655
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_2
    iget-object v2, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mDefaultModeByDisplay:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 656
    iget-object v2, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mDefaultModeByDisplay:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 657
    .restart local v2    # "id":I
    iget-object v3, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mDefaultModeByDisplay:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/Display$Mode;

    .line 658
    .local v3, "mode":Landroid/view/Display$Mode;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "    "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " -> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 655
    .end local v2    # "id":I
    .end local v3    # "mode":Landroid/view/Display$Mode;
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    nop

    .line 660
    .end local v1    # "i":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mModeSwitchingType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mModeSwitchingType:I

    invoke-static {v2}, Lcom/android/server/display/mode/DisplayModeDirector;->switchingTypeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 661
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mAlwaysRespectAppRequest: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mAlwaysRespectAppRequest:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 662
    iget-object v1, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mSettingsObserver:Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;

    invoke-virtual {v1, p1}, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->dumpLocked(Ljava/io/PrintWriter;)V

    .line 663
    iget-object v1, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mAppRequestObserver:Lcom/android/server/display/mode/DisplayModeDirector$AppRequestObserver;

    invoke-static {v1, p1}, Lcom/android/server/display/mode/DisplayModeDirector$AppRequestObserver;->-$$Nest$mdumpLocked(Lcom/android/server/display/mode/DisplayModeDirector$AppRequestObserver;Ljava/io/PrintWriter;)V

    .line 664
    iget-object v1, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mBrightnessObserver:Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;

    invoke-virtual {v1, p1}, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->dumpLocked(Ljava/io/PrintWriter;)V

    .line 665
    iget-object v1, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mUdfpsObserver:Lcom/android/server/display/mode/DisplayModeDirector$UdfpsObserver;

    invoke-virtual {v1, p1}, Lcom/android/server/display/mode/DisplayModeDirector$UdfpsObserver;->dumpLocked(Ljava/io/PrintWriter;)V

    .line 666
    iget-object v1, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mHbmObserver:Lcom/android/server/display/mode/DisplayModeDirector$HbmObserver;

    invoke-virtual {v1, p1}, Lcom/android/server/display/mode/DisplayModeDirector$HbmObserver;->dumpLocked(Ljava/io/PrintWriter;)V

    .line 670
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 671
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mVotesStorage:Lcom/android/server/display/mode/VotesStorage;

    invoke-virtual {v0, p1}, Lcom/android/server/display/mode/VotesStorage;->dump(Ljava/io/PrintWriter;)V

    .line 672
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mSensorObserver:Lcom/android/server/display/mode/ProximitySensorObserver;

    invoke-virtual {v0, p1}, Lcom/android/server/display/mode/ProximitySensorObserver;->dump(Ljava/io/PrintWriter;)V

    .line 673
    return-void

    .line 670
    :goto_3
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public getAppRequestObserver()Lcom/android/server/display/mode/DisplayModeDirector$AppRequestObserver;
    .locals 1

    .line 504
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mAppRequestObserver:Lcom/android/server/display/mode/DisplayModeDirector$AppRequestObserver;

    return-object v0
.end method

.method getBrightnessObserver()Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;
    .locals 1

    .line 776
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mBrightnessObserver:Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;

    return-object v0
.end method

.method public getDesiredDisplayModeSpecs(I)Lcom/android/server/display/mode/DisplayModeDirector$DesiredDisplayModeSpecs;
    .locals 25
    .param p1, "displayId"    # I

    .line 364
    move-object/from16 v1, p0

    move/from16 v2, p1

    iget-object v3, v1, Lcom/android/server/display/mode/DisplayModeDirector;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 365
    :try_start_0
    iget-object v0, v1, Lcom/android/server/display/mode/DisplayModeDirector;->mVotesStorage:Lcom/android/server/display/mode/VotesStorage;

    invoke-virtual {v0, v2}, Lcom/android/server/display/mode/VotesStorage;->getVotes(I)Landroid/util/SparseArray;

    move-result-object v0

    .line 366
    .local v0, "votes":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/display/mode/Vote;>;"
    iget-object v4, v1, Lcom/android/server/display/mode/DisplayModeDirector;->mSupportedModesByDisplay:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/view/Display$Mode;

    .line 367
    .local v4, "modes":[Landroid/view/Display$Mode;
    iget-object v5, v1, Lcom/android/server/display/mode/DisplayModeDirector;->mDefaultModeByDisplay:Landroid/util/SparseArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/Display$Mode;

    .line 368
    .local v5, "defaultMode":Landroid/view/Display$Mode;
    if-eqz v4, :cond_d

    if-nez v5, :cond_0

    move-object/from16 v20, v0

    move-object/from16 v21, v4

    move-object/from16 v22, v5

    goto/16 :goto_5

    .line 375
    :cond_0
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 376
    .local v6, "availableModes":Ljava/util/List;, "Ljava/util/List<Landroid/view/Display$Mode;>;"
    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 377
    new-instance v7, Lcom/android/server/display/mode/VoteSummary;

    iget-boolean v8, v1, Lcom/android/server/display/mode/DisplayModeDirector;->mIsDisplayResolutionRangeVotingEnabled:Z

    .line 378
    invoke-direct/range {p0 .. p1}, Lcom/android/server/display/mode/DisplayModeDirector;->isVrrSupportedLocked(I)Z

    move-result v9

    iget-boolean v10, v1, Lcom/android/server/display/mode/DisplayModeDirector;->mLoggingEnabled:Z

    iget-boolean v11, v1, Lcom/android/server/display/mode/DisplayModeDirector;->mSupportsFrameRateOverride:Z

    invoke-direct {v7, v8, v9, v10, v11}, Lcom/android/server/display/mode/VoteSummary;-><init>(ZZZZ)V

    .line 380
    .local v7, "primarySummary":Lcom/android/server/display/mode/VoteSummary;
    const/4 v8, 0x0

    .line 381
    .local v8, "lowestConsideredPriority":I
    const/16 v9, 0x17

    .line 383
    .local v9, "highestConsideredPriority":I
    iget-boolean v10, v1, Lcom/android/server/display/mode/DisplayModeDirector;->mAlwaysRespectAppRequest:Z

    if-eqz v10, :cond_1

    .line 384
    const/4 v8, 0x5

    .line 385
    const/4 v9, 0x7

    .line 390
    :cond_1
    :goto_0
    if-gt v8, v9, :cond_4

    .line 391
    invoke-virtual {v7, v0, v8, v9}, Lcom/android/server/display/mode/VoteSummary;->applyVotes(Landroid/util/SparseArray;II)V

    .line 394
    invoke-virtual {v7, v5, v4}, Lcom/android/server/display/mode/VoteSummary;->adjustSize(Landroid/view/Display$Mode;[Landroid/view/Display$Mode;)V

    .line 396
    invoke-virtual {v7, v4}, Lcom/android/server/display/mode/VoteSummary;->filterModes([Landroid/view/Display$Mode;)Ljava/util/List;

    move-result-object v10

    move-object v6, v10

    .line 397
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_2

    .line 398
    iget-boolean v10, v1, Lcom/android/server/display/mode/DisplayModeDirector;->mLoggingEnabled:Z

    if-eqz v10, :cond_4

    .line 399
    const-string v10, "DisplayModeDirector"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Found available modes="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v12, " with lowest priority considered "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 401
    invoke-static {v8}, Lcom/android/server/display/mode/Vote;->priorityToString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " and summary: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 399
    invoke-static {v10, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 494
    .end local v0    # "votes":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/display/mode/Vote;>;"
    .end local v4    # "modes":[Landroid/view/Display$Mode;
    .end local v5    # "defaultMode":Landroid/view/Display$Mode;
    .end local v6    # "availableModes":Ljava/util/List;, "Ljava/util/List<Landroid/view/Display$Mode;>;"
    .end local v7    # "primarySummary":Lcom/android/server/display/mode/VoteSummary;
    .end local v8    # "lowestConsideredPriority":I
    .end local v9    # "highestConsideredPriority":I
    :catchall_0
    move-exception v0

    goto/16 :goto_6

    .line 407
    .restart local v0    # "votes":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/display/mode/Vote;>;"
    .restart local v4    # "modes":[Landroid/view/Display$Mode;
    .restart local v5    # "defaultMode":Landroid/view/Display$Mode;
    .restart local v6    # "availableModes":Ljava/util/List;, "Ljava/util/List<Landroid/view/Display$Mode;>;"
    .restart local v7    # "primarySummary":Lcom/android/server/display/mode/VoteSummary;
    .restart local v8    # "lowestConsideredPriority":I
    .restart local v9    # "highestConsideredPriority":I
    :cond_2
    iget-boolean v10, v1, Lcom/android/server/display/mode/DisplayModeDirector;->mLoggingEnabled:Z

    if-eqz v10, :cond_3

    .line 408
    const-string v10, "DisplayModeDirector"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Couldn\'t find available modes with lowest priority set to "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 409
    invoke-static {v8}, Lcom/android/server/display/mode/Vote;->priorityToString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " and with the following summary: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 408
    invoke-static {v10, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 418
    :cond_4
    :goto_1
    new-instance v10, Lcom/android/server/display/mode/VoteSummary;

    iget-boolean v11, v1, Lcom/android/server/display/mode/DisplayModeDirector;->mIsDisplayResolutionRangeVotingEnabled:Z

    .line 419
    invoke-direct/range {p0 .. p1}, Lcom/android/server/display/mode/DisplayModeDirector;->isVrrSupportedLocked(I)Z

    move-result v12

    iget-boolean v13, v1, Lcom/android/server/display/mode/DisplayModeDirector;->mLoggingEnabled:Z

    iget-boolean v14, v1, Lcom/android/server/display/mode/DisplayModeDirector;->mSupportsFrameRateOverride:Z

    invoke-direct {v10, v11, v12, v13, v14}, Lcom/android/server/display/mode/VoteSummary;-><init>(ZZZZ)V

    .line 422
    .local v10, "appRequestSummary":Lcom/android/server/display/mode/VoteSummary;
    const/4 v11, 0x5

    const/16 v12, 0x17

    invoke-virtual {v10, v0, v11, v12}, Lcom/android/server/display/mode/VoteSummary;->applyVotes(Landroid/util/SparseArray;II)V

    .line 426
    invoke-virtual {v10, v7}, Lcom/android/server/display/mode/VoteSummary;->limitRefreshRanges(Lcom/android/server/display/mode/VoteSummary;)V

    .line 428
    invoke-virtual {v7, v6, v5}, Lcom/android/server/display/mode/VoteSummary;->selectBaseMode(Ljava/util/List;Landroid/view/Display$Mode;)Landroid/view/Display$Mode;

    move-result-object v11

    .line 429
    .local v11, "baseMode":Landroid/view/Display$Mode;
    iget-object v12, v1, Lcom/android/server/display/mode/DisplayModeDirector;->mVotesStatsReporter:Lcom/android/server/display/mode/VotesStatsReporter;

    if-eqz v12, :cond_5

    .line 430
    iget-object v12, v1, Lcom/android/server/display/mode/DisplayModeDirector;->mVotesStatsReporter:Lcom/android/server/display/mode/VotesStatsReporter;

    invoke-virtual {v12, v2, v8, v11, v0}, Lcom/android/server/display/mode/VotesStatsReporter;->reportVotesActivated(IILandroid/view/Display$Mode;Landroid/util/SparseArray;)V

    .line 434
    :cond_5
    if-nez v11, :cond_6

    .line 435
    const-string v12, "DisplayModeDirector"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Can\'t find a set of allowed modes which satisfies the votes. Falling back to the default mode. Display = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, ", votes = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v14, ", supported modes = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 437
    invoke-static {v4}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 435
    invoke-static {v12, v13}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    invoke-virtual {v5}, Landroid/view/Display$Mode;->getRefreshRate()F

    move-result v12

    .line 440
    .local v12, "fps":F
    new-instance v13, Landroid/view/SurfaceControl$RefreshRateRange;

    invoke-direct {v13, v12, v12}, Landroid/view/SurfaceControl$RefreshRateRange;-><init>(FF)V

    .line 441
    .local v13, "range":Landroid/view/SurfaceControl$RefreshRateRange;
    new-instance v14, Landroid/view/SurfaceControl$RefreshRateRanges;

    invoke-direct {v14, v13, v13}, Landroid/view/SurfaceControl$RefreshRateRanges;-><init>(Landroid/view/SurfaceControl$RefreshRateRange;Landroid/view/SurfaceControl$RefreshRateRange;)V

    move-object/from16 v18, v14

    .line 442
    .local v18, "ranges":Landroid/view/SurfaceControl$RefreshRateRanges;
    new-instance v15, Lcom/android/server/display/mode/DisplayModeDirector$DesiredDisplayModeSpecs;

    invoke-virtual {v5}, Landroid/view/Display$Mode;->getModeId()I

    move-result v16

    iget-object v14, v1, Lcom/android/server/display/mode/DisplayModeDirector;->mBrightnessObserver:Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;

    .line 444
    invoke-virtual {v14}, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->getIdleScreenRefreshRateConfig()Landroid/view/SurfaceControl$IdleScreenRefreshRateConfig;

    move-result-object v20

    const/16 v17, 0x0

    move-object/from16 v19, v18

    invoke-direct/range {v15 .. v20}, Lcom/android/server/display/mode/DisplayModeDirector$DesiredDisplayModeSpecs;-><init>(IZLandroid/view/SurfaceControl$RefreshRateRanges;Landroid/view/SurfaceControl$RefreshRateRanges;Landroid/view/SurfaceControl$IdleScreenRefreshRateConfig;)V

    monitor-exit v3

    .line 442
    return-object v15

    .line 447
    .end local v12    # "fps":F
    .end local v13    # "range":Landroid/view/SurfaceControl$RefreshRateRange;
    .end local v18    # "ranges":Landroid/view/SurfaceControl$RefreshRateRanges;
    :cond_6
    iget v12, v1, Lcom/android/server/display/mode/DisplayModeDirector;->mModeSwitchingType:I

    const/4 v14, 0x1

    if-eqz v12, :cond_7

    iget v12, v1, Lcom/android/server/display/mode/DisplayModeDirector;->mModeSwitchingType:I

    const/4 v15, 0x3

    if-ne v12, v15, :cond_8

    :cond_7
    goto :goto_2

    :cond_8
    const/4 v12, 0x0

    goto :goto_3

    :goto_2
    move v12, v14

    :goto_3
    nop

    .line 452
    .local v12, "modeSwitchingDisabled":Z
    if-nez v12, :cond_9

    iget-boolean v15, v7, Lcom/android/server/display/mode/VoteSummary;->disableRefreshRateSwitching:Z

    if-eqz v15, :cond_a

    .line 453
    :cond_9
    invoke-virtual {v11}, Landroid/view/Display$Mode;->getRefreshRate()F

    move-result v15

    .line 454
    .local v15, "fps":F
    invoke-virtual {v7, v15}, Lcom/android/server/display/mode/VoteSummary;->disableModeSwitching(F)V

    .line 455
    if-eqz v12, :cond_a

    .line 456
    invoke-virtual {v10, v15}, Lcom/android/server/display/mode/VoteSummary;->disableModeSwitching(F)V

    .line 457
    invoke-virtual {v7, v15}, Lcom/android/server/display/mode/VoteSummary;->disableRenderRateSwitching(F)V

    .line 458
    iget v13, v1, Lcom/android/server/display/mode/DisplayModeDirector;->mModeSwitchingType:I

    if-nez v13, :cond_a

    .line 459
    invoke-virtual {v10, v15}, Lcom/android/server/display/mode/VoteSummary;->disableRenderRateSwitching(F)V

    .line 464
    .end local v15    # "fps":F
    :cond_a
    iget v13, v1, Lcom/android/server/display/mode/DisplayModeDirector;->mModeSwitchingType:I

    const/4 v15, 0x2

    if-ne v13, v15, :cond_b

    move v13, v14

    goto :goto_4

    :cond_b
    const/4 v13, 0x0

    :goto_4
    move/from16 v16, v13

    .line 470
    .local v16, "allowGroupSwitching":Z
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/display/mode/DisplayModeDirector;->isExternalDisplayLocked(I)Z

    move-result v13

    if-eqz v13, :cond_c

    .line 471
    invoke-virtual {v11}, Landroid/view/Display$Mode;->getRefreshRate()F

    move-result v13

    iget v14, v7, Lcom/android/server/display/mode/VoteSummary;->maxRenderFrameRate:F

    invoke-static {v13, v14}, Ljava/lang/Math;->max(FF)F

    move-result v13

    iput v13, v7, Lcom/android/server/display/mode/VoteSummary;->maxRenderFrameRate:F

    .line 473
    invoke-virtual {v11}, Landroid/view/Display$Mode;->getRefreshRate()F

    move-result v13

    iget v14, v10, Lcom/android/server/display/mode/VoteSummary;->maxRenderFrameRate:F

    invoke-static {v13, v14}, Ljava/lang/Math;->max(FF)F

    move-result v13

    iput v13, v10, Lcom/android/server/display/mode/VoteSummary;->maxRenderFrameRate:F

    .line 477
    :cond_c
    new-instance v14, Lcom/android/server/display/mode/DisplayModeDirector$DesiredDisplayModeSpecs;

    invoke-virtual {v11}, Landroid/view/Display$Mode;->getModeId()I

    move-result v15

    new-instance v13, Landroid/view/SurfaceControl$RefreshRateRanges;

    move-object/from16 v20, v0

    .end local v0    # "votes":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/display/mode/Vote;>;"
    .local v20, "votes":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/display/mode/Vote;>;"
    new-instance v0, Landroid/view/SurfaceControl$RefreshRateRange;

    move-object/from16 v21, v4

    .end local v4    # "modes":[Landroid/view/Display$Mode;
    .local v21, "modes":[Landroid/view/Display$Mode;
    iget v4, v7, Lcom/android/server/display/mode/VoteSummary;->minPhysicalRefreshRate:F

    move-object/from16 v22, v5

    .end local v5    # "defaultMode":Landroid/view/Display$Mode;
    .local v22, "defaultMode":Landroid/view/Display$Mode;
    iget v5, v7, Lcom/android/server/display/mode/VoteSummary;->maxPhysicalRefreshRate:F

    invoke-direct {v0, v4, v5}, Landroid/view/SurfaceControl$RefreshRateRange;-><init>(FF)V

    new-instance v4, Landroid/view/SurfaceControl$RefreshRateRange;

    iget v5, v7, Lcom/android/server/display/mode/VoteSummary;->minRenderFrameRate:F

    move-object/from16 v23, v6

    .end local v6    # "availableModes":Ljava/util/List;, "Ljava/util/List<Landroid/view/Display$Mode;>;"
    .local v23, "availableModes":Ljava/util/List;, "Ljava/util/List<Landroid/view/Display$Mode;>;"
    iget v6, v7, Lcom/android/server/display/mode/VoteSummary;->maxRenderFrameRate:F

    invoke-direct {v4, v5, v6}, Landroid/view/SurfaceControl$RefreshRateRange;-><init>(FF)V

    invoke-direct {v13, v0, v4}, Landroid/view/SurfaceControl$RefreshRateRanges;-><init>(Landroid/view/SurfaceControl$RefreshRateRange;Landroid/view/SurfaceControl$RefreshRateRange;)V

    new-instance v0, Landroid/view/SurfaceControl$RefreshRateRanges;

    new-instance v4, Landroid/view/SurfaceControl$RefreshRateRange;

    iget v5, v10, Lcom/android/server/display/mode/VoteSummary;->minPhysicalRefreshRate:F

    iget v6, v10, Lcom/android/server/display/mode/VoteSummary;->maxPhysicalRefreshRate:F

    invoke-direct {v4, v5, v6}, Landroid/view/SurfaceControl$RefreshRateRange;-><init>(FF)V

    new-instance v5, Landroid/view/SurfaceControl$RefreshRateRange;

    iget v6, v10, Lcom/android/server/display/mode/VoteSummary;->minRenderFrameRate:F

    move-object/from16 v24, v7

    .end local v7    # "primarySummary":Lcom/android/server/display/mode/VoteSummary;
    .local v24, "primarySummary":Lcom/android/server/display/mode/VoteSummary;
    iget v7, v10, Lcom/android/server/display/mode/VoteSummary;->maxRenderFrameRate:F

    invoke-direct {v5, v6, v7}, Landroid/view/SurfaceControl$RefreshRateRange;-><init>(FF)V

    invoke-direct {v0, v4, v5}, Landroid/view/SurfaceControl$RefreshRateRanges;-><init>(Landroid/view/SurfaceControl$RefreshRateRange;Landroid/view/SurfaceControl$RefreshRateRange;)V

    iget-object v4, v1, Lcom/android/server/display/mode/DisplayModeDirector;->mBrightnessObserver:Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;

    .line 493
    invoke-virtual {v4}, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->getIdleScreenRefreshRateConfig()Landroid/view/SurfaceControl$IdleScreenRefreshRateConfig;

    move-result-object v19

    move-object/from16 v18, v0

    move-object/from16 v17, v13

    invoke-direct/range {v14 .. v19}, Lcom/android/server/display/mode/DisplayModeDirector$DesiredDisplayModeSpecs;-><init>(IZLandroid/view/SurfaceControl$RefreshRateRanges;Landroid/view/SurfaceControl$RefreshRateRanges;Landroid/view/SurfaceControl$IdleScreenRefreshRateConfig;)V

    monitor-exit v3

    .line 477
    return-object v14

    .line 368
    .end local v8    # "lowestConsideredPriority":I
    .end local v9    # "highestConsideredPriority":I
    .end local v10    # "appRequestSummary":Lcom/android/server/display/mode/VoteSummary;
    .end local v11    # "baseMode":Landroid/view/Display$Mode;
    .end local v12    # "modeSwitchingDisabled":Z
    .end local v16    # "allowGroupSwitching":Z
    .end local v20    # "votes":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/display/mode/Vote;>;"
    .end local v21    # "modes":[Landroid/view/Display$Mode;
    .end local v22    # "defaultMode":Landroid/view/Display$Mode;
    .end local v23    # "availableModes":Ljava/util/List;, "Ljava/util/List<Landroid/view/Display$Mode;>;"
    .end local v24    # "primarySummary":Lcom/android/server/display/mode/VoteSummary;
    .restart local v0    # "votes":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/display/mode/Vote;>;"
    .restart local v4    # "modes":[Landroid/view/Display$Mode;
    .restart local v5    # "defaultMode":Landroid/view/Display$Mode;
    :cond_d
    move-object/from16 v20, v0

    move-object/from16 v21, v4

    move-object/from16 v22, v5

    .line 369
    .end local v0    # "votes":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/display/mode/Vote;>;"
    .end local v4    # "modes":[Landroid/view/Display$Mode;
    .end local v5    # "defaultMode":Landroid/view/Display$Mode;
    .restart local v20    # "votes":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/display/mode/Vote;>;"
    .restart local v21    # "modes":[Landroid/view/Display$Mode;
    .restart local v22    # "defaultMode":Landroid/view/Display$Mode;
    :goto_5
    const-string v0, "DisplayModeDirector"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Asked about unknown display, returning empty display mode specs!(id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    new-instance v0, Lcom/android/server/display/mode/DisplayModeDirector$DesiredDisplayModeSpecs;

    invoke-direct {v0}, Lcom/android/server/display/mode/DisplayModeDirector$DesiredDisplayModeSpecs;-><init>()V

    monitor-exit v3

    return-object v0

    .line 494
    .end local v20    # "votes":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/display/mode/Vote;>;"
    .end local v21    # "modes":[Landroid/view/Display$Mode;
    .end local v22    # "defaultMode":Landroid/view/Display$Mode;
    :goto_6
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method getDesiredDisplayModeSpecsWithInjectedFpsSettings(FFF)Lcom/android/server/display/mode/DisplayModeDirector$DesiredDisplayModeSpecs;
    .locals 3
    .param p1, "minRefreshRate"    # F
    .param p2, "peakRefreshRate"    # F
    .param p3, "defaultRefreshRate"    # F

    .line 802
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 803
    :try_start_0
    iget-object v1, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mSettingsObserver:Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;

    const/4 v2, 0x0

    invoke-static {v1, p1, p2, p3, v2}, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->-$$Nest$mupdateRefreshRateSettingLocked(Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;FFFI)V

    .line 805
    invoke-virtual {p0, v2}, Lcom/android/server/display/mode/DisplayModeDirector;->getDesiredDisplayModeSpecs(I)Lcom/android/server/display/mode/DisplayModeDirector$DesiredDisplayModeSpecs;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 806
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method getDisplayObserver()Lcom/android/server/display/mode/DisplayModeDirector$DisplayObserver;
    .locals 1

    .line 796
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mDisplayObserver:Lcom/android/server/display/mode/DisplayModeDirector$DisplayObserver;

    return-object v0
.end method

.method getHbmObserver()Lcom/android/server/display/mode/DisplayModeDirector$HbmObserver;
    .locals 1

    .line 791
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mHbmObserver:Lcom/android/server/display/mode/DisplayModeDirector$HbmObserver;

    return-object v0
.end method

.method public getModeSwitchingType()I
    .locals 2

    .line 591
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 592
    :try_start_0
    iget v1, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mModeSwitchingType:I

    monitor-exit v0

    return v1

    .line 593
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method getSettingsObserver()Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;
    .locals 1

    .line 781
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mSettingsObserver:Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;

    return-object v0
.end method

.method getUdpfsObserver()Lcom/android/server/display/mode/DisplayModeDirector$UdfpsObserver;
    .locals 1

    .line 786
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mUdfpsObserver:Lcom/android/server/display/mode/DisplayModeDirector$UdfpsObserver;

    return-object v0
.end method

.method getVote(II)Lcom/android/server/display/mode/Vote;
    .locals 2
    .param p1, "displayId"    # I
    .param p2, "priority"    # I

    .line 607
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mVotesStorage:Lcom/android/server/display/mode/VotesStorage;

    invoke-virtual {v0, p1}, Lcom/android/server/display/mode/VotesStorage;->getVotes(I)Landroid/util/SparseArray;

    move-result-object v0

    .line 608
    .local v0, "votes":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/display/mode/Vote;>;"
    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/display/mode/Vote;

    return-object v1
.end method

.method injectAppSupportedModesByDisplay(Landroid/util/SparseArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "[",
            "Landroid/view/Display$Mode;",
            ">;)V"
        }
    .end annotation

    .line 746
    .local p1, "appSupportedModesByDisplay":Landroid/util/SparseArray;, "Landroid/util/SparseArray<[Landroid/view/Display$Mode;>;"
    iput-object p1, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mAppSupportedModesByDisplay:Landroid/util/SparseArray;

    .line 747
    return-void
.end method

.method injectBrightnessObserver(Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;)V
    .locals 0
    .param p1, "brightnessObserver"    # Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;

    .line 771
    iput-object p1, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mBrightnessObserver:Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;

    .line 772
    return-void
.end method

.method injectDefaultModeByDisplay(Landroid/util/SparseArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/view/Display$Mode;",
            ">;)V"
        }
    .end annotation

    .line 751
    .local p1, "defaultModeByDisplay":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/view/Display$Mode;>;"
    iput-object p1, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mDefaultModeByDisplay:Landroid/util/SparseArray;

    .line 752
    return-void
.end method

.method injectDisplayDeviceConfigByDisplay(Landroid/util/SparseArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Lcom/android/server/display/DisplayDeviceConfig;",
            ">;)V"
        }
    .end annotation

    .line 756
    .local p1, "ddcByDisplay":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/display/DisplayDeviceConfig;>;"
    iput-object p1, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mDisplayDeviceConfigByDisplay:Landroid/util/SparseArray;

    .line 757
    return-void
.end method

.method injectSupportedModesByDisplay(Landroid/util/SparseArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "[",
            "Landroid/view/Display$Mode;",
            ">;)V"
        }
    .end annotation

    .line 741
    .local p1, "supportedModesByDisplay":Landroid/util/SparseArray;, "Landroid/util/SparseArray<[Landroid/view/Display$Mode;>;"
    iput-object p1, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mSupportedModesByDisplay:Landroid/util/SparseArray;

    .line 742
    return-void
.end method

.method injectVotesByDisplay(Landroid/util/SparseArray;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/util/SparseArray<",
            "Lcom/android/server/display/mode/Vote;",
            ">;>;)V"
        }
    .end annotation

    .line 761
    .local p1, "votesByDisplay":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/SparseArray<Lcom/android/server/display/mode/Vote;>;>;"
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mVotesStorage:Lcom/android/server/display/mode/VotesStorage;

    invoke-virtual {v0, p1}, Lcom/android/server/display/mode/VotesStorage;->injectVotesByDisplay(Landroid/util/SparseArray;)V

    .line 762
    return-void
.end method

.method isExternalDisplayLocked(I)Z
    .locals 2
    .param p1, "displayId"    # I

    .line 721
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mExternalDisplaysConnected:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public onBootCompleted()V
    .locals 1

    .line 328
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mUdfpsObserver:Lcom/android/server/display/mode/DisplayModeDirector$UdfpsObserver;

    invoke-virtual {v0}, Lcom/android/server/display/mode/DisplayModeDirector$UdfpsObserver;->observe()V

    .line 332
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mThermalCallback:Lcom/android/server/display/mode/DisplayModeDirector$ThermalCallback;

    invoke-virtual {v0}, Lcom/android/server/display/mode/DisplayModeDirector$ThermalCallback;->observe()V

    .line 334
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mBootFinished:Z

    .line 335
    invoke-direct {p0}, Lcom/android/server/display/mode/DisplayModeDirector;->notifyDesiredDisplayModeSpecsChangedLocked()V

    .line 337
    return-void
.end method

.method public onSwitchUser()V
    .locals 2

    .line 630
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mHandler:Lcom/android/server/display/mode/DisplayModeDirector$DisplayModeDirectorHandler;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 631
    return-void
.end method

.method public requestDisplayModes(Landroid/os/IBinder;I[I)V
    .locals 2
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "displayId"    # I
    .param p3, "modeIds"    # [I

    .line 615
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mSystemRequestObserver:Lcom/android/server/display/mode/SystemRequestObserver;

    if-eqz v0, :cond_0

    .line 617
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 618
    :try_start_0
    invoke-direct {p0, p2}, Lcom/android/server/display/mode/DisplayModeDirector;->isVrrSupportedLocked(I)Z

    move-result v1

    .line 619
    .local v1, "vrrSupported":Z
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 620
    if-eqz v1, :cond_0

    .line 621
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mSystemRequestObserver:Lcom/android/server/display/mode/SystemRequestObserver;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/display/mode/SystemRequestObserver;->requestDisplayModes(Landroid/os/IBinder;I[I)V

    goto :goto_0

    .line 619
    .end local v1    # "vrrSupported":Z
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 624
    :cond_0
    :goto_0
    return-void
.end method

.method public setDesiredDisplayModeSpecsListener(Lcom/android/server/display/mode/DisplayModeDirector$DesiredDisplayModeSpecsListener;)V
    .locals 2
    .param p1, "desiredDisplayModeSpecsListener"    # Lcom/android/server/display/mode/DisplayModeDirector$DesiredDisplayModeSpecsListener;

    .line 523
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 524
    :try_start_0
    iput-object p1, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mDesiredDisplayModeSpecsListener:Lcom/android/server/display/mode/DisplayModeDirector$DesiredDisplayModeSpecsListener;

    .line 525
    monitor-exit v0

    .line 526
    return-void

    .line 525
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setLoggingEnabled(Z)V
    .locals 1
    .param p1, "loggingEnabled"    # Z

    .line 343
    iget-boolean v0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mLoggingEnabled:Z

    if-ne v0, p1, :cond_0

    .line 344
    return-void

    .line 346
    :cond_0
    iput-boolean p1, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mLoggingEnabled:Z

    .line 347
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mBrightnessObserver:Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;

    invoke-static {v0, p1}, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->-$$Nest$msetLoggingEnabled(Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;Z)V

    .line 351
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mVotesStorage:Lcom/android/server/display/mode/VotesStorage;

    invoke-virtual {v0, p1}, Lcom/android/server/display/mode/VotesStorage;->setLoggingEnabled(Z)V

    .line 352
    return-void
.end method

.method public setModeSwitchingType(I)V
    .locals 2
    .param p1, "newType"    # I

    .line 578
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 579
    :try_start_0
    iget v1, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mModeSwitchingType:I

    if-eq p1, v1, :cond_0

    .line 580
    iput p1, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mModeSwitchingType:I

    .line 581
    invoke-direct {p0}, Lcom/android/server/display/mode/DisplayModeDirector;->notifyDesiredDisplayModeSpecsChangedLocked()V

    goto :goto_0

    .line 583
    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    .line 584
    return-void

    .line 583
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setShouldAlwaysRespectAppRequestedMode(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .line 555
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 556
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mAlwaysRespectAppRequest:Z

    if-eq v1, p1, :cond_0

    .line 557
    iput-boolean p1, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mAlwaysRespectAppRequest:Z

    .line 558
    invoke-direct {p0}, Lcom/android/server/display/mode/DisplayModeDirector;->notifyDesiredDisplayModeSpecsChangedLocked()V

    goto :goto_0

    .line 560
    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    .line 561
    return-void

    .line 560
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public shouldAlwaysRespectAppRequestedMode()Z
    .locals 2

    .line 568
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 569
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mAlwaysRespectAppRequest:Z

    monitor-exit v0

    return v1

    .line 570
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public start(Landroid/hardware/SensorManager;)V
    .locals 2
    .param p1, "sensorManager"    # Landroid/hardware/SensorManager;

    .line 302
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mDisplayObserver:Lcom/android/server/display/mode/DisplayModeDirector$DisplayObserver;

    invoke-virtual {v0}, Lcom/android/server/display/mode/DisplayModeDirector$DisplayObserver;->observe()V

    .line 304
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mSettingsObserver:Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;

    invoke-virtual {v0}, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->observe()V

    .line 305
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mBrightnessObserver:Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;

    invoke-static {v0, p1}, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->-$$Nest$mobserve(Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;Landroid/hardware/SensorManager;)V

    .line 306
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mSensorObserver:Lcom/android/server/display/mode/ProximitySensorObserver;

    invoke-virtual {v0}, Lcom/android/server/display/mode/ProximitySensorObserver;->observe()V

    .line 307
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mHbmObserver:Lcom/android/server/display/mode/DisplayModeDirector$HbmObserver;

    invoke-virtual {v0}, Lcom/android/server/display/mode/DisplayModeDirector$HbmObserver;->observe()V

    .line 311
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mDisplayManagerFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

    invoke-virtual {v0}, Lcom/android/server/display/feature/DisplayManagerFlags;->isDisplayConfigErrorHalEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 312
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mModeChangeObserver:Lcom/android/server/display/mode/ModeChangeObserver;

    invoke-virtual {v0}, Lcom/android/server/display/mode/ModeChangeObserver;->observe()V

    .line 314
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 317
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/display/mode/DisplayModeDirector;->notifyDesiredDisplayModeSpecsChangedLocked()V

    .line 318
    monitor-exit v0

    .line 319
    return-void

    .line 318
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
