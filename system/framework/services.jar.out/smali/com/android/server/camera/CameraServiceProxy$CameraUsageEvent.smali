.class Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;
.super Ljava/lang/Object;
.source "CameraServiceProxy.java"

# interfaces
.implements Lcom/android/server/camera/CameraServiceProxy$CameraEvent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/camera/CameraServiceProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CameraUsageEvent"
.end annotation


# instance fields
.field public final mAPILevel:I

.field public final mAction:I

.field public final mCameraFacing:I

.field public final mCameraId:Ljava/lang/String;

.field public final mClientName:Ljava/lang/String;

.field private mCompleted:Z

.field public mDeviceError:Z

.field private mDurationOrStartTimeMs:J

.field public mExtSessionStats:Landroid/hardware/CameraExtensionSessionStats;

.field public mInternalReconfigure:I

.field public final mIsNdk:Z

.field public final mLatencyMs:I

.field public final mLogId:J

.field public mMostRequestedFpsRange:Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final mOperatingMode:I

.field public mRequestCount:J

.field public mResultErrorCount:J

.field public final mSessionIndex:I

.field public mStreamStats:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/hardware/CameraStreamStats;",
            ">;"
        }
    .end annotation
.end field

.field public mUsedUltraWide:Z

.field public mUsedZoomOverride:Z

.field public mUserTag:Ljava/lang/String;

.field public mVideoStabilizationMode:I


# direct methods
.method constructor <init>(Ljava/lang/String;ILjava/lang/String;IZIIIZJI)V
    .locals 2
    .param p1, "cameraId"    # Ljava/lang/String;
    .param p2, "facing"    # I
    .param p3, "clientName"    # Ljava/lang/String;
    .param p4, "apiLevel"    # I
    .param p5, "isNdk"    # Z
    .param p6, "action"    # I
    .param p7, "latencyMs"    # I
    .param p8, "operatingMode"    # I
    .param p9, "deviceError"    # Z
    .param p10, "logId"    # J
    .param p12, "sessionIdx"    # I

    .line 302
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 298
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mExtSessionStats:Landroid/hardware/CameraExtensionSessionStats;

    .line 303
    iput-object p1, p0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mCameraId:Ljava/lang/String;

    .line 304
    iput p2, p0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mCameraFacing:I

    .line 305
    iput-object p3, p0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mClientName:Ljava/lang/String;

    .line 306
    iput p4, p0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mAPILevel:I

    .line 307
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mDurationOrStartTimeMs:J

    .line 308
    const/4 v0, 0x0

    .line 316
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 308
    iput-boolean v0, p0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mCompleted:Z

    .line 309
    iput-boolean p5, p0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mIsNdk:Z

    .line 310
    iput p6, p0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mAction:I

    .line 311
    iput p7, p0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mLatencyMs:I

    .line 312
    iput p8, p0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mOperatingMode:I

    .line 313
    iput-boolean p9, p0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mDeviceError:Z

    .line 314
    iput-wide p10, p0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mLogId:J

    .line 315
    iput p12, p0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mSessionIndex:I

    .line 316
    new-instance v0, Landroid/util/Range;

    invoke-direct {v0, v1, v1}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    iput-object v0, p0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mMostRequestedFpsRange:Landroid/util/Range;

    .line 317
    return-void
.end method


# virtual methods
.method public getDuration()J
    .locals 2

    .line 352
    iget-boolean v0, p0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mCompleted:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mDurationOrStartTimeMs:J

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0
.end method

