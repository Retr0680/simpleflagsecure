.class final Lcom/android/server/am/compaction/AggregatedProcessCompactionStats;
.super Lcom/android/server/am/compaction/AggregatedCompactionStats;
.source "AggregatedProcessCompactionStats.java"


# instance fields
.field public final mProcessName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "processName"    # Ljava/lang/String;

    .line 22
    invoke-direct {p0}, Lcom/android/server/am/compaction/AggregatedCompactionStats;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/compaction/AggregatedProcessCompactionStats;->mProcessName:Ljava/lang/String;

    return-void
.end method
