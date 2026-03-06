.class public Lcom/android/server/notification/ZenModeHelper;
.super Ljava/lang/Object;
.source "ZenModeHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;,
        Lcom/android/server/notification/ZenModeHelper$Metrics;,
        Lcom/android/server/notification/ZenModeHelper$H;,
        Lcom/android/server/notification/ZenModeHelper$Callback;,
        Lcom/android/server/notification/ZenModeHelper$SettingsObserver;
    }
.end annotation


# static fields
.field static final DEBUG:Z

.field private static final DELETED_RULE_KEPT_FOR:Ljava/time/Duration;

.field private static final IMPLICIT_RULE_KEPT_FOR:Ljava/time/Duration;

.field private static final MAX_ICON_RESOURCE_NAME_LENGTH:I = 0x3e8

.field private static final PACKAGE_ANDROID:Ljava/lang/String; = "android"

.field private static final RULE_INSTANCE_GRACE_PERIOD:I = 0xf731400

.field static final RULE_LIMIT_PER_PACKAGE:I = 0x64

.field static final SEND_ACTIVATION_AZR_STATUSES:J = 0x1265fc51L

.field public static final SUPPRESSED_EFFECT_ALL:J = 0x3L

.field public static final SUPPRESSED_EFFECT_CALLS:J = 0x2L

.field public static final SUPPRESSED_EFFECT_NOTIFICATIONS:J = 0x1L

.field static final TAG:Ljava/lang/String; = "ZenModeHelper"


# instance fields
.field private final mAppOps:Landroid/app/AppOpsManager;

.field protected mAudioManager:Landroid/media/AudioManagerInternal;

.field private final mCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/notification/ZenModeHelper$Callback;",
            ">;"
        }
    .end annotation
.end field

.field private final mClock:Ljava/time/Clock;

.field protected final mConditions:Lcom/android/server/notification/ZenModeConditions;

.field protected mConfig:Landroid/service/notification/ZenModeConfig;

.field private final mConfigLock:Ljava/lang/Object;

.field final mConfigs:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/service/notification/ZenModeConfig;",
            ">;"
        }
    .end annotation
.end field

.field private mConsolidatedDeviceEffects:Landroid/service/notification/ZenDeviceEffects;

.field protected mConsolidatedPolicy:Landroid/app/NotificationManager$Policy;

.field private final mContext:Landroid/content/Context;

.field private final mDefaultConfig:Landroid/service/notification/ZenModeConfig;

.field private mDeviceEffectsApplier:Landroid/service/notification/DeviceEffectsApplier;

.field private final mFiltering:Lcom/android/server/notification/ZenModeFiltering;

.field private final mFlagResolver:Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$FlagResolver;

.field private final mHandler:Lcom/android/server/notification/ZenModeHelper$H;

.field protected mIsSystemServicesReady:Z

.field private final mMetrics:Lcom/android/server/notification/ZenModeHelper$Metrics;

.field protected mPm:Landroid/content/pm/PackageManager;

