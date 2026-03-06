.class public final synthetic Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda10;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/BackgroundActivityStartController;

.field public final synthetic f$1:I

.field public final synthetic f$2:Landroid/os/IBinder;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/BackgroundActivityStartController;ILandroid/os/IBinder;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda10;->f$0:Lcom/android/server/wm/BackgroundActivityStartController;

    iput p2, p0, Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda10;->f$1:I

    iput-object p3, p0, Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda10;->f$2:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public final binderDied()V
    .locals 3

    .line 0
    iget-object v0, p0, Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda10;->f$0:Lcom/android/server/wm/BackgroundActivityStartController;

    iget v1, p0, Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda10;->f$1:I

    iget-object v2, p0, Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda10;->f$2:Landroid/os/IBinder;

    invoke-static {v0, v1, v2}, Lcom/android/server/wm/BackgroundActivityStartController;->$r8$lambda$BSn_PZ1Gf7aRLCU8NHv6pxgvanA(Lcom/android/server/wm/BackgroundActivityStartController;ILandroid/os/IBinder;)V

    return-void
.end method
