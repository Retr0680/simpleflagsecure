.class public final synthetic Lcom/android/server/wm/Task$$ExternalSyntheticLambda28;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Landroid/view/SurfaceControl$Transaction;

.field public final synthetic f$1:[I


# direct methods
.method public synthetic constructor <init>(Landroid/view/SurfaceControl$Transaction;[I)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda28;->f$0:Landroid/view/SurfaceControl$Transaction;

    iput-object p2, p0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda28;->f$1:[I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda28;->f$0:Landroid/view/SurfaceControl$Transaction;

    iget-object v1, p0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda28;->f$1:[I

    check-cast p1, Lcom/android/server/wm/TaskFragment;

    invoke-static {v0, v1, p1}, Lcom/android/server/wm/Task;->$r8$lambda$iQaicVpm_4CmaW_6h7_dLKK1AYM(Landroid/view/SurfaceControl$Transaction;[ILcom/android/server/wm/TaskFragment;)V

    return-void
.end method
