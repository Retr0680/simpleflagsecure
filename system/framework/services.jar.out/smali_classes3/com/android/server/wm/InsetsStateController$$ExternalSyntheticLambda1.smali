.class public final synthetic Lcom/android/server/wm/InsetsStateController$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/InsetsStateController;

.field public final synthetic f$1:I

.field public final synthetic f$2:Landroid/util/SparseLongArray;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/InsetsStateController;ILandroid/util/SparseLongArray;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/InsetsStateController$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/wm/InsetsStateController;

    iput p2, p0, Lcom/android/server/wm/InsetsStateController$$ExternalSyntheticLambda1;->f$1:I

    iput-object p3, p0, Lcom/android/server/wm/InsetsStateController$$ExternalSyntheticLambda1;->f$2:Landroid/util/SparseLongArray;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 0
    iget-object v0, p0, Lcom/android/server/wm/InsetsStateController$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/wm/InsetsStateController;

    iget v1, p0, Lcom/android/server/wm/InsetsStateController$$ExternalSyntheticLambda1;->f$1:I

    iget-object v2, p0, Lcom/android/server/wm/InsetsStateController$$ExternalSyntheticLambda1;->f$2:Landroid/util/SparseLongArray;

    invoke-static {v0, v1, v2}, Lcom/android/server/wm/InsetsStateController;->$r8$lambda$a0HV9ad2Wd_wQT3ba_TprluaiHw(Lcom/android/server/wm/InsetsStateController;ILandroid/util/SparseLongArray;)V

    return-void
.end method
