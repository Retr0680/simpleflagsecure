.class final Lcom/android/server/vibrator/VibrationSettings;
.super Ljava/lang/Object;
.source "VibrationSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/vibrator/VibrationSettings$SettingsContentObserver;,
        Lcom/android/server/vibrator/VibrationSettings$RingerModeBroadcastReceiver;,
        Lcom/android/server/vibrator/VibrationSettings$BatteryBroadcastReceiver;,
        Lcom/android/server/vibrator/VibrationSettings$VibrationUidObserver;,
        Lcom/android/server/vibrator/VibrationSettings$VibrationUserSwitchObserver;,
        Lcom/android/server/vibrator/VibrationSettings$VibrationLowPowerModeListener;,
        Lcom/android/server/vibrator/VibrationSettings$OnVibratorSettingsChanged;
    }
.end annotation


# static fields
.field private static final BACKGROUND_PROCESS_USAGE_ALLOWLIST:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final BATTERY_SAVER_USAGE_ALLOWLIST:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final NT_DURING_CALL_VIBRATE:Ljava/lang/String; = "nt_during_call_vibrates"

.field private static final POWER_MANAGER_SLEEP_REASON_ALLOWLIST:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final SYSTEM_VIBRATION_SCREEN_OFF_USAGE_ALLOWLIST:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "VibrationSettings"

.field private static final VIBRATE_ON_DISABLED_USAGE_ALLOWED:I = 0x42


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field final mBatteryBroadcastReceiver:Lcom/android/server/vibrator/VibrationSettings$BatteryBroadcastReceiver;

.field private mBatterySaverMode:Z

.field private mCanVibrateDuringCall:Z

.field private final mContext:Landroid/content/Context;

.field private mCurrentVibrationIntensities:Landroid/util/SparseIntArray;

.field private final mFallbackEffects:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/os/VibrationEffect;",
            ">;"
        }
    .end annotation
.end field

.field private final mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/vibrator/VibrationSettings$OnVibratorSettingsChanged;",
            ">;"
        }
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;

.field final mLowPowerModeListener:Lcom/android/server/vibrator/VibrationSettings$VibrationLowPowerModeListener;

.field private mNotificationVibrate:Z

.field private mOnWirelessCharger:Z

.field private mPowerManagerInternal:Landroid/os/PowerManagerInternal;

.field private mRingerMode:I

.field final mRingerModeBroadcastReceiver:Lcom/android/server/vibrator/VibrationSettings$RingerModeBroadcastReceiver;

.field final mSettingObserver:Lcom/android/server/vibrator/VibrationSettings$SettingsContentObserver;

.field private mSystemUiPackage:Ljava/lang/String;

.field final mUidObserver:Lcom/android/server/vibrator/VibrationSettings$VibrationUidObserver;

.field final mUserSwitchObserver:Lcom/android/server/vibrator/VibrationSettings$VibrationUserSwitchObserver;

.field private mVibrateInputDevices:Z

.field private mVibrateOn:Z

.field private mVibrateWhenRinging:Z

.field private final mVibrationConfig:Landroid/os/vibrator/VibrationConfig;

.field private mVirtualDeviceManagerInternal:Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;


