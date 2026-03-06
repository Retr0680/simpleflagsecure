.class final Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;
.super Ljava/lang/Object;
.source "JobStore.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/job/JobStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ReadJobMapFromDiskRunnable"
.end annotation


# instance fields
.field private final jobSet:Lcom/android/server/job/JobStore$JobSet;

.field private final mCompletionLatch:Ljava/util/concurrent/CountDownLatch;

.field private final rtcGood:Z

.field final synthetic this$0:Lcom/android/server/job/JobStore;


# direct methods
.method constructor <init>(Lcom/android/server/job/JobStore;Lcom/android/server/job/JobStore$JobSet;Z)V
    .locals 1
    .param p2, "jobSet"    # Lcom/android/server/job/JobStore$JobSet;
    .param p3, "rtcIsGood"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 1105
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;-><init>(Lcom/android/server/job/JobStore;Lcom/android/server/job/JobStore$JobSet;ZLjava/util/concurrent/CountDownLatch;)V

    .line 1106
    return-void
.end method

.method constructor <init>(Lcom/android/server/job/JobStore;Lcom/android/server/job/JobStore$JobSet;ZLjava/util/concurrent/CountDownLatch;)V
    .locals 0
    .param p2, "jobSet"    # Lcom/android/server/job/JobStore$JobSet;
    .param p3, "rtcIsGood"    # Z
    .param p4, "completionLatch"    # Ljava/util/concurrent/CountDownLatch;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 1109
    iput-object p1, p0, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->this$0:Lcom/android/server/job/JobStore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1110
    iput-object p2, p0, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->jobSet:Lcom/android/server/job/JobStore$JobSet;

    .line 1111
    iput-boolean p3, p0, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->rtcGood:Z

    .line 1112
    iput-object p4, p0, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->mCompletionLatch:Ljava/util/concurrent/CountDownLatch;

    .line 1113
    return-void
.end method