.field private mPriorityOnlyDndExemptPackages:[Ljava/lang/String;

.field private final mRingerModeDelegate:Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;

.field protected final mRulesUidCache:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mServiceConfig:Lcom/android/server/notification/ManagedServices$Config;

.field private final mSettingsObserver:Lcom/android/server/notification/ZenModeHelper$SettingsObserver;

.field private mSuppressedEffects:J

.field private mUser:I

.field protected mZenMode:I

.field private final mZenModeEventLogger:Lcom/android/server/notification/ZenModeEventLogger;


# direct methods
.method public static synthetic $r8$lambda$0g2TCyxqVWjORDguCddL_QuImw0(Lcom/android/server/notification/ZenModeHelper;Landroid/service/notification/ZenModeConfig$ZenRule;)Ljava/lang/String;
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/notification/ZenModeHelper;->lambda$updateImplicitZenRuleNameAndDescription$0(Landroid/service/notification/ZenModeConfig$ZenRule;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmConfigLock(Lcom/android/server/notification/ZenModeHelper;)Ljava/lang/Object;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/notification/ZenModeHelper;->mConfigLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/notification/ZenModeHelper;)Landroid/content/Context;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/notification/ZenModeHelper;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/server/notification/ZenModeHelper;)Lcom/android/server/notification/ZenModeHelper$H;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/notification/ZenModeHelper;->mHandler:Lcom/android/server/notification/ZenModeHelper$H;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmMetrics(Lcom/android/server/notification/ZenModeHelper;)Lcom/android/server/notification/ZenModeHelper$Metrics;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/notification/ZenModeHelper;->mMetrics:Lcom/android/server/notification/ZenModeHelper$Metrics;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mapplyConsolidatedDeviceEffects(Lcom/android/server/notification/ZenModeHelper;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/notification/ZenModeHelper;->applyConsolidatedDeviceEffects(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mdispatchOnZenModeChanged(Lcom/android/server/notification/ZenModeHelper;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/notification/ZenModeHelper;->dispatchOnZenModeChanged()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mgetZenModeSetting(Lcom/android/server/notification/ZenModeHelper;)I
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/notification/ZenModeHelper;->getZenModeSetting()I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$msetManualZenMode(Lcom/android/server/notification/ZenModeHelper;Landroid/os/UserHandle;ILandroid/net/Uri;ILjava/lang/String;Ljava/lang/String;ZI)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p8}, Lcom/android/server/notification/ZenModeHelper;->setManualZenMode(Landroid/os/UserHandle;ILandroid/net/Uri;ILjava/lang/String;Ljava/lang/String;ZI)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetPreviousRingerModeSetting(Lcom/android/server/notification/ZenModeHelper;Ljava/lang/Integer;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/notification/ZenModeHelper;->setPreviousRingerModeSetting(Ljava/lang/Integer;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateRingerAndAudio(Lcom/android/server/notification/ZenModeHelper;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/notification/ZenModeHelper;->updateRingerAndAudio(Z)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 151
    const-string v0, "ZenModeHelper"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/notification/ZenModeHelper;->DEBUG:Z

    .line 158
    const-wide/16 v0, 0x1e

    invoke-static {v0, v1}, Ljava/time/Duration;->ofDays(J)Ljava/time/Duration;

    move-result-object v2

    sput-object v2, Lcom/android/server/notification/ZenModeHelper;->DELETED_RULE_KEPT_FOR:Ljava/time/Duration;

    .line 164
    invoke-static {v0, v1}, Ljava/time/Duration;->ofDays(J)Ljava/time/Duration;

    move-result-object v0

    sput-object v0, Lcom/android/server/notification/ZenModeHelper;->IMPLICIT_RULE_KEPT_FOR:Ljava/time/Duration;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Ljava/time/Clock;Lcom/android/server/notification/ConditionProviders;Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$FlagResolver;Lcom/android/server/notification/ZenModeEventLogger;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "looper"    # Landroid/os/Looper;
    .param p3, "clock"    # Ljava/time/Clock;
    .param p4, "conditionProviders"    # Lcom/android/server/notification/ConditionProviders;
    .param p5, "flagResolver"    # Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$FlagResolver;
    .param p6, "zenModeEventLogger"    # Lcom/android/server/notification/ZenModeEventLogger;

    .line 223
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 176
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mRulesUidCache:Landroid/util/ArrayMap;

    .line 184
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mCallbacks:Ljava/util/ArrayList;

    .line 186
    new-instance v0, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;

    invoke-direct {v0, p0}, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;-><init>(Lcom/android/server/notification/ZenModeHelper;)V

    iput-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mRingerModeDelegate:Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;

    .line 189
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mConfigs:Landroid/util/SparseArray;

    .line 191
    new-instance v0, Lcom/android/server/notification/ZenModeHelper$Metrics;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/notification/ZenModeHelper$Metrics;-><init>(Lcom/android/server/notification/ZenModeHelper;Lcom/android/server/notification/ZenModeHelper-IA;)V

    iput-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mMetrics:Lcom/android/server/notification/ZenModeHelper$Metrics;

    .line 198
    new-instance v0, Landroid/service/notification/ZenDeviceEffects$Builder;

    invoke-direct {v0}, Landroid/service/notification/ZenDeviceEffects$Builder;-><init>()V

    .line 199
    invoke-virtual {v0}, Landroid/service/notification/ZenDeviceEffects$Builder;->build()Landroid/service/notification/ZenDeviceEffects;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mConsolidatedDeviceEffects:Landroid/service/notification/ZenDeviceEffects;

    .line 200
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/notification/ZenModeHelper;->mUser:I

    .line 202
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/android/server/notification/ZenModeHelper;->mConfigLock:Ljava/lang/Object;

    .line 224
    iput-object p1, p0, Lcom/android/server/notification/ZenModeHelper;->mContext:Landroid/content/Context;

    .line 225
    new-instance v2, Lcom/android/server/notification/ZenModeHelper$H;

    invoke-direct {v2, p0, p2, v1}, Lcom/android/server/notification/ZenModeHelper$H;-><init>(Lcom/android/server/notification/ZenModeHelper;Landroid/os/Looper;Lcom/android/server/notification/ZenModeHelper-IA;)V

    iput-object v2, p0, Lcom/android/server/notification/ZenModeHelper;->mHandler:Lcom/android/server/notification/ZenModeHelper$H;

    .line 226
    iput-object p3, p0, Lcom/android/server/notification/ZenModeHelper;->mClock:Ljava/time/Clock;

    .line 227
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mMetrics:Lcom/android/server/notification/ZenModeHelper$Metrics;

    invoke-virtual {p0, v1}, Lcom/android/server/notification/ZenModeHelper;->addCallback(Lcom/android/server/notification/ZenModeHelper$Callback;)V

    .line 228
    const-class v1, Landroid/app/AppOpsManager;

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AppOpsManager;

    iput-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mAppOps:Landroid/app/AppOpsManager;

    .line 230
    nop

    .line 231
    invoke-static {}, Landroid/service/notification/ZenModeConfig;->getDefaultConfig()Landroid/service/notification/ZenModeConfig;

    move-result-object v1

    .line 232
    iput-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mDefaultConfig:Landroid/service/notification/ZenModeConfig;

    .line 233
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/notification/ZenModeHelper;->mDefaultConfig:Landroid/service/notification/ZenModeConfig;

    invoke-static {v1, v2}, Lcom/android/server/notification/ZenModeHelper;->updateDefaultConfig(Landroid/content/Context;Landroid/service/notification/ZenModeConfig;)V

    .line 235
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mConfigLock:Ljava/lang/Object;

    monitor-enter v1

    .line 236
    :try_start_0
    iget-object v2, p0, Lcom/android/server/notification/ZenModeHelper;->mDefaultConfig:Landroid/service/notification/ZenModeConfig;

    invoke-virtual {v2}, Landroid/service/notification/ZenModeConfig;->copy()Landroid/service/notification/ZenModeConfig;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    .line 237
    iget-object v2, p0, Lcom/android/server/notification/ZenModeHelper;->mConfigs:Landroid/util/SparseArray;

    iget-object v3, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    invoke-virtual {v2, v0, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 238
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 239
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    invoke-virtual {v0}, Landroid/service/notification/ZenModeConfig;->toNotificationPolicy()Landroid/app/NotificationManager$Policy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mConsolidatedPolicy:Landroid/app/NotificationManager$Policy;

    .line 241
    new-instance v0, Lcom/android/server/notification/ZenModeHelper$SettingsObserver;

    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mHandler:Lcom/android/server/notification/ZenModeHelper$H;

    invoke-direct {v0, p0, v1}, Lcom/android/server/notification/ZenModeHelper$SettingsObserver;-><init>(Lcom/android/server/notification/ZenModeHelper;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mSettingsObserver:Lcom/android/server/notification/ZenModeHelper$SettingsObserver;

    .line 242
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mSettingsObserver:Lcom/android/server/notification/ZenModeHelper$SettingsObserver;

    invoke-virtual {v0}, Lcom/android/server/notification/ZenModeHelper$SettingsObserver;->observe()V

    .line 243
    new-instance v0, Lcom/android/server/notification/ZenModeFiltering;

    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/notification/ZenModeFiltering;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mFiltering:Lcom/android/server/notification/ZenModeFiltering;

    .line 244
    new-instance v0, Lcom/android/server/notification/ZenModeConditions;

    invoke-direct {v0, p0, p4}, Lcom/android/server/notification/ZenModeConditions;-><init>(Lcom/android/server/notification/ZenModeHelper;Lcom/android/server/notification/ConditionProviders;)V

    iput-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mConditions:Lcom/android/server/notification/ZenModeConditions;

    .line 245
    invoke-virtual {p4}, Lcom/android/server/notification/ConditionProviders;->getConfig()Lcom/android/server/notification/ManagedServices$Config;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mServiceConfig:Lcom/android/server/notification/ManagedServices$Config;

    .line 246
    iput-object p5, p0, Lcom/android/server/notification/ZenModeHelper;->mFlagResolver:Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$FlagResolver;

    .line 247
    iput-object p6, p0, Lcom/android/server/notification/ZenModeHelper;->mZenModeEventLogger:Lcom/android/server/notification/ZenModeEventLogger;

    .line 248
    return-void

    .line 238
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private static applyConditionAndReconsiderOverride(Landroid/service/notification/ZenModeConfig$ZenRule;Landroid/service/notification/Condition;I)V
    .locals 2
    .param p0, "rule"    # Landroid/service/notification/ZenModeConfig$ZenRule;
    .param p1, "condition"    # Landroid/service/notification/Condition;
    .param p2, "origin"    # I

    .line 965
    nop

    .line 966
    iget-object v0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->id:Ljava/lang/String;

    invoke-static {v0}, Landroid/service/notification/ZenModeConfig;->isImplicitRuleId(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 970
    iput-object p1, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->condition:Landroid/service/notification/Condition;

    .line 971
    invoke-virtual {p0}, Landroid/service/notification/ZenModeConfig$ZenRule;->resetConditionOverride()V

    goto :goto_0

    .line 972
    :cond_0
    const/4 v0, 0x3

    const/4 v1, 0x1

    if-ne p2, v0, :cond_2

    if-eqz p1, :cond_2

    iget v0, p1, Landroid/service/notification/Condition;->source:I

    if-ne v0, v1, :cond_2

    .line 980
    iget v0, p1, Landroid/service/notification/Condition;->state:I

    if-ne v0, v1, :cond_1

    .line 981
    invoke-virtual {p0}, Landroid/service/notification/ZenModeConfig$ZenRule;->resetConditionOverride()V

    .line 982
    invoke-virtual {p0}, Landroid/service/notification/ZenModeConfig$ZenRule;->isActive()Z

    move-result v0

    if-nez v0, :cond_4

    .line 983
    invoke-virtual {p0, v1}, Landroid/service/notification/ZenModeConfig$ZenRule;->setConditionOverride(I)V

    goto :goto_0

    .line 985
    :cond_1
    iget v0, p1, Landroid/service/notification/Condition;->state:I

    if-nez v0, :cond_4

    .line 986
    invoke-virtual {p0}, Landroid/service/notification/ZenModeConfig$ZenRule;->resetConditionOverride()V

    .line 987
    invoke-virtual {p0}, Landroid/service/notification/ZenModeConfig$ZenRule;->isActive()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 988
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/service/notification/ZenModeConfig$ZenRule;->setConditionOverride(I)V

    goto :goto_0

    .line 991
    :cond_2
    const/4 v0, 0x7

    if-ne p2, v0, :cond_3

    if-eqz p1, :cond_3

    iget v0, p1, Landroid/service/notification/Condition;->source:I

    if-ne v0, v1, :cond_3

    .line 996
    iput-object p1, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->condition:Landroid/service/notification/Condition;

    .line 997
    invoke-virtual {p0}, Landroid/service/notification/ZenModeConfig$ZenRule;->resetConditionOverride()V

    goto :goto_0

    .line 1001
    :cond_3
    iput-object p1, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->condition:Landroid/service/notification/Condition;

    .line 1002
    invoke-virtual {p0}, Landroid/service/notification/ZenModeConfig$ZenRule;->reconsiderConditionOverride()V

    .line 1008
    :cond_4
    :goto_0
    return-void
.end method

.method private applyConsolidatedDeviceEffects(I)V
    .locals 3
    .param p1, "source"    # I

    .line 2340
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mConfigLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2341
    :try_start_0
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mDeviceEffectsApplier:Landroid/service/notification/DeviceEffectsApplier;

    .line 2342
    .local v1, "applier":Landroid/service/notification/DeviceEffectsApplier;
    iget-object v2, p0, Lcom/android/server/notification/ZenModeHelper;->mConsolidatedDeviceEffects:Landroid/service/notification/ZenDeviceEffects;

    .line 2343
    .local v2, "effects":Landroid/service/notification/ZenDeviceEffects;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2344
    if-eqz v1, :cond_0

    .line 2345
    invoke-interface {v1, v2, p1}, Landroid/service/notification/DeviceEffectsApplier;->apply(Landroid/service/notification/ZenDeviceEffects;I)V

    .line 2347
    :cond_0
    return-void

    .line 2343
    .end local v1    # "applier":Landroid/service/notification/DeviceEffectsApplier;
    .end local v2    # "effects":Landroid/service/notification/ZenDeviceEffects;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private applyCustomPolicy(Landroid/service/notification/ZenModeConfig;Landroid/service/notification/ZenPolicy;Landroid/service/notification/ZenModeConfig$ZenRule;Z)V
    .locals 2
    .param p1, "config"    # Landroid/service/notification/ZenModeConfig;
    .param p2, "policy"    # Landroid/service/notification/ZenPolicy;
    .param p3, "rule"    # Landroid/service/notification/ZenModeConfig$ZenRule;
    .param p4, "useManualConfig"    # Z

    .line 2232
    iget v0, p3, Landroid/service/notification/ZenModeConfig$ZenRule;->zenMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 2233
    nop

    .line 2234
    invoke-static {}, Landroid/service/notification/ZenPolicy;->getBasePolicyInterruptionFilterNone()Landroid/service/notification/ZenPolicy;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/service/notification/ZenPolicy;->apply(Landroid/service/notification/ZenPolicy;)V

    goto :goto_0

    .line 2241
    :cond_0
    iget v0, p3, Landroid/service/notification/ZenModeConfig$ZenRule;->zenMode:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 2242
    nop

    .line 2243
    invoke-static {}, Landroid/service/notification/ZenPolicy;->getBasePolicyInterruptionFilterAlarms()Landroid/service/notification/ZenPolicy;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/service/notification/ZenPolicy;->apply(Landroid/service/notification/ZenPolicy;)V

    goto :goto_0

    .line 2252
    :cond_1
    iget-object v0, p3, Landroid/service/notification/ZenModeConfig$ZenRule;->zenPolicy:Landroid/service/notification/ZenPolicy;

    if-eqz v0, :cond_2

    .line 2253
    iget-object v0, p3, Landroid/service/notification/ZenModeConfig$ZenRule;->zenPolicy:Landroid/service/notification/ZenPolicy;

    invoke-virtual {p2, v0}, Landroid/service/notification/ZenPolicy;->apply(Landroid/service/notification/ZenPolicy;)V

    goto :goto_0

    .line 2255
    :cond_2
    if-eqz p4, :cond_3

    .line 2257
    invoke-virtual {p1}, Landroid/service/notification/ZenModeConfig;->getZenPolicy()Landroid/service/notification/ZenPolicy;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/service/notification/ZenPolicy;->apply(Landroid/service/notification/ZenPolicy;)V

    goto :goto_0

    .line 2263
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "active automatic rule found with no specified policy: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ZenModeHelper"

    invoke-static {v1, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 2264
    nop

    .line 2265
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mDefaultConfig:Landroid/service/notification/ZenModeConfig;

    invoke-virtual {v0}, Landroid/service/notification/ZenModeConfig;->getZenPolicy()Landroid/service/notification/ZenPolicy;

    move-result-object v0

    .line 2264
    invoke-virtual {p2, v0}, Landroid/service/notification/ZenPolicy;->apply(Landroid/service/notification/ZenPolicy;)V

    .line 2268
    :goto_0
    return-void
.end method

.method private static checkManageRuleOrigin(Ljava/lang/String;I)V
    .locals 3
    .param p0, "method"    # Ljava/lang/String;
    .param p1, "origin"    # I

    .line 2843
    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    :cond_0
    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :goto_0
    const/4 v0, 0x1

    .line 2847
    :goto_1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {p0, v1}, [Ljava/lang/Object;

    move-result-object v1

    .line 2843
    const-string v2, "Expected one of ORIGIN_APP, ORIGIN_SYSTEM, or ORIGIN_USER_IN_SYSTEMUI for %s, but received \'%s\'."

    invoke-static {v0, v2, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 2848
    return-void
.end method

.method private static checkSetRuleStateOrigin(Ljava/lang/String;I)V
    .locals 3
    .param p0, "method"    # Ljava/lang/String;
    .param p1, "origin"    # I

    .line 2855
    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/4 v0, 0x7

    if-eq p1, v0, :cond_0

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    :cond_0
    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :goto_0
    const/4 v0, 0x1

    .line 2859
    :goto_1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {p0, v1}, [Ljava/lang/Object;

    move-result-object v1

    .line 2855
    const-string v2, "Expected one of ORIGIN_APP, ORIGIN_USER_IN_APP, ORIGIN_SYSTEM, or ORIGIN_USER_IN_SYSTEMUI for %s, but received \'%s\'."

    invoke-static {v0, v2, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 2860
    return-void
.end method

.method private cleanUpZenRules()V
    .locals 9

    .line 1927
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->instant()Ljava/time/Instant;

    move-result-object v0

    sget-object v1, Lcom/android/server/notification/ZenModeHelper;->DELETED_RULE_KEPT_FOR:Ljava/time/Duration;

    invoke-virtual {v0, v1}, Ljava/time/Instant;->minus(Ljava/time/temporal/TemporalAmount;)Ljava/time/Instant;

    move-result-object v1

    .line 1928
    .local v1, "keptRuleThreshold":Ljava/time/Instant;
    iget-object v2, p0, Lcom/android/server/notification/ZenModeHelper;->mConfigLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1929
    :try_start_0
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    invoke-virtual {v0}, Landroid/service/notification/ZenModeConfig;->copy()Landroid/service/notification/ZenModeConfig;

    move-result-object v0

    move-object v4, v0

    .line 1931
    .local v4, "newConfig":Landroid/service/notification/ZenModeConfig;
    iget-object v0, v4, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-direct {p0, v0}, Lcom/android/server/notification/ZenModeHelper;->deleteRulesWithoutOwner(Landroid/util/ArrayMap;)V

    .line 1932
    iget-object v0, v4, Landroid/service/notification/ZenModeConfig;->deletedRules:Landroid/util/ArrayMap;

    invoke-direct {p0, v0}, Lcom/android/server/notification/ZenModeHelper;->deleteRulesWithoutOwner(Landroid/util/ArrayMap;)V

    .line 1934
    iget-object v0, v4, Landroid/service/notification/ZenModeConfig;->deletedRules:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_2

    .line 1935
    iget-object v3, v4, Landroid/service/notification/ZenModeConfig;->deletedRules:Landroid/util/ArrayMap;

    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 1936
    .local v3, "deletedRule":Landroid/service/notification/ZenModeConfig$ZenRule;
    iget-object v5, v3, Landroid/service/notification/ZenModeConfig$ZenRule;->deletionInstant:Ljava/time/Instant;

    if-eqz v5, :cond_0

    iget-object v5, v3, Landroid/service/notification/ZenModeConfig$ZenRule;->deletionInstant:Ljava/time/Instant;

    .line 1937
    invoke-virtual {v5, v1}, Ljava/time/Instant;->isBefore(Ljava/time/Instant;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_1

    .line 1950
    .end local v0    # "i":I
    .end local v3    # "deletedRule":Landroid/service/notification/ZenModeConfig$ZenRule;
    .end local v4    # "newConfig":Landroid/service/notification/ZenModeConfig;
    :catchall_0
    move-exception v0

    goto :goto_2

    .line 1938
    .restart local v0    # "i":I
    .restart local v3    # "deletedRule":Landroid/service/notification/ZenModeConfig$ZenRule;
    .restart local v4    # "newConfig":Landroid/service/notification/ZenModeConfig;
    :cond_0
    :goto_1
    iget-object v5, v4, Landroid/service/notification/ZenModeConfig;->deletedRules:Landroid/util/ArrayMap;

    invoke-virtual {v5, v0}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 1934
    .end local v3    # "deletedRule":Landroid/service/notification/ZenModeConfig$ZenRule;
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    nop

    .line 1942
    .end local v0    # "i":I
    nop

    .line 1943
    iget-object v0, v4, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-direct {p0, v0}, Lcom/android/server/notification/ZenModeHelper;->deleteUnusedImplicitRules(Landroid/util/ArrayMap;)V

    .line 1946
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    invoke-virtual {v4, v0}, Landroid/service/notification/ZenModeConfig;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1947
    const-string v7, "cleanUpZenRules"

    const/16 v8, 0x3e8

    const/4 v5, 0x0

    const/4 v6, 0x5

    move-object v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/android/server/notification/ZenModeHelper;->setConfigLocked(Landroid/service/notification/ZenModeConfig;Landroid/content/ComponentName;ILjava/lang/String;I)Z

    .line 1950
    .end local v4    # "newConfig":Landroid/service/notification/ZenModeConfig;
    :cond_3
    monitor-exit v2

    .line 1951
    return-void

    .line 1950
    :goto_2
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private computeZenMode()I
    .locals 6

    .line 2214
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mConfigLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2215
    :try_start_0
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    if-nez v1, :cond_0

    monitor-exit v0

    const/4 v0, 0x0

    return v0

    .line 2226
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 2216
    :cond_0
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    invoke-virtual {v1}, Landroid/service/notification/ZenModeConfig;->isManualActive()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget-object v1, v1, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    iget v1, v1, Landroid/service/notification/ZenModeConfig$ZenRule;->zenMode:I

    monitor-exit v0

    return v1

    .line 2217
    :cond_1
    const/4 v1, 0x0

    .line 2218
    .local v1, "zen":I
    iget-object v2, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget-object v2, v2, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 2219
    .local v3, "automaticRule":Landroid/service/notification/ZenModeConfig$ZenRule;
    invoke-virtual {v3}, Landroid/service/notification/ZenModeConfig$ZenRule;->isActive()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2220
    iget v4, v3, Landroid/service/notification/ZenModeConfig$ZenRule;->zenMode:I

    invoke-static {v4}, Lcom/android/server/notification/ZenModeHelper;->zenSeverity(I)I

    move-result v4

    invoke-static {v1}, Lcom/android/server/notification/ZenModeHelper;->zenSeverity(I)I

    move-result v5

    if-le v4, v5, :cond_2

    .line 2221
    iget v4, v3, Landroid/service/notification/ZenModeConfig$ZenRule;->zenMode:I

    move v1, v4

    .line 2224
    .end local v3    # "automaticRule":Landroid/service/notification/ZenModeConfig$ZenRule;
    :cond_2
    goto :goto_0

    .line 2225
    :cond_3
    monitor-exit v0

    return v1

    .line 2226
    .end local v1    # "zen":I
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private deleteRulesWithoutOwner(Landroid/util/ArrayMap;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/service/notification/ZenModeConfig$ZenRule;",
            ">;)V"
        }
    .end annotation

    .line 1954
    .local p1, "ruleList":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/service/notification/ZenModeConfig$ZenRule;>;"
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v0

    .line 1955
    .local v0, "currentTime":J
    if-eqz p1, :cond_2

    .line 1956
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_2

    .line 1957
    invoke-virtual {p1, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 1958
    .local v3, "rule":Landroid/service/notification/ZenModeConfig$ZenRule;
    iget-wide v4, v3, Landroid/service/notification/ZenModeConfig$ZenRule;->creationTime:J

    sub-long v4, v0, v4

    const-wide/32 v6, 0xf731400

    cmp-long v4, v6, v4

    if-gez v4, :cond_1

    .line 1960
    :try_start_0
    invoke-virtual {v3}, Landroid/service/notification/ZenModeConfig$ZenRule;->getPkg()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 1961
    iget-object v4, p0, Lcom/android/server/notification/ZenModeHelper;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v3}, Landroid/service/notification/ZenModeConfig$ZenRule;->getPkg()Ljava/lang/String;

    move-result-object v5

    const/high16 v6, 0x400000

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1963
    :catch_0
    move-exception v4

    goto :goto_2

    .line 1965
    :cond_0
    :goto_1
    goto :goto_3

    .line 1963
    :goto_2
    nop

    .line 1964
    .local v4, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {p1, v2}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 1956
    .end local v3    # "rule":Landroid/service/notification/ZenModeConfig$ZenRule;
    .end local v4    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_1
    :goto_3
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 1969
    .end local v2    # "i":I
    :cond_2
    return-void
.end method

.method private deleteUnusedImplicitRules(Landroid/util/ArrayMap;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/service/notification/ZenModeConfig$ZenRule;",
            ">;)V"
        }
    .end annotation

    .line 1972
    .local p1, "ruleList":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/service/notification/ZenModeConfig$ZenRule;>;"
    if-nez p1, :cond_0

    .line 1973
    return-void

    .line 1975
    :cond_0
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->instant()Ljava/time/Instant;

    move-result-object v0

    sget-object v1, Lcom/android/server/notification/ZenModeHelper;->IMPLICIT_RULE_KEPT_FOR:Ljava/time/Duration;

    invoke-virtual {v0, v1}, Ljava/time/Instant;->minus(Ljava/time/temporal/TemporalAmount;)Ljava/time/Instant;

    move-result-object v0

    .line 1977
    .local v0, "deleteIfUnusedSince":Ljava/time/Instant;
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_3

    .line 1978
    invoke-virtual {p1, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 1979
    .local v2, "rule":Landroid/service/notification/ZenModeConfig$ZenRule;
    iget-object v3, v2, Landroid/service/notification/ZenModeConfig$ZenRule;->id:Ljava/lang/String;

    invoke-static {v3}, Landroid/service/notification/ZenModeConfig;->isImplicitRuleId(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v2}, Landroid/service/notification/ZenModeConfig$ZenRule;->isUserModified()Z

    move-result v3

    if-nez v3, :cond_2

    .line 1980
    iget-object v3, v2, Landroid/service/notification/ZenModeConfig$ZenRule;->lastActivation:Ljava/time/Instant;

    if-nez v3, :cond_1

    .line 1984
    iget-object v3, p0, Lcom/android/server/notification/ZenModeHelper;->mClock:Ljava/time/Clock;

    invoke-virtual {v3}, Ljava/time/Clock;->instant()Ljava/time/Instant;

    move-result-object v3

    iput-object v3, v2, Landroid/service/notification/ZenModeConfig$ZenRule;->lastActivation:Ljava/time/Instant;

    .line 1987
    :cond_1
    iget-object v3, v2, Landroid/service/notification/ZenModeConfig$ZenRule;->lastActivation:Ljava/time/Instant;

    invoke-virtual {v3, v0}, Ljava/time/Instant;->isBefore(Ljava/time/Instant;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1988
    invoke-virtual {p1, v1}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 1977
    .end local v2    # "rule":Landroid/service/notification/ZenModeConfig$ZenRule;
    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_3
    nop

    .line 1992
    .end local v1    # "i":I
    return-void
.end method

.method private dispatchOnAutomaticRuleStatusChanged(ILjava/lang/String;Ljava/lang/String;I)V
    .locals 2
    .param p1, "userId"    # I
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "id"    # Ljava/lang/String;
    .param p4, "status"    # I

    .line 2524
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/notification/ZenModeHelper$Callback;

    .line 2525
    .local v1, "callback":Lcom/android/server/notification/ZenModeHelper$Callback;
    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/android/server/notification/ZenModeHelper$Callback;->onAutomaticRuleStatusChanged(ILjava/lang/String;Ljava/lang/String;I)V

    .line 2526
    .end local v1    # "callback":Lcom/android/server/notification/ZenModeHelper$Callback;
    goto :goto_0

    .line 2527
    :cond_0
    return-void
.end method

.method private dispatchOnConfigChanged()V
    .locals 2

    .line 2499
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/notification/ZenModeHelper$Callback;

    .line 2500
    .local v1, "callback":Lcom/android/server/notification/ZenModeHelper$Callback;
    invoke-virtual {v1}, Lcom/android/server/notification/ZenModeHelper$Callback;->onConfigChanged()V

    .line 2501
    .end local v1    # "callback":Lcom/android/server/notification/ZenModeHelper$Callback;
    goto :goto_0

    .line 2502
    :cond_0
    return-void
.end method

.method private dispatchOnConsolidatedPolicyChanged(Landroid/app/NotificationManager$Policy;)V
    .locals 2
    .param p1, "newConsolidatedPolicy"    # Landroid/app/NotificationManager$Policy;

    .line 2511
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/notification/ZenModeHelper$Callback;

    .line 2512
    .local v1, "callback":Lcom/android/server/notification/ZenModeHelper$Callback;
    invoke-virtual {v1, p1}, Lcom/android/server/notification/ZenModeHelper$Callback;->onConsolidatedPolicyChanged(Landroid/app/NotificationManager$Policy;)V

    .line 2513
    .end local v1    # "callback":Lcom/android/server/notification/ZenModeHelper$Callback;
    goto :goto_0

    .line 2514
    :cond_0
    return-void
.end method

.method private dispatchOnPolicyChanged(Landroid/app/NotificationManager$Policy;)V
    .locals 2
    .param p1, "newPolicy"    # Landroid/app/NotificationManager$Policy;

    .line 2505
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/notification/ZenModeHelper$Callback;

    .line 2506
    .local v1, "callback":Lcom/android/server/notification/ZenModeHelper$Callback;
    invoke-virtual {v1, p1}, Lcom/android/server/notification/ZenModeHelper$Callback;->onPolicyChanged(Landroid/app/NotificationManager$Policy;)V

    .line 2507
    .end local v1    # "callback":Lcom/android/server/notification/ZenModeHelper$Callback;
    goto :goto_0

    .line 2508
    :cond_0
    return-void
.end method

.method private dispatchOnZenModeChanged()V
    .locals 2

    .line 2517
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/notification/ZenModeHelper$Callback;

    .line 2518
    .local v1, "callback":Lcom/android/server/notification/ZenModeHelper$Callback;
    invoke-virtual {v1}, Lcom/android/server/notification/ZenModeHelper$Callback;->onZenModeChanged()V

    .line 2519
    .end local v1    # "callback":Lcom/android/server/notification/ZenModeHelper$Callback;
    goto :goto_0

    .line 2520
    :cond_0
    return-void
.end method

.method private static doesOriginAlwaysUpdateValues(I)Z
    .locals 1
    .param p0, "origin"    # I

    .line 1341
    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const/4 v0, 0x5

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

.method private drawableResIdToResName(Ljava/lang/String;I)Ljava/lang/String;
    .locals 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "resId"    # I

    .line 2817
    const-string v0, "Resource name for ID="

    const-string v1, "ZenModeHelper"

    const/4 v2, 0x0

    if-nez p2, :cond_0

    .line 2818
    return-object v2

    .line 2820
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2822
    :try_start_0
    iget-object v3, p0, Lcom/android/server/notification/ZenModeHelper;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v3, p1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v3

    .line 2823
    .local v3, "res":Landroid/content/res/Resources;
    invoke-virtual {v3, p2}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v4

    .line 2824
    .local v4, "resourceName":Ljava/lang/String;
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v6, 0x3e8

    if-le v5, v6, :cond_1

    .line 2825
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " in package "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " is too long ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2826
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "); ignoring it"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2825
    invoke-static {v1, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2827
    return-object v2

    .line 2830
    .end local v3    # "res":Landroid/content/res/Resources;
    .end local v4    # "resourceName":Ljava/lang/String;
    :catch_0
    move-exception v3

    goto :goto_0

    .line 2829
    .restart local v3    # "res":Landroid/content/res/Resources;
    .restart local v4    # "resourceName":Ljava/lang/String;
    :cond_1
    return-object v4

    .line 2830
    .end local v3    # "res":Landroid/content/res/Resources;
    .end local v4    # "resourceName":Ljava/lang/String;
    :goto_0
    nop

    .line 2831
    .local v3, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " not found in package "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ". Resource IDs may change when the application is upgraded, and the system may not be able to find the correct resource."

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2834
    return-object v2
.end method

.method private drawableResNameToResId(Ljava/lang/String;Ljava/lang/String;)I
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "resourceName"    # Ljava/lang/String;

    .line 2804
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2805
    return v1

    .line 2808
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v0

    .line 2809
    .local v0, "res":Landroid/content/res/Resources;
    const/4 v2, 0x0

    invoke-virtual {v0, p2, v2, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 2810
    .end local v0    # "res":Landroid/content/res/Resources;
    :catch_0
    move-exception v0

    .line 2811
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v2, "ZenModeHelper"

    const-string v3, "cannot load rule icon for pkg"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2813
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    return v1
.end method

.method private static dump(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/service/notification/ZenModeConfig;)V
    .locals 1
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "var"    # Ljava/lang/String;
    .param p3, "config"    # Landroid/service/notification/ZenModeConfig;

    .line 1722
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/16 v0, 0x3d

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(C)V

    .line 1723
    invoke-virtual {p0, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1724
    return-void
.end method

.method private static findMatchingRules(Landroid/service/notification/ZenModeConfig;Landroid/net/Uri;Landroid/service/notification/Condition;)Ljava/util/List;
    .locals 4
    .param p0, "config"    # Landroid/service/notification/ZenModeConfig;
    .param p1, "id"    # Landroid/net/Uri;
    .param p2, "condition"    # Landroid/service/notification/Condition;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/service/notification/ZenModeConfig;",
            "Landroid/net/Uri;",
            "Landroid/service/notification/Condition;",
            ")",
            "Ljava/util/List<",
            "Landroid/service/notification/ZenModeConfig$ZenRule;",
            ">;"
        }
    .end annotation

    .line 1012
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1013
    .local v0, "matchingRules":Ljava/util/List;, "Ljava/util/List<Landroid/service/notification/ZenModeConfig$ZenRule;>;"
    iget-object v1, p0, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    invoke-static {p1, p2, v1}, Lcom/android/server/notification/ZenModeHelper;->ruleMatches(Landroid/net/Uri;Landroid/service/notification/Condition;Landroid/service/notification/ZenModeConfig$ZenRule;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1014
    iget-object v1, p0, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1016
    :cond_0
    iget-object v1, p0, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    nop

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 1017
    .local v2, "automaticRule":Landroid/service/notification/ZenModeConfig$ZenRule;
    invoke-static {p1, p2, v2}, Lcom/android/server/notification/ZenModeHelper;->ruleMatches(Landroid/net/Uri;Landroid/service/notification/Condition;Landroid/service/notification/ZenModeConfig$ZenRule;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1018
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1020
    .end local v2    # "automaticRule":Landroid/service/notification/ZenModeConfig$ZenRule;
    :cond_1
    goto :goto_0

    .line 1022
    :cond_2
    :goto_1
    return-object v0
.end method

.method private getActivityInfo(Landroid/content/ComponentName;)Landroid/content/pm/ActivityInfo;
    .locals 6
    .param p1, "configActivity"    # Landroid/content/ComponentName;

    .line 1158
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1159
    .local v0, "queryIntent":Landroid/content/Intent;
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1160
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mPm:Landroid/content/pm/PackageManager;

    .line 1163
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    .line 1160
    const/16 v3, 0x81

    invoke-virtual {v1, v0, v3, v2}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v1

    .line 1164
    .local v1, "installedComponents":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v1, :cond_0

    .line 1165
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    .local v3, "count":I
    if-ge v2, v3, :cond_0

    .line 1166
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 1167
    .local v4, "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v5, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    return-object v5

    .line 1170
    .end local v2    # "i":I
    .end local v3    # "count":I
    .end local v4    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_0
    const/4 v2, 0x0

    return-object v2
.end method

.method private getConfigLocked(Landroid/os/UserHandle;)Landroid/service/notification/ZenModeConfig;
    .locals 2
    .param p1, "user"    # Landroid/os/UserHandle;

    .line 2028
    nop

    .line 2029
    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    const/4 v1, -0x2

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    iget v1, p0, Lcom/android/server/notification/ZenModeHelper;->mUser:I

    if-ne v0, v1, :cond_1

    :cond_0
    goto :goto_0

    .line 2032
    :cond_1
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mConfigs:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/service/notification/ZenModeConfig;

    return-object v0

    .line 2030
    :goto_0
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    return-object v0
.end method

.method private static getNotificationPolicy(Landroid/service/notification/ZenModeConfig;)Landroid/app/NotificationManager$Policy;
    .locals 1
    .param p0, "config"    # Landroid/service/notification/ZenModeConfig;

    .line 1878
    if-nez p0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/service/notification/ZenModeConfig;->toNotificationPolicy()Landroid/app/NotificationManager$Policy;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method private getPackageRuleCount(Landroid/os/UserHandle;Ljava/lang/String;)I
    .locals 6
    .param p1, "user"    # Landroid/os/UserHandle;
    .param p2, "pkg"    # Ljava/lang/String;

    .line 1053
    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 1054
    return v0

    .line 1056
    :cond_0
    const/4 v1, 0x0

    .line 1057
    .local v1, "count":I
    iget-object v2, p0, Lcom/android/server/notification/ZenModeHelper;->mConfigLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1058
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/notification/ZenModeHelper;->getConfigLocked(Landroid/os/UserHandle;)Landroid/service/notification/ZenModeConfig;

    move-result-object v3

    .line 1059
    .local v3, "config":Landroid/service/notification/ZenModeConfig;
    if-nez v3, :cond_1

    monitor-exit v2

    return v0

    .line 1066
    .end local v3    # "config":Landroid/service/notification/ZenModeConfig;
    :catchall_0
    move-exception v0

    goto :goto_1

    .line 1061
    .restart local v3    # "config":Landroid/service/notification/ZenModeConfig;
    :cond_1
    iget-object v0, v3, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    nop

    if-eqz v4, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 1062
    .local v4, "rule":Landroid/service/notification/ZenModeConfig$ZenRule;
    invoke-virtual {v4}, Landroid/service/notification/ZenModeConfig$ZenRule;->getPkg()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1063
    add-int/lit8 v1, v1, 0x1

    .line 1065
    .end local v4    # "rule":Landroid/service/notification/ZenModeConfig$ZenRule;
    :cond_2
    goto :goto_0

    .line 1066
    .end local v3    # "config":Landroid/service/notification/ZenModeConfig;
    :cond_3
    monitor-exit v2

    .line 1067
    return v1

    .line 1066
    :goto_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private getPackageUid(Ljava/lang/String;I)I
    .locals 3
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "user"    # I

    .line 2629
    const-string v0, "android"

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2630
    const/16 v0, 0x3e8

    return v0

    .line 2632
    :cond_0
    invoke-static {p1, p2}, Lcom/android/server/notification/ZenModeHelper;->getPackageUserKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 2633
    .local v0, "key":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mRulesUidCache:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    .line 2635
    :try_start_0
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mRulesUidCache:Landroid/util/ArrayMap;

    iget-object v2, p0, Lcom/android/server/notification/ZenModeHelper;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, p1, p2}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2637
    goto :goto_0

    .line 2636
    :catch_0
    move-exception v1

    .line 2639
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mRulesUidCache:Landroid/util/ArrayMap;

    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/util/ArrayMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1
.end method

.method private static getPackageUserKey(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2
    .param p0, "pkg"    # Ljava/lang/String;
    .param p1, "user"    # I

    .line 2643
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getPreviousRingerModeSetting()I
    .locals 3

    .line 2170
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "zen_mode_ringer_level"

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private getServiceInfo(Landroid/content/ComponentName;)Landroid/content/pm/ServiceInfo;
    .locals 8
    .param p1, "owner"    # Landroid/content/ComponentName;

    .line 1139
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1140
    .local v0, "queryIntent":Landroid/content/Intent;
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1141
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mPm:Landroid/content/pm/PackageManager;

    .line 1144
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    .line 1141
    const/16 v3, 0x84

    invoke-virtual {v1, v0, v3, v2}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v1

    .line 1145
    .local v1, "installedServices":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v1, :cond_1

    .line 1146
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    .local v3, "count":I
    :goto_0
    if-ge v2, v3, :cond_1

    .line 1147
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 1148
    .local v4, "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v5, v4, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 1149
    .local v5, "info":Landroid/content/pm/ServiceInfo;
    iget-object v6, p0, Lcom/android/server/notification/ZenModeHelper;->mServiceConfig:Lcom/android/server/notification/ManagedServices$Config;

    iget-object v6, v6, Lcom/android/server/notification/ManagedServices$Config;->bindPermission:Ljava/lang/String;

    iget-object v7, v5, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1150
    return-object v5

    .line 1149
    :cond_0
    nop

    .line 1146
    .end local v4    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .end local v5    # "info":Landroid/content/pm/ServiceInfo;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1154
    .end local v2    # "i":I
    .end local v3    # "count":I
    :cond_1
    const/4 v2, 0x0

    return-object v2
.end method

.method private getZenModeSetting()I
    .locals 3

    .line 2159
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "zen_mode"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private synthetic lambda$updateImplicitZenRuleNameAndDescription$0(Landroid/service/notification/ZenModeConfig$ZenRule;)Ljava/lang/String;
    .locals 3
    .param p1, "rule"    # Landroid/service/notification/ZenModeConfig$ZenRule;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 776
    :try_start_0
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mPm:Landroid/content/pm/PackageManager;

    iget-object v1, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->pkg:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 777
    .local v0, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v1}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 778
    .end local v0    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v0

    .line 781
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v1, "ZenModeHelper"

    const-string v2, "Package not found when updating implicit zen rule name"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 782
    const/4 v1, 0x0

    return-object v1
.end method

.method private loadConfigForUser(ILjava/lang/String;)V
    .locals 9
    .param p1, "user"    # I
    .param p2, "reason"    # Ljava/lang/String;

    .line 361
    iget v0, p0, Lcom/android/server/notification/ZenModeHelper;->mUser:I

    if-eq v0, p1, :cond_5

    if-gez p1, :cond_0

    move-object v6, p2

    goto/16 :goto_3

    .line 362
    :cond_0
    iput p1, p0, Lcom/android/server/notification/ZenModeHelper;->mUser:I

    .line 363
    sget-boolean v0, Lcom/android/server/notification/ZenModeHelper;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "ZenModeHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " u="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    :cond_1
    const/4 v1, 0x0

    .line 365
    .local v1, "config":Landroid/service/notification/ZenModeConfig;
    iget-object v2, p0, Lcom/android/server/notification/ZenModeHelper;->mConfigLock:Ljava/lang/Object;

    monitor-enter v2

    .line 366
    :try_start_0
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mConfigs:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-eqz v0, :cond_2

    .line 367
    :try_start_1
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mConfigs:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/service/notification/ZenModeConfig;

    invoke-virtual {v0}, Landroid/service/notification/ZenModeConfig;->copy()Landroid/service/notification/ZenModeConfig;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v1, v0

    goto :goto_0

    .line 369
    :catchall_0
    move-exception v0

    move-object v6, p2

    goto :goto_2

    :cond_2
    :goto_0
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 370
    if-nez v1, :cond_4

    .line 371
    sget-boolean v0, Lcom/android/server/notification/ZenModeHelper;->DEBUG:Z

    if-eqz v0, :cond_3

    const-string v0, "ZenModeHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " generating default config for user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    :cond_3
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mDefaultConfig:Landroid/service/notification/ZenModeConfig;

    invoke-virtual {v0}, Landroid/service/notification/ZenModeConfig;->copy()Landroid/service/notification/ZenModeConfig;

    move-result-object v1

    .line 373
    iput p1, v1, Landroid/service/notification/ZenModeConfig;->user:I

    move-object v3, v1

    goto :goto_1

    .line 370
    :cond_4
    move-object v3, v1

    .line 375
    .end local v1    # "config":Landroid/service/notification/ZenModeConfig;
    .local v3, "config":Landroid/service/notification/ZenModeConfig;
    :goto_1
    iget-object v8, p0, Lcom/android/server/notification/ZenModeHelper;->mConfigLock:Ljava/lang/Object;

    monitor-enter v8

    .line 376
    const/4 v5, 0x2

    const/16 v7, 0x3e8

    const/4 v4, 0x0

    move-object v2, p0

    move-object v6, p2

    .end local p2    # "reason":Ljava/lang/String;
    .local v6, "reason":Ljava/lang/String;
    :try_start_3
    invoke-direct/range {v2 .. v7}, Lcom/android/server/notification/ZenModeHelper;->setConfigLocked(Landroid/service/notification/ZenModeConfig;Landroid/content/ComponentName;ILjava/lang/String;I)Z

    .line 378
    monitor-exit v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 379
    invoke-direct {p0}, Lcom/android/server/notification/ZenModeHelper;->cleanUpZenRules()V

    .line 380
    return-void

    .line 378
    :catchall_1
    move-exception v0

    move-object p2, v0

    :try_start_4
    monitor-exit v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p2

    .line 369
    .end local v3    # "config":Landroid/service/notification/ZenModeConfig;
    .end local v6    # "reason":Ljava/lang/String;
    .restart local v1    # "config":Landroid/service/notification/ZenModeConfig;
    .restart local p2    # "reason":Ljava/lang/String;
    :catchall_2
    move-exception v0

    move-object v6, p2

    .end local p2    # "reason":Ljava/lang/String;
    .restart local v6    # "reason":Ljava/lang/String;
    :goto_2
    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    throw v0

    :catchall_3
    move-exception v0

    goto :goto_2

    .line 361
    .end local v1    # "config":Landroid/service/notification/ZenModeConfig;
    .end local v6    # "reason":Ljava/lang/String;
    .restart local p2    # "reason":Ljava/lang/String;
    :cond_5
    move-object v6, p2

    .end local p2    # "reason":Ljava/lang/String;
    .restart local v6    # "reason":Ljava/lang/String;
    :goto_3
    return-void
.end method

.method private maybePreserveRemovedRule(Landroid/service/notification/ZenModeConfig;Landroid/service/notification/ZenModeConfig$ZenRule;I)V
    .locals 3
    .param p1, "config"    # Landroid/service/notification/ZenModeConfig;
    .param p2, "ruleToRemove"    # Landroid/service/notification/ZenModeConfig$ZenRule;
    .param p3, "origin"    # I

    .line 873
    const/4 v0, 0x4

    if-ne p3, v0, :cond_0

    invoke-virtual {p2}, Landroid/service/notification/ZenModeConfig$ZenRule;->isUserModified()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p2, Landroid/service/notification/ZenModeConfig$ZenRule;->pkg:Ljava/lang/String;

    .line 874
    const-string v1, "android"

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 875
    invoke-static {p2}, Landroid/service/notification/ZenModeConfig;->deletedRuleKey(Landroid/service/notification/ZenModeConfig$ZenRule;)Ljava/lang/String;

    move-result-object v0

    .line 876
    .local v0, "deletedKey":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 877
    invoke-virtual {p2}, Landroid/service/notification/ZenModeConfig$ZenRule;->copy()Landroid/service/notification/ZenModeConfig$ZenRule;

    move-result-object v1

    .line 878
    .local v1, "deletedRule":Landroid/service/notification/ZenModeConfig$ZenRule;
    iget-object v2, p0, Lcom/android/server/notification/ZenModeHelper;->mClock:Ljava/time/Clock;

    invoke-static {v2}, Ljava/time/Instant;->now(Ljava/time/Clock;)Ljava/time/Instant;

    move-result-object v2

    iput-object v2, v1, Landroid/service/notification/ZenModeConfig$ZenRule;->deletionInstant:Ljava/time/Instant;

    .line 880
    const/4 v2, 0x0

    iput-object v2, v1, Landroid/service/notification/ZenModeConfig$ZenRule;->condition:Landroid/service/notification/Condition;

    .line 881
    invoke-virtual {v1}, Landroid/service/notification/ZenModeConfig$ZenRule;->resetConditionOverride()V

    .line 883
    iget-object v2, p1, Landroid/service/notification/ZenModeConfig;->deletedRules:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 886
    .end local v0    # "deletedKey":Ljava/lang/String;
    .end local v1    # "deletedRule":Landroid/service/notification/ZenModeConfig$ZenRule;
    :cond_0
    return-void
.end method

.method private static maybeReplaceDefaultRule(Landroid/service/notification/ZenModeConfig;Landroid/service/notification/ZenModeConfig$ZenRule;Landroid/app/AutomaticZenRule;)V
    .locals 3
    .param p0, "config"    # Landroid/service/notification/ZenModeConfig;
    .param p1, "oldRule"    # Landroid/service/notification/ZenModeConfig$ZenRule;
    .param p2, "rule"    # Landroid/app/AutomaticZenRule;

    .line 535
    invoke-virtual {p2}, Landroid/app/AutomaticZenRule;->getType()I

    move-result v0

    const/4 v1, 0x3

    nop

    if-ne v0, v1, :cond_1

    nop

    if-eqz p1, :cond_0

    iget v0, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->type:I

    .line 536
    invoke-virtual {p2}, Landroid/app/AutomaticZenRule;->getType()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 539
    :cond_0
    iget-object v0, p0, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    const-string v1, "EVERY_NIGHT_DEFAULT_RULE"

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 541
    .local v0, "sleepingRule":Landroid/service/notification/ZenModeConfig$ZenRule;
    if-eqz v0, :cond_1

    iget-boolean v2, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->enabled:Z

    if-nez v2, :cond_1

    .line 543
    invoke-virtual {v0}, Landroid/service/notification/ZenModeConfig$ZenRule;->isUserModified()Z

    move-result v2

    if-nez v2, :cond_1

    .line 544
    iget-object v2, p0, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 547
    .end local v0    # "sleepingRule":Landroid/service/notification/ZenModeConfig$ZenRule;
    :cond_1
    return-void
.end method

.method private maybeRestoreRemovedRule(Landroid/service/notification/ZenModeConfig;Ljava/lang/String;Landroid/service/notification/ZenModeConfig$ZenRule;Landroid/app/AutomaticZenRule;I)Landroid/service/notification/ZenModeConfig$ZenRule;
    .locals 9
    .param p1, "config"    # Landroid/service/notification/ZenModeConfig;
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "ruleToAdd"    # Landroid/service/notification/ZenModeConfig$ZenRule;
    .param p4, "azrToAdd"    # Landroid/app/AutomaticZenRule;
    .param p5, "origin"    # I

    .line 488
    invoke-static {p3}, Landroid/service/notification/ZenModeConfig;->deletedRuleKey(Landroid/service/notification/ZenModeConfig$ZenRule;)Ljava/lang/String;

    move-result-object v0

    .line 489
    .local v0, "deletedKey":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 492
    return-object p3

    .line 494
    :cond_0
    iget-object v1, p1, Landroid/service/notification/ZenModeConfig;->deletedRules:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 495
    .local v6, "ruleToRestore":Landroid/service/notification/ZenModeConfig$ZenRule;
    if-nez v6, :cond_1

    .line 496
    return-object p3

    .line 501
    :cond_1
    iget-object v1, p1, Landroid/service/notification/ZenModeConfig;->deletedRules:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 502
    const/4 v1, 0x0

    iput-object v1, v6, Landroid/service/notification/ZenModeConfig$ZenRule;->deletionInstant:Ljava/time/Instant;

    .line 504
    const/4 v1, 0x4

    if-eq p5, v1, :cond_2

    .line 505
    return-object p3

    .line 507
    :cond_2
    nop

    .line 508
    iget-object v1, v6, Landroid/service/notification/ZenModeConfig$ZenRule;->pkg:Ljava/lang/String;

    invoke-static {v1, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, v6, Landroid/service/notification/ZenModeConfig$ZenRule;->component:Landroid/content/ComponentName;

    .line 509
    invoke-virtual {p4}, Landroid/app/AutomaticZenRule;->getOwner()Landroid/content/ComponentName;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    move-object v5, p1

    move-object v3, p2

    move-object v4, p4

    move v7, p5

    goto :goto_0

    .line 518
    :cond_3
    const/4 v8, 0x0

    move-object v2, p0

    move-object v5, p1

    move-object v3, p2

    move-object v4, p4

    move v7, p5

    .end local p1    # "config":Landroid/service/notification/ZenModeConfig;
    .end local p2    # "pkg":Ljava/lang/String;
    .end local p4    # "azrToAdd":Landroid/app/AutomaticZenRule;
    .end local p5    # "origin":I
    .local v3, "pkg":Ljava/lang/String;
    .local v4, "azrToAdd":Landroid/app/AutomaticZenRule;
    .local v5, "config":Landroid/service/notification/ZenModeConfig;
    .local v7, "origin":I
    invoke-direct/range {v2 .. v8}, Lcom/android/server/notification/ZenModeHelper;->populateZenRule(Ljava/lang/String;Landroid/app/AutomaticZenRule;Landroid/service/notification/ZenModeConfig;Landroid/service/notification/ZenModeConfig$ZenRule;IZ)Z

    .line 519
    return-object v6

    .line 508
    .end local v3    # "pkg":Ljava/lang/String;
    .end local v4    # "azrToAdd":Landroid/app/AutomaticZenRule;
    .end local v5    # "config":Landroid/service/notification/ZenModeConfig;
    .end local v7    # "origin":I
    .restart local p1    # "config":Landroid/service/notification/ZenModeConfig;
    .restart local p2    # "pkg":Ljava/lang/String;
    .restart local p4    # "azrToAdd":Landroid/app/AutomaticZenRule;
    .restart local p5    # "origin":I
    :cond_4
    move-object v5, p1

    move-object v3, p2

    move-object v4, p4

    move v7, p5

    .line 512
    .end local p1    # "config":Landroid/service/notification/ZenModeConfig;
    .end local p2    # "pkg":Ljava/lang/String;
    .end local p4    # "azrToAdd":Landroid/app/AutomaticZenRule;
    .end local p5    # "origin":I
    .restart local v3    # "pkg":Ljava/lang/String;
    .restart local v4    # "azrToAdd":Landroid/app/AutomaticZenRule;
    .restart local v5    # "config":Landroid/service/notification/ZenModeConfig;
    .restart local v7    # "origin":I
    :goto_0
    return-object p3
.end method

.method private newImplicitZenRule(Ljava/lang/String;)Landroid/service/notification/ZenModeConfig$ZenRule;
    .locals 4
    .param p1, "pkg"    # Ljava/lang/String;

    .line 751
    new-instance v0, Landroid/service/notification/ZenModeConfig$ZenRule;

    invoke-direct {v0}, Landroid/service/notification/ZenModeConfig$ZenRule;-><init>()V

    .line 752
    .local v0, "rule":Landroid/service/notification/ZenModeConfig$ZenRule;
    invoke-static {p1}, Landroid/service/notification/ZenModeConfig;->implicitRuleId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->id:Ljava/lang/String;

    .line 753
    iput-object p1, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->pkg:Ljava/lang/String;

    .line 754
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mClock:Ljava/time/Clock;

    invoke-virtual {v1}, Ljava/time/Clock;->millis()J

    move-result-wide v1

    iput-wide v1, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->creationTime:J

    .line 755
    invoke-direct {p0, v0}, Lcom/android/server/notification/ZenModeHelper;->updateImplicitZenRuleNameAndDescription(Landroid/service/notification/ZenModeConfig$ZenRule;)V

    .line 756
    const/4 v1, 0x0

    iput v1, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->type:I

    .line 757
    const/4 v1, 0x0

    iput-object v1, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->condition:Landroid/service/notification/Condition;

    .line 758
    new-instance v2, Landroid/net/Uri$Builder;

    invoke-direct {v2}, Landroid/net/Uri$Builder;-><init>()V

    .line 759
    const-string v3, "condition"

    invoke-virtual {v2, v3}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    .line 760
    const-string v3, "android"

    invoke-virtual {v2, v3}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    .line 761
    const-string/jumbo v3, "implicit"

    invoke-virtual {v2, v3}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    .line 762
    invoke-virtual {v2, p1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    .line 763
    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    iput-object v2, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    .line 764
    const/4 v2, 0x1

    iput-boolean v2, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->enabled:Z

    .line 765
    iput-object v1, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->component:Landroid/content/ComponentName;

    .line 766
    iput-object v1, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->configurationActivity:Landroid/content/ComponentName;

    .line 767
    return-object v0
.end method

.method private populateZenRule(Ljava/lang/String;Landroid/app/AutomaticZenRule;Landroid/service/notification/ZenModeConfig;Landroid/service/notification/ZenModeConfig$ZenRule;IZ)Z
    .locals 17
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "azr"    # Landroid/app/AutomaticZenRule;
    .param p3, "config"    # Landroid/service/notification/ZenModeConfig;
    .param p4, "rule"    # Landroid/service/notification/ZenModeConfig$ZenRule;
    .param p5, "origin"    # I
    .param p6, "isNew"    # Z

    .line 1195
    move-object/from16 v0, p0

    move-object/from16 v2, p4

    move/from16 v6, p5

    const/4 v1, 0x0

    .line 1197
    .local v1, "modified":Z
    if-eqz p6, :cond_0

    .line 1198
    invoke-static {}, Landroid/service/notification/ZenModeConfig;->newRuleId()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Landroid/service/notification/ZenModeConfig$ZenRule;->id:Ljava/lang/String;

    .line 1199
    iget-object v3, v0, Lcom/android/server/notification/ZenModeHelper;->mClock:Ljava/time/Clock;

    invoke-virtual {v3}, Ljava/time/Clock;->millis()J

    move-result-wide v3

    iput-wide v3, v2, Landroid/service/notification/ZenModeConfig$ZenRule;->creationTime:J

    .line 1200
    invoke-virtual/range {p2 .. p2}, Landroid/app/AutomaticZenRule;->getOwner()Landroid/content/ComponentName;

    move-result-object v3

    iput-object v3, v2, Landroid/service/notification/ZenModeConfig$ZenRule;->component:Landroid/content/ComponentName;

    .line 1201
    move-object/from16 v7, p1

    iput-object v7, v2, Landroid/service/notification/ZenModeConfig$ZenRule;->pkg:Ljava/lang/String;

    .line 1202
    const/4 v1, 0x1

    goto :goto_0

    .line 1197
    :cond_0
    move-object/from16 v7, p1

    .line 1206
    :goto_0
    const/4 v3, 0x5

    const/4 v4, 0x3

    if-eq v6, v3, :cond_1

    if-ne v6, v4, :cond_2

    :cond_1
    iget-object v3, v2, Landroid/service/notification/ZenModeConfig$ZenRule;->pkg:Ljava/lang/String;

    .line 1208
    const-string v5, "android"

    invoke-static {v3, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    nop

    if-eqz v3, :cond_2

    iget-object v3, v2, Landroid/service/notification/ZenModeConfig$ZenRule;->component:Landroid/content/ComponentName;

    .line 1209
    invoke-virtual/range {p2 .. p2}, Landroid/app/AutomaticZenRule;->getOwner()Landroid/content/ComponentName;

    move-result-object v5

    invoke-static {v3, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 1210
    invoke-virtual/range {p2 .. p2}, Landroid/app/AutomaticZenRule;->getOwner()Landroid/content/ComponentName;

    move-result-object v3

    iput-object v3, v2, Landroid/service/notification/ZenModeConfig$ZenRule;->component:Landroid/content/ComponentName;

    .line 1211
    const/4 v1, 0x1

    .line 1214
    :cond_2
    nop

    .line 1215
    invoke-virtual/range {p2 .. p2}, Landroid/app/AutomaticZenRule;->isEnabled()Z

    move-result v3

    const/4 v8, 0x0

    if-nez v3, :cond_4

    if-nez p6, :cond_3

    iget-boolean v3, v2, Landroid/service/notification/ZenModeConfig$ZenRule;->enabled:Z

    if-eqz v3, :cond_4

    .line 1218
    :cond_3
    iput v6, v2, Landroid/service/notification/ZenModeConfig$ZenRule;->disabledOrigin:I

    goto :goto_1

    .line 1219
    :cond_4
    invoke-virtual/range {p2 .. p2}, Landroid/app/AutomaticZenRule;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1221
    iput v8, v2, Landroid/service/notification/ZenModeConfig$ZenRule;->disabledOrigin:I

    .line 1225
    :cond_5
    :goto_1
    iget-object v3, v2, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    invoke-virtual/range {p2 .. p2}, Landroid/app/AutomaticZenRule;->getConditionId()Landroid/net/Uri;

    move-result-object v5

    invoke-static {v3, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 1226
    invoke-virtual/range {p2 .. p2}, Landroid/app/AutomaticZenRule;->getConditionId()Landroid/net/Uri;

    move-result-object v3

    iput-object v3, v2, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    .line 1227
    const/4 v1, 0x1

    .line 1230
    :cond_6
    iget-object v3, v0, Lcom/android/server/notification/ZenModeHelper;->mContext:Landroid/content/Context;

    .line 1231
    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v5, "android.hardware.type.watch"

    invoke-virtual {v3, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v9

    .line 1233
    .local v9, "isWatch":Z
    const/4 v10, 0x1

    if-nez p6, :cond_7

    if-ne v6, v4, :cond_7

    iget-boolean v3, v2, Landroid/service/notification/ZenModeConfig$ZenRule;->enabled:Z

    .line 1236
    invoke-virtual/range {p2 .. p2}, Landroid/app/AutomaticZenRule;->isEnabled()Z

    move-result v5

    if-ne v3, v5, :cond_7

    iget-object v3, v2, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    if-eqz v3, :cond_7

    iget-object v3, v2, Landroid/service/notification/ZenModeConfig$ZenRule;->condition:Landroid/service/notification/Condition;

    if-eqz v3, :cond_7

    iget-object v3, v2, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    iget-object v5, v2, Landroid/service/notification/ZenModeConfig$ZenRule;->condition:Landroid/service/notification/Condition;

    iget-object v5, v5, Landroid/service/notification/Condition;->id:Landroid/net/Uri;

    .line 1239
    invoke-virtual {v3, v5}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    move v3, v10

    goto :goto_2

    :cond_7
    move v3, v8

    :goto_2
    move v11, v3

    .line 1240
    .local v11, "shouldPreserveCondition":Z
    if-nez v11, :cond_8

    .line 1242
    const/4 v3, 0x0

    iput-object v3, v2, Landroid/service/notification/ZenModeConfig$ZenRule;->condition:Landroid/service/notification/Condition;

    .line 1245
    :cond_8
    iget-boolean v3, v2, Landroid/service/notification/ZenModeConfig$ZenRule;->enabled:Z

    invoke-virtual/range {p2 .. p2}, Landroid/app/AutomaticZenRule;->isEnabled()Z

    move-result v5

    if-eq v3, v5, :cond_9

    .line 1246
    invoke-virtual/range {p2 .. p2}, Landroid/app/AutomaticZenRule;->isEnabled()Z

    move-result v3

    iput-boolean v3, v2, Landroid/service/notification/ZenModeConfig$ZenRule;->enabled:Z

    .line 1247
    invoke-virtual {v2}, Landroid/service/notification/ZenModeConfig$ZenRule;->resetConditionOverride()V

    .line 1248
    const/4 v1, 0x1

    .line 1250
    :cond_9
    iget-object v3, v2, Landroid/service/notification/ZenModeConfig$ZenRule;->configurationActivity:Landroid/content/ComponentName;

    invoke-virtual/range {p2 .. p2}, Landroid/app/AutomaticZenRule;->getConfigurationActivity()Landroid/content/ComponentName;

    move-result-object v5

    invoke-static {v3, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    .line 1251
    invoke-virtual/range {p2 .. p2}, Landroid/app/AutomaticZenRule;->getConfigurationActivity()Landroid/content/ComponentName;

    move-result-object v3

    iput-object v3, v2, Landroid/service/notification/ZenModeConfig$ZenRule;->configurationActivity:Landroid/content/ComponentName;

    .line 1252
    const/4 v1, 0x1

    .line 1254
    :cond_a
    iget-boolean v3, v2, Landroid/service/notification/ZenModeConfig$ZenRule;->allowManualInvocation:Z

    invoke-virtual/range {p2 .. p2}, Landroid/app/AutomaticZenRule;->isManualInvocationAllowed()Z

    move-result v5

    if-eq v3, v5, :cond_b

    .line 1255
    invoke-virtual/range {p2 .. p2}, Landroid/app/AutomaticZenRule;->isManualInvocationAllowed()Z

    move-result v3

    iput-boolean v3, v2, Landroid/service/notification/ZenModeConfig$ZenRule;->allowManualInvocation:Z

    .line 1256
    const/4 v1, 0x1

    .line 1258
    :cond_b
    nop

    .line 1265
    iget-object v3, v2, Landroid/service/notification/ZenModeConfig$ZenRule;->triggerDescription:Ljava/lang/String;

    invoke-virtual/range {p2 .. p2}, Landroid/app/AutomaticZenRule;->getTriggerDescription()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_c

    .line 1266
    invoke-virtual/range {p2 .. p2}, Landroid/app/AutomaticZenRule;->getTriggerDescription()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Landroid/service/notification/ZenModeConfig$ZenRule;->triggerDescription:Ljava/lang/String;

    .line 1267
    const/4 v1, 0x1

    .line 1269
    :cond_c
    iget v3, v2, Landroid/service/notification/ZenModeConfig$ZenRule;->type:I

    invoke-virtual/range {p2 .. p2}, Landroid/app/AutomaticZenRule;->getType()I

    move-result v5

    if-eq v3, v5, :cond_d

    .line 1270
    invoke-virtual/range {p2 .. p2}, Landroid/app/AutomaticZenRule;->getType()I

    move-result v3

    iput v3, v2, Landroid/service/notification/ZenModeConfig$ZenRule;->type:I

    .line 1271
    const/4 v1, 0x1

    .line 1279
    :cond_d
    iget-object v12, v2, Landroid/service/notification/ZenModeConfig$ZenRule;->name:Ljava/lang/String;

    .line 1280
    .local v12, "previousName":Ljava/lang/String;
    if-nez p6, :cond_e

    invoke-static {v6}, Lcom/android/server/notification/ZenModeHelper;->doesOriginAlwaysUpdateValues(I)Z

    move-result v3

    if-nez v3, :cond_e

    iget v3, v2, Landroid/service/notification/ZenModeConfig$ZenRule;->userModifiedFields:I

    and-int/2addr v3, v10

    if-nez v3, :cond_f

    .line 1282
    :cond_e
    invoke-virtual/range {p2 .. p2}, Landroid/app/AutomaticZenRule;->getName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Landroid/service/notification/ZenModeConfig$ZenRule;->name:Ljava/lang/String;

    .line 1283
    iget-object v3, v2, Landroid/service/notification/ZenModeConfig$ZenRule;->name:Ljava/lang/String;

    invoke-static {v3, v12}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    xor-int/2addr v3, v10

    or-int/2addr v1, v3

    .line 1290
    :cond_f
    if-nez p6, :cond_11

    invoke-static {v6}, Lcom/android/server/notification/ZenModeHelper;->doesOriginAlwaysUpdateValues(I)Z

    move-result v3

    if-nez v3, :cond_11

    .line 1291
    invoke-virtual {v2}, Landroid/service/notification/ZenModeConfig$ZenRule;->isUserModified()Z

    move-result v3

    if-nez v3, :cond_10

    goto :goto_3

    :cond_10
    move v3, v8

    goto :goto_4

    :cond_11
    :goto_3
    move v3, v10

    :goto_4
    move v13, v3

    .line 1294
    .local v13, "updateValues":Z
    if-nez v13, :cond_12

    .line 1295
    return v1

    .line 1299
    :cond_12
    if-ne v6, v4, :cond_13

    move v4, v10

    goto :goto_5

    :cond_13
    move v4, v8

    .line 1301
    .local v4, "updateBitmask":Z
    :goto_5
    if-eqz v4, :cond_14

    invoke-virtual/range {p2 .. p2}, Landroid/app/AutomaticZenRule;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v12, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_14

    .line 1302
    iget v3, v2, Landroid/service/notification/ZenModeConfig$ZenRule;->userModifiedFields:I

    or-int/2addr v3, v10

    iput v3, v2, Landroid/service/notification/ZenModeConfig$ZenRule;->userModifiedFields:I

    .line 1304
    :cond_14
    nop

    .line 1305
    invoke-virtual/range {p2 .. p2}, Landroid/app/AutomaticZenRule;->getInterruptionFilter()I

    move-result v3

    .line 1304
    invoke-static {v3, v8}, Landroid/app/NotificationManager;->zenModeFromInterruptionFilter(II)I

    move-result v14

    .line 1306
    .local v14, "newZenMode":I
    iget v3, v2, Landroid/service/notification/ZenModeConfig$ZenRule;->zenMode:I

    if-eq v3, v14, :cond_16

    .line 1307
    iput v14, v2, Landroid/service/notification/ZenModeConfig$ZenRule;->zenMode:I

    .line 1308
    if-eqz v4, :cond_15

    .line 1309
    iget v3, v2, Landroid/service/notification/ZenModeConfig$ZenRule;->userModifiedFields:I

    or-int/lit8 v3, v3, 0x2

    iput v3, v2, Landroid/service/notification/ZenModeConfig$ZenRule;->userModifiedFields:I

    .line 1311
    :cond_15
    const/4 v1, 0x1

    .line 1314
    :cond_16
    nop

    .line 1315
    iget-object v3, v2, Landroid/service/notification/ZenModeConfig$ZenRule;->pkg:Ljava/lang/String;

    invoke-virtual/range {p2 .. p2}, Landroid/app/AutomaticZenRule;->getIconResId()I

    move-result v5

    invoke-direct {v0, v3, v5}, Lcom/android/server/notification/ZenModeHelper;->drawableResIdToResName(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 1316
    .local v3, "iconResName":Ljava/lang/String;
    iget-object v5, v2, Landroid/service/notification/ZenModeConfig$ZenRule;->iconResName:Ljava/lang/String;

    invoke-static {v5, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    const/4 v15, 0x4

    if-nez v5, :cond_18

    .line 1317
    iput-object v3, v2, Landroid/service/notification/ZenModeConfig$ZenRule;->iconResName:Ljava/lang/String;

    .line 1318
    if-eqz v4, :cond_17

    .line 1319
    iget v5, v2, Landroid/service/notification/ZenModeConfig$ZenRule;->userModifiedFields:I

    or-int/2addr v5, v15

    iput v5, v2, Landroid/service/notification/ZenModeConfig$ZenRule;->userModifiedFields:I

    .line 1321
    :cond_17
    const/4 v1, 0x1

    move/from16 v16, v1

    goto :goto_6

    .line 1326
    .end local v3    # "iconResName":Ljava/lang/String;
    :cond_18
    move/from16 v16, v1

    .end local v1    # "modified":Z
    .local v16, "modified":Z
    :goto_6
    invoke-virtual/range {p2 .. p2}, Landroid/app/AutomaticZenRule;->getZenPolicy()Landroid/service/notification/ZenPolicy;

    move-result-object v3

    move-object/from16 v1, p3

    move/from16 v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/android/server/notification/ZenModeHelper;->updatePolicy(Landroid/service/notification/ZenModeConfig;Landroid/service/notification/ZenModeConfig$ZenRule;Landroid/service/notification/ZenPolicy;ZZ)Z

    move-result v3

    or-int v0, v16, v3

    .line 1329
    .end local v16    # "modified":Z
    .local v0, "modified":Z
    invoke-virtual/range {p2 .. p2}, Landroid/app/AutomaticZenRule;->getDeviceEffects()Landroid/service/notification/ZenDeviceEffects;

    move-result-object v1

    if-ne v6, v15, :cond_19

    move v8, v10

    :cond_19
    invoke-static {v2, v1, v8, v4}, Lcom/android/server/notification/ZenModeHelper;->updateZenDeviceEffects(Landroid/service/notification/ZenModeConfig$ZenRule;Landroid/service/notification/ZenDeviceEffects;ZZ)Z

    move-result v1

    or-int/2addr v0, v1

    .line 1332
    return v0
.end method

.method private readDefaultConfig(Landroid/content/res/Resources;)Landroid/service/notification/ZenModeConfig;
    .locals 4
    .param p1, "resources"    # Landroid/content/res/Resources;

    .line 2531
    const/4 v0, 0x0

    .line 2533
    .local v0, "parser":Landroid/content/res/XmlResourceParser;
    const v1, 0x1170008

    :try_start_0
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v1

    move-object v0, v1

    .line 2534
    :goto_0
    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    .line 2535
    nop

    .line 2536
    invoke-static {v0}, Lcom/android/internal/util/XmlUtils;->makeTyped(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/modules/utils/TypedXmlPullParser;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/service/notification/ZenModeConfig;->readXml(Lcom/android/modules/utils/TypedXmlPullParser;Landroid/app/backup/BackupRestoreEventLogger;)Landroid/service/notification/ZenModeConfig;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2537
    .local v1, "config":Landroid/service/notification/ZenModeConfig;
    if-eqz v1, :cond_0

    .line 2542
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 2537
    return-object v1

    :cond_0
    nop

    .line 2538
    .end local v1    # "config":Landroid/service/notification/ZenModeConfig;
    goto :goto_0

    .line 2542
    :catchall_0
    move-exception v1

    goto :goto_4

    .line 2539
    :catch_0
    move-exception v1

    goto :goto_2

    .line 2542
    :cond_1
    nop

    :goto_1
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 2543
    goto :goto_3

    .line 2539
    :goto_2
    nop

    .line 2540
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v2, "ZenModeHelper"

    const-string v3, "Error reading default zen mode config from resource"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2542
    nop

    .end local v1    # "e":Ljava/lang/Exception;
    goto :goto_1

    .line 2544
    :goto_3
    new-instance v1, Landroid/service/notification/ZenModeConfig;

    invoke-direct {v1}, Landroid/service/notification/ZenModeConfig;-><init>()V

    return-object v1

    .line 2542
    :goto_4
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 2543
    throw v1
.end method

.method private static ruleMatches(Landroid/net/Uri;Landroid/service/notification/Condition;Landroid/service/notification/ZenModeConfig$ZenRule;)Z
    .locals 2
    .param p0, "id"    # Landroid/net/Uri;
    .param p1, "condition"    # Landroid/service/notification/Condition;
    .param p2, "rule"    # Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 1026
    const/4 v0, 0x0

    if-eqz p0, :cond_0

    if-eqz p2, :cond_0

    iget-object v1, p2, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    if-nez v1, :cond_1

    :cond_0
    goto :goto_0

    .line 1027
    :cond_1
    iget-object v1, p2, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    invoke-virtual {v1, p0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v0

    .line 1028
    :cond_2
    iget-object v1, p2, Landroid/service/notification/ZenModeConfig$ZenRule;->condition:Landroid/service/notification/Condition;

    invoke-static {p1, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    return v0

    .line 1029
    :cond_3
    const/4 v0, 0x1

    return v0

    .line 1026
    :goto_0
    return v0
.end method

.method private ruleToProtoLocked(ILandroid/service/notification/ZenModeConfig$ZenRule;ZLjava/util/List;)V
    .locals 16
    .param p1, "user"    # I
    .param p2, "rule"    # Landroid/service/notification/ZenModeConfig$ZenRule;
    .param p3, "isManualRule"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/service/notification/ZenModeConfig$ZenRule;",
            "Z",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)V"
        }
    .end annotation

    .line 2591
    .local p4, "events":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    move-object/from16 v0, p2

    iget-object v1, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->id:Ljava/lang/String;

    const-string v2, ""

    if-nez v1, :cond_0

    move-object v1, v2

    goto :goto_0

    :cond_0
    iget-object v1, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->id:Ljava/lang/String;

    .line 2592
    .local v1, "id":Ljava/lang/String;
    :goto_0
    invoke-static {}, Landroid/service/notification/ZenModeConfig;->getDefaultRuleIds()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 2593
    const-string v1, ""

    .line 2597
    :cond_1
    invoke-virtual {v0}, Landroid/service/notification/ZenModeConfig$ZenRule;->getPkg()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Landroid/service/notification/ZenModeConfig$ZenRule;->getPkg()Ljava/lang/String;

    move-result-object v2

    .line 2598
    .local v2, "pkg":Ljava/lang/String;
    :goto_1
    iget-object v3, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->enabler:Ljava/lang/String;

    if-eqz v3, :cond_3

    .line 2599
    iget-object v2, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->enabler:Ljava/lang/String;

    .line 2602
    :cond_3
    iget v3, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->type:I

    .line 2603
    .local v3, "ruleType":I
    if-eqz p3, :cond_4

    .line 2604
    const-string v1, "MANUAL_RULE"

    .line 2605
    const/16 v3, 0x3e7

    move-object v9, v1

    move v15, v3

    goto :goto_2

    .line 2603
    :cond_4
    move-object v9, v1

    move v15, v3

    .line 2609
    .end local v1    # "id":Ljava/lang/String;
    .end local v3    # "ruleType":I
    .local v9, "id":Ljava/lang/String;
    .local v15, "ruleType":I
    :goto_2
    const/4 v1, 0x0

    new-array v1, v1, [B

    .line 2610
    .local v1, "policyProto":[B
    iget-object v3, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->zenPolicy:Landroid/service/notification/ZenPolicy;

    if-eqz v3, :cond_5

    .line 2611
    iget-object v3, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->zenPolicy:Landroid/service/notification/ZenPolicy;

    invoke-virtual {v3}, Landroid/service/notification/ZenPolicy;->toProto()[B

    move-result-object v1

    move-object v11, v1

    goto :goto_3

    .line 2610
    :cond_5
    move-object v11, v1

    .line 2613
    .end local v1    # "policyProto":[B
    .local v11, "policyProto":[B
    :goto_3
    iget-boolean v6, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->enabled:Z

    iget v8, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->zenMode:I

    .line 2619
    move-object/from16 v1, p0

    move/from16 v5, p1

    invoke-direct {v1, v2, v5}, Lcom/android/server/notification/ZenModeHelper;->getPackageUid(Ljava/lang/String;I)I

    move-result v10

    iget v12, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->userModifiedFields:I

    iget v13, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->zenPolicyUserModifiedFields:I

    iget v14, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->zenDeviceEffectsUserModifiedFields:I

    .line 2613
    const/16 v4, 0x2764

    const/4 v7, 0x0

    invoke-static/range {v4 .. v15}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IIZZILjava/lang/String;I[BIIII)Landroid/util/StatsEvent;

    move-result-object v3

    move-object/from16 v4, p4

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2626
    return-void
.end method

.method private setAutomaticZenRuleStateLocked(Landroid/service/notification/ZenModeConfig;Ljava/util/List;Landroid/service/notification/Condition;ILjava/lang/String;I)V
    .locals 8
    .param p1, "config"    # Landroid/service/notification/ZenModeConfig;
    .param p3, "condition"    # Landroid/service/notification/Condition;
    .param p4, "origin"    # I
    .param p5, "reason"    # Ljava/lang/String;
    .param p6, "callingUid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/service/notification/ZenModeConfig;",
            "Ljava/util/List<",
            "Landroid/service/notification/ZenModeConfig$ZenRule;",
            ">;",
            "Landroid/service/notification/Condition;",
            "I",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .line 949
    .local p2, "rules":Ljava/util/List;, "Ljava/util/List<Landroid/service/notification/ZenModeConfig$ZenRule;>;"
    if-eqz p2, :cond_2

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v3, p1

    move v5, p4

    move-object v6, p5

    move v7, p6

    goto :goto_1

    .line 951
    :cond_0
    nop

    .line 957
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 958
    .local v1, "rule":Landroid/service/notification/ZenModeConfig$ZenRule;
    invoke-static {v1, p3, p4}, Lcom/android/server/notification/ZenModeHelper;->applyConditionAndReconsiderOverride(Landroid/service/notification/ZenModeConfig$ZenRule;Landroid/service/notification/Condition;I)V

    .line 959
    iget-object v4, v1, Landroid/service/notification/ZenModeConfig$ZenRule;->component:Landroid/content/ComponentName;

    move-object v2, p0

    move-object v3, p1

    move v5, p4

    move-object v6, p5

    move v7, p6

    .end local p1    # "config":Landroid/service/notification/ZenModeConfig;
    .end local p4    # "origin":I
    .end local p5    # "reason":Ljava/lang/String;
    .end local p6    # "callingUid":I
    .local v3, "config":Landroid/service/notification/ZenModeConfig;
    .local v5, "origin":I
    .local v6, "reason":Ljava/lang/String;
    .local v7, "callingUid":I
    invoke-direct/range {v2 .. v7}, Lcom/android/server/notification/ZenModeHelper;->setConfigLocked(Landroid/service/notification/ZenModeConfig;Landroid/content/ComponentName;ILjava/lang/String;I)Z

    .line 960
    .end local v1    # "rule":Landroid/service/notification/ZenModeConfig$ZenRule;
    goto :goto_0

    .line 961
    .end local v3    # "config":Landroid/service/notification/ZenModeConfig;
    .end local v5    # "origin":I
    .end local v6    # "reason":Ljava/lang/String;
    .end local v7    # "callingUid":I
    .restart local p1    # "config":Landroid/service/notification/ZenModeConfig;
    .restart local p4    # "origin":I
    .restart local p5    # "reason":Ljava/lang/String;
    .restart local p6    # "callingUid":I
    :cond_1
    return-void

    .line 949
    :cond_2
    move-object v3, p1

    move v5, p4

    move-object v6, p5

    move v7, p6

    .end local p1    # "config":Landroid/service/notification/ZenModeConfig;
    .end local p4    # "origin":I
    .end local p5    # "reason":Ljava/lang/String;
    .end local p6    # "callingUid":I
    .restart local v3    # "config":Landroid/service/notification/ZenModeConfig;
    .restart local v5    # "origin":I
    .restart local v6    # "reason":Ljava/lang/String;
    .restart local v7    # "callingUid":I
    :goto_1
    return-void
.end method

.method private setConfigLocked(Landroid/service/notification/ZenModeConfig;ILjava/lang/String;Landroid/content/ComponentName;ZI)Z
    .locals 12
    .param p1, "config"    # Landroid/service/notification/ZenModeConfig;
    .param p2, "origin"    # I
    .param p3, "reason"    # Ljava/lang/String;
    .param p4, "triggeringComponent"    # Landroid/content/ComponentName;
    .param p5, "setRingerMode"    # Z
    .param p6, "callingUid"    # I

    .line 2058
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 2060
    .local v8, "identity":J
    const/4 v10, 0x0

    if-eqz p1, :cond_5

    :try_start_0
    invoke-virtual {p1}, Landroid/service/notification/ZenModeConfig;->isValid()Z

    move-result v0

    if-nez v0, :cond_0

    move-object/from16 v4, p4

    goto/16 :goto_2

    .line 2064
    :cond_0
    iget v0, p1, Landroid/service/notification/ZenModeConfig;->user:I

    iget v3, p0, Lcom/android/server/notification/ZenModeHelper;->mUser:I

    const/4 v11, 0x1

    if-eq v0, v3, :cond_2

    .line 2066
    iget-object v3, p0, Lcom/android/server/notification/ZenModeHelper;->mConfigLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2067
    :try_start_1
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mConfigs:Landroid/util/SparseArray;

    iget v4, p1, Landroid/service/notification/ZenModeConfig;->user:I

    invoke-virtual {v0, v4, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2068
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2069
    :try_start_2
    sget-boolean v0, Lcom/android/server/notification/ZenModeHelper;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "ZenModeHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setConfigLocked: store config for user "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p1, Landroid/service/notification/ZenModeConfig;->user:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 2094
    :catchall_0
    move-exception v0

    move-object/from16 v4, p4

    goto/16 :goto_4

    .line 2090
    :catch_0
    move-exception v0

    move-object/from16 v4, p4

    goto/16 :goto_3

    .line 2070
    :cond_1
    :goto_0
    nop

    .line 2094
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2070
    return v11

    .line 2068
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .end local v8    # "identity":J
    .end local p0    # "this":Lcom/android/server/notification/ZenModeHelper;
    .end local p1    # "config":Landroid/service/notification/ZenModeConfig;
    .end local p2    # "origin":I
    .end local p3    # "reason":Ljava/lang/String;
    .end local p4    # "triggeringComponent":Landroid/content/ComponentName;
    .end local p5    # "setRingerMode":Z
    .end local p6    # "callingUid":I
    :try_start_4
    throw v0

    .line 2073
    .restart local v8    # "identity":J
    .restart local p0    # "this":Lcom/android/server/notification/ZenModeHelper;
    .restart local p1    # "config":Landroid/service/notification/ZenModeConfig;
    .restart local p2    # "origin":I
    .restart local p3    # "reason":Ljava/lang/String;
    .restart local p4    # "triggeringComponent":Landroid/content/ComponentName;
    .restart local p5    # "setRingerMode":Z
    .restart local p6    # "callingUid":I
    :cond_2
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mConditions:Lcom/android/server/notification/ZenModeConditions;

    const/4 v3, 0x0

    invoke-virtual {v0, p1, v3, v10}, Lcom/android/server/notification/ZenModeConditions;->evaluateConfig(Landroid/service/notification/ZenModeConfig;Landroid/content/ComponentName;Z)V

    .line 2075
    iget-object v3, p0, Lcom/android/server/notification/ZenModeHelper;->mConfigLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_4
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 2076
    :try_start_5
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mConfigs:Landroid/util/SparseArray;

    iget v4, p1, Landroid/service/notification/ZenModeConfig;->user:I

    invoke-virtual {v0, v4, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2077
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 2078
    :try_start_6
    sget-boolean v0, Lcom/android/server/notification/ZenModeHelper;->DEBUG:Z

    if-eqz v0, :cond_3

    const-string v0, "ZenModeHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setConfigLocked reason="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/lang/Throwable;

    invoke-direct {v5}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v0, v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2079
    :cond_3
    iget-object v5, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;
    :try_end_6
    .catch Ljava/lang/SecurityException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-object v6, p1

    move v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move/from16 v7, p6

    :try_start_7
    invoke-static/range {v2 .. v7}, Lcom/android/server/notification/ZenLog;->traceConfig(ILjava/lang/String;Landroid/content/ComponentName;Landroid/service/notification/ZenModeConfig;Landroid/service/notification/ZenModeConfig;I)V
    :try_end_7
    .catch Ljava/lang/SecurityException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 2082
    :try_start_8
    invoke-static {p1}, Lcom/android/server/notification/ZenModeHelper;->getNotificationPolicy(Landroid/service/notification/ZenModeConfig;)Landroid/app/NotificationManager$Policy;

    move-result-object v0

    .line 2083
    .local v0, "newPolicy":Landroid/app/NotificationManager$Policy;
    iget-object v2, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    invoke-static {v2}, Lcom/android/server/notification/ZenModeHelper;->getNotificationPolicy(Landroid/service/notification/ZenModeConfig;)Landroid/app/NotificationManager$Policy;

    move-result-object v2

    invoke-static {v2, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    xor-int/2addr v2, v11

    move v7, v2

    .line 2084
    .local v7, "policyChanged":Z
    if-eqz v7, :cond_4

    .line 2085
    invoke-direct {p0, v0}, Lcom/android/server/notification/ZenModeHelper;->dispatchOnPolicyChanged(Landroid/app/NotificationManager$Policy;)V

    .line 2087
    :cond_4
    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move/from16 v5, p5

    move/from16 v6, p6

    invoke-direct/range {v1 .. v6}, Lcom/android/server/notification/ZenModeHelper;->updateConfigAndZenModeLocked(Landroid/service/notification/ZenModeConfig;ILjava/lang/String;ZI)V

    .line 2088
    iget-object v3, p0, Lcom/android/server/notification/ZenModeHelper;->mConditions:Lcom/android/server/notification/ZenModeConditions;
    :try_end_8
    .catch Ljava/lang/SecurityException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    move-object/from16 v4, p4

    :try_start_9
    invoke-virtual {v3, p1, v4, v11}, Lcom/android/server/notification/ZenModeConditions;->evaluateConfig(Landroid/service/notification/ZenModeConfig;Landroid/content/ComponentName;Z)V
    :try_end_9
    .catch Ljava/lang/SecurityException; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 2089
    nop

    .line 2094
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2089
    return v11

    .line 2094
    .end local v0    # "newPolicy":Landroid/app/NotificationManager$Policy;
    .end local v7    # "policyChanged":Z
    :catchall_2
    move-exception v0

    goto :goto_4

    .line 2090
    :catch_1
    move-exception v0

    goto :goto_3

    .line 2077
    :catchall_3
    move-exception v0

    move-object/from16 v4, p4

    :goto_1
    :try_start_a
    monitor-exit v3
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    .end local v8    # "identity":J
    .end local p0    # "this":Lcom/android/server/notification/ZenModeHelper;
    .end local p1    # "config":Landroid/service/notification/ZenModeConfig;
    .end local p2    # "origin":I
    .end local p3    # "reason":Ljava/lang/String;
    .end local p4    # "triggeringComponent":Landroid/content/ComponentName;
    .end local p5    # "setRingerMode":Z
    .end local p6    # "callingUid":I
    :try_start_b
    throw v0

    .restart local v8    # "identity":J
    .restart local p0    # "this":Lcom/android/server/notification/ZenModeHelper;
    .restart local p1    # "config":Landroid/service/notification/ZenModeConfig;
    .restart local p2    # "origin":I
    .restart local p3    # "reason":Ljava/lang/String;
    .restart local p4    # "triggeringComponent":Landroid/content/ComponentName;
    .restart local p5    # "setRingerMode":Z
    .restart local p6    # "callingUid":I
    :catchall_4
    move-exception v0

    goto :goto_1

    .line 2060
    :cond_5
    move-object/from16 v4, p4

    .line 2061
    :goto_2
    const-string v0, "ZenModeHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid config in setConfigLocked; "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catch Ljava/lang/SecurityException; {:try_start_b .. :try_end_b} :catch_1
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 2062
    nop

    .line 2094
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2062
    return v10

    .line 2090
    :goto_3
    nop

    .line 2091
    .local v0, "e":Ljava/lang/SecurityException;
    :try_start_c
    const-string v3, "ZenModeHelper"

    const-string v5, "Invalid rule in config"

    invoke-static {v3, v5, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    .line 2092
    nop

    .line 2094
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2092
    return v10

    .line 2094
    .end local v0    # "e":Ljava/lang/SecurityException;
    :goto_4
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2095
    throw v0
.end method

.method private setConfigLocked(Landroid/service/notification/ZenModeConfig;Landroid/content/ComponentName;ILjava/lang/String;I)Z
    .locals 7
    .param p1, "config"    # Landroid/service/notification/ZenModeConfig;
    .param p2, "triggeringComponent"    # Landroid/content/ComponentName;
    .param p3, "origin"    # I
    .param p4, "reason"    # Ljava/lang/String;
    .param p5, "callingUid"    # I

    .line 2043
    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move v2, p3

    move-object v3, p4

    move v6, p5

    .end local p1    # "config":Landroid/service/notification/ZenModeConfig;
    .end local p2    # "triggeringComponent":Landroid/content/ComponentName;
    .end local p3    # "origin":I
    .end local p4    # "reason":Ljava/lang/String;
    .end local p5    # "callingUid":I
    .local v1, "config":Landroid/service/notification/ZenModeConfig;
    .local v2, "origin":I
    .local v3, "reason":Ljava/lang/String;
    .local v4, "triggeringComponent":Landroid/content/ComponentName;
    .local v6, "callingUid":I
    invoke-direct/range {v0 .. v6}, Lcom/android/server/notification/ZenModeHelper;->setConfigLocked(Landroid/service/notification/ZenModeConfig;ILjava/lang/String;Landroid/content/ComponentName;ZI)Z

    move-result p1

    return p1
.end method

.method private setManualZenMode(Landroid/os/UserHandle;ILandroid/net/Uri;ILjava/lang/String;Ljava/lang/String;ZI)V
    .locals 16
    .param p1, "user"    # Landroid/os/UserHandle;
    .param p2, "zenMode"    # I
    .param p3, "conditionId"    # Landroid/net/Uri;
    .param p4, "origin"    # I
    .param p5, "reason"    # Ljava/lang/String;
    .param p6, "caller"    # Ljava/lang/String;
    .param p7, "setRingerMode"    # Z
    .param p8, "callingUid"    # I

    .line 1613
    move/from16 v1, p2

    move-object/from16 v2, p3

    move/from16 v5, p4

    move-object/from16 v3, p0

    iget-object v10, v3, Lcom/android/server/notification/ZenModeHelper;->mConfigLock:Ljava/lang/Object;

    monitor-enter v10

    .line 1614
    :try_start_0
    invoke-direct/range {p0 .. p1}, Lcom/android/server/notification/ZenModeHelper;->getConfigLocked(Landroid/os/UserHandle;)Landroid/service/notification/ZenModeConfig;

    move-result-object v0

    .line 1615
    .local v0, "config":Landroid/service/notification/ZenModeConfig;
    if-nez v0, :cond_0

    monitor-exit v10

    return-void

    .line 1659
    .end local v0    # "config":Landroid/service/notification/ZenModeConfig;
    :catchall_0
    move-exception v0

    :goto_0
    move-object/from16 v11, p6

    goto/16 :goto_8

    .line 1617
    .restart local v0    # "config":Landroid/service/notification/ZenModeConfig;
    :cond_0
    invoke-static {v1}, Landroid/provider/Settings$Global;->isValidZenMode(I)Z

    move-result v4

    if-nez v4, :cond_1

    monitor-exit v10

    return-void

    .line 1618
    :cond_1
    sget-boolean v4, Lcom/android/server/notification/ZenModeHelper;->DEBUG:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_2

    :try_start_1
    const-string v4, "ZenModeHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setManualZenMode "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Landroid/provider/Settings$Global;->zenModeToString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " conditionId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " reason="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-object/from16 v7, p5

    :try_start_2
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " setRingerMode="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move/from16 v8, p7

    :try_start_3
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1659
    .end local v0    # "config":Landroid/service/notification/ZenModeConfig;
    :catchall_1
    move-exception v0

    :goto_1
    move/from16 v8, p7

    goto :goto_0

    :catchall_2
    move-exception v0

    move-object/from16 v7, p5

    goto :goto_1

    .line 1618
    .restart local v0    # "config":Landroid/service/notification/ZenModeConfig;
    :cond_2
    move-object/from16 v7, p5

    move/from16 v8, p7

    .line 1621
    :goto_2
    invoke-virtual {v0}, Landroid/service/notification/ZenModeConfig;->copy()Landroid/service/notification/ZenModeConfig;

    move-result-object v4

    .line 1622
    .local v4, "newConfig":Landroid/service/notification/ZenModeConfig;
    nop

    .line 1623
    iget-object v6, v4, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object/from16 v11, p6

    :try_start_4
    iput-object v11, v6, Landroid/service/notification/ZenModeConfig$ZenRule;->enabler:Ljava/lang/String;

    .line 1624
    iget-object v6, v4, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    if-eqz v2, :cond_3

    move-object v9, v2

    goto :goto_3

    :cond_3
    sget-object v9, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    :goto_3
    iput-object v9, v6, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    .line 1625
    iget-object v6, v4, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    const-string v9, "android"

    iput-object v9, v6, Landroid/service/notification/ZenModeConfig$ZenRule;->pkg:Ljava/lang/String;

    .line 1626
    iget-object v6, v4, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    iput v1, v6, Landroid/service/notification/ZenModeConfig$ZenRule;->zenMode:I

    .line 1627
    iget-object v6, v4, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    new-instance v9, Landroid/service/notification/Condition;

    iget-object v12, v4, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    iget-object v12, v12, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    const-string v13, ""

    .line 1628
    if-nez v1, :cond_4

    const/4 v14, 0x0

    goto :goto_4

    :cond_4
    const/4 v14, 0x1

    .line 1629
    :goto_4
    const/4 v15, 0x3

    if-ne v5, v15, :cond_5

    const/4 v15, 0x1

    goto :goto_5

    :cond_5
    const/4 v15, 0x0

    :goto_5
    invoke-direct {v9, v12, v13, v14, v15}, Landroid/service/notification/Condition;-><init>(Landroid/net/Uri;Ljava/lang/String;II)V

    iput-object v9, v6, Landroid/service/notification/ZenModeConfig$ZenRule;->condition:Landroid/service/notification/Condition;

    .line 1630
    if-nez v1, :cond_8

    const/4 v6, 0x3

    if-eq v5, v6, :cond_8

    .line 1633
    iget-object v6, v4, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v6}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_6
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 1634
    .local v9, "automaticRule":Landroid/service/notification/ZenModeConfig$ZenRule;
    invoke-virtual {v9}, Landroid/service/notification/ZenModeConfig$ZenRule;->isActive()Z

    move-result v12

    if-eqz v12, :cond_6

    .line 1635
    const/4 v12, 0x2

    invoke-virtual {v9, v12}, Landroid/service/notification/ZenModeConfig$ZenRule;->setConditionOverride(I)V

    goto :goto_7

    .line 1659
    .end local v0    # "config":Landroid/service/notification/ZenModeConfig;
    .end local v4    # "newConfig":Landroid/service/notification/ZenModeConfig;
    .end local v9    # "automaticRule":Landroid/service/notification/ZenModeConfig$ZenRule;
    :catchall_3
    move-exception v0

    goto :goto_8

    .line 1637
    .restart local v0    # "config":Landroid/service/notification/ZenModeConfig;
    .restart local v4    # "newConfig":Landroid/service/notification/ZenModeConfig;
    :cond_6
    :goto_7
    goto :goto_6

    :cond_7
    nop

    .line 1658
    :cond_8
    const/4 v7, 0x0

    move-object/from16 v6, p5

    move/from16 v9, p8

    invoke-direct/range {v3 .. v9}, Lcom/android/server/notification/ZenModeHelper;->setConfigLocked(Landroid/service/notification/ZenModeConfig;ILjava/lang/String;Landroid/content/ComponentName;ZI)Z

    .line 1659
    nop

    .end local v0    # "config":Landroid/service/notification/ZenModeConfig;
    monitor-exit v10

    .line 1660
    return-void

    .line 1659
    .end local v4    # "newConfig":Landroid/service/notification/ZenModeConfig;
    :goto_8
    monitor-exit v10
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    throw v0
.end method

.method private setPreviousRingerModeSetting(Ljava/lang/Integer;)V
    .locals 3
    .param p1, "previousRingerLevel"    # Ljava/lang/Integer;

    .line 2175
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mContext:Landroid/content/Context;

    .line 2176
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 2177
    if-nez p1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 2175
    :goto_0
    const-string/jumbo v2, "zen_mode_ringer_level"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 2178
    return-void
.end method

.method private updateAndApplyConsolidatedPolicyAndDeviceEffects(ILjava/lang/String;)V
    .locals 11
    .param p1, "origin"    # I
    .param p2, "reason"    # Ljava/lang/String;

    .line 2273
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mConfigLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2274
    :try_start_0
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    .line 2334
    :catchall_0
    move-exception v1

    goto/16 :goto_3

    .line 2275
    :cond_0
    new-instance v1, Landroid/service/notification/ZenPolicy;

    invoke-direct {v1}, Landroid/service/notification/ZenPolicy;-><init>()V

    .line 2276
    .local v1, "policy":Landroid/service/notification/ZenPolicy;
    new-instance v2, Landroid/service/notification/ZenDeviceEffects$Builder;

    invoke-direct {v2}, Landroid/service/notification/ZenDeviceEffects$Builder;-><init>()V

    .line 2277
    .local v2, "deviceEffectsBuilder":Landroid/service/notification/ZenDeviceEffects$Builder;
    iget-object v3, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    invoke-virtual {v3}, Landroid/service/notification/ZenModeConfig;->isManualActive()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2278
    iget-object v3, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget-object v4, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget-object v4, v4, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    const/4 v5, 0x1

    invoke-direct {p0, v3, v1, v4, v5}, Lcom/android/server/notification/ZenModeHelper;->applyCustomPolicy(Landroid/service/notification/ZenModeConfig;Landroid/service/notification/ZenPolicy;Landroid/service/notification/ZenModeConfig$ZenRule;Z)V

    .line 2279
    iget-object v3, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget-object v3, v3, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    iget-object v3, v3, Landroid/service/notification/ZenModeConfig$ZenRule;->zenDeviceEffects:Landroid/service/notification/ZenDeviceEffects;

    invoke-virtual {v2, v3}, Landroid/service/notification/ZenDeviceEffects$Builder;->add(Landroid/service/notification/ZenDeviceEffects;)Landroid/service/notification/ZenDeviceEffects$Builder;

    .line 2282
    :cond_1
    iget-object v3, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget-object v3, v3, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 2283
    .local v4, "automaticRule":Landroid/service/notification/ZenModeConfig$ZenRule;
    invoke-virtual {v4}, Landroid/service/notification/ZenModeConfig$ZenRule;->isActive()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 2287
    iget v6, v4, Landroid/service/notification/ZenModeConfig$ZenRule;->zenMode:I

    if-eqz v6, :cond_2

    .line 2288
    iget-object v6, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    invoke-direct {p0, v6, v1, v4, v5}, Lcom/android/server/notification/ZenModeHelper;->applyCustomPolicy(Landroid/service/notification/ZenModeConfig;Landroid/service/notification/ZenPolicy;Landroid/service/notification/ZenModeConfig$ZenRule;Z)V

    .line 2290
    :cond_2
    iget-object v5, v4, Landroid/service/notification/ZenModeConfig$ZenRule;->zenDeviceEffects:Landroid/service/notification/ZenDeviceEffects;

    invoke-virtual {v2, v5}, Landroid/service/notification/ZenDeviceEffects$Builder;->add(Landroid/service/notification/ZenDeviceEffects;)Landroid/service/notification/ZenDeviceEffects$Builder;

    .line 2292
    .end local v4    # "automaticRule":Landroid/service/notification/ZenModeConfig$ZenRule;
    :cond_3
    goto :goto_0

    .line 2302
    :cond_4
    iget-object v3, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    invoke-virtual {v3, v1}, Landroid/service/notification/ZenModeConfig;->toNotificationPolicy(Landroid/service/notification/ZenPolicy;)Landroid/app/NotificationManager$Policy;

    move-result-object v3

    .line 2303
    .local v3, "newPolicy":Landroid/app/NotificationManager$Policy;
    iget-object v4, p0, Lcom/android/server/notification/ZenModeHelper;->mConsolidatedPolicy:Landroid/app/NotificationManager$Policy;

    invoke-static {v4, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 2304
    iput-object v3, p0, Lcom/android/server/notification/ZenModeHelper;->mConsolidatedPolicy:Landroid/app/NotificationManager$Policy;

    .line 2305
    invoke-direct {p0, v3}, Lcom/android/server/notification/ZenModeHelper;->dispatchOnConsolidatedPolicyChanged(Landroid/app/NotificationManager$Policy;)V

    .line 2306
    iget-object v4, p0, Lcom/android/server/notification/ZenModeHelper;->mConsolidatedPolicy:Landroid/app/NotificationManager$Policy;

    invoke-static {v4, p2}, Lcom/android/server/notification/ZenLog;->traceSetConsolidatedZenPolicy(Landroid/app/NotificationManager$Policy;Ljava/lang/String;)V

    .line 2311
    :cond_5
    nop

    .line 2312
    const/4 v4, 0x0

    .line 2313
    .local v4, "hasActiveDriving":Z
    const/4 v6, 0x0

    .line 2314
    .local v6, "hasActiveDrivingWithGrayscale":Z
    iget-object v7, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget-object v7, v7, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v7}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 2315
    .local v8, "rule":Landroid/service/notification/ZenModeConfig$ZenRule;
    invoke-virtual {v8}, Landroid/service/notification/ZenModeConfig$ZenRule;->isActive()Z

    move-result v9

    if-eqz v9, :cond_6

    iget v9, v8, Landroid/service/notification/ZenModeConfig$ZenRule;->type:I

    const/4 v10, 0x4

    if-ne v9, v10, :cond_6

    .line 2316
    const/4 v4, 0x1

    .line 2317
    iget-object v9, v8, Landroid/service/notification/ZenModeConfig$ZenRule;->zenDeviceEffects:Landroid/service/notification/ZenDeviceEffects;

    if-eqz v9, :cond_6

    iget-object v9, v8, Landroid/service/notification/ZenModeConfig$ZenRule;->zenDeviceEffects:Landroid/service/notification/ZenDeviceEffects;

    .line 2318
    invoke-virtual {v9}, Landroid/service/notification/ZenDeviceEffects;->shouldDisplayGrayscale()Z

    move-result v9

    if-eqz v9, :cond_6

    .line 2319
    const/4 v6, 0x1

    .line 2320
    goto :goto_2

    .line 2323
    .end local v8    # "rule":Landroid/service/notification/ZenModeConfig$ZenRule;
    :cond_6
    goto :goto_1

    .line 2324
    :cond_7
    :goto_2
    if-eqz v4, :cond_8

    if-nez v6, :cond_8

    .line 2325
    invoke-virtual {v2, v5}, Landroid/service/notification/ZenDeviceEffects$Builder;->setShouldDisplayGrayscale(Z)Landroid/service/notification/ZenDeviceEffects$Builder;

    .line 2329
    .end local v4    # "hasActiveDriving":Z
    .end local v6    # "hasActiveDrivingWithGrayscale":Z
    :cond_8
    invoke-virtual {v2}, Landroid/service/notification/ZenDeviceEffects$Builder;->build()Landroid/service/notification/ZenDeviceEffects;

    move-result-object v4

    .line 2330
    .local v4, "deviceEffects":Landroid/service/notification/ZenDeviceEffects;
    iget-object v5, p0, Lcom/android/server/notification/ZenModeHelper;->mConsolidatedDeviceEffects:Landroid/service/notification/ZenDeviceEffects;

    invoke-virtual {v4, v5}, Landroid/service/notification/ZenDeviceEffects;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_9

    .line 2331
    iput-object v4, p0, Lcom/android/server/notification/ZenModeHelper;->mConsolidatedDeviceEffects:Landroid/service/notification/ZenDeviceEffects;

    .line 2332
    iget-object v5, p0, Lcom/android/server/notification/ZenModeHelper;->mHandler:Lcom/android/server/notification/ZenModeHelper$H;

    invoke-static {v5, p1}, Lcom/android/server/notification/ZenModeHelper$H;->-$$Nest$mpostApplyDeviceEffects(Lcom/android/server/notification/ZenModeHelper$H;I)V

    .line 2334
    .end local v1    # "policy":Landroid/service/notification/ZenPolicy;
    .end local v2    # "deviceEffectsBuilder":Landroid/service/notification/ZenDeviceEffects$Builder;
    .end local v3    # "newPolicy":Landroid/app/NotificationManager$Policy;
    .end local v4    # "deviceEffects":Landroid/service/notification/ZenDeviceEffects;
    :cond_9
    monitor-exit v0

    .line 2335
    return-void

    .line 2334
    :goto_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private updateConfigAndZenModeLocked(Landroid/service/notification/ZenModeConfig;ILjava/lang/String;ZI)V
    .locals 9
    .param p1, "config"    # Landroid/service/notification/ZenModeConfig;
    .param p2, "origin"    # I
    .param p3, "reason"    # Ljava/lang/String;
    .param p4, "setRingerMode"    # Z
    .param p5, "callingUid"    # I

    .line 2105
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mFlagResolver:Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$FlagResolver;

    sget-object v1, Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$NotificationFlags;->LOG_DND_STATE_EVENTS:Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$Flag;

    invoke-interface {v0, v1}, Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$FlagResolver;->isEnabled(Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$Flag;)Z

    move-result v0

    .line 2108
    .local v0, "logZenModeEvents":Z
    new-instance v1, Lcom/android/server/notification/ZenModeEventLogger$ZenModeInfo;

    iget v2, p0, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    iget-object v3, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget-object v4, p0, Lcom/android/server/notification/ZenModeHelper;->mConsolidatedPolicy:Landroid/app/NotificationManager$Policy;

    invoke-direct {v1, v2, v3, v4}, Lcom/android/server/notification/ZenModeEventLogger$ZenModeInfo;-><init>(ILandroid/service/notification/ZenModeConfig;Landroid/app/NotificationManager$Policy;)V

    .line 2110
    .local v1, "prevInfo":Lcom/android/server/notification/ZenModeEventLogger$ZenModeInfo;
    iget-object v2, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    invoke-virtual {p1, v2}, Landroid/service/notification/ZenModeConfig;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 2112
    const/4 v2, 0x1

    if-eq p2, v2, :cond_2

    .line 2113
    iget-object v2, p1, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    nop

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 2114
    .local v3, "rule":Landroid/service/notification/ZenModeConfig$ZenRule;
    iget-object v4, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget-object v4, v4, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    iget-object v5, v3, Landroid/service/notification/ZenModeConfig$ZenRule;->id:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 2115
    .local v4, "original":Landroid/service/notification/ZenModeConfig$ZenRule;
    if-eqz v4, :cond_1

    .line 2116
    iget-boolean v5, v4, Landroid/service/notification/ZenModeConfig$ZenRule;->enabled:Z

    iget-boolean v6, v3, Landroid/service/notification/ZenModeConfig$ZenRule;->enabled:Z

    if-eq v5, v6, :cond_0

    .line 2117
    nop

    .line 2118
    invoke-virtual {v3}, Landroid/service/notification/ZenModeConfig$ZenRule;->getPkg()Ljava/lang/String;

    move-result-object v5

    iget v6, p1, Landroid/service/notification/ZenModeConfig;->user:I

    iget-object v7, v3, Landroid/service/notification/ZenModeConfig$ZenRule;->id:Ljava/lang/String;

    iget-boolean v8, v3, Landroid/service/notification/ZenModeConfig$ZenRule;->enabled:Z

    .line 2117
    invoke-virtual {p0, v5, v6, v7, v8}, Lcom/android/server/notification/ZenModeHelper;->scheduleEnabledBroadcast(Ljava/lang/String;ILjava/lang/String;Z)V

    .line 2120
    :cond_0
    invoke-virtual {v4}, Landroid/service/notification/ZenModeConfig$ZenRule;->isActive()Z

    move-result v5

    invoke-virtual {v3}, Landroid/service/notification/ZenModeConfig$ZenRule;->isActive()Z

    move-result v6

    if-eq v5, v6, :cond_1

    .line 2121
    nop

    .line 2122
    invoke-virtual {v3}, Landroid/service/notification/ZenModeConfig$ZenRule;->getPkg()Ljava/lang/String;

    move-result-object v5

    iget v6, p1, Landroid/service/notification/ZenModeConfig;->user:I

    iget-object v7, v3, Landroid/service/notification/ZenModeConfig$ZenRule;->id:Ljava/lang/String;

    invoke-virtual {v3}, Landroid/service/notification/ZenModeConfig$ZenRule;->isActive()Z

    move-result v8

    .line 2121
    invoke-virtual {p0, v5, v6, v7, v8}, Lcom/android/server/notification/ZenModeHelper;->scheduleActivationBroadcast(Ljava/lang/String;ILjava/lang/String;Z)V

    .line 2125
    .end local v3    # "rule":Landroid/service/notification/ZenModeConfig$ZenRule;
    .end local v4    # "original":Landroid/service/notification/ZenModeConfig$ZenRule;
    :cond_1
    goto :goto_0

    .line 2129
    :cond_2
    nop

    .line 2130
    iget-object v2, p0, Lcom/android/server/notification/ZenModeHelper;->mClock:Ljava/time/Clock;

    invoke-virtual {v2}, Ljava/time/Clock;->instant()Ljava/time/Instant;

    move-result-object v2

    .line 2131
    .local v2, "now":Ljava/time/Instant;
    iget-object v3, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    invoke-virtual {v3}, Landroid/service/notification/ZenModeConfig;->isManualActive()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {p1}, Landroid/service/notification/ZenModeConfig;->isManualActive()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 2132
    iget-object v3, p1, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    iput-object v2, v3, Landroid/service/notification/ZenModeConfig$ZenRule;->lastActivation:Ljava/time/Instant;

    .line 2134
    :cond_3
    iget-object v3, p1, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    nop

    if-eqz v4, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 2135
    .local v4, "rule":Landroid/service/notification/ZenModeConfig$ZenRule;
    iget-object v5, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget-object v5, v5, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    iget-object v6, v4, Landroid/service/notification/ZenModeConfig$ZenRule;->id:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 2136
    .local v5, "previousRule":Landroid/service/notification/ZenModeConfig$ZenRule;
    invoke-virtual {v4}, Landroid/service/notification/ZenModeConfig$ZenRule;->isActive()Z

    move-result v6

    if-eqz v6, :cond_5

    if-eqz v5, :cond_4

    invoke-virtual {v5}, Landroid/service/notification/ZenModeConfig$ZenRule;->isActive()Z

    move-result v6

    if-nez v6, :cond_5

    .line 2137
    :cond_4
    iput-object v2, v4, Landroid/service/notification/ZenModeConfig$ZenRule;->lastActivation:Ljava/time/Instant;

    .line 2139
    .end local v4    # "rule":Landroid/service/notification/ZenModeConfig$ZenRule;
    .end local v5    # "previousRule":Landroid/service/notification/ZenModeConfig$ZenRule;
    :cond_5
    goto :goto_1

    .line 2142
    .end local v2    # "now":Ljava/time/Instant;
    :cond_6
    iput-object p1, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    .line 2143
    invoke-direct {p0}, Lcom/android/server/notification/ZenModeHelper;->dispatchOnConfigChanged()V

    .line 2144
    invoke-direct {p0, p2, p3}, Lcom/android/server/notification/ZenModeHelper;->updateAndApplyConsolidatedPolicyAndDeviceEffects(ILjava/lang/String;)V

    .line 2146
    :cond_7
    invoke-virtual {p1}, Landroid/service/notification/ZenModeConfig;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    .line 2147
    .local v2, "val":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/notification/ZenModeHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "zen_mode_config_etag"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 2148
    invoke-virtual {p0, p2, p3, p4}, Lcom/android/server/notification/ZenModeHelper;->evaluateZenModeLocked(ILjava/lang/String;Z)V

    .line 2150
    if-eqz v0, :cond_8

    .line 2151
    new-instance v3, Lcom/android/server/notification/ZenModeEventLogger$ZenModeInfo;

    iget v4, p0, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    iget-object v5, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget-object v6, p0, Lcom/android/server/notification/ZenModeHelper;->mConsolidatedPolicy:Landroid/app/NotificationManager$Policy;

    invoke-direct {v3, v4, v5, v6}, Lcom/android/server/notification/ZenModeEventLogger$ZenModeInfo;-><init>(ILandroid/service/notification/ZenModeConfig;Landroid/app/NotificationManager$Policy;)V

    .line 2153
    .local v3, "newInfo":Lcom/android/server/notification/ZenModeEventLogger$ZenModeInfo;
    iget-object v4, p0, Lcom/android/server/notification/ZenModeHelper;->mZenModeEventLogger:Lcom/android/server/notification/ZenModeEventLogger;

    invoke-virtual {v4, v1, v3, p5, p2}, Lcom/android/server/notification/ZenModeEventLogger;->maybeLogZenChange(Lcom/android/server/notification/ZenModeEventLogger$ZenModeInfo;Lcom/android/server/notification/ZenModeEventLogger$ZenModeInfo;II)V

    .line 2156
    .end local v3    # "newInfo":Lcom/android/server/notification/ZenModeEventLogger$ZenModeInfo;
    :cond_8
    return-void
.end method

.method private static updateDefaultAutomaticRulePolicies(Landroid/service/notification/ZenModeConfig;)V
    .locals 5
    .param p0, "defaultConfig"    # Landroid/service/notification/ZenModeConfig;

    .line 2384
    invoke-virtual {p0}, Landroid/service/notification/ZenModeConfig;->getZenPolicy()Landroid/service/notification/ZenPolicy;

    move-result-object v0

    .line 2385
    .local v0, "defaultPolicy":Landroid/service/notification/ZenPolicy;
    iget-object v1, p0, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 2386
    .local v2, "rule":Landroid/service/notification/ZenModeConfig$ZenRule;
    invoke-static {}, Landroid/service/notification/ZenModeConfig;->getDefaultRuleIds()Ljava/util/List;

    move-result-object v3

    iget-object v4, v2, Landroid/service/notification/ZenModeConfig$ZenRule;->id:Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, v2, Landroid/service/notification/ZenModeConfig$ZenRule;->zenPolicy:Landroid/service/notification/ZenPolicy;

    if-nez v3, :cond_0

    .line 2387
    invoke-virtual {v0}, Landroid/service/notification/ZenPolicy;->copy()Landroid/service/notification/ZenPolicy;

    move-result-object v3

    iput-object v3, v2, Landroid/service/notification/ZenModeConfig$ZenRule;->zenPolicy:Landroid/service/notification/ZenPolicy;

    .line 2389
    .end local v2    # "rule":Landroid/service/notification/ZenModeConfig$ZenRule;
    :cond_0
    goto :goto_0

    .line 2390
    :cond_1
    return-void
.end method

.method private static updateDefaultConfig(Landroid/content/Context;Landroid/service/notification/ZenModeConfig;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "defaultConfig"    # Landroid/service/notification/ZenModeConfig;

    .line 2358
    invoke-static {p1}, Lcom/android/server/notification/ZenModeHelper;->updateDefaultAutomaticRulePolicies(Landroid/service/notification/ZenModeConfig;)V

    .line 2359
    nop

    .line 2360
    invoke-static {p0, p1}, Landroid/service/notification/SystemZenRules;->maybeUpgradeRules(Landroid/content/Context;Landroid/service/notification/ZenModeConfig;)V

    .line 2362
    invoke-static {p0, p1}, Lcom/android/server/notification/ZenModeHelper;->updateRuleStringsForCurrentLocale(Landroid/content/Context;Landroid/service/notification/ZenModeConfig;)V

    .line 2363
    return-void
.end method

.method private updateImplicitZenRuleNameAndDescription(Landroid/service/notification/ZenModeConfig$ZenRule;)V
    .locals 4
    .param p1, "rule"    # Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 771
    iget-object v0, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->id:Ljava/lang/String;

    invoke-static {v0}, Landroid/service/notification/ZenModeConfig;->isImplicitRuleId(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 772
    iget-object v0, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->pkg:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 774
    new-instance v0, Lcom/android/server/notification/ZenModeHelper$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcom/android/server/notification/ZenModeHelper$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/notification/ZenModeHelper;Landroid/service/notification/ZenModeConfig$ZenRule;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 786
    .local v0, "pkgAppName":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 787
    iget v1, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->userModifiedFields:I

    and-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_0

    .line 788
    nop

    .line 789
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mContext:Landroid/content/Context;

    const v2, 0x1040b04

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->name:Ljava/lang/String;

    .line 794
    :cond_0
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mContext:Landroid/content/Context;

    const v2, 0x1040b05

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->triggerDescription:Ljava/lang/String;

    goto :goto_0

    .line 796
    :cond_1
    iget-object v1, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->name:Ljava/lang/String;

    if-nez v1, :cond_2

    .line 798
    const-string v1, "Unknown"

    iput-object v1, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->name:Ljava/lang/String;

    .line 800
    :cond_2
    :goto_0
    return-void
.end method

.method private updatePolicy(Landroid/service/notification/ZenModeConfig;Landroid/service/notification/ZenModeConfig$ZenRule;Landroid/service/notification/ZenPolicy;ZZ)Z
    .locals 5
    .param p1, "config"    # Landroid/service/notification/ZenModeConfig;
    .param p2, "zenRule"    # Landroid/service/notification/ZenModeConfig$ZenRule;
    .param p3, "newPolicy"    # Landroid/service/notification/ZenPolicy;
    .param p4, "updateBitmask"    # Z
    .param p5, "isNew"    # Z

    .line 1357
    const/4 v0, 0x1

    if-nez p3, :cond_1

    .line 1358
    if-eqz p5, :cond_0

    .line 1360
    nop

    .line 1361
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mDefaultConfig:Landroid/service/notification/ZenModeConfig;

    invoke-virtual {v1}, Landroid/service/notification/ZenModeConfig;->getZenPolicy()Landroid/service/notification/ZenPolicy;

    move-result-object v1

    .line 1362
    invoke-virtual {v1}, Landroid/service/notification/ZenPolicy;->copy()Landroid/service/notification/ZenPolicy;

    move-result-object v1

    iput-object v1, p2, Landroid/service/notification/ZenModeConfig$ZenRule;->zenPolicy:Landroid/service/notification/ZenPolicy;

    .line 1363
    return v0

    .line 1366
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 1371
    :cond_1
    iget-object v1, p2, Landroid/service/notification/ZenModeConfig$ZenRule;->zenPolicy:Landroid/service/notification/ZenPolicy;

    if-eqz v1, :cond_2

    .line 1372
    iget-object v1, p2, Landroid/service/notification/ZenModeConfig$ZenRule;->zenPolicy:Landroid/service/notification/ZenPolicy;

    goto :goto_0

    .line 1373
    :cond_2
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mDefaultConfig:Landroid/service/notification/ZenModeConfig;

    invoke-virtual {v1}, Landroid/service/notification/ZenModeConfig;->getZenPolicy()Landroid/service/notification/ZenPolicy;

    move-result-object v1

    :goto_0
    nop

    .line 1384
    .local v1, "oldPolicy":Landroid/service/notification/ZenPolicy;
    invoke-virtual {v1, p3}, Landroid/service/notification/ZenPolicy;->overwrittenWith(Landroid/service/notification/ZenPolicy;)Landroid/service/notification/ZenPolicy;

    move-result-object p3

    .line 1385
    iput-object p3, p2, Landroid/service/notification/ZenModeConfig$ZenRule;->zenPolicy:Landroid/service/notification/ZenPolicy;

    .line 1387
    if-eqz p4, :cond_14

    .line 1388
    iget v2, p2, Landroid/service/notification/ZenModeConfig$ZenRule;->zenPolicyUserModifiedFields:I

    .line 1389
    .local v2, "userModifiedFields":I
    invoke-virtual {v1}, Landroid/service/notification/ZenPolicy;->getPriorityMessageSenders()I

    move-result v3

    invoke-virtual {p3}, Landroid/service/notification/ZenPolicy;->getPriorityMessageSenders()I

    move-result v4

    if-eq v3, v4, :cond_3

    .line 1390
    or-int/lit8 v2, v2, 0x1

    .line 1392
    :cond_3
    invoke-virtual {v1}, Landroid/service/notification/ZenPolicy;->getPriorityCallSenders()I

    move-result v3

    invoke-virtual {p3}, Landroid/service/notification/ZenPolicy;->getPriorityCallSenders()I

    move-result v4

    if-eq v3, v4, :cond_4

    .line 1393
    or-int/lit8 v2, v2, 0x2

    .line 1395
    :cond_4
    invoke-virtual {v1}, Landroid/service/notification/ZenPolicy;->getPriorityConversationSenders()I

    move-result v3

    .line 1396
    invoke-virtual {p3}, Landroid/service/notification/ZenPolicy;->getPriorityConversationSenders()I

    move-result v4

    if-eq v3, v4, :cond_5

    .line 1397
    or-int/lit8 v2, v2, 0x4

    .line 1399
    :cond_5
    invoke-virtual {v1}, Landroid/service/notification/ZenPolicy;->getPriorityChannelsAllowed()I

    move-result v3

    invoke-virtual {p3}, Landroid/service/notification/ZenPolicy;->getPriorityChannelsAllowed()I

    move-result v4

    if-eq v3, v4, :cond_6

    .line 1400
    or-int/lit8 v2, v2, 0x8

    .line 1402
    :cond_6
    invoke-virtual {v1}, Landroid/service/notification/ZenPolicy;->getPriorityCategoryReminders()I

    move-result v3

    .line 1403
    invoke-virtual {p3}, Landroid/service/notification/ZenPolicy;->getPriorityCategoryReminders()I

    move-result v4

    if-eq v3, v4, :cond_7

    .line 1404
    or-int/lit8 v2, v2, 0x10

    .line 1406
    :cond_7
    invoke-virtual {v1}, Landroid/service/notification/ZenPolicy;->getPriorityCategoryEvents()I

    move-result v3

    invoke-virtual {p3}, Landroid/service/notification/ZenPolicy;->getPriorityCategoryEvents()I

    move-result v4

    if-eq v3, v4, :cond_8

    .line 1407
    or-int/lit8 v2, v2, 0x20

    .line 1409
    :cond_8
    invoke-virtual {v1}, Landroid/service/notification/ZenPolicy;->getPriorityCategoryRepeatCallers()I

    move-result v3

    .line 1410
    invoke-virtual {p3}, Landroid/service/notification/ZenPolicy;->getPriorityCategoryRepeatCallers()I

    move-result v4

    if-eq v3, v4, :cond_9

    .line 1411
    or-int/lit8 v2, v2, 0x40

    .line 1413
    :cond_9
    invoke-virtual {v1}, Landroid/service/notification/ZenPolicy;->getPriorityCategoryAlarms()I

    move-result v3

    invoke-virtual {p3}, Landroid/service/notification/ZenPolicy;->getPriorityCategoryAlarms()I

    move-result v4

    if-eq v3, v4, :cond_a

    .line 1414
    or-int/lit16 v2, v2, 0x80

    .line 1416
    :cond_a
    invoke-virtual {v1}, Landroid/service/notification/ZenPolicy;->getPriorityCategoryMedia()I

    move-result v3

    invoke-virtual {p3}, Landroid/service/notification/ZenPolicy;->getPriorityCategoryMedia()I

    move-result v4

    if-eq v3, v4, :cond_b

    .line 1417
    or-int/lit16 v2, v2, 0x100

    .line 1419
    :cond_b
    invoke-virtual {v1}, Landroid/service/notification/ZenPolicy;->getPriorityCategorySystem()I

    move-result v3

    invoke-virtual {p3}, Landroid/service/notification/ZenPolicy;->getPriorityCategorySystem()I

    move-result v4

    if-eq v3, v4, :cond_c

    .line 1420
    or-int/lit16 v2, v2, 0x200

    .line 1423
    :cond_c
    invoke-virtual {v1}, Landroid/service/notification/ZenPolicy;->getVisualEffectFullScreenIntent()I

    move-result v3

    .line 1424
    invoke-virtual {p3}, Landroid/service/notification/ZenPolicy;->getVisualEffectFullScreenIntent()I

    move-result v4

    if-eq v3, v4, :cond_d

    .line 1425
    or-int/lit16 v2, v2, 0x400

    .line 1427
    :cond_d
    invoke-virtual {v1}, Landroid/service/notification/ZenPolicy;->getVisualEffectLights()I

    move-result v3

    invoke-virtual {p3}, Landroid/service/notification/ZenPolicy;->getVisualEffectLights()I

    move-result v4

    if-eq v3, v4, :cond_e

    .line 1428
    or-int/lit16 v2, v2, 0x800

    .line 1430
    :cond_e
    invoke-virtual {v1}, Landroid/service/notification/ZenPolicy;->getVisualEffectPeek()I

    move-result v3

    invoke-virtual {p3}, Landroid/service/notification/ZenPolicy;->getVisualEffectPeek()I

    move-result v4

    if-eq v3, v4, :cond_f

    .line 1431
    or-int/lit16 v2, v2, 0x1000

    .line 1433
    :cond_f
    invoke-virtual {v1}, Landroid/service/notification/ZenPolicy;->getVisualEffectStatusBar()I

    move-result v3

    invoke-virtual {p3}, Landroid/service/notification/ZenPolicy;->getVisualEffectStatusBar()I

    move-result v4

    if-eq v3, v4, :cond_10

    .line 1434
    or-int/lit16 v2, v2, 0x2000

    .line 1436
    :cond_10
    invoke-virtual {v1}, Landroid/service/notification/ZenPolicy;->getVisualEffectBadge()I

    move-result v3

    invoke-virtual {p3}, Landroid/service/notification/ZenPolicy;->getVisualEffectBadge()I

    move-result v4

    if-eq v3, v4, :cond_11

    .line 1437
    or-int/lit16 v2, v2, 0x4000

    .line 1439
    :cond_11
    invoke-virtual {v1}, Landroid/service/notification/ZenPolicy;->getVisualEffectAmbient()I

    move-result v3

    invoke-virtual {p3}, Landroid/service/notification/ZenPolicy;->getVisualEffectAmbient()I

    move-result v4

    if-eq v3, v4, :cond_12

    .line 1440
    const v3, 0x8000

    or-int/2addr v2, v3

    .line 1442
    :cond_12
    invoke-virtual {v1}, Landroid/service/notification/ZenPolicy;->getVisualEffectNotificationList()I

    move-result v3

    .line 1443
    invoke-virtual {p3}, Landroid/service/notification/ZenPolicy;->getVisualEffectNotificationList()I

    move-result v4

    if-eq v3, v4, :cond_13

    .line 1444
    const/high16 v3, 0x10000

    or-int/2addr v2, v3

    .line 1446
    :cond_13
    iput v2, p2, Landroid/service/notification/ZenModeConfig$ZenRule;->zenPolicyUserModifiedFields:I

    .line 1449
    .end local v2    # "userModifiedFields":I
    :cond_14
    invoke-virtual {p3, v1}, Landroid/service/notification/ZenPolicy;->equals(Ljava/lang/Object;)Z

    move-result v2

    xor-int/2addr v0, v2

    return v0
.end method

.method private updateRingerAndAudio(Z)V
    .locals 1
    .param p1, "shouldApplyToRinger"    # Z

    .line 2204
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mAudioManager:Landroid/media/AudioManagerInternal;

    if-eqz v0, :cond_0

    .line 2205
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mAudioManager:Landroid/media/AudioManagerInternal;

    invoke-virtual {v0}, Landroid/media/AudioManagerInternal;->updateRingerModeAffectedStreamsInternal()V

    .line 2207
    :cond_0
    if-eqz p1, :cond_1

    .line 2208
    invoke-virtual {p0}, Lcom/android/server/notification/ZenModeHelper;->applyZenToRingerMode()V

    .line 2210
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/notification/ZenModeHelper;->applyRestrictions()V

    .line 2211
    return-void
.end method

.method private static updateRuleStringsForCurrentLocale(Landroid/content/Context;Landroid/service/notification/ZenModeConfig;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "defaultConfig"    # Landroid/service/notification/ZenModeConfig;

    .line 2367
    iget-object v0, p1, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 2368
    .local v1, "rule":Landroid/service/notification/ZenModeConfig$ZenRule;
    iget-object v2, v1, Landroid/service/notification/ZenModeConfig$ZenRule;->id:Ljava/lang/String;

    const-string v3, "EVENTS_DEFAULT_RULE"

    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2369
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 2370
    const v3, 0x1040af2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/service/notification/ZenModeConfig$ZenRule;->name:Ljava/lang/String;

    goto :goto_1

    .line 2371
    :cond_0
    const-string v2, "EVERY_NIGHT_DEFAULT_RULE"

    iget-object v3, v1, Landroid/service/notification/ZenModeConfig$ZenRule;->id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2372
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 2373
    const v3, 0x1040af3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/service/notification/ZenModeConfig$ZenRule;->name:Ljava/lang/String;

    .line 2375
    :cond_1
    :goto_1
    nop

    .line 2376
    invoke-static {p0, v1}, Landroid/service/notification/SystemZenRules;->updateTriggerDescription(Landroid/content/Context;Landroid/service/notification/ZenModeConfig$ZenRule;)Z

    .line 2378
    .end local v1    # "rule":Landroid/service/notification/ZenModeConfig$ZenRule;
    goto :goto_0

    .line 2379
    :cond_2
    return-void
.end method

.method private static updateZenDeviceEffects(Landroid/service/notification/ZenModeConfig$ZenRule;Landroid/service/notification/ZenDeviceEffects;ZZ)Z
    .locals 4
    .param p0, "zenRule"    # Landroid/service/notification/ZenModeConfig$ZenRule;
    .param p1, "newEffects"    # Landroid/service/notification/ZenDeviceEffects;
    .param p2, "isFromApp"    # Z
    .param p3, "updateBitmask"    # Z

    .line 1467
    if-nez p1, :cond_0

    .line 1468
    const/4 v0, 0x0

    return v0

    .line 1471
    :cond_0
    iget-object v0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->zenDeviceEffects:Landroid/service/notification/ZenDeviceEffects;

    if-eqz v0, :cond_1

    .line 1472
    iget-object v0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->zenDeviceEffects:Landroid/service/notification/ZenDeviceEffects;

    goto :goto_0

    .line 1473
    :cond_1
    new-instance v0, Landroid/service/notification/ZenDeviceEffects$Builder;

    invoke-direct {v0}, Landroid/service/notification/ZenDeviceEffects$Builder;-><init>()V

    invoke-virtual {v0}, Landroid/service/notification/ZenDeviceEffects$Builder;->build()Landroid/service/notification/ZenDeviceEffects;

    move-result-object v0

    :goto_0
    nop

    .line 1475
    .local v0, "oldEffects":Landroid/service/notification/ZenDeviceEffects;
    if-eqz p2, :cond_2

    .line 1477
    new-instance v1, Landroid/service/notification/ZenDeviceEffects$Builder;

    invoke-direct {v1, p1}, Landroid/service/notification/ZenDeviceEffects$Builder;-><init>(Landroid/service/notification/ZenDeviceEffects;)V

    .line 1480
    invoke-virtual {v0}, Landroid/service/notification/ZenDeviceEffects;->shouldDisableAutoBrightness()Z

    move-result v2

    .line 1479
    invoke-virtual {v1, v2}, Landroid/service/notification/ZenDeviceEffects$Builder;->setShouldDisableAutoBrightness(Z)Landroid/service/notification/ZenDeviceEffects$Builder;

    move-result-object v1

    .line 1481
    invoke-virtual {v0}, Landroid/service/notification/ZenDeviceEffects;->shouldDisableTapToWake()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/service/notification/ZenDeviceEffects$Builder;->setShouldDisableTapToWake(Z)Landroid/service/notification/ZenDeviceEffects$Builder;

    move-result-object v1

    .line 1482
    invoke-virtual {v0}, Landroid/service/notification/ZenDeviceEffects;->shouldDisableTiltToWake()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/service/notification/ZenDeviceEffects$Builder;->setShouldDisableTiltToWake(Z)Landroid/service/notification/ZenDeviceEffects$Builder;

    move-result-object v1

    .line 1483
    invoke-virtual {v0}, Landroid/service/notification/ZenDeviceEffects;->shouldDisableTouch()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/service/notification/ZenDeviceEffects$Builder;->setShouldDisableTouch(Z)Landroid/service/notification/ZenDeviceEffects$Builder;

    move-result-object v1

    .line 1484
    invoke-virtual {v0}, Landroid/service/notification/ZenDeviceEffects;->shouldMinimizeRadioUsage()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/service/notification/ZenDeviceEffects$Builder;->setShouldMinimizeRadioUsage(Z)Landroid/service/notification/ZenDeviceEffects$Builder;

    move-result-object v1

    .line 1485
    invoke-virtual {v0}, Landroid/service/notification/ZenDeviceEffects;->shouldMaximizeDoze()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/service/notification/ZenDeviceEffects$Builder;->setShouldMaximizeDoze(Z)Landroid/service/notification/ZenDeviceEffects$Builder;

    move-result-object v1

    .line 1486
    invoke-virtual {v0}, Landroid/service/notification/ZenDeviceEffects;->shouldUseNightLight()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/service/notification/ZenDeviceEffects$Builder;->setShouldUseNightLight(Z)Landroid/service/notification/ZenDeviceEffects$Builder;

    move-result-object v1

    .line 1487
    invoke-virtual {v0}, Landroid/service/notification/ZenDeviceEffects;->getExtraEffects()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/service/notification/ZenDeviceEffects$Builder;->setExtraEffects(Ljava/util/Set;)Landroid/service/notification/ZenDeviceEffects$Builder;

    move-result-object v1

    .line 1488
    invoke-virtual {v1}, Landroid/service/notification/ZenDeviceEffects$Builder;->build()Landroid/service/notification/ZenDeviceEffects;

    move-result-object p1

    .line 1491
    :cond_2
    iput-object p1, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->zenDeviceEffects:Landroid/service/notification/ZenDeviceEffects;

    .line 1493
    if-eqz p3, :cond_f

    .line 1494
    iget v1, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->zenDeviceEffectsUserModifiedFields:I

    .line 1495
    .local v1, "userModifiedFields":I
    invoke-virtual {v0}, Landroid/service/notification/ZenDeviceEffects;->shouldDisplayGrayscale()Z

    move-result v2

    invoke-virtual {p1}, Landroid/service/notification/ZenDeviceEffects;->shouldDisplayGrayscale()Z

    move-result v3

    if-eq v2, v3, :cond_3

    .line 1496
    or-int/lit8 v1, v1, 0x1

    .line 1498
    :cond_3
    invoke-virtual {v0}, Landroid/service/notification/ZenDeviceEffects;->shouldSuppressAmbientDisplay()Z

    move-result v2

    .line 1499
    invoke-virtual {p1}, Landroid/service/notification/ZenDeviceEffects;->shouldSuppressAmbientDisplay()Z

    move-result v3

    if-eq v2, v3, :cond_4

    .line 1500
    or-int/lit8 v1, v1, 0x2

    .line 1502
    :cond_4
    invoke-virtual {v0}, Landroid/service/notification/ZenDeviceEffects;->shouldDimWallpaper()Z

    move-result v2

    invoke-virtual {p1}, Landroid/service/notification/ZenDeviceEffects;->shouldDimWallpaper()Z

    move-result v3

    if-eq v2, v3, :cond_5

    .line 1503
    or-int/lit8 v1, v1, 0x4

    .line 1505
    :cond_5
    invoke-virtual {v0}, Landroid/service/notification/ZenDeviceEffects;->shouldUseNightMode()Z

    move-result v2

    invoke-virtual {p1}, Landroid/service/notification/ZenDeviceEffects;->shouldUseNightMode()Z

    move-result v3

    if-eq v2, v3, :cond_6

    .line 1506
    or-int/lit8 v1, v1, 0x8

    .line 1508
    :cond_6
    invoke-virtual {v0}, Landroid/service/notification/ZenDeviceEffects;->shouldDisableAutoBrightness()Z

    move-result v2

    .line 1509
    invoke-virtual {p1}, Landroid/service/notification/ZenDeviceEffects;->shouldDisableAutoBrightness()Z

    move-result v3

    if-eq v2, v3, :cond_7

    .line 1510
    or-int/lit8 v1, v1, 0x10

    .line 1512
    :cond_7
    invoke-virtual {v0}, Landroid/service/notification/ZenDeviceEffects;->shouldDisableTapToWake()Z

    move-result v2

    invoke-virtual {p1}, Landroid/service/notification/ZenDeviceEffects;->shouldDisableTapToWake()Z

    move-result v3

    if-eq v2, v3, :cond_8

    .line 1513
    or-int/lit8 v1, v1, 0x20

    .line 1515
    :cond_8
    invoke-virtual {v0}, Landroid/service/notification/ZenDeviceEffects;->shouldDisableTiltToWake()Z

    move-result v2

    invoke-virtual {p1}, Landroid/service/notification/ZenDeviceEffects;->shouldDisableTiltToWake()Z

    move-result v3

    if-eq v2, v3, :cond_9

    .line 1516
    or-int/lit8 v1, v1, 0x40

    .line 1518
    :cond_9
    invoke-virtual {v0}, Landroid/service/notification/ZenDeviceEffects;->shouldDisableTouch()Z

    move-result v2

    invoke-virtual {p1}, Landroid/service/notification/ZenDeviceEffects;->shouldDisableTouch()Z

    move-result v3

    if-eq v2, v3, :cond_a

    .line 1519
    or-int/lit16 v1, v1, 0x80

    .line 1521
    :cond_a
    invoke-virtual {v0}, Landroid/service/notification/ZenDeviceEffects;->shouldMinimizeRadioUsage()Z

    move-result v2

    invoke-virtual {p1}, Landroid/service/notification/ZenDeviceEffects;->shouldMinimizeRadioUsage()Z

    move-result v3

    if-eq v2, v3, :cond_b

    .line 1522
    or-int/lit16 v1, v1, 0x100

    .line 1524
    :cond_b
    invoke-virtual {v0}, Landroid/service/notification/ZenDeviceEffects;->shouldMaximizeDoze()Z

    move-result v2

    invoke-virtual {p1}, Landroid/service/notification/ZenDeviceEffects;->shouldMaximizeDoze()Z

    move-result v3

    if-eq v2, v3, :cond_c

    .line 1525
    or-int/lit16 v1, v1, 0x200

    .line 1527
    :cond_c
    invoke-virtual {v0}, Landroid/service/notification/ZenDeviceEffects;->shouldUseNightLight()Z

    move-result v2

    invoke-virtual {p1}, Landroid/service/notification/ZenDeviceEffects;->shouldUseNightLight()Z

    move-result v3

    if-eq v2, v3, :cond_d

    .line 1528
    or-int/lit16 v1, v1, 0x800

    .line 1530
    :cond_d
    invoke-virtual {v0}, Landroid/service/notification/ZenDeviceEffects;->getExtraEffects()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {p1}, Landroid/service/notification/ZenDeviceEffects;->getExtraEffects()Ljava/util/Set;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    .line 1531
    or-int/lit16 v1, v1, 0x400

    .line 1533
    :cond_e
    iput v1, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->zenDeviceEffectsUserModifiedFields:I

    .line 1536
    .end local v1    # "userModifiedFields":I
    :cond_f
    invoke-virtual {p1, v0}, Landroid/service/notification/ZenDeviceEffects;->equals(Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    return v1
.end method

.method private zenRuleToAutomaticZenRule(Landroid/service/notification/ZenModeConfig$ZenRule;)Landroid/app/AutomaticZenRule;
    .locals 3
    .param p1, "rule"    # Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 1540
    new-instance v0, Landroid/app/AutomaticZenRule$Builder;

    iget-object v1, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->name:Ljava/lang/String;

    iget-object v2, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    invoke-direct {v0, v1, v2}, Landroid/app/AutomaticZenRule$Builder;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iget-boolean v1, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->allowManualInvocation:Z

    .line 1541
    invoke-virtual {v0, v1}, Landroid/app/AutomaticZenRule$Builder;->setManualInvocationAllowed(Z)Landroid/app/AutomaticZenRule$Builder;

    move-result-object v0

    iget-object v1, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->pkg:Ljava/lang/String;

    .line 1542
    invoke-virtual {v0, v1}, Landroid/app/AutomaticZenRule$Builder;->setPackage(Ljava/lang/String;)Landroid/app/AutomaticZenRule$Builder;

    move-result-object v0

    iget-wide v1, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->creationTime:J

    .line 1543
    invoke-virtual {v0, v1, v2}, Landroid/app/AutomaticZenRule$Builder;->setCreationTime(J)Landroid/app/AutomaticZenRule$Builder;

    move-result-object v0

    iget-object v1, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->pkg:Ljava/lang/String;

    iget-object v2, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->iconResName:Ljava/lang/String;

    .line 1544
    invoke-direct {p0, v1, v2}, Lcom/android/server/notification/ZenModeHelper;->drawableResNameToResId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/AutomaticZenRule$Builder;->setIconResId(I)Landroid/app/AutomaticZenRule$Builder;

    move-result-object v0

    iget v1, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->type:I

    .line 1545
    invoke-virtual {v0, v1}, Landroid/app/AutomaticZenRule$Builder;->setType(I)Landroid/app/AutomaticZenRule$Builder;

    move-result-object v0

    iget-object v1, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->zenPolicy:Landroid/service/notification/ZenPolicy;

    .line 1546
    invoke-virtual {v0, v1}, Landroid/app/AutomaticZenRule$Builder;->setZenPolicy(Landroid/service/notification/ZenPolicy;)Landroid/app/AutomaticZenRule$Builder;

    move-result-object v0

    iget-object v1, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->zenDeviceEffects:Landroid/service/notification/ZenDeviceEffects;

    .line 1547
    invoke-virtual {v0, v1}, Landroid/app/AutomaticZenRule$Builder;->setDeviceEffects(Landroid/service/notification/ZenDeviceEffects;)Landroid/app/AutomaticZenRule$Builder;

    move-result-object v0

    iget-boolean v1, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->enabled:Z

    .line 1548
    invoke-virtual {v0, v1}, Landroid/app/AutomaticZenRule$Builder;->setEnabled(Z)Landroid/app/AutomaticZenRule$Builder;

    move-result-object v0

    iget v1, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->zenMode:I

    .line 1550
    invoke-static {v1}, Landroid/app/NotificationManager;->zenModeToInterruptionFilter(I)I

    move-result v1

    .line 1549
    invoke-virtual {v0, v1}, Landroid/app/AutomaticZenRule$Builder;->setInterruptionFilter(I)Landroid/app/AutomaticZenRule$Builder;

    move-result-object v0

    iget-object v1, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->component:Landroid/content/ComponentName;

    .line 1551
    invoke-virtual {v0, v1}, Landroid/app/AutomaticZenRule$Builder;->setOwner(Landroid/content/ComponentName;)Landroid/app/AutomaticZenRule$Builder;

    move-result-object v0

    iget-object v1, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->configurationActivity:Landroid/content/ComponentName;

    .line 1552
    invoke-virtual {v0, v1}, Landroid/app/AutomaticZenRule$Builder;->setConfigurationActivity(Landroid/content/ComponentName;)Landroid/app/AutomaticZenRule$Builder;

    move-result-object v0

    iget-object v1, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->triggerDescription:Ljava/lang/String;

    .line 1553
    invoke-virtual {v0, v1}, Landroid/app/AutomaticZenRule$Builder;->setTriggerDescription(Ljava/lang/String;)Landroid/app/AutomaticZenRule$Builder;

    move-result-object v0

    .line 1554
    invoke-virtual {v0}, Landroid/app/AutomaticZenRule$Builder;->build()Landroid/app/AutomaticZenRule;

    move-result-object v0

    .line 1540
    return-object v0
.end method

.method private static zenSeverity(I)I
    .locals 1
    .param p0, "zen"    # I

    .line 2548
    packed-switch p0, :pswitch_data_0

    .line 2552
    const/4 v0, 0x0

    return v0

    .line 2550
    :pswitch_0
    const/4 v0, 0x2

    return v0

    .line 2551
    :pswitch_1
    const/4 v0, 0x3

    return v0

    .line 2549
    :pswitch_2
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public addAutomaticZenRule(Landroid/os/UserHandle;Ljava/lang/String;Landroid/app/AutomaticZenRule;ILjava/lang/String;I)Ljava/lang/String;
    .locals 11
    .param p1, "user"    # Landroid/os/UserHandle;
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "automaticZenRule"    # Landroid/app/AutomaticZenRule;
    .param p4, "origin"    # I
    .param p5, "reason"    # Ljava/lang/String;
    .param p6, "callingUid"    # I

    .line 437
    const-string v0, "addAutomaticZenRule"

    move v6, p4

    invoke-static {v0, p4}, Lcom/android/server/notification/ZenModeHelper;->checkManageRuleOrigin(Ljava/lang/String;I)V

    .line 438
    const-string v0, "android"

    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 439
    invoke-virtual {p3}, Landroid/app/AutomaticZenRule;->getOwner()Landroid/content/ComponentName;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/notification/ZenModeHelper;->getServiceInfo(Landroid/content/ComponentName;)Landroid/content/pm/ServiceInfo;

    move-result-object v0

    .line 440
    .local v0, "component":Landroid/content/pm/PackageItemInfo;
    if-nez v0, :cond_0

    .line 441
    invoke-virtual {p3}, Landroid/app/AutomaticZenRule;->getConfigurationActivity()Landroid/content/ComponentName;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/notification/ZenModeHelper;->getActivityInfo(Landroid/content/ComponentName;)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    .line 443
    :cond_0
    if-eqz v0, :cond_4

    .line 446
    const/4 v1, -0x1

    .line 447
    .local v1, "ruleInstanceLimit":I
    iget-object v2, v0, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    if-eqz v2, :cond_1

    .line 448
    iget-object v2, v0, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    const-string v3, "android.service.zen.automatic.ruleInstanceLimit"

    const/4 v4, -0x1

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 451
    :cond_1
    invoke-virtual {p3}, Landroid/app/AutomaticZenRule;->getOwner()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {p0, p1, v2}, Lcom/android/server/notification/ZenModeHelper;->getCurrentInstanceCount(Landroid/os/UserHandle;Landroid/content/ComponentName;)I

    move-result v2

    .line 452
    invoke-virtual {p3}, Landroid/app/AutomaticZenRule;->getConfigurationActivity()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {p0, p1, v3}, Lcom/android/server/notification/ZenModeHelper;->getCurrentInstanceCount(Landroid/os/UserHandle;Landroid/content/ComponentName;)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1

    .line 454
    .local v2, "newRuleInstanceCount":I
    invoke-direct/range {p0 .. p2}, Lcom/android/server/notification/ZenModeHelper;->getPackageRuleCount(Landroid/os/UserHandle;Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    .line 455
    .local v3, "newPackageRuleCount":I
    const/16 v4, 0x64

    if-gt v3, v4, :cond_3

    if-lez v1, :cond_2

    if-lt v1, v2, :cond_3

    :cond_2
    goto :goto_0

    .line 457
    :cond_3
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Rule instance limit exceeded"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 444
    .end local v1    # "ruleInstanceLimit":I
    .end local v2    # "newRuleInstanceCount":I
    .end local v3    # "newPackageRuleCount":I
    :cond_4
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Lacking enabled CPS or config activity"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 462
    .end local v0    # "component":Landroid/content/pm/PackageItemInfo;
    :cond_5
    :goto_0
    iget-object v8, p0, Lcom/android/server/notification/ZenModeHelper;->mConfigLock:Ljava/lang/Object;

    monitor-enter v8

    .line 463
    :try_start_0
    invoke-direct/range {p0 .. p1}, Lcom/android/server/notification/ZenModeHelper;->getConfigLocked(Landroid/os/UserHandle;)Landroid/service/notification/ZenModeConfig;

    move-result-object v0

    .line 464
    .local v0, "config":Landroid/service/notification/ZenModeConfig;
    if-eqz v0, :cond_8

    .line 467
    sget-boolean v1, Lcom/android/server/notification/ZenModeHelper;->DEBUG:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_6

    .line 468
    :try_start_1
    const-string v1, "ZenModeHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addAutomaticZenRule rule= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " reason="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object/from16 v9, p5

    :try_start_2
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 482
    .end local v0    # "config":Landroid/service/notification/ZenModeConfig;
    :catchall_0
    move-exception v0

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object/from16 v9, p5

    goto :goto_2

    .line 467
    .restart local v0    # "config":Landroid/service/notification/ZenModeConfig;
    :cond_6
    move-object/from16 v9, p5

    .line 470
    :goto_1
    invoke-virtual {v0}, Landroid/service/notification/ZenModeConfig;->copy()Landroid/service/notification/ZenModeConfig;

    move-result-object v2

    .line 471
    .local v2, "newConfig":Landroid/service/notification/ZenModeConfig;
    new-instance v4, Landroid/service/notification/ZenModeConfig$ZenRule;

    invoke-direct {v4}, Landroid/service/notification/ZenModeConfig$ZenRule;-><init>()V

    .line 472
    .local v4, "rule":Landroid/service/notification/ZenModeConfig$ZenRule;
    const/4 v7, 0x1

    move-object v1, p0

    move-object v3, p3

    move-object v5, v4

    move-object v4, v2

    move-object v2, p2

    .end local v2    # "newConfig":Landroid/service/notification/ZenModeConfig;
    .local v4, "newConfig":Landroid/service/notification/ZenModeConfig;
    .local v5, "rule":Landroid/service/notification/ZenModeConfig$ZenRule;
    invoke-direct/range {v1 .. v7}, Lcom/android/server/notification/ZenModeHelper;->populateZenRule(Ljava/lang/String;Landroid/app/AutomaticZenRule;Landroid/service/notification/ZenModeConfig;Landroid/service/notification/ZenModeConfig$ZenRule;IZ)Z

    move-object v2, v4

    move-object v4, v5

    .line 473
    .end local v5    # "rule":Landroid/service/notification/ZenModeConfig$ZenRule;
    .restart local v2    # "newConfig":Landroid/service/notification/ZenModeConfig;
    .local v4, "rule":Landroid/service/notification/ZenModeConfig$ZenRule;
    move-object v1, p0

    move-object v3, p2

    move-object v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/android/server/notification/ZenModeHelper;->maybeRestoreRemovedRule(Landroid/service/notification/ZenModeConfig;Ljava/lang/String;Landroid/service/notification/ZenModeConfig$ZenRule;Landroid/app/AutomaticZenRule;I)Landroid/service/notification/ZenModeConfig$ZenRule;

    move-result-object v7

    move-object v10, v7

    .line 474
    .end local v4    # "rule":Landroid/service/notification/ZenModeConfig$ZenRule;
    .local v10, "rule":Landroid/service/notification/ZenModeConfig$ZenRule;
    iget-object v1, v2, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    iget-object v3, v10, Landroid/service/notification/ZenModeConfig$ZenRule;->id:Ljava/lang/String;

    invoke-virtual {v1, v3, v10}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 475
    const/4 v1, 0x0

    invoke-static {v2, v1, p3}, Lcom/android/server/notification/ZenModeHelper;->maybeReplaceDefaultRule(Landroid/service/notification/ZenModeConfig;Landroid/service/notification/ZenModeConfig$ZenRule;Landroid/app/AutomaticZenRule;)V

    .line 477
    iget-object v5, v10, Landroid/service/notification/ZenModeConfig$ZenRule;->component:Landroid/content/ComponentName;

    const/4 v6, 0x1

    move-object v1, p0

    move v3, p4

    move/from16 v7, p6

    move-object v4, v9

    invoke-direct/range {v1 .. v7}, Lcom/android/server/notification/ZenModeHelper;->setConfigLocked(Landroid/service/notification/ZenModeConfig;ILjava/lang/String;Landroid/content/ComponentName;ZI)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 478
    iget-object v1, v10, Landroid/service/notification/ZenModeConfig$ZenRule;->id:Ljava/lang/String;

    monitor-exit v8

    return-object v1

    .line 480
    :cond_7
    new-instance v1, Landroid/util/AndroidRuntimeException;

    const-string v3, "Could not create rule"

    invoke-direct {v1, v3}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/notification/ZenModeHelper;
    .end local p1    # "user":Landroid/os/UserHandle;
    .end local p2    # "pkg":Ljava/lang/String;
    .end local p3    # "automaticZenRule":Landroid/app/AutomaticZenRule;
    .end local p4    # "origin":I
    .end local p5    # "reason":Ljava/lang/String;
    .end local p6    # "callingUid":I
    throw v1

    .line 465
    .end local v2    # "newConfig":Landroid/service/notification/ZenModeConfig;
    .end local v10    # "rule":Landroid/service/notification/ZenModeConfig$ZenRule;
    .restart local p0    # "this":Lcom/android/server/notification/ZenModeHelper;
    .restart local p1    # "user":Landroid/os/UserHandle;
    .restart local p2    # "pkg":Ljava/lang/String;
    .restart local p3    # "automaticZenRule":Landroid/app/AutomaticZenRule;
    .restart local p4    # "origin":I
    .restart local p5    # "reason":Ljava/lang/String;
    .restart local p6    # "callingUid":I
    :cond_8
    new-instance v1, Landroid/util/AndroidRuntimeException;

    const-string v2, "Could not create rule"

    invoke-direct {v1, v2}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/notification/ZenModeHelper;
    .end local p1    # "user":Landroid/os/UserHandle;
    .end local p2    # "pkg":Ljava/lang/String;
    .end local p3    # "automaticZenRule":Landroid/app/AutomaticZenRule;
    .end local p4    # "origin":I
    .end local p5    # "reason":Ljava/lang/String;
    .end local p6    # "callingUid":I
    throw v1

    .line 482
    .end local v0    # "config":Landroid/service/notification/ZenModeConfig;
    .restart local p0    # "this":Lcom/android/server/notification/ZenModeHelper;
    .restart local p1    # "user":Landroid/os/UserHandle;
    .restart local p2    # "pkg":Ljava/lang/String;
    .restart local p3    # "automaticZenRule":Landroid/app/AutomaticZenRule;
    .restart local p4    # "origin":I
    .restart local p5    # "reason":Ljava/lang/String;
    .restart local p6    # "callingUid":I
    :goto_2
    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public addCallback(Lcom/android/server/notification/ZenModeHelper$Callback;)V
    .locals 1
    .param p1, "callback"    # Lcom/android/server/notification/ZenModeHelper$Callback;

    .line 284
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 285
    return-void
.end method

.method applyGlobalPolicyAsImplicitZenRule(Landroid/os/UserHandle;Ljava/lang/String;ILandroid/app/NotificationManager$Policy;)V
    .locals 11
    .param p1, "user"    # Landroid/os/UserHandle;
    .param p2, "callingPkg"    # Ljava/lang/String;
    .param p3, "callingUid"    # I
    .param p4, "policy"    # Landroid/app/NotificationManager$Policy;

    .line 671
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mConfigLock:Ljava/lang/Object;

    monitor-enter v1

    .line 672
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/notification/ZenModeHelper;->getConfigLocked(Landroid/os/UserHandle;)Landroid/service/notification/ZenModeConfig;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 673
    .local v0, "config":Landroid/service/notification/ZenModeConfig;
    if-nez v0, :cond_0

    .line 674
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    .line 712
    .end local v0    # "config":Landroid/service/notification/ZenModeConfig;
    :catchall_0
    move-exception v0

    move v8, p3

    goto/16 :goto_3

    .line 676
    .restart local v0    # "config":Landroid/service/notification/ZenModeConfig;
    :cond_0
    :try_start_2
    invoke-virtual {v0}, Landroid/service/notification/ZenModeConfig;->copy()Landroid/service/notification/ZenModeConfig;

    move-result-object v2

    move-object v4, v2

    .line 677
    .local v4, "newConfig":Landroid/service/notification/ZenModeConfig;
    const/4 v2, 0x0

    .line 678
    .local v2, "isNew":Z
    iget-object v3, v4, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-static {p2}, Landroid/service/notification/ZenModeConfig;->implicitRuleId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/service/notification/ZenModeConfig$ZenRule;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 679
    .local v3, "rule":Landroid/service/notification/ZenModeConfig$ZenRule;
    if-nez v3, :cond_1

    .line 680
    const/4 v2, 0x1

    .line 681
    :try_start_3
    invoke-direct {p0, p2}, Lcom/android/server/notification/ZenModeHelper;->newImplicitZenRule(Ljava/lang/String;)Landroid/service/notification/ZenModeConfig$ZenRule;

    move-result-object v5

    move-object v3, v5

    .line 682
    const/4 v5, 0x1

    iput v5, v3, Landroid/service/notification/ZenModeConfig$ZenRule;->zenMode:I

    .line 683
    iget-object v5, v4, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    iget-object v6, v3, Landroid/service/notification/ZenModeConfig$ZenRule;->id:Ljava/lang/String;

    invoke-virtual {v5, v6, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move v8, v2

    move-object v5, v3

    goto :goto_0

    .line 685
    :cond_1
    nop

    .line 686
    :try_start_4
    invoke-direct {p0, v3}, Lcom/android/server/notification/ZenModeHelper;->updateImplicitZenRuleNameAndDescription(Landroid/service/notification/ZenModeConfig$ZenRule;)V

    .line 692
    move v8, v2

    move-object v5, v3

    .end local v2    # "isNew":Z
    .end local v3    # "rule":Landroid/service/notification/ZenModeConfig$ZenRule;
    .local v5, "rule":Landroid/service/notification/ZenModeConfig$ZenRule;
    .local v8, "isNew":Z
    :goto_0
    iget v2, v5, Landroid/service/notification/ZenModeConfig$ZenRule;->zenPolicyUserModifiedFields:I

    if-nez v2, :cond_3

    .line 693
    invoke-static {p4}, Landroid/service/notification/ZenAdapters;->notificationPolicyToZenPolicy(Landroid/app/NotificationManager$Policy;)Landroid/service/notification/ZenPolicy;

    move-result-object v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 694
    .local v2, "newZenPolicy":Landroid/service/notification/ZenPolicy;
    if-eqz v8, :cond_2

    .line 700
    :try_start_5
    invoke-virtual {v0}, Landroid/service/notification/ZenModeConfig;->getZenPolicy()Landroid/service/notification/ZenPolicy;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/service/notification/ZenPolicy;->overwrittenWith(Landroid/service/notification/ZenPolicy;)Landroid/service/notification/ZenPolicy;

    move-result-object v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-object v2, v3

    move-object v6, v2

    goto :goto_1

    .line 694
    :cond_2
    move-object v6, v2

    .line 702
    .end local v2    # "newZenPolicy":Landroid/service/notification/ZenPolicy;
    .local v6, "newZenPolicy":Landroid/service/notification/ZenPolicy;
    :goto_1
    const/4 v7, 0x0

    move-object v3, p0

    :try_start_6
    invoke-direct/range {v3 .. v8}, Lcom/android/server/notification/ZenModeHelper;->updatePolicy(Landroid/service/notification/ZenModeConfig;Landroid/service/notification/ZenModeConfig$ZenRule;Landroid/service/notification/ZenPolicy;ZZ)Z

    move-object v2, v5

    move-object v10, v6

    move v9, v8

    .line 709
    .end local v5    # "rule":Landroid/service/notification/ZenModeConfig$ZenRule;
    .end local v6    # "newZenPolicy":Landroid/service/notification/ZenPolicy;
    .end local v8    # "isNew":Z
    .local v2, "rule":Landroid/service/notification/ZenModeConfig$ZenRule;
    .local v9, "isNew":Z
    .local v10, "newZenPolicy":Landroid/service/notification/ZenPolicy;
    const-string v7, "applyGlobalPolicyAsImplicitZenRule"
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    const/4 v5, 0x0

    const/4 v6, 0x4

    move-object v3, p0

    move v8, p3

    .end local p3    # "callingUid":I
    .local v8, "callingUid":I
    :try_start_7
    invoke-direct/range {v3 .. v8}, Lcom/android/server/notification/ZenModeHelper;->setConfigLocked(Landroid/service/notification/ZenModeConfig;Landroid/content/ComponentName;ILjava/lang/String;I)Z

    goto :goto_2

    .line 712
    .end local v0    # "config":Landroid/service/notification/ZenModeConfig;
    .end local v2    # "rule":Landroid/service/notification/ZenModeConfig$ZenRule;
    .end local v4    # "newConfig":Landroid/service/notification/ZenModeConfig;
    .end local v9    # "isNew":Z
    .end local v10    # "newZenPolicy":Landroid/service/notification/ZenPolicy;
    :catchall_1
    move-exception v0

    goto :goto_3

    .end local v8    # "callingUid":I
    .restart local p3    # "callingUid":I
    :catchall_2
    move-exception v0

    move v8, p3

    .end local p3    # "callingUid":I
    .restart local v8    # "callingUid":I
    goto :goto_3

    .line 692
    .restart local v0    # "config":Landroid/service/notification/ZenModeConfig;
    .restart local v4    # "newConfig":Landroid/service/notification/ZenModeConfig;
    .restart local v5    # "rule":Landroid/service/notification/ZenModeConfig$ZenRule;
    .local v8, "isNew":Z
    .restart local p3    # "callingUid":I
    :cond_3
    move-object v2, v5

    move v9, v8

    move v8, p3

    .line 712
    .end local v0    # "config":Landroid/service/notification/ZenModeConfig;
    .end local v4    # "newConfig":Landroid/service/notification/ZenModeConfig;
    .end local v5    # "rule":Landroid/service/notification/ZenModeConfig$ZenRule;
    .end local p3    # "callingUid":I
    .local v8, "callingUid":I
    :goto_2
    monitor-exit v1

    .line 713
    return-void

    .line 712
    :goto_3
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    throw v0
.end method

.method applyGlobalZenModeAsImplicitZenRule(Landroid/os/UserHandle;Ljava/lang/String;II)V
    .locals 10
    .param p1, "user"    # Landroid/os/UserHandle;
    .param p2, "callingPkg"    # Ljava/lang/String;
    .param p3, "callingUid"    # I
    .param p4, "zenMode"    # I

    .line 606
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mConfigLock:Ljava/lang/Object;

    monitor-enter v1

    .line 607
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/notification/ZenModeHelper;->getConfigLocked(Landroid/os/UserHandle;)Landroid/service/notification/ZenModeConfig;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 608
    .local v0, "config":Landroid/service/notification/ZenModeConfig;
    if-nez v0, :cond_0

    .line 609
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    .line 655
    .end local v0    # "config":Landroid/service/notification/ZenModeConfig;
    :catchall_0
    move-exception v0

    move v8, p3

    goto/16 :goto_3

    .line 611
    .restart local v0    # "config":Landroid/service/notification/ZenModeConfig;
    :cond_0
    :try_start_2
    invoke-virtual {v0}, Landroid/service/notification/ZenModeConfig;->copy()Landroid/service/notification/ZenModeConfig;

    move-result-object v2

    move-object v4, v2

    .line 612
    .local v4, "newConfig":Landroid/service/notification/ZenModeConfig;
    iget-object v2, v4, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-static {p2}, Landroid/service/notification/ZenModeConfig;->implicitRuleId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/service/notification/ZenModeConfig$ZenRule;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    .line 613
    .local v2, "rule":Landroid/service/notification/ZenModeConfig$ZenRule;
    if-nez p4, :cond_2

    .line 615
    if-eqz v2, :cond_1

    .line 616
    :try_start_3
    new-instance v6, Landroid/service/notification/Condition;

    iget-object v3, v2, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    iget-object v5, p0, Lcom/android/server/notification/ZenModeHelper;->mContext:Landroid/content/Context;

    .line 617
    const v7, 0x1040b03

    invoke-virtual {v5, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    invoke-direct {v6, v3, v5, v7}, Landroid/service/notification/Condition;-><init>(Landroid/net/Uri;Ljava/lang/String;I)V

    .line 619
    .local v6, "deactivated":Landroid/service/notification/Condition;
    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "applyGlobalZenModeAsImplicitZenRule: "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    const/4 v7, 0x4

    move-object v3, p0

    move v9, p3

    .end local p3    # "callingUid":I
    .local v9, "callingUid":I
    :try_start_4
    invoke-direct/range {v3 .. v9}, Lcom/android/server/notification/ZenModeHelper;->setAutomaticZenRuleStateLocked(Landroid/service/notification/ZenModeConfig;Ljava/util/List;Landroid/service/notification/Condition;ILjava/lang/String;I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move v8, v9

    .line 622
    .end local v6    # "deactivated":Landroid/service/notification/Condition;
    .end local v9    # "callingUid":I
    .local v8, "callingUid":I
    goto :goto_2

    .line 655
    .end local v0    # "config":Landroid/service/notification/ZenModeConfig;
    .end local v2    # "rule":Landroid/service/notification/ZenModeConfig$ZenRule;
    .end local v4    # "newConfig":Landroid/service/notification/ZenModeConfig;
    .end local v8    # "callingUid":I
    .restart local v9    # "callingUid":I
    :catchall_1
    move-exception v0

    move v8, v9

    .end local v9    # "callingUid":I
    .restart local v8    # "callingUid":I
    goto :goto_3

    .end local v8    # "callingUid":I
    .restart local p3    # "callingUid":I
    :catchall_2
    move-exception v0

    move-object v3, p0

    :goto_0
    move v8, p3

    .end local p3    # "callingUid":I
    .restart local v8    # "callingUid":I
    goto :goto_3

    .line 615
    .end local v8    # "callingUid":I
    .restart local v0    # "config":Landroid/service/notification/ZenModeConfig;
    .restart local v2    # "rule":Landroid/service/notification/ZenModeConfig$ZenRule;
    .restart local v4    # "newConfig":Landroid/service/notification/ZenModeConfig;
    .restart local p3    # "callingUid":I
    :cond_1
    move-object v3, p0

    move v8, p3

    .end local p3    # "callingUid":I
    .restart local v8    # "callingUid":I
    goto :goto_2

    .line 626
    .end local v8    # "callingUid":I
    .restart local p3    # "callingUid":I
    :cond_2
    move-object v3, p0

    move v8, p3

    .end local p3    # "callingUid":I
    .restart local v8    # "callingUid":I
    if-nez v2, :cond_3

    .line 627
    :try_start_5
    invoke-direct {p0, p2}, Lcom/android/server/notification/ZenModeHelper;->newImplicitZenRule(Ljava/lang/String;)Landroid/service/notification/ZenModeConfig$ZenRule;

    move-result-object p3

    move-object v2, p3

    .line 634
    invoke-virtual {v0}, Landroid/service/notification/ZenModeConfig;->getZenPolicy()Landroid/service/notification/ZenPolicy;

    move-result-object p3

    invoke-virtual {p3}, Landroid/service/notification/ZenPolicy;->copy()Landroid/service/notification/ZenPolicy;

    move-result-object p3

    iput-object p3, v2, Landroid/service/notification/ZenModeConfig$ZenRule;->zenPolicy:Landroid/service/notification/ZenPolicy;

    .line 635
    iget-object p3, v4, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    iget-object v5, v2, Landroid/service/notification/ZenModeConfig$ZenRule;->id:Ljava/lang/String;

    invoke-virtual {p3, v5, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 655
    .end local v0    # "config":Landroid/service/notification/ZenModeConfig;
    .end local v2    # "rule":Landroid/service/notification/ZenModeConfig$ZenRule;
    .end local v4    # "newConfig":Landroid/service/notification/ZenModeConfig;
    :catchall_3
    move-exception v0

    goto :goto_3

    .line 637
    .restart local v0    # "config":Landroid/service/notification/ZenModeConfig;
    .restart local v2    # "rule":Landroid/service/notification/ZenModeConfig$ZenRule;
    .restart local v4    # "newConfig":Landroid/service/notification/ZenModeConfig;
    :cond_3
    nop

    .line 638
    invoke-direct {p0, v2}, Lcom/android/server/notification/ZenModeHelper;->updateImplicitZenRuleNameAndDescription(Landroid/service/notification/ZenModeConfig$ZenRule;)V

    .line 644
    :goto_1
    iget p3, v2, Landroid/service/notification/ZenModeConfig$ZenRule;->userModifiedFields:I

    and-int/lit8 p3, p3, 0x2

    if-nez p3, :cond_4

    .line 645
    iput p4, v2, Landroid/service/notification/ZenModeConfig$ZenRule;->zenMode:I

    .line 647
    :cond_4
    new-instance p3, Landroid/service/notification/Condition;

    iget-object v5, v2, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    iget-object v6, v3, Lcom/android/server/notification/ZenModeHelper;->mContext:Landroid/content/Context;

    .line 648
    const v7, 0x1040b02

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    invoke-direct {p3, v5, v6, v7}, Landroid/service/notification/Condition;-><init>(Landroid/net/Uri;Ljava/lang/String;I)V

    iput-object p3, v2, Landroid/service/notification/ZenModeConfig$ZenRule;->condition:Landroid/service/notification/Condition;

    .line 650
    invoke-virtual {v2}, Landroid/service/notification/ZenModeConfig$ZenRule;->resetConditionOverride()V

    .line 652
    const-string v7, "applyGlobalZenModeAsImplicitZenRule"

    const/4 v5, 0x0

    const/4 v6, 0x4

    invoke-direct/range {v3 .. v8}, Lcom/android/server/notification/ZenModeHelper;->setConfigLocked(Landroid/service/notification/ZenModeConfig;Landroid/content/ComponentName;ILjava/lang/String;I)Z

    .line 655
    .end local v0    # "config":Landroid/service/notification/ZenModeConfig;
    .end local v2    # "rule":Landroid/service/notification/ZenModeConfig$ZenRule;
    .end local v4    # "newConfig":Landroid/service/notification/ZenModeConfig;
    :goto_2
    monitor-exit v1

    .line 656
    return-void

    .line 655
    .end local v8    # "callingUid":I
    .restart local p3    # "callingUid":I
    :catchall_4
    move-exception v0

    goto :goto_0

    .end local p3    # "callingUid":I
    .restart local v8    # "callingUid":I
    :goto_3
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    throw v0
.end method

.method protected applyRestrictions()V
    .locals 25

    .line 2394
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 2395
    .local v1, "zenOn":Z
    :goto_0
    iget v4, v0, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    if-ne v4, v3, :cond_1

    move v4, v3

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    .line 2396
    .local v4, "zenPriorityOnly":Z
    :goto_1
    iget v5, v0, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_2

    move v5, v3

    goto :goto_2

    :cond_2
    const/4 v5, 0x0

    .line 2397
    .local v5, "zenSilence":Z
    :goto_2
    iget v7, v0, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    const/4 v8, 0x3

    if-ne v7, v8, :cond_3

    move v7, v3

    goto :goto_3

    :cond_3
    const/4 v7, 0x0

    .line 2398
    .local v7, "zenAlarmsOnly":Z
    :goto_3
    iget-object v9, v0, Lcom/android/server/notification/ZenModeHelper;->mConsolidatedPolicy:Landroid/app/NotificationManager$Policy;

    invoke-virtual {v9}, Landroid/app/NotificationManager$Policy;->allowCalls()Z

    move-result v9

    nop

    if-eqz v9, :cond_4

    iget-object v9, v0, Lcom/android/server/notification/ZenModeHelper;->mConsolidatedPolicy:Landroid/app/NotificationManager$Policy;

    .line 2399
    invoke-virtual {v9}, Landroid/app/NotificationManager$Policy;->allowCallsFrom()I

    move-result v9

    if-nez v9, :cond_4

    move v9, v3

    goto :goto_4

    :cond_4
    const/4 v9, 0x0

    :goto_4
    nop

    .line 2400
    .local v9, "allowCalls":Z
    iget-object v10, v0, Lcom/android/server/notification/ZenModeHelper;->mConsolidatedPolicy:Landroid/app/NotificationManager$Policy;

    invoke-virtual {v10}, Landroid/app/NotificationManager$Policy;->allowRepeatCallers()Z

    move-result v10

    .line 2401
    .local v10, "allowRepeatCallers":Z
    iget-object v11, v0, Lcom/android/server/notification/ZenModeHelper;->mConsolidatedPolicy:Landroid/app/NotificationManager$Policy;

    invoke-virtual {v11}, Landroid/app/NotificationManager$Policy;->allowSystem()Z

    move-result v11

    .line 2402
    .local v11, "allowSystem":Z
    iget-object v12, v0, Lcom/android/server/notification/ZenModeHelper;->mConsolidatedPolicy:Landroid/app/NotificationManager$Policy;

    invoke-virtual {v12}, Landroid/app/NotificationManager$Policy;->allowMedia()Z

    move-result v12

    .line 2403
    .local v12, "allowMedia":Z
    iget-object v13, v0, Lcom/android/server/notification/ZenModeHelper;->mConsolidatedPolicy:Landroid/app/NotificationManager$Policy;

    invoke-virtual {v13}, Landroid/app/NotificationManager$Policy;->allowAlarms()Z

    move-result v13

    .line 2406
    .local v13, "allowAlarms":Z
    if-nez v1, :cond_6

    const-wide/16 v16, 0x0

    iget-wide v14, v0, Lcom/android/server/notification/ZenModeHelper;->mSuppressedEffects:J

    const-wide/16 v18, 0x1

    and-long v14, v14, v18

    cmp-long v14, v14, v16

    if-eqz v14, :cond_5

    goto :goto_5

    :cond_5
    const/4 v14, 0x0

    goto :goto_6

    :cond_6
    const-wide/16 v16, 0x0

    :goto_5
    move v14, v3

    .line 2409
    .local v14, "muteNotifications":Z
    :goto_6
    if-nez v7, :cond_a

    if-eqz v4, :cond_7

    if-eqz v9, :cond_8

    if-eqz v10, :cond_8

    :cond_7
    goto :goto_7

    :cond_8
    move/from16 v18, v7

    goto :goto_8

    :goto_7
    move/from16 v18, v7

    .end local v7    # "zenAlarmsOnly":Z
    .local v18, "zenAlarmsOnly":Z
    iget-wide v6, v0, Lcom/android/server/notification/ZenModeHelper;->mSuppressedEffects:J

    const-wide/16 v19, 0x2

    and-long v6, v6, v19

    cmp-long v6, v6, v16

    if-eqz v6, :cond_9

    goto :goto_8

    :cond_9
    const/4 v6, 0x0

    goto :goto_9

    .end local v18    # "zenAlarmsOnly":Z
    .restart local v7    # "zenAlarmsOnly":Z
    :cond_a
    move/from16 v18, v7

    .end local v7    # "zenAlarmsOnly":Z
    .restart local v18    # "zenAlarmsOnly":Z
    :goto_8
    move v6, v3

    .line 2413
    .local v6, "muteCalls":Z
    :goto_9
    if-eqz v4, :cond_b

    if-nez v13, :cond_b

    move v7, v3

    goto :goto_a

    :cond_b
    const/4 v7, 0x0

    .line 2415
    .local v7, "muteAlarms":Z
    :goto_a
    if-eqz v4, :cond_c

    if-nez v12, :cond_c

    move/from16 v16, v3

    goto :goto_b

    :cond_c
    const/16 v16, 0x0

    .line 2417
    .local v16, "muteMedia":Z
    :goto_b
    if-nez v18, :cond_d

    if-eqz v4, :cond_e

    if-nez v11, :cond_e

    :cond_d
    goto :goto_c

    :cond_e
    const/16 v17, 0x0

    goto :goto_d

    :goto_c
    move/from16 v17, v3

    .line 2419
    .local v17, "muteSystem":Z
    :goto_d
    nop

    nop

    if-nez v5, :cond_10

    nop

    if-eqz v4, :cond_f

    iget-object v15, v0, Lcom/android/server/notification/ZenModeHelper;->mConsolidatedPolicy:Landroid/app/NotificationManager$Policy;

    .line 2420
    invoke-static {v15}, Landroid/service/notification/ZenModeConfig;->areAllZenBehaviorSoundsMuted(Landroid/app/NotificationManager$Policy;)Z

    move-result v15

    if-eqz v15, :cond_f

    goto :goto_e

    :cond_f
    const/4 v15, 0x0

    goto :goto_f

    :cond_10
    :goto_e
    move v15, v3

    :goto_f
    nop

    .line 2422
    .local v15, "muteEverything":Z
    sget-object v20, Landroid/media/AudioAttributes;->SDK_USAGES:Landroid/util/IntArray;

    invoke-virtual/range {v20 .. v20}, Landroid/util/IntArray;->toArray()[I

    move-result-object v3

    array-length v2, v3

    const/4 v8, 0x0

    :goto_10
    if-ge v8, v2, :cond_24

    move/from16 v21, v1

    .end local v1    # "zenOn":Z
    .local v21, "zenOn":Z
    aget v1, v3, v8

    .line 2423
    .local v1, "usage":I
    move/from16 v22, v2

    sget-object v2, Landroid/media/AudioAttributes;->SUPPRESSIBLE_USAGES:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v2

    .line 2424
    .local v2, "suppressionBehavior":I
    move-object/from16 v23, v3

    const/4 v3, 0x3

    if-ne v2, v3, :cond_11

    .line 2425
    const/4 v3, 0x0

    invoke-virtual {v0, v4, v3, v1}, Lcom/android/server/notification/ZenModeHelper;->applyRestrictions(ZZI)V

    goto/16 :goto_1c

    .line 2426
    :cond_11
    const/4 v3, 0x1

    if-ne v2, v3, :cond_14

    .line 2427
    if-nez v14, :cond_12

    if-eqz v15, :cond_13

    :cond_12
    goto :goto_11

    :cond_13
    const/4 v3, 0x0

    :goto_11
    invoke-virtual {v0, v4, v3, v1}, Lcom/android/server/notification/ZenModeHelper;->applyRestrictions(ZZI)V

    const/4 v3, 0x0

    goto/16 :goto_1c

    .line 2428
    :cond_14
    const/4 v3, 0x2

    if-ne v2, v3, :cond_17

    .line 2429
    if-nez v6, :cond_15

    if-eqz v15, :cond_16

    :cond_15
    goto :goto_12

    :cond_16
    const/4 v3, 0x0

    goto :goto_13

    :goto_12
    const/4 v3, 0x1

    :goto_13
    invoke-virtual {v0, v4, v3, v1}, Lcom/android/server/notification/ZenModeHelper;->applyRestrictions(ZZI)V

    const/4 v3, 0x0

    goto :goto_1c

    .line 2430
    :cond_17
    const/4 v3, 0x4

    if-ne v2, v3, :cond_1a

    .line 2431
    if-nez v7, :cond_18

    if-eqz v15, :cond_19

    :cond_18
    goto :goto_14

    :cond_19
    const/4 v3, 0x0

    goto :goto_15

    :goto_14
    const/4 v3, 0x1

    :goto_15
    invoke-virtual {v0, v4, v3, v1}, Lcom/android/server/notification/ZenModeHelper;->applyRestrictions(ZZI)V

    const/4 v3, 0x0

    goto :goto_1c

    .line 2432
    :cond_1a
    const/4 v3, 0x5

    if-ne v2, v3, :cond_1d

    .line 2433
    if-nez v16, :cond_1b

    if-eqz v15, :cond_1c

    :cond_1b
    goto :goto_16

    :cond_1c
    const/4 v3, 0x0

    goto :goto_17

    :goto_16
    const/4 v3, 0x1

    :goto_17
    invoke-virtual {v0, v4, v3, v1}, Lcom/android/server/notification/ZenModeHelper;->applyRestrictions(ZZI)V

    const/4 v3, 0x0

    goto :goto_1c

    .line 2434
    :cond_1d
    const/4 v3, 0x6

    if-ne v2, v3, :cond_23

    .line 2435
    const/16 v3, 0xd

    if-ne v1, v3, :cond_20

    .line 2437
    if-nez v17, :cond_1e

    if-eqz v15, :cond_1f

    :cond_1e
    goto :goto_18

    :cond_1f
    const/4 v3, 0x0

    goto :goto_19

    :goto_18
    const/4 v3, 0x1

    :goto_19
    move/from16 v24, v2

    .end local v2    # "suppressionBehavior":I
    .local v24, "suppressionBehavior":I
    const/16 v2, 0x1c

    invoke-virtual {v0, v4, v3, v1, v2}, Lcom/android/server/notification/ZenModeHelper;->applyRestrictions(ZZII)V

    .line 2439
    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-virtual {v0, v4, v3, v1, v2}, Lcom/android/server/notification/ZenModeHelper;->applyRestrictions(ZZII)V

    goto :goto_1c

    .line 2441
    .end local v24    # "suppressionBehavior":I
    .restart local v2    # "suppressionBehavior":I
    :cond_20
    move/from16 v24, v2

    const/4 v2, 0x3

    const/4 v3, 0x0

    .end local v2    # "suppressionBehavior":I
    .restart local v24    # "suppressionBehavior":I
    if-nez v17, :cond_21

    if-eqz v15, :cond_22

    :cond_21
    goto :goto_1a

    :cond_22
    move v2, v3

    goto :goto_1b

    :goto_1a
    const/4 v2, 0x1

    :goto_1b
    invoke-virtual {v0, v4, v2, v1}, Lcom/android/server/notification/ZenModeHelper;->applyRestrictions(ZZI)V

    goto :goto_1c

    .line 2444
    .end local v24    # "suppressionBehavior":I
    .restart local v2    # "suppressionBehavior":I
    :cond_23
    move/from16 v24, v2

    const/4 v3, 0x0

    .end local v2    # "suppressionBehavior":I
    .restart local v24    # "suppressionBehavior":I
    invoke-virtual {v0, v4, v15, v1}, Lcom/android/server/notification/ZenModeHelper;->applyRestrictions(ZZI)V

    .line 2422
    .end local v1    # "usage":I
    .end local v24    # "suppressionBehavior":I
    :goto_1c
    add-int/lit8 v8, v8, 0x1

    move/from16 v1, v21

    move/from16 v2, v22

    move-object/from16 v3, v23

    goto/16 :goto_10

    .line 2447
    .end local v21    # "zenOn":Z
    .local v1, "zenOn":Z
    :cond_24
    return-void
.end method

.method protected applyRestrictions(ZZI)V
    .locals 1
    .param p1, "zenPriorityOnly"    # Z
    .param p2, "mute"    # Z
    .param p3, "usage"    # I

    .line 2464
    const/4 v0, 0x3

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/notification/ZenModeHelper;->applyRestrictions(ZZII)V

    .line 2465
    const/16 v0, 0x1c

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/notification/ZenModeHelper;->applyRestrictions(ZZII)V

    .line 2466
    return-void
.end method

.method protected applyRestrictions(ZZII)V
    .locals 4
    .param p1, "zenPriorityOnly"    # Z
    .param p2, "mute"    # Z
    .param p3, "usage"    # I
    .param p4, "code"    # I

    .line 2452
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2454
    .local v0, "ident":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/notification/ZenModeHelper;->mAppOps:Landroid/app/AppOpsManager;

    .line 2455
    nop

    .line 2456
    if-eqz p1, :cond_0

    iget-object v3, p0, Lcom/android/server/notification/ZenModeHelper;->mPriorityOnlyDndExemptPackages:[Ljava/lang/String;

    goto :goto_0

    .line 2458
    :catchall_0
    move-exception v2

    goto :goto_1

    .line 2456
    :cond_0
    const/4 v3, 0x0

    .line 2454
    :goto_0
    invoke-virtual {v2, p4, p3, p2, v3}, Landroid/app/AppOpsManager;->setRestriction(III[Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2458
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2459
    nop

    .line 2460
    return-void

    .line 2458
    :goto_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2459
    throw v2
.end method

.method protected applyZenToRingerMode()V
    .locals 4

    .line 2471
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mAudioManager:Landroid/media/AudioManagerInternal;

    if-nez v0, :cond_0

    return-void

    .line 2473
    :cond_0
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mAudioManager:Landroid/media/AudioManagerInternal;

    invoke-virtual {v0}, Landroid/media/AudioManagerInternal;->getRingerModeInternal()I

    move-result v0

    .line 2474
    .local v0, "ringerModeInternal":I
    move v1, v0

    .line 2475
    .local v1, "newRingerModeInternal":I
    iget v2, p0, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 2478
    :pswitch_0
    if-eqz v0, :cond_1

    .line 2479
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/notification/ZenModeHelper;->setPreviousRingerModeSetting(Ljava/lang/Integer;)V

    .line 2480
    const/4 v1, 0x0

    goto :goto_0

    .line 2485
    :pswitch_1
    goto :goto_0

    .line 2487
    :pswitch_2
    if-nez v0, :cond_1

    .line 2488
    invoke-direct {p0}, Lcom/android/server/notification/ZenModeHelper;->getPreviousRingerModeSetting()I

    move-result v1

    .line 2489
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/android/server/notification/ZenModeHelper;->setPreviousRingerModeSetting(Ljava/lang/Integer;)V

    .line 2493
    :cond_1
    :goto_0
    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    .line 2494
    iget-object v2, p0, Lcom/android/server/notification/ZenModeHelper;->mAudioManager:Landroid/media/AudioManagerInternal;

    const-string v3, "ZenModeHelper"

    invoke-virtual {v2, v1, v3}, Landroid/media/AudioManagerInternal;->setRingerModeInternal(ILjava/lang/String;)V

    .line 2496
    :cond_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public canManageAutomaticZenRule(Landroid/service/notification/ZenModeConfig$ZenRule;I)Z
    .locals 6
    .param p1, "rule"    # Landroid/service/notification/ZenModeConfig$ZenRule;
    .param p2, "callingUid"    # I

    .line 1071
    nop

    .line 1077
    const/4 v0, 0x1

    if-eqz p2, :cond_0

    const/16 v1, 0x3e8

    if-ne p2, v1, :cond_1

    :cond_0
    goto :goto_1

    .line 1080
    :cond_1
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.MANAGE_NOTIFICATIONS"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_2

    .line 1082
    return v0

    .line 1084
    :cond_2
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, p2}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v1

    .line 1085
    .local v1, "packages":[Ljava/lang/String;
    if-eqz v1, :cond_4

    .line 1086
    array-length v2, v1

    .line 1087
    .local v2, "packageCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_4

    .line 1088
    aget-object v4, v1, v3

    invoke-virtual {p1}, Landroid/service/notification/ZenModeConfig$ZenRule;->getPkg()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1089
    return v0

    .line 1087
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1093
    .end local v2    # "packageCount":I
    .end local v3    # "i":I
    :cond_4
    const/4 v0, 0x0

    return v0

    .line 1079
    .end local v1    # "packages":[Ljava/lang/String;
    :goto_1
    return v0
.end method

.method protected cleanUpCallersAfter(J)V
    .locals 1
    .param p1, "timeThreshold"    # J

    .line 274
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mFiltering:Lcom/android/server/notification/ZenModeFiltering;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/notification/ZenModeFiltering;->cleanUpCallersAfter(J)V

    .line 275
    return-void
.end method

.method dump(Landroid/util/proto/ProtoOutputStream;)V
    .locals 6
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;

    .line 1684
    const-wide v0, 0x10e00000001L

    iget v2, p0, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1685
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mConfigLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1686
    :try_start_0
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    invoke-virtual {v1}, Landroid/service/notification/ZenModeConfig;->isManualActive()Z

    move-result v1

    const-wide v2, 0x20b00000002L

    if-eqz v1, :cond_0

    .line 1687
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget-object v1, v1, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    invoke-virtual {v1, p1, v2, v3}, Landroid/service/notification/ZenModeConfig$ZenRule;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    goto :goto_0

    .line 1696
    :catchall_0
    move-exception v1

    goto :goto_2

    .line 1689
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget-object v1, v1, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 1690
    .local v4, "rule":Landroid/service/notification/ZenModeConfig$ZenRule;
    invoke-virtual {v4}, Landroid/service/notification/ZenModeConfig$ZenRule;->isActive()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1691
    invoke-virtual {v4, p1, v2, v3}, Landroid/service/notification/ZenModeConfig$ZenRule;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 1693
    .end local v4    # "rule":Landroid/service/notification/ZenModeConfig$ZenRule;
    :cond_1
    goto :goto_1

    .line 1694
    :cond_2
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    invoke-virtual {v1}, Landroid/service/notification/ZenModeConfig;->toNotificationPolicy()Landroid/app/NotificationManager$Policy;

    move-result-object v1

    const-wide v2, 0x10b00000005L

    invoke-virtual {v1, p1, v2, v3}, Landroid/app/NotificationManager$Policy;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 1695
    iget-wide v1, p0, Lcom/android/server/notification/ZenModeHelper;->mSuppressedEffects:J

    const-wide v3, 0x10500000003L

    invoke-virtual {p1, v3, v4, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 1696
    monitor-exit v0

    .line 1697
    return-void

    .line 1696
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 5
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 1700
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1701
    const-string/jumbo v0, "mZenMode="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1702
    iget v0, p0, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    invoke-static {v0}, Landroid/provider/Settings$Global;->zenModeToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1703
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1704
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mConsolidatedPolicy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mConsolidatedPolicy:Landroid/app/NotificationManager$Policy;

    invoke-virtual {v1}, Landroid/app/NotificationManager$Policy;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1705
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mConfigLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1706
    :try_start_0
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mConfigs:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 1707
    .local v1, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 1708
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mConfigs[u="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/notification/ZenModeHelper;->mConfigs:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/notification/ZenModeHelper;->mConfigs:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/service/notification/ZenModeConfig;

    invoke-static {p1, p2, v3, v4}, Lcom/android/server/notification/ZenModeHelper;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/service/notification/ZenModeConfig;)V

    .line 1707
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1710
    .end local v1    # "N":I
    .end local v2    # "i":I
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 1707
    .restart local v1    # "N":I
    .restart local v2    # "i":I
    :cond_0
    nop

    .line 1710
    .end local v1    # "N":I
    .end local v2    # "i":I
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1711
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mUser="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/notification/ZenModeHelper;->mUser:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 1712
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mConfigLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1713
    :try_start_1
    const-string/jumbo v0, "mConfig"

    iget-object v2, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    invoke-static {p1, p2, v0, v2}, Lcom/android/server/notification/ZenModeHelper;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/service/notification/ZenModeConfig;)V

    .line 1714
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1716
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mSuppressedEffects="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/server/notification/ZenModeHelper;->mSuppressedEffects:J

    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->println(J)V

    .line 1717
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mFiltering:Lcom/android/server/notification/ZenModeFiltering;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/notification/ZenModeFiltering;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 1718
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mConditions:Lcom/android/server/notification/ZenModeConditions;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/notification/ZenModeConditions;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 1719
    return-void

    .line 1714
    :catchall_1
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    .line 1710
    :goto_1
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method

.method protected evaluateZenModeLocked(ILjava/lang/String;Z)V
    .locals 6
    .param p1, "origin"    # I
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "setRingerMode"    # Z

    .line 2184
    sget-boolean v0, Lcom/android/server/notification/ZenModeHelper;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "ZenModeHelper"

    const-string v1, "evaluateZenMode"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2185
    :cond_0
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    if-nez v0, :cond_1

    return-void

    .line 2186
    :cond_1
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mConsolidatedPolicy:Landroid/app/NotificationManager$Policy;

    const/4 v1, 0x0

    if-nez v0, :cond_2

    move v0, v1

    goto :goto_0

    .line 2187
    :cond_2
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mConsolidatedPolicy:Landroid/app/NotificationManager$Policy;

    invoke-virtual {v0}, Landroid/app/NotificationManager$Policy;->hashCode()I

    move-result v0

    :goto_0
    nop

    .line 2188
    .local v0, "policyHashBefore":I
    iget v2, p0, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    .line 2189
    .local v2, "zenBefore":I
    invoke-direct {p0}, Lcom/android/server/notification/ZenModeHelper;->computeZenMode()I

    move-result v3

    .line 2190
    .local v3, "zen":I
    invoke-static {v3, p2}, Lcom/android/server/notification/ZenLog;->traceSetZenMode(ILjava/lang/String;)V

    .line 2191
    iput v3, p0, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    .line 2192
    iget v4, p0, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    invoke-virtual {p0, v4}, Lcom/android/server/notification/ZenModeHelper;->setZenModeSetting(I)V

    .line 2193
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/ZenModeHelper;->updateAndApplyConsolidatedPolicyAndDeviceEffects(ILjava/lang/String;)V

    .line 2194
    if-eqz p3, :cond_4

    const/4 v4, 0x1

    nop

    if-ne v3, v2, :cond_3

    if-ne v3, v4, :cond_4

    iget-object v5, p0, Lcom/android/server/notification/ZenModeHelper;->mConsolidatedPolicy:Landroid/app/NotificationManager$Policy;

    .line 2196
    invoke-virtual {v5}, Landroid/app/NotificationManager$Policy;->hashCode()I

    move-result v5

    if-eq v0, v5, :cond_4

    :cond_3
    move v1, v4

    goto :goto_1

    :cond_4
    nop

    :goto_1
    nop

    .line 2197
    .local v1, "shouldApplyToRinger":Z
    iget-object v4, p0, Lcom/android/server/notification/ZenModeHelper;->mHandler:Lcom/android/server/notification/ZenModeHelper$H;

    invoke-static {v4, v1}, Lcom/android/server/notification/ZenModeHelper$H;->-$$Nest$mpostUpdateRingerAndAudio(Lcom/android/server/notification/ZenModeHelper$H;Z)V

    .line 2198
    if-eq v3, v2, :cond_5

    .line 2199
    iget-object v4, p0, Lcom/android/server/notification/ZenModeHelper;->mHandler:Lcom/android/server/notification/ZenModeHelper$H;

    invoke-static {v4}, Lcom/android/server/notification/ZenModeHelper$H;->-$$Nest$mpostDispatchOnZenModeChanged(Lcom/android/server/notification/ZenModeHelper$H;)V

    .line 2201
    :cond_5
    return-void
.end method

.method public getAutomaticZenRule(Landroid/os/UserHandle;Ljava/lang/String;I)Landroid/app/AutomaticZenRule;
    .locals 4
    .param p1, "user"    # Landroid/os/UserHandle;
    .param p2, "id"    # Ljava/lang/String;
    .param p3, "callingUid"    # I

    .line 422
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mConfigLock:Ljava/lang/Object;

    monitor-enter v0

    .line 423
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/notification/ZenModeHelper;->getConfigLocked(Landroid/os/UserHandle;)Landroid/service/notification/ZenModeConfig;

    move-result-object v1

    .line 424
    .local v1, "config":Landroid/service/notification/ZenModeConfig;
    const/4 v2, 0x0

    if-nez v1, :cond_0

    monitor-exit v0

    return-object v2

    .line 426
    .end local v1    # "config":Landroid/service/notification/ZenModeConfig;
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 425
    .restart local v1    # "config":Landroid/service/notification/ZenModeConfig;
    :cond_0
    iget-object v3, v1, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v3, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 426
    .end local v1    # "config":Landroid/service/notification/ZenModeConfig;
    .local v3, "rule":Landroid/service/notification/ZenModeConfig$ZenRule;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 427
    if-nez v3, :cond_1

    return-object v2

    .line 428
    :cond_1
    invoke-virtual {p0, v3, p3}, Lcom/android/server/notification/ZenModeHelper;->canManageAutomaticZenRule(Landroid/service/notification/ZenModeConfig$ZenRule;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 429
    invoke-direct {p0, v3}, Lcom/android/server/notification/ZenModeHelper;->zenRuleToAutomaticZenRule(Landroid/service/notification/ZenModeConfig$ZenRule;)Landroid/app/AutomaticZenRule;

    move-result-object v0

    return-object v0

    .line 431
    :cond_2
    return-object v2

    .line 426
    .end local v3    # "rule":Landroid/service/notification/ZenModeConfig$ZenRule;
    :goto_0
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method getAutomaticZenRuleState(Landroid/os/UserHandle;Ljava/lang/String;I)I
    .locals 5
    .param p1, "user"    # Landroid/os/UserHandle;
    .param p2, "id"    # Ljava/lang/String;
    .param p3, "callingUid"    # I

    .line 890
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mConfigLock:Ljava/lang/Object;

    monitor-enter v0

    .line 891
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/notification/ZenModeHelper;->getConfigLocked(Landroid/os/UserHandle;)Landroid/service/notification/ZenModeConfig;

    move-result-object v1

    .line 892
    .local v1, "config":Landroid/service/notification/ZenModeConfig;
    const/4 v2, 0x2

    if-nez v1, :cond_0

    .line 893
    monitor-exit v0

    return v2

    .line 905
    .end local v1    # "config":Landroid/service/notification/ZenModeConfig;
    :catchall_0
    move-exception v1

    goto :goto_2

    .line 895
    .restart local v1    # "config":Landroid/service/notification/ZenModeConfig;
    :cond_0
    iget-object v3, v1, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v3, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 896
    .local v3, "rule":Landroid/service/notification/ZenModeConfig$ZenRule;
    if-eqz v3, :cond_1

    invoke-virtual {p0, v3, p3}, Lcom/android/server/notification/ZenModeHelper;->canManageAutomaticZenRule(Landroid/service/notification/ZenModeConfig$ZenRule;I)Z

    move-result v4

    if-nez v4, :cond_2

    :cond_1
    goto :goto_1

    .line 899
    :cond_2
    nop

    .line 900
    invoke-virtual {v3}, Landroid/service/notification/ZenModeConfig$ZenRule;->isActive()Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, 0x1

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    :goto_0
    monitor-exit v0

    return v2

    .line 897
    :goto_1
    monitor-exit v0

    return v2

    .line 905
    .end local v1    # "config":Landroid/service/notification/ZenModeConfig;
    .end local v3    # "rule":Landroid/service/notification/ZenModeConfig$ZenRule;
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method getAutomaticZenRules(Landroid/os/UserHandle;I)Ljava/util/Map;
    .locals 7
    .param p1, "user"    # Landroid/os/UserHandle;
    .param p2, "callingUid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/UserHandle;",
            "I)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/app/AutomaticZenRule;",
            ">;"
        }
    .end annotation

    .line 406
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 407
    .local v0, "rules":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/app/AutomaticZenRule;>;"
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mConfigLock:Ljava/lang/Object;

    monitor-enter v1

    .line 408
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/notification/ZenModeHelper;->getConfigLocked(Landroid/os/UserHandle;)Landroid/service/notification/ZenModeConfig;

    move-result-object v2

    .line 409
    .local v2, "config":Landroid/service/notification/ZenModeConfig;
    if-nez v2, :cond_0

    monitor-exit v1

    return-object v0

    .line 417
    .end local v2    # "config":Landroid/service/notification/ZenModeConfig;
    :catchall_0
    move-exception v2

    goto :goto_1

    .line 411
    .restart local v2    # "config":Landroid/service/notification/ZenModeConfig;
    :cond_0
    iget-object v3, v2, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 412
    .local v4, "rule":Landroid/service/notification/ZenModeConfig$ZenRule;
    invoke-virtual {p0, v4, p2}, Lcom/android/server/notification/ZenModeHelper;->canManageAutomaticZenRule(Landroid/service/notification/ZenModeConfig$ZenRule;I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 413
    iget-object v5, v4, Landroid/service/notification/ZenModeConfig$ZenRule;->id:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/android/server/notification/ZenModeHelper;->zenRuleToAutomaticZenRule(Landroid/service/notification/ZenModeConfig$ZenRule;)Landroid/app/AutomaticZenRule;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 415
    .end local v4    # "rule":Landroid/service/notification/ZenModeConfig$ZenRule;
    :cond_1
    goto :goto_0

    .line 416
    :cond_2
    monitor-exit v1

    return-object v0

    .line 417
    .end local v2    # "config":Landroid/service/notification/ZenModeConfig;
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public getCallbacks()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/server/notification/ZenModeHelper$Callback;",
            ">;"
        }
    .end annotation

    .line 293
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mCallbacks:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getConfig()Landroid/service/notification/ZenModeConfig;
    .locals 2

    .line 1998
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mConfigLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1999
    :try_start_0
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    invoke-virtual {v1}, Landroid/service/notification/ZenModeConfig;->copy()Landroid/service/notification/ZenModeConfig;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 2000
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getConsolidatedNotificationPolicy()Landroid/app/NotificationManager$Policy;
    .locals 1

    .line 2007
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mConsolidatedPolicy:Landroid/app/NotificationManager$Policy;

    invoke-virtual {v0}, Landroid/app/NotificationManager$Policy;->copy()Landroid/app/NotificationManager$Policy;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentInstanceCount(Landroid/os/UserHandle;Landroid/content/ComponentName;)I
    .locals 6
    .param p1, "user"    # Landroid/os/UserHandle;
    .param p2, "cn"    # Landroid/content/ComponentName;

    .line 1033
    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 1034
    return v0

    .line 1036
    :cond_0
    const/4 v1, 0x0

    .line 1037
    .local v1, "count":I
    iget-object v2, p0, Lcom/android/server/notification/ZenModeHelper;->mConfigLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1038
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/notification/ZenModeHelper;->getConfigLocked(Landroid/os/UserHandle;)Landroid/service/notification/ZenModeConfig;

    move-result-object v3

    .line 1039
    .local v3, "config":Landroid/service/notification/ZenModeConfig;
    if-nez v3, :cond_1

    monitor-exit v2

    return v0

    .line 1046
    .end local v3    # "config":Landroid/service/notification/ZenModeConfig;
    :catchall_0
    move-exception v0

    goto :goto_1

    .line 1041
    .restart local v3    # "config":Landroid/service/notification/ZenModeConfig;
    :cond_1
    iget-object v0, v3, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    nop

    if-eqz v4, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 1042
    .local v4, "rule":Landroid/service/notification/ZenModeConfig$ZenRule;
    iget-object v5, v4, Landroid/service/notification/ZenModeConfig$ZenRule;->component:Landroid/content/ComponentName;

    invoke-virtual {p2, v5}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    iget-object v5, v4, Landroid/service/notification/ZenModeConfig$ZenRule;->configurationActivity:Landroid/content/ComponentName;

    invoke-virtual {p2, v5}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1043
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 1045
    .end local v4    # "rule":Landroid/service/notification/ZenModeConfig$ZenRule;
    :cond_3
    goto :goto_0

    .line 1046
    .end local v3    # "config":Landroid/service/notification/ZenModeConfig;
    :cond_4
    monitor-exit v2

    .line 1047
    return v1

    .line 1046
    :goto_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected getDefaultZenPolicy()Landroid/service/notification/ZenPolicy;
    .locals 1

    .line 2015
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mDefaultConfig:Landroid/service/notification/ZenModeConfig;

    invoke-virtual {v0}, Landroid/service/notification/ZenModeConfig;->getZenPolicy()Landroid/service/notification/ZenPolicy;

    move-result-object v0

    return-object v0
.end method

.method public getNotificationPolicy(Landroid/os/UserHandle;)Landroid/app/NotificationManager$Policy;
    .locals 3
    .param p1, "user"    # Landroid/os/UserHandle;

    .line 1861
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mConfigLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1862
    nop

    .line 1866
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/notification/ZenModeHelper;->getConfigLocked(Landroid/os/UserHandle;)Landroid/service/notification/ZenModeConfig;

    move-result-object v1

    .line 1867
    .local v1, "config":Landroid/service/notification/ZenModeConfig;
    if-eqz v1, :cond_0

    .line 1868
    invoke-static {v1}, Lcom/android/server/notification/ZenModeHelper;->getNotificationPolicy(Landroid/service/notification/ZenModeConfig;)Landroid/app/NotificationManager$Policy;

    move-result-object v2

    goto :goto_0

    .line 1873
    .end local v1    # "config":Landroid/service/notification/ZenModeConfig;
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 1869
    .restart local v1    # "config":Landroid/service/notification/ZenModeConfig;
    :cond_0
    iget-object v2, p0, Lcom/android/server/notification/ZenModeHelper;->mDefaultConfig:Landroid/service/notification/ZenModeConfig;

    invoke-static {v2}, Lcom/android/server/notification/ZenModeHelper;->getNotificationPolicy(Landroid/service/notification/ZenModeConfig;)Landroid/app/NotificationManager$Policy;

    move-result-object v2

    :goto_0
    monitor-exit v0

    .line 1867
    return-object v2

    .line 1873
    .end local v1    # "config":Landroid/service/notification/ZenModeConfig;
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method getNotificationPolicyFromImplicitZenRule(Landroid/os/UserHandle;Ljava/lang/String;)Landroid/app/NotificationManager$Policy;
    .locals 4
    .param p1, "user"    # Landroid/os/UserHandle;
    .param p2, "callingPkg"    # Ljava/lang/String;

    .line 727
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mConfigLock:Ljava/lang/Object;

    monitor-enter v0

    .line 728
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/notification/ZenModeHelper;->getConfigLocked(Landroid/os/UserHandle;)Landroid/service/notification/ZenModeConfig;

    move-result-object v1

    .line 729
    .local v1, "config":Landroid/service/notification/ZenModeConfig;
    if-nez v1, :cond_0

    .line 730
    monitor-exit v0

    const/4 v0, 0x0

    return-object v0

    .line 743
    .end local v1    # "config":Landroid/service/notification/ZenModeConfig;
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 732
    .restart local v1    # "config":Landroid/service/notification/ZenModeConfig;
    :cond_0
    iget-object v2, v1, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-static {p2}, Landroid/service/notification/ZenModeConfig;->implicitRuleId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 733
    .local v2, "implicitRule":Landroid/service/notification/ZenModeConfig$ZenRule;
    if-eqz v2, :cond_1

    iget-object v3, v2, Landroid/service/notification/ZenModeConfig$ZenRule;->zenPolicy:Landroid/service/notification/ZenPolicy;

    if-eqz v3, :cond_1

    .line 739
    iget-object v3, v2, Landroid/service/notification/ZenModeConfig$ZenRule;->zenPolicy:Landroid/service/notification/ZenPolicy;

    invoke-virtual {v1, v3}, Landroid/service/notification/ZenModeConfig;->toNotificationPolicy(Landroid/service/notification/ZenPolicy;)Landroid/app/NotificationManager$Policy;

    move-result-object v3

    monitor-exit v0

    return-object v3

    .line 741
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/server/notification/ZenModeHelper;->getNotificationPolicy(Landroid/os/UserHandle;)Landroid/app/NotificationManager$Policy;

    move-result-object v3

    monitor-exit v0

    return-object v3

    .line 743
    .end local v1    # "config":Landroid/service/notification/ZenModeConfig;
    .end local v2    # "implicitRule":Landroid/service/notification/ZenModeConfig$ZenRule;
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getSuppressedEffects()J
    .locals 2

    .line 393
    iget-wide v0, p0, Lcom/android/server/notification/ZenModeHelper;->mSuppressedEffects:J

    return-wide v0
.end method

.method public getZenMode()I
    .locals 1

    .line 397
    iget v0, p0, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    return v0
.end method

.method public getZenModeListenerInterruptionFilter()I
    .locals 1

    .line 383
    iget v0, p0, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    invoke-static {v0}, Landroid/app/NotificationManager;->zenModeToInterruptionFilter(I)I

    move-result v0

    return v0
.end method

.method hasDeviceEffectsApplier()Z
    .locals 2

    .line 323
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mConfigLock:Ljava/lang/Object;

    monitor-enter v0

    .line 324
    :try_start_0
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mDeviceEffectsApplier:Landroid/service/notification/DeviceEffectsApplier;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    .line 325
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public initZenMode()V
    .locals 8

    .line 297
    sget-boolean v0, Lcom/android/server/notification/ZenModeHelper;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "ZenModeHelper"

    const-string/jumbo v1, "initZenMode"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    :cond_0
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mConfigLock:Ljava/lang/Object;

    monitor-enter v1

    .line 302
    :try_start_0
    iget-object v3, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    const-string/jumbo v5, "init"

    const/4 v6, 0x1

    const/16 v7, 0x3e8

    const/4 v4, 0x1

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/server/notification/ZenModeHelper;->updateConfigAndZenModeLocked(Landroid/service/notification/ZenModeConfig;ILjava/lang/String;ZI)V

    .line 304
    monitor-exit v1

    .line 305
    return-void

    .line 304
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isCall(Lcom/android/server/notification/NotificationRecord;)Z
    .locals 1
    .param p1, "record"    # Lcom/android/server/notification/NotificationRecord;

    .line 266
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mFiltering:Lcom/android/server/notification/ZenModeFiltering;

    invoke-virtual {v0, p1}, Lcom/android/server/notification/ZenModeFiltering;->isCall(Lcom/android/server/notification/NotificationRecord;)Z

    move-result v0

    return v0
.end method

.method public matchesCallFilter(Landroid/os/UserHandle;Landroid/os/Bundle;Lcom/android/server/notification/ValidateNotificationPeople;IFI)Z
    .locals 11
    .param p1, "userHandle"    # Landroid/os/UserHandle;
    .param p2, "extras"    # Landroid/os/Bundle;
    .param p3, "validator"    # Lcom/android/server/notification/ValidateNotificationPeople;
    .param p4, "contactsTimeoutMs"    # I
    .param p5, "timeoutAffinity"    # F
    .param p6, "callingUid"    # I

    .line 258
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mConfigLock:Ljava/lang/Object;

    monitor-enter v1

    .line 259
    :try_start_0
    iget-object v2, p0, Lcom/android/server/notification/ZenModeHelper;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    iget-object v4, p0, Lcom/android/server/notification/ZenModeHelper;->mConsolidatedPolicy:Landroid/app/NotificationManager$Policy;

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move v8, p4

    move/from16 v9, p5

    move/from16 v10, p6

    invoke-static/range {v2 .. v10}, Lcom/android/server/notification/ZenModeFiltering;->matchesCallFilter(Landroid/content/Context;ILandroid/app/NotificationManager$Policy;Landroid/os/UserHandle;Landroid/os/Bundle;Lcom/android/server/notification/ValidateNotificationPeople;IFI)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 262
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onSystemReady()V
    .locals 2

    .line 308
    sget-boolean v0, Lcom/android/server/notification/ZenModeHelper;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "ZenModeHelper"

    const-string/jumbo v1, "onSystemReady"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    :cond_0
    const-class v0, Landroid/media/AudioManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManagerInternal;

    iput-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mAudioManager:Landroid/media/AudioManagerInternal;

    .line 310
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mAudioManager:Landroid/media/AudioManagerInternal;

    if-eqz v0, :cond_1

    .line 311
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mAudioManager:Landroid/media/AudioManagerInternal;

    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mRingerModeDelegate:Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;

    invoke-virtual {v0, v1}, Landroid/media/AudioManagerInternal;->setRingerModeDelegate(Landroid/media/AudioManagerInternal$RingerModeDelegate;)V

    .line 313
    :cond_1
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mPm:Landroid/content/pm/PackageManager;

    .line 314
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mHandler:Lcom/android/server/notification/ZenModeHelper$H;

    invoke-static {v0}, Lcom/android/server/notification/ZenModeHelper$H;->-$$Nest$mpostMetricsTimer(Lcom/android/server/notification/ZenModeHelper$H;)V

    .line 315
    invoke-direct {p0}, Lcom/android/server/notification/ZenModeHelper;->cleanUpZenRules()V

    .line 316
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/notification/ZenModeHelper;->mIsSystemServicesReady:Z

    .line 317
    return-void
.end method

.method public onUserRemoved(I)V
    .locals 3
    .param p1, "user"    # I

    .line 349
    if-gez p1, :cond_0

    return-void

    .line 350
    :cond_0
    sget-boolean v0, Lcom/android/server/notification/ZenModeHelper;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "ZenModeHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onUserRemoved u="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    :cond_1
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mConfigLock:Ljava/lang/Object;

    monitor-enter v0

    .line 352
    :try_start_0
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mConfigs:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 353
    monitor-exit v0

    .line 354
    return-void

    .line 353
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onUserSwitched(I)V
    .locals 1
    .param p1, "user"    # I

    .line 345
    const-string/jumbo v0, "onUserSwitched"

    invoke-direct {p0, p1, v0}, Lcom/android/server/notification/ZenModeHelper;->loadConfigForUser(ILjava/lang/String;)V

    .line 346
    return-void
.end method

.method public pullRules(Ljava/util/List;)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)V"
        }
    .end annotation

    .line 2560
    .local p1, "events":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    iget-object v3, v1, Lcom/android/server/notification/ZenModeHelper;->mConfigLock:Ljava/lang/Object;

    monitor-enter v3

    .line 2561
    :try_start_0
    iget-object v0, v1, Lcom/android/server/notification/ZenModeHelper;->mConfigs:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 2562
    .local v0, "numConfigs":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v0, :cond_2

    .line 2563
    iget-object v5, v1, Lcom/android/server/notification/ZenModeHelper;->mConfigs:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    move v7, v5

    .line 2564
    .local v7, "user":I
    iget-object v5, v1, Lcom/android/server/notification/ZenModeHelper;->mConfigs:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/service/notification/ZenModeConfig;

    .line 2565
    .local v5, "config":Landroid/service/notification/ZenModeConfig;
    nop

    .line 2567
    invoke-virtual {v5}, Landroid/service/notification/ZenModeConfig;->isManualActive()Z

    move-result v8

    iget-boolean v9, v5, Landroid/service/notification/ZenModeConfig;->hasPriorityChannels:Z

    const-string v11, ""

    .line 2572
    invoke-virtual {v5}, Landroid/service/notification/ZenModeConfig;->getZenPolicy()Landroid/service/notification/ZenPolicy;

    move-result-object v6

    invoke-virtual {v6}, Landroid/service/notification/ZenPolicy;->toProto()[B

    move-result-object v13

    .line 2565
    const/16 v6, 0x2764

    const/4 v10, -0x1

    const/16 v12, 0x3e8

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, -0x1

    invoke-static/range {v6 .. v17}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IIZZILjava/lang/String;I[BIIII)Landroid/util/StatsEvent;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2577
    invoke-virtual {v5}, Landroid/service/notification/ZenModeConfig;->isManualActive()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 2578
    iget-object v6, v5, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    const/4 v8, 0x1

    invoke-direct {v1, v7, v6, v8, v2}, Lcom/android/server/notification/ZenModeHelper;->ruleToProtoLocked(ILandroid/service/notification/ZenModeConfig$ZenRule;ZLjava/util/List;)V

    goto :goto_1

    .line 2584
    .end local v0    # "numConfigs":I
    .end local v4    # "i":I
    .end local v5    # "config":Landroid/service/notification/ZenModeConfig;
    .end local v7    # "user":I
    :catchall_0
    move-exception v0

    goto :goto_3

    .line 2580
    .restart local v0    # "numConfigs":I
    .restart local v4    # "i":I
    .restart local v5    # "config":Landroid/service/notification/ZenModeConfig;
    .restart local v7    # "user":I
    :cond_0
    :goto_1
    iget-object v6, v5, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v6}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 2581
    .local v8, "rule":Landroid/service/notification/ZenModeConfig$ZenRule;
    const/4 v9, 0x0

    invoke-direct {v1, v7, v8, v9, v2}, Lcom/android/server/notification/ZenModeHelper;->ruleToProtoLocked(ILandroid/service/notification/ZenModeConfig$ZenRule;ZLjava/util/List;)V

    .line 2582
    .end local v8    # "rule":Landroid/service/notification/ZenModeConfig$ZenRule;
    goto :goto_2

    .line 2580
    :cond_1
    nop

    .line 2562
    .end local v5    # "config":Landroid/service/notification/ZenModeConfig;
    .end local v7    # "user":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    nop

    .line 2584
    .end local v0    # "numConfigs":I
    .end local v4    # "i":I
    monitor-exit v3

    .line 2585
    return-void

    .line 2584
    :goto_3
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public readXml(Lcom/android/modules/utils/TypedXmlPullParser;ZILandroid/app/backup/BackupRestoreEventLogger;)Z
    .locals 16
    .param p1, "parser"    # Lcom/android/modules/utils/TypedXmlPullParser;
    .param p2, "forRestore"    # Z
    .param p3, "userId"    # I
    .param p4, "logger"    # Landroid/app/backup/BackupRestoreEventLogger;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1728
    move-object/from16 v1, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p4

    invoke-static {v7, v8}, Landroid/service/notification/ZenModeConfig;->readXml(Lcom/android/modules/utils/TypedXmlPullParser;Landroid/app/backup/BackupRestoreEventLogger;)Landroid/service/notification/ZenModeConfig;

    move-result-object v2

    .line 1729
    .local v2, "config":Landroid/service/notification/ZenModeConfig;
    const-string/jumbo v0, "readXml"

    .line 1730
    .local v0, "reason":Ljava/lang/String;
    if-eqz v2, :cond_f

    .line 1731
    const/4 v3, 0x0

    if-eqz p2, :cond_0

    .line 1732
    move/from16 v9, p3

    iput v9, v2, Landroid/service/notification/ZenModeConfig;->user:I

    .line 1733
    nop

    .line 1734
    iget-object v4, v2, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    if-eqz v4, :cond_1

    .line 1735
    iget-object v4, v2, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    iput-object v3, v4, Landroid/service/notification/ZenModeConfig$ZenRule;->condition:Landroid/service/notification/Condition;

    goto :goto_0

    .line 1731
    :cond_0
    move/from16 v9, p3

    .line 1743
    :cond_1
    :goto_0
    const/4 v4, 0x1

    .line 1744
    .local v4, "allRulesDisabled":Z
    iget-object v5, v2, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    .line 1745
    invoke-static {}, Landroid/service/notification/ZenModeConfig;->getDefaultRuleIds()Ljava/util/List;

    move-result-object v6

    .line 1744
    invoke-virtual {v5, v6}, Landroid/util/ArrayMap;->containsAll(Ljava/util/Collection;)Z

    move-result v10

    .line 1747
    .local v10, "hasDefaultRules":Z
    iget-object v5, v1, Lcom/android/server/notification/ZenModeHelper;->mClock:Ljava/time/Clock;

    invoke-virtual {v5}, Ljava/time/Clock;->millis()J

    move-result-wide v11

    .line 1748
    .local v11, "time":J
    iget-object v5, v2, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    const/4 v6, 0x1

    if-eqz v5, :cond_7

    iget-object v5, v2, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v5

    if-lez v5, :cond_7

    .line 1749
    iget-object v5, v2, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    nop

    if-eqz v13, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 1750
    .local v13, "automaticRule":Landroid/service/notification/ZenModeConfig$ZenRule;
    if-eqz p2, :cond_2

    .line 1752
    iput-object v3, v13, Landroid/service/notification/ZenModeConfig$ZenRule;->condition:Landroid/service/notification/Condition;

    .line 1753
    invoke-virtual {v13}, Landroid/service/notification/ZenModeConfig$ZenRule;->resetConditionOverride()V

    .line 1754
    iput-wide v11, v13, Landroid/service/notification/ZenModeConfig$ZenRule;->creationTime:J

    .line 1757
    :cond_2
    iget-boolean v14, v13, Landroid/service/notification/ZenModeConfig$ZenRule;->enabled:Z

    xor-int/2addr v14, v6

    and-int/2addr v4, v14

    .line 1761
    iget v14, v2, Landroid/service/notification/ZenModeConfig;->version:I

    const/16 v15, 0xb

    if-ge v14, v15, :cond_4

    .line 1763
    invoke-virtual {v2}, Landroid/service/notification/ZenModeConfig;->getZenPolicy()Landroid/service/notification/ZenPolicy;

    move-result-object v14

    .line 1764
    .local v14, "manualRulePolicy":Landroid/service/notification/ZenPolicy;
    iget-object v15, v13, Landroid/service/notification/ZenModeConfig$ZenRule;->zenPolicy:Landroid/service/notification/ZenPolicy;

    if-nez v15, :cond_3

    .line 1765
    iput-object v14, v13, Landroid/service/notification/ZenModeConfig$ZenRule;->zenPolicy:Landroid/service/notification/ZenPolicy;

    goto :goto_2

    .line 1770
    :cond_3
    iget-object v15, v13, Landroid/service/notification/ZenModeConfig$ZenRule;->zenPolicy:Landroid/service/notification/ZenPolicy;

    .line 1771
    invoke-virtual {v14, v15}, Landroid/service/notification/ZenPolicy;->overwrittenWith(Landroid/service/notification/ZenPolicy;)Landroid/service/notification/ZenPolicy;

    move-result-object v15

    iput-object v15, v13, Landroid/service/notification/ZenModeConfig$ZenRule;->zenPolicy:Landroid/service/notification/ZenPolicy;

    .line 1775
    .end local v14    # "manualRulePolicy":Landroid/service/notification/ZenPolicy;
    :cond_4
    :goto_2
    iget v14, v2, Landroid/service/notification/ZenModeConfig;->version:I

    const/16 v15, 0xc

    if-ge v14, v15, :cond_5

    .line 1778
    iget-object v14, v13, Landroid/service/notification/ZenModeConfig$ZenRule;->id:Ljava/lang/String;

    invoke-static {v14}, Landroid/service/notification/ZenModeConfig;->isImplicitRuleId(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_5

    .line 1779
    iput-object v3, v13, Landroid/service/notification/ZenModeConfig$ZenRule;->iconResName:Ljava/lang/String;

    .line 1782
    .end local v13    # "automaticRule":Landroid/service/notification/ZenModeConfig$ZenRule;
    :cond_5
    goto :goto_1

    .line 1749
    :cond_6
    move v13, v4

    goto :goto_3

    .line 1785
    :cond_7
    move v13, v4

    .end local v4    # "allRulesDisabled":Z
    .local v13, "allRulesDisabled":Z
    :goto_3
    if-nez v10, :cond_a

    if-eqz v13, :cond_a

    if-nez p2, :cond_8

    iget v3, v2, Landroid/service/notification/ZenModeConfig;->version:I

    const/16 v4, 0x8

    if-ge v3, v4, :cond_a

    .line 1794
    :cond_8
    new-instance v3, Landroid/util/ArrayMap;

    invoke-direct {v3}, Landroid/util/ArrayMap;-><init>()V

    iput-object v3, v2, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    .line 1795
    iget-object v3, v1, Lcom/android/server/notification/ZenModeHelper;->mDefaultConfig:Landroid/service/notification/ZenModeConfig;

    iget-object v3, v3, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 1796
    .local v4, "rule":Landroid/service/notification/ZenModeConfig$ZenRule;
    iget-object v5, v2, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    iget-object v14, v4, Landroid/service/notification/ZenModeConfig$ZenRule;->id:Ljava/lang/String;

    invoke-virtual {v4}, Landroid/service/notification/ZenModeConfig$ZenRule;->copy()Landroid/service/notification/ZenModeConfig$ZenRule;

    move-result-object v15

    invoke-virtual {v5, v14, v15}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1797
    .end local v4    # "rule":Landroid/service/notification/ZenModeConfig$ZenRule;
    goto :goto_4

    .line 1798
    :cond_9
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", reset to default rules"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v5, v0

    goto :goto_5

    .line 1801
    :cond_a
    move-object v5, v0

    .end local v0    # "reason":Ljava/lang/String;
    .local v5, "reason":Ljava/lang/String;
    :goto_5
    nop

    .line 1802
    iget-object v0, v1, Lcom/android/server/notification/ZenModeHelper;->mContext:Landroid/content/Context;

    invoke-static {v0, v2}, Landroid/service/notification/SystemZenRules;->maybeUpgradeRules(Landroid/content/Context;Landroid/service/notification/ZenModeConfig;)V

    .line 1805
    if-eqz p2, :cond_b

    .line 1807
    iget-object v0, v2, Landroid/service/notification/ZenModeConfig;->deletedRules:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 1810
    :cond_b
    iget-object v0, v2, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    if-eqz v0, :cond_c

    .line 1811
    iget-object v0, v2, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    const-string v3, "EVENTS_DEFAULT_RULE"

    invoke-virtual {v0, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 1813
    .local v0, "obsoleteEventsRule":Landroid/service/notification/ZenModeConfig$ZenRule;
    if-eqz v0, :cond_c

    iget-boolean v3, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->enabled:Z

    if-nez v3, :cond_c

    .line 1814
    iget-object v3, v2, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    const-string v4, "EVENTS_DEFAULT_RULE"

    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1818
    .end local v0    # "obsoleteEventsRule":Landroid/service/notification/ZenModeConfig$ZenRule;
    :cond_c
    sget-boolean v0, Lcom/android/server/notification/ZenModeHelper;->DEBUG:Z

    if-eqz v0, :cond_d

    const-string v0, "ZenModeHelper"

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1819
    :cond_d
    iget-object v14, v1, Lcom/android/server/notification/ZenModeHelper;->mConfigLock:Ljava/lang/Object;

    monitor-enter v14

    .line 1820
    nop

    .line 1821
    if-eqz p2, :cond_e

    const/4 v6, 0x6

    :cond_e
    move v4, v6

    .line 1820
    const/4 v3, 0x0

    const/16 v6, 0x3e8

    :try_start_0
    invoke-direct/range {v1 .. v6}, Lcom/android/server/notification/ZenModeHelper;->setConfigLocked(Landroid/service/notification/ZenModeConfig;Landroid/content/ComponentName;ILjava/lang/String;I)Z

    move-result v0

    monitor-exit v14

    return v0

    .line 1823
    :catchall_0
    move-exception v0

    monitor-exit v14
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1825
    .end local v5    # "reason":Ljava/lang/String;
    .end local v10    # "hasDefaultRules":Z
    .end local v11    # "time":J
    .end local v13    # "allRulesDisabled":Z
    .local v0, "reason":Ljava/lang/String;
    :cond_f
    move/from16 v9, p3

    const/4 v1, 0x0

    return v1
.end method

.method public recordCaller(Lcom/android/server/notification/NotificationRecord;)V
    .locals 1
    .param p1, "record"    # Lcom/android/server/notification/NotificationRecord;

    .line 270
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mFiltering:Lcom/android/server/notification/ZenModeFiltering;

    invoke-virtual {v0, p1}, Lcom/android/server/notification/ZenModeFiltering;->recordCall(Lcom/android/server/notification/NotificationRecord;)V

    .line 271
    return-void
.end method

.method removeAutomaticZenRule(Landroid/os/UserHandle;Ljava/lang/String;ILjava/lang/String;I)Z
    .locals 11
    .param p1, "user"    # Landroid/os/UserHandle;
    .param p2, "id"    # Ljava/lang/String;
    .param p3, "origin"    # I
    .param p4, "reason"    # Ljava/lang/String;
    .param p5, "callingUid"    # I

    .line 804
    const-string/jumbo v0, "removeAutomaticZenRule"

    invoke-static {v0, p3}, Lcom/android/server/notification/ZenModeHelper;->checkManageRuleOrigin(Ljava/lang/String;I)V

    .line 806
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mConfigLock:Ljava/lang/Object;

    monitor-enter v1

    .line 807
    :try_start_0
    invoke-direct/range {p0 .. p1}, Lcom/android/server/notification/ZenModeHelper;->getConfigLocked(Landroid/os/UserHandle;)Landroid/service/notification/ZenModeConfig;

    move-result-object v0

    .line 808
    .local v0, "config":Landroid/service/notification/ZenModeConfig;
    const/4 v2, 0x0

    if-nez v0, :cond_0

    monitor-exit v1

    return v2

    .line 833
    .end local v0    # "config":Landroid/service/notification/ZenModeConfig;
    :catchall_0
    move-exception v0

    goto/16 :goto_2

    .line 809
    .restart local v0    # "config":Landroid/service/notification/ZenModeConfig;
    :cond_0
    invoke-virtual {v0}, Landroid/service/notification/ZenModeConfig;->copy()Landroid/service/notification/ZenModeConfig;

    move-result-object v3

    move-object v5, v3

    .line 810
    .local v5, "newConfig":Landroid/service/notification/ZenModeConfig;
    iget-object v3, v5, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v3, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 811
    .local v3, "ruleToRemove":Landroid/service/notification/ZenModeConfig$ZenRule;
    if-nez v3, :cond_1

    monitor-exit v1

    return v2

    .line 812
    :cond_1
    move/from16 v10, p5

    invoke-virtual {p0, v3, v10}, Lcom/android/server/notification/ZenModeHelper;->canManageAutomaticZenRule(Landroid/service/notification/ZenModeConfig$ZenRule;I)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 813
    iget-object v2, v5, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v2, p2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 814
    invoke-direct {p0, v5, v3, p3}, Lcom/android/server/notification/ZenModeHelper;->maybePreserveRemovedRule(Landroid/service/notification/ZenModeConfig;Landroid/service/notification/ZenModeConfig$ZenRule;I)V

    .line 815
    invoke-virtual {v3}, Landroid/service/notification/ZenModeConfig$ZenRule;->getPkg()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    const-string v2, "android"

    .line 816
    invoke-virtual {v3}, Landroid/service/notification/ZenModeConfig$ZenRule;->getPkg()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 817
    iget-object v2, v5, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 818
    .local v4, "currRule":Landroid/service/notification/ZenModeConfig$ZenRule;
    invoke-virtual {v4}, Landroid/service/notification/ZenModeConfig$ZenRule;->getPkg()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 819
    invoke-virtual {v4}, Landroid/service/notification/ZenModeConfig$ZenRule;->getPkg()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3}, Landroid/service/notification/ZenModeConfig$ZenRule;->getPkg()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 820
    goto :goto_1

    .line 822
    .end local v4    # "currRule":Landroid/service/notification/ZenModeConfig$ZenRule;
    :cond_2
    goto :goto_0

    .line 823
    :cond_3
    :goto_1
    iget-object v2, p0, Lcom/android/server/notification/ZenModeHelper;->mRulesUidCache:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/service/notification/ZenModeConfig$ZenRule;->getPkg()Ljava/lang/String;

    move-result-object v4

    iget v6, v5, Landroid/service/notification/ZenModeConfig;->user:I

    invoke-static {v4, v6}, Lcom/android/server/notification/ZenModeHelper;->getPackageUserKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 825
    :cond_4
    sget-boolean v2, Lcom/android/server/notification/ZenModeHelper;->DEBUG:Z

    if-eqz v2, :cond_5

    const-string v2, "ZenModeHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "removeZenRule zenRule="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " reason="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 830
    :cond_5
    iget v2, v0, Landroid/service/notification/ZenModeConfig;->user:I

    .line 831
    invoke-virtual {v3}, Landroid/service/notification/ZenModeConfig$ZenRule;->getPkg()Ljava/lang/String;

    move-result-object v4

    .line 830
    const/4 v6, 0x3

    invoke-direct {p0, v2, v4, p2, v6}, Lcom/android/server/notification/ZenModeHelper;->dispatchOnAutomaticRuleStatusChanged(ILjava/lang/String;Ljava/lang/String;I)V

    .line 832
    const/4 v8, 0x0

    const/4 v9, 0x1

    move-object v4, p0

    move v6, p3

    move-object v7, p4

    invoke-direct/range {v4 .. v10}, Lcom/android/server/notification/ZenModeHelper;->setConfigLocked(Landroid/service/notification/ZenModeConfig;ILjava/lang/String;Landroid/content/ComponentName;ZI)Z

    move-result v2

    monitor-exit v1

    return v2

    .line 827
    :cond_6
    new-instance v2, Ljava/lang/SecurityException;

    const-string v4, "Cannot delete rules not owned by your condition provider"

    invoke-direct {v2, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/notification/ZenModeHelper;
    .end local p1    # "user":Landroid/os/UserHandle;
    .end local p2    # "id":Ljava/lang/String;
    .end local p3    # "origin":I
    .end local p4    # "reason":Ljava/lang/String;
    .end local p5    # "callingUid":I
    throw v2

    .line 833
    .end local v0    # "config":Landroid/service/notification/ZenModeConfig;
    .end local v3    # "ruleToRemove":Landroid/service/notification/ZenModeConfig$ZenRule;
    .end local v5    # "newConfig":Landroid/service/notification/ZenModeConfig;
    .restart local p0    # "this":Lcom/android/server/notification/ZenModeHelper;
    .restart local p1    # "user":Landroid/os/UserHandle;
    .restart local p2    # "id":Ljava/lang/String;
    .restart local p3    # "origin":I
    .restart local p4    # "reason":Ljava/lang/String;
    .restart local p5    # "callingUid":I
    :goto_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method removeAutomaticZenRules(Landroid/os/UserHandle;Ljava/lang/String;ILjava/lang/String;I)Z
    .locals 10
    .param p1, "user"    # Landroid/os/UserHandle;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "origin"    # I
    .param p4, "reason"    # Ljava/lang/String;
    .param p5, "callingUid"    # I

    .line 838
    const-string/jumbo v0, "removeAutomaticZenRules"

    invoke-static {v0, p3}, Lcom/android/server/notification/ZenModeHelper;->checkManageRuleOrigin(Ljava/lang/String;I)V

    .line 840
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mConfigLock:Ljava/lang/Object;

    monitor-enter v1

    .line 841
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/notification/ZenModeHelper;->getConfigLocked(Landroid/os/UserHandle;)Landroid/service/notification/ZenModeConfig;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 842
    .local v0, "config":Landroid/service/notification/ZenModeConfig;
    if-nez v0, :cond_0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v1, 0x0

    return v1

    .line 863
    .end local v0    # "config":Landroid/service/notification/ZenModeConfig;
    :catchall_0
    move-exception v0

    move v5, p3

    move-object v6, p4

    move v9, p5

    goto/16 :goto_2

    .line 843
    .restart local v0    # "config":Landroid/service/notification/ZenModeConfig;
    :cond_0
    :try_start_2
    invoke-virtual {v0}, Landroid/service/notification/ZenModeConfig;->copy()Landroid/service/notification/ZenModeConfig;

    move-result-object v2

    move-object v4, v2

    .line 844
    .local v4, "newConfig":Landroid/service/notification/ZenModeConfig;
    iget-object v2, v4, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_2

    .line 845
    :try_start_3
    iget-object v3, v4, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    iget-object v5, v4, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v5, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 846
    .local v3, "rule":Landroid/service/notification/ZenModeConfig$ZenRule;
    invoke-virtual {v3}, Landroid/service/notification/ZenModeConfig$ZenRule;->getPkg()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 847
    invoke-virtual {p0, v3, p5}, Lcom/android/server/notification/ZenModeHelper;->canManageAutomaticZenRule(Landroid/service/notification/ZenModeConfig$ZenRule;I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 848
    iget-object v5, v4, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v5, v2}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 849
    invoke-direct {p0, v4, v3, p3}, Lcom/android/server/notification/ZenModeHelper;->maybePreserveRemovedRule(Landroid/service/notification/ZenModeConfig;Landroid/service/notification/ZenModeConfig$ZenRule;I)V

    .line 844
    .end local v3    # "rule":Landroid/service/notification/ZenModeConfig$ZenRule;
    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_2
    nop

    .line 854
    .end local v2    # "i":I
    const/4 v2, 0x5

    if-ne p3, v2, :cond_4

    .line 855
    iget-object v2, v4, Landroid/service/notification/ZenModeConfig;->deletedRules:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .restart local v2    # "i":I
    :goto_1
    if-ltz v2, :cond_4

    .line 856
    iget-object v3, v4, Landroid/service/notification/ZenModeConfig;->deletedRules:Landroid/util/ArrayMap;

    iget-object v5, v4, Landroid/service/notification/ZenModeConfig;->deletedRules:Landroid/util/ArrayMap;

    invoke-virtual {v5, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 857
    .restart local v3    # "rule":Landroid/service/notification/ZenModeConfig$ZenRule;
    invoke-virtual {v3}, Landroid/service/notification/ZenModeConfig$ZenRule;->getPkg()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 858
    iget-object v5, v4, Landroid/service/notification/ZenModeConfig;->deletedRules:Landroid/util/ArrayMap;

    invoke-virtual {v5, v2}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 855
    .end local v3    # "rule":Landroid/service/notification/ZenModeConfig$ZenRule;
    :cond_3
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 862
    .end local v2    # "i":I
    :cond_4
    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v3, p0

    move v5, p3

    move-object v6, p4

    move v9, p5

    .end local p3    # "origin":I
    .end local p4    # "reason":Ljava/lang/String;
    .end local p5    # "callingUid":I
    .local v5, "origin":I
    .local v6, "reason":Ljava/lang/String;
    .local v9, "callingUid":I
    :try_start_4
    invoke-direct/range {v3 .. v9}, Lcom/android/server/notification/ZenModeHelper;->setConfigLocked(Landroid/service/notification/ZenModeConfig;ILjava/lang/String;Landroid/content/ComponentName;ZI)Z

    move-result p3

    monitor-exit v1

    return p3

    .line 863
    .end local v0    # "config":Landroid/service/notification/ZenModeConfig;
    .end local v4    # "newConfig":Landroid/service/notification/ZenModeConfig;
    :catchall_1
    move-exception v0

    goto :goto_2

    .end local v5    # "origin":I
    .end local v6    # "reason":Ljava/lang/String;
    .end local v9    # "callingUid":I
    .restart local p3    # "origin":I
    .restart local p4    # "reason":Ljava/lang/String;
    .restart local p5    # "callingUid":I
    :catchall_2
    move-exception v0

    move v5, p3

    move-object v6, p4

    move v9, p5

    .end local p3    # "origin":I
    .end local p4    # "reason":Ljava/lang/String;
    .end local p5    # "callingUid":I
    .restart local v5    # "origin":I
    .restart local v6    # "reason":Ljava/lang/String;
    .restart local v9    # "callingUid":I
    :goto_2
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0
.end method

.method public removeCallback(Lcom/android/server/notification/ZenModeHelper$Callback;)V
    .locals 1
    .param p1, "callback"    # Lcom/android/server/notification/ZenModeHelper$Callback;

    .line 288
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 289
    return-void
.end method

.method scheduleActivationBroadcast(Ljava/lang/String;ILjava/lang/String;Z)V
    .locals 3
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "ruleId"    # Ljava/lang/String;
    .param p4, "activated"    # Z

    .line 1585
    nop

    .line 1586
    invoke-static {p2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v0

    .line 1585
    const-wide/32 v1, 0x1265fc51

    invoke-static {v1, v2, p1, v0}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JLjava/lang/String;Landroid/os/UserHandle;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1587
    if-eqz p4, :cond_0

    .line 1588
    const/4 v0, 0x4

    goto :goto_0

    .line 1589
    :cond_0
    const/4 v0, 0x5

    .line 1587
    :goto_0
    invoke-direct {p0, p2, p1, p3, v0}, Lcom/android/server/notification/ZenModeHelper;->dispatchOnAutomaticRuleStatusChanged(ILjava/lang/String;Ljava/lang/String;I)V

    goto :goto_1

    .line 1591
    :cond_1
    const/4 v0, -0x1

    invoke-direct {p0, p2, p1, p3, v0}, Lcom/android/server/notification/ZenModeHelper;->dispatchOnAutomaticRuleStatusChanged(ILjava/lang/String;Ljava/lang/String;I)V

    .line 1594
    :goto_1
    return-void
.end method

.method scheduleEnabledBroadcast(Ljava/lang/String;ILjava/lang/String;Z)V
    .locals 1
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "ruleId"    # Ljava/lang/String;
    .param p4, "enabled"    # Z

    .line 1598
    if-eqz p4, :cond_0

    .line 1599
    const/4 v0, 0x1

    goto :goto_0

    .line 1600
    :cond_0
    const/4 v0, 0x2

    .line 1598
    :goto_0
    invoke-direct {p0, p2, p1, p3, v0}, Lcom/android/server/notification/ZenModeHelper;->dispatchOnAutomaticRuleStatusChanged(ILjava/lang/String;Ljava/lang/String;I)V

    .line 1601
    return-void
.end method

.method setAutomaticZenRuleState(Landroid/os/UserHandle;Ljava/lang/String;Landroid/service/notification/Condition;II)V
    .locals 10
    .param p1, "user"    # Landroid/os/UserHandle;
    .param p2, "id"    # Ljava/lang/String;
    .param p3, "condition"    # Landroid/service/notification/Condition;
    .param p4, "origin"    # I
    .param p5, "callingUid"    # I

    .line 910
    const-string/jumbo v0, "setAutomaticZenRuleState(String id)"

    invoke-static {v0, p4}, Lcom/android/server/notification/ZenModeHelper;->checkSetRuleStateOrigin(Ljava/lang/String;I)V

    .line 912
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mConfigLock:Ljava/lang/Object;

    monitor-enter v1

    .line 913
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/notification/ZenModeHelper;->getConfigLocked(Landroid/os/UserHandle;)Landroid/service/notification/ZenModeConfig;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 914
    .local v0, "config":Landroid/service/notification/ZenModeConfig;
    if-nez v0, :cond_0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    .line 922
    .end local v0    # "config":Landroid/service/notification/ZenModeConfig;
    :catchall_0
    move-exception v0

    move-object v6, p3

    move v7, p4

    move v9, p5

    goto :goto_1

    .line 916
    .restart local v0    # "config":Landroid/service/notification/ZenModeConfig;
    :cond_0
    :try_start_2
    invoke-virtual {v0}, Landroid/service/notification/ZenModeConfig;->copy()Landroid/service/notification/ZenModeConfig;

    move-result-object v2

    move-object v4, v2

    .line 917
    .local v4, "newConfig":Landroid/service/notification/ZenModeConfig;
    iget-object v2, v4, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v2, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 918
    .local v2, "rule":Landroid/service/notification/ZenModeConfig$ZenRule;
    if-eqz v2, :cond_1

    invoke-virtual {p0, v2, p5}, Lcom/android/server/notification/ZenModeHelper;->canManageAutomaticZenRule(Landroid/service/notification/ZenModeConfig$ZenRule;I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 919
    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setAzrState: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v2, Landroid/service/notification/ZenModeConfig$ZenRule;->id:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-object v3, p0

    move-object v6, p3

    move v7, p4

    move v9, p5

    .end local p3    # "condition":Landroid/service/notification/Condition;
    .end local p4    # "origin":I
    .end local p5    # "callingUid":I
    .local v6, "condition":Landroid/service/notification/Condition;
    .local v7, "origin":I
    .local v9, "callingUid":I
    :try_start_3
    invoke-direct/range {v3 .. v9}, Lcom/android/server/notification/ZenModeHelper;->setAutomaticZenRuleStateLocked(Landroid/service/notification/ZenModeConfig;Ljava/util/List;Landroid/service/notification/Condition;ILjava/lang/String;I)V

    goto :goto_0

    .line 922
    .end local v0    # "config":Landroid/service/notification/ZenModeConfig;
    .end local v2    # "rule":Landroid/service/notification/ZenModeConfig$ZenRule;
    .end local v4    # "newConfig":Landroid/service/notification/ZenModeConfig;
    :catchall_1
    move-exception v0

    goto :goto_1

    .end local v6    # "condition":Landroid/service/notification/Condition;
    .end local v7    # "origin":I
    .end local v9    # "callingUid":I
    .restart local p3    # "condition":Landroid/service/notification/Condition;
    .restart local p4    # "origin":I
    .restart local p5    # "callingUid":I
    :catchall_2
    move-exception v0

    move-object v6, p3

    move v7, p4

    move v9, p5

    .end local p3    # "condition":Landroid/service/notification/Condition;
    .end local p4    # "origin":I
    .end local p5    # "callingUid":I
    .restart local v6    # "condition":Landroid/service/notification/Condition;
    .restart local v7    # "origin":I
    .restart local v9    # "callingUid":I
    goto :goto_1

    .line 918
    .end local v6    # "condition":Landroid/service/notification/Condition;
    .end local v7    # "origin":I
    .end local v9    # "callingUid":I
    .restart local v0    # "config":Landroid/service/notification/ZenModeConfig;
    .restart local v2    # "rule":Landroid/service/notification/ZenModeConfig$ZenRule;
    .restart local v4    # "newConfig":Landroid/service/notification/ZenModeConfig;
    .restart local p3    # "condition":Landroid/service/notification/Condition;
    .restart local p4    # "origin":I
    .restart local p5    # "callingUid":I
    :cond_1
    move-object v6, p3

    move v7, p4

    move v9, p5

    .line 922
    .end local v0    # "config":Landroid/service/notification/ZenModeConfig;
    .end local v2    # "rule":Landroid/service/notification/ZenModeConfig$ZenRule;
    .end local p3    # "condition":Landroid/service/notification/Condition;
    .end local p4    # "origin":I
    .end local p5    # "callingUid":I
    .restart local v6    # "condition":Landroid/service/notification/Condition;
    .restart local v7    # "origin":I
    .restart local v9    # "callingUid":I
    :goto_0
    monitor-exit v1

    .line 923
    return-void

    .line 922
    .end local v4    # "newConfig":Landroid/service/notification/ZenModeConfig;
    :goto_1
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method setAutomaticZenRuleStateFromConditionProvider(Landroid/os/UserHandle;Landroid/net/Uri;Landroid/service/notification/Condition;II)V
    .locals 10
    .param p1, "user"    # Landroid/os/UserHandle;
    .param p2, "ruleConditionId"    # Landroid/net/Uri;
    .param p3, "condition"    # Landroid/service/notification/Condition;
    .param p4, "origin"    # I
    .param p5, "callingUid"    # I

    .line 927
    const-string/jumbo v0, "setAutomaticZenRuleStateFromConditionProvider"

    invoke-static {v0, p4}, Lcom/android/server/notification/ZenModeHelper;->checkSetRuleStateOrigin(Ljava/lang/String;I)V

    .line 929
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mConfigLock:Ljava/lang/Object;

    monitor-enter v1

    .line 930
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/notification/ZenModeHelper;->getConfigLocked(Landroid/os/UserHandle;)Landroid/service/notification/ZenModeConfig;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 931
    .local v0, "config":Landroid/service/notification/ZenModeConfig;
    if-nez v0, :cond_0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    .line 943
    .end local v0    # "config":Landroid/service/notification/ZenModeConfig;
    :catchall_0
    move-exception v0

    move-object v6, p3

    move v7, p4

    move v9, p5

    goto :goto_1

    .line 932
    .restart local v0    # "config":Landroid/service/notification/ZenModeConfig;
    :cond_0
    :try_start_2
    invoke-virtual {v0}, Landroid/service/notification/ZenModeConfig;->copy()Landroid/service/notification/ZenModeConfig;

    move-result-object v2

    move-object v4, v2

    .line 934
    .local v4, "newConfig":Landroid/service/notification/ZenModeConfig;
    invoke-static {v4, p2, p3}, Lcom/android/server/notification/ZenModeHelper;->findMatchingRules(Landroid/service/notification/ZenModeConfig;Landroid/net/Uri;Landroid/service/notification/Condition;)Ljava/util/List;

    move-result-object v5

    .line 935
    .local v5, "matchingRules":Ljava/util/List;, "Ljava/util/List<Landroid/service/notification/ZenModeConfig$ZenRule;>;"
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_2

    .line 936
    :try_start_3
    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/service/notification/ZenModeConfig$ZenRule;

    invoke-virtual {p0, v3, p5}, Lcom/android/server/notification/ZenModeHelper;->canManageAutomaticZenRule(Landroid/service/notification/ZenModeConfig$ZenRule;I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 937
    invoke-interface {v5, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 935
    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_2
    nop

    .line 941
    .end local v2    # "i":I
    :try_start_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setAzrStateFromCps: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-object v3, p0

    move-object v6, p3

    move v7, p4

    move v9, p5

    .end local p3    # "condition":Landroid/service/notification/Condition;
    .end local p4    # "origin":I
    .end local p5    # "callingUid":I
    .local v6, "condition":Landroid/service/notification/Condition;
    .local v7, "origin":I
    .local v9, "callingUid":I
    :try_start_5
    invoke-direct/range {v3 .. v9}, Lcom/android/server/notification/ZenModeHelper;->setAutomaticZenRuleStateLocked(Landroid/service/notification/ZenModeConfig;Ljava/util/List;Landroid/service/notification/Condition;ILjava/lang/String;I)V

    .line 943
    .end local v0    # "config":Landroid/service/notification/ZenModeConfig;
    .end local v5    # "matchingRules":Ljava/util/List;, "Ljava/util/List<Landroid/service/notification/ZenModeConfig$ZenRule;>;"
    monitor-exit v1

    .line 944
    return-void

    .line 943
    .end local v4    # "newConfig":Landroid/service/notification/ZenModeConfig;
    :catchall_1
    move-exception v0

    goto :goto_1

    .end local v6    # "condition":Landroid/service/notification/Condition;
    .end local v7    # "origin":I
    .end local v9    # "callingUid":I
    .restart local p3    # "condition":Landroid/service/notification/Condition;
    .restart local p4    # "origin":I
    .restart local p5    # "callingUid":I
    :catchall_2
    move-exception v0

    move-object v6, p3

    move v7, p4

    move v9, p5

    .end local p3    # "condition":Landroid/service/notification/Condition;
    .end local p4    # "origin":I
    .end local p5    # "callingUid":I
    .restart local v6    # "condition":Landroid/service/notification/Condition;
    .restart local v7    # "origin":I
    .restart local v9    # "callingUid":I
    :goto_1
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v0
.end method

.method setConfig(Landroid/service/notification/ZenModeConfig;Landroid/content/ComponentName;ILjava/lang/String;I)V
    .locals 2
    .param p1, "config"    # Landroid/service/notification/ZenModeConfig;
    .param p2, "triggeringComponent"    # Landroid/content/ComponentName;
    .param p3, "origin"    # I
    .param p4, "reason"    # Ljava/lang/String;
    .param p5, "callingUid"    # I

    .line 2049
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mConfigLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2050
    :try_start_0
    invoke-direct/range {p0 .. p5}, Lcom/android/server/notification/ZenModeHelper;->setConfigLocked(Landroid/service/notification/ZenModeConfig;Landroid/content/ComponentName;ILjava/lang/String;I)Z

    .line 2051
    monitor-exit v1

    .line 2052
    return-void

    .line 2051
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method setDeviceEffectsApplier(Landroid/service/notification/DeviceEffectsApplier;)V
    .locals 3
    .param p1, "deviceEffectsApplier"    # Landroid/service/notification/DeviceEffectsApplier;

    .line 335
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mConfigLock:Ljava/lang/Object;

    monitor-enter v0

    .line 336
    :try_start_0
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mDeviceEffectsApplier:Landroid/service/notification/DeviceEffectsApplier;

    if-nez v1, :cond_0

    .line 339
    iput-object p1, p0, Lcom/android/server/notification/ZenModeHelper;->mDeviceEffectsApplier:Landroid/service/notification/DeviceEffectsApplier;

    .line 340
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 341
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/notification/ZenModeHelper;->applyConsolidatedDeviceEffects(I)V

    .line 342
    return-void

    .line 340
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 337
    :cond_0
    :try_start_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Already set up a DeviceEffectsApplier!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/notification/ZenModeHelper;
    .end local p1    # "deviceEffectsApplier":Landroid/service/notification/DeviceEffectsApplier;
    throw v1

    .line 340
    .restart local p0    # "this":Lcom/android/server/notification/ZenModeHelper;
    .restart local p1    # "deviceEffectsApplier":Landroid/service/notification/DeviceEffectsApplier;
    :goto_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method setManualZenMode(Landroid/os/UserHandle;ILandroid/net/Uri;ILjava/lang/String;Ljava/lang/String;I)V
    .locals 9
    .param p1, "user"    # Landroid/os/UserHandle;
    .param p2, "zenMode"    # I
    .param p3, "conditionId"    # Landroid/net/Uri;
    .param p4, "origin"    # I
    .param p5, "reason"    # Ljava/lang/String;
    .param p6, "caller"    # Ljava/lang/String;
    .param p7, "callingUid"    # I

    .line 1605
    const/4 v7, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    move/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/android/server/notification/ZenModeHelper;->setManualZenMode(Landroid/os/UserHandle;ILandroid/net/Uri;ILjava/lang/String;Ljava/lang/String;ZI)V

    .line 1607
    return-void
.end method

.method public setManualZenRuleDeviceEffects(Landroid/os/UserHandle;Landroid/service/notification/ZenDeviceEffects;ILjava/lang/String;I)V
    .locals 10
    .param p1, "user"    # Landroid/os/UserHandle;
    .param p2, "deviceEffects"    # Landroid/service/notification/ZenDeviceEffects;
    .param p3, "origin"    # I
    .param p4, "reason"    # Ljava/lang/String;
    .param p5, "callingUid"    # I

    .line 1664
    nop

    .line 1668
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mConfigLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1669
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/notification/ZenModeHelper;->getConfigLocked(Landroid/os/UserHandle;)Landroid/service/notification/ZenModeConfig;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 1670
    .local v0, "config":Landroid/service/notification/ZenModeConfig;
    if-nez v0, :cond_0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    .line 1680
    .end local v0    # "config":Landroid/service/notification/ZenModeConfig;
    :catchall_0
    move-exception v0

    move v5, p3

    move-object v6, p4

    move v9, p5

    goto :goto_0

    .line 1672
    .restart local v0    # "config":Landroid/service/notification/ZenModeConfig;
    :cond_0
    :try_start_2
    sget-boolean v2, Lcom/android/server/notification/ZenModeHelper;->DEBUG:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eqz v2, :cond_1

    :try_start_3
    const-string v2, "ZenModeHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateManualRule "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " reason="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " callingUid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1675
    :cond_1
    :try_start_4
    invoke-virtual {v0}, Landroid/service/notification/ZenModeConfig;->copy()Landroid/service/notification/ZenModeConfig;

    move-result-object v2

    move-object v4, v2

    .line 1677
    .local v4, "newConfig":Landroid/service/notification/ZenModeConfig;
    iget-object v2, v4, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    const-string v3, "android"

    iput-object v3, v2, Landroid/service/notification/ZenModeConfig$ZenRule;->pkg:Ljava/lang/String;

    .line 1678
    iget-object v2, v4, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    iput-object p2, v2, Landroid/service/notification/ZenModeConfig$ZenRule;->zenDeviceEffects:Landroid/service/notification/ZenDeviceEffects;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 1679
    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v3, p0

    move v5, p3

    move-object v6, p4

    move v9, p5

    .end local p3    # "origin":I
    .end local p4    # "reason":Ljava/lang/String;
    .end local p5    # "callingUid":I
    .local v5, "origin":I
    .local v6, "reason":Ljava/lang/String;
    .local v9, "callingUid":I
    :try_start_5
    invoke-direct/range {v3 .. v9}, Lcom/android/server/notification/ZenModeHelper;->setConfigLocked(Landroid/service/notification/ZenModeConfig;ILjava/lang/String;Landroid/content/ComponentName;ZI)Z

    .line 1680
    nop

    .end local v0    # "config":Landroid/service/notification/ZenModeConfig;
    monitor-exit v1

    .line 1681
    return-void

    .line 1680
    .end local v4    # "newConfig":Landroid/service/notification/ZenModeConfig;
    :catchall_1
    move-exception v0

    goto :goto_0

    .end local v5    # "origin":I
    .end local v6    # "reason":Ljava/lang/String;
    .end local v9    # "callingUid":I
    .restart local p3    # "origin":I
    .restart local p4    # "reason":Ljava/lang/String;
    .restart local p5    # "callingUid":I
    :catchall_2
    move-exception v0

    move v5, p3

    move-object v6, p4

    move v9, p5

    .end local p3    # "origin":I
    .end local p4    # "reason":Ljava/lang/String;
    .end local p5    # "callingUid":I
    .restart local v5    # "origin":I
    .restart local v6    # "reason":Ljava/lang/String;
    .restart local v9    # "callingUid":I
    :goto_0
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v0
.end method

.method public setNotificationPolicy(Landroid/os/UserHandle;Landroid/app/NotificationManager$Policy;II)V
    .locals 9
    .param p1, "user"    # Landroid/os/UserHandle;
    .param p2, "policy"    # Landroid/app/NotificationManager$Policy;
    .param p3, "origin"    # I
    .param p4, "callingUid"    # I

    .line 1886
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mConfigLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1887
    if-nez p2, :cond_0

    :try_start_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    .line 1915
    :catchall_0
    move-exception v0

    move v6, p3

    move v8, p4

    goto :goto_0

    .line 1888
    :cond_0
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/server/notification/ZenModeHelper;->getConfigLocked(Landroid/os/UserHandle;)Landroid/service/notification/ZenModeConfig;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 1889
    .local v0, "config":Landroid/service/notification/ZenModeConfig;
    if-nez v0, :cond_1

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    .line 1891
    :cond_1
    :try_start_3
    invoke-virtual {v0}, Landroid/service/notification/ZenModeConfig;->copy()Landroid/service/notification/ZenModeConfig;

    move-result-object v2

    move-object v4, v2

    .line 1892
    .local v4, "newConfig":Landroid/service/notification/ZenModeConfig;
    nop

    .line 1912
    invoke-virtual {v4, p2}, Landroid/service/notification/ZenModeConfig;->applyNotificationPolicy(Landroid/app/NotificationManager$Policy;)V

    .line 1914
    const-string/jumbo v7, "setNotificationPolicy"
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    const/4 v5, 0x0

    move-object v3, p0

    move v6, p3

    move v8, p4

    .end local p3    # "origin":I
    .end local p4    # "callingUid":I
    .local v6, "origin":I
    .local v8, "callingUid":I
    :try_start_4
    invoke-direct/range {v3 .. v8}, Lcom/android/server/notification/ZenModeHelper;->setConfigLocked(Landroid/service/notification/ZenModeConfig;Landroid/content/ComponentName;ILjava/lang/String;I)Z

    .line 1915
    nop

    .end local v0    # "config":Landroid/service/notification/ZenModeConfig;
    .end local v4    # "newConfig":Landroid/service/notification/ZenModeConfig;
    monitor-exit v1

    .line 1916
    return-void

    .line 1915
    :catchall_1
    move-exception v0

    goto :goto_0

    .end local v6    # "origin":I
    .end local v8    # "callingUid":I
    .restart local p3    # "origin":I
    .restart local p4    # "callingUid":I
    :catchall_2
    move-exception v0

    move v6, p3

    move v8, p4

    .end local p3    # "origin":I
    .end local p4    # "callingUid":I
    .restart local v6    # "origin":I
    .restart local v8    # "callingUid":I
    :goto_0
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0
.end method

.method setPriorityOnlyDndExemptPackages([Ljava/lang/String;)V
    .locals 0
    .param p1, "packages"    # [Ljava/lang/String;

    .line 357
    iput-object p1, p0, Lcom/android/server/notification/ZenModeHelper;->mPriorityOnlyDndExemptPackages:[Ljava/lang/String;

    .line 358
    return-void
.end method

.method public setSuppressedEffects(J)V
    .locals 2
    .param p1, "suppressedEffects"    # J

    .line 387
    iget-wide v0, p0, Lcom/android/server/notification/ZenModeHelper;->mSuppressedEffects:J

    cmp-long v0, v0, p1

    if-nez v0, :cond_0

    return-void

    .line 388
    :cond_0
    iput-wide p1, p0, Lcom/android/server/notification/ZenModeHelper;->mSuppressedEffects:J

    .line 389
    invoke-virtual {p0}, Lcom/android/server/notification/ZenModeHelper;->applyRestrictions()V

    .line 390
    return-void
.end method

.method protected setZenModeSetting(I)V
    .locals 3
    .param p1, "zen"    # I

    .line 2164
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "zen_mode"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2165
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const-string/jumbo v1, "updated setting"

    invoke-static {v0, v1}, Lcom/android/server/notification/ZenLog;->traceSetZenMode(ILjava/lang/String;)V

    .line 2167
    return-void
.end method

.method public shouldIntercept(Lcom/android/server/notification/NotificationRecord;)Z
    .locals 4
    .param p1, "record"    # Lcom/android/server/notification/NotificationRecord;

    .line 278
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mConfigLock:Ljava/lang/Object;

    monitor-enter v0

    .line 279
    :try_start_0
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mFiltering:Lcom/android/server/notification/ZenModeFiltering;

    iget v2, p0, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    iget-object v3, p0, Lcom/android/server/notification/ZenModeHelper;->mConsolidatedPolicy:Landroid/app/NotificationManager$Policy;

    invoke-virtual {v1, v2, v3, p1}, Lcom/android/server/notification/ZenModeFiltering;->shouldIntercept(ILandroid/app/NotificationManager$Policy;Lcom/android/server/notification/NotificationRecord;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 280
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 252
    const-string v0, "ZenModeHelper"

    return-object v0
.end method

.method public updateAutomaticZenRule(Landroid/os/UserHandle;Ljava/lang/String;Landroid/app/AutomaticZenRule;ILjava/lang/String;I)Z
    .locals 16
    .param p1, "user"    # Landroid/os/UserHandle;
    .param p2, "ruleId"    # Ljava/lang/String;
    .param p3, "automaticZenRule"    # Landroid/app/AutomaticZenRule;
    .param p4, "origin"    # I
    .param p5, "reason"    # Ljava/lang/String;
    .param p6, "callingUid"    # I

    .line 552
    move-object/from16 v1, p0

    move-object/from16 v8, p2

    move-object/from16 v3, p3

    const-string/jumbo v0, "updateAutomaticZenRule"

    move/from16 v6, p4

    invoke-static {v0, v6}, Lcom/android/server/notification/ZenModeHelper;->checkManageRuleOrigin(Ljava/lang/String;I)V

    .line 553
    if-eqz v8, :cond_4

    .line 556
    iget-object v9, v1, Lcom/android/server/notification/ZenModeHelper;->mConfigLock:Ljava/lang/Object;

    monitor-enter v9

    .line 557
    :try_start_0
    invoke-direct/range {p0 .. p1}, Lcom/android/server/notification/ZenModeHelper;->getConfigLocked(Landroid/os/UserHandle;)Landroid/service/notification/ZenModeConfig;

    move-result-object v0

    .line 558
    .local v0, "config":Landroid/service/notification/ZenModeConfig;
    if-nez v0, :cond_0

    monitor-exit v9

    const/4 v2, 0x0

    return v2

    .line 584
    .end local v0    # "config":Landroid/service/notification/ZenModeConfig;
    :catchall_0
    move-exception v0

    :goto_0
    move-object v13, v3

    goto/16 :goto_2

    .line 559
    .restart local v0    # "config":Landroid/service/notification/ZenModeConfig;
    :cond_0
    sget-boolean v2, Lcom/android/server/notification/ZenModeHelper;->DEBUG:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_1

    .line 560
    :try_start_1
    const-string v2, "ZenModeHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateAutomaticZenRule zenRule="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " reason="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object/from16 v10, p5

    :try_start_2
    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 584
    .end local v0    # "config":Landroid/service/notification/ZenModeConfig;
    :catchall_1
    move-exception v0

    move-object/from16 v10, p5

    goto :goto_0

    .line 559
    .restart local v0    # "config":Landroid/service/notification/ZenModeConfig;
    :cond_1
    move-object/from16 v10, p5

    .line 563
    :goto_1
    iget-object v2, v0, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v2, v8}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/service/notification/ZenModeConfig$ZenRule;

    move-object v11, v2

    .line 564
    .local v11, "oldRule":Landroid/service/notification/ZenModeConfig$ZenRule;
    if-eqz v11, :cond_3

    move/from16 v12, p6

    invoke-virtual {v1, v11, v12}, Lcom/android/server/notification/ZenModeHelper;->canManageAutomaticZenRule(Landroid/service/notification/ZenModeConfig$ZenRule;I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 568
    invoke-virtual {v0}, Landroid/service/notification/ZenModeConfig;->copy()Landroid/service/notification/ZenModeConfig;

    move-result-object v2

    .line 569
    .local v2, "newConfig":Landroid/service/notification/ZenModeConfig;
    iget-object v4, v2, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v4, v8}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Landroid/service/notification/ZenModeConfig$ZenRule;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 571
    .local v5, "newRule":Landroid/service/notification/ZenModeConfig$ZenRule;
    move-object v4, v2

    .end local v2    # "newConfig":Landroid/service/notification/ZenModeConfig;
    .local v4, "newConfig":Landroid/service/notification/ZenModeConfig;
    iget-object v2, v5, Landroid/service/notification/ZenModeConfig$ZenRule;->pkg:Ljava/lang/String;

    const/4 v7, 0x0

    invoke-direct/range {v1 .. v7}, Lcom/android/server/notification/ZenModeHelper;->populateZenRule(Ljava/lang/String;Landroid/app/AutomaticZenRule;Landroid/service/notification/ZenModeConfig;Landroid/service/notification/ZenModeConfig$ZenRule;IZ)Z

    move-result v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v13, v3

    move-object v14, v5

    .end local v5    # "newRule":Landroid/service/notification/ZenModeConfig$ZenRule;
    .local v14, "newRule":Landroid/service/notification/ZenModeConfig$ZenRule;
    move v15, v2

    .line 573
    .local v15, "updated":Z
    if-nez v15, :cond_2

    .line 576
    :try_start_3
    monitor-exit v9

    const/4 v1, 0x1

    return v1

    .line 584
    .end local v0    # "config":Landroid/service/notification/ZenModeConfig;
    .end local v4    # "newConfig":Landroid/service/notification/ZenModeConfig;
    .end local v11    # "oldRule":Landroid/service/notification/ZenModeConfig$ZenRule;
    .end local v14    # "newRule":Landroid/service/notification/ZenModeConfig$ZenRule;
    .end local v15    # "updated":Z
    :catchall_2
    move-exception v0

    goto :goto_2

    .line 579
    .restart local v0    # "config":Landroid/service/notification/ZenModeConfig;
    .restart local v4    # "newConfig":Landroid/service/notification/ZenModeConfig;
    .restart local v11    # "oldRule":Landroid/service/notification/ZenModeConfig$ZenRule;
    .restart local v14    # "newRule":Landroid/service/notification/ZenModeConfig$ZenRule;
    .restart local v15    # "updated":Z
    :cond_2
    nop

    .line 580
    invoke-static {v4, v11, v13}, Lcom/android/server/notification/ZenModeHelper;->maybeReplaceDefaultRule(Landroid/service/notification/ZenModeConfig;Landroid/service/notification/ZenModeConfig$ZenRule;Landroid/app/AutomaticZenRule;)V

    .line 582
    iget-object v5, v14, Landroid/service/notification/ZenModeConfig$ZenRule;->component:Landroid/content/ComponentName;

    const/4 v6, 0x1

    move-object/from16 v1, p0

    move/from16 v3, p4

    move-object v2, v4

    move-object v4, v10

    move v7, v12

    .end local v4    # "newConfig":Landroid/service/notification/ZenModeConfig;
    .restart local v2    # "newConfig":Landroid/service/notification/ZenModeConfig;
    invoke-direct/range {v1 .. v7}, Lcom/android/server/notification/ZenModeHelper;->setConfigLocked(Landroid/service/notification/ZenModeConfig;ILjava/lang/String;Landroid/content/ComponentName;ZI)Z

    move-result v5

    move-object v4, v2

    .end local v2    # "newConfig":Landroid/service/notification/ZenModeConfig;
    .restart local v4    # "newConfig":Landroid/service/notification/ZenModeConfig;
    monitor-exit v9

    return v5

    .line 564
    .end local v4    # "newConfig":Landroid/service/notification/ZenModeConfig;
    .end local v14    # "newRule":Landroid/service/notification/ZenModeConfig$ZenRule;
    .end local v15    # "updated":Z
    :cond_3
    move-object v13, v3

    .line 565
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Cannot update rules not owned by your condition provider"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/notification/ZenModeHelper;
    .end local p1    # "user":Landroid/os/UserHandle;
    .end local p2    # "ruleId":Ljava/lang/String;
    .end local p3    # "automaticZenRule":Landroid/app/AutomaticZenRule;
    .end local p4    # "origin":I
    .end local p5    # "reason":Ljava/lang/String;
    .end local p6    # "callingUid":I
    throw v1

    .line 584
    .end local v0    # "config":Landroid/service/notification/ZenModeConfig;
    .end local v11    # "oldRule":Landroid/service/notification/ZenModeConfig$ZenRule;
    .restart local p0    # "this":Lcom/android/server/notification/ZenModeHelper;
    .restart local p1    # "user":Landroid/os/UserHandle;
    .restart local p2    # "ruleId":Ljava/lang/String;
    .restart local p3    # "automaticZenRule":Landroid/app/AutomaticZenRule;
    .restart local p4    # "origin":I
    .restart local p5    # "reason":Ljava/lang/String;
    .restart local p6    # "callingUid":I
    :goto_2
    monitor-exit v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v0

    .line 554
    :cond_4
    move-object v13, v3

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "ruleId cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected updateHasPriorityChannels(Landroid/os/UserHandle;Z)V
    .locals 9
    .param p1, "user"    # Landroid/os/UserHandle;
    .param p2, "hasPriorityChannels"    # Z

    .line 1561
    nop

    .line 1564
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mConfigLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1565
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/notification/ZenModeHelper;->getConfigLocked(Landroid/os/UserHandle;)Landroid/service/notification/ZenModeConfig;

    move-result-object v0

    .line 1566
    .local v0, "config":Landroid/service/notification/ZenModeConfig;
    if-nez v0, :cond_0

    monitor-exit v1

    return-void

    .line 1579
    .end local v0    # "config":Landroid/service/notification/ZenModeConfig;
    :catchall_0
    move-exception v0

    goto :goto_0

    .line 1569
    .restart local v0    # "config":Landroid/service/notification/ZenModeConfig;
    :cond_0
    iget-boolean v2, v0, Landroid/service/notification/ZenModeConfig;->hasPriorityChannels:Z

    if-ne v2, p2, :cond_1

    .line 1570
    monitor-exit v1

    return-void

    .line 1573
    :cond_1
    invoke-virtual {v0}, Landroid/service/notification/ZenModeConfig;->copy()Landroid/service/notification/ZenModeConfig;

    move-result-object v2

    move-object v4, v2

    .line 1574
    .local v4, "newConfig":Landroid/service/notification/ZenModeConfig;
    iput-boolean p2, v4, Landroid/service/notification/ZenModeConfig;->hasPriorityChannels:Z

    .line 1577
    const-string/jumbo v7, "updateHasPriorityChannels"

    const/16 v8, 0x3e8

    const/4 v5, 0x0

    const/4 v6, 0x5

    move-object v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/android/server/notification/ZenModeHelper;->setConfigLocked(Landroid/service/notification/ZenModeConfig;Landroid/content/ComponentName;ILjava/lang/String;I)Z

    .line 1579
    nop

    .end local v0    # "config":Landroid/service/notification/ZenModeConfig;
    .end local v4    # "newConfig":Landroid/service/notification/ZenModeConfig;
    monitor-exit v1

    .line 1580
    return-void

    .line 1579
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method updateZenRulesOnLocaleChange()V
    .locals 10

    .line 1098
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mDefaultConfig:Landroid/service/notification/ZenModeConfig;

    invoke-static {v0, v1}, Lcom/android/server/notification/ZenModeHelper;->updateRuleStringsForCurrentLocale(Landroid/content/Context;Landroid/service/notification/ZenModeConfig;)V

    .line 1099
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mConfigLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1100
    :try_start_0
    sget-object v0, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-direct {p0, v0}, Lcom/android/server/notification/ZenModeHelper;->getConfigLocked(Landroid/os/UserHandle;)Landroid/service/notification/ZenModeConfig;

    move-result-object v0

    .line 1101
    .local v0, "config":Landroid/service/notification/ZenModeConfig;
    if-nez v0, :cond_0

    .line 1102
    monitor-exit v1

    return-void

    .line 1135
    .end local v0    # "config":Landroid/service/notification/ZenModeConfig;
    :catchall_0
    move-exception v0

    goto/16 :goto_3

    .line 1105
    .restart local v0    # "config":Landroid/service/notification/ZenModeConfig;
    :cond_0
    invoke-virtual {v0}, Landroid/service/notification/ZenModeConfig;->copy()Landroid/service/notification/ZenModeConfig;

    move-result-object v2

    move-object v4, v2

    .line 1106
    .local v4, "newConfig":Landroid/service/notification/ZenModeConfig;
    const/4 v2, 0x0

    .line 1107
    .local v2, "updated":Z
    iget-object v3, p0, Lcom/android/server/notification/ZenModeHelper;->mDefaultConfig:Landroid/service/notification/ZenModeConfig;

    iget-object v3, v3, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 1108
    .local v5, "defaultRule":Landroid/service/notification/ZenModeConfig$ZenRule;
    iget-object v6, v4, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    iget-object v7, v5, Landroid/service/notification/ZenModeConfig$ZenRule;->id:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 1111
    .local v6, "currRule":Landroid/service/notification/ZenModeConfig$ZenRule;
    if-eqz v6, :cond_2

    iget v7, v6, Landroid/service/notification/ZenModeConfig$ZenRule;->userModifiedFields:I

    and-int/lit8 v7, v7, 0x1

    if-nez v7, :cond_2

    iget-object v7, v5, Landroid/service/notification/ZenModeConfig$ZenRule;->name:Ljava/lang/String;

    iget-object v8, v6, Landroid/service/notification/ZenModeConfig$ZenRule;->name:Ljava/lang/String;

    .line 1113
    invoke-virtual {v7, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 1114
    sget-boolean v7, Lcom/android/server/notification/ZenModeHelper;->DEBUG:Z

    if-eqz v7, :cond_1

    .line 1115
    const-string v7, "ZenModeHelper"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Locale change - updating default zen rule name from "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v6, Landroid/service/notification/ZenModeConfig$ZenRule;->name:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " to "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v5, Landroid/service/notification/ZenModeConfig$ZenRule;->name:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1118
    :cond_1
    iget-object v7, v5, Landroid/service/notification/ZenModeConfig$ZenRule;->name:Ljava/lang/String;

    iput-object v7, v6, Landroid/service/notification/ZenModeConfig$ZenRule;->name:Ljava/lang/String;

    .line 1119
    const/4 v2, 0x1

    .line 1121
    .end local v5    # "defaultRule":Landroid/service/notification/ZenModeConfig$ZenRule;
    .end local v6    # "currRule":Landroid/service/notification/ZenModeConfig$ZenRule;
    :cond_2
    goto :goto_0

    .line 1122
    :cond_3
    nop

    .line 1123
    iget-object v3, v4, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 1124
    .local v5, "rule":Landroid/service/notification/ZenModeConfig$ZenRule;
    invoke-static {v5}, Landroid/service/notification/SystemZenRules;->isSystemOwnedRule(Landroid/service/notification/ZenModeConfig$ZenRule;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1125
    iget-object v6, p0, Lcom/android/server/notification/ZenModeHelper;->mContext:Landroid/content/Context;

    invoke-static {v6, v5}, Landroid/service/notification/SystemZenRules;->updateTriggerDescription(Landroid/content/Context;Landroid/service/notification/ZenModeConfig$ZenRule;)Z

    move-result v6

    or-int/2addr v2, v6

    goto :goto_2

    .line 1126
    :cond_4
    iget-object v6, v5, Landroid/service/notification/ZenModeConfig$ZenRule;->id:Ljava/lang/String;

    invoke-static {v6}, Landroid/service/notification/ZenModeConfig;->isImplicitRuleId(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1127
    invoke-direct {p0, v5}, Lcom/android/server/notification/ZenModeHelper;->updateImplicitZenRuleNameAndDescription(Landroid/service/notification/ZenModeConfig$ZenRule;)V

    .line 1129
    .end local v5    # "rule":Landroid/service/notification/ZenModeConfig$ZenRule;
    :cond_5
    :goto_2
    goto :goto_1

    .line 1131
    :cond_6
    if-eqz v2, :cond_7

    .line 1132
    const-string/jumbo v7, "updateZenRulesOnLocaleChange"

    const/16 v8, 0x3e8

    const/4 v5, 0x0

    const/4 v6, 0x5

    move-object v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/android/server/notification/ZenModeHelper;->setConfigLocked(Landroid/service/notification/ZenModeConfig;Landroid/content/ComponentName;ILjava/lang/String;I)Z

    .line 1135
    .end local v0    # "config":Landroid/service/notification/ZenModeConfig;
    .end local v2    # "updated":Z
    .end local v4    # "newConfig":Landroid/service/notification/ZenModeConfig;
    :cond_7
    monitor-exit v1

    .line 1136
    return-void

    .line 1135
    :goto_3
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public writeXml(Lcom/android/modules/utils/TypedXmlSerializer;ZLjava/lang/Integer;ILandroid/app/backup/BackupRestoreEventLogger;)V
    .locals 8
    .param p1, "out"    # Lcom/android/modules/utils/TypedXmlSerializer;
    .param p2, "forBackup"    # Z
    .param p3, "version"    # Ljava/lang/Integer;
    .param p4, "userId"    # I
    .param p5, "logger"    # Landroid/app/backup/BackupRestoreEventLogger;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1830
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mConfigLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1831
    const/4 v1, 0x0

    .line 1832
    .local v1, "successfulWrites":I
    const/4 v2, 0x0

    .line 1833
    .local v2, "unsuccessfulWrites":I
    :try_start_0
    iget-object v3, p0, Lcom/android/server/notification/ZenModeHelper;->mConfigs:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    .line 1834
    .local v3, "n":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v3, :cond_1

    .line 1835
    if-eqz p2, :cond_0

    iget-object v5, p0, Lcom/android/server/notification/ZenModeHelper;->mConfigs:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq v5, p4, :cond_0

    .line 1836
    goto :goto_1

    .line 1853
    .end local v1    # "successfulWrites":I
    .end local v2    # "unsuccessfulWrites":I
    .end local v3    # "n":I
    .end local v4    # "i":I
    :catchall_0
    move-exception v1

    goto :goto_2

    .line 1839
    .restart local v1    # "successfulWrites":I
    .restart local v2    # "unsuccessfulWrites":I
    .restart local v3    # "n":I
    .restart local v4    # "i":I
    :cond_0
    :try_start_1
    iget-object v5, p0, Lcom/android/server/notification/ZenModeHelper;->mConfigs:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/service/notification/ZenModeConfig;

    invoke-virtual {v5, p1, p3, p2, p5}, Landroid/service/notification/ZenModeConfig;->writeXml(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/Integer;ZLandroid/app/backup/BackupRestoreEventLogger;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1840
    add-int/lit8 v1, v1, 0x1

    .line 1844
    goto :goto_1

    .line 1841
    :catch_0
    move-exception v5

    nop

    .line 1842
    .local v5, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v6, "ZenModeHelper"

    const-string v7, "failed to write config"

    invoke-static {v6, v7, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1843
    add-int/lit8 v2, v2, 0x1

    .line 1834
    .end local v5    # "e":Ljava/lang/Exception;
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    nop

    .line 1846
    .end local v4    # "i":I
    if-eqz p5, :cond_2

    .line 1847
    const-string/jumbo v4, "notifications:zen_config"

    invoke-virtual {p5, v4, v1}, Landroid/app/backup/BackupRestoreEventLogger;->logItemsBackedUp(Ljava/lang/String;I)V

    .line 1848
    if-lez v2, :cond_2

    .line 1849
    const-string/jumbo v4, "notifications:zen_config"

    const-string/jumbo v5, "notifications:invalid_xml_parsing"

    invoke-virtual {p5, v4, v2, v5}, Landroid/app/backup/BackupRestoreEventLogger;->logItemsBackupFailed(Ljava/lang/String;ILjava/lang/String;)V

    .line 1853
    .end local v1    # "successfulWrites":I
    .end local v2    # "unsuccessfulWrites":I
    .end local v3    # "n":I
    :cond_2
    monitor-exit v0

    .line 1854
    return-void

    .line 1853
    :goto_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method
