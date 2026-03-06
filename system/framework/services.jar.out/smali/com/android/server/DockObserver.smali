.class final Lcom/android/server/DockObserver;
.super Lcom/android/server/SystemService;
.source "DockObserver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/DockObserver$ExtconStateConfig;,
        Lcom/android/server/DockObserver$DeviceProvisionedObserver;,
        Lcom/android/server/DockObserver$ExtconStateProvider;,
        Lcom/android/server/DockObserver$DockObserverLocalService;,
        Lcom/android/server/DockObserver$BinderService;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "DockObserver"


# instance fields
.field private mActualDockState:I

.field private final mAllowTheaterModeWakeFromDock:Z

.field private mDeviceProvisionedObserver:Lcom/android/server/DockObserver$DeviceProvisionedObserver;

.field private final mDockObserverLocalService:Lcom/android/server/DockObserver$DockObserverLocalService;

.field private final mExtconStateConfigs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/DockObserver$ExtconStateConfig;",
            ">;"
        }
    .end annotation
.end field

.field private final mExtconUEventObserver:Lcom/android/server/ExtconUEventObserver;

.field private final mHandler:Landroid/os/Handler;

.field private final mKeepDreamingWhenUnplugging:Z

.field private final mLock:Ljava/lang/Object;

.field private final mPowerManager:Landroid/os/PowerManager;

.field private mPreviousDockState:I

.field private mReportedDockState:I

.field private mSystemReady:Z

.field private mUpdatesStopped:Z