.method private buildBuilderFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)Landroid/app/job/JobInfo$Builder;
    .locals 5
    .param p1, "parser"    # Lcom/android/modules/utils/TypedXmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 1537
    const-string/jumbo v0, "jobid"

    const/4 v1, 0x0

    invoke-interface {p1, v1, v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 1538
    .local v0, "jobId":I
    const-string/jumbo v2, "package"

    invoke-interface {p1, v1, v2}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->intern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1539
    .local v2, "packageName":Ljava/lang/String;
    const-string v3, "class"

    invoke-interface {p1, v1, v3}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->intern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1540
    .local v1, "className":Ljava/lang/String;
    new-instance v3, Landroid/content/ComponentName;

    invoke-direct {v3, v2, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1542
    .local v3, "cname":Landroid/content/ComponentName;
    new-instance v4, Landroid/app/job/JobInfo$Builder;

    invoke-direct {v4, v0, v3}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    return-object v4
.end method

.method private buildConstraintsFromXml(Landroid/app/job/JobInfo$Builder;Lcom/android/modules/utils/TypedXmlPullParser;)V
    .locals 19
    .param p1, "jobBuilder"    # Landroid/app/job/JobInfo$Builder;
    .param p2, "parser"    # Lcom/android/modules/utils/TypedXmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1559
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    const/4 v2, 0x0

    .line 1560
    .local v2, "netCapabilitiesLong":Ljava/lang/String;
    const/4 v3, 0x0

    .line 1561
    .local v3, "netForbiddenCapabilitiesLong":Ljava/lang/String;
    const/4 v4, 0x0

    .line 1563
    .local v4, "netTransportTypesLong":Ljava/lang/String;
    const-string/jumbo v5, "net-capabilities-csv"

    const/4 v6, 0x0

    invoke-interface {v1, v6, v5}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1565
    .local v5, "netCapabilitiesIntArray":Ljava/lang/String;
    const-string/jumbo v7, "net-forbidden-capabilities-csv"

    invoke-interface {v1, v6, v7}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1567
    .local v7, "netForbiddenCapabilitiesIntArray":Ljava/lang/String;
    const-string/jumbo v8, "net-transport-types-csv"

    invoke-interface {v1, v6, v8}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1569
    .local v8, "netTransportTypesIntArray":Ljava/lang/String;
    if-eqz v5, :cond_0

    if-nez v8, :cond_1

    .line 1570
    :cond_0
    const-string/jumbo v9, "net-capabilities"

    invoke-interface {v1, v6, v9}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1571
    const-string/jumbo v9, "net-unwanted-capabilities"

    invoke-interface {v1, v6, v9}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1573
    const-string/jumbo v9, "net-transport-types"

    invoke-interface {v1, v6, v9}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1576
    :cond_1
    const/4 v9, 0x0

    if-eqz v5, :cond_5

    if-eqz v8, :cond_5

    .line 1579
    new-instance v11, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v11}, Landroid/net/NetworkRequest$Builder;-><init>()V

    .line 1580
    invoke-virtual {v11}, Landroid/net/NetworkRequest$Builder;->clearCapabilities()Landroid/net/NetworkRequest$Builder;

    move-result-object v11

    .line 1582
    .local v11, "builder":Landroid/net/NetworkRequest$Builder;
    invoke-static {v5}, Lcom/android/server/job/JobStore;->stringToIntArray(Ljava/lang/String;)[I

    move-result-object v12

    array-length v13, v12

    move v14, v9

    :goto_0
    if-ge v14, v13, :cond_2

    aget v15, v12, v14

    .line 1583
    .local v15, "capability":I
    invoke-virtual {v11, v15}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    .line 1582
    .end local v15    # "capability":I
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    .line 1586
    :cond_2
    invoke-static {v7}, Lcom/android/server/job/JobStore;->stringToIntArray(Ljava/lang/String;)[I

    move-result-object v12

    array-length v13, v12

    move v14, v9

    :goto_1
    if-ge v14, v13, :cond_3

    aget v15, v12, v14

    .line 1587
    .local v15, "forbiddenCapability":I
    invoke-virtual {v11, v15}, Landroid/net/NetworkRequest$Builder;->addForbiddenCapability(I)Landroid/net/NetworkRequest$Builder;

    .line 1586
    .end local v15    # "forbiddenCapability":I
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 1590
    :cond_3
    invoke-static {v8}, Lcom/android/server/job/JobStore;->stringToIntArray(Ljava/lang/String;)[I

    move-result-object v12

    array-length v13, v12

    :goto_2
    if-ge v9, v13, :cond_4

    aget v14, v12, v9

    .line 1591
    .local v14, "transport":I
    invoke-virtual {v11, v14}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    .line 1590
    .end local v14    # "transport":I
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 1593
    :cond_4
    nop

    .line 1594
    invoke-virtual {v11}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v9

    invoke-virtual {v0, v9}, Landroid/app/job/JobInfo$Builder;->setRequiredNetwork(Landroid/net/NetworkRequest;)Landroid/app/job/JobInfo$Builder;

    move-result-object v9

    .line 1596
    const-string v12, "estimated-download-bytes"

    const-wide/16 v13, -0x1

    move-object/from16 v16, v11

    .end local v11    # "builder":Landroid/net/NetworkRequest$Builder;
    .local v16, "builder":Landroid/net/NetworkRequest$Builder;
    invoke-interface {v1, v6, v12, v13, v14}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v10

    .line 1598
    const-string v12, "estimated-upload-bytes"

    move-object/from16 v17, v2

    move-object/from16 v18, v3

    .end local v2    # "netCapabilitiesLong":Ljava/lang/String;
    .end local v3    # "netForbiddenCapabilitiesLong":Ljava/lang/String;
    .local v17, "netCapabilitiesLong":Ljava/lang/String;
    .local v18, "netForbiddenCapabilitiesLong":Ljava/lang/String;
    invoke-interface {v1, v6, v12, v13, v14}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v2

    .line 1595
    invoke-virtual {v9, v10, v11, v2, v3}, Landroid/app/job/JobInfo$Builder;->setEstimatedNetworkBytes(JJ)Landroid/app/job/JobInfo$Builder;

    move-result-object v2

    .line 1601
    const-string/jumbo v3, "minimum-network-chunk-bytes"

    invoke-interface {v1, v6, v3, v13, v14}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v9

    .line 1600
    invoke-virtual {v2, v9, v10}, Landroid/app/job/JobInfo$Builder;->setMinimumNetworkChunkBytes(J)Landroid/app/job/JobInfo$Builder;

    .line 1604
    .end local v16    # "builder":Landroid/net/NetworkRequest$Builder;
    goto/16 :goto_6

    .line 1576
    .end local v17    # "netCapabilitiesLong":Ljava/lang/String;
    .end local v18    # "netForbiddenCapabilitiesLong":Ljava/lang/String;
    .restart local v2    # "netCapabilitiesLong":Ljava/lang/String;
    .restart local v3    # "netForbiddenCapabilitiesLong":Ljava/lang/String;
    :cond_5
    move-object/from16 v17, v2

    move-object/from16 v18, v3

    .line 1604
    .end local v2    # "netCapabilitiesLong":Ljava/lang/String;
    .end local v3    # "netForbiddenCapabilitiesLong":Ljava/lang/String;
    .restart local v17    # "netCapabilitiesLong":Ljava/lang/String;
    .restart local v18    # "netForbiddenCapabilitiesLong":Ljava/lang/String;
    if-eqz v17, :cond_c

    if-eqz v4, :cond_c

    .line 1606
    new-instance v2, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v2}, Landroid/net/NetworkRequest$Builder;-><init>()V

    .line 1607
    invoke-virtual {v2}, Landroid/net/NetworkRequest$Builder;->clearCapabilities()Landroid/net/NetworkRequest$Builder;

    move-result-object v2

    .line 1608
    .local v2, "builder":Landroid/net/NetworkRequest$Builder;
    const/16 v3, 0x19

    .line 1610
    .local v3, "maxNetCapabilityInR":I
    invoke-static/range {v17 .. v17}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    invoke-static {v10, v11}, Lcom/android/internal/util/jobs/BitUtils;->unpackBits(J)[I

    move-result-object v10

    array-length v11, v10

    move v12, v9

    :goto_3
    const/16 v13, 0x19

    if-ge v12, v11, :cond_7

    aget v14, v10, v12

    .line 1612
    .local v14, "capability":I
    if-gt v14, v13, :cond_6

    .line 1613
    invoke-virtual {v2, v14}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    .line 1610
    .end local v14    # "capability":I
    :cond_6
    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    .line 1616
    :cond_7
    invoke-static/range {v18 .. v18}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    invoke-static {v10, v11}, Lcom/android/internal/util/jobs/BitUtils;->unpackBits(J)[I

    move-result-object v10

    array-length v11, v10

    move v12, v9

    :goto_4
    if-ge v12, v11, :cond_9

    aget v14, v10, v12

    .line 1618
    .local v14, "forbiddenCapability":I
    if-gt v14, v13, :cond_8

    .line 1619
    invoke-virtual {v2, v14}, Landroid/net/NetworkRequest$Builder;->addForbiddenCapability(I)Landroid/net/NetworkRequest$Builder;

    .line 1616
    .end local v14    # "forbiddenCapability":I
    :cond_8
    add-int/lit8 v12, v12, 0x1

    goto :goto_4

    .line 1623
    :cond_9
    const/4 v10, 0x7

    .line 1624
    .local v10, "maxTransportInR":I
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v11

    invoke-static {v11, v12}, Lcom/android/internal/util/jobs/BitUtils;->unpackBits(J)[I

    move-result-object v11

    array-length v12, v11

    :goto_5
    if-ge v9, v12, :cond_b

    aget v13, v11, v9

    .line 1626
    .local v13, "transport":I
    const/4 v14, 0x7

    if-gt v13, v14, :cond_a

    .line 1627
    invoke-virtual {v2, v13}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    .line 1624
    .end local v13    # "transport":I
    :cond_a
    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    .line 1630
    :cond_b
    invoke-virtual {v2}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v9

    invoke-virtual {v0, v9}, Landroid/app/job/JobInfo$Builder;->setRequiredNetwork(Landroid/net/NetworkRequest;)Landroid/app/job/JobInfo$Builder;

    .line 1633
    .end local v2    # "builder":Landroid/net/NetworkRequest$Builder;
    .end local v3    # "maxNetCapabilityInR":I
    .end local v10    # "maxTransportInR":I
    goto :goto_6

    .line 1635
    :cond_c
    const-string v2, "connectivity"

    invoke-interface {v1, v6, v2}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1636
    .local v2, "val":Ljava/lang/String;
    if-eqz v2, :cond_d

    .line 1637
    const/4 v15, 0x1

    invoke-virtual {v0, v15}, Landroid/app/job/JobInfo$Builder;->setRequiredNetworkType(I)Landroid/app/job/JobInfo$Builder;

    .line 1639
    :cond_d
    const-string/jumbo v3, "metered"

    invoke-interface {v1, v6, v3}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1640
    if-eqz v2, :cond_e

    .line 1641
    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Landroid/app/job/JobInfo$Builder;->setRequiredNetworkType(I)Landroid/app/job/JobInfo$Builder;

    .line 1643
    :cond_e
    const-string/jumbo v3, "unmetered"

    invoke-interface {v1, v6, v3}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1644
    if-eqz v2, :cond_f

    .line 1645
    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Landroid/app/job/JobInfo$Builder;->setRequiredNetworkType(I)Landroid/app/job/JobInfo$Builder;

    .line 1647
    :cond_f
    const-string/jumbo v3, "not-roaming"

    invoke-interface {v1, v6, v3}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1648
    if-eqz v2, :cond_10

    .line 1649
    const/4 v3, 0x3

    invoke-virtual {v0, v3}, Landroid/app/job/JobInfo$Builder;->setRequiredNetworkType(I)Landroid/app/job/JobInfo$Builder;

    .line 1653
    .end local v2    # "val":Ljava/lang/String;
    :cond_10
    :goto_6
    const-string/jumbo v2, "idle"

    invoke-interface {v1, v6, v2}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1654
    .restart local v2    # "val":Ljava/lang/String;
    if-eqz v2, :cond_11

    .line 1655
    const/4 v15, 0x1

    invoke-virtual {v0, v15}, Landroid/app/job/JobInfo$Builder;->setRequiresDeviceIdle(Z)Landroid/app/job/JobInfo$Builder;

    goto :goto_7

    .line 1654
    :cond_11
    const/4 v15, 0x1

    .line 1657
    :goto_7
    const-string v3, "charging"

    invoke-interface {v1, v6, v3}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1658
    if-eqz v2, :cond_12

    .line 1659
    invoke-virtual {v0, v15}, Landroid/app/job/JobInfo$Builder;->setRequiresCharging(Z)Landroid/app/job/JobInfo$Builder;

    .line 1661
    :cond_12
    const-string v3, "battery-not-low"

    invoke-interface {v1, v6, v3}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1662
    if-eqz v2, :cond_13

    .line 1663
    invoke-virtual {v0, v15}, Landroid/app/job/JobInfo$Builder;->setRequiresBatteryNotLow(Z)Landroid/app/job/JobInfo$Builder;

    .line 1665
    :cond_13
    const-string/jumbo v3, "storage-not-low"

    invoke-interface {v1, v6, v3}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1666
    if-eqz v2, :cond_14

    .line 1667
    invoke-virtual {v0, v15}, Landroid/app/job/JobInfo$Builder;->setRequiresStorageNotLow(Z)Landroid/app/job/JobInfo$Builder;

    .line 1669
    :cond_14
    return-void
.end method

.method private buildRtcExecutionTimesFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)Landroid/util/Pair;
    .locals 6
    .param p1, "parser"    # Lcom/android/modules/utils/TypedXmlPullParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/modules/utils/TypedXmlPullParser;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 1697
    nop

    .line 1698
    const/4 v0, 0x0

    const-string v1, "delay"

    const-wide/16 v2, 0x0

    invoke-interface {p1, v0, v1, v2, v3}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v1

    .line 1699
    .local v1, "earliestRunTimeRtc":J
    nop

    .line 1700
    const-string v3, "deadline"

    const-wide v4, 0x7fffffffffffffffL

    invoke-interface {p1, v0, v3, v4, v5}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v3

    .line 1701
    .local v3, "latestRunTimeRtc":J
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method private static intern(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "val"    # Ljava/lang/String;

    .line 1229
    if-nez p0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method private maybeBuildBackoffPolicyFromXml(Landroid/app/job/JobInfo$Builder;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 5
    .param p1, "jobBuilder"    # Landroid/app/job/JobInfo$Builder;
    .param p2, "parser"    # Lorg/xmlpull/v1/XmlPullParser;

    .line 1676
    const-string/jumbo v0, "initial-backoff"

    const/4 v1, 0x0

    invoke-interface {p2, v1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1677
    .local v0, "val":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 1678
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 1679
    .local v2, "initialBackoff":J
    const-string v4, "backoff-policy"

    invoke-interface {p2, v1, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1680
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 1681
    .local v1, "backoffPolicy":I
    invoke-virtual {p1, v2, v3, v1}, Landroid/app/job/JobInfo$Builder;->setBackoffCriteria(JI)Landroid/app/job/JobInfo$Builder;

    .line 1683
    .end local v1    # "backoffPolicy":I
    .end local v2    # "initialBackoff":J
    :cond_0
    return-void
.end method

.method private readDebugTagsFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)Ljava/util/Set;
    .locals 6
    .param p1, "parser"    # Lcom/android/modules/utils/TypedXmlPullParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/modules/utils/TypedXmlPullParser;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 1765
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 1767
    .local v0, "debugTags":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getEventType()I

    move-result v1

    .local v1, "eventType":I
    :goto_0
    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    .line 1769
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 1770
    .local v2, "tagName":Ljava/lang/String;
    const-string v3, "debug-tag"

    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1772
    goto :goto_2

    .line 1774
    :cond_0
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v3

    const/16 v4, 0x20

    if-ge v3, v4, :cond_1

    .line 1777
    :try_start_0
    const-string/jumbo v3, "tag"

    const/4 v4, 0x0

    invoke-interface {p1, v4, v3}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/app/job/JobInfo;->validateDebugTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1781
    .local v3, "debugTag":Ljava/lang/String;
    nop

    .line 1782
    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1778
    .end local v3    # "debugTag":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 1779
    .local v3, "e":Ljava/lang/Exception;
    const-string v4, "JobStore"

    const-string v5, "Invalid debug tag persisted to disk"

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1780
    nop

    .line 1768
    .end local v2    # "tagName":Ljava/lang/String;
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_1
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v1

    goto :goto_0

    .line 1786
    .end local v1    # "eventType":I
    :cond_2
    :goto_2
    return-object v0
.end method

.method private readJobMapImpl(Ljava/io/InputStream;ZJ)Ljava/util/List;
    .locals 13
    .param p1, "fis"    # Ljava/io/InputStream;
    .param p2, "rtcIsGood"    # Z
    .param p3, "nowElapsed"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "ZJ)",
            "Ljava/util/List<",
            "Lcom/android/server/job/controllers/JobStatus;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1234
    invoke-static {p1}, Landroid/util/Xml;->resolvePullParser(Ljava/io/InputStream;)Lcom/android/modules/utils/TypedXmlPullParser;

    move-result-object v2

    .line 1236
    .local v2, "parser":Lcom/android/modules/utils/TypedXmlPullParser;
    invoke-interface {v2}, Lcom/android/modules/utils/TypedXmlPullParser;->getEventType()I

    move-result v0

    .line 1237
    .local v0, "eventType":I
    :goto_0
    const/4 v6, 0x2

    const/4 v7, 0x1

    const-string v8, "JobStore"

    if-eq v0, v6, :cond_0

    if-eq v0, v7, :cond_0

    .line 1239
    invoke-interface {v2}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v0

    .line 1240
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Start tag: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1242
    :cond_0
    const/4 v1, 0x0

    if-ne v0, v7, :cond_2

    .line 1243
    invoke-static {}, Lcom/android/server/job/JobStore;->-$$Nest$sfgetDEBUG()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1244
    const-string v3, "No persisted jobs."

    invoke-static {v8, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1246
    :cond_1
    return-object v1

    .line 1249
    :cond_2
    invoke-interface {v2}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 1250
    .local v3, "tagName":Ljava/lang/String;
    const-string/jumbo v4, "job-info"

    invoke-virtual {v4, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 1251
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object v9, v4

    .line 1252
    .local v9, "jobs":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/job/controllers/JobStatus;>;"
    const-string/jumbo v4, "version"

    invoke-interface {v2, v1, v4}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 1254
    .local v4, "version":I
    if-gt v4, v7, :cond_3

    if-gez v4, :cond_4

    :cond_3
    goto :goto_2

    .line 1259
    :cond_4
    invoke-interface {v2}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v0

    move v10, v0

    .line 1262
    .end local v0    # "eventType":I
    .local v10, "eventType":I
    :cond_5
    if-ne v10, v6, :cond_9

    .line 1263
    invoke-interface {v2}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v11

    .line 1265
    .end local v3    # "tagName":Ljava/lang/String;
    .local v11, "tagName":Ljava/lang/String;
    const-string/jumbo v0, "job"

    invoke-virtual {v0, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1266
    nop

    .line 1267
    move-object v0, p0

    move v1, p2

    move v3, v4

    move-wide/from16 v4, p3

    .end local v4    # "version":I
    .local v3, "version":I
    invoke-direct/range {v0 .. v5}, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->restoreJobFromXml(ZLcom/android/modules/utils/TypedXmlPullParser;IJ)Lcom/android/server/job/controllers/JobStatus;

    move-result-object v12

    .line 1268
    move v4, v3

    .end local v3    # "version":I
    .restart local v4    # "version":I
    .local v12, "persistedJob":Lcom/android/server/job/controllers/JobStatus;
    if-eqz v12, :cond_7

    .line 1269
    invoke-static {}, Lcom/android/server/job/JobStore;->-$$Nest$sfgetDEBUG()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1270
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Read out "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1272
    :cond_6
    invoke-interface {v9, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1274
    :cond_7
    const-string v0, "Error reading job from file."

    invoke-static {v8, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1278
    .end local v12    # "persistedJob":Lcom/android/server/job/controllers/JobStatus;
    :cond_8
    :goto_1
    move-object v3, v11

    .end local v11    # "tagName":Ljava/lang/String;
    .local v3, "tagName":Ljava/lang/String;
    :cond_9
    invoke-interface {v2}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v10

    .line 1279
    if-ne v10, v7, :cond_5

    .line 1280
    return-object v9

    .line 1255
    .end local v10    # "eventType":I
    .restart local v0    # "eventType":I
    :goto_2
    const-string v5, "Invalid version number, aborting jobs file read."

    invoke-static {v8, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1256
    return-object v1

    .line 1282
    .end local v4    # "version":I
    .end local v9    # "jobs":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/job/controllers/JobStatus;>;"
    :cond_a
    return-object v1
.end method

.method private readJobWorkItemFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)Landroid/app/job/JobWorkItem;
    .locals 11
    .param p1, "parser"    # Lcom/android/modules/utils/TypedXmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 1734
    const-string v0, "JobStore"

    new-instance v1, Landroid/app/job/JobWorkItem$Builder;

    invoke-direct {v1}, Landroid/app/job/JobWorkItem$Builder;-><init>()V

    .line 1736
    .local v1, "jwiBuilder":Landroid/app/job/JobWorkItem$Builder;
    nop

    .line 1737
    const/4 v2, 0x0

    const-string v3, "delivery-count"

    invoke-interface {p1, v2, v3}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/app/job/JobWorkItem$Builder;->setDeliveryCount(I)Landroid/app/job/JobWorkItem$Builder;

    move-result-object v3

    .line 1739
    const-string v4, "estimated-download-bytes"

    const-wide/16 v5, -0x1

    invoke-interface {p1, v2, v4, v5, v6}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v7

    .line 1741
    const-string v4, "estimated-upload-bytes"

    invoke-interface {p1, v2, v4, v5, v6}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v9

    .line 1738
    invoke-virtual {v3, v7, v8, v9, v10}, Landroid/app/job/JobWorkItem$Builder;->setEstimatedNetworkBytes(JJ)Landroid/app/job/JobWorkItem$Builder;

    move-result-object v3

    .line 1743
    const-string/jumbo v4, "minimum-network-chunk-bytes"

    invoke-interface {p1, v2, v4, v5, v6}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Landroid/app/job/JobWorkItem$Builder;->setMinimumNetworkChunkBytes(J)Landroid/app/job/JobWorkItem$Builder;

    .line 1745
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    .line 1747
    :try_start_0
    invoke-static {p1}, Landroid/os/PersistableBundle;->restoreFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)Landroid/os/PersistableBundle;

    move-result-object v3

    .line 1748
    .local v3, "extras":Landroid/os/PersistableBundle;
    invoke-virtual {v1, v3}, Landroid/app/job/JobWorkItem$Builder;->setExtras(Landroid/os/PersistableBundle;)Landroid/app/job/JobWorkItem$Builder;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1752
    nop

    .line 1755
    .end local v3    # "extras":Landroid/os/PersistableBundle;
    :try_start_1
    invoke-virtual {v1}, Landroid/app/job/JobWorkItem$Builder;->build()Landroid/app/job/JobWorkItem;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object v0

    .line 1756
    :catch_0
    move-exception v3

    .line 1757
    .local v3, "e":Ljava/lang/Exception;
    const-string v4, "Invalid JobWorkItem"

    invoke-static {v0, v4, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1758
    return-object v2

    .line 1749
    .end local v3    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v3

    .line 1750
    .local v3, "e":Ljava/lang/IllegalArgumentException;
    const-string v4, "Persisted extras contained invalid data"

    invoke-static {v0, v4, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1751
    return-object v2
.end method

.method private readJobWorkItemsFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)Ljava/util/List;
    .locals 6
    .param p1, "parser"    # Lcom/android/modules/utils/TypedXmlPullParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/modules/utils/TypedXmlPullParser;",
            ")",
            "Ljava/util/List<",
            "Landroid/app/job/JobWorkItem;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 1707
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1709
    .local v0, "jobWorkItems":Ljava/util/List;, "Ljava/util/List<Landroid/app/job/JobWorkItem;>;"
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getEventType()I

    move-result v1

    .local v1, "eventType":I
    :goto_0
    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    .line 1711
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 1712
    .local v2, "tagName":Ljava/lang/String;
    const-string/jumbo v3, "job-work-item"

    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1714
    goto :goto_4

    .line 1717
    :cond_0
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->readJobWorkItemFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)Landroid/app/job/JobWorkItem;

    move-result-object v3

    .line 1718
    .local v3, "jwi":Landroid/app/job/JobWorkItem;
    if-eqz v3, :cond_1

    .line 1719
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1721
    .end local v3    # "jwi":Landroid/app/job/JobWorkItem;
    :catch_0
    move-exception v3

    goto :goto_2

    .line 1725
    :cond_1
    :goto_1
    goto :goto_3

    .line 1721
    :goto_2
    nop

    .line 1724
    .local v3, "e":Ljava/lang/Exception;
    const-string v4, "JobStore"

    const-string v5, "Problem with persisted JobWorkItem"

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1710
    .end local v2    # "tagName":Ljava/lang/String;
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_3
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v1

    goto :goto_0

    .line 1728
    .end local v1    # "eventType":I
    :cond_2
    :goto_4
    return-object v0
.end method

.method private restoreJobFromXml(ZLcom/android/modules/utils/TypedXmlPullParser;IJ)Lcom/android/server/job/controllers/JobStatus;
    .locals 40
    .param p1, "rtcIsGood"    # Z
    .param p2, "parser"    # Lcom/android/modules/utils/TypedXmlPullParser;
    .param p3, "schemaVersion"    # I
    .param p4, "nowElapsed"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1297
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move/from16 v3, p3

    move-wide/from16 v4, p4

    const-string v6, "JobStore"

    const/4 v7, 0x0

    .line 1301
    .local v7, "internalFlags":I
    const/4 v8, 0x0

    :try_start_0
    invoke-direct {v1, v2}, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->buildBuilderFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)Landroid/app/job/JobInfo$Builder;

    move-result-object v0

    move-object v9, v0

    .line 1302
    .local v9, "jobBuilder":Landroid/app/job/JobInfo$Builder;
    const/4 v0, 0x1

    invoke-virtual {v9, v0}, Landroid/app/job/JobInfo$Builder;->setPersisted(Z)Landroid/app/job/JobInfo$Builder;

    .line 1303
    const-string/jumbo v10, "uid"

    invoke-interface {v2, v8, v10}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move v13, v10

    .line 1306
    .local v13, "uid":I
    const-string/jumbo v10, "priority"

    if-nez v3, :cond_0

    .line 1307
    :try_start_1
    invoke-interface {v2, v8, v10}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1308
    .local v0, "val":Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 1309
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/app/job/JobInfo$Builder;->setBias(I)Landroid/app/job/JobInfo$Builder;

    goto :goto_0

    .line 1340
    .end local v0    # "val":Ljava/lang/String;
    .end local v9    # "jobBuilder":Landroid/app/job/JobInfo$Builder;
    .end local v13    # "uid":I
    :catch_0
    move-exception v0

    goto/16 :goto_16

    .line 1311
    .restart local v9    # "jobBuilder":Landroid/app/job/JobInfo$Builder;
    .restart local v13    # "uid":I
    :cond_0
    if-lt v3, v0, :cond_2

    .line 1312
    const-string v0, "bias"

    invoke-interface {v2, v8, v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1313
    .restart local v0    # "val":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 1314
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v9, v11}, Landroid/app/job/JobInfo$Builder;->setBias(I)Landroid/app/job/JobInfo$Builder;

    .line 1316
    :cond_1
    invoke-interface {v2, v8, v10}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1317
    .end local v0    # "val":Ljava/lang/String;
    .local v10, "val":Ljava/lang/String;
    if-eqz v10, :cond_2

    .line 1318
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v9, v0}, Landroid/app/job/JobInfo$Builder;->setPriority(I)Landroid/app/job/JobInfo$Builder;

    .line 1321
    .end local v10    # "val":Ljava/lang/String;
    :cond_2
    :goto_0
    const-string v0, "flags"

    invoke-interface {v2, v8, v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1322
    .restart local v0    # "val":Ljava/lang/String;
    if-eqz v0, :cond_3

    .line 1323
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/app/job/JobInfo$Builder;->setFlags(I)Landroid/app/job/JobInfo$Builder;

    .line 1325
    :cond_3
    const-string/jumbo v10, "internalFlags"

    invoke-interface {v2, v8, v10}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1326
    .end local v0    # "val":Ljava/lang/String;
    .restart local v10    # "val":Ljava/lang/String;
    if-eqz v10, :cond_4

    .line 1327
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    move v7, v0

    move/from16 v30, v7

    goto :goto_1

    .line 1326
    :cond_4
    move/from16 v30, v7

    .line 1329
    .end local v7    # "internalFlags":I
    .local v30, "internalFlags":I
    :goto_1
    :try_start_2
    const-string/jumbo v0, "sourceUserId"

    invoke-interface {v2, v8, v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1330
    .end local v10    # "val":Ljava/lang/String;
    .restart local v0    # "val":Ljava/lang/String;
    if-nez v0, :cond_5

    const/4 v7, -0x1

    :goto_2
    move v15, v7

    goto :goto_3

    :cond_5
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    goto :goto_2

    .line 1332
    .local v15, "sourceUserId":I
    :goto_3
    const-string/jumbo v7, "lastSuccessfulRunTime"

    invoke-interface {v2, v8, v7}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1333
    .end local v0    # "val":Ljava/lang/String;
    .local v7, "val":Ljava/lang/String;
    const-wide/16 v10, 0x0

    if-nez v7, :cond_6

    move-wide/from16 v23, v10

    goto :goto_4

    :cond_6
    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v16

    move-wide/from16 v23, v16

    .line 1335
    .local v23, "lastSuccessfulRunTime":J
    :goto_4
    const-string/jumbo v0, "lastFailedRunTime"

    invoke-interface {v2, v8, v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1336
    .end local v7    # "val":Ljava/lang/String;
    .restart local v0    # "val":Ljava/lang/String;
    if-nez v0, :cond_7

    move-wide/from16 v25, v10

    goto :goto_5

    :cond_7
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v16

    move-wide/from16 v25, v16

    .line 1338
    .local v25, "lastFailedRunTime":J
    :goto_5
    const-string v7, "cumulativeExecutionTime"

    .line 1339
    invoke-interface {v2, v8, v7, v10, v11}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v27
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_f

    .line 1343
    .end local v0    # "val":Ljava/lang/String;
    .local v27, "cumulativeExecutionTime":J
    nop

    .line 1345
    const-string/jumbo v0, "sourcePackageName"

    invoke-interface {v2, v8, v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1346
    .local v7, "sourcePackageName":Ljava/lang/String;
    const-string/jumbo v0, "namespace"

    invoke-interface {v2, v8, v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->intern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 1347
    .local v17, "namespace":Ljava/lang/String;
    const-string/jumbo v0, "sourceTag"

    invoke-interface {v2, v8, v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->intern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 1352
    .local v18, "sourceTag":Ljava/lang/String;
    :goto_6
    invoke-interface {v2}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v12

    .line 1353
    .local v12, "eventType":I
    const/4 v0, 0x4

    if-eq v12, v0, :cond_1c

    .line 1355
    const/4 v14, 0x2

    if-ne v12, v14, :cond_1b

    .line 1356
    move-wide/from16 v19, v10

    invoke-interface {v2}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v10

    const-string v11, "constraints"

    invoke-virtual {v11, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_8

    move-object/from16 v33, v8

    goto/16 :goto_15

    .line 1361
    :cond_8
    :try_start_3
    invoke-direct {v1, v9, v2}, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->buildConstraintsFromXml(Landroid/app/job/JobInfo$Builder;Lcom/android/modules/utils/TypedXmlPullParser;)V
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_e
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_d
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_b

    .line 1374
    nop

    .line 1376
    invoke-interface {v2}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    .line 1380
    :goto_7
    invoke-interface {v2}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v12

    .line 1381
    if-eq v12, v0, :cond_1a

    .line 1382
    if-eq v12, v14, :cond_9

    .line 1383
    return-object v8

    .line 1387
    :cond_9
    invoke-direct {v1, v2}, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->buildRtcExecutionTimesFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)Landroid/util/Pair;

    move-result-object v10

    .line 1389
    .local v10, "rtcRuntimes":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    invoke-static {v10, v4, v5}, Lcom/android/server/job/JobStore;->-$$Nest$smconvertRtcBoundsToElapsed(Landroid/util/Pair;J)Landroid/util/Pair;

    move-result-object v11

    .line 1391
    .local v11, "elapsedRuntimes":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    const-string/jumbo v14, "periodic"

    invoke-interface {v2}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1393
    :try_start_4
    const-string/jumbo v0, "period"

    invoke-interface {v2, v8, v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1394
    .restart local v0    # "val":Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v19

    move-wide/from16 v31, v19

    .line 1395
    .local v31, "periodMillis":J
    const-string v14, "flex"

    invoke-interface {v2, v8, v14}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_5

    .line 1396
    .end local v0    # "val":Ljava/lang/String;
    .local v14, "val":Ljava/lang/String;
    if-eqz v14, :cond_a

    :try_start_5
    invoke-static {v14}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v19
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_8

    .line 1421
    .end local v14    # "val":Ljava/lang/String;
    .end local v31    # "periodMillis":J
    :catch_1
    move-exception v0

    move-object/from16 v33, v8

    move-object/from16 v38, v10

    move/from16 v29, v12

    move/from16 v22, v13

    goto/16 :goto_b

    .line 1396
    .restart local v14    # "val":Ljava/lang/String;
    .restart local v31    # "periodMillis":J
    :cond_a
    move-wide/from16 v19, v31

    :goto_8
    move-wide/from16 v33, v19

    .line 1397
    .local v33, "flexMillis":J
    move/from16 v29, v12

    move/from16 v22, v13

    move-wide/from16 v12, v31

    move-wide/from16 v3, v33

    .end local v13    # "uid":I
    .end local v31    # "periodMillis":J
    .end local v33    # "flexMillis":J
    .local v3, "flexMillis":J
    .local v12, "periodMillis":J
    .local v22, "uid":I
    .local v29, "eventType":I
    :try_start_6
    invoke-virtual {v9, v12, v13, v3, v4}, Landroid/app/job/JobInfo$Builder;->setPeriodic(JJ)Landroid/app/job/JobInfo$Builder;

    .line 1402
    iget-object v0, v11, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v19

    add-long v31, p4, v12

    add-long v31, v31, v3

    cmp-long v0, v19, v31

    if-lez v0, :cond_b

    .line 1403
    add-long v19, p4, v3

    add-long v19, v19, v12

    .line 1405
    .local v19, "clampedLateRuntimeElapsed":J
    sub-long v31, v19, v3

    .line 1407
    .local v31, "clampedEarlyRuntimeElapsed":J
    const-string v0, "Periodic job for uid=\'%d\' persisted run-time is too big [%s, %s]. Clamping to [%s,%s]"

    .line 1410
    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5
    :try_end_6
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_6} :catch_4

    move-object/from16 v33, v8

    :try_start_7
    iget-object v8, v11, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v8, Ljava/lang/Long;

    .line 1411
    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v34

    const-wide/16 v36, 0x3e8

    div-long v34, v34, v36

    invoke-static/range {v34 .. v35}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v8

    move-wide/from16 v34, v3

    .end local v3    # "flexMillis":J
    .local v34, "flexMillis":J
    iget-object v3, v11, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Long;

    .line 1412
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    div-long v3, v3, v36

    invoke-static {v3, v4}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v3

    div-long v38, v31, v36

    .line 1413
    invoke-static/range {v38 .. v39}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v4

    div-long v36, v19, v36
    :try_end_7
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_7} :catch_3

    .line 1415
    move-object/from16 v38, v10

    .end local v10    # "rtcRuntimes":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    .local v38, "rtcRuntimes":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    :try_start_8
    invoke-static/range {v36 .. v37}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v10

    filled-new-array {v5, v8, v3, v4, v10}, [Ljava/lang/Object;

    move-result-object v3

    .line 1408
    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1407
    invoke-static {v6, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1418
    nop

    .line 1419
    invoke-static/range {v31 .. v32}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0
    :try_end_8
    .catch Ljava/lang/NumberFormatException; {:try_start_8 .. :try_end_8} :catch_2

    move-object v11, v0

    goto :goto_a

    .line 1421
    .end local v12    # "periodMillis":J
    .end local v14    # "val":Ljava/lang/String;
    .end local v19    # "clampedLateRuntimeElapsed":J
    .end local v31    # "clampedEarlyRuntimeElapsed":J
    .end local v34    # "flexMillis":J
    :catch_2
    move-exception v0

    goto :goto_b

    .end local v38    # "rtcRuntimes":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    .restart local v10    # "rtcRuntimes":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    :catch_3
    move-exception v0

    :goto_9
    move-object/from16 v38, v10

    .end local v10    # "rtcRuntimes":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    .restart local v38    # "rtcRuntimes":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    goto :goto_b

    .end local v38    # "rtcRuntimes":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    .restart local v10    # "rtcRuntimes":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    :catch_4
    move-exception v0

    move-object/from16 v33, v8

    goto :goto_9

    .line 1402
    .restart local v3    # "flexMillis":J
    .restart local v12    # "periodMillis":J
    .restart local v14    # "val":Ljava/lang/String;
    :cond_b
    move-wide/from16 v34, v3

    move-object/from16 v33, v8

    move-object/from16 v38, v10

    .line 1424
    .end local v3    # "flexMillis":J
    .end local v10    # "rtcRuntimes":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    .end local v12    # "periodMillis":J
    .end local v14    # "val":Ljava/lang/String;
    .restart local v38    # "rtcRuntimes":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    :goto_a
    move-object v3, v11

    goto :goto_d

    .line 1421
    .end local v22    # "uid":I
    .end local v29    # "eventType":I
    .end local v38    # "rtcRuntimes":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    .restart local v10    # "rtcRuntimes":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    .local v12, "eventType":I
    .restart local v13    # "uid":I
    :catch_5
    move-exception v0

    move-object/from16 v33, v8

    move-object/from16 v38, v10

    move/from16 v29, v12

    move/from16 v22, v13

    .end local v10    # "rtcRuntimes":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    .end local v12    # "eventType":I
    .end local v13    # "uid":I
    .restart local v22    # "uid":I
    .restart local v29    # "eventType":I
    .restart local v38    # "rtcRuntimes":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    :goto_b
    nop

    .line 1422
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string v3, "Error reading periodic execution criteria, skipping."

    invoke-static {v6, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1423
    return-object v33

    .line 1425
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .end local v22    # "uid":I
    .end local v29    # "eventType":I
    .end local v38    # "rtcRuntimes":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    .restart local v10    # "rtcRuntimes":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    .restart local v12    # "eventType":I
    .restart local v13    # "uid":I
    :cond_c
    move-object/from16 v33, v8

    move-object/from16 v38, v10

    move/from16 v29, v12

    move/from16 v22, v13

    .end local v10    # "rtcRuntimes":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    .end local v12    # "eventType":I
    .end local v13    # "uid":I
    .restart local v22    # "uid":I
    .restart local v29    # "eventType":I
    .restart local v38    # "rtcRuntimes":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    const-string/jumbo v0, "one-off"

    invoke-interface {v2}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 1427
    :try_start_9
    iget-object v0, v11, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3
    :try_end_9
    .catch Ljava/lang/NumberFormatException; {:try_start_9 .. :try_end_9} :catch_a

    cmp-long v0, v3, v19

    if-eqz v0, :cond_d

    .line 1428
    :try_start_a
    iget-object v0, v11, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    sub-long v3, v3, p4

    invoke-virtual {v9, v3, v4}, Landroid/app/job/JobInfo$Builder;->setMinimumLatency(J)Landroid/app/job/JobInfo$Builder;
    :try_end_a
    .catch Ljava/lang/NumberFormatException; {:try_start_a .. :try_end_a} :catch_6

    goto :goto_c

    .line 1434
    :catch_6
    move-exception v0

    move/from16 v13, v22

    goto/16 :goto_14

    .line 1430
    :cond_d
    :goto_c
    :try_start_b
    iget-object v0, v11, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3
    :try_end_b
    .catch Ljava/lang/NumberFormatException; {:try_start_b .. :try_end_b} :catch_a

    const-wide v12, 0x7fffffffffffffffL

    cmp-long v0, v3, v12

    if-eqz v0, :cond_e

    .line 1431
    :try_start_c
    iget-object v0, v11, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    .line 1432
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    sub-long v3, v3, p4

    .line 1431
    invoke-virtual {v9, v3, v4}, Landroid/app/job/JobInfo$Builder;->setOverrideDeadline(J)Landroid/app/job/JobInfo$Builder;
    :try_end_c
    .catch Ljava/lang/NumberFormatException; {:try_start_c .. :try_end_c} :catch_6

    .line 1437
    :cond_e
    move-object v3, v11

    .line 1445
    .end local v11    # "elapsedRuntimes":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    .local v3, "elapsedRuntimes":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    :goto_d
    invoke-direct {v1, v9, v2}, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->maybeBuildBackoffPolicyFromXml(Landroid/app/job/JobInfo$Builder;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1447
    invoke-interface {v2}, Lcom/android/modules/utils/TypedXmlPullParser;->nextTag()I

    move/from16 v12, v29

    .line 1451
    .end local v29    # "eventType":I
    .restart local v12    # "eventType":I
    :goto_e
    invoke-interface {v2}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v12

    .line 1452
    const/4 v0, 0x4

    if-eq v12, v0, :cond_17

    .line 1453
    const/4 v0, 0x2

    if-ne v12, v0, :cond_15

    .line 1454
    invoke-interface {v2}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v4, "extras"

    invoke-virtual {v4, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    move/from16 v13, v22

    goto/16 :goto_13

    .line 1463
    :cond_f
    :try_start_d
    invoke-static {v2}, Landroid/os/PersistableBundle;->restoreFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)Landroid/os/PersistableBundle;

    move-result-object v0

    move-object v4, v0

    .line 1464
    .local v4, "extras":Landroid/os/PersistableBundle;
    invoke-virtual {v9, v4}, Landroid/app/job/JobInfo$Builder;->setExtras(Landroid/os/PersistableBundle;)Landroid/app/job/JobInfo$Builder;
    :try_end_d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_d .. :try_end_d} :catch_9

    .line 1468
    nop

    .line 1469
    invoke-interface {v2}, Lcom/android/modules/utils/TypedXmlPullParser;->nextTag()I

    move-result v5

    .line 1471
    .end local v12    # "eventType":I
    .local v5, "eventType":I
    const/4 v0, 0x0

    .line 1472
    .local v0, "jobWorkItems":Ljava/util/List;, "Ljava/util/List<Landroid/app/job/JobWorkItem;>;"
    const/4 v8, 0x2

    nop

    if-ne v5, v8, :cond_10

    .line 1473
    invoke-interface {v2}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v10, "job-work-item"

    invoke-virtual {v10, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_10

    .line 1474
    invoke-direct {v1, v2}, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->readJobWorkItemsFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)Ljava/util/List;

    move-result-object v0

    move-object v8, v0

    goto :goto_f

    .line 1477
    :cond_10
    move-object v8, v0

    .end local v0    # "jobWorkItems":Ljava/util/List;, "Ljava/util/List<Landroid/app/job/JobWorkItem;>;"
    .local v8, "jobWorkItems":Ljava/util/List;, "Ljava/util/List<Landroid/app/job/JobWorkItem;>;"
    :goto_f
    const/4 v10, 0x2

    nop

    if-ne v5, v10, :cond_11

    .line 1478
    invoke-interface {v2}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v10, "debug-info"

    invoke-virtual {v10, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1480
    :try_start_e
    const-string/jumbo v0, "trace-tag"

    move-object/from16 v10, v33

    invoke-interface {v2, v10, v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/app/job/JobInfo$Builder;->setTraceTag(Ljava/lang/String;)Landroid/app/job/JobInfo$Builder;
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_7

    .line 1483
    goto :goto_10

    .line 1481
    :catch_7
    move-exception v0

    .line 1482
    .local v0, "e":Ljava/lang/Exception;
    const-string v10, "Invalid trace tag persisted to disk"

    invoke-static {v6, v10, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1484
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_10
    invoke-interface {v2}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    .line 1485
    invoke-direct {v1, v2}, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->readDebugTagsFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)Ljava/util/Set;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/app/job/JobInfo$Builder;->addDebugTags(Ljava/util/Set;)V

    .line 1486
    invoke-interface {v2}, Lcom/android/modules/utils/TypedXmlPullParser;->nextTag()I

    move-result v5

    .line 1500
    :cond_11
    const/4 v0, 0x0

    :try_start_f
    invoke-virtual {v9, v0, v0, v0, v0}, Landroid/app/job/JobInfo$Builder;->build(ZZZZ)Landroid/app/job/JobInfo;

    move-result-object v12
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_8

    .line 1504
    .local v12, "builtJob":Landroid/app/job/JobInfo;
    nop

    .line 1507
    const-string v10, "android"

    invoke-virtual {v10, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_12

    if-eqz v4, :cond_12

    .line 1509
    const-string v10, "SyncManagerJob"

    invoke-virtual {v4, v10, v0}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 1510
    const-string/jumbo v0, "owningPackage"

    invoke-virtual {v4, v0, v7}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1511
    invoke-static {}, Lcom/android/server/job/JobStore;->-$$Nest$sfgetDEBUG()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 1512
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Fixing up sync job source package name from \'android\' to \'"

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "\'"

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1518
    :cond_12
    move-wide/from16 v10, p4

    invoke-static {v7, v15, v10, v11}, Lcom/android/server/job/JobSchedulerService;->standbyBucketForPackage(Ljava/lang/String;IJ)I

    move-result v16

    .line 1520
    .local v16, "appBucket":I
    new-instance v11, Lcom/android/server/job/controllers/JobStatus;

    .line 1521
    invoke-static {v7}, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->intern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    iget-object v0, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    .line 1523
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v19

    iget-object v0, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v31

    .line 1525
    if-eqz p1, :cond_13

    const/16 v29, 0x0

    goto :goto_11

    :cond_13
    move-object/from16 v29, v38

    :goto_11
    move/from16 v13, v22

    move-wide/from16 v21, v31

    .end local v22    # "uid":I
    .restart local v13    # "uid":I
    const/16 v31, 0x0

    invoke-direct/range {v11 .. v31}, Lcom/android/server/job/controllers/JobStatus;-><init>(Landroid/app/job/JobInfo;ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;JJJJJLandroid/util/Pair;II)V

    .line 1526
    .local v11, "js":Lcom/android/server/job/controllers/JobStatus;
    if-eqz v8, :cond_14

    .line 1527
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_12
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v6

    if-ge v0, v6, :cond_14

    .line 1528
    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/job/JobWorkItem;

    invoke-virtual {v11, v6}, Lcom/android/server/job/controllers/JobStatus;->enqueueWorkLocked(Landroid/app/job/JobWorkItem;)V

    .line 1527
    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    .line 1531
    .end local v0    # "i":I
    :cond_14
    return-object v11

    .line 1501
    .end local v11    # "js":Lcom/android/server/job/controllers/JobStatus;
    .end local v12    # "builtJob":Landroid/app/job/JobInfo;
    .end local v13    # "uid":I
    .end local v16    # "appBucket":I
    .restart local v22    # "uid":I
    :catch_8
    move-exception v0

    move/from16 v13, v22

    .line 1502
    .end local v22    # "uid":I
    .local v0, "e":Ljava/lang/Exception;
    .restart local v13    # "uid":I
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unable to build job from XML, ignoring: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Landroid/app/job/JobInfo$Builder;->summarize()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v6, v10, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1503
    const/16 v33, 0x0

    return-object v33

    .line 1465
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v4    # "extras":Landroid/os/PersistableBundle;
    .end local v5    # "eventType":I
    .end local v8    # "jobWorkItems":Ljava/util/List;, "Ljava/util/List<Landroid/app/job/JobWorkItem;>;"
    .end local v13    # "uid":I
    .local v12, "eventType":I
    .restart local v22    # "uid":I
    :catch_9
    move-exception v0

    move/from16 v13, v22

    .line 1466
    .end local v22    # "uid":I
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    .restart local v13    # "uid":I
    const-string v4, "Persisted extras contained invalid data"

    invoke-static {v6, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1467
    return-object v33

    .line 1453
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    .end local v13    # "uid":I
    .restart local v22    # "uid":I
    :cond_15
    move/from16 v13, v22

    .line 1455
    .end local v22    # "uid":I
    .restart local v13    # "uid":I
    :goto_13
    invoke-static {}, Lcom/android/server/job/JobStore;->-$$Nest$sfgetDEBUG()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 1456
    const-string v0, "Error reading extras, skipping."

    invoke-static {v6, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1458
    :cond_16
    const/16 v33, 0x0

    return-object v33

    .line 1452
    .end local v13    # "uid":I
    .restart local v22    # "uid":I
    :cond_17
    move/from16 v13, v22

    const/4 v10, 0x2

    .end local v22    # "uid":I
    .restart local v13    # "uid":I
    const/16 v33, 0x0

    goto/16 :goto_e

    .line 1434
    .end local v3    # "elapsedRuntimes":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    .end local v12    # "eventType":I
    .end local v13    # "uid":I
    .local v11, "elapsedRuntimes":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    .restart local v22    # "uid":I
    .restart local v29    # "eventType":I
    :catch_a
    move-exception v0

    move/from16 v13, v22

    .end local v22    # "uid":I
    .restart local v13    # "uid":I
    :goto_14
    nop

    .line 1435
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string v3, "Error reading job execution criteria, skipping."

    invoke-static {v6, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1436
    const/16 v33, 0x0

    return-object v33

    .line 1439
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .end local v13    # "uid":I
    .restart local v22    # "uid":I
    :cond_18
    move/from16 v13, v22

    .end local v22    # "uid":I
    .restart local v13    # "uid":I
    invoke-static {}, Lcom/android/server/job/JobStore;->-$$Nest$sfgetDEBUG()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 1440
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid parameter tag, skipping - "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1443
    :cond_19
    const/16 v33, 0x0

    return-object v33

    .line 1381
    .end local v11    # "elapsedRuntimes":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    .end local v29    # "eventType":I
    .end local v38    # "rtcRuntimes":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    .restart local v12    # "eventType":I
    :cond_1a
    move-object/from16 v33, v8

    move/from16 v29, v12

    move v10, v14

    .end local v12    # "eventType":I
    .restart local v29    # "eventType":I
    move/from16 v3, p3

    move-wide/from16 v4, p4

    goto/16 :goto_7

    .line 1371
    .end local v29    # "eventType":I
    .restart local v12    # "eventType":I
    :catch_b
    move-exception v0

    move-object/from16 v33, v8

    .line 1372
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v3, "Constraints contained invalid data"

    invoke-static {v6, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1373
    return-object v33

    .line 1368
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_c
    move-exception v0

    move-object/from16 v33, v8

    .line 1369
    .local v0, "e":Ljava/io/IOException;
    const-string v3, "Error I/O Exception."

    invoke-static {v6, v3, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1370
    return-object v33

    .line 1365
    .end local v0    # "e":Ljava/io/IOException;
    :catch_d
    move-exception v0

    move-object/from16 v33, v8

    .line 1366
    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    const-string v3, "Error Parser Exception."

    invoke-static {v6, v3, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1367
    return-object v33

    .line 1362
    .end local v0    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catch_e
    move-exception v0

    move-object/from16 v33, v8

    .line 1363
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string v3, "Error reading constraints, skipping."

    invoke-static {v6, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1364
    return-object v33

    .line 1355
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :cond_1b
    move-object/from16 v33, v8

    .line 1358
    :goto_15
    return-object v33

    .line 1353
    :cond_1c
    move-wide/from16 v19, v10

    move/from16 v3, p3

    move-wide/from16 v4, p4

    const/4 v8, 0x0

    goto/16 :goto_6

    .line 1340
    .end local v7    # "sourcePackageName":Ljava/lang/String;
    .end local v9    # "jobBuilder":Landroid/app/job/JobInfo$Builder;
    .end local v12    # "eventType":I
    .end local v13    # "uid":I
    .end local v15    # "sourceUserId":I
    .end local v17    # "namespace":Ljava/lang/String;
    .end local v18    # "sourceTag":Ljava/lang/String;
    .end local v23    # "lastSuccessfulRunTime":J
    .end local v25    # "lastFailedRunTime":J
    .end local v27    # "cumulativeExecutionTime":J
    :catch_f
    move-exception v0

    move/from16 v7, v30

    .end local v30    # "internalFlags":I
    .local v7, "internalFlags":I
    :goto_16
    nop

    .line 1341
    .restart local v0    # "e":Ljava/lang/NumberFormatException;
    const-string v3, "Error parsing job\'s required fields, skipping"

    invoke-static {v6, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1342
    const/16 v33, 0x0

    return-object v33
.end method


# virtual methods
.method public run()V
    .locals 23

    .line 1117
    move-object/from16 v1, p0

    iget-object v0, v1, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->this$0:Lcom/android/server/job/JobStore;

    invoke-static {v0}, Lcom/android/server/job/JobStore;->-$$Nest$fgetmJobFileDirectory(Lcom/android/server/job/JobStore;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1118
    const-string v0, "JobStore"

    const-string/jumbo v2, "jobs directory isn\'t a directory O.O"

    invoke-static {v0, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1119
    iget-object v0, v1, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->this$0:Lcom/android/server/job/JobStore;

    invoke-static {v0}, Lcom/android/server/job/JobStore;->-$$Nest$fgetmJobFileDirectory(Lcom/android/server/job/JobStore;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 1120
    return-void

    .line 1123
    :cond_0
    const/4 v2, 0x0

    .line 1124
    .local v2, "numJobs":I
    const/4 v3, 0x0

    .line 1125
    .local v3, "numSystemJobs":I
    const/4 v4, 0x0

    .line 1129
    .local v4, "numSyncJobs":I
    :try_start_0
    iget-object v0, v1, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->this$0:Lcom/android/server/job/JobStore;

    invoke-static {v0}, Lcom/android/server/job/JobStore;->-$$Nest$fgetmJobFileDirectory(Lcom/android/server/job/JobStore;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_9

    move-object v5, v0

    .line 1133
    .local v5, "files":[Ljava/io/File;
    nop

    .line 1134
    if-nez v5, :cond_1

    .line 1135
    const-string v0, "JobStore"

    const-string v6, "Couldn\'t get job file list"

    invoke-static {v0, v6}, Landroid/util/Slog;->wtfStack(Ljava/lang/String;Ljava/lang/String;)I

    .line 1136
    return-void

    .line 1138
    :cond_1
    const/4 v6, 0x0

    .line 1139
    .local v6, "needFileMigration":Z
    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v7

    .line 1140
    .local v7, "nowElapsed":J
    const/4 v9, 0x0

    .line 1141
    .local v9, "numDuplicates":I
    iget-object v0, v1, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->this$0:Lcom/android/server/job/JobStore;

    iget-object v10, v0, Lcom/android/server/job/JobStore;->mLock:Ljava/lang/Object;

    monitor-enter v10

    .line 1142
    :try_start_1
    array-length v11, v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_c

    const/4 v0, 0x0

    move v12, v9

    move v9, v6

    move v6, v4

    move v4, v3

    move v3, v2

    move v2, v0

    .end local v2    # "numJobs":I
    .local v3, "numJobs":I
    .local v4, "numSystemJobs":I
    .local v6, "numSyncJobs":I
    .local v9, "needFileMigration":Z
    .local v12, "numDuplicates":I
    :goto_0
    if-ge v2, v11, :cond_c

    :try_start_2
    aget-object v0, v5, v2

    move-object v13, v0

    .line 1143
    .local v13, "file":Ljava/io/File;
    invoke-virtual {v13}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v14, "jobs.xml"

    invoke-virtual {v0, v14}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_a

    if-nez v0, :cond_2

    :try_start_3
    invoke-static {}, Lcom/android/server/job/JobStore;->-$$Nest$sfgetSPLIT_FILE_PATTERN()Ljava/util/regex/Pattern;

    move-result-object v0

    .line 1144
    invoke-virtual {v13}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v0, v14}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez v0, :cond_2

    .line 1146
    move/from16 v16, v2

    move-object/from16 v21, v5

    goto/16 :goto_b

    .line 1206
    .end local v13    # "file":Ljava/io/File;
    :catchall_0
    move-exception v0

    move v2, v3

    move v3, v4

    move-object/from16 v21, v5

    move v4, v6

    move v6, v9

    move v9, v12

    goto/16 :goto_d

    .line 1148
    .restart local v13    # "file":Ljava/io/File;
    :cond_2
    :try_start_4
    iget-object v0, v1, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->this$0:Lcom/android/server/job/JobStore;

    invoke-static {v0, v13}, Lcom/android/server/job/JobStore;->-$$Nest$mcreateJobFile(Lcom/android/server/job/JobStore;Ljava/io/File;)Landroid/util/AtomicFile;

    move-result-object v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_a

    move-object v14, v0

    .line 1149
    .local v14, "aFile":Landroid/util/AtomicFile;
    :try_start_5
    invoke-virtual {v14}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v0
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_8
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_7
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_7
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_6
    .catchall {:try_start_5 .. :try_end_5} :catchall_a

    move-object v15, v0

    .line 1150
    .local v15, "fis":Ljava/io/FileInputStream;
    :try_start_6
    iget-boolean v0, v1, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->rtcGood:Z

    invoke-direct {v1, v15, v0, v7, v8}, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->readJobMapImpl(Ljava/io/InputStream;ZJ)Ljava/util/List;

    move-result-object v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_7

    .line 1151
    .local v0, "jobs":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/job/controllers/JobStatus;>;"
    if-eqz v0, :cond_7

    .line 1152
    const/16 v16, 0x0

    move/from16 v22, v16

    move/from16 v16, v2

    move/from16 v2, v22

    .local v2, "i":I
    :goto_1
    move/from16 v17, v3

    .end local v3    # "numJobs":I
    .local v17, "numJobs":I
    :try_start_7
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_6

    .line 1153
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/job/controllers/JobStatus;

    .line 1154
    .local v3, "js":Lcom/android/server/job/controllers/JobStatus;
    move-object/from16 v18, v0

    .end local v0    # "jobs":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/job/controllers/JobStatus;>;"
    .local v18, "jobs":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/job/controllers/JobStatus;>;"
    iget-object v0, v1, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->jobSet:Lcom/android/server/job/JobStore$JobSet;

    .line 1155
    move/from16 v19, v2

    .end local v2    # "i":I
    .local v19, "i":I
    invoke-virtual {v3}, Lcom/android/server/job/controllers/JobStatus;->getUid()I

    move-result v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    move/from16 v20, v4

    .end local v4    # "numSystemJobs":I
    .local v20, "numSystemJobs":I
    :try_start_8
    invoke-virtual {v3}, Lcom/android/server/job/controllers/JobStatus;->getNamespace()Ljava/lang/String;

    move-result-object v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    move-object/from16 v21, v5

    .end local v5    # "files":[Ljava/io/File;
    .local v21, "files":[Ljava/io/File;
    :try_start_9
    invoke-virtual {v3}, Lcom/android/server/job/controllers/JobStatus;->getJobId()I

    move-result v5

    .line 1154
    invoke-virtual {v0, v2, v4, v5}, Lcom/android/server/job/JobStore$JobSet;->get(ILjava/lang/String;I)Lcom/android/server/job/controllers/JobStatus;

    move-result-object v0

    .line 1156
    .local v0, "existingJob":Lcom/android/server/job/controllers/JobStatus;
    if-eqz v0, :cond_3

    .line 1157
    add-int/lit8 v12, v12, 0x1

    .line 1162
    move/from16 v3, v17

    move/from16 v4, v20

    goto :goto_2

    .line 1164
    :cond_3
    invoke-virtual {v3}, Lcom/android/server/job/controllers/JobStatus;->prepareLocked()V

    .line 1165
    iput-wide v7, v3, Lcom/android/server/job/controllers/JobStatus;->enqueueTime:J

    .line 1166
    iget-object v2, v1, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->jobSet:Lcom/android/server/job/JobStore$JobSet;

    invoke-virtual {v2, v3}, Lcom/android/server/job/JobStore$JobSet;->add(Lcom/android/server/job/controllers/JobStatus;)Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 1168
    add-int/lit8 v2, v17, 0x1

    .line 1169
    .end local v17    # "numJobs":I
    .local v2, "numJobs":I
    :try_start_a
    invoke-virtual {v3}, Lcom/android/server/job/controllers/JobStatus;->getUid()I

    move-result v4
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    const/16 v5, 0x3e8

    if-ne v4, v5, :cond_5

    .line 1170
    add-int/lit8 v4, v20, 0x1

    .line 1171
    .end local v20    # "numSystemJobs":I
    .restart local v4    # "numSystemJobs":I
    :try_start_b
    invoke-static {v3}, Lcom/android/server/job/JobStore;->-$$Nest$smisSyncJob(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v5
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    if-eqz v5, :cond_4

    .line 1172
    add-int/lit8 v6, v6, 0x1

    move v3, v2

    goto :goto_2

    .line 1171
    :cond_4
    move v3, v2

    goto :goto_2

    .line 1149
    .end local v0    # "existingJob":Lcom/android/server/job/controllers/JobStatus;
    .end local v3    # "js":Lcom/android/server/job/controllers/JobStatus;
    .end local v18    # "jobs":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/job/controllers/JobStatus;>;"
    .end local v19    # "i":I
    :catchall_1
    move-exception v0

    move/from16 v17, v2

    move v3, v4

    move v4, v6

    move-object v2, v0

    goto/16 :goto_5

    .line 1169
    .end local v4    # "numSystemJobs":I
    .restart local v0    # "existingJob":Lcom/android/server/job/controllers/JobStatus;
    .restart local v3    # "js":Lcom/android/server/job/controllers/JobStatus;
    .restart local v18    # "jobs":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/job/controllers/JobStatus;>;"
    .restart local v19    # "i":I
    .restart local v20    # "numSystemJobs":I
    :cond_5
    move v3, v2

    move/from16 v4, v20

    .line 1152
    .end local v0    # "existingJob":Lcom/android/server/job/controllers/JobStatus;
    .end local v2    # "numJobs":I
    .end local v20    # "numSystemJobs":I
    .local v3, "numJobs":I
    .restart local v4    # "numSystemJobs":I
    :goto_2
    add-int/lit8 v2, v19, 0x1

    move-object/from16 v0, v18

    move-object/from16 v5, v21

    .end local v19    # "i":I
    .local v2, "i":I
    goto :goto_1

    .line 1149
    .end local v3    # "numJobs":I
    .end local v4    # "numSystemJobs":I
    .end local v18    # "jobs":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/job/controllers/JobStatus;>;"
    .local v2, "numJobs":I
    .restart local v20    # "numSystemJobs":I
    :catchall_2
    move-exception v0

    move/from16 v17, v2

    move v4, v6

    move/from16 v3, v20

    move-object v2, v0

    goto/16 :goto_5

    .end local v2    # "numJobs":I
    .restart local v17    # "numJobs":I
    :catchall_3
    move-exception v0

    move-object v2, v0

    move v4, v6

    move/from16 v3, v20

    goto/16 :goto_5

    .end local v21    # "files":[Ljava/io/File;
    .restart local v5    # "files":[Ljava/io/File;
    :catchall_4
    move-exception v0

    move-object/from16 v21, v5

    move-object v2, v0

    move v4, v6

    move/from16 v3, v20

    .end local v5    # "files":[Ljava/io/File;
    .restart local v21    # "files":[Ljava/io/File;
    goto :goto_5

    .end local v20    # "numSystemJobs":I
    .end local v21    # "files":[Ljava/io/File;
    .restart local v4    # "numSystemJobs":I
    .restart local v5    # "files":[Ljava/io/File;
    :catchall_5
    move-exception v0

    move/from16 v20, v4

    move-object/from16 v21, v5

    move-object v2, v0

    move v4, v6

    move/from16 v3, v20

    .end local v4    # "numSystemJobs":I
    .end local v5    # "files":[Ljava/io/File;
    .restart local v20    # "numSystemJobs":I
    .restart local v21    # "files":[Ljava/io/File;
    goto :goto_5

    .line 1152
    .end local v20    # "numSystemJobs":I
    .end local v21    # "files":[Ljava/io/File;
    .local v0, "jobs":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/job/controllers/JobStatus;>;"
    .local v2, "i":I
    .restart local v4    # "numSystemJobs":I
    .restart local v5    # "files":[Ljava/io/File;
    :cond_6
    move-object/from16 v18, v0

    move/from16 v19, v2

    move/from16 v20, v4

    move-object/from16 v21, v5

    .end local v0    # "jobs":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/job/controllers/JobStatus;>;"
    .end local v2    # "i":I
    .end local v4    # "numSystemJobs":I
    .end local v5    # "files":[Ljava/io/File;
    .restart local v18    # "jobs":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/job/controllers/JobStatus;>;"
    .restart local v19    # "i":I
    .restart local v20    # "numSystemJobs":I
    .restart local v21    # "files":[Ljava/io/File;
    move/from16 v2, v17

    move/from16 v3, v20

    move v4, v6

    goto :goto_3

    .line 1151
    .end local v17    # "numJobs":I
    .end local v18    # "jobs":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/job/controllers/JobStatus;>;"
    .end local v19    # "i":I
    .end local v20    # "numSystemJobs":I
    .end local v21    # "files":[Ljava/io/File;
    .restart local v0    # "jobs":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/job/controllers/JobStatus;>;"
    .restart local v3    # "numJobs":I
    .restart local v4    # "numSystemJobs":I
    .restart local v5    # "files":[Ljava/io/File;
    :cond_7
    move-object/from16 v18, v0

    move/from16 v16, v2

    move-object/from16 v21, v5

    .end local v0    # "jobs":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/job/controllers/JobStatus;>;"
    .end local v5    # "files":[Ljava/io/File;
    .restart local v18    # "jobs":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/job/controllers/JobStatus;>;"
    .restart local v21    # "files":[Ljava/io/File;
    move v2, v3

    move v3, v4

    move v4, v6

    .line 1177
    .end local v6    # "numSyncJobs":I
    .local v2, "numJobs":I
    .local v3, "numSystemJobs":I
    .local v4, "numSyncJobs":I
    :goto_3
    if-eqz v15, :cond_8

    :try_start_c
    invoke-virtual {v15}, Ljava/io/FileInputStream;->close()V
    :try_end_c
    .catch Ljava/io/FileNotFoundException; {:try_start_c .. :try_end_c} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_c .. :try_end_c} :catch_1
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_1
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_0
    .catchall {:try_start_c .. :try_end_c} :catchall_6

    goto :goto_4

    .line 1206
    .end local v13    # "file":Ljava/io/File;
    .end local v14    # "aFile":Landroid/util/AtomicFile;
    .end local v15    # "fis":Ljava/io/FileInputStream;
    .end local v18    # "jobs":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/job/controllers/JobStatus;>;"
    :catchall_6
    move-exception v0

    move v6, v9

    move v9, v12

    goto/16 :goto_d

    .line 1182
    .restart local v13    # "file":Ljava/io/File;
    .restart local v14    # "aFile":Landroid/util/AtomicFile;
    :catch_0
    move-exception v0

    goto :goto_7

    .line 1180
    :catch_1
    move-exception v0

    goto/16 :goto_8

    .line 1177
    :catch_2
    move-exception v0

    goto/16 :goto_9

    .line 1186
    .restart local v18    # "jobs":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/job/controllers/JobStatus;>;"
    :cond_8
    :goto_4
    goto/16 :goto_a

    .line 1149
    .end local v2    # "numJobs":I
    .end local v18    # "jobs":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/job/controllers/JobStatus;>;"
    .end local v21    # "files":[Ljava/io/File;
    .local v3, "numJobs":I
    .local v4, "numSystemJobs":I
    .restart local v5    # "files":[Ljava/io/File;
    .restart local v6    # "numSyncJobs":I
    .restart local v15    # "fis":Ljava/io/FileInputStream;
    :catchall_7
    move-exception v0

    move/from16 v16, v2

    move-object/from16 v21, v5

    move-object v2, v0

    move/from16 v17, v3

    move v3, v4

    move v4, v6

    .end local v5    # "files":[Ljava/io/File;
    .end local v6    # "numSyncJobs":I
    .local v3, "numSystemJobs":I
    .local v4, "numSyncJobs":I
    .restart local v17    # "numJobs":I
    .restart local v21    # "files":[Ljava/io/File;
    :goto_5
    if-eqz v15, :cond_9

    :try_start_d
    invoke-virtual {v15}, Ljava/io/FileInputStream;->close()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_8

    goto :goto_6

    :catchall_8
    move-exception v0

    :try_start_e
    invoke-virtual {v2, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_6

    .line 1206
    .end local v13    # "file":Ljava/io/File;
    .end local v14    # "aFile":Landroid/util/AtomicFile;
    .end local v15    # "fis":Ljava/io/FileInputStream;
    :catchall_9
    move-exception v0

    move v6, v9

    move v9, v12

    move/from16 v2, v17

    goto/16 :goto_d

    .line 1182
    .restart local v13    # "file":Ljava/io/File;
    .restart local v14    # "aFile":Landroid/util/AtomicFile;
    :catch_3
    move-exception v0

    move/from16 v2, v17

    goto :goto_7

    .line 1180
    :catch_4
    move-exception v0

    move/from16 v2, v17

    goto :goto_8

    .line 1177
    :catch_5
    move-exception v0

    move/from16 v2, v17

    goto :goto_9

    .line 1149
    .restart local v15    # "fis":Ljava/io/FileInputStream;
    :cond_9
    :goto_6
    nop

    .end local v3    # "numSystemJobs":I
    .end local v4    # "numSyncJobs":I
    .end local v7    # "nowElapsed":J
    .end local v9    # "needFileMigration":Z
    .end local v12    # "numDuplicates":I
    .end local v13    # "file":Ljava/io/File;
    .end local v14    # "aFile":Landroid/util/AtomicFile;
    .end local v17    # "numJobs":I
    .end local v21    # "files":[Ljava/io/File;
    .end local p0    # "this":Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;
    throw v2
    :try_end_e
    .catch Ljava/io/FileNotFoundException; {:try_start_e .. :try_end_e} :catch_5
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_e .. :try_end_e} :catch_4
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_4
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_3
    .catchall {:try_start_e .. :try_end_e} :catchall_9

    .line 1206
    .end local v15    # "fis":Ljava/io/FileInputStream;
    .local v3, "numJobs":I
    .local v4, "numSystemJobs":I
    .restart local v5    # "files":[Ljava/io/File;
    .restart local v6    # "numSyncJobs":I
    .restart local v7    # "nowElapsed":J
    .restart local v9    # "needFileMigration":Z
    .restart local v12    # "numDuplicates":I
    .restart local p0    # "this":Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;
    :catchall_a
    move-exception v0

    move-object/from16 v21, v5

    move v2, v3

    move v3, v4

    move v4, v6

    move v6, v9

    move v9, v12

    .end local v5    # "files":[Ljava/io/File;
    .restart local v21    # "files":[Ljava/io/File;
    goto/16 :goto_d

    .line 1182
    .end local v21    # "files":[Ljava/io/File;
    .restart local v5    # "files":[Ljava/io/File;
    .restart local v13    # "file":Ljava/io/File;
    .restart local v14    # "aFile":Landroid/util/AtomicFile;
    :catch_6
    move-exception v0

    move/from16 v16, v2

    move-object/from16 v21, v5

    move v2, v3

    move v3, v4

    move v4, v6

    .end local v5    # "files":[Ljava/io/File;
    .end local v6    # "numSyncJobs":I
    .restart local v2    # "numJobs":I
    .local v3, "numSystemJobs":I
    .local v4, "numSyncJobs":I
    .restart local v21    # "files":[Ljava/io/File;
    :goto_7
    nop

    .line 1185
    .local v0, "e":Ljava/lang/Exception;
    :try_start_f
    const-string v5, "JobStore"

    const-string v6, "Unexpected exception"

    invoke-static {v5, v6, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_a

    .line 1180
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v2    # "numJobs":I
    .end local v21    # "files":[Ljava/io/File;
    .local v3, "numJobs":I
    .local v4, "numSystemJobs":I
    .restart local v5    # "files":[Ljava/io/File;
    .restart local v6    # "numSyncJobs":I
    :catch_7
    move-exception v0

    move/from16 v16, v2

    move-object/from16 v21, v5

    move v2, v3

    move v3, v4

    move v4, v6

    .end local v5    # "files":[Ljava/io/File;
    .end local v6    # "numSyncJobs":I
    .restart local v2    # "numJobs":I
    .local v3, "numSystemJobs":I
    .local v4, "numSyncJobs":I
    .restart local v21    # "files":[Ljava/io/File;
    :goto_8
    nop

    .line 1181
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v5, "JobStore"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Error in "

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1186
    nop

    .end local v0    # "e":Ljava/lang/Exception;
    goto :goto_a

    .line 1177
    .end local v2    # "numJobs":I
    .end local v21    # "files":[Ljava/io/File;
    .local v3, "numJobs":I
    .local v4, "numSystemJobs":I
    .restart local v5    # "files":[Ljava/io/File;
    .restart local v6    # "numSyncJobs":I
    :catch_8
    move-exception v0

    move/from16 v16, v2

    move-object/from16 v21, v5

    move v2, v3

    move v3, v4

    move v4, v6

    .end local v5    # "files":[Ljava/io/File;
    .end local v6    # "numSyncJobs":I
    .restart local v2    # "numJobs":I
    .local v3, "numSystemJobs":I
    .local v4, "numSyncJobs":I
    .restart local v21    # "files":[Ljava/io/File;
    :goto_9
    nop

    .line 1179
    .local v0, "e":Ljava/io/FileNotFoundException;
    const-string v5, "JobStore"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Could not find jobs file: "

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1186
    nop

    .line 1187
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :goto_a
    iget-object v0, v1, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->this$0:Lcom/android/server/job/JobStore;

    invoke-static {v0}, Lcom/android/server/job/JobStore;->-$$Nest$fgetmUseSplitFiles(Lcom/android/server/job/JobStore;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1188
    invoke-virtual {v13}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v5, "jobs_"

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 1192
    const/4 v0, 0x1

    move v9, v0

    move v6, v4

    move v4, v3

    move v3, v2

    .end local v9    # "needFileMigration":Z
    .local v0, "needFileMigration":Z
    goto :goto_b

    .line 1194
    .end local v0    # "needFileMigration":Z
    .restart local v9    # "needFileMigration":Z
    :cond_a
    invoke-virtual {v13}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v5, "jobs_"

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_6

    if-eqz v0, :cond_b

    .line 1198
    const/4 v0, 0x1

    move v9, v0

    move v6, v4

    move v4, v3

    move v3, v2

    .end local v9    # "needFileMigration":Z
    .restart local v0    # "needFileMigration":Z
    goto :goto_b

    .line 1142
    .end local v0    # "needFileMigration":Z
    .end local v13    # "file":Ljava/io/File;
    .end local v14    # "aFile":Landroid/util/AtomicFile;
    .restart local v9    # "needFileMigration":Z
    :cond_b
    move v6, v4

    move v4, v3

    move v3, v2

    .end local v2    # "numJobs":I
    .local v3, "numJobs":I
    .local v4, "numSystemJobs":I
    .restart local v6    # "numSyncJobs":I
    :goto_b
    add-int/lit8 v2, v16, 0x1

    move-object/from16 v5, v21

    goto/16 :goto_0

    .line 1201
    .end local v21    # "files":[Ljava/io/File;
    .restart local v5    # "files":[Ljava/io/File;
    :cond_c
    move-object/from16 v21, v5

    .end local v5    # "files":[Ljava/io/File;
    .restart local v21    # "files":[Ljava/io/File;
    :try_start_10
    iget-object v0, v1, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->this$0:Lcom/android/server/job/JobStore;

    invoke-static {v0}, Lcom/android/server/job/JobStore;->-$$Nest$fgetmPersistInfo(Lcom/android/server/job/JobStore;)Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;

    move-result-object v0

    iget v0, v0, Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;->countAllJobsLoaded:I

    if-gez v0, :cond_d

    .line 1202
    iget-object v0, v1, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->this$0:Lcom/android/server/job/JobStore;

    invoke-static {v0}, Lcom/android/server/job/JobStore;->-$$Nest$fgetmPersistInfo(Lcom/android/server/job/JobStore;)Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;

    move-result-object v0

    iput v3, v0, Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;->countAllJobsLoaded:I

    .line 1203
    iget-object v0, v1, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->this$0:Lcom/android/server/job/JobStore;

    invoke-static {v0}, Lcom/android/server/job/JobStore;->-$$Nest$fgetmPersistInfo(Lcom/android/server/job/JobStore;)Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;

    move-result-object v0

    iput v4, v0, Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;->countSystemServerJobsLoaded:I

    .line 1204
    iget-object v0, v1, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->this$0:Lcom/android/server/job/JobStore;

    invoke-static {v0}, Lcom/android/server/job/JobStore;->-$$Nest$fgetmPersistInfo(Lcom/android/server/job/JobStore;)Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;

    move-result-object v0

    iput v6, v0, Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;->countSystemSyncManagerJobsLoaded:I

    goto :goto_c

    .line 1206
    :catchall_b
    move-exception v0

    move v2, v3

    move v3, v4

    move v4, v6

    move v6, v9

    move v9, v12

    goto :goto_d

    :cond_d
    :goto_c
    monitor-exit v10
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_b

    .line 1207
    const-string v0, "JobStore"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Read "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " jobs"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1208
    if-eqz v9, :cond_e

    .line 1209
    iget-object v0, v1, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->this$0:Lcom/android/server/job/JobStore;

    invoke-static {v0}, Lcom/android/server/job/JobStore;->-$$Nest$mmigrateJobFilesAsync(Lcom/android/server/job/JobStore;)V

    .line 1212
    :cond_e
    if-lez v12, :cond_f

    .line 1213
    const-string v0, "JobStore"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Encountered "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " duplicate persisted jobs"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1217
    :cond_f
    iget-object v0, v1, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->this$0:Lcom/android/server/job/JobStore;

    invoke-static {v0, v3}, Lcom/android/server/job/JobStore;->-$$Nest$fputmCurrentJobSetSize(Lcom/android/server/job/JobStore;I)V

    .line 1218
    iget-object v0, v1, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->this$0:Lcom/android/server/job/JobStore;

    iget-object v2, v1, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->this$0:Lcom/android/server/job/JobStore;

    invoke-static {v2}, Lcom/android/server/job/JobStore;->-$$Nest$fgetmCurrentJobSetSize(Lcom/android/server/job/JobStore;)I

    move-result v2

    invoke-static {v0, v2}, Lcom/android/server/job/JobStore;->-$$Nest$fputmScheduledJob30MinHighWaterMark(Lcom/android/server/job/JobStore;I)V

    .line 1219
    iget-object v0, v1, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->this$0:Lcom/android/server/job/JobStore;

    invoke-static {v0}, Lcom/android/server/job/JobStore;->-$$Nest$fgetmScheduledJobHighWaterMarkLoggingRunnable(Lcom/android/server/job/JobStore;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 1221
    iget-object v0, v1, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->mCompletionLatch:Ljava/util/concurrent/CountDownLatch;

    if-eqz v0, :cond_10

    .line 1222
    iget-object v0, v1, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->mCompletionLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 1224
    :cond_10
    return-void

    .line 1206
    .end local v12    # "numDuplicates":I
    .end local v21    # "files":[Ljava/io/File;
    .restart local v2    # "numJobs":I
    .local v3, "numSystemJobs":I
    .local v4, "numSyncJobs":I
    .restart local v5    # "files":[Ljava/io/File;
    .local v6, "needFileMigration":Z
    .local v9, "numDuplicates":I
    :catchall_c
    move-exception v0

    move-object/from16 v21, v5

    .end local v5    # "files":[Ljava/io/File;
    .restart local v21    # "files":[Ljava/io/File;
    :goto_d
    :try_start_11
    monitor-exit v10
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_d

    throw v0

    :catchall_d
    move-exception v0

    goto :goto_d

    .line 1130
    .end local v6    # "needFileMigration":Z
    .end local v7    # "nowElapsed":J
    .end local v9    # "numDuplicates":I
    .end local v21    # "files":[Ljava/io/File;
    :catch_9
    move-exception v0

    .line 1131
    .local v0, "e":Ljava/lang/SecurityException;
    const-string v5, "JobStore"

    const-string v6, "Not allowed to read job file directory"

    invoke-static {v5, v6, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1132
    return-void
.end method
