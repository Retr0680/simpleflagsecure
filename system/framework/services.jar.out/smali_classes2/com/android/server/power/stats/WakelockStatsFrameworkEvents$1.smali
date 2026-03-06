.class Lcom/android/server/power/stats/WakelockStatsFrameworkEvents$1;
.super Ljava/lang/Object;
.source "WakelockStatsFrameworkEvents.java"

# interfaces
.implements Lcom/android/server/power/stats/WakelockStatsFrameworkEvents$EventLogger;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/power/stats/WakelockStatsFrameworkEvents;->pullFrameworkWakelockInfoAtoms()Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$result:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/android/server/power/stats/WakelockStatsFrameworkEvents;Ljava/util/List;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/power/stats/WakelockStatsFrameworkEvents;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 208
    iput-object p2, p0, Lcom/android/server/power/stats/WakelockStatsFrameworkEvents$1;->val$result:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public logResult(ILjava/lang/String;IJJ)V
    .locals 2
    .param p1, "uid"    # I
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "wakeLockLevel"    # I
    .param p4, "uptimeMillis"    # J
    .param p6, "completedCount"    # J

    .line 216
    invoke-static {}, Landroid/util/StatsEvent;->newBuilder()Landroid/util/StatsEvent$Builder;

    move-result-object v0

    .line 217
    const/16 v1, 0x27f6

    invoke-virtual {v0, v1}, Landroid/util/StatsEvent$Builder;->setAtomId(I)Landroid/util/StatsEvent$Builder;

    move-result-object v0

    .line 218
    invoke-virtual {v0, p1}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    move-result-object v0

    .line 219
    invoke-virtual {v0, p2}, Landroid/util/StatsEvent$Builder;->writeString(Ljava/lang/String;)Landroid/util/StatsEvent$Builder;

    move-result-object v0

    .line 220
    invoke-virtual {v0, p3}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    move-result-object v0

    .line 221
    invoke-virtual {v0, p4, p5}, Landroid/util/StatsEvent$Builder;->writeLong(J)Landroid/util/StatsEvent$Builder;

    move-result-object v0

    .line 222
    invoke-virtual {v0, p6, p7}, Landroid/util/StatsEvent$Builder;->writeLong(J)Landroid/util/StatsEvent$Builder;

    move-result-object v0

    .line 223
    invoke-virtual {v0}, Landroid/util/StatsEvent$Builder;->build()Landroid/util/StatsEvent;

    move-result-object v0

    .line 224
    .local v0, "event":Landroid/util/StatsEvent;
    iget-object v1, p0, Lcom/android/server/power/stats/WakelockStatsFrameworkEvents$1;->val$result:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 225
    return-void
.end method
