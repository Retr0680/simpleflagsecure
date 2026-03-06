.class final Lcom/android/server/cpu/CpuMonitorService$CpusetInfo;
.super Ljava/lang/Object;
.source "CpuMonitorService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/cpu/CpuMonitorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CpusetInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/cpu/CpuMonitorService$CpusetInfo$Snapshot;
    }
.end annotation


# instance fields
.field public final cpuset:I

.field private mLatestCpuAvailabilityInfo:Lcom/android/server/cpu/CpuAvailabilityInfo;

.field private final mSnapshotsByUptime:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray<",
            "Lcom/android/server/cpu/CpuMonitorService$CpusetInfo$Snapshot;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(I)V
    .locals 1
    .param p1, "cpuset"    # I

    .line 580
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 581
    iput p1, p0, Lcom/android/server/cpu/CpuMonitorService$CpusetInfo;->cpuset:I

    .line 582
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/cpu/CpuMonitorService$CpusetInfo;->mSnapshotsByUptime:Landroid/util/LongSparseArray;

    .line 583
    return-void
.end method

.method private getCumulativeAvgAvailabilityPercent(J)I
    .locals 11
    .param p1, "earliestUptimeMillis"    # J

    .line 648
    const-wide/16 v0, 0x0

    .line 649
    .local v0, "totalAvailableCpuFreqKHz":J
    const-wide/16 v2, 0x0

    .line 650
    .local v2, "totalOnlineMaxCpuFreqKHz":J
    const/4 v4, 0x0

    .line 651
    .local v4, "totalAccountedSnapshots":I
    const-wide v5, 0x7fffffffffffffffL

    .line 652
    .local v5, "earliestSeenUptimeMillis":J
    iget-object v7, p0, Lcom/android/server/cpu/CpuMonitorService$CpusetInfo;->mSnapshotsByUptime:Landroid/util/LongSparseArray;

    invoke-virtual {v7}, Landroid/util/LongSparseArray;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    .local v7, "i":I
    :goto_0
    if-ltz v7, :cond_1

    .line 653
    iget-object v8, p0, Lcom/android/server/cpu/CpuMonitorService$CpusetInfo;->mSnapshotsByUptime:Landroid/util/LongSparseArray;

    invoke-virtual {v8, v7}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/cpu/CpuMonitorService$CpusetInfo$Snapshot;

    .line 654
    .local v8, "snapshot":Lcom/android/server/cpu/CpuMonitorService$CpusetInfo$Snapshot;
    iget-wide v5, v8, Lcom/android/server/cpu/CpuMonitorService$CpusetInfo$Snapshot;->uptimeMillis:J

    .line 655
    iget-wide v9, v8, Lcom/android/server/cpu/CpuMonitorService$CpusetInfo$Snapshot;->uptimeMillis:J

    cmp-long v9, v9, p1

    if-gtz v9, :cond_0

    .line 656
    goto :goto_1

    .line 658
    :cond_0
    add-int/lit8 v4, v4, 0x1

    .line 659
    iget-wide v9, v8, Lcom/android/server/cpu/CpuMonitorService$CpusetInfo$Snapshot;->totalNormalizedAvailableCpuFreqKHz:J

    add-long/2addr v0, v9

    .line 660
    iget-wide v9, v8, Lcom/android/server/cpu/CpuMonitorService$CpusetInfo$Snapshot;->totalOnlineMaxCpuFreqKHz:J

    add-long/2addr v2, v9

    .line 652
    .end local v8    # "snapshot":Lcom/android/server/cpu/CpuMonitorService$CpusetInfo$Snapshot;
    add-int/lit8 v7, v7, -0x1

    goto :goto_0

    .line 668
    .end local v7    # "i":I
    :cond_1
    :goto_1
    cmp-long v7, v5, p1

    if-gtz v7, :cond_2

    const/4 v7, 0x2

    if-ge v4, v7, :cond_3

    :cond_2
    goto :goto_2

    .line 671
    :cond_3
    long-to-double v7, v0

    const-wide/high16 v9, 0x4059000000000000L    # 100.0

    mul-double/2addr v7, v9

    long-to-double v9, v2

    div-double/2addr v7, v9

    double-to-int v7, v7

    return v7

    .line 669
    :goto_2
    const/4 v7, -0x1

    return v7
.end method


