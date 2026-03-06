.class Lcom/android/server/wm/AbsAppSnapshotController$SnapshotSupplier;
.super Ljava/lang/Object;
.source "AbsAppSnapshotController.java"

# interfaces
.implements Ljava/util/function/Supplier;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/AbsAppSnapshotController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SnapshotSupplier"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/function/Supplier<",
        "Landroid/window/TaskSnapshot;",
        ">;"
    }
.end annotation


# instance fields
.field private mConsumer:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Landroid/window/TaskSnapshot;",
            ">;"
        }
    .end annotation
.end field

.field private mHasSet:Z

.field private mSnapshot:Landroid/window/TaskSnapshot;

.field private mSupplier:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "Landroid/window/TaskSnapshot;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0

    .line 545
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Landroid/window/TaskSnapshot;
    .locals 1

    .line 581
    invoke-virtual {p0}, Lcom/android/server/wm/AbsAppSnapshotController$SnapshotSupplier;->handleSnapshot()V

    .line 582
    iget-object v0, p0, Lcom/android/server/wm/AbsAppSnapshotController$SnapshotSupplier;->mSnapshot:Landroid/window/TaskSnapshot;

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 545
    invoke-virtual {p0}, Lcom/android/server/wm/AbsAppSnapshotController$SnapshotSupplier;->get()Landroid/window/TaskSnapshot;

    move-result-object v0

    return-object v0
.end method

.method handleSnapshot()V
    .locals 2

    .line 566
    iget-boolean v0, p0, Lcom/android/server/wm/AbsAppSnapshotController$SnapshotSupplier;->mHasSet:Z

    if-eqz v0, :cond_0

    .line 567
    return-void

    .line 569
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/AbsAppSnapshotController$SnapshotSupplier;->mHasSet:Z

    .line 570
    iget-object v0, p0, Lcom/android/server/wm/AbsAppSnapshotController$SnapshotSupplier;->mSnapshot:Landroid/window/TaskSnapshot;

    if-nez v0, :cond_2

    .line 571
    iget-object v0, p0, Lcom/android/server/wm/AbsAppSnapshotController$SnapshotSupplier;->mSupplier:Ljava/util/function/Supplier;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/AbsAppSnapshotController$SnapshotSupplier;->mSupplier:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/window/TaskSnapshot;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/android/server/wm/AbsAppSnapshotController$SnapshotSupplier;->mSnapshot:Landroid/window/TaskSnapshot;

    .line 573
    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/AbsAppSnapshotController$SnapshotSupplier;->mConsumer:Ljava/util/function/Consumer;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/wm/AbsAppSnapshotController$SnapshotSupplier;->mSnapshot:Landroid/window/TaskSnapshot;

    if-eqz v0, :cond_3

    .line 574
    iget-object v0, p0, Lcom/android/server/wm/AbsAppSnapshotController$SnapshotSupplier;->mConsumer:Ljava/util/function/Consumer;

    iget-object v1, p0, Lcom/android/server/wm/AbsAppSnapshotController$SnapshotSupplier;->mSnapshot:Landroid/window/TaskSnapshot;

    invoke-interface {v0, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 576
    :cond_3
    return-void
.end method

.method setConsumer(Ljava/util/function/Consumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Landroid/window/TaskSnapshot;",
            ">;)V"
        }
    .end annotation

    .line 554
    .local p1, "consumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/window/TaskSnapshot;>;"
    iput-object p1, p0, Lcom/android/server/wm/AbsAppSnapshotController$SnapshotSupplier;->mConsumer:Ljava/util/function/Consumer;

    .line 555
    return-void
.end method

.method setSnapshot(Landroid/window/TaskSnapshot;)V
    .locals 0
    .param p1, "snapshot"    # Landroid/window/TaskSnapshot;

    .line 562
    iput-object p1, p0, Lcom/android/server/wm/AbsAppSnapshotController$SnapshotSupplier;->mSnapshot:Landroid/window/TaskSnapshot;

    .line 563
    return-void
.end method

.method setSupplier(Ljava/util/function/Supplier;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Supplier<",
            "Landroid/window/TaskSnapshot;",
            ">;)V"
        }
    .end annotation

    .line 558
    .local p1, "createSupplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Landroid/window/TaskSnapshot;>;"
    iput-object p1, p0, Lcom/android/server/wm/AbsAppSnapshotController$SnapshotSupplier;->mSupplier:Ljava/util/function/Supplier;

    .line 559
    return-void
.end method
