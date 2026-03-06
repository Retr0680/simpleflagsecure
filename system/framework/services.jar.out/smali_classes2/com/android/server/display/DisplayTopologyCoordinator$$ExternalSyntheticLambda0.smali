.class public final synthetic Lcom/android/server/display/DisplayTopologyCoordinator$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/display/DisplayTopologyCoordinator;

.field public final synthetic f$1:Landroid/hardware/display/DisplayTopology;

.field public final synthetic f$2:Landroid/util/SparseIntArray;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/display/DisplayTopologyCoordinator;Landroid/hardware/display/DisplayTopology;Landroid/util/SparseIntArray;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/display/DisplayTopologyCoordinator$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/display/DisplayTopologyCoordinator;

    iput-object p2, p0, Lcom/android/server/display/DisplayTopologyCoordinator$$ExternalSyntheticLambda0;->f$1:Landroid/hardware/display/DisplayTopology;

    iput-object p3, p0, Lcom/android/server/display/DisplayTopologyCoordinator$$ExternalSyntheticLambda0;->f$2:Landroid/util/SparseIntArray;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 0
    iget-object v0, p0, Lcom/android/server/display/DisplayTopologyCoordinator$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/display/DisplayTopologyCoordinator;

    iget-object v1, p0, Lcom/android/server/display/DisplayTopologyCoordinator$$ExternalSyntheticLambda0;->f$1:Landroid/hardware/display/DisplayTopology;

    iget-object v2, p0, Lcom/android/server/display/DisplayTopologyCoordinator$$ExternalSyntheticLambda0;->f$2:Landroid/util/SparseIntArray;

    invoke-static {v0, v1, v2}, Lcom/android/server/display/DisplayTopologyCoordinator;->$r8$lambda$FLGZO3IsBzi_ExNQa2xMif3tj-E(Lcom/android/server/display/DisplayTopologyCoordinator;Landroid/hardware/display/DisplayTopology;Landroid/util/SparseIntArray;)V

    return-void
.end method
