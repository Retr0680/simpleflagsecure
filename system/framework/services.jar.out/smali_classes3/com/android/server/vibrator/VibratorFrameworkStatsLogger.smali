.class public Lcom/android/server/vibrator/VibratorFrameworkStatsLogger;
.super Ljava/lang/Object;
.source "VibratorFrameworkStatsLogger.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "VibratorFrameworkStatsLogger"

.field private static final VIBRATION_REPORTED_MAX_QUEUE_SIZE:I = 0x12c

.field private static final VIBRATION_REPORTED_MIN_INTERVAL_MILLIS:I = 0xa

.field private static final VIBRATION_REPORTED_WARNING_QUEUE_SIZE:I = 0xc8

.field private static final sAdaptiveHapticScaleHistogram:Lcom/android/modules/expresslog/Histogram;

.field private static final sVibrationParamRequestLatencyHistogram:Lcom/android/modules/expresslog/Histogram;

.field private static final sVibrationParamScaleHistogram:Lcom/android/modules/expresslog/Histogram;

.field private static final sVibrationVendorEffectSizeHistogram:Lcom/android/modules/expresslog/Histogram;

.field private static final sVibrationVendorSessionVibrationsHistogram:Lcom/android/modules/expresslog/Histogram;


# instance fields
.field private final mConsumeVibrationStatsQueueRunnable:Ljava/lang/Runnable;

.field private final mHandler:Landroid/os/Handler;

.field private mLastVibrationReportedLogUptime:J

.field private final mLock:Ljava/lang/Object;

.field private final mVibrationReportedLogIntervalMillis:J

.field private final mVibrationReportedQueueMaxSize:J

