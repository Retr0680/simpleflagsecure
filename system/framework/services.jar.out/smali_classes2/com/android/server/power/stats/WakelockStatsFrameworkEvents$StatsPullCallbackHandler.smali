.class Lcom/android/server/power/stats/WakelockStatsFrameworkEvents$StatsPullCallbackHandler;
.super Ljava/lang/Object;
.source "WakelockStatsFrameworkEvents.java"

# interfaces
.implements Landroid/app/StatsManager$StatsPullAtomCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/stats/WakelockStatsFrameworkEvents;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StatsPullCallbackHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/stats/WakelockStatsFrameworkEvents;


# direct methods
.method private constructor <init>(Lcom/android/server/power/stats/WakelockStatsFrameworkEvents;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 313
    iput-object p1, p0, Lcom/android/server/power/stats/WakelockStatsFrameworkEvents$StatsPullCallbackHandler;->this$0:Lcom/android/server/power/stats/WakelockStatsFrameworkEvents;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/power/stats/WakelockStatsFrameworkEvents;Lcom/android/server/power/stats/WakelockStatsFrameworkEvents-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/power/stats/WakelockStatsFrameworkEvents$StatsPullCallbackHandler;-><init>(Lcom/android/server/power/stats/WakelockStatsFrameworkEvents;)V

    return-void
.end method

.method private pullEvents(I)Ljava/util/List;
    .locals 1
    .param p1, "atomTag"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;"
        }
    .end annotation

    .line 327
    packed-switch p1, :pswitch_data_0

    .line 331
    const/4 v0, 0x0

    return-object v0

    .line 329
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/power/stats/WakelockStatsFrameworkEvents$StatsPullCallbackHandler;->this$0:Lcom/android/server/power/stats/WakelockStatsFrameworkEvents;

    invoke-virtual {v0}, Lcom/android/server/power/stats/WakelockStatsFrameworkEvents;->pullFrameworkWakelockInfoAtoms()Ljava/util/List;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x27f6
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public onPullAtom(ILjava/util/List;)I
    .locals 2
    .param p1, "atomTag"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    .line 317
    .local p2, "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    invoke-direct {p0, p1}, Lcom/android/server/power/stats/WakelockStatsFrameworkEvents$StatsPullCallbackHandler;->pullEvents(I)Ljava/util/List;

    move-result-object v0

    .line 318
    .local v0, "events":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    if-nez v0, :cond_0

    .line 319
    const/4 v1, 0x1

    return v1

    .line 322
    :cond_0
    invoke-interface {p2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 323
    const/4 v1, 0x0

    return v1
.end method
