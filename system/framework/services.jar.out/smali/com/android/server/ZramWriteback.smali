.class public final Lcom/android/server/ZramWriteback;
.super Landroid/app/job/JobService;
.source "ZramWriteback.java"


# static fields
.field private static final BDEV_SYS:Ljava/lang/String; = "/sys/block/zram%d/backing_dev"

.field private static final DEBUG:Z = false

.field private static final FIRST_WB_DELAY_PROP:Ljava/lang/String; = "persist.sys.zram_first_wb_delay_mins"

.field private static final FORCE_WRITEBACK_PROP:Ljava/lang/String; = "persist.sys.zram_force_writeback"

.field private static final FS_DIRTY_RATIO_DEFAULT_THRESHOLD:I = 0x5a

.field private static final FS_DIRTY_RATIO_PROP:Ljava/lang/String; = "persist.vold.fs_dirtyRatio"

.field private static final FS_DIRTY_RATIO_THRESHOLD_PROP:Ljava/lang/String; = "persist.sys.zram_fs_dirtyRatio_threshold"

.field private static final IDLE_SYS:Ljava/lang/String; = "/sys/block/zram%d/idle"

.field private static final IDLE_SYS_ALL_PAGES:Ljava/lang/String; = "all"

.field private static final MARK_IDLE_DELAY_PROP:Ljava/lang/String; = "persist.sys.zram_mark_idle_delay_mins"

.field private static final MARK_IDLE_JOB_ID:I = 0x32b

.field private static final MAX_ZRAM_DEVICES:I = 0x100

.field private static final OTA_STATUS_PROP:Ljava/lang/String; = "ota.start"

.field private static final OTA_STATUS_START:I = 0x1

.field private static final PERIODIC_WB_DELAY_PROP:Ljava/lang/String; = "persist.sys.zram_periodic_wb_delay_mins"

.field private static final STATUS_IS_IN_WB:Ljava/lang/String; = "persist.sys.zram_is_in_wb"

.field private static final TAG:Ljava/lang/String; = "ZramWriteback"

.field private static final UFS_LIFETIME_DEFAULT_THRESHOLD:I = 0x5a

.field private static final UFS_LIFETIME_PROP:Ljava/lang/String; = "persist.vold.gc_ufs_lifetime"

.field private static final UFS_LIFETIME_THRESHOLD_PROP:Ljava/lang/String; = "persist.sys.zram_ufs_lifetime_threshold"

.field private static final WB_RETRY_DELAY_DEFAULT_MINS:I = 0x3c

.field private static final WB_RETRY_DELAY_PROP:Ljava/lang/String; = "persist.sys.zram_retry_delay_mins"

.field private static final WB_STATS_MAX_FILE_SIZE:I = 0x80

.field private static final WB_STATS_SYS:Ljava/lang/String; = "/sys/block/zram%d/bd_stat"

.field private static final WB_SYS:Ljava/lang/String; = "/sys/block/zram%d/writeback"

.field private static final WB_SYS_IDLE_PAGES:Ljava/lang/String; = "idle"

.field private static final WRITEBACK_IDLE_JOB_ID:I = 0x32c

.field private static volatile isScreenOn:Z

.field private static final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private static mContext:Landroid/content/Context;

.field private static sZramDeviceId:I

.field private static final sZramWriteback:Landroid/content/ComponentName;

.field private static volatile wb_need_retry:Z


