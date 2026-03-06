.class Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$2;
.super Landroid/app/appfunctions/ICancellationCallback$Stub;
.source "AppFunctionManagerServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;->bindAppFunctionServiceUnchecked(Landroid/app/appfunctions/ExecuteAppFunctionAidlRequest;Landroid/content/Intent;Landroid/os/UserHandle;Landroid/os/ICancellationSignal;Landroid/app/appfunctions/SafeOneTimeExecuteAppFunctionCallback;ILandroid/os/IBinder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$cancellationSignal:Landroid/os/CancellationSignal;


# direct methods
.method constructor <init>(Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;Landroid/os/CancellationSignal;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 470
    iput-object p2, p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$2;->val$cancellationSignal:Landroid/os/CancellationSignal;

    invoke-direct {p0}, Landroid/app/appfunctions/ICancellationCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public sendCancellationTransport(Landroid/os/ICancellationSignal;)V
    .locals 1
    .param p1, "cancellationTransport"    # Landroid/os/ICancellationSignal;

    .line 474
    iget-object v0, p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$2;->val$cancellationSignal:Landroid/os/CancellationSignal;

    invoke-virtual {v0, p1}, Landroid/os/CancellationSignal;->setRemote(Landroid/os/ICancellationSignal;)V

    .line 475
    return-void
.end method
