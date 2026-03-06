.class Lcom/android/server/net/NetworkPolicyManagerService$Dependencies;
.super Ljava/lang/Object;
.source "NetworkPolicyManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/net/NetworkPolicyManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Dependencies"
.end annotation


# instance fields
.field final mContext:Landroid/content/Context;

.field final mNetworkStatsManager:Landroid/app/usage/NetworkStatsManager;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 853
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 854
    iput-object p1, p0, Lcom/android/server/net/NetworkPolicyManagerService$Dependencies;->mContext:Landroid/content/Context;

    .line 855
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService$Dependencies;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/usage/NetworkStatsManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/usage/NetworkStatsManager;

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService$Dependencies;->mNetworkStatsManager:Landroid/app/usage/NetworkStatsManager;

    .line 861
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService$Dependencies;->mNetworkStatsManager:Landroid/app/usage/NetworkStatsManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/usage/NetworkStatsManager;->setPollOnOpen(Z)V

    .line 862
    return-void
.end method


# virtual methods
.method getActivateDataSubId()I
    .locals 1

    .line 905
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getActiveDataSubscriptionId()I

    move-result v0

    return v0
.end method

.method getDefaultDataSubId()I
    .locals 1

    .line 900
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v0

    return v0
.end method

.method getNetworkTotalBytes(Landroid/net/NetworkTemplate;JJ)J
    .locals 9
    .param p1, "template"    # Landroid/net/NetworkTemplate;
    .param p2, "start"    # J
    .param p4, "end"    # J

    .line 865
    const-string v0, "getNetworkTotalBytes"

    const-wide/32 v1, 0x200000

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 867
    :try_start_0
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService$Dependencies;->mNetworkStatsManager:Landroid/app/usage/NetworkStatsManager;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 868
    move-object v4, p1

    move-wide v5, p2

    move-wide v7, p4

    .end local p1    # "template":Landroid/net/NetworkTemplate;
    .end local p2    # "start":J
    .end local p4    # "end":J
    .local v4, "template":Landroid/net/NetworkTemplate;
    .local v5, "start":J
    .local v7, "end":J
    :try_start_1
    invoke-virtual/range {v3 .. v8}, Landroid/app/usage/NetworkStatsManager;->querySummaryForDevice(Landroid/net/NetworkTemplate;JJ)Landroid/app/usage/NetworkStats$Bucket;

    move-result-object p1

    .line 869
    .local p1, "ret":Landroid/app/usage/NetworkStats$Bucket;
    invoke-virtual {p1}, Landroid/app/usage/NetworkStats$Bucket;->getRxBytes()J

    move-result-wide p2

    invoke-virtual {p1}, Landroid/app/usage/NetworkStats$Bucket;->getTxBytes()J

    move-result-wide p4
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-long/2addr p2, p4

    .line 874
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 869
    return-wide p2

    .line 874
    .end local p1    # "ret":Landroid/app/usage/NetworkStats$Bucket;
    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_1

    .line 870
    :catch_0
    move-exception v0

    move-object p1, v0

    goto :goto_0

    .line 874
    .end local v4    # "template":Landroid/net/NetworkTemplate;
    .end local v5    # "start":J
    .end local v7    # "end":J
    .local p1, "template":Landroid/net/NetworkTemplate;
    .restart local p2    # "start":J
    .restart local p4    # "end":J
    :catchall_1
    move-exception v0

    move-object v4, p1

    move-wide v5, p2

    move-wide v7, p4

    move-object p1, v0

    .end local p1    # "template":Landroid/net/NetworkTemplate;
    .end local p2    # "start":J
    .end local p4    # "end":J
    .restart local v4    # "template":Landroid/net/NetworkTemplate;
    .restart local v5    # "start":J
    .restart local v7    # "end":J
    goto :goto_1

    .line 870
    .end local v4    # "template":Landroid/net/NetworkTemplate;
    .end local v5    # "start":J
    .end local v7    # "end":J
    .restart local p1    # "template":Landroid/net/NetworkTemplate;
    .restart local p2    # "start":J
    .restart local p4    # "end":J
    :catch_1
    move-exception v0

    move-object v4, p1

    move-wide v5, p2

    move-wide v7, p4

    move-object p1, v0

    .end local p1    # "template":Landroid/net/NetworkTemplate;
    .end local p2    # "start":J
    .end local p4    # "end":J
    .restart local v4    # "template":Landroid/net/NetworkTemplate;
    .restart local v5    # "start":J
    .restart local v7    # "end":J
    :goto_0
    nop

    .line 871
    .local p1, "e":Ljava/lang/RuntimeException;
    :try_start_2
    const-string p2, "NetworkPolicy"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Failed to read network stats: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 872
    nop

    .line 874
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 872
    const-wide/16 p2, 0x0

    return-wide p2

    .line 874
    .end local p1    # "e":Ljava/lang/RuntimeException;
    :goto_1
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 875
    throw p1