.method public logSelf()V
    .locals 39

    .line 356
    move-object/from16 v0, p0

    const/4 v1, 0x0

    .line 357
    .local v1, "facing":I
    iget v2, v0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mCameraFacing:I

    const-string v3, "CameraService_proxy"

    packed-switch v2, :pswitch_data_0

    .line 368
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown camera facing: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mCameraFacing:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v9, v1

    goto :goto_0

    .line 365
    :pswitch_0
    const/4 v1, 0x3

    .line 366
    move v9, v1

    goto :goto_0

    .line 362
    :pswitch_1
    const/4 v1, 0x2

    .line 363
    move v9, v1

    goto :goto_0

    .line 359
    :pswitch_2
    const/4 v1, 0x1

    .line 360
    move v9, v1

    .line 371
    .end local v1    # "facing":I
    .local v9, "facing":I
    :goto_0
    const/4 v1, -0x1

    .line 372
    .local v1, "extensionType":I
    const/4 v2, 0x0

    .line 373
    .local v2, "extensionIsAdvanced":Z
    const/4 v4, 0x0

    .line 374
    .local v4, "extensionCaptureFormat":I
    iget-object v5, v0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mExtSessionStats:Landroid/hardware/CameraExtensionSessionStats;

    if-eqz v5, :cond_0

    .line 375
    iget-object v5, v0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mExtSessionStats:Landroid/hardware/CameraExtensionSessionStats;

    iget v5, v5, Landroid/hardware/CameraExtensionSessionStats;->type:I

    packed-switch v5, :pswitch_data_1

    .line 397
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown extension type: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mExtSessionStats:Landroid/hardware/CameraExtensionSessionStats;

    iget v6, v6, Landroid/hardware/CameraExtensionSessionStats;->type:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 393
    :pswitch_3
    const/4 v1, 0x4

    .line 395
    goto :goto_1

    .line 389
    :pswitch_4
    const/4 v1, 0x3

    .line 391
    goto :goto_1

    .line 385
    :pswitch_5
    const/4 v1, 0x2

    .line 387
    goto :goto_1

    .line 381
    :pswitch_6
    const/4 v1, 0x1

    .line 383
    goto :goto_1

    .line 377
    :pswitch_7
    const/4 v1, 0x0

    .line 379
    nop

    .line 399
    :goto_1
    iget-object v3, v0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mExtSessionStats:Landroid/hardware/CameraExtensionSessionStats;

    iget-boolean v2, v3, Landroid/hardware/CameraExtensionSessionStats;->isAdvanced:Z

    .line 400
    nop

    .line 401
    iget-object v3, v0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mExtSessionStats:Landroid/hardware/CameraExtensionSessionStats;

    iget v4, v3, Landroid/hardware/CameraExtensionSessionStats;->captureFormat:I

    move/from16 v32, v1

    move/from16 v33, v2

    move/from16 v38, v4

    goto :goto_2

    .line 374
    :cond_0
    move/from16 v32, v1

    move/from16 v33, v2

    move/from16 v38, v4

    .line 405
    .end local v1    # "extensionType":I
    .end local v2    # "extensionIsAdvanced":Z
    .end local v4    # "extensionCaptureFormat":I
    .local v32, "extensionType":I
    .local v33, "extensionIsAdvanced":Z
    .local v38, "extensionCaptureFormat":I
    :goto_2
    const/4 v1, 0x0

    .line 406
    .local v1, "streamCount":I
    iget-object v2, v0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mStreamStats:Ljava/util/List;

    if-eqz v2, :cond_1

    .line 407
    iget-object v2, v0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mStreamStats:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    .line 446
    :cond_1
    const/4 v2, 0x5

    new-array v3, v2, [Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;

    .line 447
    .local v3, "streamProtos":[Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_3
    if-ge v4, v2, :cond_3

    .line 448
    new-instance v5, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;

    invoke-direct {v5}, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;-><init>()V

    aput-object v5, v3, v4

    .line 449
    if-ge v4, v1, :cond_2

    .line 450
    iget-object v5, v0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mStreamStats:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/CameraStreamStats;

    .line 451
    .local v5, "streamStats":Landroid/hardware/CameraStreamStats;
    aget-object v6, v3, v4

    invoke-virtual {v5}, Landroid/hardware/CameraStreamStats;->getWidth()I

    move-result v7

    iput v7, v6, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->width:I

    .line 452
    aget-object v6, v3, v4

    invoke-virtual {v5}, Landroid/hardware/CameraStreamStats;->getHeight()I

    move-result v7

    iput v7, v6, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->height:I

    .line 453
    aget-object v6, v3, v4

    invoke-virtual {v5}, Landroid/hardware/CameraStreamStats;->getFormat()I

    move-result v7

    iput v7, v6, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->format:I

    .line 454
    aget-object v6, v3, v4

    invoke-virtual {v5}, Landroid/hardware/CameraStreamStats;->getDataSpace()I

    move-result v7

    iput v7, v6, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->dataSpace:I

    .line 455
    aget-object v6, v3, v4

    invoke-virtual {v5}, Landroid/hardware/CameraStreamStats;->getUsage()J

    move-result-wide v7

    iput-wide v7, v6, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->usage:J

    .line 456
    aget-object v6, v3, v4

    invoke-virtual {v5}, Landroid/hardware/CameraStreamStats;->getRequestCount()J

    move-result-wide v7

    iput-wide v7, v6, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->requestCount:J

    .line 457
    aget-object v6, v3, v4

    invoke-virtual {v5}, Landroid/hardware/CameraStreamStats;->getErrorCount()J

    move-result-wide v7

    iput-wide v7, v6, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->errorCount:J

    .line 458
    aget-object v6, v3, v4

    invoke-virtual {v5}, Landroid/hardware/CameraStreamStats;->getStartLatencyMs()I

    move-result v7

    iput v7, v6, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->firstCaptureLatencyMillis:I

    .line 459
    aget-object v6, v3, v4

    invoke-virtual {v5}, Landroid/hardware/CameraStreamStats;->getMaxHalBuffers()I

    move-result v7

    iput v7, v6, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->maxHalBuffers:I

    .line 460
    aget-object v6, v3, v4

    invoke-virtual {v5}, Landroid/hardware/CameraStreamStats;->getMaxAppBuffers()I

    move-result v7

    iput v7, v6, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->maxAppBuffers:I

    .line 461
    aget-object v6, v3, v4

    invoke-virtual {v5}, Landroid/hardware/CameraStreamStats;->getHistogramType()I

    move-result v7

    iput v7, v6, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->histogramType:I

    .line 462
    aget-object v6, v3, v4

    invoke-virtual {v5}, Landroid/hardware/CameraStreamStats;->getHistogramBins()[F

    move-result-object v7

    iput-object v7, v6, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->histogramBins:[F

    .line 463
    aget-object v6, v3, v4

    invoke-virtual {v5}, Landroid/hardware/CameraStreamStats;->getHistogramCounts()[J

    move-result-object v7

    iput-object v7, v6, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->histogramCounts:[J

    .line 464
    aget-object v6, v3, v4

    invoke-virtual {v5}, Landroid/hardware/CameraStreamStats;->getDynamicRangeProfile()J

    move-result-wide v7

    iput-wide v7, v6, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->dynamicRangeProfile:J

    .line 465
    aget-object v6, v3, v4

    invoke-virtual {v5}, Landroid/hardware/CameraStreamStats;->getStreamUseCase()J

    move-result-wide v7

    iput-wide v7, v6, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->streamUseCase:J

    .line 466
    aget-object v6, v3, v4

    invoke-virtual {v5}, Landroid/hardware/CameraStreamStats;->getColorSpace()I

    move-result v7

    iput v7, v6, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->colorSpace:I

    .line 447
    .end local v5    # "streamStats":Landroid/hardware/CameraStreamStats;
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_3

    :cond_3
    nop

    .line 494
    .end local v4    # "i":I
    invoke-virtual {v0}, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->getDuration()J

    move-result-wide v5

    iget v7, v0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mAPILevel:I

    iget-object v8, v0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mClientName:Ljava/lang/String;

    iget-object v10, v0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mCameraId:Ljava/lang/String;

    iget v11, v0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mAction:I

    iget-boolean v12, v0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mIsNdk:Z

    iget v13, v0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mLatencyMs:I

    iget v14, v0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mOperatingMode:I

    iget v15, v0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mInternalReconfigure:I

    move/from16 v21, v1

    .end local v1    # "streamCount":I
    .local v21, "streamCount":I
    iget-wide v1, v0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mRequestCount:J

    move-wide/from16 v16, v1

    iget-wide v1, v0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mResultErrorCount:J

    iget-boolean v4, v0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mDeviceError:Z

    const/16 v18, 0x0

    aget-object v18, v3, v18

    .line 498
    invoke-static/range {v18 .. v18}, Lcom/android/framework/protobuf/nano/MessageNano;->toByteArray(Lcom/android/framework/protobuf/nano/MessageNano;)[B

    move-result-object v22

    const/16 v18, 0x1

    aget-object v18, v3, v18

    .line 499
    invoke-static/range {v18 .. v18}, Lcom/android/framework/protobuf/nano/MessageNano;->toByteArray(Lcom/android/framework/protobuf/nano/MessageNano;)[B

    move-result-object v23

    const/16 v18, 0x2

    aget-object v18, v3, v18

    .line 500
    invoke-static/range {v18 .. v18}, Lcom/android/framework/protobuf/nano/MessageNano;->toByteArray(Lcom/android/framework/protobuf/nano/MessageNano;)[B

    move-result-object v24

    const/16 v18, 0x3

    aget-object v18, v3, v18

    .line 501
    invoke-static/range {v18 .. v18}, Lcom/android/framework/protobuf/nano/MessageNano;->toByteArray(Lcom/android/framework/protobuf/nano/MessageNano;)[B

    move-result-object v25

    const/16 v18, 0x4

    aget-object v18, v3, v18

    .line 502
    invoke-static/range {v18 .. v18}, Lcom/android/framework/protobuf/nano/MessageNano;->toByteArray(Lcom/android/framework/protobuf/nano/MessageNano;)[B

    move-result-object v26

    move-wide/from16 v18, v1

    iget-object v1, v0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mUserTag:Ljava/lang/String;

    iget v2, v0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mVideoStabilizationMode:I

    move-object/from16 v27, v1

    move/from16 v28, v2

    iget-wide v1, v0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mLogId:J

    move-wide/from16 v29, v1

    iget v1, v0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mSessionIndex:I

    iget-boolean v2, v0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mUsedUltraWide:Z

    move/from16 v31, v1

    iget-boolean v1, v0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mUsedZoomOverride:Z

    move/from16 v35, v1

    iget-object v1, v0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mMostRequestedFpsRange:Landroid/util/Range;

    .line 507
    invoke-virtual {v1}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v36

    iget-object v1, v0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mMostRequestedFpsRange:Landroid/util/Range;

    invoke-virtual {v1}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v37

    .line 494
    move/from16 v20, v4

    const/16 v4, 0xe3

    move/from16 v34, v2

    invoke-static/range {v4 .. v38}, Lcom/android/internal/util/FrameworkStatsLog;->write(IJILjava/lang/String;ILjava/lang/String;IZIIIJJZI[B[B[B[B[BLjava/lang/String;IJIIZZZIII)V

    .line 510
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method public markCompleted(IJJZLjava/util/List;Ljava/lang/String;IZZLandroid/util/Range;Landroid/hardware/CameraExtensionSessionStats;)V
    .locals 12
    .param p1, "internalReconfigure"    # I
    .param p2, "requestCount"    # J
    .param p4, "resultErrorCount"    # J
    .param p6, "deviceError"    # Z
    .param p8, "userTag"    # Ljava/lang/String;
    .param p9, "videoStabilizationMode"    # I
    .param p10, "usedUltraWide"    # Z
    .param p11, "usedZoomOverride"    # Z
    .param p13, "extStats"    # Landroid/hardware/CameraExtensionSessionStats;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJJZ",
            "Ljava/util/List<",
            "Landroid/hardware/CameraStreamStats;",
            ">;",
            "Ljava/lang/String;",
            "IZZ",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/hardware/CameraExtensionSessionStats;",
            ")V"
        }
    .end annotation

    .line 325
    .local p7, "streamStats":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/CameraStreamStats;>;"
    .local p12, "mostRequestedFpsRange":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    iget-boolean v0, p0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mCompleted:Z

    if-eqz v0, :cond_0

    .line 326
    return-void

    .line 328
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mCompleted:Z

    .line 329
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mDurationOrStartTimeMs:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mDurationOrStartTimeMs:J

    .line 330
    iput p1, p0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mInternalReconfigure:I

    .line 331
    iput-wide p2, p0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mRequestCount:J

    .line 332
    move-wide/from16 v2, p4

    iput-wide v2, p0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mResultErrorCount:J

    .line 333
    move/from16 v4, p6

    iput-boolean v4, p0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mDeviceError:Z

    .line 334
    move-object/from16 v5, p7

    iput-object v5, p0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mStreamStats:Ljava/util/List;

    .line 335
    move-object/from16 v6, p8

    iput-object v6, p0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mUserTag:Ljava/lang/String;

    .line 336
    move/from16 v7, p9

    iput v7, p0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mVideoStabilizationMode:I

    .line 337
    move/from16 v8, p10

    iput-boolean v8, p0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mUsedUltraWide:Z

    .line 338
    move/from16 v9, p11

    iput-boolean v9, p0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mUsedZoomOverride:Z

    .line 339
    move-object/from16 v10, p13

    iput-object v10, p0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mExtSessionStats:Landroid/hardware/CameraExtensionSessionStats;

    .line 340
    move-object/from16 v11, p12

    iput-object v11, p0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mMostRequestedFpsRange:Landroid/util/Range;

    .line 346
    return-void
.end method
