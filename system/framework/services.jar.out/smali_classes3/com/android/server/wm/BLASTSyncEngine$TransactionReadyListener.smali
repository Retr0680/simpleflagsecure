.class interface abstract Lcom/android/server/wm/BLASTSyncEngine$TransactionReadyListener;
.super Ljava/lang/Object;
.source "BLASTSyncEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/BLASTSyncEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "TransactionReadyListener"
.end annotation


# virtual methods
.method public onPreReady(I)V
    .locals 0
    .param p1, "syncId"    # I

    .line 103
    return-void
.end method

.method public onReadyTimeout()V
    .locals 0

    .line 100
    return-void
.end method

.method public onReadyTraceEnd(Ljava/lang/String;I)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "id"    # I

    .line 111
    const-wide/16 v0, 0x20

    invoke-static {v0, v1, p1, p2}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    .line 112
    return-void
.end method

.method public onReadyTraceStart(Ljava/lang/String;I)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "id"    # I

    .line 107
    const-wide/16 v0, 0x20

    invoke-static {v0, v1, p1, p2}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    .line 108
    return-void
.end method

.method public onTransactionCommitTimeout()V
    .locals 0

    .line 99
    return-void
.end method

.method public onTransactionCommitted()V
    .locals 0

    .line 98
    return-void
.end method

.method public abstract onTransactionReady(ILandroid/view/SurfaceControl$Transaction;)V
.end method
