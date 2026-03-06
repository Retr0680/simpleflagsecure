.class public final Lcom/android/server/TradeInModeService;
.super Lcom/android/server/SystemService;
.source "TradeInModeService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/TradeInModeService$TradeInMode;,
        Lcom/android/server/TradeInModeService$SettingsObserver;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TradeInModeService"

.field private static final TIM_PROP:Ljava/lang/String; = "persist.adb.tradeinmode"

.field private static final TIM_STATE_DISABLED:I = -0x1

.field private static final TIM_STATE_EVALUATION_MODE:I = 0x2

.field private static final TIM_STATE_FOYER:I = 0x1

.field private static final TIM_STATE_UNSET:I = 0x0

.field private static final TIM_TEST_PROP:Ljava/lang/String; = "persist.adb.test_tradeinmode"

.field private static final WIPE_INDICATOR_FILE:Ljava/lang/String; = "/metadata/tradeinmode/wipe"


# instance fields
.field private mAccountManager:Landroid/accounts/AccountManager;

.field private mAccountsListener:Landroid/accounts/OnAccountsUpdateListener;

.field private mConnectivityManager:Landroid/net/ConnectivityManager;

.field private final mContext:Landroid/content/Context;

.field private mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

.field private mTradeInMode:Lcom/android/server/TradeInModeService$TradeInMode;


