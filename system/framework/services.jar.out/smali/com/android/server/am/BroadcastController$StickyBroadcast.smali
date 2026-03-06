.class final Lcom/android/server/am/BroadcastController$StickyBroadcast;
.super Ljava/lang/Object;
.source "BroadcastController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/BroadcastController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "StickyBroadcast"
.end annotation


# instance fields
.field public deferUntilActive:Z

.field public intent:Landroid/content/Intent;

.field public originalCallingAppProcessState:I

.field public originalCallingUid:I

.field public resolvedDataType:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 2545
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Landroid/content/Intent;ZIILjava/lang/String;)Lcom/android/server/am/BroadcastController$StickyBroadcast;
    .locals 1
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "deferUntilActive"    # Z
    .param p2, "originalCallingUid"    # I
    .param p3, "originalCallingAppProcessState"    # I
    .param p4, "resolvedDataType"    # Ljava/lang/String;

    .line 2556
    new-instance v0, Lcom/android/server/am/BroadcastController$StickyBroadcast;

    invoke-direct {v0}, Lcom/android/server/am/BroadcastController$StickyBroadcast;-><init>()V

    .line 2557
    .local v0, "b":Lcom/android/server/am/BroadcastController$StickyBroadcast;
    iput-object p0, v0, Lcom/android/server/am/BroadcastController$StickyBroadcast;->intent:Landroid/content/Intent;

    .line 2558
    iput-boolean p1, v0, Lcom/android/server/am/BroadcastController$StickyBroadcast;->deferUntilActive:Z

    .line 2559
    iput p2, v0, Lcom/android/server/am/BroadcastController$StickyBroadcast;->originalCallingUid:I

    .line 2560
    iput p3, v0, Lcom/android/server/am/BroadcastController$StickyBroadcast;->originalCallingAppProcessState:I

    .line 2561
    iput-object p4, v0, Lcom/android/server/am/BroadcastController$StickyBroadcast;->resolvedDataType:Ljava/lang/String;

    .line 2562
    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 2567
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{intent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/BroadcastController$StickyBroadcast;->intent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", defer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/am/BroadcastController$StickyBroadcast;->deferUntilActive:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", originalCallingUid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/BroadcastController$StickyBroadcast;->originalCallingUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", originalCallingAppProcessState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/BroadcastController$StickyBroadcast;->originalCallingAppProcessState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/BroadcastController$StickyBroadcast;->resolvedDataType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
