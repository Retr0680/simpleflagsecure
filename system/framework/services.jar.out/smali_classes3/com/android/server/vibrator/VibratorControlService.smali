.class final Lcom/android/server/vibrator/VibratorControlService;
.super Landroid/frameworks/vibrator/IVibratorControlService$Stub;
.source "VibratorControlService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/vibrator/VibratorControlService$VibrationParamRequest;,
        Lcom/android/server/vibrator/VibratorControlService$VibrationParamsRecords;,
        Lcom/android/server/vibrator/VibratorControlService$VibrationScaleParamRecord;
    }
.end annotation


# static fields
.field private static final DEBUG_DATE_TIME_FORMATTER:Ljava/time/format/DateTimeFormatter;

.field private static final NO_SCALE:I = -0x1

.field private static final TAG:Ljava/lang/String; = "VibratorControlService"

.field private static final UNRECOGNIZED_VIBRATION_TYPE:I = -0x1


# instance fields
.field private final mLock:Ljava/lang/Object;

.field private final mRequestVibrationParamsForUsages:[I

.field private final mStatsLogger:Lcom/android/server/vibrator/VibratorFrameworkStatsLogger;

.field private mVibrationParamRequest:Lcom/android/server/vibrator/VibratorControlService$VibrationParamRequest;

.field private final mVibrationParamsRecords:Lcom/android/server/vibrator/VibratorControlService$VibrationParamsRecords;

.field private final mVibrationScaler:Lcom/android/server/vibrator/VibrationScaler;

.field private final mVibratorControllerHolder:Lcom/android/server/vibrator/VibratorControllerHolder;


# direct methods
.method static bridge synthetic -$$Nest$sfgetDEBUG_DATE_TIME_FORMATTER()Ljava/time/format/DateTimeFormatter;
    .locals 1

    .line 0
    sget-object v0, Lcom/android/server/vibrator/VibratorControlService;->DEBUG_DATE_TIME_FORMATTER:Ljava/time/format/DateTimeFormatter;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$smmapFromAdaptiveVibrationTypeToVibrationUsages(I)[I
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/server/vibrator/VibratorControlService;->mapFromAdaptiveVibrationTypeToVibrationUsages(I)[I

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 71
    const-string v0, "MM-dd HH:mm:ss.SSS"

    invoke-static {v0}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Lcom/android/server/vibrator/VibratorControlService;->DEBUG_DATE_TIME_FORMATTER:Ljava/time/format/DateTimeFormatter;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/server/vibrator/VibratorControllerHolder;Lcom/android/server/vibrator/VibrationScaler;Lcom/android/server/vibrator/VibrationSettings;Lcom/android/server/vibrator/VibratorFrameworkStatsLogger;Ljava/lang/Object;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "vibratorControllerHolder"    # Lcom/android/server/vibrator/VibratorControllerHolder;
    .param p3, "vibrationScaler"    # Lcom/android/server/vibrator/VibrationScaler;
    .param p4, "vibrationSettings"    # Lcom/android/server/vibrator/VibrationSettings;
    .param p5, "statsLogger"    # Lcom/android/server/vibrator/VibratorFrameworkStatsLogger;
    .param p6, "lock"    # Ljava/lang/Object;

    .line 88
    invoke-direct {p0}, Landroid/frameworks/vibrator/IVibratorControlService$Stub;-><init>()V

    .line 81
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/vibrator/VibratorControlService;->mVibrationParamRequest:Lcom/android/server/vibrator/VibratorControlService$VibrationParamRequest;

    .line 89
    iput-object p2, p0, Lcom/android/server/vibrator/VibratorControlService;->mVibratorControllerHolder:Lcom/android/server/vibrator/VibratorControllerHolder;

    .line 90
    iput-object p3, p0, Lcom/android/server/vibrator/VibratorControlService;->mVibrationScaler:Lcom/android/server/vibrator/VibrationScaler;

    .line 91
    iput-object p5, p0, Lcom/android/server/vibrator/VibratorControlService;->mStatsLogger:Lcom/android/server/vibrator/VibratorFrameworkStatsLogger;

    .line 92
    iput-object p6, p0, Lcom/android/server/vibrator/VibratorControlService;->mLock:Ljava/lang/Object;

    .line 93
    invoke-virtual {p4}, Lcom/android/server/vibrator/VibrationSettings;->getRequestVibrationParamsForUsages()[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/vibrator/VibratorControlService;->mRequestVibrationParamsForUsages:[I

    .line 95
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e010c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 97
    .local v0, "dumpSizeLimit":I
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e010b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 100
    .local v1, "dumpAggregationTimeLimit":I
    new-instance v2, Lcom/android/server/vibrator/VibratorControlService$VibrationParamsRecords;

    invoke-direct {v2, v0, v1}, Lcom/android/server/vibrator/VibratorControlService$VibrationParamsRecords;-><init>(II)V

    iput-object v2, p0, Lcom/android/server/vibrator/VibratorControlService;->mVibrationParamsRecords:Lcom/android/server/vibrator/VibratorControlService$VibrationParamsRecords;

    .line 102
    return-void
.end method

.method private endOngoingRequestVibrationParamsLocked(Z)V
    .locals 1
    .param p1, "wasCancelled"    # Z

    .line 365
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorControlService;->mVibrationParamRequest:Lcom/android/server/vibrator/VibratorControlService$VibrationParamRequest;

    if-eqz v0, :cond_0

    .line 366
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorControlService;->mVibrationParamRequest:Lcom/android/server/vibrator/VibratorControlService$VibrationParamRequest;

    invoke-virtual {v0, p1}, Lcom/android/server/vibrator/VibratorControlService$VibrationParamRequest;->endRequest(Z)V

    .line 368
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/vibrator/VibratorControlService;->mVibrationParamRequest:Lcom/android/server/vibrator/VibratorControlService$VibrationParamRequest;

    .line 369
    return-void
.end method

.method private static mapFromAdaptiveVibrationTypeToVibrationUsages(I)[I
    .locals 2
    .param p0, "types"    # I

    .line 397
    new-instance v0, Landroid/util/IntArray;

    const/16 v1, 0xf

    invoke-direct {v0, v1}, Landroid/util/IntArray;-><init>(I)V

    .line 398
    .local v0, "usages":Landroid/util/IntArray;
    and-int/lit8 v1, p0, 0x1

    if-eqz v1, :cond_0

    .line 399
    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/util/IntArray;->add(I)V

    .line 402
    :cond_0
    and-int/lit8 v1, p0, 0x2

    if-eqz v1, :cond_1

    .line 403
    const/16 v1, 0x31

    invoke-virtual {v0, v1}, Landroid/util/IntArray;->add(I)V

    .line 404
    const/16 v1, 0x41

    invoke-virtual {v0, v1}, Landroid/util/IntArray;->add(I)V

    .line 407
    :cond_1
    and-int/lit8 v1, p0, 0x4

    if-eqz v1, :cond_2

    .line 408
    const/16 v1, 0x21

    invoke-virtual {v0, v1}, Landroid/util/IntArray;->add(I)V

    .line 411
    :cond_2
    and-int/lit8 v1, p0, 0x10

    if-eqz v1, :cond_3

    .line 412
    const/16 v1, 0x13

    invoke-virtual {v0, v1}, Landroid/util/IntArray;->add(I)V

    .line 413
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/util/IntArray;->add(I)V

    .line 416
    :cond_3
    and-int/lit8 v1, p0, 0x8

    if-eqz v1, :cond_4

    .line 417
    const/16 v1, 0x12

    invoke-virtual {v0, v1}, Landroid/util/IntArray;->add(I)V

    .line 418
    const/16 v1, 0x32

    invoke-virtual {v0, v1}, Landroid/util/IntArray;->add(I)V

    .line 420
    :cond_4
    invoke-virtual {v0}, Landroid/util/IntArray;->toArray()[I

    move-result-object v1

    return-object v1
.end method

.method private static mapToAdaptiveVibrationType(I)I
    .locals 2
    .param p0, "usage"    # I

    .line 372
    sparse-switch p0, :sswitch_data_0

    .line 390
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unrecognized vibration usage "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VibratorControlService"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    const/4 v0, -0x1

    return v0

    .line 377
    :sswitch_0
    const/4 v0, 0x2

    return v0

    .line 380
    :sswitch_1
    const/4 v0, 0x4

    return v0

    .line 387
    :sswitch_2
    const/16 v0, 0x8

    return v0

    .line 374
    :sswitch_3
    const/4 v0, 0x1

    return v0

    .line 383
    :sswitch_4
    const/16 v0, 0x10

    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_4
        0x11 -> :sswitch_3
        0x12 -> :sswitch_2
        0x13 -> :sswitch_4
        0x21 -> :sswitch_1
        0x22 -> :sswitch_2
        0x31 -> :sswitch_0
        0x32 -> :sswitch_2
        0x41 -> :sswitch_0
        0x42 -> :sswitch_2
    .end sparse-switch
.end method

.method private recordClearVibrationParams(I)V
    .locals 7
    .param p1, "typesMask"    # I

    .line 495
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 496
    .local v2, "createTime":J
    iget-object v6, p0, Lcom/android/server/vibrator/VibratorControlService;->mVibrationParamsRecords:Lcom/android/server/vibrator/VibratorControlService$VibrationParamsRecords;

    new-instance v0, Lcom/android/server/vibrator/VibratorControlService$VibrationScaleParamRecord;

    sget-object v1, Lcom/android/server/vibrator/VibratorControlService$VibrationParamsRecords$Operation;->CLEAR:Lcom/android/server/vibrator/VibratorControlService$VibrationParamsRecords$Operation;

    const/high16 v5, -0x40800000    # -1.0f

    move v4, p1

    .end local p1    # "typesMask":I
    .local v4, "typesMask":I
    invoke-direct/range {v0 .. v5}, Lcom/android/server/vibrator/VibratorControlService$VibrationScaleParamRecord;-><init>(Lcom/android/server/vibrator/VibratorControlService$VibrationParamsRecords$Operation;JIF)V

    invoke-virtual {v6, v0}, Lcom/android/server/vibrator/GroupedAggregatedLogRecords;->add(Lcom/android/server/vibrator/GroupedAggregatedLogRecords$SingleLogRecord;)Lcom/android/server/vibrator/GroupedAggregatedLogRecords$AggregatedLogRecord;

    .line 498
    return-void
.end method

.method private recordUpdateVibrationParams([Landroid/frameworks/vibrator/VibrationParam;Z)V
    .locals 11
    .param p1, "params"    # [Landroid/frameworks/vibrator/VibrationParam;
    .param p2, "fromRequest"    # Z

    .line 477
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 480
    if-eqz p2, :cond_0

    sget-object v0, Lcom/android/server/vibrator/VibratorControlService$VibrationParamsRecords$Operation;->PULL:Lcom/android/server/vibrator/VibratorControlService$VibrationParamsRecords$Operation;

    goto :goto_0

    .line 481
    :cond_0
    sget-object v0, Lcom/android/server/vibrator/VibratorControlService$VibrationParamsRecords$Operation;->PUSH:Lcom/android/server/vibrator/VibratorControlService$VibrationParamsRecords$Operation;

    :goto_0
    move-object v2, v0

    .line 482
    .local v2, "operation":Lcom/android/server/vibrator/VibratorControlService$VibrationParamsRecords$Operation;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    .line 483
    .local v3, "createTime":J
    array-length v0, p1

    const/4 v1, 0x0

    move v7, v1

    :goto_1
    if-ge v7, v0, :cond_2

    aget-object v8, p1, v7

    .line 484
    .local v8, "param":Landroid/frameworks/vibrator/VibrationParam;
    invoke-virtual {v8}, Landroid/frameworks/vibrator/VibrationParam;->getTag()I

    move-result v1

    if-eqz v1, :cond_1

    .line 485
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unsupported vibration param ignored from dumpsys records: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v5, "VibratorControlService"

    invoke-static {v5, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 486
    goto :goto_2

    .line 488
    :cond_1
    invoke-virtual {v8}, Landroid/frameworks/vibrator/VibrationParam;->getScale()Landroid/frameworks/vibrator/ScaleParam;

    move-result-object v9

    .line 489
    .local v9, "scaleParam":Landroid/frameworks/vibrator/ScaleParam;
    iget-object v10, p0, Lcom/android/server/vibrator/VibratorControlService;->mVibrationParamsRecords:Lcom/android/server/vibrator/VibratorControlService$VibrationParamsRecords;

    new-instance v1, Lcom/android/server/vibrator/VibratorControlService$VibrationScaleParamRecord;

    iget v5, v9, Landroid/frameworks/vibrator/ScaleParam;->typesMask:I

    iget v6, v9, Landroid/frameworks/vibrator/ScaleParam;->scale:F

    invoke-direct/range {v1 .. v6}, Lcom/android/server/vibrator/VibratorControlService$VibrationScaleParamRecord;-><init>(Lcom/android/server/vibrator/VibratorControlService$VibrationParamsRecords$Operation;JIF)V

    invoke-virtual {v10, v1}, Lcom/android/server/vibrator/GroupedAggregatedLogRecords;->add(Lcom/android/server/vibrator/GroupedAggregatedLogRecords$SingleLogRecord;)Lcom/android/server/vibrator/GroupedAggregatedLogRecords$AggregatedLogRecord;

    .line 483
    .end local v8    # "param":Landroid/frameworks/vibrator/VibrationParam;
    .end local v9    # "scaleParam":Landroid/frameworks/vibrator/ScaleParam;
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 492
    :cond_2
    return-void
.end method

.method private requireContainsNoNullElement([Landroid/frameworks/vibrator/VibrationParam;)V
    .locals 2
    .param p1, "params"    # [Landroid/frameworks/vibrator/VibrationParam;

    .line 501
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 505
    return-void

    .line 502
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid vibration params received: null values are not permitted."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private updateAdaptiveHapticsScales(IF)V
    .locals 4
    .param p1, "types"    # I
    .param p2, "scale"    # F

    .line 450
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorControlService;->mStatsLogger:Lcom/android/server/vibrator/VibratorFrameworkStatsLogger;

    invoke-virtual {v0, p2}, Lcom/android/server/vibrator/VibratorFrameworkStatsLogger;->logVibrationParamScale(F)V

    .line 451
    invoke-static {p1}, Lcom/android/server/vibrator/VibratorControlService;->mapFromAdaptiveVibrationTypeToVibrationUsages(I)[I

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget v3, v0, v2

    .line 452
    .local v3, "usage":I
    invoke-direct {p0, v3, p2}, Lcom/android/server/vibrator/VibratorControlService;->updateOrRemoveAdaptiveHapticsScale(IF)V

    .line 451
    .end local v3    # "usage":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 454
    :cond_0
    return-void
.end method

.method private updateAdaptiveHapticsScales([Landroid/frameworks/vibrator/VibrationParam;)V
    .locals 6
    .param p1, "params"    # [Landroid/frameworks/vibrator/VibrationParam;

    .line 430
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 432
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    .line 433
    .local v2, "param":Landroid/frameworks/vibrator/VibrationParam;
    invoke-virtual {v2}, Landroid/frameworks/vibrator/VibrationParam;->getTag()I

    move-result v3

    if-eqz v3, :cond_0

    .line 434
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unsupported vibration param: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "VibratorControlService"

    invoke-static {v4, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    goto :goto_1

    .line 437
    :cond_0
    invoke-virtual {v2}, Landroid/frameworks/vibrator/VibrationParam;->getScale()Landroid/frameworks/vibrator/ScaleParam;

    move-result-object v3

    .line 438
    .local v3, "scaleParam":Landroid/frameworks/vibrator/ScaleParam;
    iget v4, v3, Landroid/frameworks/vibrator/ScaleParam;->typesMask:I

    iget v5, v3, Landroid/frameworks/vibrator/ScaleParam;->scale:F

    invoke-direct {p0, v4, v5}, Lcom/android/server/vibrator/VibratorControlService;->updateAdaptiveHapticsScales(IF)V

    .line 432
    .end local v2    # "param":Landroid/frameworks/vibrator/VibrationParam;
    .end local v3    # "scaleParam":Landroid/frameworks/vibrator/ScaleParam;
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 440
    :cond_1
    return-void
.end method

.method private updateOrRemoveAdaptiveHapticsScale(IF)V
    .locals 1
    .param p1, "usageHint"    # I
    .param p2, "scale"    # F

    .line 467
    const/high16 v0, -0x40800000    # -1.0f

    cmpl-float v0, p2, v0

    if-nez v0, :cond_0

    .line 468
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorControlService;->mVibrationScaler:Lcom/android/server/vibrator/VibrationScaler;

    invoke-virtual {v0, p1}, Lcom/android/server/vibrator/VibrationScaler;->removeAdaptiveHapticsScale(I)V

    .line 469
    return-void

    .line 472
    :cond_0
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorControlService;->mVibrationScaler:Lcom/android/server/vibrator/VibrationScaler;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/vibrator/VibrationScaler;->updateAdaptiveHapticsScale(IF)V

    .line 473
    return-void
.end method


# virtual methods
.method public clearVibrationParams(ILandroid/frameworks/vibrator/IVibratorController;)V
    .locals 4
    .param p1, "types"    # I
    .param p2, "token"    # Landroid/frameworks/vibrator/IVibratorController;

    .line 170
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 172
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorControlService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 173
    :try_start_0
    iget-object v1, p0, Lcom/android/server/vibrator/VibratorControlService;->mVibratorControllerHolder:Lcom/android/server/vibrator/VibratorControllerHolder;

    invoke-virtual {v1}, Lcom/android/server/vibrator/VibratorControllerHolder;->getVibratorController()Landroid/frameworks/vibrator/IVibratorController;

    move-result-object v1

    if-nez v1, :cond_0

    .line 174
    const-string v1, "VibratorControlService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Received request to clear VibrationParams for IVibratorController = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", but no controller was previously registered. Request Ignored."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    monitor-exit v0

    return-void

    .line 188
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 179
    :cond_0
    iget-object v1, p0, Lcom/android/server/vibrator/VibratorControlService;->mVibratorControllerHolder:Lcom/android/server/vibrator/VibratorControllerHolder;

    invoke-virtual {v1}, Lcom/android/server/vibrator/VibratorControllerHolder;->getVibratorController()Landroid/frameworks/vibrator/IVibratorController;

    move-result-object v1

    invoke-interface {v1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 180
    invoke-interface {p2}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 179
    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 181
    const-string v1, "VibratorControlService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to clear VibrationParams. The provided controller doesn\'t match the registered one. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    monitor-exit v0

    return-void

    .line 186
    :cond_1
    const/high16 v1, -0x40800000    # -1.0f

    invoke-direct {p0, p1, v1}, Lcom/android/server/vibrator/VibratorControlService;->updateAdaptiveHapticsScales(IF)V

    .line 187
    invoke-direct {p0, p1}, Lcom/android/server/vibrator/VibratorControlService;->recordClearVibrationParams(I)V

    .line 188
    monitor-exit v0

    .line 189
    return-void

    .line 188
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method dump(Landroid/util/IndentingPrintWriter;)V
    .locals 5
    .param p1, "pw"    # Landroid/util/IndentingPrintWriter;

    .line 326
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorControlService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 327
    :try_start_0
    iget-object v1, p0, Lcom/android/server/vibrator/VibratorControlService;->mVibratorControllerHolder:Lcom/android/server/vibrator/VibratorControllerHolder;

    .line 328
    invoke-virtual {v1}, Lcom/android/server/vibrator/VibratorControllerHolder;->getVibratorController()Landroid/frameworks/vibrator/IVibratorController;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    .line 329
    .local v1, "isVibratorControllerRegistered":Z
    :goto_0
    iget-object v4, p0, Lcom/android/server/vibrator/VibratorControlService;->mVibrationParamRequest:Lcom/android/server/vibrator/VibratorControlService$VibrationParamRequest;

    if-eqz v4, :cond_1

    move v2, v3

    .line 330
    .local v2, "hasPendingVibrationParamsRequest":Z
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 332
    const-string v0, "VibratorControlService:"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 333
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 334
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isVibratorControllerRegistered = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 335
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "hasPendingVibrationParamsRequest = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 337
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 338
    const-string v0, "Vibration parameters update history:"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 339
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 340
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorControlService;->mVibrationParamsRecords:Lcom/android/server/vibrator/VibratorControlService$VibrationParamsRecords;

    invoke-virtual {v0, p1}, Lcom/android/server/vibrator/GroupedAggregatedLogRecords;->dump(Landroid/util/IndentingPrintWriter;)V

    .line 341
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 343
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 344
    return-void

    .line 330
    .end local v1    # "isVibratorControllerRegistered":Z
    .end local v2    # "hasPendingVibrationParamsRequest":Z
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method dump(Landroid/util/proto/ProtoOutputStream;)V
    .locals 4
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;

    .line 349
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorControlService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 350
    :try_start_0
    iget-object v1, p0, Lcom/android/server/vibrator/VibratorControlService;->mVibratorControllerHolder:Lcom/android/server/vibrator/VibratorControllerHolder;

    .line 351
    invoke-virtual {v1}, Lcom/android/server/vibrator/VibratorControllerHolder;->getVibratorController()Landroid/frameworks/vibrator/IVibratorController;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 352
    .local v1, "isVibratorControllerRegistered":Z
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 353
    const-wide v2, 0x1050000001bL

    invoke-virtual {p1, v2, v3, v1}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 355
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorControlService;->mVibrationParamsRecords:Lcom/android/server/vibrator/VibratorControlService$VibrationParamsRecords;

    invoke-virtual {v0, p1}, Lcom/android/server/vibrator/GroupedAggregatedLogRecords;->dump(Landroid/util/proto/ProtoOutputStream;)V

    .line 356
    return-void

    .line 352
    .end local v1    # "isVibratorControllerRegistered":Z
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public getInterfaceHash()Ljava/lang/String;
    .locals 1

    .line 237
    const-string v0, "eb095ed3034973273898ca9e37bbc72566392b8a"

    return-object v0
.end method

.method public getInterfaceVersion()I
    .locals 1

    .line 232
    const/4 v0, 0x1

    return v0
.end method

.method public getRequestVibrationParamsToken()Landroid/os/IBinder;
    .locals 2

    .line 317
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorControlService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 318
    :try_start_0
    iget-object v1, p0, Lcom/android/server/vibrator/VibratorControlService;->mVibrationParamRequest:Lcom/android/server/vibrator/VibratorControlService$VibrationParamRequest;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/server/vibrator/VibratorControlService;->mVibrationParamRequest:Lcom/android/server/vibrator/VibratorControlService$VibrationParamRequest;

    iget-object v1, v1, Lcom/android/server/vibrator/VibratorControlService$VibrationParamRequest;->token:Landroid/os/IBinder;

    :goto_0
    monitor-exit v0

    return-object v1

    .line 319
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onRequestVibrationParamsComplete(Landroid/os/IBinder;[Landroid/frameworks/vibrator/VibrationParam;)V
    .locals 5
    .param p1, "requestToken"    # Landroid/os/IBinder;
    .param p2, "result"    # [Landroid/frameworks/vibrator/VibrationParam;

    .line 194
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 195
    invoke-direct {p0, p2}, Lcom/android/server/vibrator/VibratorControlService;->requireContainsNoNullElement([Landroid/frameworks/vibrator/VibrationParam;)V

    .line 197
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorControlService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 198
    :try_start_0
    iget-object v1, p0, Lcom/android/server/vibrator/VibratorControlService;->mVibrationParamRequest:Lcom/android/server/vibrator/VibratorControlService$VibrationParamRequest;

    if-nez v1, :cond_0

    .line 199
    const-string v1, "VibratorControlService"

    const-string v2, "New vibration params received but no token was cached in the service. New vibration params ignored."

    invoke-static {v1, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    iget-object v1, p0, Lcom/android/server/vibrator/VibratorControlService;->mStatsLogger:Lcom/android/server/vibrator/VibratorFrameworkStatsLogger;

    invoke-virtual {v1}, Lcom/android/server/vibrator/VibratorFrameworkStatsLogger;->logVibrationParamResponseIgnored()V

    .line 203
    monitor-exit v0

    return-void

    .line 227
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 206
    :cond_0
    iget-object v1, p0, Lcom/android/server/vibrator/VibratorControlService;->mVibrationParamRequest:Lcom/android/server/vibrator/VibratorControlService$VibrationParamRequest;

    iget-object v1, v1, Lcom/android/server/vibrator/VibratorControlService$VibrationParamRequest;->token:Landroid/os/IBinder;

    invoke-static {p1, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 207
    const-string v1, "VibratorControlService"

    const-string v2, "New vibration params received but the provided token does not match the cached one. New vibration params ignored."

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    iget-object v1, p0, Lcom/android/server/vibrator/VibratorControlService;->mStatsLogger:Lcom/android/server/vibrator/VibratorFrameworkStatsLogger;

    invoke-virtual {v1}, Lcom/android/server/vibrator/VibratorFrameworkStatsLogger;->logVibrationParamResponseIgnored()V

    .line 211
    monitor-exit v0

    return-void

    .line 214
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iget-object v3, p0, Lcom/android/server/vibrator/VibratorControlService;->mVibrationParamRequest:Lcom/android/server/vibrator/VibratorControlService$VibrationParamRequest;

    iget-wide v3, v3, Lcom/android/server/vibrator/VibratorControlService$VibrationParamRequest;->uptimeMs:J

    sub-long/2addr v1, v3

    .line 215
    .local v1, "latencyMs":J
    iget-object v3, p0, Lcom/android/server/vibrator/VibratorControlService;->mStatsLogger:Lcom/android/server/vibrator/VibratorFrameworkStatsLogger;

    iget-object v4, p0, Lcom/android/server/vibrator/VibratorControlService;->mVibrationParamRequest:Lcom/android/server/vibrator/VibratorControlService$VibrationParamRequest;

    iget v4, v4, Lcom/android/server/vibrator/VibratorControlService$VibrationParamRequest;->uid:I

    invoke-virtual {v3, v4, v1, v2}, Lcom/android/server/vibrator/VibratorFrameworkStatsLogger;->logVibrationParamRequestLatency(IJ)V

    .line 217
    if-nez p2, :cond_2

    .line 218
    const-string v3, "VibratorControlService"

    const-string v4, "New vibration params received but are null. New vibration params ignored."

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    monitor-exit v0

    return-void

    .line 224
    :cond_2
    invoke-direct {p0, p2}, Lcom/android/server/vibrator/VibratorControlService;->updateAdaptiveHapticsScales([Landroid/frameworks/vibrator/VibrationParam;)V

    .line 225
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/android/server/vibrator/VibratorControlService;->endOngoingRequestVibrationParamsLocked(Z)V

    .line 226
    const/4 v3, 0x1

    invoke-direct {p0, p2, v3}, Lcom/android/server/vibrator/VibratorControlService;->recordUpdateVibrationParams([Landroid/frameworks/vibrator/VibrationParam;Z)V

    .line 227
    .end local v1    # "latencyMs":J
    monitor-exit v0

    .line 228
    return-void

    .line 227
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public registerVibratorController(Landroid/frameworks/vibrator/IVibratorController;)V
    .locals 2
    .param p1, "controller"    # Landroid/frameworks/vibrator/IVibratorController;

    .line 106
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 108
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorControlService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 109
    :try_start_0
    iget-object v1, p0, Lcom/android/server/vibrator/VibratorControlService;->mVibratorControllerHolder:Lcom/android/server/vibrator/VibratorControllerHolder;

    invoke-virtual {v1, p1}, Lcom/android/server/vibrator/VibratorControllerHolder;->setVibratorController(Landroid/frameworks/vibrator/IVibratorController;)V

    .line 110
    monitor-exit v0

    .line 111
    return-void

    .line 110
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setVibrationParams([Landroid/frameworks/vibrator/VibrationParam;Landroid/frameworks/vibrator/IVibratorController;)V
    .locals 4
    .param p1, "params"    # [Landroid/frameworks/vibrator/VibrationParam;
    .param p2, "token"    # Landroid/frameworks/vibrator/IVibratorController;

    .line 139
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 140
    invoke-direct {p0, p1}, Lcom/android/server/vibrator/VibratorControlService;->requireContainsNoNullElement([Landroid/frameworks/vibrator/VibrationParam;)V

    .line 142
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorControlService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 143
    :try_start_0
    iget-object v1, p0, Lcom/android/server/vibrator/VibratorControlService;->mVibratorControllerHolder:Lcom/android/server/vibrator/VibratorControllerHolder;

    invoke-virtual {v1}, Lcom/android/server/vibrator/VibratorControllerHolder;->getVibratorController()Landroid/frameworks/vibrator/IVibratorController;

    move-result-object v1

    if-nez v1, :cond_0

    .line 144
    const-string v1, "VibratorControlService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Received request to set VibrationParams for IVibratorController = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", but no controller was previously registered. Request Ignored."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    monitor-exit v0

    return-void

    .line 165
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 149
    :cond_0
    iget-object v1, p0, Lcom/android/server/vibrator/VibratorControlService;->mVibratorControllerHolder:Lcom/android/server/vibrator/VibratorControllerHolder;

    invoke-virtual {v1}, Lcom/android/server/vibrator/VibratorControllerHolder;->getVibratorController()Landroid/frameworks/vibrator/IVibratorController;

    move-result-object v1

    invoke-interface {v1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 150
    invoke-interface {p2}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 149
    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 151
    const-string v1, "VibratorControlService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to set new VibrationParams. The provided controller doesn\'t match the registered one. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    monitor-exit v0

    return-void

    .line 155
    :cond_1
    if-nez p1, :cond_2

    .line 157
    const-string v1, "VibratorControlService"

    const-string v2, "New vibration params received but are null. New vibration params ignored."

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    monitor-exit v0

    return-void

    .line 163
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/server/vibrator/VibratorControlService;->updateAdaptiveHapticsScales([Landroid/frameworks/vibrator/VibrationParam;)V

    .line 164
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lcom/android/server/vibrator/VibratorControlService;->recordUpdateVibrationParams([Landroid/frameworks/vibrator/VibrationParam;Z)V

    .line 165
    monitor-exit v0

    .line 166
    return-void

    .line 165
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public shouldRequestVibrationParams(I)Z
    .locals 3
    .param p1, "usage"    # I

    .line 300
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorControlService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 301
    :try_start_0
    iget-object v1, p0, Lcom/android/server/vibrator/VibratorControlService;->mVibratorControllerHolder:Lcom/android/server/vibrator/VibratorControllerHolder;

    .line 302
    invoke-virtual {v1}, Lcom/android/server/vibrator/VibratorControllerHolder;->getVibratorController()Landroid/frameworks/vibrator/IVibratorController;

    move-result-object v1

    .line 303
    .local v1, "vibratorController":Landroid/frameworks/vibrator/IVibratorController;
    if-nez v1, :cond_0

    .line 304
    monitor-exit v0

    const/4 v0, 0x0

    return v0

    .line 308
    .end local v1    # "vibratorController":Landroid/frameworks/vibrator/IVibratorController;
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 307
    .restart local v1    # "vibratorController":Landroid/frameworks/vibrator/IVibratorController;
    :cond_0
    iget-object v2, p0, Lcom/android/server/vibrator/VibratorControlService;->mRequestVibrationParamsForUsages:[I

    invoke-static {v2, p1}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v2

    monitor-exit v0

    return v2

    .line 308
    .end local v1    # "vibratorController":Landroid/frameworks/vibrator/IVibratorController;
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public triggerVibrationParamsRequest(III)Ljava/util/concurrent/CompletableFuture;
    .locals 8
    .param p1, "uid"    # I
    .param p2, "usage"    # I
    .param p3, "timeoutInMillis"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III)",
            "Ljava/util/concurrent/CompletableFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 253
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorControlService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 254
    :try_start_0
    iget-object v1, p0, Lcom/android/server/vibrator/VibratorControlService;->mVibratorControllerHolder:Lcom/android/server/vibrator/VibratorControllerHolder;

    .line 255
    invoke-virtual {v1}, Lcom/android/server/vibrator/VibratorControllerHolder;->getVibratorController()Landroid/frameworks/vibrator/IVibratorController;

    move-result-object v1

    .line 256
    .local v1, "vibratorController":Landroid/frameworks/vibrator/IVibratorController;
    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 257
    const-string v3, "VibratorControlService"

    const-string v4, "Unable to request vibration params. There is no registered IVibrationController."

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    monitor-exit v0

    return-object v2

    .line 287
    .end local v1    # "vibratorController":Landroid/frameworks/vibrator/IVibratorController;
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 262
    .restart local v1    # "vibratorController":Landroid/frameworks/vibrator/IVibratorController;
    :cond_0
    invoke-static {p2}, Lcom/android/server/vibrator/VibratorControlService;->mapToAdaptiveVibrationType(I)I

    move-result v3

    .line 263
    .local v3, "vibrationType":I
    const/4 v4, -0x1

    if-ne v3, v4, :cond_1

    .line 264
    const-string v4, "VibratorControlService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to request vibration params. The provided usage "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " is unrecognized."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    monitor-exit v0

    return-object v2

    .line 269
    :cond_1
    iget-object v4, p0, Lcom/android/server/vibrator/VibratorControlService;->mVibrationParamRequest:Lcom/android/server/vibrator/VibratorControlService$VibrationParamRequest;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/server/vibrator/VibratorControlService;->mVibrationParamRequest:Lcom/android/server/vibrator/VibratorControlService$VibrationParamRequest;

    iget v4, v4, Lcom/android/server/vibrator/VibratorControlService$VibrationParamRequest;->usage:I

    if-ne v4, p2, :cond_2

    .line 272
    iget-object v2, p0, Lcom/android/server/vibrator/VibratorControlService;->mVibrationParamRequest:Lcom/android/server/vibrator/VibratorControlService$VibrationParamRequest;

    iget-object v2, v2, Lcom/android/server/vibrator/VibratorControlService$VibrationParamRequest;->future:Ljava/util/concurrent/CompletableFuture;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v2

    .line 276
    :cond_2
    const/4 v4, 0x1

    :try_start_1
    invoke-direct {p0, v4}, Lcom/android/server/vibrator/VibratorControlService;->endOngoingRequestVibrationParamsLocked(Z)V

    .line 277
    new-instance v5, Lcom/android/server/vibrator/VibratorControlService$VibrationParamRequest;

    invoke-direct {v5, p1, p2}, Lcom/android/server/vibrator/VibratorControlService$VibrationParamRequest;-><init>(II)V

    iput-object v5, p0, Lcom/android/server/vibrator/VibratorControlService;->mVibrationParamRequest:Lcom/android/server/vibrator/VibratorControlService$VibrationParamRequest;

    .line 278
    int-to-long v5, p3

    iget-object v7, p0, Lcom/android/server/vibrator/VibratorControlService;->mVibrationParamRequest:Lcom/android/server/vibrator/VibratorControlService$VibrationParamRequest;

    iget-object v7, v7, Lcom/android/server/vibrator/VibratorControlService$VibrationParamRequest;->token:Landroid/os/IBinder;

    invoke-interface {v1, v3, v5, v6, v7}, Landroid/frameworks/vibrator/IVibratorController;->requestVibrationParams(IJLandroid/os/IBinder;)V

    .line 280
    iget-object v5, p0, Lcom/android/server/vibrator/VibratorControlService;->mVibrationParamRequest:Lcom/android/server/vibrator/VibratorControlService$VibrationParamRequest;

    iget-object v2, v5, Lcom/android/server/vibrator/VibratorControlService$VibrationParamRequest;->future:Ljava/util/concurrent/CompletableFuture;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return-object v2

    .line 281
    :catch_0
    move-exception v5

    nop

    .line 282
    .local v5, "e":Landroid/os/RemoteException;
    const-string v6, "VibratorControlService"

    const-string v7, "Failed to request vibration params."

    invoke-static {v6, v7, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 283
    invoke-direct {p0, v4}, Lcom/android/server/vibrator/VibratorControlService;->endOngoingRequestVibrationParamsLocked(Z)V

    .line 286
    .end local v5    # "e":Landroid/os/RemoteException;
    monitor-exit v0

    return-object v2

    .line 287
    .end local v1    # "vibratorController":Landroid/frameworks/vibrator/IVibratorController;
    .end local v3    # "vibrationType":I
    :goto_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public unregisterVibratorController(Landroid/frameworks/vibrator/IVibratorController;)V
    .locals 4
    .param p1, "controller"    # Landroid/frameworks/vibrator/IVibratorController;

    .line 115
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 117
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorControlService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 118
    :try_start_0
    iget-object v1, p0, Lcom/android/server/vibrator/VibratorControlService;->mVibratorControllerHolder:Lcom/android/server/vibrator/VibratorControllerHolder;

    invoke-virtual {v1}, Lcom/android/server/vibrator/VibratorControllerHolder;->getVibratorController()Landroid/frameworks/vibrator/IVibratorController;

    move-result-object v1

    if-nez v1, :cond_0

    .line 119
    const-string v1, "VibratorControlService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Received request to unregister IVibratorController = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", but no controller was previously registered. Request Ignored."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    monitor-exit v0

    return-void

    .line 133
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 124
    :cond_0
    iget-object v1, p0, Lcom/android/server/vibrator/VibratorControlService;->mVibratorControllerHolder:Lcom/android/server/vibrator/VibratorControllerHolder;

    invoke-virtual {v1}, Lcom/android/server/vibrator/VibratorControllerHolder;->getVibratorController()Landroid/frameworks/vibrator/IVibratorController;

    move-result-object v1

    invoke-interface {v1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 125
    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 124
    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 126
    const-string v1, "VibratorControlService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to unregister IVibratorController. The provided controller doesn\'t match the registered one. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    monitor-exit v0

    return-void

    .line 130
    :cond_1
    iget-object v1, p0, Lcom/android/server/vibrator/VibratorControlService;->mVibrationScaler:Lcom/android/server/vibrator/VibrationScaler;

    invoke-virtual {v1}, Lcom/android/server/vibrator/VibrationScaler;->clearAdaptiveHapticsScales()V

    .line 131
    iget-object v1, p0, Lcom/android/server/vibrator/VibratorControlService;->mVibratorControllerHolder:Lcom/android/server/vibrator/VibratorControllerHolder;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/vibrator/VibratorControllerHolder;->setVibratorController(Landroid/frameworks/vibrator/IVibratorController;)V

    .line 132
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/server/vibrator/VibratorControlService;->endOngoingRequestVibrationParamsLocked(Z)V

    .line 133
    monitor-exit v0

    .line 134
    return-void

    .line 133
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