# direct methods
.method static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/TradeInModeService;)Landroid/content/Context;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/TradeInModeService;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$menterTestMode(Lcom/android/server/TradeInModeService;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/TradeInModeService;->enterTestMode()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mgetTradeInModeState(Lcom/android/server/TradeInModeService;)I
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/TradeInModeService;->getTradeInModeState()I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$misAdbEnabled(Lcom/android/server/TradeInModeService;)Z
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/TradeInModeService;->isAdbEnabled()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$misDebuggable(Lcom/android/server/TradeInModeService;)Z
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/TradeInModeService;->isDebuggable()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$misDeviceSetup(Lcom/android/server/TradeInModeService;)Z
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/TradeInModeService;->isDeviceSetup()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$misForceEnabledForTesting(Lcom/android/server/TradeInModeService;)Z
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/TradeInModeService;->isForceEnabledForTesting()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$misFrpActive(Lcom/android/server/TradeInModeService;)Z
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/TradeInModeService;->isFrpActive()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mleaveTestMode(Lcom/android/server/TradeInModeService;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/TradeInModeService;->leaveTestMode()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mremoveAccountsWatch(Lcom/android/server/TradeInModeService;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/TradeInModeService;->removeAccountsWatch()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mremoveNetworkWatch(Lcom/android/server/TradeInModeService;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/TradeInModeService;->removeNetworkWatch()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mrestartAdbd(Lcom/android/server/TradeInModeService;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/TradeInModeService;->restartAdbd()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mscheduleTradeInModeWipe(Lcom/android/server/TradeInModeService;)Z
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/TradeInModeService;->scheduleTradeInModeWipe()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mstartTradeInMode(Lcom/android/server/TradeInModeService;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/TradeInModeService;->startTradeInMode()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mstopTradeInMode(Lcom/android/server/TradeInModeService;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/TradeInModeService;->stopTradeInMode()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 78
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 72
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/TradeInModeService;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 75
    iput-object v0, p0, Lcom/android/server/TradeInModeService;->mAccountsListener:Landroid/accounts/OnAccountsUpdateListener;

    .line 80
    iput-object p1, p0, Lcom/android/server/TradeInModeService;->mContext:Landroid/content/Context;

    .line 81
    return-void
.end method

.method private enterTestMode()V
    .locals 2

    .line 285
    const-string/jumbo v0, "persist.adb.test_tradeinmode"

    const-string v1, "1"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "persist.adb.tradeinmode"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    return-void
.end method

.method private getTradeInModeState()I
    .locals 2

    .line 324
    const-string/jumbo v0, "persist.adb.tradeinmode"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private isAdbEnabled()Z
    .locals 4

    .line 336
    iget-object v0, p0, Lcom/android/server/TradeInModeService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 337
    .local v0, "cr":Landroid/content/ContentResolver;
    const-string v1, "adb_enabled"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    move v2, v3

    :cond_0
    return v2
.end method

.method private isDebuggable()Z
    .locals 3

    .line 328
    const-string/jumbo v0, "ro.debuggable"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v1, v2

    :cond_0
    return v1
.end method

.method private isDeviceSetup()Z
    .locals 6

    .line 357
    iget-object v0, p0, Lcom/android/server/TradeInModeService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 359
    .local v0, "cr":Landroid/content/ContentResolver;
    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_0
    const-string/jumbo v3, "user_setup_complete"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v3, :cond_0

    .line 360
    return v1

    .line 364
    :cond_0
    goto :goto_0

    .line 362
    :catch_0
    move-exception v3

    .line 363
    .local v3, "e":Landroid/provider/Settings$SettingNotFoundException;
    const-string v4, "TradeInModeService"

    const-string v5, "Could not find USER_SETUP_COMPLETE setting"

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 366
    .end local v3    # "e":Landroid/provider/Settings$SettingNotFoundException;
    :goto_0
    const-string v3, "device_provisioned"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_1

    .line 367
    return v1

    .line 369
    :cond_1
    return v2
.end method

.method private isForceEnabledForTesting()Z
    .locals 3

    .line 332
    invoke-direct {p0}, Lcom/android/server/TradeInModeService;->isDebuggable()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "persist.adb.test_tradeinmode"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v1, v2

    :cond_0
    return v1
.end method

.method private isFrpActive()Z
    .locals 4

    .line 342
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/TradeInModeService;->mContext:Landroid/content/Context;

    const-class v2, Landroid/service/persistentdata/PersistentDataBlockManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/service/persistentdata/PersistentDataBlockManager;

    .line 343
    .local v1, "pdb":Landroid/service/persistentdata/PersistentDataBlockManager;
    if-nez v1, :cond_0

    .line 344
    return v0

    .line 346
    :cond_0
    invoke-virtual {v1}, Landroid/service/persistentdata/PersistentDataBlockManager;->isFactoryResetProtectionActive()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 347
    .end local v1    # "pdb":Landroid/service/persistentdata/PersistentDataBlockManager;
    :catch_0
    move-exception v1

    .line 348
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "TradeInModeService"

    const-string v3, "Could not read PDB"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 349
    return v0
.end method

.method private leaveTestMode()V
    .locals 3

    .line 290
    invoke-direct {p0}, Lcom/android/server/TradeInModeService;->getTradeInModeState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 291
    invoke-direct {p0}, Lcom/android/server/TradeInModeService;->stopTradeInMode()V

    .line 294
    :cond_0
    const-string/jumbo v0, "persist.adb.test_tradeinmode"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    const-string/jumbo v0, "persist.adb.tradeinmode"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    :try_start_0
    const-string v0, "/metadata/tradeinmode/wipe"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v0

    invoke-static {v0}, Ljava/nio/file/Files;->deleteIfExists(Ljava/nio/file/Path;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 300
    goto :goto_0

    .line 298
    :catch_0
    move-exception v0

    .line 299
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "TradeInModeService"

    const-string v2, "Failed to remove wipe indicator"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 301
    .end local v0    # "e":Ljava/io/IOException;
    :goto_0
    return-void
.end method

.method private removeAccountsWatch()V
    .locals 2

    .line 435
    iget-object v0, p0, Lcom/android/server/TradeInModeService;->mAccountsListener:Landroid/accounts/OnAccountsUpdateListener;

    if-eqz v0, :cond_0

    .line 436
    iget-object v0, p0, Lcom/android/server/TradeInModeService;->mAccountManager:Landroid/accounts/AccountManager;

    iget-object v1, p0, Lcom/android/server/TradeInModeService;->mAccountsListener:Landroid/accounts/OnAccountsUpdateListener;

    invoke-virtual {v0, v1}, Landroid/accounts/AccountManager;->removeOnAccountsUpdatedListener(Landroid/accounts/OnAccountsUpdateListener;)V

    .line 437
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/TradeInModeService;->mAccountsListener:Landroid/accounts/OnAccountsUpdateListener;

    .line 439
    :cond_0
    return-void
.end method

.method private removeNetworkWatch()V
    .locals 2

    .line 417
    iget-object v0, p0, Lcom/android/server/TradeInModeService;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    if-eqz v0, :cond_0

    .line 418
    iget-object v0, p0, Lcom/android/server/TradeInModeService;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iget-object v1, p0, Lcom/android/server/TradeInModeService;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 419
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/TradeInModeService;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 421
    :cond_0
    return-void
.end method

.method private restartAdbd()V
    .locals 2

    .line 315
    const-string v0, "ctl.restart"

    const-string v1, "adbd"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    return-void
.end method

.method private scheduleTradeInModeWipe()Z
    .locals 3

    .line 304
    :try_start_0
    new-instance v0, Ljava/io/FileWriter;

    const-string v1, "/metadata/tradeinmode/wipe"

    sget-object v2, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-direct {v0, v1, v2}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;Ljava/nio/charset/Charset;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 306
    .local v0, "fw":Ljava/io/FileWriter;
    :try_start_1
    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 307
    :try_start_2
    invoke-virtual {v0}, Ljava/io/FileWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 310
    .end local v0    # "fw":Ljava/io/FileWriter;
    nop

    .line 311
    const/4 v0, 0x1

    return v0

    .line 307
    :catch_0
    move-exception v0

    goto :goto_1

    .line 304
    .restart local v0    # "fw":Ljava/io/FileWriter;
    :catchall_0
    move-exception v1

    :try_start_3
    invoke-virtual {v0}, Ljava/io/FileWriter;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v2

    :try_start_4
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p0    # "this":Lcom/android/server/TradeInModeService;
    :goto_0
    throw v1
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 307
    .end local v0    # "fw":Ljava/io/FileWriter;
    .restart local p0    # "this":Lcom/android/server/TradeInModeService;
    :goto_1
    nop

    .line 308
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "TradeInModeService"

    const-string v2, "Failed to write /metadata/tradeinmode/wipe"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 309
    const/4 v1, 0x0

    return v1
.end method

.method private setAdbEnabled(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .line 319
    iget-object v0, p0, Lcom/android/server/TradeInModeService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 320
    .local v0, "cr":Landroid/content/ContentResolver;
    const-string v1, "adb_enabled"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 321
    return-void
.end method

.method private startTradeInMode()V
    .locals 3

    .line 256
    const-string v0, "TradeInModeService"

    const-string v1, "Enabling trade-in mode."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "persist.adb.tradeinmode"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    invoke-direct {p0, v0}, Lcom/android/server/TradeInModeService;->setAdbEnabled(Z)V

    .line 262
    invoke-direct {p0}, Lcom/android/server/TradeInModeService;->watchForSetupCompletion()V

    .line 263
    invoke-direct {p0}, Lcom/android/server/TradeInModeService;->watchForNetworkChange()V

    .line 264
    invoke-direct {p0}, Lcom/android/server/TradeInModeService;->watchForAccountsCreated()V

    .line 265
    return-void
.end method

.method private stopTradeInMode()V
    .locals 2

    .line 268
    const-string v0, "TradeInModeService"

    const-string v1, "Stopping trade-in mode."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "persist.adb.tradeinmode"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    invoke-direct {p0}, Lcom/android/server/TradeInModeService;->removeNetworkWatch()V

    .line 273
    invoke-direct {p0}, Lcom/android/server/TradeInModeService;->removeAccountsWatch()V

    .line 275
    invoke-direct {p0}, Lcom/android/server/TradeInModeService;->isForceEnabledForTesting()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 277
    invoke-direct {p0}, Lcom/android/server/TradeInModeService;->restartAdbd()V

    goto :goto_0

    .line 280
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/TradeInModeService;->setAdbEnabled(Z)V

    .line 282
    :goto_0
    return-void
.end method

.method private watchForAccountsCreated()V
    .locals 4

    .line 424
    iget-object v0, p0, Lcom/android/server/TradeInModeService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/accounts/AccountManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/AccountManager;

    iput-object v0, p0, Lcom/android/server/TradeInModeService;->mAccountManager:Landroid/accounts/AccountManager;

    .line 425
    new-instance v0, Lcom/android/server/TradeInModeService$2;

    invoke-direct {v0, p0}, Lcom/android/server/TradeInModeService$2;-><init>(Lcom/android/server/TradeInModeService;)V

    iput-object v0, p0, Lcom/android/server/TradeInModeService;->mAccountsListener:Landroid/accounts/OnAccountsUpdateListener;

    .line 431
    iget-object v0, p0, Lcom/android/server/TradeInModeService;->mAccountManager:Landroid/accounts/AccountManager;

    iget-object v1, p0, Lcom/android/server/TradeInModeService;->mAccountsListener:Landroid/accounts/OnAccountsUpdateListener;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/accounts/AccountManager;->addOnAccountsUpdatedListener(Landroid/accounts/OnAccountsUpdateListener;Landroid/os/Handler;Z)V

    .line 432
    return-void
.end method

.method private watchForNetworkChange()V
    .locals 3

    .line 398
    iget-object v0, p0, Lcom/android/server/TradeInModeService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/net/ConnectivityManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/android/server/TradeInModeService;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 399
    new-instance v0, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v0}, Landroid/net/NetworkRequest$Builder;-><init>()V

    .line 400
    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    .line 401
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    .line 402
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    .line 403
    invoke-virtual {v0}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v0

    .line 405
    .local v0, "networkRequest":Landroid/net/NetworkRequest;
    new-instance v1, Lcom/android/server/TradeInModeService$1;

    invoke-direct {v1, p0}, Lcom/android/server/TradeInModeService$1;-><init>(Lcom/android/server/TradeInModeService;)V

    iput-object v1, p0, Lcom/android/server/TradeInModeService;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 413
    iget-object v1, p0, Lcom/android/server/TradeInModeService;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iget-object v2, p0, Lcom/android/server/TradeInModeService;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v1, v0, v2}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 414
    return-void
.end method

.method private watchForSetupCompletion()V
    .locals 5

    .line 386
    const-string/jumbo v0, "user_setup_complete"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 388
    .local v0, "userSetupComplete":Landroid/net/Uri;
    const-string v1, "device_provisioned"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 390
    .local v1, "deviceProvisioned":Landroid/net/Uri;
    iget-object v2, p0, Lcom/android/server/TradeInModeService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 391
    .local v2, "cr":Landroid/content/ContentResolver;
    new-instance v3, Lcom/android/server/TradeInModeService$SettingsObserver;

    invoke-direct {v3, p0}, Lcom/android/server/TradeInModeService$SettingsObserver;-><init>(Lcom/android/server/TradeInModeService;)V

    .line 393
    .local v3, "observer":Lcom/android/server/TradeInModeService$SettingsObserver;
    const/4 v4, 0x0

    invoke-virtual {v2, v0, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 394
    invoke-virtual {v2, v1, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 395
    return-void
.end method


# virtual methods
.method public onBootPhase(I)V
    .locals 4
    .param p1, "phase"    # I

    .line 95
    const/16 v0, 0x1f4

    if-ne p1, v0, :cond_4

    .line 96
    invoke-direct {p0}, Lcom/android/server/TradeInModeService;->getTradeInModeState()I

    move-result v0

    .line 98
    .local v0, "state":I
    invoke-direct {p0}, Lcom/android/server/TradeInModeService;->isAdbEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/android/server/TradeInModeService;->isDebuggable()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-direct {p0}, Lcom/android/server/TradeInModeService;->isDeviceSetup()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 102
    const-string v1, "TradeInModeService"

    const-string v2, "Resetting trade-in mode state."

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    const-string/jumbo v1, "persist.adb.tradeinmode"

    const-string v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    iget-object v1, p0, Lcom/android/server/TradeInModeService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 106
    .local v1, "cr":Landroid/content/ContentResolver;
    const-string v2, "adb_enabled"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 107
    .end local v1    # "cr":Landroid/content/ContentResolver;
    :cond_0
    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 111
    invoke-direct {p0}, Lcom/android/server/TradeInModeService;->isDeviceSetup()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 112
    invoke-direct {p0}, Lcom/android/server/TradeInModeService;->stopTradeInMode()V

    goto :goto_0

    .line 113
    :cond_2
    invoke-direct {p0}, Lcom/android/server/TradeInModeService;->isDebuggable()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-direct {p0}, Lcom/android/server/TradeInModeService;->isForceEnabledForTesting()Z

    move-result v1

    if-nez v1, :cond_3

    .line 116
    invoke-direct {p0}, Lcom/android/server/TradeInModeService;->leaveTestMode()V

    goto :goto_0

    .line 118
    :cond_3
    invoke-direct {p0}, Lcom/android/server/TradeInModeService;->watchForSetupCompletion()V

    .line 119
    invoke-direct {p0}, Lcom/android/server/TradeInModeService;->watchForNetworkChange()V

    .line 120
    invoke-direct {p0}, Lcom/android/server/TradeInModeService;->watchForAccountsCreated()V

    .line 124
    .end local v0    # "state":I
    :cond_4
    :goto_0
    return-void
.end method

.method public onStart()V
    .locals 2

    .line 85
    nop

    .line 89
    new-instance v0, Lcom/android/server/TradeInModeService$TradeInMode;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/TradeInModeService$TradeInMode;-><init>(Lcom/android/server/TradeInModeService;Lcom/android/server/TradeInModeService-IA;)V

    iput-object v0, p0, Lcom/android/server/TradeInModeService;->mTradeInMode:Lcom/android/server/TradeInModeService$TradeInMode;

    .line 90
    const-string/jumbo v0, "tradeinmode"

    iget-object v1, p0, Lcom/android/server/TradeInModeService;->mTradeInMode:Lcom/android/server/TradeInModeService$TradeInMode;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 91
    return-void
.end method
