.class Lcom/android/server/am/compaction/CompactionStatsManager$2;
.super Ljava/util/LinkedList;
.source "CompactionStatsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/compaction/CompactionStatsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/LinkedList<",
        "Lcom/android/server/am/compaction/SingleCompactionStats;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/compaction/CompactionStatsManager;


# direct methods
.method constructor <init>(Lcom/android/server/am/compaction/CompactionStatsManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/am/compaction/CompactionStatsManager;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 88
    iput-object p1, p0, Lcom/android/server/am/compaction/CompactionStatsManager$2;->this$0:Lcom/android/server/am/compaction/CompactionStatsManager;

    invoke-direct {p0}, Ljava/util/LinkedList;-><init>()V

    return-void
.end method


# virtual methods
.method public add(Lcom/android/server/am/compaction/SingleCompactionStats;)Z
    .locals 2
    .param p1, "e"    # Lcom/android/server/am/compaction/SingleCompactionStats;

    .line 91
    invoke-virtual {p0}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/16 v1, 0x14

    if-lt v0, v1, :cond_0

    .line 92
    invoke-virtual {p0}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    .line 94
    :cond_0
    invoke-super {p0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic add(Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 88
    check-cast p1, Lcom/android/server/am/compaction/SingleCompactionStats;

    invoke-virtual {p0, p1}, Lcom/android/server/am/compaction/CompactionStatsManager$2;->add(Lcom/android/server/am/compaction/SingleCompactionStats;)Z

    move-result p1

    return p1
.end method
