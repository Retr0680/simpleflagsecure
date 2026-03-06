.class public final synthetic Lcom/android/server/wm/AbsAppSnapshotController$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic f$0:Landroid/graphics/RenderNode;

.field public final synthetic f$1:I

.field public final synthetic f$2:I

.field public final synthetic f$3:Landroid/window/TaskSnapshot$Builder;


# direct methods
.method public synthetic constructor <init>(Landroid/graphics/RenderNode;IILandroid/window/TaskSnapshot$Builder;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/AbsAppSnapshotController$$ExternalSyntheticLambda1;->f$0:Landroid/graphics/RenderNode;

    iput p2, p0, Lcom/android/server/wm/AbsAppSnapshotController$$ExternalSyntheticLambda1;->f$1:I

    iput p3, p0, Lcom/android/server/wm/AbsAppSnapshotController$$ExternalSyntheticLambda1;->f$2:I

    iput-object p4, p0, Lcom/android/server/wm/AbsAppSnapshotController$$ExternalSyntheticLambda1;->f$3:Landroid/window/TaskSnapshot$Builder;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 4

    .line 0
    iget-object v0, p0, Lcom/android/server/wm/AbsAppSnapshotController$$ExternalSyntheticLambda1;->f$0:Landroid/graphics/RenderNode;

    iget v1, p0, Lcom/android/server/wm/AbsAppSnapshotController$$ExternalSyntheticLambda1;->f$1:I

    iget v2, p0, Lcom/android/server/wm/AbsAppSnapshotController$$ExternalSyntheticLambda1;->f$2:I

    iget-object v3, p0, Lcom/android/server/wm/AbsAppSnapshotController$$ExternalSyntheticLambda1;->f$3:Landroid/window/TaskSnapshot$Builder;

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wm/AbsAppSnapshotController;->$r8$lambda$rUA7BKb_tu-qRrpgQfCNvHbszzk(Landroid/graphics/RenderNode;IILandroid/window/TaskSnapshot$Builder;)Landroid/window/TaskSnapshot;

    move-result-object v0

    return-object v0
.end method
