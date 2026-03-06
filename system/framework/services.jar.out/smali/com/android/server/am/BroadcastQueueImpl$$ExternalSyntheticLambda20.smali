.class public final synthetic Lcom/android/server/am/BroadcastQueueImpl$$ExternalSyntheticLambda20;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field public final synthetic f$0:Lcom/android/server/am/BroadcastQueueImpl;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/BroadcastQueueImpl;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/BroadcastQueueImpl$$ExternalSyntheticLambda20;->f$0:Lcom/android/server/am/BroadcastQueueImpl;

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueueImpl$$ExternalSyntheticLambda20;->f$0:Lcom/android/server/am/BroadcastQueueImpl;

    invoke-static {v0, p1}, Lcom/android/server/am/BroadcastQueueImpl;->$r8$lambda$l-TmgsQ9D6SPUK-D5ivvEy60BZk(Lcom/android/server/am/BroadcastQueueImpl;Landroid/os/Message;)Z

    move-result p1

    return p1
.end method