# virtual methods
.method public appendCpuInfo(JLcom/android/server/cpu/CpuInfoReader$CpuInfo;)V
    .locals 7
    .param p1, "uptimeMillis"    # J
    .param p3, "cpuInfo"    # Lcom/android/server/cpu/CpuInfoReader$CpuInfo;

    .line 586
    iget v0, p3, Lcom/android/server/cpu/CpuInfoReader$CpuInfo;->cpusetCategories:I

    iget v1, p0, Lcom/android/server/cpu/CpuMonitorService$CpusetInfo;->cpuset:I

    invoke-static {v0, v1}, Lcom/android/server/cpu/CpuMonitorService;->-$$Nest$smcontainsCpuset(II)Z

    move-result v0

    if-nez v0, :cond_0

    .line 587
    return-void

    .line 589
    :cond_0
    iget-object v0, p0, Lcom/android/server/cpu/CpuMonitorService$CpusetInfo;->mSnapshotsByUptime:Landroid/util/LongSparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/cpu/CpuMonitorService$CpusetInfo$Snapshot;

    .line 590
    .local v0, "currentSnapshot":Lcom/android/server/cpu/CpuMonitorService$CpusetInfo$Snapshot;
    if-nez v0, :cond_1

    .line 591
    new-instance v1, Lcom/android/server/cpu/CpuMonitorService$CpusetInfo$Snapshot;

    invoke-direct {v1, p1, p2}, Lcom/android/server/cpu/CpuMonitorService$CpusetInfo$Snapshot;-><init>(J)V

    move-object v0, v1

    .line 592
    iget-object v1, p0, Lcom/android/server/cpu/CpuMonitorService$CpusetInfo;->mSnapshotsByUptime:Landroid/util/LongSparseArray;

    invoke-virtual {v1, p1, p2, v0}, Landroid/util/LongSparseArray;->append(JLjava/lang/Object;)V

    .line 593
    iget-object v1, p0, Lcom/android/server/cpu/CpuMonitorService$CpusetInfo;->mSnapshotsByUptime:Landroid/util/LongSparseArray;

    invoke-virtual {v1}, Landroid/util/LongSparseArray;->size()I

    move-result v1

    nop

    if-lez v1, :cond_1

    iget-object v1, p0, Lcom/android/server/cpu/CpuMonitorService$CpusetInfo;->mSnapshotsByUptime:Landroid/util/LongSparseArray;

    .line 594
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/cpu/CpuMonitorService$CpusetInfo$Snapshot;

    iget-wide v3, v1, Lcom/android/server/cpu/CpuMonitorService$CpusetInfo$Snapshot;->uptimeMillis:J

    sub-long v3, p1, v3

    invoke-static {}, Lcom/android/server/cpu/CpuMonitorService;->-$$Nest$sfgetCACHE_DURATION_MILLISECONDS()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-lez v1, :cond_1

    .line 596
    iget-object v1, p0, Lcom/android/server/cpu/CpuMonitorService$CpusetInfo;->mSnapshotsByUptime:Landroid/util/LongSparseArray;

    invoke-virtual {v1, v2}, Landroid/util/LongSparseArray;->removeAt(I)V

    .line 599
    :cond_1
    invoke-virtual {v0, p3}, Lcom/android/server/cpu/CpuMonitorService$CpusetInfo$Snapshot;->appendCpuInfo(Lcom/android/server/cpu/CpuInfoReader$CpuInfo;)V

    .line 600
    return-void
.end method

.method public clear()V
    .locals 1

    .line 675
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/cpu/CpuMonitorService$CpusetInfo;->mLatestCpuAvailabilityInfo:Lcom/android/server/cpu/CpuAvailabilityInfo;

    .line 676
    iget-object v0, p0, Lcom/android/server/cpu/CpuMonitorService$CpusetInfo;->mSnapshotsByUptime:Landroid/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->clear()V

    .line 677
    return-void
.end method

.method public getLatestCpuAvailabilityInfo()Lcom/android/server/cpu/CpuAvailabilityInfo;
    .locals 1

    .line 604
    iget-object v0, p0, Lcom/android/server/cpu/CpuMonitorService$CpusetInfo;->mLatestCpuAvailabilityInfo:Lcom/android/server/cpu/CpuAvailabilityInfo;

    return-object v0
.end method

.method public getPrevCpuAvailabilityPercent()I
    .locals 3

    .line 640
    iget-object v0, p0, Lcom/android/server/cpu/CpuMonitorService$CpusetInfo;->mSnapshotsByUptime:Landroid/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->size()I

    move-result v0

    .line 641
    .local v0, "numSnapshots":I
    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    .line 642
    const/4 v1, -0x1

    return v1

    .line 644
    :cond_0
    iget-object v1, p0, Lcom/android/server/cpu/CpuMonitorService$CpusetInfo;->mSnapshotsByUptime:Landroid/util/LongSparseArray;

    add-int/lit8 v2, v0, -0x2

    invoke-virtual {v1, v2}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/cpu/CpuMonitorService$CpusetInfo$Snapshot;

    invoke-virtual {v1}, Lcom/android/server/cpu/CpuMonitorService$CpusetInfo$Snapshot;->getAverageAvailableCpuFreqPercent()I

    move-result v1

    return v1
.end method

