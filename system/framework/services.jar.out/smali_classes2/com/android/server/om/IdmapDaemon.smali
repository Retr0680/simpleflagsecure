.class Lcom/android/server/om/IdmapDaemon;
.super Ljava/lang/Object;
.source "IdmapDaemon.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/om/IdmapDaemon$Connection;
    }
.end annotation


# static fields
.field private static final IDMAP_DAEMON:Ljava/lang/String; = "idmap2d"

.field private static final SERVICE_CONNECT_INTERVAL_SLEEP_MS:I = 0x5

.field private static final SERVICE_CONNECT_UPTIME_TIMEOUT_MS:I = 0x1388

.field private static final SERVICE_CONNECT_WALLTIME_TIMEOUT_MS:I = 0x7530

.field private static final SERVICE_TIMEOUT_MS:I = 0x2710

.field private static sInstance:Lcom/android/server/om/IdmapDaemon;


# instance fields
.field private final mIdmapToken:Ljava/lang/Object;

.field private mOpenedCount:I

.field private volatile mService:Landroid/os/IIdmap2;


# direct methods
.method public static synthetic $r8$lambda$gF_qdnHUHUDllnxzP_BbWXzZv-I()V
    .locals 0

    .line 0
    invoke-static {}, Lcom/android/server/om/IdmapDaemon;->lambda$getIdmapServiceLocked$0()V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmIdmapToken(Lcom/android/server/om/IdmapDaemon;)Ljava/lang/Object;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/om/IdmapDaemon;->mIdmapToken:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmOpenedCount(Lcom/android/server/om/IdmapDaemon;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/server/om/IdmapDaemon;->mOpenedCount:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmService(Lcom/android/server/om/IdmapDaemon;)Landroid/os/IIdmap2;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/om/IdmapDaemon;->mService:Landroid/os/IIdmap2;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmOpenedCount(Lcom/android/server/om/IdmapDaemon;I)V
    .locals 0

    .line 0
    iput p1, p0, Lcom/android/server/om/IdmapDaemon;->mOpenedCount:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmService(Lcom/android/server/om/IdmapDaemon;Landroid/os/IIdmap2;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/server/om/IdmapDaemon;->mService:Landroid/os/IIdmap2;

    return-void
.end method

.method static bridge synthetic -$$Nest$smstopIdmapServiceLocked()V
    .locals 0

    .line 0
    invoke-static {}, Lcom/android/server/om/IdmapDaemon;->stopIdmapServiceLocked()V

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/om/IdmapDaemon;->mOpenedCount:I

    .line 71
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/om/IdmapDaemon;->mIdmapToken:Ljava/lang/Object;

    return-void
.end method

.method private connect()Lcom/android/server/om/IdmapDaemon$Connection;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/TimeoutException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 339
    iget-object v0, p0, Lcom/android/server/om/IdmapDaemon;->mIdmapToken:Ljava/lang/Object;

    monitor-enter v0

    .line 340
    :try_start_0
    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/om/IdmapDaemon;->mIdmapToken:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 341
    iget-object v1, p0, Lcom/android/server/om/IdmapDaemon;->mService:Landroid/os/IIdmap2;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 344
    new-instance v1, Lcom/android/server/om/IdmapDaemon$Connection;

    iget-object v3, p0, Lcom/android/server/om/IdmapDaemon;->mService:Landroid/os/IIdmap2;

    invoke-direct {v1, p0, v3, v2}, Lcom/android/server/om/IdmapDaemon$Connection;-><init>(Lcom/android/server/om/IdmapDaemon;Landroid/os/IIdmap2;Lcom/android/server/om/IdmapDaemon-IA;)V

    monitor-exit v0

    return-object v1

    .line 354
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 347
    :cond_0
    invoke-direct {p0}, Lcom/android/server/om/IdmapDaemon;->getIdmapServiceLocked()Landroid/os/IBinder;

    move-result-object v1

    .line 348
    .local v1, "binder":Landroid/os/IBinder;
    if-nez v1, :cond_1

    .line 349
    new-instance v3, Lcom/android/server/om/IdmapDaemon$Connection;

    invoke-direct {v3, p0, v2}, Lcom/android/server/om/IdmapDaemon$Connection;-><init>(Lcom/android/server/om/IdmapDaemon;Lcom/android/server/om/IdmapDaemon-IA;)V

    monitor-exit v0

    return-object v3

    .line 352
    :cond_1
    invoke-static {v1}, Landroid/os/IIdmap2$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IIdmap2;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/om/IdmapDaemon;->mService:Landroid/os/IIdmap2;

    .line 353
    new-instance v3, Lcom/android/server/om/IdmapDaemon$Connection;

    iget-object v4, p0, Lcom/android/server/om/IdmapDaemon;->mService:Landroid/os/IIdmap2;

    invoke-direct {v3, p0, v4, v2}, Lcom/android/server/om/IdmapDaemon$Connection;-><init>(Lcom/android/server/om/IdmapDaemon;Landroid/os/IIdmap2;Lcom/android/server/om/IdmapDaemon-IA;)V

    monitor-exit v0

    return-object v3

    .line 354
    .end local v1    # "binder":Landroid/os/IBinder;
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private getIdmapServiceLocked()Landroid/os/IBinder;
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/TimeoutException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 290
    const-string/jumbo v0, "idmap2d"

    :try_start_0
    invoke-static {v0}, Landroid/os/SystemService;->isRunning(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 291
    invoke-static {v0}, Landroid/os/SystemService;->start(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 293
    :catch_0
    move-exception v0

    goto :goto_1

    .line 298
    :cond_0
    :goto_0
    goto :goto_2

    .line 293
    :goto_1
    nop

    .line 294
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v1, "OverlayManager"

    const-string v2, "Failed to enable idmap2 daemon"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 295
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "failed to set system property"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 296
    const/4 v1, 0x0

    return-object v1

    .line 300
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :cond_1
    :goto_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 301
    .local v0, "uptimeMillis":J
    const-wide/16 v2, 0x1388

    add-long v4, v0, v2

    .line 302
    .local v4, "endUptimeMillis":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 303
    .local v6, "walltimeMillis":J
    const-wide/16 v8, 0x7530

    add-long v10, v6, v8

    .line 306
    .local v10, "endWalltimeMillis":J
    :goto_3
    const-string/jumbo v12, "idmap"

    invoke-static {v12}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v13

    .line 307
    .local v13, "binder":Landroid/os/IBinder;
    if-eqz v13, :cond_2

    .line 308
    new-instance v2, Lcom/android/server/om/IdmapDaemon$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Lcom/android/server/om/IdmapDaemon$$ExternalSyntheticLambda0;-><init>()V

    const/4 v3, 0x0

    invoke-interface {v13, v2, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 311
    return-object v13

    .line 313
    :cond_2
    const-wide/16 v14, 0x5

    invoke-static {v14, v15}, Landroid/os/SystemClock;->sleep(J)V

    .line 314
    .end local v13    # "binder":Landroid/os/IBinder;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v13

    move-wide v0, v13

    cmp-long v13, v13, v4

    if-gtz v13, :cond_3

    .line 315
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v13

    move-wide v6, v13

    cmp-long v13, v13, v10

    if-gtz v13, :cond_3

    goto :goto_3

    .line 317
    :cond_3
    new-instance v13, Ljava/util/concurrent/TimeoutException;

    .line 319
    const/16 v14, 0x1388

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    .line 320
    const/16 v15, 0x7530

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    sub-long v16, v0, v4

    add-long v16, v16, v2

    .line 321
    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    sub-long v16, v6, v10

    add-long v16, v16, v8

    .line 322
    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    filled-new-array {v12, v14, v15, v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    .line 318
    const-string v3, "Failed to connect to \'%s\' in %d/%d ms (spent %d/%d ms)"

    invoke-static {v3, v2}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v13, v2}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    throw v13
.end method

.method static getInstance()Lcom/android/server/om/IdmapDaemon;
    .locals 1

    .line 132
    sget-object v0, Lcom/android/server/om/IdmapDaemon;->sInstance:Lcom/android/server/om/IdmapDaemon;

    if-nez v0, :cond_0

    .line 133
    new-instance v0, Lcom/android/server/om/IdmapDaemon;

    invoke-direct {v0}, Lcom/android/server/om/IdmapDaemon;-><init>()V

    sput-object v0, Lcom/android/server/om/IdmapDaemon;->sInstance:Lcom/android/server/om/IdmapDaemon;

    .line 135
    :cond_0
    sget-object v0, Lcom/android/server/om/IdmapDaemon;->sInstance:Lcom/android/server/om/IdmapDaemon;

    return-object v0
.end method

.method private static synthetic lambda$getIdmapServiceLocked$0()V
    .locals 2

    .line 309
    const-string/jumbo v0, "idmap"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    .line 310
    const-string/jumbo v1, "service \'%s\' died"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 309
    const-string v1, "OverlayManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static stopIdmapServiceLocked()V
    .locals 3

    .line 327
    const-string/jumbo v0, "idmap2d"

    :try_start_0
    invoke-static {v0}, Landroid/os/SystemService;->isRunning(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 328
    invoke-static {v0}, Landroid/os/SystemService;->stop(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 334
    :cond_0
    goto :goto_0

    .line 330
    :catch_0
    move-exception v0

    .line 333
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v1, "OverlayManager"

    const-string v2, "Failed to disable idmap2 daemon"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 335
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :goto_0
    return-void
.end method


# virtual methods
.method createFabricatedOverlay(Landroid/os/FabricatedOverlayInternal;)Landroid/os/FabricatedOverlayInfo;
    .locals 5
    .param p1, "overlay"    # Landroid/os/FabricatedOverlayInternal;

    .line 206
    const-string v0, "OverlayManager"

    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/om/IdmapDaemon;->connect()Lcom/android/server/om/IdmapDaemon$Connection;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 207
    .local v2, "c":Lcom/android/server/om/IdmapDaemon$Connection;
    :try_start_1
    invoke-virtual {v2}, Lcom/android/server/om/IdmapDaemon$Connection;->getIdmap2()Landroid/os/IIdmap2;

    move-result-object v3

    .line 208
    .local v3, "idmap2":Landroid/os/IIdmap2;
    if-nez v3, :cond_0

    .line 209
    const-string/jumbo v4, "idmap2d service is not ready for createFabricatedOverlay()"

    invoke-static {v0, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 210
    nop

    .line 214
    :try_start_2
    invoke-virtual {v2}, Lcom/android/server/om/IdmapDaemon$Connection;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 210
    return-object v1

    .line 214
    .end local v2    # "c":Lcom/android/server/om/IdmapDaemon$Connection;
    .end local v3    # "idmap2":Landroid/os/IIdmap2;
    :catch_0
    move-exception v2

    goto :goto_2

    .line 206
    .restart local v2    # "c":Lcom/android/server/om/IdmapDaemon$Connection;
    :catchall_0
    move-exception v3

    goto :goto_0

    .line 213
    .restart local v3    # "idmap2":Landroid/os/IIdmap2;
    :cond_0
    :try_start_3
    invoke-interface {v3, p1}, Landroid/os/IIdmap2;->createFabricatedOverlay(Landroid/os/FabricatedOverlayInternal;)Landroid/os/FabricatedOverlayInfo;

    move-result-object v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 214
    :try_start_4
    invoke-virtual {v2}, Lcom/android/server/om/IdmapDaemon$Connection;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 213
    return-object v4

    .line 206
    .end local v3    # "idmap2":Landroid/os/IIdmap2;
    :goto_0
    if-eqz v2, :cond_1

    :try_start_5
    invoke-virtual {v2}, Lcom/android/server/om/IdmapDaemon$Connection;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v4

    :try_start_6
    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    nop

    .end local p0    # "this":Lcom/android/server/om/IdmapDaemon;
    .end local p1    # "overlay":Landroid/os/FabricatedOverlayInternal;
    throw v3
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    .line 214
    .end local v2    # "c":Lcom/android/server/om/IdmapDaemon$Connection;
    .restart local p0    # "this":Lcom/android/server/om/IdmapDaemon;
    .restart local p1    # "overlay":Landroid/os/FabricatedOverlayInternal;
    :goto_2
    nop

    .line 215
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "failed to fabricate overlay "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 216
    return-object v1
.end method

.method createIdmap(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZI[Landroid/os/OverlayConstraint;)Ljava/lang/String;
    .locals 12
    .param p1, "targetPath"    # Ljava/lang/String;
    .param p2, "overlayPath"    # Ljava/lang/String;
    .param p3, "overlayName"    # Ljava/lang/String;
    .param p4, "policies"    # I
    .param p5, "enforce"    # Z
    .param p6, "userId"    # I
    .param p7, "constraints"    # [Landroid/os/OverlayConstraint;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/TimeoutException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 141
    const-string v0, ", "

    const-string v1, "\", \""

    invoke-direct {p0}, Lcom/android/server/om/IdmapDaemon;->connect()Lcom/android/server/om/IdmapDaemon$Connection;

    move-result-object v2

    .line 142
    .local v2, "c":Lcom/android/server/om/IdmapDaemon$Connection;
    :try_start_0
    invoke-virtual {v2}, Lcom/android/server/om/IdmapDaemon$Connection;->getIdmap2()Landroid/os/IIdmap2;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v4, v3

    .line 143
    .local v4, "idmap2":Landroid/os/IIdmap2;
    if-nez v4, :cond_0

    .line 144
    :try_start_1
    const-string v3, "OverlayManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "idmap2d service is not ready for createIdmap(\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\", "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    move/from16 v8, p4

    :try_start_2
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move/from16 v9, p5

    :try_start_3
    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move/from16 v10, p6

    :try_start_4
    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 147
    nop

    .line 152
    invoke-virtual {v2}, Lcom/android/server/om/IdmapDaemon$Connection;->close()V

    .line 147
    const/4 v0, 0x0

    return-object v0

    .line 141
    .end local v4    # "idmap2":Landroid/os/IIdmap2;
    :catchall_0
    move-exception v0

    :goto_0
    move-object v1, v0

    goto :goto_3

    :catchall_1
    move-exception v0

    :goto_1
    move/from16 v10, p6

    goto :goto_0

    :catchall_2
    move-exception v0

    :goto_2
    move/from16 v9, p5

    goto :goto_1

    :catchall_3
    move-exception v0

    move/from16 v8, p4

    goto :goto_2

    .line 150
    .restart local v4    # "idmap2":Landroid/os/IIdmap2;
    :cond_0
    move/from16 v8, p4

    move/from16 v9, p5

    move/from16 v10, p6

    :try_start_5
    invoke-static {p3}, Landroid/text/TextUtils;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object v5, p1

    move-object v6, p2

    move-object/from16 v11, p7

    invoke-interface/range {v4 .. v11}, Landroid/os/IIdmap2;->createIdmap(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZI[Landroid/os/OverlayConstraint;)Ljava/lang/String;

    move-result-object v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 152
    invoke-virtual {v2}, Lcom/android/server/om/IdmapDaemon$Connection;->close()V

    .line 150
    return-object v0

    .line 141
    .end local v4    # "idmap2":Landroid/os/IIdmap2;
    :goto_3
    if-eqz v2, :cond_1

    :try_start_6
    invoke-virtual {v2}, Lcom/android/server/om/IdmapDaemon$Connection;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    goto :goto_4

    :catchall_4
    move-exception v0

    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_4
    throw v1
.end method

.method deleteFabricatedOverlay(Ljava/lang/String;)Z
    .locals 6
    .param p1, "path"    # Ljava/lang/String;

    .line 221
    const-string v0, "OverlayManager"

    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/om/IdmapDaemon;->connect()Lcom/android/server/om/IdmapDaemon$Connection;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 222
    .local v2, "c":Lcom/android/server/om/IdmapDaemon$Connection;
    :try_start_1
    invoke-virtual {v2}, Lcom/android/server/om/IdmapDaemon$Connection;->getIdmap2()Landroid/os/IIdmap2;

    move-result-object v3

    .line 223
    .local v3, "idmap2":Landroid/os/IIdmap2;
    if-nez v3, :cond_0

    .line 224
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "idmap2d service is not ready for deleteFabricatedOverlay(\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 226
    nop

    .line 230
    :try_start_2
    invoke-virtual {v2}, Lcom/android/server/om/IdmapDaemon$Connection;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 226
    return v1

    .line 230
    .end local v2    # "c":Lcom/android/server/om/IdmapDaemon$Connection;
    .end local v3    # "idmap2":Landroid/os/IIdmap2;
    :catch_0
    move-exception v2

    goto :goto_2

    .line 221
    .restart local v2    # "c":Lcom/android/server/om/IdmapDaemon$Connection;
    :catchall_0
    move-exception v3

    goto :goto_0

    .line 229
    .restart local v3    # "idmap2":Landroid/os/IIdmap2;
    :cond_0
    :try_start_3
    invoke-interface {v3, p1}, Landroid/os/IIdmap2;->deleteFabricatedOverlay(Ljava/lang/String;)Z

    move-result v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 230
    :try_start_4
    invoke-virtual {v2}, Lcom/android/server/om/IdmapDaemon$Connection;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 229
    return v4

    .line 221
    .end local v3    # "idmap2":Landroid/os/IIdmap2;
    :goto_0
    if-eqz v2, :cond_1

    :try_start_5
    invoke-virtual {v2}, Lcom/android/server/om/IdmapDaemon$Connection;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v4

    :try_start_6
    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    nop

    .end local p0    # "this":Lcom/android/server/om/IdmapDaemon;
    .end local p1    # "path":Ljava/lang/String;
    throw v3
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    .line 230
    .end local v2    # "c":Lcom/android/server/om/IdmapDaemon$Connection;
    .restart local p0    # "this":Lcom/android/server/om/IdmapDaemon;
    .restart local p1    # "path":Ljava/lang/String;
    :goto_2
    nop

    .line 231
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "failed to delete fabricated overlay \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 232
    return v1
.end method

.method dumpIdmap(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "overlayPath"    # Ljava/lang/String;

    .line 272
    const-string v0, "OverlayManager"

    const-string/jumbo v1, "idmap2d service is not ready for dumpIdmap()"

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/om/IdmapDaemon;->connect()Lcom/android/server/om/IdmapDaemon$Connection;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 273
    .local v2, "c":Lcom/android/server/om/IdmapDaemon$Connection;
    :try_start_1
    invoke-virtual {v2}, Lcom/android/server/om/IdmapDaemon$Connection;->getIdmap2()Landroid/os/IIdmap2;

    move-result-object v3

    .line 274
    .local v3, "service":Landroid/os/IIdmap2;
    if-nez v3, :cond_0

    .line 275
    move-object v4, v1

    .line 276
    .local v4, "dumpText":Ljava/lang/String;
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 277
    nop

    .line 281
    :try_start_2
    invoke-virtual {v2}, Lcom/android/server/om/IdmapDaemon$Connection;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 277
    return-object v1

    .line 281
    .end local v2    # "c":Lcom/android/server/om/IdmapDaemon$Connection;
    .end local v3    # "service":Landroid/os/IIdmap2;
    .end local v4    # "dumpText":Ljava/lang/String;
    :catch_0
    move-exception v1

    goto :goto_2

    .line 272
    .restart local v2    # "c":Lcom/android/server/om/IdmapDaemon$Connection;
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 279
    .restart local v3    # "service":Landroid/os/IIdmap2;
    :cond_0
    :try_start_3
    invoke-interface {v3, p1}, Landroid/os/IIdmap2;->dumpIdmap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 280
    .local v1, "dump":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->nullIfEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 281
    :try_start_4
    invoke-virtual {v2}, Lcom/android/server/om/IdmapDaemon$Connection;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 280
    return-object v4

    .line 272
    .end local v1    # "dump":Ljava/lang/String;
    .end local v3    # "service":Landroid/os/IIdmap2;
    :goto_0
    if-eqz v2, :cond_1

    :try_start_5
    invoke-virtual {v2}, Lcom/android/server/om/IdmapDaemon$Connection;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v3

    :try_start_6
    invoke-virtual {v1, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    nop

    .end local p0    # "this":Lcom/android/server/om/IdmapDaemon;
    .end local p1    # "overlayPath":Ljava/lang/String;
    throw v1
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    .line 281
    .end local v2    # "c":Lcom/android/server/om/IdmapDaemon$Connection;
    .restart local p0    # "this":Lcom/android/server/om/IdmapDaemon;
    .restart local p1    # "overlayPath":Ljava/lang/String;
    :goto_2
    nop

    .line 282
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "failed to dump idmap"

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 283
    const/4 v0, 0x0

    return-object v0
.end method

.method declared-synchronized getFabricatedOverlayInfos()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/os/FabricatedOverlayInfo;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 237
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 238
    .local v0, "allInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/FabricatedOverlayInfo;>;"
    const/4 v1, 0x0

    .line 239
    .local v1, "c":Lcom/android/server/om/IdmapDaemon$Connection;
    const/4 v2, -0x1

    .line 241
    .local v2, "iteratorId":I
    const/4 v3, -0x1

    :try_start_1
    invoke-direct {p0}, Lcom/android/server/om/IdmapDaemon;->connect()Lcom/android/server/om/IdmapDaemon$Connection;

    move-result-object v4

    move-object v1, v4

    .line 242
    invoke-virtual {v1}, Lcom/android/server/om/IdmapDaemon$Connection;->getIdmap2()Landroid/os/IIdmap2;

    move-result-object v4

    .line 243
    .local v4, "service":Landroid/os/IIdmap2;
    if-nez v4, :cond_1

    .line 244
    const-string v5, "OverlayManager"

    const-string/jumbo v6, "idmap2d service is not ready for getFabricatedOverlayInfos()"

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 257
    nop

    .line 259
    :try_start_2
    invoke-virtual {v1}, Lcom/android/server/om/IdmapDaemon$Connection;->getIdmap2()Landroid/os/IIdmap2;

    move-result-object v6

    if-eqz v6, :cond_0

    if-eq v2, v3, :cond_0

    .line 260
    invoke-virtual {v1}, Lcom/android/server/om/IdmapDaemon$Connection;->getIdmap2()Landroid/os/IIdmap2;

    move-result-object v3

    invoke-interface {v3, v2}, Landroid/os/IIdmap2;->releaseFabricatedOverlayIterator(I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 236
    .end local v0    # "allInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/FabricatedOverlayInfo;>;"
    .end local v1    # "c":Lcom/android/server/om/IdmapDaemon$Connection;
    .end local v2    # "iteratorId":I
    .end local v4    # "service":Landroid/os/IIdmap2;
    .end local p0    # "this":Lcom/android/server/om/IdmapDaemon;
    :catchall_0
    move-exception v0

    goto/16 :goto_b

    .line 262
    .restart local v0    # "allInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/FabricatedOverlayInfo;>;"
    .restart local v1    # "c":Lcom/android/server/om/IdmapDaemon$Connection;
    .restart local v2    # "iteratorId":I
    .restart local v4    # "service":Landroid/os/IIdmap2;
    :catch_0
    move-exception v3

    goto :goto_1

    .line 264
    :cond_0
    :goto_0
    nop

    .line 265
    :goto_1
    :try_start_3
    invoke-virtual {v1}, Lcom/android/server/om/IdmapDaemon$Connection;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 245
    monitor-exit p0

    return-object v5

    .line 257
    .end local v4    # "service":Landroid/os/IIdmap2;
    :catchall_1
    move-exception v4

    goto :goto_8

    .line 254
    :catch_1
    move-exception v4

    goto :goto_5

    .line 248
    .restart local v4    # "service":Landroid/os/IIdmap2;
    :cond_1
    :try_start_4
    invoke-interface {v4}, Landroid/os/IIdmap2;->acquireFabricatedOverlayIterator()I

    move-result v5

    move v2, v5

    .line 250
    :goto_2
    invoke-interface {v4, v2}, Landroid/os/IIdmap2;->nextFabricatedOverlayInfos(I)Ljava/util/List;

    move-result-object v5

    move-object v6, v5

    .local v6, "infos":Ljava/util/List;, "Ljava/util/List<Landroid/os/FabricatedOverlayInfo;>;"
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2

    .line 251
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_2

    .line 253
    :cond_2
    nop

    .line 257
    nop

    .line 259
    :try_start_5
    invoke-virtual {v1}, Lcom/android/server/om/IdmapDaemon$Connection;->getIdmap2()Landroid/os/IIdmap2;

    move-result-object v5

    if-eqz v5, :cond_3

    if-eq v2, v3, :cond_3

    .line 260
    invoke-virtual {v1}, Lcom/android/server/om/IdmapDaemon$Connection;->getIdmap2()Landroid/os/IIdmap2;

    move-result-object v3

    invoke-interface {v3, v2}, Landroid/os/IIdmap2;->releaseFabricatedOverlayIterator(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_3

    .line 262
    :catch_2
    move-exception v3

    goto :goto_4

    .line 264
    :cond_3
    :goto_3
    nop

    .line 265
    :goto_4
    :try_start_6
    invoke-virtual {v1}, Lcom/android/server/om/IdmapDaemon$Connection;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 253
    monitor-exit p0

    return-object v0

    .line 254
    .end local v4    # "service":Landroid/os/IIdmap2;
    .end local v6    # "infos":Ljava/util/List;, "Ljava/util/List<Landroid/os/FabricatedOverlayInfo;>;"
    :goto_5
    nop

    .line 255
    .local v4, "e":Ljava/lang/Exception;
    :try_start_7
    const-string v5, "OverlayManager"

    const-string v6, "failed to get all fabricated overlays"

    invoke-static {v5, v6, v4}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 257
    nop

    .end local v4    # "e":Ljava/lang/Exception;
    if-eqz v1, :cond_5

    .line 259
    :try_start_8
    invoke-virtual {v1}, Lcom/android/server/om/IdmapDaemon$Connection;->getIdmap2()Landroid/os/IIdmap2;

    move-result-object v4

    if-eqz v4, :cond_4

    if-eq v2, v3, :cond_4

    .line 260
    invoke-virtual {v1}, Lcom/android/server/om/IdmapDaemon$Connection;->getIdmap2()Landroid/os/IIdmap2;

    move-result-object v3

    invoke-interface {v3, v2}, Landroid/os/IIdmap2;->releaseFabricatedOverlayIterator(I)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_6

    .line 262
    :catch_3
    move-exception v3

    goto :goto_7

    .line 264
    :cond_4
    :goto_6
    nop

    .line 265
    :goto_7
    :try_start_9
    invoke-virtual {v1}, Lcom/android/server/om/IdmapDaemon$Connection;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 268
    :cond_5
    monitor-exit p0

    return-object v0

    .line 257
    .restart local p0    # "this":Lcom/android/server/om/IdmapDaemon;
    :catchall_2
    move-exception v4

    :goto_8
    if-eqz v1, :cond_7

    .line 259
    :try_start_a
    invoke-virtual {v1}, Lcom/android/server/om/IdmapDaemon$Connection;->getIdmap2()Landroid/os/IIdmap2;

    move-result-object v5

    if-eqz v5, :cond_6

    if-eq v2, v3, :cond_6

    .line 260
    invoke-virtual {v1}, Lcom/android/server/om/IdmapDaemon$Connection;->getIdmap2()Landroid/os/IIdmap2;

    move-result-object v3

    invoke-interface {v3, v2}, Landroid/os/IIdmap2;->releaseFabricatedOverlayIterator(I)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_a} :catch_4
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto :goto_9

    .line 262
    .end local p0    # "this":Lcom/android/server/om/IdmapDaemon;
    :catch_4
    move-exception v3

    goto :goto_a

    .line 264
    :cond_6
    :goto_9
    nop

    .line 265
    :goto_a
    :try_start_b
    invoke-virtual {v1}, Lcom/android/server/om/IdmapDaemon$Connection;->close()V

    .line 267
    :cond_7
    throw v4

    .line 236
    .end local v0    # "allInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/FabricatedOverlayInfo;>;"
    .end local v1    # "c":Lcom/android/server/om/IdmapDaemon$Connection;
    .end local v2    # "iteratorId":I
    :goto_b
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    throw v0
.end method

.method idmapExists(Ljava/lang/String;I)Z
    .locals 7
    .param p1, "overlayPath"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 187
    const-string v0, "OverlayManager"

    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v1

    .line 188
    .local v1, "oldPolicy":Landroid/os/StrictMode$ThreadPolicy;
    const/4 v2, 0x0

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/om/IdmapDaemon;->connect()Lcom/android/server/om/IdmapDaemon$Connection;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 189
    .local v3, "c":Lcom/android/server/om/IdmapDaemon$Connection;
    :try_start_1
    invoke-virtual {v3}, Lcom/android/server/om/IdmapDaemon$Connection;->getIdmap2()Landroid/os/IIdmap2;

    move-result-object v4

    .line 190
    .local v4, "idmap2":Landroid/os/IIdmap2;
    if-nez v4, :cond_0

    .line 191
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "idmap2d service is not ready for idmapExists(\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 193
    nop

    .line 197
    :try_start_2
    invoke-virtual {v3}, Lcom/android/server/om/IdmapDaemon$Connection;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 201
    invoke-static {v1}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 193
    return v2

    .line 201
    .end local v3    # "c":Lcom/android/server/om/IdmapDaemon$Connection;
    .end local v4    # "idmap2":Landroid/os/IIdmap2;
    :catchall_0
    move-exception v0

    goto :goto_3

    .line 197
    :catch_0
    move-exception v3

    goto :goto_2

    .line 188
    .restart local v3    # "c":Lcom/android/server/om/IdmapDaemon$Connection;
    :catchall_1
    move-exception v4

    goto :goto_0

    .line 196
    .restart local v4    # "idmap2":Landroid/os/IIdmap2;
    :cond_0
    :try_start_3
    new-instance v5, Ljava/io/File;

    invoke-interface {v4, p1, p2}, Landroid/os/IIdmap2;->getIdmapPath(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->isFile()Z

    move-result v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 197
    :try_start_4
    invoke-virtual {v3}, Lcom/android/server/om/IdmapDaemon$Connection;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 201
    invoke-static {v1}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 196
    return v5

    .line 188
    .end local v4    # "idmap2":Landroid/os/IIdmap2;
    :goto_0
    if-eqz v3, :cond_1

    :try_start_5
    invoke-virtual {v3}, Lcom/android/server/om/IdmapDaemon$Connection;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception v5

    :try_start_6
    invoke-virtual {v4, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    nop

    .end local v1    # "oldPolicy":Landroid/os/StrictMode$ThreadPolicy;
    .end local p0    # "this":Lcom/android/server/om/IdmapDaemon;
    .end local p1    # "overlayPath":Ljava/lang/String;
    .end local p2    # "userId":I
    throw v4
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 197
    .end local v3    # "c":Lcom/android/server/om/IdmapDaemon$Connection;
    .restart local v1    # "oldPolicy":Landroid/os/StrictMode$ThreadPolicy;
    .restart local p0    # "this":Lcom/android/server/om/IdmapDaemon;
    .restart local p1    # "overlayPath":Ljava/lang/String;
    .restart local p2    # "userId":I
    :goto_2
    nop

    .line 198
    .local v3, "e":Ljava/lang/Exception;
    :try_start_7
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "failed to check if idmap exists for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 199
    nop

    .line 201
    invoke-static {v1}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 199
    return v2

    .line 201
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_3
    invoke-static {v1}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 202
    throw v0
.end method

.method removeIdmap(Ljava/lang/String;I)Z
    .locals 5
    .param p1, "overlayPath"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/TimeoutException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 156
    invoke-direct {p0}, Lcom/android/server/om/IdmapDaemon;->connect()Lcom/android/server/om/IdmapDaemon$Connection;

    move-result-object v0

    .line 157
    .local v0, "c":Lcom/android/server/om/IdmapDaemon$Connection;
    :try_start_0
    invoke-virtual {v0}, Lcom/android/server/om/IdmapDaemon$Connection;->getIdmap2()Landroid/os/IIdmap2;

    move-result-object v1

    .line 158
    .local v1, "idmap2":Landroid/os/IIdmap2;
    if-nez v1, :cond_0

    .line 159
    const-string v2, "OverlayManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "idmap2d service is not ready for removeIdmap(\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 161
    nop

    .line 165
    invoke-virtual {v0}, Lcom/android/server/om/IdmapDaemon$Connection;->close()V

    .line 161
    const/4 v2, 0x0

    return v2

    .line 156
    .end local v1    # "idmap2":Landroid/os/IIdmap2;
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 164
    .restart local v1    # "idmap2":Landroid/os/IIdmap2;
    :cond_0
    :try_start_1
    invoke-interface {v1, p1, p2}, Landroid/os/IIdmap2;->removeIdmap(Ljava/lang/String;I)Z

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 165
    invoke-virtual {v0}, Lcom/android/server/om/IdmapDaemon$Connection;->close()V

    .line 164
    return v2

    .line 156
    .end local v1    # "idmap2":Landroid/os/IIdmap2;
    :goto_0
    if-eqz v0, :cond_1

    :try_start_2
    invoke-virtual {v0}, Lcom/android/server/om/IdmapDaemon$Connection;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    throw v1
.end method

.method verifyIdmap(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZI[Landroid/os/OverlayConstraint;)Z
    .locals 12
    .param p1, "targetPath"    # Ljava/lang/String;
    .param p2, "overlayPath"    # Ljava/lang/String;
    .param p3, "overlayName"    # Ljava/lang/String;
    .param p4, "policies"    # I
    .param p5, "enforce"    # Z
    .param p6, "userId"    # I
    .param p7, "constraints"    # [Landroid/os/OverlayConstraint;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 171
    const-string v0, ", "

    const-string v1, "\", \""

    invoke-direct {p0}, Lcom/android/server/om/IdmapDaemon;->connect()Lcom/android/server/om/IdmapDaemon$Connection;

    move-result-object v2

    .line 172
    .local v2, "c":Lcom/android/server/om/IdmapDaemon$Connection;
    :try_start_0
    invoke-virtual {v2}, Lcom/android/server/om/IdmapDaemon$Connection;->getIdmap2()Landroid/os/IIdmap2;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v4, v3

    .line 173
    .local v4, "idmap2":Landroid/os/IIdmap2;
    if-nez v4, :cond_0

    .line 174
    :try_start_1
    const-string v3, "OverlayManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "idmap2d service is not ready for verifyIdmap(\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\", "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    move/from16 v8, p4

    :try_start_2
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move/from16 v9, p5

    :try_start_3
    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move/from16 v10, p6

    :try_start_4
    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 177
    nop

    .line 182
    invoke-virtual {v2}, Lcom/android/server/om/IdmapDaemon$Connection;->close()V

    .line 177
    const/4 v0, 0x0

    return v0

    .line 171
    .end local v4    # "idmap2":Landroid/os/IIdmap2;
    :catchall_0
    move-exception v0

    :goto_0
    move-object v1, v0

    goto :goto_3

    :catchall_1
    move-exception v0

    :goto_1
    move/from16 v10, p6

    goto :goto_0

    :catchall_2
    move-exception v0

    :goto_2
    move/from16 v9, p5

    goto :goto_1

    :catchall_3
    move-exception v0

    move/from16 v8, p4

    goto :goto_2

    .line 180
    .restart local v4    # "idmap2":Landroid/os/IIdmap2;
    :cond_0
    move/from16 v8, p4

    move/from16 v9, p5

    move/from16 v10, p6

    :try_start_5
    invoke-static {p3}, Landroid/text/TextUtils;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object v5, p1

    move-object v6, p2

    move-object/from16 v11, p7

    invoke-interface/range {v4 .. v11}, Landroid/os/IIdmap2;->verifyIdmap(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZI[Landroid/os/OverlayConstraint;)Z

    move-result v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 182
    invoke-virtual {v2}, Lcom/android/server/om/IdmapDaemon$Connection;->close()V

    .line 180
    return v0

    .line 171
    .end local v4    # "idmap2":Landroid/os/IIdmap2;
    :goto_3
    if-eqz v2, :cond_1

    :try_start_6
    invoke-virtual {v2}, Lcom/android/server/om/IdmapDaemon$Connection;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    goto :goto_4

    :catchall_4
    move-exception v0

    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_4
    throw v1
.end method
