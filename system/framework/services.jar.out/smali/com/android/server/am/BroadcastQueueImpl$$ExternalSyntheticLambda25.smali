.class public final synthetic Lcom/android/server/am/BroadcastQueueImpl$$ExternalSyntheticLambda25;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/server/am/BroadcastProcessQueue$BroadcastRecordConsumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/am/BroadcastQueueImpl;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/BroadcastQueueImpl;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/BroadcastQueueImpl$$ExternalSyntheticLambda25;->f$0:Lcom/android/server/am/BroadcastQueueImpl;

    return-void
.end method


# virtual methods
.method public final accept(Lcom/android/server/am/BroadcastRecord;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueueImpl$$ExternalSyntheticLambda25;->f$0:Lcom/android/server/am/BroadcastQueueImpl;

    invoke-virtual {v0, p1}, Lcom/android/server/am/BroadcastQueueImpl;->enqueueBroadcastLocked(Lcom/android/server/am/BroadcastRecord;)V

    return-void
.end method
