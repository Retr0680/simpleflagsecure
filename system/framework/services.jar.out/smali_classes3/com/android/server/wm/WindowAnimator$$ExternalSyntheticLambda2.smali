.class public final synthetic Lcom/android/server/wm/WindowAnimator$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/SurfaceControl$TransactionCommittedListener;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/WindowAnimator;

.field public final synthetic f$1:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/WindowAnimator;Ljava/util/ArrayList;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/WindowAnimator$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/wm/WindowAnimator;

    iput-object p2, p0, Lcom/android/server/wm/WindowAnimator$$ExternalSyntheticLambda2;->f$1:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final onTransactionCommitted()V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/android/server/wm/WindowAnimator$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/wm/WindowAnimator;

    iget-object v1, p0, Lcom/android/server/wm/WindowAnimator$$ExternalSyntheticLambda2;->f$1:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Lcom/android/server/wm/WindowAnimator;->$r8$lambda$YA-_zT1Nyp9vmAAkWN_rtDVYlnE(Lcom/android/server/wm/WindowAnimator;Ljava/util/ArrayList;)V

    return-void
.end method