# direct methods
.method static bridge synthetic -$$Nest$mmarkAndFlushPages(Lcom/android/server/ZramWriteback;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/ZramWriteback;->markAndFlushPages()V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfputisScreenOn(Z)V
    .locals 0

    .line 0
    sput-boolean p0, Lcom/android/server/ZramWriteback;->isScreenOn:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$smisUfsLifetimeEnough()Z
    .locals 1

    .line 0
    invoke-static {}, Lcom/android/server/ZramWriteback;->isUfsLifetimeEnough()Z

    move-result v0

    return v0
.end method

.method static bridge synthetic -$$Nest$smschedNextWriteback(Landroid/content/Context;)V
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/server/ZramWriteback;->schedNextWriteback(Landroid/content/Context;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 50
    new-instance v0, Landroid/content/ComponentName;

    const-class v1, Lcom/android/server/ZramWriteback;

    .line 51
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android"

    invoke-direct {v0, v2, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/ZramWriteback;->sZramWriteback:Landroid/content/ComponentName;

    .line 57
    const/4 v0, 0x0

    sput v0, Lcom/android/server/ZramWriteback;->sZramDeviceId:I

    .line 93
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/ZramWriteback;->isScreenOn:Z

    .line 97
    sput-boolean v0, Lcom/android/server/ZramWriteback;->wb_need_retry:Z

    .line 124
    new-instance v0, Lcom/android/server/ZramWriteback$1;

    invoke-direct {v0}, Lcom/android/server/ZramWriteback$1;-><init>()V

    sput-object v0, Lcom/android/server/ZramWriteback;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 46
    invoke-direct {p0}, Landroid/app/job/JobService;-><init>()V

    return-void
.end method

.method private static canFlushPages()Z
    .locals 1

    .line 183
    invoke-static {}, Lcom/android/server/ZramWriteback;->getScreenIsOn()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/server/ZramWriteback;->isFsDirtyRatioLow()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/server/ZramWriteback;->isDoingOTA()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private flushIdlePages()V
    .locals 6

    .line 190
    const-string v0, "1"

    const-string/jumbo v1, "persist.sys.zram_is_in_wb"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    const-string v0, "Start writing back idle pages to disk"

    const-string v2, "ZramWriteback"

    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    sget v0, Lcom/android/server/ZramWriteback;->sZramDeviceId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v3, "/sys/block/zram%d/writeback"

    invoke-static {v3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 198
    .local v0, "wbPath":Ljava/lang/String;
    :try_start_0
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string/jumbo v4, "idle"

    invoke-static {v3, v4}, Landroid/os/FileUtils;->stringToFile(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 201
    goto :goto_0

    .line 199
    :catch_0
    move-exception v3

    .line 200
    .local v3, "e":Ljava/io/IOException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to write to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    .end local v3    # "e":Ljava/io/IOException;
    :goto_0
    const-string v3, "0"

    invoke-static {v1, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    const-string v1, "Finished writeback back idle pages"

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/server/ZramWriteback;->wb_need_retry:Z

    .line 213
    sget-object v1, Lcom/nothing/server/INtExtServiceFactory$ExtType;->NT_ZRAMWRITEBACK_TRACKER:Lcom/nothing/server/INtExtServiceFactory$ExtType;

    invoke-static {v1}, Lcom/nothing/server/NtExtServiceFactory;->getOrCreate(Lcom/nothing/server/INtExtServiceFactory$ExtType;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/INtZramWritebackTracker;

    invoke-interface {v1}, Lcom/android/server/INtZramWritebackTracker;->updateZramWritebackStatus()V

    .line 215
    return-void
.end method

.method private static getScreenIsOn()Z
    .locals 2

    .line 118
    sget-boolean v0, Lcom/android/server/ZramWriteback;->isScreenOn:Z

    if-eqz v0, :cond_0

    .line 119
    const-string v0, "ZramWriteback"

    const-string v1, "Is Screen on."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    :cond_0
    sget-boolean v0, Lcom/android/server/ZramWriteback;->isScreenOn:Z

    return v0
.end method

.method private getWrittenPageCount()I
    .locals 4

    .line 218
    sget v0, Lcom/android/server/ZramWriteback;->sZramDeviceId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "/sys/block/zram%d/bd_stat"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 220
    .local v0, "wbStatsPath":Ljava/lang/String;
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v2, ""

    .line 221
    const/16 v3, 0x80

    invoke-static {v1, v3, v2}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 222
    .local v1, "wbStats":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, "\\s+"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    aget-object v2, v2, v3

    const/16 v3, 0xa

    invoke-static {v2, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    .line 223
    .end local v1    # "wbStats":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 224
    .local v1, "e":Ljava/io/IOException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to read writeback stats from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ZramWriteback"

    invoke-static {v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    .end local v1    # "e":Ljava/io/IOException;
    const/4 v1, -0x1

    return v1
.end method

.method private static isDoingOTA()Z
    .locals 5

    .line 108
    const-string/jumbo v0, "ota.start"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 110
    .local v0, "ota_start_current":I
    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 111
    const-string v3, "ZramWriteback"

    const-string v4, "Is doing OTA."

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    :cond_0
    if-ne v0, v2, :cond_1

    move v1, v2

    :cond_1
    return v1
.end method

.method private static isFsDirtyRatioLow()Z
    .locals 5

    .line 171
    const-string/jumbo v0, "persist.vold.fs_dirtyRatio"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 172
    .local v0, "fs_dirty_ratio_current":I
    const-string/jumbo v2, "persist.sys.zram_fs_dirtyRatio_threshold"

    const/16 v3, 0x5a

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 174
    .local v2, "fs_dirty_ratio_threshold":I
    if-lt v0, v2, :cond_0

    .line 175
    const-string v3, "ZramWriteback"

    const-string v4, "Fs dirty ratio is too high."

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    return v1

    .line 179
    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method private static isUfsLifetimeEnough()Z
    .locals 4

    .line 159
    const-string/jumbo v0, "persist.vold.gc_ufs_lifetime"

    const/16 v1, 0x5a

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 160
    .local v0, "ufs_lifetime_current":I
    const-string/jumbo v2, "persist.sys.zram_ufs_lifetime_threshold"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 162
    .local v1, "ufs_lifetime_threshold":I
    if-lt v0, v1, :cond_0

    .line 163
    const-string v2, "ZramWriteback"

    const-string v3, "Ufs lifetime is not enough."

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    const/4 v2, 0x0

    return v2

    .line 167
    :cond_0
    const/4 v2, 0x1

    return v2
.end method

.method private static isWritebackEnabled()Z
    .locals 4

    .line 256
    const-string v0, "ZramWriteback"

    :try_start_0
    new-instance v1, Ljava/io/File;

    const-string v2, "/sys/block/zram%d/backing_dev"

    sget v3, Lcom/android/server/ZramWriteback;->sZramDeviceId:I

    .line 257
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v2, ""

    const/16 v3, 0x80

    invoke-static {v1, v3, v2}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 258
    .local v1, "backingDev":Ljava/lang/String;
    const-string/jumbo v2, "none"

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 259
    const/4 v0, 0x1

    return v0

    .line 261
    :cond_0
    const-string v2, "Writeback device is not set"

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 265
    nop

    .end local v1    # "backingDev":Ljava/lang/String;
    goto :goto_0

    .line 263
    :catch_0
    move-exception v1

    .line 264
    .local v1, "e":Ljava/io/IOException;
    const-string v2, "Writeback is not enabled on zram"

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    .end local v1    # "e":Ljava/io/IOException;
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method private markAndFlushPages()V
    .locals 4

    .line 231
    invoke-direct {p0}, Lcom/android/server/ZramWriteback;->getWrittenPageCount()I

    move-result v0

    .line 235
    .local v0, "pageCount":I
    invoke-static {}, Lcom/android/server/ZramWriteback;->canFlushPages()Z

    move-result v1

    const-string v2, "ZramWriteback"

    if-eqz v1, :cond_0

    .line 238
    invoke-direct {p0}, Lcom/android/server/ZramWriteback;->flushIdlePages()V

    .line 239
    invoke-direct {p0}, Lcom/android/server/ZramWriteback;->markPagesAsIdle()V

    .line 241
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 242
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Total pages written to disk is "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/server/ZramWriteback;->getWrittenPageCount()I

    move-result v3

    sub-int/2addr v3, v0

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 248
    :cond_0
    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/server/ZramWriteback;->wb_need_retry:Z

    .line 249
    const-string v1, "Skip wb this time."

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    :cond_1
    :goto_0
    return-void
.end method

.method private markPagesAsIdle()V
    .locals 5

    .line 144
    sget v0, Lcom/android/server/ZramWriteback;->sZramDeviceId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "/sys/block/zram%d/idle"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 147
    .local v0, "idlePath":Ljava/lang/String;
    const-string v1, "Marking idle pages."

    const-string v2, "ZramWriteback"

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v3, "all"

    invoke-static {v1, v3}, Landroid/os/FileUtils;->stringToFile(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 153
    goto :goto_0

    .line 151
    :catch_0
    move-exception v1

    .line 152
    .local v1, "e":Ljava/io/IOException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to write to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    .end local v1    # "e":Ljava/io/IOException;
    :goto_0
    return-void
.end method

.method private static schedNextWriteback(Landroid/content/Context;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .line 276
    sget-boolean v0, Lcom/android/server/ZramWriteback;->wb_need_retry:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "persist.sys.zram_retry_delay_mins"

    const/16 v1, 0x3c

    :goto_0
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    goto :goto_1

    :cond_0
    const-string/jumbo v0, "persist.sys.zram_periodic_wb_delay_mins"

    const/16 v1, 0x5a0

    goto :goto_0

    .line 277
    .local v0, "nextWbDelay":I
    :goto_1
    const-string/jumbo v1, "persist.sys.zram_force_writeback"

    const/4 v2, 0x1

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 279
    .local v1, "forceWb":Z
    const-string/jumbo v2, "jobscheduler"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/job/JobScheduler;

    .line 281
    .local v2, "js":Landroid/app/job/JobScheduler;
    new-instance v3, Landroid/app/job/JobInfo$Builder;

    const/16 v4, 0x32c

    sget-object v5, Lcom/android/server/ZramWriteback;->sZramWriteback:Landroid/content/ComponentName;

    invoke-direct {v3, v4, v5}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    int-to-long v5, v0

    .line 287
    invoke-virtual {v4, v5, v6}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Landroid/app/job/JobInfo$Builder;->setMinimumLatency(J)Landroid/app/job/JobInfo$Builder;

    move-result-object v3

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    int-to-long v5, v0

    .line 288
    invoke-virtual {v4, v5, v6}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Landroid/app/job/JobInfo$Builder;->setOverrideDeadline(J)Landroid/app/job/JobInfo$Builder;

    move-result-object v3

    .line 290
    xor-int/lit8 v4, v1, 0x1

    invoke-virtual {v3, v4}, Landroid/app/job/JobInfo$Builder;->setRequiresDeviceIdle(Z)Landroid/app/job/JobInfo$Builder;

    move-result-object v3

    .line 291
    invoke-virtual {v3}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object v3

    .line 281
    invoke-virtual {v2, v3}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    .line 292
    return-void
.end method

.method public static scheduleZramWriteback(Landroid/content/Context;)V
    .locals 9
    .param p0, "context"    # Landroid/content/Context;

    .line 342
    const-string/jumbo v0, "persist.sys.zram_mark_idle_delay_mins"

    const/16 v1, 0x14

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 343
    .local v0, "markIdleDelay":I
    const-string/jumbo v1, "persist.sys.zram_first_wb_delay_mins"

    const/16 v2, 0x5a0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 349
    .local v1, "firstWbDelay":I
    const-string/jumbo v2, "persist.sys.zram_force_writeback"

    const/4 v3, 0x1

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 351
    .local v2, "forceWb":Z
    const-string v3, "ZramWriteback"

    const-string v4, "Ready to schedule ZramWriteback"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    sput-object p0, Lcom/android/server/ZramWriteback;->mContext:Landroid/content/Context;

    .line 357
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 358
    .local v3, "filter":Landroid/content/IntentFilter;
    const-string v4, "android.intent.action.SCREEN_ON"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 359
    const-string v4, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 360
    sget-object v4, Lcom/android/server/ZramWriteback;->mContext:Landroid/content/Context;

    sget-object v5, Lcom/android/server/ZramWriteback;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v4, v5, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 365
    sget-object v4, Lcom/nothing/server/INtExtServiceFactory$ExtType;->NT_ZRAMWRITEBACK_TRACKER:Lcom/nothing/server/INtExtServiceFactory$ExtType;

    invoke-static {v4}, Lcom/nothing/server/NtExtServiceFactory;->getOrCreate(Lcom/nothing/server/INtExtServiceFactory$ExtType;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/INtZramWritebackTracker;

    sget-object v5, Lcom/android/server/ZramWriteback;->mContext:Landroid/content/Context;

    invoke-interface {v4, v5}, Lcom/android/server/INtZramWritebackTracker;->InitZramWritebackTracker(Landroid/content/Context;)V

    .line 368
    const-string/jumbo v4, "jobscheduler"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/job/JobScheduler;

    .line 372
    .local v4, "js":Landroid/app/job/JobScheduler;
    new-instance v5, Landroid/app/job/JobInfo$Builder;

    const/16 v6, 0x32b

    sget-object v7, Lcom/android/server/ZramWriteback;->sZramWriteback:Landroid/content/ComponentName;

    invoke-direct {v5, v6, v7}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    int-to-long v7, v0

    .line 373
    invoke-virtual {v6, v7, v8}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Landroid/app/job/JobInfo$Builder;->setMinimumLatency(J)Landroid/app/job/JobInfo$Builder;

    move-result-object v5

    .line 374
    invoke-virtual {v5}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object v5

    .line 372
    invoke-virtual {v4, v5}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    .line 379
    new-instance v5, Landroid/app/job/JobInfo$Builder;

    const/16 v6, 0x32c

    sget-object v7, Lcom/android/server/ZramWriteback;->sZramWriteback:Landroid/content/ComponentName;

    invoke-direct {v5, v6, v7}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    int-to-long v7, v1

    .line 380
    invoke-virtual {v6, v7, v8}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Landroid/app/job/JobInfo$Builder;->setMinimumLatency(J)Landroid/app/job/JobInfo$Builder;

    move-result-object v5

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    int-to-long v7, v1

    .line 383
    invoke-virtual {v6, v7, v8}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Landroid/app/job/JobInfo$Builder;->setOverrideDeadline(J)Landroid/app/job/JobInfo$Builder;

    move-result-object v5

    .line 385
    xor-int/lit8 v6, v2, 0x1

    invoke-virtual {v5, v6}, Landroid/app/job/JobInfo$Builder;->setRequiresDeviceIdle(Z)Landroid/app/job/JobInfo$Builder;

    move-result-object v5

    .line 386
    invoke-virtual {v5}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object v5

    .line 379
    invoke-virtual {v4, v5}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    .line 387
    return-void
.end method


# virtual methods
.method public onStartJob(Landroid/app/job/JobParameters;)Z
    .locals 3
    .param p1, "params"    # Landroid/app/job/JobParameters;

    .line 297
    invoke-static {}, Lcom/android/server/ZramWriteback;->isWritebackEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 298
    invoke-virtual {p0, p1, v1}, Landroid/app/job/JobService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    .line 299
    return v1

    .line 302
    :cond_0
    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getJobId()I

    move-result v0

    const/16 v2, 0x32b

    if-ne v0, v2, :cond_1

    .line 303
    invoke-direct {p0}, Lcom/android/server/ZramWriteback;->markPagesAsIdle()V

    .line 304
    invoke-virtual {p0, p1, v1}, Landroid/app/job/JobService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    .line 305
    return v1

    .line 307
    :cond_1
    new-instance v0, Lcom/android/server/ZramWriteback$2;

    const-string v1, "ZramWriteback_WritebackIdlePages"

    invoke-direct {v0, p0, v1, p1}, Lcom/android/server/ZramWriteback$2;-><init>(Lcom/android/server/ZramWriteback;Ljava/lang/String;Landroid/app/job/JobParameters;)V

    .line 327
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 329
    const/4 v0, 0x1

    return v0
.end method

.method public onStopJob(Landroid/app/job/JobParameters;)Z
    .locals 1
    .param p1, "params"    # Landroid/app/job/JobParameters;

    .line 335
    const/4 v0, 0x0

    return v0
.end method
