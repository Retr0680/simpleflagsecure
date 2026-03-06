.class public final Lcom/android/server/audio/FadeConfigurations;
.super Ljava/lang/Object;
.source "FadeConfigurations.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final DEFAULT_DELAY_FADE_IN_OFFENDERS_MS:J = 0x7d0L

.field private static final DEFAULT_FADEABLE_USAGES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEFAULT_FADEOUT_VSHAPE:Landroid/media/VolumeShaper$Configuration;

.field private static final DEFAULT_FADE_OUT_DURATION_MS:J = 0x7d0L

.field private static final DEFAULT_UNFADEABLE_CONTENT_TYPES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEFAULT_UNFADEABLE_PLAYER_TYPES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final INVALID_UID:I = -0x1

.field public static final TAG:Ljava/lang/String; = "AS.FadeConfigurations"


# instance fields
.field private mActiveFadeManagerConfig:Landroid/media/FadeManagerConfiguration;

.field private mDefaultFadeManagerConfig:Landroid/media/FadeManagerConfiguration;

.field private final mLock:Ljava/lang/Object;

.field private mTransientFadeManagerConfig:Landroid/media/FadeManagerConfiguration;

.field private mUpdatedFadeManagerConfig:Landroid/media/FadeManagerConfiguration;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 56
    nop

    .line 57
    const/16 v0, 0xd

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 58
    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 56
    invoke-static {v0, v2}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/server/audio/FadeConfigurations;->DEFAULT_UNFADEABLE_PLAYER_TYPES:Ljava/util/List;

    .line 61
    nop

    .line 62
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 61
    invoke-static {v0}, Ljava/util/List;->of(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    sput-object v2, Lcom/android/server/audio/FadeConfigurations;->DEFAULT_UNFADEABLE_CONTENT_TYPES:Ljava/util/List;

    .line 65
    nop

    .line 66
    const/16 v2, 0xe

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 67
    nop

    .line 65
    invoke-static {v2, v0}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/server/audio/FadeConfigurations;->DEFAULT_FADEABLE_USAGES:Ljava/util/List;

    .line 70
    new-instance v0, Landroid/media/VolumeShaper$Configuration$Builder;

    invoke-direct {v0}, Landroid/media/VolumeShaper$Configuration$Builder;-><init>()V

    .line 72
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/media/VolumeShaper$Configuration$Builder;->setId(I)Landroid/media/VolumeShaper$Configuration$Builder;

    move-result-object v0

    new-array v3, v1, [F

    fill-array-data v3, :array_0

    new-array v1, v1, [F

    fill-array-data v1, :array_1

    .line 73
    invoke-virtual {v0, v3, v1}, Landroid/media/VolumeShaper$Configuration$Builder;->setCurve([F[F)Landroid/media/VolumeShaper$Configuration$Builder;

    move-result-object v0

    .line 75
    invoke-virtual {v0, v2}, Landroid/media/VolumeShaper$Configuration$Builder;->setOptionFlags(I)Landroid/media/VolumeShaper$Configuration$Builder;

    move-result-object v0

    .line 76
    const-wide/16 v1, 0x7d0

    invoke-virtual {v0, v1, v2}, Landroid/media/VolumeShaper$Configuration$Builder;->setDuration(J)Landroid/media/VolumeShaper$Configuration$Builder;

    move-result-object v0

    .line 77
    invoke-virtual {v0}, Landroid/media/VolumeShaper$Configuration$Builder;->build()Landroid/media/VolumeShaper$Configuration;

    move-result-object v0

    sput-object v0, Lcom/android/server/audio/FadeConfigurations;->DEFAULT_FADEOUT_VSHAPE:Landroid/media/VolumeShaper$Configuration;

    .line 70
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3e800000    # 0.25f
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x3f266666    # 0.65f
        0x0
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/audio/FadeConfigurations;->mLock:Ljava/lang/Object;

    return-void
.end method

.method private getActiveFadeMgrConfigLocked()Landroid/media/FadeManagerConfiguration;
    .locals 1

    .line 536
    iget-object v0, p0, Lcom/android/server/audio/FadeConfigurations;->mTransientFadeManagerConfig:Landroid/media/FadeManagerConfiguration;

    if-eqz v0, :cond_0

    .line 537
    iget-object v0, p0, Lcom/android/server/audio/FadeConfigurations;->mTransientFadeManagerConfig:Landroid/media/FadeManagerConfiguration;

    return-object v0

    .line 540
    :cond_0
    iget-object v0, p0, Lcom/android/server/audio/FadeConfigurations;->mUpdatedFadeManagerConfig:Landroid/media/FadeManagerConfiguration;

    if-eqz v0, :cond_1

    .line 541
    iget-object v0, p0, Lcom/android/server/audio/FadeConfigurations;->mUpdatedFadeManagerConfig:Landroid/media/FadeManagerConfiguration;

    return-object v0

    .line 545
    :cond_1
    invoke-direct {p0}, Lcom/android/server/audio/FadeConfigurations;->getDefaultFadeManagerConfigLocked()Landroid/media/FadeManagerConfiguration;

    move-result-object v0

    return-object v0
.end method

.method private getDefaultFadeManagerConfigLocked()Landroid/media/FadeManagerConfiguration;
    .locals 1

    .line 550
    iget-object v0, p0, Lcom/android/server/audio/FadeConfigurations;->mDefaultFadeManagerConfig:Landroid/media/FadeManagerConfiguration;

    if-nez v0, :cond_0

    .line 551
    new-instance v0, Landroid/media/FadeManagerConfiguration$Builder;

    invoke-direct {v0}, Landroid/media/FadeManagerConfiguration$Builder;-><init>()V

    invoke-virtual {v0}, Landroid/media/FadeManagerConfiguration$Builder;->build()Landroid/media/FadeManagerConfiguration;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/audio/FadeConfigurations;->mDefaultFadeManagerConfig:Landroid/media/FadeManagerConfiguration;

    .line 553
    :cond_0
    iget-object v0, p0, Lcom/android/server/audio/FadeConfigurations;->mDefaultFadeManagerConfig:Landroid/media/FadeManagerConfiguration;

    return-object v0
.end method

.method private getOptimalFadeInVolShaperConfig(Landroid/media/AudioAttributes;)Landroid/media/VolumeShaper$Configuration;
    .locals 4
    .param p1, "aa"    # Landroid/media/AudioAttributes;

    .line 433
    iget-object v0, p0, Lcom/android/server/audio/FadeConfigurations;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 434
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/audio/FadeConfigurations;->getUpdatedFadeManagerConfigLocked()Landroid/media/FadeManagerConfiguration;

    move-result-object v1

    .line 436
    .local v1, "fadeManagerConfig":Landroid/media/FadeManagerConfiguration;
    nop

    .line 437
    invoke-virtual {v1, p1}, Landroid/media/FadeManagerConfiguration;->getFadeInVolumeShaperConfigForAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/VolumeShaper$Configuration;

    move-result-object v2

    .line 438
    .local v2, "volShaperConfig":Landroid/media/VolumeShaper$Configuration;
    if-eqz v2, :cond_0

    .line 439
    monitor-exit v0

    return-object v2

    .line 445
    .end local v1    # "fadeManagerConfig":Landroid/media/FadeManagerConfiguration;
    .end local v2    # "volShaperConfig":Landroid/media/VolumeShaper$Configuration;
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 444
    .restart local v1    # "fadeManagerConfig":Landroid/media/FadeManagerConfiguration;
    .restart local v2    # "volShaperConfig":Landroid/media/VolumeShaper$Configuration;
    :cond_0
    invoke-virtual {p1}, Landroid/media/AudioAttributes;->getSystemUsage()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/media/FadeManagerConfiguration;->getFadeInVolumeShaperConfigForUsage(I)Landroid/media/VolumeShaper$Configuration;

    move-result-object v3

    monitor-exit v0

    return-object v3

    .line 445
    .end local v1    # "fadeManagerConfig":Landroid/media/FadeManagerConfiguration;
    .end local v2    # "volShaperConfig":Landroid/media/VolumeShaper$Configuration;
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private getOptimalFadeOutDuration(Landroid/media/AudioAttributes;)J
    .locals 6
    .param p1, "aa"    # Landroid/media/AudioAttributes;

    .line 450
    iget-object v0, p0, Lcom/android/server/audio/FadeConfigurations;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 451
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/audio/FadeConfigurations;->getUpdatedFadeManagerConfigLocked()Landroid/media/FadeManagerConfiguration;

    move-result-object v1

    .line 453
    .local v1, "fadeManagerConfig":Landroid/media/FadeManagerConfiguration;
    invoke-virtual {v1, p1}, Landroid/media/FadeManagerConfiguration;->getFadeOutDurationForAudioAttributes(Landroid/media/AudioAttributes;)J

    move-result-wide v2

    .line 454
    .local v2, "duration":J
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-eqz v4, :cond_0

    .line 455
    monitor-exit v0

    return-wide v2

    .line 461
    .end local v1    # "fadeManagerConfig":Landroid/media/FadeManagerConfiguration;
    .end local v2    # "duration":J
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 460
    .restart local v1    # "fadeManagerConfig":Landroid/media/FadeManagerConfiguration;
    .restart local v2    # "duration":J
    :cond_0
    invoke-virtual {p1}, Landroid/media/AudioAttributes;->getSystemUsage()I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/media/FadeManagerConfiguration;->getFadeOutDurationForUsage(I)J

    move-result-wide v4

    monitor-exit v0

    return-wide v4

    .line 461
    .end local v1    # "fadeManagerConfig":Landroid/media/FadeManagerConfiguration;
    .end local v2    # "duration":J
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private getOptimalFadeOutVolShaperConfig(Landroid/media/AudioAttributes;)Landroid/media/VolumeShaper$Configuration;
    .locals 4
    .param p1, "aa"    # Landroid/media/AudioAttributes;

    .line 415
    iget-object v0, p0, Lcom/android/server/audio/FadeConfigurations;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 416
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/audio/FadeConfigurations;->getUpdatedFadeManagerConfigLocked()Landroid/media/FadeManagerConfiguration;

    move-result-object v1

    .line 418
    .local v1, "fadeManagerConfig":Landroid/media/FadeManagerConfiguration;
    nop

    .line 419
    invoke-virtual {v1, p1}, Landroid/media/FadeManagerConfiguration;->getFadeOutVolumeShaperConfigForAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/VolumeShaper$Configuration;

    move-result-object v2

    .line 420
    .local v2, "volShaperConfig":Landroid/media/VolumeShaper$Configuration;
    if-eqz v2, :cond_0

    .line 421
    monitor-exit v0

    return-object v2

    .line 428
    .end local v1    # "fadeManagerConfig":Landroid/media/FadeManagerConfiguration;
    .end local v2    # "volShaperConfig":Landroid/media/VolumeShaper$Configuration;
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 426
    .restart local v1    # "fadeManagerConfig":Landroid/media/FadeManagerConfiguration;
    .restart local v2    # "volShaperConfig":Landroid/media/VolumeShaper$Configuration;
    :cond_0
    nop

    .line 427
    invoke-virtual {p1}, Landroid/media/AudioAttributes;->getSystemUsage()I

    move-result v3

    .line 426
    invoke-virtual {v1, v3}, Landroid/media/FadeManagerConfiguration;->getFadeOutVolumeShaperConfigForUsage(I)Landroid/media/VolumeShaper$Configuration;

    move-result-object v3

    monitor-exit v0

    return-object v3

    .line 428
    .end local v1    # "fadeManagerConfig":Landroid/media/FadeManagerConfiguration;
    .end local v2    # "volShaperConfig":Landroid/media/VolumeShaper$Configuration;
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private getUpdatedFadeManagerConfigLocked()Landroid/media/FadeManagerConfiguration;
    .locals 1

    .line 525
    iget-object v0, p0, Lcom/android/server/audio/FadeConfigurations;->mActiveFadeManagerConfig:Landroid/media/FadeManagerConfiguration;

    if-nez v0, :cond_0

    .line 526
    invoke-direct {p0}, Lcom/android/server/audio/FadeConfigurations;->getActiveFadeMgrConfigLocked()Landroid/media/FadeManagerConfiguration;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/audio/FadeConfigurations;->mActiveFadeManagerConfig:Landroid/media/FadeManagerConfiguration;

    .line 528
    :cond_0
    iget-object v0, p0, Lcom/android/server/audio/FadeConfigurations;->mActiveFadeManagerConfig:Landroid/media/FadeManagerConfiguration;

    return-object v0
.end method

.method private isAudioAttributesUnfadeableLocked(Landroid/media/AudioAttributes;)Z
    .locals 1
    .param p1, "aa"    # Landroid/media/AudioAttributes;

    .line 507
    nop

    .line 511
    invoke-direct {p0}, Lcom/android/server/audio/FadeConfigurations;->getUpdatedFadeManagerConfigLocked()Landroid/media/FadeManagerConfiguration;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/media/FadeManagerConfiguration;->isAudioAttributesUnfadeable(Landroid/media/AudioAttributes;)Z

    move-result v0

    return v0
.end method

.method private isContentTypeUnfadeableLocked(I)Z
    .locals 1
    .param p1, "contentType"    # I

    .line 491
    nop

    .line 494
    invoke-direct {p0}, Lcom/android/server/audio/FadeConfigurations;->getUpdatedFadeManagerConfigLocked()Landroid/media/FadeManagerConfiguration;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/media/FadeManagerConfiguration;->isContentTypeUnfadeable(I)Z

    move-result v0

    return v0
.end method

.method private isPlayerTypeUnfadeableLocked(I)Z
    .locals 1
    .param p1, "playerType"    # I

    .line 499
    nop

    .line 502
    invoke-direct {p0}, Lcom/android/server/audio/FadeConfigurations;->getUpdatedFadeManagerConfigLocked()Landroid/media/FadeManagerConfiguration;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/media/FadeManagerConfiguration;->isPlayerTypeUnfadeable(I)Z

    move-result v0

    return v0
.end method

.method private isUidUnfadeableLocked(I)Z
    .locals 1
    .param p1, "uid"    # I

    .line 516
    nop

    .line 520
    invoke-direct {p0}, Lcom/android/server/audio/FadeConfigurations;->getUpdatedFadeManagerConfigLocked()Landroid/media/FadeManagerConfiguration;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/media/FadeManagerConfiguration;->isUidUnfadeable(I)Z

    move-result v0

    return v0
.end method

.method private isUnfadeableForFadeMgrConfigLocked(Landroid/media/AudioAttributes;I)Z
    .locals 2
    .param p1, "aa"    # Landroid/media/AudioAttributes;
    .param p2, "uid"    # I

    .line 466
    invoke-direct {p0, p1}, Lcom/android/server/audio/FadeConfigurations;->isAudioAttributesUnfadeableLocked(Landroid/media/AudioAttributes;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 470
    return v1

    .line 472
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/server/audio/FadeConfigurations;->isUidUnfadeableLocked(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 476
    return v1

    .line 478
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private isUsageFadeableLocked(I)Z
    .locals 1
    .param p1, "usage"    # I

    .line 483
    nop

    .line 486
    invoke-direct {p0}, Lcom/android/server/audio/FadeConfigurations;->getUpdatedFadeManagerConfigLocked()Landroid/media/FadeManagerConfiguration;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/media/FadeManagerConfiguration;->isUsageFadeable(I)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public clearFadeManagerConfiguration()I
    .locals 2

    .line 123
    nop

    .line 127
    iget-object v0, p0, Lcom/android/server/audio/FadeConfigurations;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 128
    const/4 v1, 0x0

    :try_start_0
    iput-object v1, p0, Lcom/android/server/audio/FadeConfigurations;->mUpdatedFadeManagerConfig:Landroid/media/FadeManagerConfiguration;

    .line 129
    invoke-direct {p0}, Lcom/android/server/audio/FadeConfigurations;->getActiveFadeMgrConfigLocked()Landroid/media/FadeManagerConfiguration;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/audio/FadeConfigurations;->mActiveFadeManagerConfig:Landroid/media/FadeManagerConfiguration;

    .line 130
    monitor-exit v0

    .line 131
    const/4 v0, 0x0

    return v0

    .line 130
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public clearTransientFadeManagerConfiguration()I
    .locals 2

    .line 182
    nop

    .line 185
    iget-object v0, p0, Lcom/android/server/audio/FadeConfigurations;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 186
    const/4 v1, 0x0

    :try_start_0
    iput-object v1, p0, Lcom/android/server/audio/FadeConfigurations;->mTransientFadeManagerConfig:Landroid/media/FadeManagerConfiguration;

    .line 187
    invoke-direct {p0}, Lcom/android/server/audio/FadeConfigurations;->getActiveFadeMgrConfigLocked()Landroid/media/FadeManagerConfiguration;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/audio/FadeConfigurations;->mActiveFadeManagerConfig:Landroid/media/FadeManagerConfiguration;

    .line 188
    monitor-exit v0

    .line 189
    const/4 v0, 0x0

    return v0

    .line 188
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getDelayFadeInOffenders(Landroid/media/AudioAttributes;)J
    .locals 3
    .param p1, "aa"    # Landroid/media/AudioAttributes;

    .line 326
    nop

    .line 330
    iget-object v0, p0, Lcom/android/server/audio/FadeConfigurations;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 331
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/audio/FadeConfigurations;->getUpdatedFadeManagerConfigLocked()Landroid/media/FadeManagerConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/FadeManagerConfiguration;->getFadeInDelayForOffenders()J

    move-result-wide v1

    monitor-exit v0

    return-wide v1

    .line 332
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getFadeInVolumeShaperConfig(Landroid/media/AudioAttributes;)Landroid/media/VolumeShaper$Configuration;
    .locals 1
    .param p1, "aa"    # Landroid/media/AudioAttributes;

    .line 294
    nop

    .line 297
    invoke-direct {p0, p1}, Lcom/android/server/audio/FadeConfigurations;->getOptimalFadeInVolShaperConfig(Landroid/media/AudioAttributes;)Landroid/media/VolumeShaper$Configuration;

    move-result-object v0

    return-object v0
.end method

.method public getFadeManagerConfiguration()Landroid/media/FadeManagerConfiguration;
    .locals 2

    .line 142
    nop

    .line 146
    iget-object v0, p0, Lcom/android/server/audio/FadeConfigurations;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 147
    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/FadeConfigurations;->mActiveFadeManagerConfig:Landroid/media/FadeManagerConfiguration;

    monitor-exit v0

    return-object v1

    .line 148
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getFadeOutDuration(Landroid/media/AudioAttributes;)J
    .locals 2
    .param p1, "aa"    # Landroid/media/AudioAttributes;

    .line 309
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0, v0}, Lcom/android/server/audio/FadeConfigurations;->isFadeable(Landroid/media/AudioAttributes;II)Z

    move-result v0

    if-nez v0, :cond_0

    .line 310
    const-wide/16 v0, 0x0

    return-wide v0

    .line 312
    :cond_0
    nop

    .line 315
    invoke-direct {p0, p1}, Lcom/android/server/audio/FadeConfigurations;->getOptimalFadeOutDuration(Landroid/media/AudioAttributes;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getFadeOutVolumeShaperConfig(Landroid/media/AudioAttributes;)Landroid/media/VolumeShaper$Configuration;
    .locals 1
    .param p1, "aa"    # Landroid/media/AudioAttributes;

    .line 278
    nop

    .line 281
    invoke-direct {p0, p1}, Lcom/android/server/audio/FadeConfigurations;->getOptimalFadeOutVolShaperConfig(Landroid/media/AudioAttributes;)Landroid/media/VolumeShaper$Configuration;

    move-result-object v0

    return-object v0
.end method

.method public getFadeableUsages()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 216
    nop

    .line 220
    iget-object v0, p0, Lcom/android/server/audio/FadeConfigurations;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 221
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/audio/FadeConfigurations;->getUpdatedFadeManagerConfigLocked()Landroid/media/FadeManagerConfiguration;

    move-result-object v1

    .line 223
    .local v1, "fadeManagerConfig":Landroid/media/FadeManagerConfiguration;
    invoke-virtual {v1}, Landroid/media/FadeManagerConfiguration;->isFadeEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Landroid/media/FadeManagerConfiguration;->getFadeableUsages()Ljava/util/List;

    move-result-object v2

    goto :goto_0

    .line 225
    .end local v1    # "fadeManagerConfig":Landroid/media/FadeManagerConfiguration;
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 224
    .restart local v1    # "fadeManagerConfig":Landroid/media/FadeManagerConfiguration;
    :cond_0
    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    :goto_0
    monitor-exit v0

    .line 223
    return-object v2

    .line 225
    .end local v1    # "fadeManagerConfig":Landroid/media/FadeManagerConfiguration;
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getUnfadeableAudioAttributes()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/media/AudioAttributes;",
            ">;"
        }
    .end annotation

    .line 343
    nop

    .line 347
    iget-object v0, p0, Lcom/android/server/audio/FadeConfigurations;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 348
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/audio/FadeConfigurations;->getUpdatedFadeManagerConfigLocked()Landroid/media/FadeManagerConfiguration;

    move-result-object v1

    .line 350
    .local v1, "fadeManagerConfig":Landroid/media/FadeManagerConfiguration;
    invoke-virtual {v1}, Landroid/media/FadeManagerConfiguration;->isFadeEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 351
    invoke-virtual {v1}, Landroid/media/FadeManagerConfiguration;->getUnfadeableAudioAttributes()Ljava/util/List;

    move-result-object v2

    goto :goto_0

    .line 352
    .end local v1    # "fadeManagerConfig":Landroid/media/FadeManagerConfiguration;
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 351
    .restart local v1    # "fadeManagerConfig":Landroid/media/FadeManagerConfiguration;
    :cond_0
    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    :goto_0
    monitor-exit v0

    .line 350
    return-object v2

    .line 352
    .end local v1    # "fadeManagerConfig":Landroid/media/FadeManagerConfiguration;
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getUnfadeableContentTypes()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 236
    nop

    .line 240
    iget-object v0, p0, Lcom/android/server/audio/FadeConfigurations;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 241
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/audio/FadeConfigurations;->getUpdatedFadeManagerConfigLocked()Landroid/media/FadeManagerConfiguration;

    move-result-object v1

    .line 243
    .local v1, "fadeManagerConfig":Landroid/media/FadeManagerConfiguration;
    invoke-virtual {v1}, Landroid/media/FadeManagerConfiguration;->isFadeEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Landroid/media/FadeManagerConfiguration;->getUnfadeableContentTypes()Ljava/util/List;

    move-result-object v2

    goto :goto_0

    .line 245
    .end local v1    # "fadeManagerConfig":Landroid/media/FadeManagerConfiguration;
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 244
    .restart local v1    # "fadeManagerConfig":Landroid/media/FadeManagerConfiguration;
    :cond_0
    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    :goto_0
    monitor-exit v0

    .line 243
    return-object v2

    .line 245
    .end local v1    # "fadeManagerConfig":Landroid/media/FadeManagerConfiguration;
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getUnfadeablePlayerTypes()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 256
    nop

    .line 260
    iget-object v0, p0, Lcom/android/server/audio/FadeConfigurations;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 261
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/audio/FadeConfigurations;->getUpdatedFadeManagerConfigLocked()Landroid/media/FadeManagerConfiguration;

    move-result-object v1

    .line 263
    .local v1, "fadeManagerConfig":Landroid/media/FadeManagerConfiguration;
    invoke-virtual {v1}, Landroid/media/FadeManagerConfiguration;->isFadeEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Landroid/media/FadeManagerConfiguration;->getUnfadeablePlayerTypes()Ljava/util/List;

    move-result-object v2

    goto :goto_0

    .line 265
    .end local v1    # "fadeManagerConfig":Landroid/media/FadeManagerConfiguration;
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 264
    .restart local v1    # "fadeManagerConfig":Landroid/media/FadeManagerConfiguration;
    :cond_0
    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    :goto_0
    monitor-exit v0

    .line 263
    return-object v2

    .line 265
    .end local v1    # "fadeManagerConfig":Landroid/media/FadeManagerConfiguration;
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getUnfadeableUids()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 363
    nop

    .line 367
    iget-object v0, p0, Lcom/android/server/audio/FadeConfigurations;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 368
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/audio/FadeConfigurations;->getUpdatedFadeManagerConfigLocked()Landroid/media/FadeManagerConfiguration;

    move-result-object v1

    .line 370
    .local v1, "fadeManagerConfig":Landroid/media/FadeManagerConfiguration;
    invoke-virtual {v1}, Landroid/media/FadeManagerConfiguration;->isFadeEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Landroid/media/FadeManagerConfiguration;->getUnfadeableUids()Ljava/util/List;

    move-result-object v2

    goto :goto_0

    .line 372
    .end local v1    # "fadeManagerConfig":Landroid/media/FadeManagerConfiguration;
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 371
    .restart local v1    # "fadeManagerConfig":Landroid/media/FadeManagerConfiguration;
    :cond_0
    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    :goto_0
    monitor-exit v0

    .line 370
    return-object v2

    .line 372
    .end local v1    # "fadeManagerConfig":Landroid/media/FadeManagerConfiguration;
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isFadeEnabled()Z
    .locals 2

    .line 199
    nop

    .line 203
    iget-object v0, p0, Lcom/android/server/audio/FadeConfigurations;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 204
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/audio/FadeConfigurations;->getUpdatedFadeManagerConfigLocked()Landroid/media/FadeManagerConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/FadeManagerConfiguration;->isFadeEnabled()Z

    move-result v1

    monitor-exit v0

    return v1

    .line 205
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isFadeable(Landroid/media/AudioAttributes;II)Z
    .locals 3
    .param p1, "aa"    # Landroid/media/AudioAttributes;
    .param p2, "uid"    # I
    .param p3, "playerType"    # I

    .line 386
    iget-object v0, p0, Lcom/android/server/audio/FadeConfigurations;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 387
    :try_start_0
    invoke-direct {p0, p3}, Lcom/android/server/audio/FadeConfigurations;->isPlayerTypeUnfadeableLocked(I)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 391
    monitor-exit v0

    return v2

    .line 410
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 393
    :cond_0
    invoke-virtual {p1}, Landroid/media/AudioAttributes;->getContentType()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/audio/FadeConfigurations;->isContentTypeUnfadeableLocked(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 397
    monitor-exit v0

    return v2

    .line 399
    :cond_1
    invoke-virtual {p1}, Landroid/media/AudioAttributes;->getSystemUsage()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/audio/FadeConfigurations;->isUsageFadeableLocked(I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 403
    monitor-exit v0

    return v2

    .line 406
    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/android/server/audio/FadeConfigurations;->isUnfadeableForFadeMgrConfigLocked(Landroid/media/AudioAttributes;I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 407
    monitor-exit v0

    return v2

    .line 409
    :cond_3
    monitor-exit v0

    const/4 v0, 0x1

    return v0

    .line 410
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setFadeManagerConfiguration(Landroid/media/FadeManagerConfiguration;)I
    .locals 2
    .param p1, "fadeManagerConfig"    # Landroid/media/FadeManagerConfiguration;

    .line 102
    nop

    .line 106
    iget-object v0, p0, Lcom/android/server/audio/FadeConfigurations;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 107
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/android/server/audio/FadeConfigurations;->mUpdatedFadeManagerConfig:Landroid/media/FadeManagerConfiguration;

    .line 109
    invoke-direct {p0}, Lcom/android/server/audio/FadeConfigurations;->getActiveFadeMgrConfigLocked()Landroid/media/FadeManagerConfiguration;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/audio/FadeConfigurations;->mActiveFadeManagerConfig:Landroid/media/FadeManagerConfiguration;

    .line 110
    monitor-exit v0

    .line 111
    const/4 v0, 0x0

    return v0

    .line 110
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setTransientFadeManagerConfiguration(Landroid/media/FadeManagerConfiguration;)I
    .locals 2
    .param p1, "fadeManagerConfig"    # Landroid/media/FadeManagerConfiguration;

    .line 161
    nop

    .line 165
    iget-object v0, p0, Lcom/android/server/audio/FadeConfigurations;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 166
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/android/server/audio/FadeConfigurations;->mTransientFadeManagerConfig:Landroid/media/FadeManagerConfiguration;

    .line 168
    invoke-direct {p0}, Lcom/android/server/audio/FadeConfigurations;->getActiveFadeMgrConfigLocked()Landroid/media/FadeManagerConfiguration;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/audio/FadeConfigurations;->mActiveFadeManagerConfig:Landroid/media/FadeManagerConfiguration;

    .line 169
    monitor-exit v0

    .line 170
    const/4 v0, 0x0

    return v0

    .line 169
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
