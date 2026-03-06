.class public final synthetic Lcom/android/server/wm/SnapshotController$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/SnapshotController;

.field public final synthetic f$1:Landroid/hardware/HardwareBuffer;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/SnapshotController;Landroid/hardware/HardwareBuffer;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/SnapshotController$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/wm/SnapshotController;

    iput-object p2, p0, Lcom/android/server/wm/SnapshotController$$ExternalSyntheticLambda1;->f$1:Landroid/hardware/HardwareBuffer;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/android/server/wm/SnapshotController$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/wm/SnapshotController;

    iget-object v1, p0, Lcom/android/server/wm/SnapshotController$$ExternalSyntheticLambda1;->f$1:Landroid/hardware/HardwareBuffer;

    invoke-static {v0, v1}, Lcom/android/server/wm/SnapshotController;->$r8$lambda$_ibbxI7ud-kkaypzOJwL5fxr1fg(Lcom/android/server/wm/SnapshotController;Landroid/hardware/HardwareBuffer;)V

    return-void
.end method