.method public populateLatestCpuAvailabilityInfo(JJ)V
    .locals 13
    .param p1, "currentUptimeMillis"    # J
    .param p3, "latestAvailabilityDurationMillis"    # J

    .line 609
    iget-object v0, p0, Lcom/android/server/cpu/CpuMonitorService$CpusetInfo;->mSnapshotsByUptime:Landroid/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->size()I

    move-result v0

    .line 610
    .local v0, "numSnapshots":I
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 611
    iput-object v1, p0, Lcom/android/server/cpu/CpuMonitorService$CpusetInfo;->mLatestCpuAvailabilityInfo:Lcom/android/server/cpu/CpuAvailabilityInfo;

    .line 612
    return-void

    .line 614
    :cond_0
    iget-object v2, p0, Lcom/android/server/cpu/CpuMonitorService$CpusetInfo;->mSnapshotsByUptime:Landroid/util/LongSparseArray;

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {v2, v3}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/cpu/CpuMonitorService$CpusetInfo$Snapshot;

    .line 615
    .local v2, "latestSnapshot":Lcom/android/server/cpu/CpuMonitorService$CpusetInfo$Snapshot;
    iget-wide v3, v2, Lcom/android/server/cpu/CpuMonitorService$CpusetInfo$Snapshot;->uptimeMillis:J

    cmp-long v3, v3, p1

    if-eqz v3, :cond_2

    .line 619
    sget-boolean v3, Lcom/android/server/cpu/CpuMonitorService;->DEBUG:Z

    if-eqz v3, :cond_1

    .line 620
    sget-object v3, Lcom/android/server/cpu/CpuMonitorService;->TAG:Ljava/lang/String;

    iget v4, p0, Lcom/android/server/cpu/CpuMonitorService$CpusetInfo;->cpuset:I

    .line 621
    invoke-static {v4}, Lcom/android/server/cpu/CpuAvailabilityMonitoringConfig;->toCpusetString(I)Ljava/lang/String;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    .line 620
    const-string v5, "Skipping stale CPU availability information for cpuset %s"

    invoke-static {v3, v5, v4}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 623
    :cond_1
    iput-object v1, p0, Lcom/android/server/cpu/CpuMonitorService$CpusetInfo;->mLatestCpuAvailabilityInfo:Lcom/android/server/cpu/CpuAvailabilityInfo;

    .line 624
    return-void

    .line 627
    :cond_2
    iget-object v1, p0, Lcom/android/server/cpu/CpuMonitorService$CpusetInfo;->mLatestCpuAvailabilityInfo:Lcom/android/server/cpu/CpuAvailabilityInfo;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/server/cpu/CpuMonitorService$CpusetInfo;->mLatestCpuAvailabilityInfo:Lcom/android/server/cpu/CpuAvailabilityInfo;

    iget-wide v3, v1, Lcom/android/server/cpu/CpuAvailabilityInfo;->dataTimestampUptimeMillis:J

    iget-wide v5, v2, Lcom/android/server/cpu/CpuMonitorService$CpusetInfo$Snapshot;->uptimeMillis:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_3

    .line 630
    return-void

    .line 632
    :cond_3
    sub-long v3, p1, p3

    .line 633
    .local v3, "earliestUptimeMillis":J
    new-instance v5, Lcom/android/server/cpu/CpuAvailabilityInfo;

    iget v6, p0, Lcom/android/server/cpu/CpuMonitorService$CpusetInfo;->cpuset:I

    iget-wide v7, v2, Lcom/android/server/cpu/CpuMonitorService$CpusetInfo$Snapshot;->uptimeMillis:J

    .line 634
    invoke-virtual {v2}, Lcom/android/server/cpu/CpuMonitorService$CpusetInfo$Snapshot;->getAverageAvailableCpuFreqPercent()I

    move-result v9

    .line 635
    invoke-direct {p0, v3, v4}, Lcom/android/server/cpu/CpuMonitorService$CpusetInfo;->getCumulativeAvgAvailabilityPercent(J)I

    move-result v10

    move-wide/from16 v11, p3

    invoke-direct/range {v5 .. v12}, Lcom/android/server/cpu/CpuAvailabilityInfo;-><init>(IJIIJ)V

    iput-object v5, p0, Lcom/android/server/cpu/CpuMonitorService$CpusetInfo;->mLatestCpuAvailabilityInfo:Lcom/android/server/cpu/CpuAvailabilityInfo;

    .line 637
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 681
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CpusetInfo{cpuset = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/cpu/CpuMonitorService$CpusetInfo;->cpuset:I

    invoke-static {v1}, Lcom/android/server/cpu/CpuAvailabilityMonitoringConfig;->toCpusetString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mSnapshotsByUptime = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/cpu/CpuMonitorService$CpusetInfo;->mSnapshotsByUptime:Landroid/util/LongSparseArray;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mLatestCpuAvailabilityInfo = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/cpu/CpuMonitorService$CpusetInfo;->mLatestCpuAvailabilityInfo:Lcom/android/server/cpu/CpuAvailabilityInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
