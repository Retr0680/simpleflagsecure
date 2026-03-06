.class Lcom/android/server/camera/CameraServiceProxy$CameraFeatureCombinationQueryEvent;
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
    name = "CameraFeatureCombinationQueryEvent"
.end annotation


# instance fields
.field private mFeatureCombinationStats:Landroid/hardware/CameraFeatureCombinationStats;


# direct methods
.method constructor <init>(Landroid/hardware/CameraFeatureCombinationStats;)V
    .locals 0
    .param p1, "featureCombinationStats"    # Landroid/hardware/CameraFeatureCombinationStats;

    .line 518
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 519
    iput-object p1, p0, Lcom/android/server/camera/CameraServiceProxy$CameraFeatureCombinationQueryEvent;->mFeatureCombinationStats:Landroid/hardware/CameraFeatureCombinationStats;

    .line 520
    return-void
.end method


# virtual methods
.method public logSelf()V
    .locals 8

    .line 523
    const/4 v0, -0x1

    .line 524
    .local v0, "statusCode":I
    iget-object v1, p0, Lcom/android/server/camera/CameraServiceProxy$CameraFeatureCombinationQueryEvent;->mFeatureCombinationStats:Landroid/hardware/CameraFeatureCombinationStats;

    iget v1, v1, Landroid/hardware/CameraFeatureCombinationStats;->mStatus:I

    sparse-switch v1, :sswitch_data_0

    move v7, v0

    goto :goto_0

    .line 532
    :sswitch_0
    const/16 v0, 0xa

    .line 533
    move v7, v0

    goto :goto_0

    .line 529
    :sswitch_1
    const/4 v0, 0x3

    .line 530
    move v7, v0

    goto :goto_0

    .line 526
    :sswitch_2
    const/4 v0, 0x0

    .line 527
    move v7, v0

    .line 537
    .end local v0    # "statusCode":I
    .local v7, "statusCode":I
    :goto_0
    const/4 v0, -0x1

    if-ne v7, v0, :cond_0

    .line 538
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown feature combination query status code: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/camera/CameraServiceProxy$CameraFeatureCombinationQueryEvent;->mFeatureCombinationStats:Landroid/hardware/CameraFeatureCombinationStats;

    iget v1, v1, Landroid/hardware/CameraFeatureCombinationStats;->mStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraService_proxy"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    return-void

    .line 551
    :cond_0
    iget-object v0, p0, Lcom/android/server/camera/CameraServiceProxy$CameraFeatureCombinationQueryEvent;->mFeatureCombinationStats:Landroid/hardware/CameraFeatureCombinationStats;

    iget v2, v0, Landroid/hardware/CameraFeatureCombinationStats;->mUid:I

    iget-object v0, p0, Lcom/android/server/camera/CameraServiceProxy$CameraFeatureCombinationQueryEvent;->mFeatureCombinationStats:Landroid/hardware/CameraFeatureCombinationStats;

    iget-object v3, v0, Landroid/hardware/CameraFeatureCombinationStats;->mCameraId:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/server/camera/CameraServiceProxy$CameraFeatureCombinationQueryEvent;->mFeatureCombinationStats:Landroid/hardware/CameraFeatureCombinationStats;

    iget v4, v0, Landroid/hardware/CameraFeatureCombinationStats;->mQueryType:I

    iget-object v0, p0, Lcom/android/server/camera/CameraServiceProxy$CameraFeatureCombinationQueryEvent;->mFeatureCombinationStats:Landroid/hardware/CameraFeatureCombinationStats;

    iget-wide v5, v0, Landroid/hardware/CameraFeatureCombinationStats;->mFeatureCombination:J

    const/16 v1, 0x384

    invoke-static/range {v1 .. v7}, Lcom/android/internal/util/FrameworkStatsLog;->write(IILjava/lang/String;IJI)V

    .line 557
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_2
        0x3 -> :sswitch_1
        0xa -> :sswitch_0
    .end sparse-switch
.end method
