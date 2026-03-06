.class Lcom/android/server/display/mode/ModeChangeObserver$2;
.super Landroid/view/DisplayEventReceiver;
.source "ModeChangeObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/display/mode/ModeChangeObserver;->observe()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/mode/ModeChangeObserver;


# direct methods
.method constructor <init>(Lcom/android/server/display/mode/ModeChangeObserver;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/display/mode/ModeChangeObserver;
    .param p2, "looper"    # Landroid/os/Looper;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 106
    iput-object p1, p0, Lcom/android/server/display/mode/ModeChangeObserver$2;->this$0:Lcom/android/server/display/mode/ModeChangeObserver;

    invoke-direct {p0, p2}, Landroid/view/DisplayEventReceiver;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public onModeRejected(JI)V
    .locals 4
    .param p1, "physicalDisplayId"    # J
    .param p3, "modeId"    # I

    .line 109
    const-string v0, "Mode Rejected event received"

    const-string v1, "ModeChangeObserver"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    iget-object v0, p0, Lcom/android/server/display/mode/ModeChangeObserver$2;->this$0:Lcom/android/server/display/mode/ModeChangeObserver;

    invoke-static {v0, p1, p2, p3}, Lcom/android/server/display/mode/ModeChangeObserver;->-$$Nest$mupdateRejectedModesListByDisplay(Lcom/android/server/display/mode/ModeChangeObserver;JI)V

    .line 111
    iget-object v0, p0, Lcom/android/server/display/mode/ModeChangeObserver$2;->this$0:Lcom/android/server/display/mode/ModeChangeObserver;

    invoke-static {v0}, Lcom/android/server/display/mode/ModeChangeObserver;->-$$Nest$fgetmPhysicalIdToLogicalIdMap(Lcom/android/server/display/mode/ModeChangeObserver;)Landroid/util/LongSparseArray;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/util/LongSparseArray;->indexOfKey(J)I

    move-result v0

    if-gez v0, :cond_0

    .line 112
    const-string v0, "Rejected Modes Vote will be updated after display is added"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    return-void

    .line 115
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/mode/ModeChangeObserver$2;->this$0:Lcom/android/server/display/mode/ModeChangeObserver;

    invoke-static {v0}, Lcom/android/server/display/mode/ModeChangeObserver;->-$$Nest$fgetmVotesStorage(Lcom/android/server/display/mode/ModeChangeObserver;)Lcom/android/server/display/mode/VotesStorage;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/mode/ModeChangeObserver$2;->this$0:Lcom/android/server/display/mode/ModeChangeObserver;

    invoke-static {v1}, Lcom/android/server/display/mode/ModeChangeObserver;->-$$Nest$fgetmPhysicalIdToLogicalIdMap(Lcom/android/server/display/mode/ModeChangeObserver;)Landroid/util/LongSparseArray;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/display/mode/ModeChangeObserver$2;->this$0:Lcom/android/server/display/mode/ModeChangeObserver;

    invoke-static {v2}, Lcom/android/server/display/mode/ModeChangeObserver;->-$$Nest$fgetmRejectedModesMap(Lcom/android/server/display/mode/ModeChangeObserver;)Landroid/util/LongSparseArray;

    move-result-object v2

    .line 117
    invoke-virtual {v2, p1, p2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    invoke-static {v2}, Lcom/android/server/display/mode/Vote;->forRejectedModes(Ljava/util/Set;)Lcom/android/server/display/mode/Vote;

    move-result-object v2

    .line 115
    const/16 v3, 0x8

    invoke-virtual {v0, v1, v3, v2}, Lcom/android/server/display/mode/VotesStorage;->updateVote(IILcom/android/server/display/mode/Vote;)V

    .line 118
    return-void
.end method
