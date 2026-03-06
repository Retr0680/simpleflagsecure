.class public final synthetic Lcom/android/server/wm/ActivitySnapshotController$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/ActivitySnapshotController;

.field public final synthetic f$1:Z

.field public final synthetic f$2:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/ActivitySnapshotController;ZLjava/util/ArrayList;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/ActivitySnapshotController$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/wm/ActivitySnapshotController;

    iput-boolean p2, p0, Lcom/android/server/wm/ActivitySnapshotController$$ExternalSyntheticLambda2;->f$1:Z

    iput-object p3, p0, Lcom/android/server/wm/ActivitySnapshotController$$ExternalSyntheticLambda2;->f$2:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    .line 0
    iget-object v0, p0, Lcom/android/server/wm/ActivitySnapshotController$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/wm/ActivitySnapshotController;

    iget-boolean v1, p0, Lcom/android/server/wm/ActivitySnapshotController$$ExternalSyntheticLambda2;->f$1:Z

    iget-object v2, p0, Lcom/android/server/wm/ActivitySnapshotController$$ExternalSyntheticLambda2;->f$2:Ljava/util/ArrayList;

    check-cast p1, Lcom/android/server/wm/TaskFragment;

    invoke-static {v0, v1, v2, p1}, Lcom/android/server/wm/ActivitySnapshotController;->$r8$lambda$vu49lpFwkreDTHjGOPW9Eij0xec(Lcom/android/server/wm/ActivitySnapshotController;ZLjava/util/ArrayList;Lcom/android/server/wm/TaskFragment;)V

    return-void
.end method
