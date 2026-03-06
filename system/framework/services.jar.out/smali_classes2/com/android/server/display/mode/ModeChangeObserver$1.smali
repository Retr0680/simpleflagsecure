.class Lcom/android/server/display/mode/ModeChangeObserver$1;
.super Ljava/lang/Object;
.source "ModeChangeObserver.java"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


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
.method constructor <init>(Lcom/android/server/display/mode/ModeChangeObserver;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/display/mode/ModeChangeObserver;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 68
    iput-object p1, p0, Lcom/android/server/display/mode/ModeChangeObserver$1;->this$0:Lcom/android/server/display/mode/ModeChangeObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDisplayAdded(I)V
    .locals 1
    .param p1, "displayId"    # I

    .line 71
    iget-object v0, p0, Lcom/android/server/display/mode/ModeChangeObserver$1;->this$0:Lcom/android/server/display/mode/ModeChangeObserver;

    invoke-static {v0, p1}, Lcom/android/server/display/mode/ModeChangeObserver;->-$$Nest$mupdateVoteForDisplay(Lcom/android/server/display/mode/ModeChangeObserver;I)V

    .line 72
    return-void
.end method

.method public onDisplayChanged(I)V
    .locals 4
    .param p1, "displayId"    # I

    .line 90
    iget-object v0, p0, Lcom/android/server/display/mode/ModeChangeObserver$1;->this$0:Lcom/android/server/display/mode/ModeChangeObserver;

    invoke-static {v0}, Lcom/android/server/display/mode/ModeChangeObserver;->-$$Nest$fgetmPhysicalIdToLogicalIdMap(Lcom/android/server/display/mode/ModeChangeObserver;)Landroid/util/LongSparseArray;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/LongSparseArray;->indexOfValue(Ljava/lang/Object;)I

    move-result v0

    .line 91
    .local v0, "oldPhysicalDisplayIdIndex":I
    if-gez v0, :cond_0

    .line 92
    const-string v1, "ModeChangeObserver"

    const-string v2, "Changed display not found"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    return-void

    .line 95
    :cond_0
    iget-object v1, p0, Lcom/android/server/display/mode/ModeChangeObserver$1;->this$0:Lcom/android/server/display/mode/ModeChangeObserver;

    invoke-static {v1}, Lcom/android/server/display/mode/ModeChangeObserver;->-$$Nest$fgetmPhysicalIdToLogicalIdMap(Lcom/android/server/display/mode/ModeChangeObserver;)Landroid/util/LongSparseArray;

    move-result-object v1

    .line 96
    invoke-virtual {v1, v0}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v1

    .line 97
    .local v1, "oldPhysicalDisplayId":J
    iget-object v3, p0, Lcom/android/server/display/mode/ModeChangeObserver$1;->this$0:Lcom/android/server/display/mode/ModeChangeObserver;

    invoke-static {v3}, Lcom/android/server/display/mode/ModeChangeObserver;->-$$Nest$fgetmPhysicalIdToLogicalIdMap(Lcom/android/server/display/mode/ModeChangeObserver;)Landroid/util/LongSparseArray;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Landroid/util/LongSparseArray;->delete(J)V

    .line 99
    iget-object v3, p0, Lcom/android/server/display/mode/ModeChangeObserver$1;->this$0:Lcom/android/server/display/mode/ModeChangeObserver;

    invoke-static {v3, p1}, Lcom/android/server/display/mode/ModeChangeObserver;->-$$Nest$mupdateVoteForDisplay(Lcom/android/server/display/mode/ModeChangeObserver;I)V

    .line 100
    return-void
.end method

.method public onDisplayRemoved(I)V
    .locals 6
    .param p1, "displayId"    # I

    .line 76
    iget-object v0, p0, Lcom/android/server/display/mode/ModeChangeObserver$1;->this$0:Lcom/android/server/display/mode/ModeChangeObserver;

    invoke-static {v0}, Lcom/android/server/display/mode/ModeChangeObserver;->-$$Nest$fgetmPhysicalIdToLogicalIdMap(Lcom/android/server/display/mode/ModeChangeObserver;)Landroid/util/LongSparseArray;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/LongSparseArray;->indexOfValue(Ljava/lang/Object;)I

    move-result v0

    .line 77
    .local v0, "oldPhysicalDisplayIdIndex":I
    if-gez v0, :cond_0

    .line 78
    const-string v1, "ModeChangeObserver"

    const-string v2, "Removed display not found"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    return-void

    .line 81
    :cond_0
    iget-object v1, p0, Lcom/android/server/display/mode/ModeChangeObserver$1;->this$0:Lcom/android/server/display/mode/ModeChangeObserver;

    invoke-static {v1}, Lcom/android/server/display/mode/ModeChangeObserver;->-$$Nest$fgetmPhysicalIdToLogicalIdMap(Lcom/android/server/display/mode/ModeChangeObserver;)Landroid/util/LongSparseArray;

    move-result-object v1

    .line 82
    invoke-virtual {v1, v0}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v1

    .line 83
    .local v1, "oldPhysicalDisplayId":J
    iget-object v3, p0, Lcom/android/server/display/mode/ModeChangeObserver$1;->this$0:Lcom/android/server/display/mode/ModeChangeObserver;

    invoke-static {v3}, Lcom/android/server/display/mode/ModeChangeObserver;->-$$Nest$fgetmPhysicalIdToLogicalIdMap(Lcom/android/server/display/mode/ModeChangeObserver;)Landroid/util/LongSparseArray;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Landroid/util/LongSparseArray;->delete(J)V

    .line 84
    iget-object v3, p0, Lcom/android/server/display/mode/ModeChangeObserver$1;->this$0:Lcom/android/server/display/mode/ModeChangeObserver;

    invoke-static {v3}, Lcom/android/server/display/mode/ModeChangeObserver;->-$$Nest$fgetmRejectedModesMap(Lcom/android/server/display/mode/ModeChangeObserver;)Landroid/util/LongSparseArray;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Landroid/util/LongSparseArray;->delete(J)V

    .line 85
    iget-object v3, p0, Lcom/android/server/display/mode/ModeChangeObserver$1;->this$0:Lcom/android/server/display/mode/ModeChangeObserver;

    invoke-static {v3}, Lcom/android/server/display/mode/ModeChangeObserver;->-$$Nest$fgetmVotesStorage(Lcom/android/server/display/mode/ModeChangeObserver;)Lcom/android/server/display/mode/VotesStorage;

    move-result-object v3

    const/16 v4, 0x8

    const/4 v5, 0x0

    invoke-virtual {v3, p1, v4, v5}, Lcom/android/server/display/mode/VotesStorage;->updateVote(IILcom/android/server/display/mode/Vote;)V

    .line 86
    return-void
.end method
