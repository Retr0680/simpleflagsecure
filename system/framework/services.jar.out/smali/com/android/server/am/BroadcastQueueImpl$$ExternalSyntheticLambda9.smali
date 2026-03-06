.class public final synthetic Lcom/android/server/am/BroadcastQueueImpl$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/BooleanSupplier;


# instance fields
.field public final synthetic f$0:Lcom/android/server/am/BroadcastQueueImpl;

.field public final synthetic f$1:J

.field public final synthetic f$2:Ljava/io/PrintWriter;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/BroadcastQueueImpl;JLjava/io/PrintWriter;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/BroadcastQueueImpl$$ExternalSyntheticLambda9;->f$0:Lcom/android/server/am/BroadcastQueueImpl;

    iput-wide p2, p0, Lcom/android/server/am/BroadcastQueueImpl$$ExternalSyntheticLambda9;->f$1:J

    iput-object p4, p0, Lcom/android/server/am/BroadcastQueueImpl$$ExternalSyntheticLambda9;->f$2:Ljava/io/PrintWriter;

    return-void
.end method


# virtual methods
.method public final getAsBoolean()Z
    .locals 4

    .line 0
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueueImpl$$ExternalSyntheticLambda9;->f$0:Lcom/android/server/am/BroadcastQueueImpl;

    iget-wide v1, p0, Lcom/android/server/am/BroadcastQueueImpl$$ExternalSyntheticLambda9;->f$1:J

    iget-object v3, p0, Lcom/android/server/am/BroadcastQueueImpl$$ExternalSyntheticLambda9;->f$2:Ljava/io/PrintWriter;

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/am/BroadcastQueueImpl;->$r8$lambda$eNs2xE55__Zz9ql8SQ7FQputV6s(Lcom/android/server/am/BroadcastQueueImpl;JLjava/io/PrintWriter;)Z

    move-result v0

    return v0
.end method
