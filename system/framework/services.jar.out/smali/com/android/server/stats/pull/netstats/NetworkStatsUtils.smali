.class public Lcom/android/server/stats/pull/netstats/NetworkStatsUtils;
.super Ljava/lang/Object;
.source "NetworkStatsUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static convertBucketDefaultNetworkStatus(I)I
    .locals 1
    .param p0, "defaultNetworkStatus"    # I

    .line 111
    const/4 v0, 0x0

    packed-switch p0, :pswitch_data_0

    .line 119
    :pswitch_0
    return v0

    .line 117
    :pswitch_1
    const/4 v0, 0x1

    return v0

    .line 115
    :pswitch_2
    return v0

    .line 113
    :pswitch_3
    const/4 v0, -0x1

    return v0

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private static convertBucketMetered(I)I
    .locals 1
    .param p0, "metered"    # I

    .line 93
    const/4 v0, 0x0

    packed-switch p0, :pswitch_data_0

    .line 98
    :pswitch_0
    return v0

    .line 96
    :pswitch_1
    const/4 v0, 0x1

    return v0

    .line 95
    :pswitch_2
    return v0

    .line 94
    :pswitch_3
    const/4 v0, -0x1

    return v0

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private static convertBucketRoaming(I)I
    .locals 1
    .param p0, "roaming"    # I

    .line 102
    const/4 v0, 0x0

    packed-switch p0, :pswitch_data_0

    .line 107
    :pswitch_0
    return v0

    .line 105
    :pswitch_1
    const/4 v0, 0x1

    return v0

    .line 104
    :pswitch_2
    return v0

    .line 103
    :pswitch_3
    const/4 v0, -0x1

    return v0

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private static convertBucketState(I)I
    .locals 1
    .param p0, "networkStatsSet"    # I

    .line 76
    const/4 v0, 0x0

    packed-switch p0, :pswitch_data_0

    .line 82
    :pswitch_0
    return v0

    .line 80
    :pswitch_1
    const/4 v0, 0x1

    return v0

    .line 78
    :pswitch_2
    return v0

    .line 77
    :pswitch_3
    const/4 v0, -0x1

    return v0

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private static convertBucketTag(I)I
    .locals 1
    .param p0, "tag"    # I

    .line 86
    packed-switch p0, :pswitch_data_0

    .line 89
    return p0

    .line 87
    :pswitch_0
    const/4 v0, 0x0

    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public static fromBucket(Landroid/app/usage/NetworkStats$Bucket;)Landroid/net/NetworkStats$Entry;
    .locals 18
    .param p0, "bucket"    # Landroid/app/usage/NetworkStats$Bucket;

    .line 66
    new-instance v0, Landroid/net/NetworkStats$Entry;

    .line 67
    invoke-virtual/range {p0 .. p0}, Landroid/app/usage/NetworkStats$Bucket;->getUid()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Landroid/app/usage/NetworkStats$Bucket;->getState()I

    move-result v1

    invoke-static {v1}, Lcom/android/server/stats/pull/netstats/NetworkStatsUtils;->convertBucketState(I)I

    move-result v3

    .line 68
    invoke-virtual/range {p0 .. p0}, Landroid/app/usage/NetworkStats$Bucket;->getTag()I

    move-result v1

    invoke-static {v1}, Lcom/android/server/stats/pull/netstats/NetworkStatsUtils;->convertBucketTag(I)I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Landroid/app/usage/NetworkStats$Bucket;->getMetered()I

    move-result v1

    invoke-static {v1}, Lcom/android/server/stats/pull/netstats/NetworkStatsUtils;->convertBucketMetered(I)I

    move-result v5

    .line 69
    invoke-virtual/range {p0 .. p0}, Landroid/app/usage/NetworkStats$Bucket;->getRoaming()I

    move-result v1

    invoke-static {v1}, Lcom/android/server/stats/pull/netstats/NetworkStatsUtils;->convertBucketRoaming(I)I

    move-result v6

    .line 70
    invoke-virtual/range {p0 .. p0}, Landroid/app/usage/NetworkStats$Bucket;->getDefaultNetworkStatus()I

    move-result v1

    invoke-static {v1}, Lcom/android/server/stats/pull/netstats/NetworkStatsUtils;->convertBucketDefaultNetworkStatus(I)I

    move-result v7

    .line 71
    invoke-virtual/range {p0 .. p0}, Landroid/app/usage/NetworkStats$Bucket;->getRxBytes()J

    move-result-wide v8

    invoke-virtual/range {p0 .. p0}, Landroid/app/usage/NetworkStats$Bucket;->getRxPackets()J

    move-result-wide v10

    .line 72
    invoke-virtual/range {p0 .. p0}, Landroid/app/usage/NetworkStats$Bucket;->getTxBytes()J

    move-result-wide v12

    invoke-virtual/range {p0 .. p0}, Landroid/app/usage/NetworkStats$Bucket;->getTxPackets()J

    move-result-wide v14

    const-wide/16 v16, 0x0

    const/4 v1, 0x0

    invoke-direct/range {v0 .. v17}, Landroid/net/NetworkStats$Entry;-><init>(Ljava/lang/String;IIIIIIJJJJJ)V

    .line 66
    return-object v0
