.class public final synthetic Lcom/android/server/wm/AbsAppSnapshotController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/AbsAppSnapshotController;

.field public final synthetic f$1:Lcom/android/server/wm/WindowContainer;

.field public final synthetic f$2:Ljava/util/function/Consumer;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/AbsAppSnapshotController;Lcom/android/server/wm/WindowContainer;Ljava/util/function/Consumer;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/AbsAppSnapshotController$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/AbsAppSnapshotController;

    iput-object p2, p0, Lcom/android/server/wm/AbsAppSnapshotController$$ExternalSyntheticLambda0;->f$1:Lcom/android/server/wm/WindowContainer;

    iput-object p3, p0, Lcom/android/server/wm/AbsAppSnapshotController$$ExternalSyntheticLambda0;->f$2:Ljava/util/function/Consumer;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    .line 0
    iget-object v0, p0, Lcom/android/server/wm/AbsAppSnapshotController$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/AbsAppSnapshotController;

    iget-object v1, p0, Lcom/android/server/wm/AbsAppSnapshotController$$ExternalSyntheticLambda0;->f$1:Lcom/android/server/wm/WindowContainer;

    iget-object v2, p0, Lcom/android/server/wm/AbsAppSnapshotController$$ExternalSyntheticLambda0;->f$2:Ljava/util/function/Consumer;

    check-cast p1, Landroid/window/TaskSnapshot;

    invoke-static {v0, v1, v2, p1}, Lcom/android/server/wm/AbsAppSnapshotController;->$r8$lambda$9lPJ2o9QEm-SsCOn95NbpJpCRPo(Lcom/android/server/wm/AbsAppSnapshotController;Lcom/android/server/wm/WindowContainer;Ljava/util/function/Consumer;Landroid/window/TaskSnapshot;)V

    return-void
.end method