.field private final mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public static synthetic $r8$lambda$qaC52jh3OvGtaUchew8hK3-YO2Y(Lcom/android/server/DockObserver;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/DockObserver;->handleDockStateChange()V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmActualDockState(Lcom/android/server/DockObserver;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/server/DockObserver;->mActualDockState:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmLock(Lcom/android/server/DockObserver;)Ljava/lang/Object;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/DockObserver;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPreviousDockState(Lcom/android/server/DockObserver;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/server/DockObserver;->mPreviousDockState:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmReportedDockState(Lcom/android/server/DockObserver;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/server/DockObserver;->mReportedDockState:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmUpdatesStopped(Lcom/android/server/DockObserver;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/server/DockObserver;->mUpdatesStopped:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmUpdatesStopped(Lcom/android/server/DockObserver;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/server/DockObserver;->mUpdatesStopped:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$msetDockStateFromProviderLocked(Lcom/android/server/DockObserver;Lcom/android/server/DockObserver$ExtconStateProvider;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/DockObserver;->setDockStateFromProviderLocked(Lcom/android/server/DockObserver$ExtconStateProvider;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetDockStateLocked(Lcom/android/server/DockObserver;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/DockObserver;->setDockStateLocked(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateIfDockedLocked(Lcom/android/server/DockObserver;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/DockObserver;->updateIfDockedLocked()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .line 172
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 63
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/DockObserver;->mLock:Ljava/lang/Object;

    .line 67
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/DockObserver;->mActualDockState:I

    .line 70
    iput v0, p0, Lcom/android/server/DockObserver;->mReportedDockState:I

    .line 73
    iput v0, p0, Lcom/android/server/DockObserver;->mPreviousDockState:I

    .line 364
    new-instance v1, Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Z)V

    iput-object v1, p0, Lcom/android/server/DockObserver;->mHandler:Landroid/os/Handler;

    .line 401
    new-instance v1, Lcom/android/server/DockObserver$1;

    invoke-direct {v1, p0}, Lcom/android/server/DockObserver$1;-><init>(Lcom/android/server/DockObserver;)V

    iput-object v1, p0, Lcom/android/server/DockObserver;->mExtconUEventObserver:Lcom/android/server/ExtconUEventObserver;

    .line 174
    const-string/jumbo v1, "power"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    iput-object v1, p0, Lcom/android/server/DockObserver;->mPowerManager:Landroid/os/PowerManager;

    .line 175
    iget-object v1, p0, Lcom/android/server/DockObserver;->mPowerManager:Landroid/os/PowerManager;

    const-string v3, "DockObserver"

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/DockObserver;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 176
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1110026

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/DockObserver;->mAllowTheaterModeWakeFromDock:Z

    .line 178
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x11101d4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/DockObserver;->mKeepDreamingWhenUnplugging:Z

    .line 180
    new-instance v1, Lcom/android/server/DockObserver$DeviceProvisionedObserver;

    iget-object v2, p0, Lcom/android/server/DockObserver;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, p0, v2}, Lcom/android/server/DockObserver$DeviceProvisionedObserver;-><init>(Lcom/android/server/DockObserver;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/server/DockObserver;->mDeviceProvisionedObserver:Lcom/android/server/DockObserver$DeviceProvisionedObserver;

    .line 182
    invoke-static {p1}, Lcom/android/server/DockObserver;->loadExtconStateConfigs(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/DockObserver;->mExtconStateConfigs:Ljava/util/List;

    .line 184
    const-string v1, "DOCK"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/ExtconUEventObserver$ExtconInfo;->getExtconInfoForTypes([Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 188
    .local v1, "infos":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/ExtconUEventObserver$ExtconInfo;>;"
    iget-object v2, p0, Lcom/android/server/DockObserver;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 189
    :try_start_0
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 190
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/ExtconUEventObserver$ExtconInfo;

    .line 191
    .local v0, "info":Lcom/android/server/ExtconUEventObserver$ExtconInfo;
    const-string v3, "DockObserver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Found extcon info devPath: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    invoke-virtual {v0}, Lcom/android/server/ExtconUEventObserver$ExtconInfo;->getDevicePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", statePath: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    invoke-virtual {v0}, Lcom/android/server/ExtconUEventObserver$ExtconInfo;->getStatePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 191
    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    invoke-virtual {v0}, Lcom/android/server/ExtconUEventObserver$ExtconInfo;->getStatePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/DockObserver$ExtconStateProvider;->fromFile(Ljava/lang/String;)Lcom/android/server/DockObserver$ExtconStateProvider;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/server/DockObserver;->setDockStateFromProviderLocked(Lcom/android/server/DockObserver$ExtconStateProvider;)V

    .line 200
    iget v3, p0, Lcom/android/server/DockObserver;->mActualDockState:I

    iput v3, p0, Lcom/android/server/DockObserver;->mPreviousDockState:I

    .line 202
    iget-object v3, p0, Lcom/android/server/DockObserver;->mExtconUEventObserver:Lcom/android/server/ExtconUEventObserver;

    invoke-virtual {v3, v0}, Lcom/android/server/ExtconUEventObserver;->startObserving(Lcom/android/server/ExtconUEventObserver$ExtconInfo;)V

    .line 203
    .end local v0    # "info":Lcom/android/server/ExtconUEventObserver$ExtconInfo;
    goto :goto_0

    .line 206
    :catchall_0
    move-exception v0

    goto :goto_1

    .line 204
    :cond_0
    const-string v0, "DockObserver"

    const-string v3, "No extcon dock device found in this kernel."

    invoke-static {v0, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    :goto_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 208
    new-instance v0, Lcom/android/server/DockObserver$DockObserverLocalService;

    invoke-direct {v0, p0}, Lcom/android/server/DockObserver$DockObserverLocalService;-><init>(Lcom/android/server/DockObserver;)V

    iput-object v0, p0, Lcom/android/server/DockObserver;->mDockObserverLocalService:Lcom/android/server/DockObserver$DockObserverLocalService;

    .line 209
    const-class v0, Lcom/android/server/DockObserverInternal;

    iget-object v2, p0, Lcom/android/server/DockObserver;->mDockObserverLocalService:Lcom/android/server/DockObserver$DockObserverLocalService;

    invoke-static {v0, v2}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 210
    return-void

    .line 206
    :goto_1
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private allowWakeFromDock()Z
    .locals 3

    .line 272
    iget-boolean v0, p0, Lcom/android/server/DockObserver;->mKeepDreamingWhenUnplugging:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 273
    return v1

    .line 275
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/DockObserver;->mAllowTheaterModeWakeFromDock:Z

    if-nez v0, :cond_1

    .line 276
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v2, "theater_mode_on"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    const/4 v1, 0x1

    .line 275
    :cond_2
    return v1
.end method

.method private getDockedStateExtraValue(Lcom/android/server/DockObserver$ExtconStateProvider;)I
    .locals 8
    .param p1, "state"    # Lcom/android/server/DockObserver$ExtconStateProvider;

    .line 367
    iget-object v0, p0, Lcom/android/server/DockObserver;->mExtconStateConfigs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/DockObserver$ExtconStateConfig;

    .line 368
    .local v1, "config":Lcom/android/server/DockObserver$ExtconStateConfig;
    const/4 v3, 0x1

    .line 369
    .local v3, "match":Z
    iget-object v4, v1, Lcom/android/server/DockObserver$ExtconStateConfig;->keyValuePairs:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    nop

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/Pair;

    .line 370
    .local v5, "keyValue":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v6, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    invoke-virtual {p1, v6}, Lcom/android/server/DockObserver$ExtconStateProvider;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 371
    .local v6, "stateValue":Ljava/lang/String;
    if-eqz v3, :cond_0

    iget-object v7, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    move v7, v2

    goto :goto_2

    :cond_0
    const/4 v7, 0x0

    :goto_2
    move v3, v7

    .line 372
    if-nez v3, :cond_1

    .line 373
    goto :goto_3

    .line 372
    :cond_1
    nop

    .line 375
    .end local v5    # "keyValue":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v6    # "stateValue":Ljava/lang/String;
    goto :goto_1

    .line 377
    :cond_2
    :goto_3
    if-eqz v3, :cond_3

    .line 378
    iget v0, v1, Lcom/android/server/DockObserver$ExtconStateConfig;->extraStateValue:I

    return v0

    .line 377
    :cond_3
    nop

    .line 380
    .end local v1    # "config":Lcom/android/server/DockObserver$ExtconStateConfig;
    .end local v3    # "match":Z
    goto :goto_0

    .line 382
    :cond_4
    return v2
.end method

.method private handleDockStateChange()V
    .locals 15

    .line 285
    iget-object v0, p0, Lcom/android/server/DockObserver;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 286
    :try_start_0
    const-string v1, "DockObserver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Dock state changed from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/DockObserver;->mPreviousDockState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/DockObserver;->mReportedDockState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    iget v1, p0, Lcom/android/server/DockObserver;->mPreviousDockState:I

    .line 289
    .local v1, "previousDockState":I
    iget v2, p0, Lcom/android/server/DockObserver;->mReportedDockState:I

    iput v2, p0, Lcom/android/server/DockObserver;->mPreviousDockState:I

    .line 291
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 294
    .local v2, "cr":Landroid/content/ContentResolver;
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 295
    .local v3, "r":Landroid/content/res/Resources;
    nop

    .line 296
    const v4, 0x111001d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    .line 297
    .local v4, "allowDockBeforeProvision":Z
    if-nez v4, :cond_0

    .line 299
    iget-object v5, p0, Lcom/android/server/DockObserver;->mDeviceProvisionedObserver:Lcom/android/server/DockObserver$DeviceProvisionedObserver;

    invoke-virtual {v5}, Lcom/android/server/DockObserver$DeviceProvisionedObserver;->isDeviceProvisioned()Z

    move-result v5

    if-nez v5, :cond_0

    .line 300
    const-string v5, "DockObserver"

    const-string v6, "Device not provisioned, skipping dock broadcast"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    monitor-exit v0

    return-void

    .line 361
    .end local v1    # "previousDockState":I
    .end local v2    # "cr":Landroid/content/ContentResolver;
    .end local v3    # "r":Landroid/content/res/Resources;
    .end local v4    # "allowDockBeforeProvision":Z
    :catchall_0
    move-exception v1

    goto/16 :goto_5

    .line 306
    .restart local v1    # "previousDockState":I
    .restart local v2    # "cr":Landroid/content/ContentResolver;
    .restart local v3    # "r":Landroid/content/res/Resources;
    .restart local v4    # "allowDockBeforeProvision":Z
    :cond_0
    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.intent.action.DOCK_EVENT"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 307
    .local v5, "intent":Landroid/content/Intent;
    const/high16 v6, 0x20000000

    invoke-virtual {v5, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 308
    const-string v6, "android.intent.extra.DOCK_STATE"

    iget v7, p0, Lcom/android/server/DockObserver;->mReportedDockState:I

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 310
    const-string v6, "dock_sounds_enabled"

    const/4 v7, 0x1

    invoke-static {v2, v6, v7}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    const/4 v8, 0x0

    if-ne v6, v7, :cond_1

    move v6, v7

    goto :goto_0

    :cond_1
    move v6, v8

    .line 312
    .local v6, "dockSoundsEnabled":Z
    :goto_0
    const-string v9, "dock_sounds_enabled_when_accessbility"

    invoke-static {v2, v9, v7}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-ne v9, v7, :cond_2

    move v9, v7

    goto :goto_1

    :cond_2
    move v9, v8

    .line 314
    .local v9, "dockSoundsEnabledWhenAccessibility":Z
    :goto_1
    const-string v10, "accessibility_enabled"

    invoke-static {v2, v10, v8}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    if-ne v10, v7, :cond_3

    move v8, v7

    .line 319
    .local v8, "accessibilityEnabled":Z
    :cond_3
    if-nez v6, :cond_4

    if-eqz v8, :cond_b

    if-eqz v9, :cond_b

    .line 321
    :cond_4
    const/4 v10, 0x0

    .line 322
    .local v10, "whichSound":Ljava/lang/String;
    iget v11, p0, Lcom/android/server/DockObserver;->mReportedDockState:I

    const/4 v12, 0x2

    const/4 v13, 0x4

    const/4 v14, 0x3

    if-nez v11, :cond_7

    .line 323
    if-eq v1, v7, :cond_5

    if-eq v1, v14, :cond_5

    if-ne v1, v13, :cond_6

    :cond_5
    goto :goto_2

    .line 327
    :cond_6
    if-ne v1, v12, :cond_a

    .line 328
    const-string v11, "car_undock_sound"

    move-object v10, v11

    goto :goto_4

    .line 326
    :goto_2
    const-string v11, "desk_undock_sound"

    move-object v10, v11

    goto :goto_4

    .line 331
    :cond_7
    iget v11, p0, Lcom/android/server/DockObserver;->mReportedDockState:I

    if-eq v11, v7, :cond_8

    iget v11, p0, Lcom/android/server/DockObserver;->mReportedDockState:I

    if-eq v11, v14, :cond_8

    iget v11, p0, Lcom/android/server/DockObserver;->mReportedDockState:I

    if-ne v11, v13, :cond_9

    :cond_8
    goto :goto_3

    .line 335
    :cond_9
    iget v11, p0, Lcom/android/server/DockObserver;->mReportedDockState:I

    if-ne v11, v12, :cond_a

    .line 336
    const-string v11, "car_dock_sound"

    move-object v10, v11

    goto :goto_4

    .line 334
    :goto_3
    const-string v11, "desk_dock_sound"

    move-object v10, v11

    .line 340
    :cond_a
    :goto_4
    if-eqz v10, :cond_b

    .line 341
    invoke-static {v2, v10}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 342
    .local v11, "soundPath":Ljava/lang/String;
    if-eqz v11, :cond_b

    .line 343
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "file://"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    .line 344
    .local v12, "soundUri":Landroid/net/Uri;
    if-eqz v12, :cond_b

    .line 345
    nop

    .line 346
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v13

    .line 345
    invoke-static {v13, v12}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v13

    .line 347
    .local v13, "sfx":Landroid/media/Ringtone;
    if-eqz v13, :cond_b

    .line 348
    invoke-virtual {v13, v7}, Landroid/media/Ringtone;->setStreamType(I)V

    .line 349
    invoke-virtual {v13, v7}, Landroid/media/Ringtone;->preferBuiltinDevice(Z)Z

    .line 350
    invoke-virtual {v13}, Landroid/media/Ringtone;->play()V

    .line 360
    .end local v10    # "whichSound":Ljava/lang/String;
    .end local v11    # "soundPath":Ljava/lang/String;
    .end local v12    # "soundUri":Landroid/net/Uri;
    .end local v13    # "sfx":Landroid/media/Ringtone;
    :cond_b
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v7

    sget-object v10, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v7, v5, v10}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 361
    .end local v1    # "previousDockState":I
    .end local v2    # "cr":Landroid/content/ContentResolver;
    .end local v3    # "r":Landroid/content/res/Resources;
    .end local v4    # "allowDockBeforeProvision":Z
    .end local v5    # "intent":Landroid/content/Intent;
    .end local v6    # "dockSoundsEnabled":Z
    .end local v8    # "accessibilityEnabled":Z
    .end local v9    # "dockSoundsEnabledWhenAccessibility":Z
    monitor-exit v0

    .line 362
    return-void

    .line 361
    :goto_5
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static loadExtconStateConfigs(Landroid/content/Context;)Ljava/util/List;
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/server/DockObserver$ExtconStateConfig;",
            ">;"
        }
    .end annotation

    .line 148
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1070069

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 151
    .local v0, "rows":[Ljava/lang/String;
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 152
    .local v1, "configs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/DockObserver$ExtconStateConfig;>;"
    array-length v2, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_2

    aget-object v5, v0, v4

    .line 153
    .local v5, "row":Ljava/lang/String;
    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 154
    .local v6, "rowFields":[Ljava/lang/String;
    new-instance v7, Lcom/android/server/DockObserver$ExtconStateConfig;

    aget-object v8, v6, v3

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-direct {v7, v8}, Lcom/android/server/DockObserver$ExtconStateConfig;-><init>(I)V

    .line 155
    .local v7, "config":Lcom/android/server/DockObserver$ExtconStateConfig;
    const/4 v8, 0x1

    .local v8, "i":I
    :goto_1
    array-length v9, v6

    if-ge v8, v9, :cond_1

    .line 156
    aget-object v9, v6, v8

    const-string v10, "="

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 157
    .local v9, "keyValueFields":[Ljava/lang/String;
    array-length v10, v9

    const/4 v11, 0x2

    if-ne v10, v11, :cond_0

    .line 160
    iget-object v10, v7, Lcom/android/server/DockObserver$ExtconStateConfig;->keyValuePairs:Ljava/util/List;

    aget-object v11, v9, v3

    const/4 v12, 0x1

    aget-object v12, v9, v12

    invoke-static {v11, v12}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 155
    nop

    .end local v9    # "keyValueFields":[Ljava/lang/String;
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 165
    .end local v1    # "configs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/DockObserver$ExtconStateConfig;>;"
    .end local v5    # "row":Ljava/lang/String;
    .end local v6    # "rowFields":[Ljava/lang/String;
    .end local v7    # "config":Lcom/android/server/DockObserver$ExtconStateConfig;
    .end local v8    # "i":I
    :catch_0
    move-exception v1

    goto :goto_2

    .line 158
    .restart local v1    # "configs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/DockObserver$ExtconStateConfig;>;"
    .restart local v5    # "row":Ljava/lang/String;
    .restart local v6    # "rowFields":[Ljava/lang/String;
    .restart local v7    # "config":Lcom/android/server/DockObserver$ExtconStateConfig;
    .restart local v8    # "i":I
    .restart local v9    # "keyValueFields":[Ljava/lang/String;
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid key-value: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, v6, v8

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v0    # "rows":[Ljava/lang/String;
    .end local p0    # "context":Landroid/content/Context;
    throw v2

    .line 155
    .end local v9    # "keyValueFields":[Ljava/lang/String;
    .restart local v0    # "rows":[Ljava/lang/String;
    .restart local p0    # "context":Landroid/content/Context;
    :cond_1
    nop

    .line 162
    .end local v8    # "i":I
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 152
    nop

    .end local v5    # "row":Ljava/lang/String;
    .end local v6    # "rowFields":[Ljava/lang/String;
    .end local v7    # "config":Lcom/android/server/DockObserver$ExtconStateConfig;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 164
    :cond_2
    return-object v1

    .line 165
    .end local v1    # "configs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/DockObserver$ExtconStateConfig;>;"
    :goto_2
    nop

    .line 166
    .local v1, "e":Ljava/lang/RuntimeException;
    const-string v2, "DockObserver"

    const-string v3, "Could not parse extcon state config"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 167
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    return-object v2
.end method

.method private postWakefulDockStateChange()V
    .locals 3

    .line 281
    iget-object v0, p0, Lcom/android/server/DockObserver;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/DockObserver;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    new-instance v2, Lcom/android/server/DockObserver$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/android/server/DockObserver$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/DockObserver;)V

    invoke-virtual {v1, v2}, Landroid/os/PowerManager$WakeLock;->wrap(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 282
    return-void
.end method

.method private setActualDockStateLocked(I)V
    .locals 1
    .param p1, "newState"    # I

    .line 245
    iput p1, p0, Lcom/android/server/DockObserver;->mActualDockState:I

    .line 246
    iget-boolean v0, p0, Lcom/android/server/DockObserver;->mUpdatesStopped:Z

    if-nez v0, :cond_0

    .line 247
    invoke-direct {p0, p1}, Lcom/android/server/DockObserver;->setDockStateLocked(I)V

    .line 249
    :cond_0
    return-void
.end method

.method private setDockStateFromProviderLocked(Lcom/android/server/DockObserver$ExtconStateProvider;)V
    .locals 3
    .param p1, "provider"    # Lcom/android/server/DockObserver$ExtconStateProvider;

    .line 394
    const/4 v0, 0x0

    .line 395
    .local v0, "state":I
    const-string v1, "DOCK"

    invoke-virtual {p1, v1}, Lcom/android/server/DockObserver$ExtconStateProvider;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 396
    invoke-direct {p0, p1}, Lcom/android/server/DockObserver;->getDockedStateExtraValue(Lcom/android/server/DockObserver$ExtconStateProvider;)I

    move-result v0

    .line 398
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/server/DockObserver;->setActualDockStateLocked(I)V

    .line 399
    return-void
.end method

.method private setDockStateLocked(I)V
    .locals 5
    .param p1, "newState"    # I

    .line 253
    iget v0, p0, Lcom/android/server/DockObserver;->mReportedDockState:I

    if-eq p1, v0, :cond_1

    .line 254
    iput p1, p0, Lcom/android/server/DockObserver;->mReportedDockState:I

    .line 257
    const/16 v0, 0x1d6

    iget v1, p0, Lcom/android/server/DockObserver;->mReportedDockState:I

    invoke-static {v0, v1}, Lcom/android/internal/util/FrameworkStatsLog;->write(II)V

    .line 258
    iget-boolean v0, p0, Lcom/android/server/DockObserver;->mSystemReady:Z

    if-eqz v0, :cond_1

    .line 260
    invoke-direct {p0}, Lcom/android/server/DockObserver;->allowWakeFromDock()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 261
    iget-object v0, p0, Lcom/android/server/DockObserver;->mPowerManager:Landroid/os/PowerManager;

    .line 262
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 261
    const/16 v3, 0x12

    const-string v4, "android.server:DOCK"

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/PowerManager;->wakeUp(JILjava/lang/String;)V

    .line 266
    :cond_0
    invoke-direct {p0}, Lcom/android/server/DockObserver;->postWakefulDockStateChange()V

    .line 269
    :cond_1
    return-void
.end method

.method private updateIfDockedLocked()V
    .locals 1

    .line 238
    iget v0, p0, Lcom/android/server/DockObserver;->mReportedDockState:I

    if-eqz v0, :cond_0

    .line 239
    invoke-direct {p0}, Lcom/android/server/DockObserver;->postWakefulDockStateChange()V

    .line 241
    :cond_0
    return-void
.end method


# virtual methods
.method public onBootPhase(I)V
    .locals 2
    .param p1, "phase"    # I

    .line 226
    const/16 v0, 0x226

    if-ne p1, v0, :cond_0

    .line 227
    iget-object v0, p0, Lcom/android/server/DockObserver;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 228
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/android/server/DockObserver;->mSystemReady:Z

    .line 229
    iget-object v1, p0, Lcom/android/server/DockObserver;->mDeviceProvisionedObserver:Lcom/android/server/DockObserver$DeviceProvisionedObserver;

    invoke-virtual {v1}, Lcom/android/server/DockObserver$DeviceProvisionedObserver;->onSystemReady()V

    .line 230
    invoke-direct {p0}, Lcom/android/server/DockObserver;->updateIfDockedLocked()V

    .line 231
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 233
    :cond_0
    :goto_0
    return-void
.end method

.method public onStart()V
    .locals 2

    .line 221
    new-instance v0, Lcom/android/server/DockObserver$BinderService;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/DockObserver$BinderService;-><init>(Lcom/android/server/DockObserver;Lcom/android/server/DockObserver-IA;)V

    const-string v1, "DockObserver"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 222
    return-void
.end method

.method setDockStateFromProviderForTesting(Lcom/android/server/DockObserver$ExtconStateProvider;)V
    .locals 2
    .param p1, "provider"    # Lcom/android/server/DockObserver$ExtconStateProvider;

    .line 387
    iget-object v0, p0, Lcom/android/server/DockObserver;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 388
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/DockObserver;->setDockStateFromProviderLocked(Lcom/android/server/DockObserver$ExtconStateProvider;)V

    .line 389
    monitor-exit v0

    .line 390
    return-void

    .line 389
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
