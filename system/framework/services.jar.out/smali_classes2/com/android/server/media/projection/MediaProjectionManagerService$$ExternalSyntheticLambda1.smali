.class public final synthetic Lcom/android/server/media/projection/MediaProjectionManagerService$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/media/projection/MediaProjectionManagerService;

.field public final synthetic f$1:Landroid/media/projection/MediaProjectionEvent;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/media/projection/MediaProjectionManagerService;Landroid/media/projection/MediaProjectionEvent;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/media/projection/MediaProjectionManagerService;

    iput-object p2, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$$ExternalSyntheticLambda1;->f$1:Landroid/media/projection/MediaProjectionEvent;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/media/projection/MediaProjectionManagerService;

    iget-object v1, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$$ExternalSyntheticLambda1;->f$1:Landroid/media/projection/MediaProjectionEvent;

    invoke-static {v0, v1}, Lcom/android/server/media/projection/MediaProjectionManagerService;->$r8$lambda$VZMDiw60tHV95Fyz9QDE__iDpMs(Lcom/android/server/media/projection/MediaProjectionManagerService;Landroid/media/projection/MediaProjectionEvent;)V

    return-void
.end method