# direct methods
.method static bridge synthetic -$$Nest$fgetmBatterySaverMode(Lcom/android/server/vibrator/VibrationSettings;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/server/vibrator/VibrationSettings;->mBatterySaverMode:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmLock(Lcom/android/server/vibrator/VibrationSettings;)Ljava/lang/Object;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/vibrator/VibrationSettings;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmBatterySaverMode(Lcom/android/server/vibrator/VibrationSettings;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/server/vibrator/VibrationSettings;->mBatterySaverMode:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$mnotifyListeners(Lcom/android/server/vibrator/VibrationSettings;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/vibrator/VibrationSettings;->notifyListeners()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateBatteryInfo(Lcom/android/server/vibrator/VibrationSettings;Landroid/content/Intent;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/vibrator/VibrationSettings;->updateBatteryInfo(Landroid/content/Intent;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateRingerMode(Lcom/android/server/vibrator/VibrationSettings;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/vibrator/VibrationSettings;->updateRingerMode()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateSettings(Lcom/android/server/vibrator/VibrationSettings;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/vibrator/VibrationSettings;->updateSettings(I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 9

    .line 97
    new-instance v0, Ljava/util/HashSet;

    .line 99
    const/16 v1, 0x21

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 100
    const/16 v1, 0x11

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 101
    const/16 v1, 0x31

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 102
    const/16 v1, 0x41

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 103
    const/16 v1, 0x32

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 104
    const/16 v1, 0x22

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    filled-new-array/range {v2 .. v7}, [Ljava/lang/Integer;

    move-result-object v1

    .line 98
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/android/server/vibrator/VibrationSettings;->BACKGROUND_PROCESS_USAGE_ALLOWLIST:Ljava/util/Set;

    .line 112
    new-instance v0, Ljava/util/HashSet;

    .line 116
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 118
    nop

    .line 119
    nop

    .line 120
    nop

    .line 121
    nop

    .line 122
    move-object v4, v7

    move-object v7, v6

    move-object v6, v4

    move-object v4, v3

    move-object v3, v2

    move-object v2, v1

    filled-new-array/range {v2 .. v7}, [Ljava/lang/Integer;

    move-result-object v1

    .line 113
    move-object v8, v7

    move-object v7, v6

    move-object v6, v8

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/android/server/vibrator/VibrationSettings;->BATTERY_SAVER_USAGE_ALLOWLIST:Ljava/util/Set;

    .line 140
    new-instance v0, Ljava/util/HashSet;

    .line 142
    const/16 v1, 0x12

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 143
    const/16 v2, 0x42

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 144
    nop

    .line 145
    filled-new-array {v1, v2, v7, v6}, [Ljava/lang/Integer;

    move-result-object v1

    .line 141
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/android/server/vibrator/VibrationSettings;->SYSTEM_VIBRATION_SCREEN_OFF_USAGE_ALLOWLIST:Ljava/util/Set;

    .line 155
    new-instance v0, Ljava/util/HashSet;

    .line 157
    const/16 v1, 0x9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 158
    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Integer;

    move-result-object v1

    .line 156
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/android/server/vibrator/VibrationSettings;->POWER_MANAGER_SLEEP_REASON_ALLOWLIST:Ljava/util/Set;

    .line 155
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 225
    new-instance v0, Landroid/os/vibrator/VibrationConfig;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/vibrator/VibrationConfig;-><init>(Landroid/content/res/Resources;)V

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/vibrator/VibrationSettings;-><init>(Landroid/content/Context;Landroid/os/Handler;Landroid/os/vibrator/VibrationConfig;)V

    .line 226
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/os/Handler;Landroid/os/vibrator/VibrationConfig;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "config"    # Landroid/os/vibrator/VibrationConfig;

    .line 229
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 166
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/vibrator/VibrationSettings;->mLock:Ljava/lang/Object;

    .line 181
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/vibrator/VibrationSettings;->mListeners:Ljava/util/List;

    .line 201
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/vibrator/VibrationSettings;->mCurrentVibrationIntensities:Landroid/util/SparseIntArray;

    .line 215
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/vibrator/VibrationSettings;->mCanVibrateDuringCall:Z

    .line 220
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/vibrator/VibrationSettings;->mVibrateWhenRinging:Z

    .line 221
    iput-boolean v1, p0, Lcom/android/server/vibrator/VibrationSettings;->mNotificationVibrate:Z

    .line 230
    iput-object p1, p0, Lcom/android/server/vibrator/VibrationSettings;->mContext:Landroid/content/Context;

    .line 231
    iput-object p3, p0, Lcom/android/server/vibrator/VibrationSettings;->mVibrationConfig:Landroid/os/vibrator/VibrationConfig;

    .line 232
    new-instance v2, Lcom/android/server/vibrator/VibrationSettings$SettingsContentObserver;

    invoke-direct {v2, p0, p2}, Lcom/android/server/vibrator/VibrationSettings$SettingsContentObserver;-><init>(Lcom/android/server/vibrator/VibrationSettings;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/android/server/vibrator/VibrationSettings;->mSettingObserver:Lcom/android/server/vibrator/VibrationSettings$SettingsContentObserver;

    .line 233
    new-instance v2, Lcom/android/server/vibrator/VibrationSettings$RingerModeBroadcastReceiver;

    invoke-direct {v2, p0}, Lcom/android/server/vibrator/VibrationSettings$RingerModeBroadcastReceiver;-><init>(Lcom/android/server/vibrator/VibrationSettings;)V

    iput-object v2, p0, Lcom/android/server/vibrator/VibrationSettings;->mRingerModeBroadcastReceiver:Lcom/android/server/vibrator/VibrationSettings$RingerModeBroadcastReceiver;

    .line 234
    new-instance v2, Lcom/android/server/vibrator/VibrationSettings$BatteryBroadcastReceiver;

    invoke-direct {v2, p0}, Lcom/android/server/vibrator/VibrationSettings$BatteryBroadcastReceiver;-><init>(Lcom/android/server/vibrator/VibrationSettings;)V

    iput-object v2, p0, Lcom/android/server/vibrator/VibrationSettings;->mBatteryBroadcastReceiver:Lcom/android/server/vibrator/VibrationSettings$BatteryBroadcastReceiver;

    .line 235
    new-instance v2, Lcom/android/server/vibrator/VibrationSettings$VibrationUidObserver;

    invoke-direct {v2, p0}, Lcom/android/server/vibrator/VibrationSettings$VibrationUidObserver;-><init>(Lcom/android/server/vibrator/VibrationSettings;)V

    iput-object v2, p0, Lcom/android/server/vibrator/VibrationSettings;->mUidObserver:Lcom/android/server/vibrator/VibrationSettings$VibrationUidObserver;

    .line 236
    new-instance v2, Lcom/android/server/vibrator/VibrationSettings$VibrationUserSwitchObserver;

    invoke-direct {v2, p0}, Lcom/android/server/vibrator/VibrationSettings$VibrationUserSwitchObserver;-><init>(Lcom/android/server/vibrator/VibrationSettings;)V

    iput-object v2, p0, Lcom/android/server/vibrator/VibrationSettings;->mUserSwitchObserver:Lcom/android/server/vibrator/VibrationSettings$VibrationUserSwitchObserver;

    .line 237
    new-instance v2, Lcom/android/server/vibrator/VibrationSettings$VibrationLowPowerModeListener;

    invoke-direct {v2, p0}, Lcom/android/server/vibrator/VibrationSettings$VibrationLowPowerModeListener;-><init>(Lcom/android/server/vibrator/VibrationSettings;)V

    iput-object v2, p0, Lcom/android/server/vibrator/VibrationSettings;->mLowPowerModeListener:Lcom/android/server/vibrator/VibrationSettings$VibrationLowPowerModeListener;

    .line 239
    const v2, 0x10700e6

    invoke-direct {p0, v2}, Lcom/android/server/vibrator/VibrationSettings;->createEffectFromResource(I)Landroid/os/VibrationEffect;

    move-result-object v2

    .line 241
    .local v2, "clickEffect":Landroid/os/VibrationEffect;
    const v3, 0x107006a

    invoke-direct {p0, v3}, Lcom/android/server/vibrator/VibrationSettings;->createEffectFromResource(I)Landroid/os/VibrationEffect;

    move-result-object v3

    .line 243
    .local v3, "doubleClickEffect":Landroid/os/VibrationEffect;
    const v4, 0x107008f

    invoke-direct {p0, v4}, Lcom/android/server/vibrator/VibrationSettings;->createEffectFromResource(I)Landroid/os/VibrationEffect;

    move-result-object v4

    .line 245
    .local v4, "heavyClickEffect":Landroid/os/VibrationEffect;
    const v5, 0x1070034

    invoke-direct {p0, v5}, Lcom/android/server/vibrator/VibrationSettings;->createEffectFromResource(I)Landroid/os/VibrationEffect;

    move-result-object v5

    .line 248
    .local v5, "tickEffect":Landroid/os/VibrationEffect;
    new-instance v6, Landroid/util/SparseArray;

    invoke-direct {v6}, Landroid/util/SparseArray;-><init>()V

    iput-object v6, p0, Lcom/android/server/vibrator/VibrationSettings;->mFallbackEffects:Landroid/util/SparseArray;

    .line 249
    iget-object v6, p0, Lcom/android/server/vibrator/VibrationSettings;->mFallbackEffects:Landroid/util/SparseArray;

    invoke-virtual {v6, v0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 250
    iget-object v6, p0, Lcom/android/server/vibrator/VibrationSettings;->mFallbackEffects:Landroid/util/SparseArray;

    invoke-virtual {v6, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 251
    iget-object v1, p0, Lcom/android/server/vibrator/VibrationSettings;->mFallbackEffects:Landroid/util/SparseArray;

    const/4 v6, 0x2

    invoke-virtual {v1, v6, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 252
    iget-object v1, p0, Lcom/android/server/vibrator/VibrationSettings;->mFallbackEffects:Landroid/util/SparseArray;

    const/4 v7, 0x5

    invoke-virtual {v1, v7, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 253
    iget-object v1, p0, Lcom/android/server/vibrator/VibrationSettings;->mFallbackEffects:Landroid/util/SparseArray;

    .line 254
    invoke-static {v6, v0}, Landroid/os/VibrationEffect;->get(IZ)Landroid/os/VibrationEffect;

    move-result-object v0

    .line 253
    const/16 v6, 0x15

    invoke-virtual {v1, v6, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 257
    invoke-virtual {p0}, Lcom/android/server/vibrator/VibrationSettings;->update()V

    .line 258
    return-void
.end method

.method private createEffectFromResource(I)Landroid/os/VibrationEffect;
    .locals 1
    .param p1, "resId"    # I

    .line 839
    iget-object v0, p0, Lcom/android/server/vibrator/VibrationSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/server/vibrator/VibrationSettings;->createEffectFromResource(Landroid/content/res/Resources;I)Landroid/os/VibrationEffect;

    move-result-object v0

    return-object v0
.end method

.method static createEffectFromResource(Landroid/content/res/Resources;I)Landroid/os/VibrationEffect;
    .locals 2
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "resId"    # I

    .line 855
    invoke-static {p0, p1}, Lcom/android/server/vibrator/VibrationSettings;->getLongIntArray(Landroid/content/res/Resources;I)[J

    move-result-object v0

    .line 856
    .local v0, "timings":[J
    invoke-static {v0}, Lcom/android/server/vibrator/VibrationSettings;->createEffectFromTimings([J)Landroid/os/VibrationEffect;

    move-result-object v1

    return-object v1
.end method

.method private static createEffectFromTimings([J)Landroid/os/VibrationEffect;
    .locals 3
    .param p0, "timings"    # [J

    .line 861
    if-eqz p0, :cond_0

    array-length v0, p0

    if-nez v0, :cond_1

    :cond_0
    goto :goto_0

    .line 863
    :cond_1
    array-length v0, p0

    const/4 v1, 0x1

    const/4 v2, -0x1

    if-ne v0, v1, :cond_2

    .line 864
    const/4 v0, 0x0

    aget-wide v0, p0, v0

    invoke-static {v0, v1, v2}, Landroid/os/VibrationEffect;->createOneShot(JI)Landroid/os/VibrationEffect;

    move-result-object v0

    return-object v0

    .line 866
    :cond_2
    invoke-static {p0, v2}, Landroid/os/VibrationEffect;->createWaveform([JI)Landroid/os/VibrationEffect;

    move-result-object v0

    return-object v0

    .line 862
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private static getLongIntArray(Landroid/content/res/Resources;I)[J
    .locals 5
    .param p0, "r"    # Landroid/content/res/Resources;
    .param p1, "resid"    # I

    .line 871
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    .line 872
    .local v0, "ar":[I
    if-nez v0, :cond_0

    .line 873
    const/4 v1, 0x0

    return-object v1

    .line 875
    :cond_0
    array-length v1, v0

    new-array v1, v1, [J

    .line 876
    .local v1, "out":[J
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_1

    .line 877
    aget v3, v0, v2

    int-to-long v3, v3

    aput-wide v3, v1, v2

    .line 876
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    nop

    .line 879
    .end local v2    # "i":I
    return-object v1
.end method

.method private static intensityToString(I)Ljava/lang/String;
    .locals 2
    .param p0, "intensity"    # I

    .line 782
    packed-switch p0, :pswitch_data_0

    .line 787
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UNKNOWN INTENSITY "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 786
    :pswitch_0
    const-string v0, "HIGH"

    goto :goto_0

    .line 785
    :pswitch_1
    const-string v0, "MEDIUM"

    goto :goto_0

    .line 784
    :pswitch_2
    const-string v0, "LOW"

    goto :goto_0

    .line 783
    :pswitch_3
    const-string v0, "OFF"

    .line 782
    :goto_0
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

.method private isAppRunningOnAnyVirtualDevice(I)Z
    .locals 2
    .param p1, "uid"    # I

    .line 884
    iget-object v0, p0, Lcom/android/server/vibrator/VibrationSettings;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 885
    :try_start_0
    iget-object v1, p0, Lcom/android/server/vibrator/VibrationSettings;->mVirtualDeviceManagerInternal:Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

    .line 886
    .local v1, "vdm":Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 887
    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;->isAppRunningOnAnyVirtualDevice(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 886
    .end local v1    # "vdm":Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private loadBooleanSetting(Ljava/lang/String;I)Z
    .locals 2
    .param p1, "settingKey"    # Ljava/lang/String;
    .param p2, "userHandle"    # I

    .line 823
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/android/server/vibrator/VibrationSettings;->loadSystemSetting(Ljava/lang/String;II)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private loadSystemSetting(Ljava/lang/String;II)I
    .locals 1
    .param p1, "settingName"    # Ljava/lang/String;
    .param p2, "defaultValue"    # I
    .param p3, "userHandle"    # I

    .line 827
    iget-object v0, p0, Lcom/android/server/vibrator/VibrationSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p1, p2, p3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    return v0
.end method

.method private notifyListeners()V
    .locals 3

    .line 773
    iget-object v0, p0, Lcom/android/server/vibrator/VibrationSettings;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 774
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/vibrator/VibrationSettings;->mListeners:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 775
    .local v1, "currentListeners":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/vibrator/VibrationSettings$OnVibratorSettingsChanged;>;"
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 776
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/vibrator/VibrationSettings$OnVibratorSettingsChanged;

    .line 777
    .local v2, "listener":Lcom/android/server/vibrator/VibrationSettings$OnVibratorSettingsChanged;
    invoke-interface {v2}, Lcom/android/server/vibrator/VibrationSettings$OnVibratorSettingsChanged;->onChange()V

    .line 778
    .end local v2    # "listener":Lcom/android/server/vibrator/VibrationSettings$OnVibratorSettingsChanged;
    goto :goto_0

    .line 779
    :cond_0
    return-void

    .line 775
    .end local v1    # "currentListeners":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/vibrator/VibrationSettings$OnVibratorSettingsChanged;>;"
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private registerSettingsObserver(Landroid/net/Uri;)V
    .locals 4
    .param p1, "settingUri"    # Landroid/net/Uri;

    .line 832
    iget-object v0, p0, Lcom/android/server/vibrator/VibrationSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/vibrator/VibrationSettings;->mSettingObserver:Lcom/android/server/vibrator/VibrationSettings$SettingsContentObserver;

    const/4 v2, -0x1

    const/4 v3, 0x1

    invoke-virtual {v0, p1, v3, v1, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 835
    return-void
.end method

.method private static ringerModeToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "ringerMode"    # I

    .line 792
    packed-switch p0, :pswitch_data_0

    .line 796
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 795
    :pswitch_0
    const-string v0, "normal"

    goto :goto_0

    .line 794
    :pswitch_1
    const-string v0, "vibrate"

    goto :goto_0

    .line 793
    :pswitch_2
    const-string v0, "silent"

    .line 792
    :goto_0
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private shouldVibrateForRingerModeLocked(I)Z
    .locals 2
    .param p1, "usageHint"    # I

    .line 556
    const/16 v0, 0x21

    const/4 v1, 0x1

    if-eq p1, v0, :cond_0

    const/16 v0, 0x31

    if-eq p1, v0, :cond_0

    .line 558
    return v1

    .line 560
    :cond_0
    iget v0, p0, Lcom/android/server/vibrator/VibrationSettings;->mRingerMode:I

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private shouldVibrateForUserSetting(Lcom/android/server/vibrator/VibrationSession$CallerInfo;)Z
    .locals 3
    .param p1, "callerInfo"    # Lcom/android/server/vibrator/VibrationSession$CallerInfo;

    .line 569
    iget-object v0, p1, Lcom/android/server/vibrator/VibrationSession$CallerInfo;->attrs:Landroid/os/VibrationAttributes;

    invoke-virtual {v0}, Landroid/os/VibrationAttributes;->getUsage()I

    move-result v0

    .line 570
    .local v0, "usage":I
    iget-boolean v1, p0, Lcom/android/server/vibrator/VibrationSettings;->mVibrateOn:Z

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const/16 v1, 0x42

    if-eq v1, v0, :cond_0

    .line 572
    return v2

    .line 576
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/server/vibrator/VibrationSettings;->getCurrentIntensity(I)I

    move-result v1

    if-eqz v1, :cond_1

    const/4 v2, 0x1

    :cond_1
    return v2
.end method

.method private toIntensity(II)I
    .locals 1
    .param p1, "value"    # I
    .param p2, "defaultValue"    # I

    .line 810
    if-ltz p1, :cond_0

    const/4 v0, 0x3

    if-le p1, v0, :cond_1

    :cond_0
    goto :goto_0

    .line 814
    :cond_1
    return p1

    .line 812
    :goto_0
    return p2
.end method

.method private toIntensity(ZI)I
    .locals 1
    .param p1, "enabled"    # Z
    .param p2, "defaultValue"    # I

    .line 819
    if-eqz p1, :cond_0

    move v0, p2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private toPositiveIntensity(II)I
    .locals 1
    .param p1, "value"    # I
    .param p2, "defaultValue"    # I

    .line 802
    if-nez p1, :cond_0

    .line 803
    return p2

    .line 805
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/vibrator/VibrationSettings;->toIntensity(II)I

    move-result v0

    return v0
.end method

.method private updateBatteryInfo(Landroid/content/Intent;)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .line 679
    const-string v0, "plugged"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 680
    .local v0, "pluggedInfo":I
    iget-object v2, p0, Lcom/android/server/vibrator/VibrationSettings;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 681
    const/4 v3, 0x4

    if-ne v0, v3, :cond_0

    const/4 v1, 0x1

    :cond_0
    :try_start_0
    iput-boolean v1, p0, Lcom/android/server/vibrator/VibrationSettings;->mOnWirelessCharger:Z

    .line 682
    monitor-exit v2

    .line 683
    return-void

    .line 682
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private updateRingerMode()V
    .locals 2

    .line 669
    iget-object v0, p0, Lcom/android/server/vibrator/VibrationSettings;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 670
    :try_start_0
    iget-object v1, p0, Lcom/android/server/vibrator/VibrationSettings;->mAudioManager:Landroid/media/AudioManager;

    if-nez v1, :cond_0

    .line 672
    monitor-exit v0

    return-void

    .line 675
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 674
    :cond_0
    iget-object v1, p0, Lcom/android/server/vibrator/VibrationSettings;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->getRingerModeInternal()I

    move-result v1

    iput v1, p0, Lcom/android/server/vibrator/VibrationSettings;->mRingerMode:I

    .line 675
    monitor-exit v0

    .line 676
    return-void

    .line 675
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private updateSettings(I)V
    .locals 20
    .param p1, "userHandle"    # I

    .line 587
    move-object/from16 v1, p0

    move/from16 v2, p1

    iget-object v3, v1, Lcom/android/server/vibrator/VibrationSettings;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 588
    :try_start_0
    const-string v0, "vibrate_input_devices"

    .line 589
    const/4 v4, 0x0

    invoke-direct {v1, v0, v4, v2}, Lcom/android/server/vibrator/VibrationSettings;->loadSystemSetting(Ljava/lang/String;II)I

    move-result v0

    const/4 v5, 0x1

    if-lez v0, :cond_0

    move v0, v5

    goto :goto_0

    :cond_0
    move v0, v4

    :goto_0
    iput-boolean v0, v1, Lcom/android/server/vibrator/VibrationSettings;->mVibrateInputDevices:Z

    .line 590
    const-string v0, "vibrate_on"

    invoke-direct {v1, v0, v5, v2}, Lcom/android/server/vibrator/VibrationSettings;->loadSystemSetting(Ljava/lang/String;II)I

    move-result v0

    if-lez v0, :cond_1

    move v0, v5

    goto :goto_1

    :cond_1
    move v0, v4

    :goto_1
    iput-boolean v0, v1, Lcom/android/server/vibrator/VibrationSettings;->mVibrateOn:Z

    .line 592
    const-string v0, "keyboard_vibration_enabled"

    invoke-direct {v1, v0, v5, v2}, Lcom/android/server/vibrator/VibrationSettings;->loadSystemSetting(Ljava/lang/String;II)I

    move-result v0

    if-lez v0, :cond_2

    move v0, v5

    goto :goto_2

    :cond_2
    move v0, v4

    .line 594
    .local v0, "isKeyboardVibrationOn":Z
    :goto_2
    nop

    .line 595
    const/16 v6, 0x52

    invoke-virtual {v1, v6}, Lcom/android/server/vibrator/VibrationSettings;->getDefaultIntensity(I)I

    move-result v7

    .line 594
    invoke-direct {v1, v0, v7}, Lcom/android/server/vibrator/VibrationSettings;->toIntensity(ZI)I

    move-result v7

    .line 596
    .local v7, "keyboardIntensity":I
    const-string v8, "alarm_vibration_intensity"

    .line 597
    const/4 v9, -0x1

    invoke-direct {v1, v8, v9, v2}, Lcom/android/server/vibrator/VibrationSettings;->loadSystemSetting(Ljava/lang/String;II)I

    move-result v8

    .line 598
    const/16 v10, 0x11

    invoke-virtual {v1, v10}, Lcom/android/server/vibrator/VibrationSettings;->getDefaultIntensity(I)I

    move-result v11

    .line 596
    invoke-direct {v1, v8, v11}, Lcom/android/server/vibrator/VibrationSettings;->toIntensity(II)I

    move-result v8

    .line 599
    .local v8, "alarmIntensity":I
    const/16 v11, 0x12

    invoke-virtual {v1, v11}, Lcom/android/server/vibrator/VibrationSettings;->getDefaultIntensity(I)I

    move-result v12

    .line 600
    .local v12, "defaultHapticFeedbackIntensity":I
    const-string v13, "haptic_feedback_intensity"

    .line 601
    invoke-direct {v1, v13, v9, v2}, Lcom/android/server/vibrator/VibrationSettings;->loadSystemSetting(Ljava/lang/String;II)I

    move-result v13

    .line 600
    invoke-direct {v1, v13, v12}, Lcom/android/server/vibrator/VibrationSettings;->toIntensity(II)I

    move-result v13

    .line 603
    .local v13, "hapticFeedbackIntensity":I
    invoke-direct {v1, v13, v12}, Lcom/android/server/vibrator/VibrationSettings;->toPositiveIntensity(II)I

    move-result v14

    .line 605
    .local v14, "positiveHapticFeedbackIntensity":I
    const-string v15, "hardware_haptic_feedback_intensity"

    .line 606
    invoke-direct {v1, v15, v9, v2}, Lcom/android/server/vibrator/VibrationSettings;->loadSystemSetting(Ljava/lang/String;II)I

    move-result v15

    .line 605
    invoke-direct {v1, v15, v14}, Lcom/android/server/vibrator/VibrationSettings;->toIntensity(II)I

    move-result v15

    .line 609
    .local v15, "hardwareFeedbackIntensity":I
    const-string v5, "media_vibration_intensity"

    .line 610
    invoke-direct {v1, v5, v9, v2}, Lcom/android/server/vibrator/VibrationSettings;->loadSystemSetting(Ljava/lang/String;II)I

    move-result v5

    .line 611
    const/16 v6, 0x13

    invoke-virtual {v1, v6}, Lcom/android/server/vibrator/VibrationSettings;->getDefaultIntensity(I)I

    move-result v11

    .line 609
    invoke-direct {v1, v5, v11}, Lcom/android/server/vibrator/VibrationSettings;->toIntensity(II)I

    move-result v5

    .line 612
    .local v5, "mediaIntensity":I
    const/16 v11, 0x31

    invoke-virtual {v1, v11}, Lcom/android/server/vibrator/VibrationSettings;->getDefaultIntensity(I)I

    move-result v16

    move/from16 v17, v16

    .line 613
    .local v17, "defaultNotificationIntensity":I
    const-string v4, "notification_vibration_intensity"

    .line 614
    invoke-direct {v1, v4, v9, v2}, Lcom/android/server/vibrator/VibrationSettings;->loadSystemSetting(Ljava/lang/String;II)I

    move-result v4

    .line 613
    move/from16 v6, v17

    .end local v17    # "defaultNotificationIntensity":I
    .local v6, "defaultNotificationIntensity":I
    invoke-direct {v1, v4, v6}, Lcom/android/server/vibrator/VibrationSettings;->toIntensity(II)I

    move-result v4

    .line 617
    .local v4, "notificationIntensity":I
    invoke-direct {v1, v4, v6}, Lcom/android/server/vibrator/VibrationSettings;->toPositiveIntensity(II)I

    move-result v17

    move/from16 v19, v17

    .line 619
    .local v19, "positiveNotificationIntensity":I
    const-string v11, "ring_vibration_intensity"

    .line 620
    invoke-direct {v1, v11, v9, v2}, Lcom/android/server/vibrator/VibrationSettings;->loadSystemSetting(Ljava/lang/String;II)I

    move-result v9

    .line 621
    const/16 v11, 0x21

    invoke-virtual {v1, v11}, Lcom/android/server/vibrator/VibrationSettings;->getDefaultIntensity(I)I

    move-result v10

    .line 619
    invoke-direct {v1, v9, v10}, Lcom/android/server/vibrator/VibrationSettings;->toIntensity(II)I

    move-result v9

    .line 623
    .local v9, "ringIntensity":I
    iget-object v10, v1, Lcom/android/server/vibrator/VibrationSettings;->mCurrentVibrationIntensities:Landroid/util/SparseIntArray;

    invoke-virtual {v10}, Landroid/util/SparseIntArray;->clear()V

    .line 624
    iget-object v10, v1, Lcom/android/server/vibrator/VibrationSettings;->mCurrentVibrationIntensities:Landroid/util/SparseIntArray;

    const/16 v11, 0x11

    invoke-virtual {v10, v11, v8}, Landroid/util/SparseIntArray;->put(II)V

    .line 625
    iget-object v10, v1, Lcom/android/server/vibrator/VibrationSettings;->mCurrentVibrationIntensities:Landroid/util/SparseIntArray;

    const/16 v11, 0x31

    invoke-virtual {v10, v11, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 626
    iget-object v10, v1, Lcom/android/server/vibrator/VibrationSettings;->mCurrentVibrationIntensities:Landroid/util/SparseIntArray;

    const/16 v11, 0x13

    invoke-virtual {v10, v11, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 627
    iget-object v10, v1, Lcom/android/server/vibrator/VibrationSettings;->mCurrentVibrationIntensities:Landroid/util/SparseIntArray;

    const/4 v11, 0x0

    invoke-virtual {v10, v11, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 628
    iget-object v10, v1, Lcom/android/server/vibrator/VibrationSettings;->mCurrentVibrationIntensities:Landroid/util/SparseIntArray;

    const/16 v11, 0x21

    invoke-virtual {v10, v11, v9}, Landroid/util/SparseIntArray;->put(II)V

    .line 631
    iget-object v10, v1, Lcom/android/server/vibrator/VibrationSettings;->mCurrentVibrationIntensities:Landroid/util/SparseIntArray;

    const/16 v11, 0x41

    move/from16 v17, v0

    move/from16 v0, v19

    .end local v19    # "positiveNotificationIntensity":I
    .local v0, "positiveNotificationIntensity":I
    .local v17, "isKeyboardVibrationOn":Z
    invoke-virtual {v10, v11, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 636
    iget-object v10, v1, Lcom/android/server/vibrator/VibrationSettings;->mCurrentVibrationIntensities:Landroid/util/SparseIntArray;

    const/16 v11, 0x32

    invoke-virtual {v10, v11, v15}, Landroid/util/SparseIntArray;->put(II)V

    .line 637
    iget-object v10, v1, Lcom/android/server/vibrator/VibrationSettings;->mCurrentVibrationIntensities:Landroid/util/SparseIntArray;

    const/16 v11, 0x22

    invoke-virtual {v10, v11, v15}, Landroid/util/SparseIntArray;->put(II)V

    .line 639
    const-string v10, "haptic_feedback_enabled"

    invoke-direct {v1, v10, v2}, Lcom/android/server/vibrator/VibrationSettings;->loadBooleanSetting(Ljava/lang/String;I)Z

    move-result v10

    if-nez v10, :cond_3

    .line 641
    iget-object v10, v1, Lcom/android/server/vibrator/VibrationSettings;->mCurrentVibrationIntensities:Landroid/util/SparseIntArray;

    move/from16 v18, v0

    const/16 v0, 0x12

    const/4 v11, 0x0

    .end local v0    # "positiveNotificationIntensity":I
    .local v18, "positiveNotificationIntensity":I
    invoke-virtual {v10, v0, v11}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_3

    .line 665
    .end local v4    # "notificationIntensity":I
    .end local v5    # "mediaIntensity":I
    .end local v6    # "defaultNotificationIntensity":I
    .end local v7    # "keyboardIntensity":I
    .end local v8    # "alarmIntensity":I
    .end local v9    # "ringIntensity":I
    .end local v12    # "defaultHapticFeedbackIntensity":I
    .end local v13    # "hapticFeedbackIntensity":I
    .end local v14    # "positiveHapticFeedbackIntensity":I
    .end local v15    # "hardwareFeedbackIntensity":I
    .end local v17    # "isKeyboardVibrationOn":Z
    .end local v18    # "positiveNotificationIntensity":I
    :catchall_0
    move-exception v0

    goto :goto_8

    .line 643
    .restart local v0    # "positiveNotificationIntensity":I
    .restart local v4    # "notificationIntensity":I
    .restart local v5    # "mediaIntensity":I
    .restart local v6    # "defaultNotificationIntensity":I
    .restart local v7    # "keyboardIntensity":I
    .restart local v8    # "alarmIntensity":I
    .restart local v9    # "ringIntensity":I
    .restart local v12    # "defaultHapticFeedbackIntensity":I
    .restart local v13    # "hapticFeedbackIntensity":I
    .restart local v14    # "positiveHapticFeedbackIntensity":I
    .restart local v15    # "hardwareFeedbackIntensity":I
    .restart local v17    # "isKeyboardVibrationOn":Z
    :cond_3
    move/from16 v18, v0

    .end local v0    # "positiveNotificationIntensity":I
    .restart local v18    # "positiveNotificationIntensity":I
    iget-object v0, v1, Lcom/android/server/vibrator/VibrationSettings;->mCurrentVibrationIntensities:Landroid/util/SparseIntArray;

    const/16 v10, 0x12

    invoke-virtual {v0, v10, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 646
    :goto_3
    iget-object v0, v1, Lcom/android/server/vibrator/VibrationSettings;->mVibrationConfig:Landroid/os/vibrator/VibrationConfig;

    invoke-virtual {v0}, Landroid/os/vibrator/VibrationConfig;->isKeyboardVibrationSettingsSupported()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 647
    iget-object v0, v1, Lcom/android/server/vibrator/VibrationSettings;->mCurrentVibrationIntensities:Landroid/util/SparseIntArray;

    const/16 v10, 0x52

    invoke-virtual {v0, v10, v7}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_4

    .line 649
    :cond_4
    iget-object v0, v1, Lcom/android/server/vibrator/VibrationSettings;->mCurrentVibrationIntensities:Landroid/util/SparseIntArray;

    const/16 v10, 0x52

    invoke-virtual {v0, v10, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 653
    :goto_4
    iget-object v0, v1, Lcom/android/server/vibrator/VibrationSettings;->mCurrentVibrationIntensities:Landroid/util/SparseIntArray;

    const/16 v10, 0x42

    invoke-virtual {v0, v10, v14}, Landroid/util/SparseIntArray;->put(II)V

    .line 657
    const-string v0, "VibrationSettings"

    const-string v10, "nt_during_call_vibrate is changed!"

    invoke-static {v0, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 658
    const-string v0, "nt_during_call_vibrates"

    const/4 v11, 0x0

    invoke-direct {v1, v0, v11, v2}, Lcom/android/server/vibrator/VibrationSettings;->loadSystemSetting(Ljava/lang/String;II)I

    move-result v0

    const/4 v10, 0x1

    if-ne v0, v10, :cond_5

    move v0, v10

    goto :goto_5

    :cond_5
    move v0, v11

    :goto_5
    iput-boolean v0, v1, Lcom/android/server/vibrator/VibrationSettings;->mCanVibrateDuringCall:Z

    .line 662
    if-eqz v9, :cond_6

    move v0, v10

    goto :goto_6

    :cond_6
    move v0, v11

    :goto_6
    iput-boolean v0, v1, Lcom/android/server/vibrator/VibrationSettings;->mVibrateWhenRinging:Z

    .line 663
    if-eqz v4, :cond_7

    goto :goto_7

    :cond_7
    move v10, v11

    :goto_7
    iput-boolean v10, v1, Lcom/android/server/vibrator/VibrationSettings;->mNotificationVibrate:Z

    .line 665
    .end local v4    # "notificationIntensity":I
    .end local v5    # "mediaIntensity":I
    .end local v6    # "defaultNotificationIntensity":I
    .end local v7    # "keyboardIntensity":I
    .end local v8    # "alarmIntensity":I
    .end local v9    # "ringIntensity":I
    .end local v12    # "defaultHapticFeedbackIntensity":I
    .end local v13    # "hapticFeedbackIntensity":I
    .end local v14    # "positiveHapticFeedbackIntensity":I
    .end local v15    # "hardwareFeedbackIntensity":I
    .end local v17    # "isKeyboardVibrationOn":Z
    .end local v18    # "positiveNotificationIntensity":I
    monitor-exit v3

    .line 666
    return-void

    .line 665
    :goto_8
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public addListener(Lcom/android/server/vibrator/VibrationSettings$OnVibratorSettingsChanged;)V
    .locals 2
    .param p1, "listener"    # Lcom/android/server/vibrator/VibrationSettings$OnVibratorSettingsChanged;

    .line 361
    iget-object v0, p0, Lcom/android/server/vibrator/VibrationSettings;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 362
    :try_start_0
    iget-object v1, p0, Lcom/android/server/vibrator/VibrationSettings;->mListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 363
    iget-object v1, p0, Lcom/android/server/vibrator/VibrationSettings;->mListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 365
    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    .line 366
    return-void

    .line 365
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public canVibrateDuringCall()Z
    .locals 1

    .line 999
    iget-boolean v0, p0, Lcom/android/server/vibrator/VibrationSettings;->mCanVibrateDuringCall:Z

    return v0
.end method

.method public canVibrateWhenNofication()Z
    .locals 1

    .line 1010
    iget-boolean v0, p0, Lcom/android/server/vibrator/VibrationSettings;->mNotificationVibrate:Z

    return v0
.end method

.method public canVibrateWhenRinging()Z
    .locals 1

    .line 1006
    iget-boolean v0, p0, Lcom/android/server/vibrator/VibrationSettings;->mVibrateWhenRinging:Z

    return v0
.end method

.method dump(Landroid/util/IndentingPrintWriter;)V
    .locals 6
    .param p1, "pw"    # Landroid/util/IndentingPrintWriter;

    .line 713
    iget-object v0, p0, Lcom/android/server/vibrator/VibrationSettings;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 714
    :try_start_0
    const-string v1, "VibrationSettings:"

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 715
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 716
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "vibrateOn = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/vibrator/VibrationSettings;->mVibrateOn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 717
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "vibrateInputDevices = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/vibrator/VibrationSettings;->mVibrateInputDevices:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 718
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "batterySaverMode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/vibrator/VibrationSettings;->mBatterySaverMode:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 719
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ringerMode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/vibrator/VibrationSettings;->mRingerMode:I

    invoke-static {v2}, Lcom/android/server/vibrator/VibrationSettings;->ringerModeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 720
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onWirelessCharger = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/vibrator/VibrationSettings;->mOnWirelessCharger:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 721
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "processStateCache size = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/vibrator/VibrationSettings;->mUidObserver:Lcom/android/server/vibrator/VibrationSettings$VibrationUidObserver;

    invoke-static {v2}, Lcom/android/server/vibrator/VibrationSettings$VibrationUidObserver;->-$$Nest$fgetmProcStatesCache(Lcom/android/server/vibrator/VibrationSettings$VibrationUidObserver;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 723
    const-string v1, "VibrationIntensities:"

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 724
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 725
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/vibrator/VibrationSettings;->mCurrentVibrationIntensities:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 726
    iget-object v2, p0, Lcom/android/server/vibrator/VibrationSettings;->mCurrentVibrationIntensities:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v2

    .line 727
    .local v2, "usage":I
    iget-object v3, p0, Lcom/android/server/vibrator/VibrationSettings;->mCurrentVibrationIntensities:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v3

    .line 728
    .local v3, "intensity":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v2}, Landroid/os/VibrationAttributes;->usageToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 729
    invoke-static {v3}, Lcom/android/server/vibrator/VibrationSettings;->intensityToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", default: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 730
    invoke-virtual {p0, v2}, Lcom/android/server/vibrator/VibrationSettings;->getDefaultIntensity(I)I

    move-result v5

    invoke-static {v5}, Lcom/android/server/vibrator/VibrationSettings;->intensityToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 728
    invoke-virtual {p1, v4}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 725
    .end local v2    # "usage":I
    .end local v3    # "intensity":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 736
    .end local v1    # "i":I
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 725
    .restart local v1    # "i":I
    :cond_0
    nop

    .line 732
    .end local v1    # "i":I
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 734
    iget-object v1, p0, Lcom/android/server/vibrator/VibrationSettings;->mVibrationConfig:Landroid/os/vibrator/VibrationConfig;

    invoke-virtual {v1, p1}, Landroid/os/vibrator/VibrationConfig;->dumpWithoutDefaultSettings(Landroid/util/IndentingPrintWriter;)V

    .line 735
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 736
    monitor-exit v0

    .line 737
    return-void

    .line 736
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method dump(Landroid/util/proto/ProtoOutputStream;)V
    .locals 5
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;

    .line 741
    iget-object v0, p0, Lcom/android/server/vibrator/VibrationSettings;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 742
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/vibrator/VibrationSettings;->mVibrateOn:Z

    const-wide v2, 0x10800000018L

    invoke-virtual {p1, v2, v3, v1}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 743
    iget-boolean v1, p0, Lcom/android/server/vibrator/VibrationSettings;->mBatterySaverMode:Z

    const-wide v2, 0x10800000006L

    invoke-virtual {p1, v2, v3, v1}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 744
    nop

    .line 745
    const/16 v1, 0x11

    invoke-virtual {p0, v1}, Lcom/android/server/vibrator/VibrationSettings;->getCurrentIntensity(I)I

    move-result v2

    .line 744
    const-wide v3, 0x10500000012L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 746
    nop

    .line 747
    invoke-virtual {p0, v1}, Lcom/android/server/vibrator/VibrationSettings;->getDefaultIntensity(I)I

    move-result v1

    .line 746
    const-wide v2, 0x10500000013L

    invoke-virtual {p1, v2, v3, v1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 748
    nop

    .line 749
    const/16 v1, 0x32

    invoke-virtual {p0, v1}, Lcom/android/server/vibrator/VibrationSettings;->getCurrentIntensity(I)I

    move-result v2

    .line 748
    const-wide v3, 0x10500000016L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 750
    nop

    .line 751
    invoke-virtual {p0, v1}, Lcom/android/server/vibrator/VibrationSettings;->getDefaultIntensity(I)I

    move-result v1

    .line 750
    const-wide v2, 0x10500000017L

    invoke-virtual {p1, v2, v3, v1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 752
    nop

    .line 753
    const/16 v1, 0x12

    invoke-virtual {p0, v1}, Lcom/android/server/vibrator/VibrationSettings;->getCurrentIntensity(I)I

    move-result v2

    .line 752
    const-wide v3, 0x10500000007L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 754
    nop

    .line 755
    invoke-virtual {p0, v1}, Lcom/android/server/vibrator/VibrationSettings;->getDefaultIntensity(I)I

    move-result v1

    .line 754
    const-wide v2, 0x10500000008L

    invoke-virtual {p1, v2, v3, v1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 756
    nop

    .line 757
    const/16 v1, 0x13

    invoke-virtual {p0, v1}, Lcom/android/server/vibrator/VibrationSettings;->getCurrentIntensity(I)I

    move-result v2

    .line 756
    const-wide v3, 0x10500000014L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 758
    nop

    .line 759
    invoke-virtual {p0, v1}, Lcom/android/server/vibrator/VibrationSettings;->getDefaultIntensity(I)I

    move-result v1

    .line 758
    const-wide v2, 0x10500000015L

    invoke-virtual {p1, v2, v3, v1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 760
    nop

    .line 761
    const/16 v1, 0x31

    invoke-virtual {p0, v1}, Lcom/android/server/vibrator/VibrationSettings;->getCurrentIntensity(I)I

    move-result v2

    .line 760
    const-wide v3, 0x10500000009L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 762
    nop

    .line 763
    invoke-virtual {p0, v1}, Lcom/android/server/vibrator/VibrationSettings;->getDefaultIntensity(I)I

    move-result v1

    .line 762
    const-wide v2, 0x1050000000aL

    invoke-virtual {p1, v2, v3, v1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 764
    nop

    .line 765
    const/16 v1, 0x21

    invoke-virtual {p0, v1}, Lcom/android/server/vibrator/VibrationSettings;->getCurrentIntensity(I)I

    move-result v2

    .line 764
    const-wide v3, 0x1050000000bL

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 766
    nop

    .line 767
    invoke-virtual {p0, v1}, Lcom/android/server/vibrator/VibrationSettings;->getDefaultIntensity(I)I

    move-result v1

    .line 766
    const-wide v2, 0x1050000000cL

    invoke-virtual {p1, v2, v3, v1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 768
    monitor-exit v0

    .line 769
    return-void

    .line 768
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getCurrentIntensity(I)I
    .locals 3
    .param p1, "usageHint"    # I

    .line 409
    invoke-virtual {p0, p1}, Lcom/android/server/vibrator/VibrationSettings;->getDefaultIntensity(I)I

    move-result v0

    .line 410
    .local v0, "defaultIntensity":I
    iget-object v1, p0, Lcom/android/server/vibrator/VibrationSettings;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 411
    :try_start_0
    iget-object v2, p0, Lcom/android/server/vibrator/VibrationSettings;->mCurrentVibrationIntensities:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p1, v0}, Landroid/util/SparseIntArray;->get(II)I

    move-result v2

    monitor-exit v1

    return v2

    .line 412
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public getDefaultIntensity(I)I
    .locals 1
    .param p1, "usageHint"    # I

    .line 399
    iget-object v0, p0, Lcom/android/server/vibrator/VibrationSettings;->mVibrationConfig:Landroid/os/vibrator/VibrationConfig;

    invoke-virtual {v0, p1}, Landroid/os/vibrator/VibrationConfig;->getDefaultVibrationIntensity(I)I

    move-result v0

    return v0
.end method

.method public getFallbackEffect(I)Landroid/os/VibrationEffect;
    .locals 1
    .param p1, "effectId"    # I

    .line 441
    iget-object v0, p0, Lcom/android/server/vibrator/VibrationSettings;->mFallbackEffects:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/VibrationEffect;

    return-object v0
.end method

.method public getRampDownDuration()I
    .locals 1

    .line 389
    iget-object v0, p0, Lcom/android/server/vibrator/VibrationSettings;->mVibrationConfig:Landroid/os/vibrator/VibrationConfig;

    invoke-virtual {v0}, Landroid/os/vibrator/VibrationConfig;->getRampDownDurationMs()I

    move-result v0

    return v0
.end method

.method public getRampStepDuration()I
    .locals 1

    .line 381
    iget-object v0, p0, Lcom/android/server/vibrator/VibrationSettings;->mVibrationConfig:Landroid/os/vibrator/VibrationConfig;

    invoke-virtual {v0}, Landroid/os/vibrator/VibrationConfig;->getRampStepDurationMs()I

    move-result v0

    return v0
.end method

.method public getRequestVibrationParamsForUsages()[I
    .locals 1

    .line 430
    iget-object v0, p0, Lcom/android/server/vibrator/VibrationSettings;->mVibrationConfig:Landroid/os/vibrator/VibrationConfig;

    invoke-virtual {v0}, Landroid/os/vibrator/VibrationConfig;->getRequestVibrationParamsForUsages()[I

    move-result-object v0

    return-object v0
.end method

.method public getRequestVibrationParamsTimeoutMs()I
    .locals 1

    .line 421
    iget-object v0, p0, Lcom/android/server/vibrator/VibrationSettings;->mVibrationConfig:Landroid/os/vibrator/VibrationConfig;

    invoke-virtual {v0}, Landroid/os/vibrator/VibrationConfig;->getRequestVibrationParamsTimeoutMs()I

    move-result v0

    return v0
.end method

.method public onSystemReady()V
    .locals 7

    .line 261
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/content/pm/PackageManagerInternal;

    const-class v0, Landroid/os/PowerManagerInternal;

    .line 262
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/os/PowerManagerInternal;

    .line 263
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v4

    .line 264
    const-class v0, Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

    iget-object v0, p0, Lcom/android/server/vibrator/VibrationSettings;->mContext:Landroid/content/Context;

    const-class v1, Landroid/media/AudioManager;

    .line 265
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/media/AudioManager;

    .line 261
    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/vibrator/VibrationSettings;->onSystemReady(Landroid/content/pm/PackageManagerInternal;Landroid/os/PowerManagerInternal;Landroid/app/IActivityManager;Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;Landroid/media/AudioManager;)V

    .line 266
    return-void
.end method

.method onSystemReady(Landroid/content/pm/PackageManagerInternal;Landroid/os/PowerManagerInternal;Landroid/app/IActivityManager;Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;Landroid/media/AudioManager;)V
    .locals 7
    .param p1, "packageManagerInternal"    # Landroid/content/pm/PackageManagerInternal;
    .param p2, "powerManagerInternal"    # Landroid/os/PowerManagerInternal;
    .param p3, "activityManagerInternal"    # Landroid/app/IActivityManager;
    .param p4, "virtualDeviceManagerInternal"    # Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;
    .param p5, "audioManager"    # Landroid/media/AudioManager;

    .line 274
    const/4 v0, 0x2

    if-nez p5, :cond_0

    .line 275
    move v1, v0

    goto :goto_0

    .line 276
    :cond_0
    invoke-virtual {p5}, Landroid/media/AudioManager;->getRingerModeInternal()I

    move-result v1

    :goto_0
    nop

    .line 277
    .local v1, "ringerMode":I
    invoke-virtual {p1}, Landroid/content/pm/PackageManagerInternal;->getSystemUiServiceComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 279
    .local v2, "sysUiPackage":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/vibrator/VibrationSettings;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 280
    :try_start_0
    iput-object p2, p0, Lcom/android/server/vibrator/VibrationSettings;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    .line 281
    iput-object p4, p0, Lcom/android/server/vibrator/VibrationSettings;->mVirtualDeviceManagerInternal:Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

    .line 282
    iput-object p5, p0, Lcom/android/server/vibrator/VibrationSettings;->mAudioManager:Landroid/media/AudioManager;

    .line 283
    iput v1, p0, Lcom/android/server/vibrator/VibrationSettings;->mRingerMode:I

    .line 284
    iput-object v2, p0, Lcom/android/server/vibrator/VibrationSettings;->mSystemUiPackage:Ljava/lang/String;

    .line 285
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 288
    :try_start_1
    iget-object v3, p0, Lcom/android/server/vibrator/VibrationSettings;->mUidObserver:Lcom/android/server/vibrator/VibrationSettings$VibrationUidObserver;

    const/4 v4, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x3

    invoke-interface {p3, v3, v6, v4, v5}, Landroid/app/IActivityManager;->registerUidObserver(Landroid/app/IUidObserver;IILjava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 293
    goto :goto_1

    .line 291
    :catch_0
    move-exception v3

    .line 296
    :goto_1
    :try_start_2
    iget-object v3, p0, Lcom/android/server/vibrator/VibrationSettings;->mUserSwitchObserver:Lcom/android/server/vibrator/VibrationSettings$VibrationUserSwitchObserver;

    const-string v4, "VibrationSettings"

    invoke-interface {p3, v3, v4}, Landroid/app/IActivityManager;->registerUserSwitchObserver(Landroid/app/IUserSwitchObserver;Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    .line 299
    goto :goto_2

    .line 297
    :catch_1
    move-exception v3

    .line 301
    :goto_2
    iget-object v3, p0, Lcom/android/server/vibrator/VibrationSettings;->mLowPowerModeListener:Lcom/android/server/vibrator/VibrationSettings$VibrationLowPowerModeListener;

    invoke-virtual {p2, v3}, Landroid/os/PowerManagerInternal;->registerLowPowerModeObserver(Landroid/os/PowerManagerInternal$LowPowerModeListener;)V

    .line 303
    iget-object v3, p0, Lcom/android/server/vibrator/VibrationSettings;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/vibrator/VibrationSettings;->mRingerModeBroadcastReceiver:Lcom/android/server/vibrator/VibrationSettings$RingerModeBroadcastReceiver;

    new-instance v5, Landroid/content/IntentFilter;

    const-string v6, "android.media.INTERNAL_RINGER_MODE_CHANGED_ACTION"

    invoke-direct {v5, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4, v5, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 308
    const-string v0, "vibrate_input_devices"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/vibrator/VibrationSettings;->registerSettingsObserver(Landroid/net/Uri;)V

    .line 309
    const-string v0, "vibrate_on"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/vibrator/VibrationSettings;->registerSettingsObserver(Landroid/net/Uri;)V

    .line 310
    const-string v0, "haptic_feedback_enabled"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/vibrator/VibrationSettings;->registerSettingsObserver(Landroid/net/Uri;)V

    .line 312
    const-string v0, "alarm_vibration_intensity"

    .line 313
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 312
    invoke-direct {p0, v0}, Lcom/android/server/vibrator/VibrationSettings;->registerSettingsObserver(Landroid/net/Uri;)V

    .line 314
    const-string v0, "haptic_feedback_intensity"

    .line 315
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 314
    invoke-direct {p0, v0}, Lcom/android/server/vibrator/VibrationSettings;->registerSettingsObserver(Landroid/net/Uri;)V

    .line 316
    const-string v0, "hardware_haptic_feedback_intensity"

    .line 317
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 316
    invoke-direct {p0, v0}, Lcom/android/server/vibrator/VibrationSettings;->registerSettingsObserver(Landroid/net/Uri;)V

    .line 318
    const-string v0, "media_vibration_intensity"

    .line 319
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 318
    invoke-direct {p0, v0}, Lcom/android/server/vibrator/VibrationSettings;->registerSettingsObserver(Landroid/net/Uri;)V

    .line 320
    const-string v0, "notification_vibration_intensity"

    .line 321
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 320
    invoke-direct {p0, v0}, Lcom/android/server/vibrator/VibrationSettings;->registerSettingsObserver(Landroid/net/Uri;)V

    .line 322
    const-string v0, "ring_vibration_intensity"

    .line 323
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 322
    invoke-direct {p0, v0}, Lcom/android/server/vibrator/VibrationSettings;->registerSettingsObserver(Landroid/net/Uri;)V

    .line 324
    const-string v0, "keyboard_vibration_enabled"

    .line 325
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 324
    invoke-direct {p0, v0}, Lcom/android/server/vibrator/VibrationSettings;->registerSettingsObserver(Landroid/net/Uri;)V

    .line 327
    iget-object v0, p0, Lcom/android/server/vibrator/VibrationSettings;->mVibrationConfig:Landroid/os/vibrator/VibrationConfig;

    invoke-virtual {v0}, Landroid/os/vibrator/VibrationConfig;->ignoreVibrationsOnWirelessCharger()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 328
    iget-object v0, p0, Lcom/android/server/vibrator/VibrationSettings;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/vibrator/VibrationSettings;->mBatteryBroadcastReceiver:Lcom/android/server/vibrator/VibrationSettings$BatteryBroadcastReceiver;

    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x4

    invoke-virtual {v0, v3, v4, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    move-result-object v0

    .line 336
    .local v0, "batteryStatus":Landroid/content/Intent;
    if-eqz v0, :cond_1

    .line 337
    invoke-direct {p0, v0}, Lcom/android/server/vibrator/VibrationSettings;->updateBatteryInfo(Landroid/content/Intent;)V

    .line 343
    .end local v0    # "batteryStatus":Landroid/content/Intent;
    :cond_1
    const-string v0, "nt_during_call_vibrates"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/vibrator/VibrationSettings;->registerSettingsObserver(Landroid/net/Uri;)V

    .line 348
    const-string v0, "vibrate_when_ringing"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/vibrator/VibrationSettings;->registerSettingsObserver(Landroid/net/Uri;)V

    .line 349
    const-string v0, "notification_vibration_intensity"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/vibrator/VibrationSettings;->registerSettingsObserver(Landroid/net/Uri;)V

    .line 353
    invoke-virtual {p0}, Lcom/android/server/vibrator/VibrationSettings;->update()V

    .line 354
    return-void

    .line 285
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method public removeListener(Lcom/android/server/vibrator/VibrationSettings$OnVibratorSettingsChanged;)V
    .locals 2
    .param p1, "listener"    # Lcom/android/server/vibrator/VibrationSettings$OnVibratorSettingsChanged;

    .line 370
    iget-object v0, p0, Lcom/android/server/vibrator/VibrationSettings;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 371
    :try_start_0
    iget-object v1, p0, Lcom/android/server/vibrator/VibrationSettings;->mListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 372
    monitor-exit v0

    .line 373
    return-void

    .line 372
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public shouldCancelVibrationOnScreenOff(Lcom/android/server/vibrator/VibrationSession$CallerInfo;J)Z
    .locals 8
    .param p1, "callerInfo"    # Lcom/android/server/vibrator/VibrationSession$CallerInfo;
    .param p2, "vibrationStartUptimeMillis"    # J

    .line 519
    iget-object v0, p0, Lcom/android/server/vibrator/VibrationSettings;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 520
    :try_start_0
    iget-object v1, p0, Lcom/android/server/vibrator/VibrationSettings;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    .line 521
    .local v1, "pm":Landroid/os/PowerManagerInternal;
    iget-object v2, p0, Lcom/android/server/vibrator/VibrationSettings;->mSystemUiPackage:Ljava/lang/String;

    .line 522
    .local v2, "sysUiPackageName":Ljava/lang/String;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 523
    const/4 v0, 0x0

    if-eqz v1, :cond_1

    .line 528
    invoke-virtual {v1}, Landroid/os/PowerManagerInternal;->getLastGoToSleep()Landroid/os/PowerManager$SleepData;

    move-result-object v3

    .line 529
    .local v3, "sleepData":Landroid/os/PowerManager$SleepData;
    nop

    nop

    if-eqz v3, :cond_1

    iget-wide v4, v3, Landroid/os/PowerManager$SleepData;->goToSleepUptimeMillis:J

    cmp-long v4, v4, p2

    nop

    if-ltz v4, :cond_0

    sget-object v4, Lcom/android/server/vibrator/VibrationSettings;->POWER_MANAGER_SLEEP_REASON_ALLOWLIST:Ljava/util/Set;

    iget v5, v3, Landroid/os/PowerManager$SleepData;->goToSleepReason:I

    .line 530
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 533
    :cond_0
    const-string v4, "VibrationSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Ignoring screen off event triggered at uptime "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, v3, Landroid/os/PowerManager$SleepData;->goToSleepUptimeMillis:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, " for reason "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v3, Landroid/os/PowerManager$SleepData;->goToSleepReason:I

    .line 535
    invoke-static {v6}, Landroid/os/PowerManager;->sleepReasonToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 533
    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 536
    return v0

    .line 539
    .end local v3    # "sleepData":Landroid/os/PowerManager$SleepData;
    :cond_1
    sget-object v3, Lcom/android/server/vibrator/VibrationSettings;->SYSTEM_VIBRATION_SCREEN_OFF_USAGE_ALLOWLIST:Ljava/util/Set;

    iget-object v4, p1, Lcom/android/server/vibrator/VibrationSession$CallerInfo;->attrs:Landroid/os/VibrationAttributes;

    invoke-virtual {v4}, Landroid/os/VibrationAttributes;->getUsage()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_2

    .line 541
    return v4

    .line 544
    :cond_2
    iget v3, p1, Lcom/android/server/vibrator/VibrationSession$CallerInfo;->uid:I

    const/16 v5, 0x3e8

    if-eq v3, v5, :cond_3

    iget v3, p1, Lcom/android/server/vibrator/VibrationSession$CallerInfo;->uid:I

    if-eqz v3, :cond_3

    iget-object v3, p1, Lcom/android/server/vibrator/VibrationSession$CallerInfo;->opPkg:Ljava/lang/String;

    .line 545
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    move v0, v4

    goto :goto_0

    :cond_3
    nop

    .line 544
    :goto_0
    return v0

    .line 522
    .end local v1    # "pm":Landroid/os/PowerManagerInternal;
    .end local v2    # "sysUiPackageName":Ljava/lang/String;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public shouldIgnoreVibration(Lcom/android/server/vibrator/VibrationSession$CallerInfo;)Lcom/android/server/vibrator/VibrationSession$Status;
    .locals 4
    .param p1, "callerInfo"    # Lcom/android/server/vibrator/VibrationSession$CallerInfo;

    .line 457
    iget-object v0, p1, Lcom/android/server/vibrator/VibrationSession$CallerInfo;->attrs:Landroid/os/VibrationAttributes;

    invoke-virtual {v0}, Landroid/os/VibrationAttributes;->getUsage()I

    move-result v0

    .line 460
    .local v0, "usage":I
    const-string v1, "VibrationSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "usage = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    iget-object v1, p0, Lcom/android/server/vibrator/VibrationSettings;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 465
    :try_start_0
    iget-object v2, p0, Lcom/android/server/vibrator/VibrationSettings;->mUidObserver:Lcom/android/server/vibrator/VibrationSettings$VibrationUidObserver;

    iget v3, p1, Lcom/android/server/vibrator/VibrationSession$CallerInfo;->uid:I

    invoke-virtual {v2, v3}, Lcom/android/server/vibrator/VibrationSettings$VibrationUidObserver;->isUidForeground(I)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lcom/android/server/vibrator/VibrationSettings;->BACKGROUND_PROCESS_USAGE_ALLOWLIST:Ljava/util/Set;

    .line 466
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lcom/nothing/server/INtExtServiceFactory$ExtType;->NT_VIBRATOR_MANAGER:Lcom/nothing/server/INtExtServiceFactory$ExtType;

    .line 467
    invoke-static {v2}, Lcom/nothing/server/NtExtServiceFactory;->getOrCreate(Lcom/nothing/server/INtExtServiceFactory$ExtType;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nothing/server/ext/INtVibratorManager;

    iget-object v3, p1, Lcom/android/server/vibrator/VibrationSession$CallerInfo;->opPkg:Ljava/lang/String;

    invoke-interface {v2, v3}, Lcom/nothing/server/ext/INtVibratorManager;->isAacVibratePkg(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 468
    sget-object v2, Lcom/android/server/vibrator/VibrationSession$Status;->IGNORED_BACKGROUND:Lcom/android/server/vibrator/VibrationSession$Status;

    monitor-exit v1

    return-object v2

    .line 501
    :catchall_0
    move-exception v2

    goto :goto_0

    .line 472
    :cond_0
    iget v2, p1, Lcom/android/server/vibrator/VibrationSession$CallerInfo;->deviceId:I

    const/4 v3, -0x1

    if-eqz v2, :cond_1

    iget v2, p1, Lcom/android/server/vibrator/VibrationSession$CallerInfo;->deviceId:I

    if-eq v2, v3, :cond_1

    .line 474
    sget-object v2, Lcom/android/server/vibrator/VibrationSession$Status;->IGNORED_FROM_VIRTUAL_DEVICE:Lcom/android/server/vibrator/VibrationSession$Status;

    monitor-exit v1

    return-object v2

    .line 477
    :cond_1
    iget v2, p1, Lcom/android/server/vibrator/VibrationSession$CallerInfo;->deviceId:I

    if-ne v2, v3, :cond_2

    iget v2, p1, Lcom/android/server/vibrator/VibrationSession$CallerInfo;->uid:I

    .line 478
    invoke-direct {p0, v2}, Lcom/android/server/vibrator/VibrationSettings;->isAppRunningOnAnyVirtualDevice(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 479
    sget-object v2, Lcom/android/server/vibrator/VibrationSession$Status;->IGNORED_FROM_VIRTUAL_DEVICE:Lcom/android/server/vibrator/VibrationSession$Status;

    monitor-exit v1

    return-object v2

    .line 482
    :cond_2
    iget-boolean v2, p0, Lcom/android/server/vibrator/VibrationSettings;->mBatterySaverMode:Z

    if-eqz v2, :cond_3

    sget-object v2, Lcom/android/server/vibrator/VibrationSettings;->BATTERY_SAVER_USAGE_ALLOWLIST:Ljava/util/Set;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 483
    sget-object v2, Lcom/android/server/vibrator/VibrationSession$Status;->IGNORED_FOR_POWER:Lcom/android/server/vibrator/VibrationSession$Status;

    monitor-exit v1

    return-object v2

    .line 486
    :cond_3
    iget-object v2, p1, Lcom/android/server/vibrator/VibrationSession$CallerInfo;->attrs:Landroid/os/VibrationAttributes;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/os/VibrationAttributes;->isFlagSet(I)Z

    move-result v2

    if-nez v2, :cond_4

    .line 488
    invoke-direct {p0, p1}, Lcom/android/server/vibrator/VibrationSettings;->shouldVibrateForUserSetting(Lcom/android/server/vibrator/VibrationSession$CallerInfo;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 489
    sget-object v2, Lcom/android/server/vibrator/VibrationSession$Status;->IGNORED_FOR_SETTINGS:Lcom/android/server/vibrator/VibrationSession$Status;

    monitor-exit v1

    return-object v2

    .line 492
    :cond_4
    iget-object v2, p1, Lcom/android/server/vibrator/VibrationSession$CallerInfo;->attrs:Landroid/os/VibrationAttributes;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/os/VibrationAttributes;->isFlagSet(I)Z

    move-result v2

    if-nez v2, :cond_5

    .line 493
    invoke-direct {p0, v0}, Lcom/android/server/vibrator/VibrationSettings;->shouldVibrateForRingerModeLocked(I)Z

    move-result v2

    if-nez v2, :cond_5

    .line 494
    sget-object v2, Lcom/android/server/vibrator/VibrationSession$Status;->IGNORED_FOR_RINGER_MODE:Lcom/android/server/vibrator/VibrationSession$Status;

    monitor-exit v1

    return-object v2

    .line 498
    :cond_5
    iget-object v2, p0, Lcom/android/server/vibrator/VibrationSettings;->mVibrationConfig:Landroid/os/vibrator/VibrationConfig;

    invoke-virtual {v2}, Landroid/os/vibrator/VibrationConfig;->ignoreVibrationsOnWirelessCharger()Z

    move-result v2

    if-eqz v2, :cond_6

    iget-boolean v2, p0, Lcom/android/server/vibrator/VibrationSettings;->mOnWirelessCharger:Z

    if-eqz v2, :cond_6

    .line 499
    sget-object v2, Lcom/android/server/vibrator/VibrationSession$Status;->IGNORED_ON_WIRELESS_CHARGER:Lcom/android/server/vibrator/VibrationSession$Status;

    monitor-exit v1

    return-object v2

    .line 501
    :cond_6
    monitor-exit v1

    .line 502
    const/4 v1, 0x0

    return-object v1

    .line 501
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public shouldVibrateInputDevices()Z
    .locals 1

    .line 446
    iget-boolean v0, p0, Lcom/android/server/vibrator/VibrationSettings;->mVibrateInputDevices:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .line 687
    iget-object v0, p0, Lcom/android/server/vibrator/VibrationSettings;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 688
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "{"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 689
    .local v1, "vibrationIntensitiesString":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/server/vibrator/VibrationSettings;->mCurrentVibrationIntensities:Landroid/util/SparseIntArray;

    invoke-virtual {v3}, Landroid/util/SparseIntArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 690
    iget-object v3, p0, Lcom/android/server/vibrator/VibrationSettings;->mCurrentVibrationIntensities:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v3

    .line 691
    .local v3, "usage":I
    iget-object v4, p0, Lcom/android/server/vibrator/VibrationSettings;->mCurrentVibrationIntensities:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v4

    .line 692
    .local v4, "intensity":I
    invoke-static {v3}, Landroid/os/VibrationAttributes;->usageToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "=("

    .line 693
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Lcom/android/server/vibrator/VibrationSettings;->intensityToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ",default:"

    .line 694
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Lcom/android/server/vibrator/VibrationSettings;->getDefaultIntensity(I)I

    move-result v5

    invoke-static {v5}, Lcom/android/server/vibrator/VibrationSettings;->intensityToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "), "

    .line 695
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 689
    nop

    .end local v3    # "usage":I
    .end local v4    # "intensity":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 708
    .end local v1    # "vibrationIntensitiesString":Ljava/lang/StringBuilder;
    .end local v2    # "i":I
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 689
    .restart local v1    # "vibrationIntensitiesString":Ljava/lang/StringBuilder;
    .restart local v2    # "i":I
    :cond_0
    nop

    .line 697
    .end local v2    # "i":I
    const/16 v2, 0x7d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 698
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "VibrationSettings{mVibratorConfig="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/vibrator/VibrationSettings;->mVibrationConfig:Landroid/os/vibrator/VibrationConfig;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", mVibrateOn="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/android/server/vibrator/VibrationSettings;->mVibrateOn:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", mVibrateInputDevices="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/android/server/vibrator/VibrationSettings;->mVibrateInputDevices:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", mBatterySaverMode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/android/server/vibrator/VibrationSettings;->mBatterySaverMode:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", mRingerMode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/vibrator/VibrationSettings;->mRingerMode:I

    .line 703
    invoke-static {v4}, Lcom/android/server/vibrator/VibrationSettings;->ringerModeToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", mOnWirelessCharger="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/android/server/vibrator/VibrationSettings;->mOnWirelessCharger:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", mVibrationIntensities="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", mProcStatesCache="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/vibrator/VibrationSettings;->mUidObserver:Lcom/android/server/vibrator/VibrationSettings$VibrationUidObserver;

    invoke-static {v4}, Lcom/android/server/vibrator/VibrationSettings$VibrationUidObserver;->-$$Nest$fgetmProcStatesCache(Lcom/android/server/vibrator/VibrationSettings$VibrationUidObserver;)Landroid/util/SparseArray;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    monitor-exit v0

    .line 698
    return-object v2

    .line 708
    .end local v1    # "vibrationIntensitiesString":Ljava/lang/StringBuilder;
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method update()V
    .locals 1

    .line 581
    const/4 v0, -0x2

    invoke-direct {p0, v0}, Lcom/android/server/vibrator/VibrationSettings;->updateSettings(I)V

    .line 582
    invoke-direct {p0}, Lcom/android/server/vibrator/VibrationSettings;->updateRingerMode()V

    .line 583
    invoke-direct {p0}, Lcom/android/server/vibrator/VibrationSettings;->notifyListeners()V

    .line 584
    return-void
.end method