.end method

.method getNetworkUidBytes(Landroid/net/NetworkTemplate;JJ)Ljava/util/List;
    .locals 10
    .param p1, "template"    # Landroid/net/NetworkTemplate;
    .param p2, "start"    # J
    .param p4, "end"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/NetworkTemplate;",
            "JJ)",
            "Ljava/util/List<",
            "Landroid/app/usage/NetworkStats$Bucket;",
            ">;"
        }
    .end annotation

    .line 881
    const-string v0, "getNetworkUidBytes"

    const-wide/32 v1, 0x200000

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 882
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v3, v0

    .line 884
    .local v3, "buckets":Ljava/util/List;, "Ljava/util/List<Landroid/app/usage/NetworkStats$Bucket;>;"
    :try_start_0
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService$Dependencies;->mNetworkStatsManager:Landroid/app/usage/NetworkStatsManager;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v5, p1

    move-wide v6, p2

    move-wide v8, p4

    .end local p1    # "template":Landroid/net/NetworkTemplate;
    .end local p2    # "start":J
    .end local p4    # "end":J
    .local v5, "template":Landroid/net/NetworkTemplate;
    .local v6, "start":J
    .local v8, "end":J
    :try_start_1
    invoke-virtual/range {v4 .. v9}, Landroid/app/usage/NetworkStatsManager;->querySummary(Landroid/net/NetworkTemplate;JJ)Landroid/app/usage/NetworkStats;

    move-result-object p1

    .line 885
    .local p1, "stats":Landroid/app/usage/NetworkStats;
    :goto_0
    invoke-virtual {p1}, Landroid/app/usage/NetworkStats;->hasNextBucket()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 886
    new-instance p2, Landroid/app/usage/NetworkStats$Bucket;

    invoke-direct {p2}, Landroid/app/usage/NetworkStats$Bucket;-><init>()V

    .line 887
    .local p2, "bucket":Landroid/app/usage/NetworkStats$Bucket;
    invoke-virtual {p1, p2}, Landroid/app/usage/NetworkStats;->getNextBucket(Landroid/app/usage/NetworkStats$Bucket;)Z

    .line 888
    invoke-interface {v3, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 889
    nop

    .end local p2    # "bucket":Landroid/app/usage/NetworkStats$Bucket;
    goto :goto_0

    .line 893
    .end local p1    # "stats":Landroid/app/usage/NetworkStats;
    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_4

    .line 890
    :catch_0
    move-exception v0

    move-object p1, v0

    goto :goto_2

    .line 885
    .restart local p1    # "stats":Landroid/app/usage/NetworkStats;
    :cond_0
    nop

    .line 893
    .end local p1    # "stats":Landroid/app/usage/NetworkStats;
    nop

    :goto_1
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 894
    goto :goto_3

    .line 893
    .end local v5    # "template":Landroid/net/NetworkTemplate;
    .end local v6    # "start":J
    .end local v8    # "end":J
    .local p1, "template":Landroid/net/NetworkTemplate;
    .local p2, "start":J
    .restart local p4    # "end":J
    :catchall_1
    move-exception v0

    move-object v5, p1

    move-wide v6, p2

    move-wide v8, p4

    move-object p1, v0

    .end local p1    # "template":Landroid/net/NetworkTemplate;
    .end local p2    # "start":J
    .end local p4    # "end":J
    .restart local v5    # "template":Landroid/net/NetworkTemplate;
    .restart local v6    # "start":J
    .restart local v8    # "end":J
    goto :goto_4

    .line 890
    .end local v5    # "template":Landroid/net/NetworkTemplate;
    .end local v6    # "start":J
    .end local v8    # "end":J
    .restart local p1    # "template":Landroid/net/NetworkTemplate;
    .restart local p2    # "start":J
    .restart local p4    # "end":J
    :catch_1
    move-exception v0

    move-object v5, p1

    move-wide v6, p2

    move-wide v8, p4

    move-object p1, v0

    .end local p1    # "template":Landroid/net/NetworkTemplate;
    .end local p2    # "start":J
    .end local p4    # "end":J
    .restart local v5    # "template":Landroid/net/NetworkTemplate;
    .restart local v6    # "start":J
    .restart local v8    # "end":J
    :goto_2
    nop

    .line 891
    .local p1, "e":Ljava/lang/RuntimeException;
    :try_start_2
    const-string p2, "NetworkPolicy"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Failed to read network stats: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 893
    nop

    .end local p1    # "e":Ljava/lang/RuntimeException;
    goto :goto_1

    .line 895
    :goto_3
    return-object v3

    .line 893
    :goto_4
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 894
    throw p1
.end method