.end method

.method public static fromPublicNetworkStats(Landroid/app/usage/NetworkStats;)Landroid/net/NetworkStats;
    .locals 5
    .param p0, "publiceNetworkStats"    # Landroid/app/usage/NetworkStats;

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 42
    .local v0, "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/NetworkStats$Entry;>;"
    :goto_0
    invoke-virtual {p0}, Landroid/app/usage/NetworkStats;->hasNextBucket()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 43
    new-instance v1, Landroid/app/usage/NetworkStats$Bucket;

    invoke-direct {v1}, Landroid/app/usage/NetworkStats$Bucket;-><init>()V

    .line 44
    .local v1, "bucket":Landroid/app/usage/NetworkStats$Bucket;
    invoke-virtual {p0, v1}, Landroid/app/usage/NetworkStats;->getNextBucket(Landroid/app/usage/NetworkStats$Bucket;)Z

    .line 45
    invoke-static {v1}, Lcom/android/server/stats/pull/netstats/NetworkStatsUtils;->fromBucket(Landroid/app/usage/NetworkStats$Bucket;)Landroid/net/NetworkStats$Entry;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 46
    .end local v1    # "bucket":Landroid/app/usage/NetworkStats$Bucket;
    goto :goto_0

    .line 47
    :cond_0
    new-instance v1, Landroid/net/NetworkStats;

    const-wide/16 v2, 0x0

    const/4 v4, 0x1

    invoke-direct {v1, v2, v3, v4}, Landroid/net/NetworkStats;-><init>(JI)V

    .line 50
    .local v1, "stats":Landroid/net/NetworkStats;
    invoke-static {}, Lcom/android/server/stats/pull/netstats/NetworkStatsUtils;->isAddEntriesSupported()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 51
    invoke-virtual {v1, v0}, Landroid/net/NetworkStats;->addEntries(Ljava/util/List;)Landroid/net/NetworkStats;

    move-result-object v1

    goto :goto_2

    .line 53
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    nop

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/NetworkStats$Entry;

    .line 54
    .local v3, "entry":Landroid/net/NetworkStats$Entry;
    invoke-virtual {v1, v3}, Landroid/net/NetworkStats;->addEntry(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;

    move-result-object v1

    .line 55
    .end local v3    # "entry":Landroid/net/NetworkStats$Entry;
    goto :goto_1

    .line 57
    :cond_2
    :goto_2
    return-object v1
.end method

.method public static isAddEntriesSupported()Z
    .locals 1

    .line 123
    const/4 v0, 0x1

    return v0
.end method