.field private mVibrationStatsQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/android/server/vibrator/VibrationStats$StatsInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$3clAp4KeKtl_6LJMNjTyvIQT3s8(IJ)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/android/server/vibrator/VibratorFrameworkStatsLogger;->lambda$writeVibratorStateOnAsync$1(IJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$6sCMCxdISmdoENm6LJ5XtEdSNaY(Lcom/android/server/vibrator/VibratorFrameworkStatsLogger;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/vibrator/VibratorFrameworkStatsLogger;->lambda$new$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$e1LVOLtWrkBnktoOi9j1ZkWqiNw(I)V
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/server/vibrator/VibratorFrameworkStatsLogger;->lambda$writeVibratorStateOffAsync$2(I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 7

    .line 50
    new-instance v0, Lcom/android/modules/expresslog/Histogram;

    new-instance v1, Lcom/android/modules/expresslog/Histogram$UniformOptions;

    const/high16 v2, 0x42c80000    # 100.0f

    const/16 v3, 0x14

    const/4 v4, 0x0

    invoke-direct {v1, v3, v4, v2}, Lcom/android/modules/expresslog/Histogram$UniformOptions;-><init>(IFF)V

    const-string v2, "vibrator.value_vibration_param_request_latency"

    invoke-direct {v0, v2, v1}, Lcom/android/modules/expresslog/Histogram;-><init>(Ljava/lang/String;Lcom/android/modules/expresslog/Histogram$BinOptions;)V

    sput-object v0, Lcom/android/server/vibrator/VibratorFrameworkStatsLogger;->sVibrationParamRequestLatencyHistogram:Lcom/android/modules/expresslog/Histogram;

    .line 56
    new-instance v0, Lcom/android/modules/expresslog/Histogram;

    new-instance v1, Lcom/android/modules/expresslog/Histogram$UniformOptions;

    const/high16 v2, 0x40000000    # 2.0f

    invoke-direct {v1, v3, v4, v2}, Lcom/android/modules/expresslog/Histogram$UniformOptions;-><init>(IFF)V

    const-string v5, "vibrator.value_vibration_param_scale"

    invoke-direct {v0, v5, v1}, Lcom/android/modules/expresslog/Histogram;-><init>(Ljava/lang/String;Lcom/android/modules/expresslog/Histogram$BinOptions;)V

    sput-object v0, Lcom/android/server/vibrator/VibratorFrameworkStatsLogger;->sVibrationParamScaleHistogram:Lcom/android/modules/expresslog/Histogram;

    .line 61
    new-instance v0, Lcom/android/modules/expresslog/Histogram;

    new-instance v1, Lcom/android/modules/expresslog/Histogram$UniformOptions;

    invoke-direct {v1, v3, v4, v2}, Lcom/android/modules/expresslog/Histogram$UniformOptions;-><init>(IFF)V

    const-string v2, "vibrator.value_vibration_adaptive_haptic_scale"

    invoke-direct {v0, v2, v1}, Lcom/android/modules/expresslog/Histogram;-><init>(Ljava/lang/String;Lcom/android/modules/expresslog/Histogram$BinOptions;)V

    sput-object v0, Lcom/android/server/vibrator/VibratorFrameworkStatsLogger;->sAdaptiveHapticScaleHistogram:Lcom/android/modules/expresslog/Histogram;

    .line 66
    new-instance v0, Lcom/android/modules/expresslog/Histogram;

    new-instance v1, Lcom/android/modules/expresslog/Histogram$ScaledRangeOptions;

    const/16 v2, 0x19

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    const v6, 0x3fb33333    # 1.4f

    invoke-direct {v1, v2, v4, v5, v6}, Lcom/android/modules/expresslog/Histogram$ScaledRangeOptions;-><init>(IIFF)V

    const-string v2, "vibrator.value_vibration_vendor_effect_size"

    invoke-direct {v0, v2, v1}, Lcom/android/modules/expresslog/Histogram;-><init>(Ljava/lang/String;Lcom/android/modules/expresslog/Histogram$BinOptions;)V

    sput-object v0, Lcom/android/server/vibrator/VibratorFrameworkStatsLogger;->sVibrationVendorEffectSizeHistogram:Lcom/android/modules/expresslog/Histogram;

    .line 71
    new-instance v0, Lcom/android/modules/expresslog/Histogram;

    new-instance v1, Lcom/android/modules/expresslog/Histogram$ScaledRangeOptions;

    invoke-direct {v1, v3, v4, v5, v6}, Lcom/android/modules/expresslog/Histogram$ScaledRangeOptions;-><init>(IIFF)V

    const-string v2, "vibrator.value_vibration_vendor_session_vibrations"

    invoke-direct {v0, v2, v1}, Lcom/android/modules/expresslog/Histogram;-><init>(Ljava/lang/String;Lcom/android/modules/expresslog/Histogram$BinOptions;)V

    sput-object v0, Lcom/android/server/vibrator/VibratorFrameworkStatsLogger;->sVibrationVendorSessionVibrationsHistogram:Lcom/android/modules/expresslog/Histogram;

    return-void
.end method

.method constructor <init>(Landroid/os/Handler;)V
    .locals 2
    .param p1, "handler"    # Landroid/os/Handler;

    .line 88
    const/16 v0, 0xa

    const/16 v1, 0x12c

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/vibrator/VibratorFrameworkStatsLogger;-><init>(Landroid/os/Handler;II)V

    .line 89
    return-void
.end method

.method constructor <init>(Landroid/os/Handler;II)V
    .locals 2
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "vibrationReportedLogIntervalMillis"    # I
    .param p3, "vibrationReportedQueueMaxSize"    # I

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/vibrator/VibratorFrameworkStatsLogger;->mLock:Ljava/lang/Object;

    .line 79
    new-instance v0, Lcom/android/server/vibrator/VibratorFrameworkStatsLogger$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/android/server/vibrator/VibratorFrameworkStatsLogger$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/vibrator/VibratorFrameworkStatsLogger;)V

    iput-object v0, p0, Lcom/android/server/vibrator/VibratorFrameworkStatsLogger;->mConsumeVibrationStatsQueueRunnable:Ljava/lang/Runnable;

    .line 84
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/android/server/vibrator/VibratorFrameworkStatsLogger;->mVibrationStatsQueue:Ljava/util/Queue;

    .line 94
    iput-object p1, p0, Lcom/android/server/vibrator/VibratorFrameworkStatsLogger;->mHandler:Landroid/os/Handler;

    .line 95
    int-to-long v0, p2

    iput-wide v0, p0, Lcom/android/server/vibrator/VibratorFrameworkStatsLogger;->mVibrationReportedLogIntervalMillis:J

    .line 96
    int-to-long v0, p3

    iput-wide v0, p0, Lcom/android/server/vibrator/VibratorFrameworkStatsLogger;->mVibrationReportedQueueMaxSize:J

    .line 97
    return-void
.end method

.method private synthetic lambda$new$0()V
    .locals 0

    .line 80
    invoke-direct {p0}, Lcom/android/server/vibrator/VibratorFrameworkStatsLogger;->writeVibrationReportedFromQueue()V

    return-void
.end method

.method private static synthetic lambda$writeVibratorStateOffAsync$2(I)V
    .locals 3
    .param p0, "uid"    # I

    .line 110
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/16 v2, 0x54

    invoke-static {v2, p0, v0, v1, v1}, Lcom/android/internal/util/FrameworkStatsLog;->write_non_chained(IILjava/lang/String;II)V

    return-void
.end method

.method private static synthetic lambda$writeVibratorStateOnAsync$1(IJ)V
    .locals 6
    .param p0, "uid"    # I
    .param p1, "duration"    # J

    .line 102
    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v0, 0x54

    move v1, p0

    move-wide v4, p1

    .end local p0    # "uid":I
    .end local p1    # "duration":J
    .local v1, "uid":I
    .local v4, "duration":J
    invoke-static/range {v0 .. v5}, Lcom/android/internal/util/FrameworkStatsLog;->write_non_chained(IILjava/lang/String;IJ)V

    return-void
.end method

.method public static logPerformHapticsFeedbackIfKeyboard(II)V
    .locals 2
    .param p0, "uid"    # I
    .param p1, "hapticsFeedbackEffect"    # I

    .line 205
    sparse-switch p1, :sswitch_data_0

    .line 211
    const/4 v0, 0x0

    .local v0, "isKeyboard":Z
    goto :goto_0

    .line 208
    .end local v0    # "isKeyboard":Z
    :sswitch_0
    const/4 v0, 0x1

    .line 209
    .restart local v0    # "isKeyboard":Z
    nop

    .line 214
    :goto_0
    if-eqz v0, :cond_0

    .line 215
    const-string v1, "vibrator.value_perform_haptic_feedback_keyboard"

    invoke-static {v1, p0}, Lcom/android/modules/expresslog/Counter;->logIncrementWithUid(Ljava/lang/String;I)V

    .line 217
    :cond_0
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0x7 -> :sswitch_0
    .end sparse-switch
.end method

.method private static logVibrationSizeOfVendorEffects(ILandroid/os/CombinedVibration;)Z
    .locals 5
    .param p0, "uid"    # I
    .param p1, "vibration"    # Landroid/os/CombinedVibration;

    .line 259
    instance-of v0, p1, Landroid/os/CombinedVibration$Mono;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Landroid/os/CombinedVibration$Mono;

    .line 260
    .local v0, "mono":Landroid/os/CombinedVibration$Mono;
    invoke-virtual {v0}, Landroid/os/CombinedVibration$Mono;->getEffect()Landroid/os/VibrationEffect;

    move-result-object v2

    instance-of v3, v2, Landroid/os/VibrationEffect$VendorEffect;

    if-eqz v3, :cond_0

    move-object v1, v2

    check-cast v1, Landroid/os/VibrationEffect$VendorEffect;

    .line 261
    .local v1, "effect":Landroid/os/VibrationEffect$VendorEffect;
    invoke-static {p0, v1}, Lcom/android/server/vibrator/VibratorFrameworkStatsLogger;->logVibrationVendorEffectSize(ILandroid/os/VibrationEffect$VendorEffect;)V

    .line 262
    const/4 v2, 0x1

    return v2

    .line 264
    .end local v1    # "effect":Landroid/os/VibrationEffect$VendorEffect;
    :cond_0
    return v1

    .line 266
    .end local v0    # "mono":Landroid/os/CombinedVibration$Mono;
    :cond_1
    instance-of v0, p1, Landroid/os/CombinedVibration$Stereo;

    if-eqz v0, :cond_4

    move-object v0, p1

    check-cast v0, Landroid/os/CombinedVibration$Stereo;

    .line 267
    .local v0, "stereo":Landroid/os/CombinedVibration$Stereo;
    const/4 v1, 0x0

    .line 268
    .local v1, "hasVendorEffects":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v0}, Landroid/os/CombinedVibration$Stereo;->getEffects()Landroid/util/SparseArray;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 269
    invoke-virtual {v0}, Landroid/os/CombinedVibration$Stereo;->getEffects()Landroid/util/SparseArray;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    instance-of v4, v3, Landroid/os/VibrationEffect$VendorEffect;

    nop

    if-eqz v4, :cond_2

    check-cast v3, Landroid/os/VibrationEffect$VendorEffect;

    .line 270
    .local v3, "effect":Landroid/os/VibrationEffect$VendorEffect;
    invoke-static {p0, v3}, Lcom/android/server/vibrator/VibratorFrameworkStatsLogger;->logVibrationVendorEffectSize(ILandroid/os/VibrationEffect$VendorEffect;)V

    .line 271
    const/4 v1, 0x1

    .line 268
    .end local v3    # "effect":Landroid/os/VibrationEffect$VendorEffect;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    nop

    .line 274
    .end local v2    # "i":I
    return v1

    .line 276
    .end local v0    # "stereo":Landroid/os/CombinedVibration$Stereo;
    .end local v1    # "hasVendorEffects":Z
    :cond_4
    instance-of v0, p1, Landroid/os/CombinedVibration$Sequential;

    if-eqz v0, :cond_6

    move-object v0, p1

    check-cast v0, Landroid/os/CombinedVibration$Sequential;

    .line 277
    .local v0, "sequential":Landroid/os/CombinedVibration$Sequential;
    const/4 v1, 0x0

    .line 278
    .restart local v1    # "hasVendorEffects":Z
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_1
    invoke-virtual {v0}, Landroid/os/CombinedVibration$Sequential;->getEffects()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_5

    .line 279
    nop

    .line 280
    invoke-virtual {v0}, Landroid/os/CombinedVibration$Sequential;->getEffects()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/CombinedVibration;

    .line 279
    invoke-static {p0, v3}, Lcom/android/server/vibrator/VibratorFrameworkStatsLogger;->logVibrationSizeOfVendorEffects(ILandroid/os/CombinedVibration;)Z

    move-result v3

    or-int/2addr v1, v3

    .line 278
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_5
    nop

    .line 282
    .end local v2    # "i":I
    return v1

    .line 285
    .end local v0    # "sequential":Landroid/os/CombinedVibration$Sequential;
    .end local v1    # "hasVendorEffects":Z
    :cond_6
    return v1
.end method

.method private static logVibrationVendorEffectSize(ILandroid/os/VibrationEffect$VendorEffect;)V
    .locals 4
    .param p0, "uid"    # I
    .param p1, "effect"    # Landroid/os/VibrationEffect$VendorEffect;

    .line 290
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 295
    .local v0, "vendorData":Landroid/os/Parcel;
    :try_start_0
    invoke-virtual {p1}, Landroid/os/VibrationEffect$VendorEffect;->getVendorData()Landroid/os/PersistableBundle;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/os/PersistableBundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 296
    invoke-virtual {v0}, Landroid/os/Parcel;->dataSize()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 298
    .local v1, "dataSize":I
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 299
    nop

    .line 300
    sget-object v2, Lcom/android/server/vibrator/VibratorFrameworkStatsLogger;->sVibrationVendorEffectSizeHistogram:Lcom/android/modules/expresslog/Histogram;

    int-to-float v3, v1

    invoke-virtual {v2, p0, v3}, Lcom/android/modules/expresslog/Histogram;->logSampleWithUid(IF)V

    .line 301
    return-void

    .line 298
    .end local v1    # "dataSize":I
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 299
    throw v1
.end method

.method private writeVibrationReportedFromQueue()V
    .locals 6

    .line 154
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorFrameworkStatsLogger;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 155
    :try_start_0
    iget-object v1, p0, Lcom/android/server/vibrator/VibratorFrameworkStatsLogger;->mVibrationStatsQueue:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/vibrator/VibrationStats$StatsInfo;

    .line 156
    .local v1, "stats":Lcom/android/server/vibrator/VibrationStats$StatsInfo;
    iget-object v2, p0, Lcom/android/server/vibrator/VibratorFrameworkStatsLogger;->mVibrationStatsQueue:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->isEmpty()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    .line 158
    .local v2, "needsScheduling":Z
    if-eqz v1, :cond_0

    .line 159
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/server/vibrator/VibratorFrameworkStatsLogger;->mLastVibrationReportedLogUptime:J

    goto :goto_0

    .line 161
    .end local v1    # "stats":Lcom/android/server/vibrator/VibrationStats$StatsInfo;
    .end local v2    # "needsScheduling":Z
    :catchall_0
    move-exception v1

    goto :goto_2

    .restart local v1    # "stats":Lcom/android/server/vibrator/VibrationStats$StatsInfo;
    .restart local v2    # "needsScheduling":Z
    :cond_0
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 163
    if-nez v1, :cond_1

    .line 164
    const-string v0, "VibratorFrameworkStatsLogger"

    const-string v3, "Unexpected vibration metric flush with empty queue. Ignoring."

    invoke-static {v0, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 166
    :cond_1
    invoke-virtual {v1}, Lcom/android/server/vibrator/VibrationStats$StatsInfo;->writeVibrationReported()V

    .line 169
    :goto_1
    if-eqz v2, :cond_2

    .line 170
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorFrameworkStatsLogger;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/vibrator/VibratorFrameworkStatsLogger;->mConsumeVibrationStatsQueueRunnable:Ljava/lang/Runnable;

    iget-wide v4, p0, Lcom/android/server/vibrator/VibratorFrameworkStatsLogger;->mVibrationReportedLogIntervalMillis:J

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 173
    :cond_2
    return-void

    .line 161
    .end local v1    # "stats":Lcom/android/server/vibrator/VibrationStats$StatsInfo;
    .end local v2    # "needsScheduling":Z
    :goto_2
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method public logVibrationAdaptiveHapticScale(IF)V
    .locals 1
    .param p1, "uid"    # I
    .param p2, "scale"    # F

    .line 177
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p2, v0}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-eqz v0, :cond_0

    .line 178
    sget-object v0, Lcom/android/server/vibrator/VibratorFrameworkStatsLogger;->sAdaptiveHapticScaleHistogram:Lcom/android/modules/expresslog/Histogram;

    invoke-virtual {v0, p1, p2}, Lcom/android/modules/expresslog/Histogram;->logSampleWithUid(IF)V

    .line 180
    :cond_0
    return-void
.end method

.method public logVibrationCountAndSizeIfVendorEffect(ILandroid/os/CombinedVibration;)V
    .locals 2
    .param p1, "uid"    # I
    .param p2, "vibration"    # Landroid/os/CombinedVibration;

    .line 248
    if-nez p2, :cond_0

    .line 249
    return-void

    .line 251
    :cond_0
    invoke-static {p1, p2}, Lcom/android/server/vibrator/VibratorFrameworkStatsLogger;->logVibrationSizeOfVendorEffects(ILandroid/os/CombinedVibration;)Z

    move-result v0

    .line 252
    .local v0, "hasVendorEffects":Z
    if-eqz v0, :cond_1

    .line 254
    const-string v1, "vibrator.value_vibration_vendor_effect_requests"

    invoke-static {v1, p1}, Lcom/android/modules/expresslog/Counter;->logIncrementWithUid(Ljava/lang/String;I)V

    .line 256
    :cond_1
    return-void
.end method

.method public logVibrationParamRequestLatency(IJ)V
    .locals 2
    .param p1, "uid"    # I
    .param p2, "latencyMs"    # J

    .line 189
    sget-object v0, Lcom/android/server/vibrator/VibratorFrameworkStatsLogger;->sVibrationParamRequestLatencyHistogram:Lcom/android/modules/expresslog/Histogram;

    long-to-float v1, p2

    invoke-virtual {v0, p1, v1}, Lcom/android/modules/expresslog/Histogram;->logSampleWithUid(IF)V

    .line 190
    return-void
.end method

.method public logVibrationParamRequestTimeout(I)V
    .locals 1
    .param p1, "uid"    # I

    .line 194
    const-string v0, "vibrator.value_vibration_param_request_timeout"

    invoke-static {v0, p1}, Lcom/android/modules/expresslog/Counter;->logIncrementWithUid(Ljava/lang/String;I)V

    .line 195
    return-void
.end method

.method public logVibrationParamResponseIgnored()V
    .locals 1

    .line 199
    const-string v0, "vibrator.value_vibration_param_response_ignored"

    invoke-static {v0}, Lcom/android/modules/expresslog/Counter;->logIncrement(Ljava/lang/String;)V

    .line 200
    return-void
.end method

.method public logVibrationParamScale(F)V
    .locals 1
    .param p1, "scale"    # F

    .line 184
    sget-object v0, Lcom/android/server/vibrator/VibratorFrameworkStatsLogger;->sVibrationParamScaleHistogram:Lcom/android/modules/expresslog/Histogram;

    invoke-virtual {v0, p1}, Lcom/android/modules/expresslog/Histogram;->logSample(F)V

    .line 185
    return-void
.end method

.method public logVibrationVendorSessionInterrupted(I)V
    .locals 1
    .param p1, "uid"    # I

    .line 232
    const-string v0, "vibrator.value_vibration_vendor_session_interrupted"

    invoke-static {v0, p1}, Lcom/android/modules/expresslog/Counter;->logIncrementWithUid(Ljava/lang/String;I)V

    .line 233
    return-void
.end method

.method public logVibrationVendorSessionStarted(I)V
    .locals 1
    .param p1, "uid"    # I

    .line 221
    const-string v0, "vibrator.value_vibration_vendor_session_started"

    invoke-static {v0, p1}, Lcom/android/modules/expresslog/Counter;->logIncrementWithUid(Ljava/lang/String;I)V

    .line 222
    return-void
.end method

.method public logVibrationVendorSessionVibrations(II)V
    .locals 2
    .param p1, "uid"    # I
    .param p2, "vibrationCount"    # I

    .line 237
    sget-object v0, Lcom/android/server/vibrator/VibratorFrameworkStatsLogger;->sVibrationVendorSessionVibrationsHistogram:Lcom/android/modules/expresslog/Histogram;

    int-to-float v1, p2

    invoke-virtual {v0, p1, v1}, Lcom/android/modules/expresslog/Histogram;->logSampleWithUid(IF)V

    .line 238
    return-void
.end method

.method public writeVibrationReportedAsync(Lcom/android/server/vibrator/VibrationStats$StatsInfo;)V
    .locals 9
    .param p1, "metrics"    # Lcom/android/server/vibrator/VibrationStats$StatsInfo;

    .line 127
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorFrameworkStatsLogger;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 128
    :try_start_0
    iget-object v1, p0, Lcom/android/server/vibrator/VibratorFrameworkStatsLogger;->mVibrationStatsQueue:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->size()I

    move-result v1

    .line 129
    .local v1, "queueSize":I
    if-nez v1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 131
    .local v2, "needsScheduling":Z
    :goto_0
    int-to-long v3, v1

    iget-wide v5, p0, Lcom/android/server/vibrator/VibratorFrameworkStatsLogger;->mVibrationReportedQueueMaxSize:J

    cmp-long v3, v3, v5

    if-gez v3, :cond_1

    .line 132
    iget-object v3, p0, Lcom/android/server/vibrator/VibratorFrameworkStatsLogger;->mVibrationStatsQueue:Ljava/util/Queue;

    invoke-interface {v3, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    goto :goto_1

    .line 138
    .end local v1    # "queueSize":I
    .end local v2    # "needsScheduling":Z
    :catchall_0
    move-exception v1

    goto :goto_2

    .line 135
    .restart local v1    # "queueSize":I
    .restart local v2    # "needsScheduling":Z
    :cond_1
    :goto_1
    iget-wide v3, p0, Lcom/android/server/vibrator/VibratorFrameworkStatsLogger;->mLastVibrationReportedLogUptime:J

    iget-wide v5, p0, Lcom/android/server/vibrator/VibratorFrameworkStatsLogger;->mVibrationReportedLogIntervalMillis:J

    add-long/2addr v3, v5

    .line 137
    .local v3, "nextLogUptime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    sub-long v5, v3, v5

    const-wide/16 v7, 0x0

    invoke-static {v7, v8, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    .line 138
    .end local v3    # "nextLogUptime":J
    .local v5, "scheduleDelayMs":J
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 140
    add-int/lit8 v0, v1, 0x1

    const/16 v3, 0xc8

    if-ne v0, v3, :cond_2

    .line 141
    const-string v0, "VibratorFrameworkStatsLogger"

    const-string v3, " Approaching vibration metrics queue limit, events might be dropped."

    invoke-static {v0, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    :cond_2
    if-eqz v2, :cond_3

    .line 145
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorFrameworkStatsLogger;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/vibrator/VibratorFrameworkStatsLogger;->mConsumeVibrationStatsQueueRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v3, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 147
    :cond_3
    return-void

    .line 138
    .end local v1    # "queueSize":I
    .end local v2    # "needsScheduling":Z
    .end local v5    # "scheduleDelayMs":J
    :goto_2
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public writeVibratorStateOffAsync(I)V
    .locals 2
    .param p1, "uid"    # I

    .line 109
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorFrameworkStatsLogger;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/vibrator/VibratorFrameworkStatsLogger$$ExternalSyntheticLambda2;

    invoke-direct {v1, p1}, Lcom/android/server/vibrator/VibratorFrameworkStatsLogger$$ExternalSyntheticLambda2;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 114
    return-void
.end method

.method public writeVibratorStateOnAsync(IJ)V
    .locals 2
    .param p1, "uid"    # I
    .param p2, "duration"    # J

    .line 101
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorFrameworkStatsLogger;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/vibrator/VibratorFrameworkStatsLogger$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1, p2, p3}, Lcom/android/server/vibrator/VibratorFrameworkStatsLogger$$ExternalSyntheticLambda0;-><init>(IJ)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 105
    return-void
.end method
