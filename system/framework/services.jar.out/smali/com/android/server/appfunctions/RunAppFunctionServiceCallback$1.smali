.class Lcom/android/server/appfunctions/RunAppFunctionServiceCallback$1;
.super Landroid/app/appfunctions/IExecuteAppFunctionCallback$Stub;
.source "RunAppFunctionServiceCallback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/appfunctions/RunAppFunctionServiceCallback;->onServiceConnected(Landroid/app/appfunctions/IAppFunctionService;Lcom/android/server/appfunctions/RemoteServiceCaller$ServiceUsageCompleteListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/appfunctions/RunAppFunctionServiceCallback;

.field final synthetic val$serviceUsageCompleteListener:Lcom/android/server/appfunctions/RemoteServiceCaller$ServiceUsageCompleteListener;


# direct methods
.method constructor <init>(Lcom/android/server/appfunctions/RunAppFunctionServiceCallback;Lcom/android/server/appfunctions/RemoteServiceCaller$ServiceUsageCompleteListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/appfunctions/RunAppFunctionServiceCallback;
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

    .line 67
    iput-object p1, p0, Lcom/android/server/appfunctions/RunAppFunctionServiceCallback$1;->this$0:Lcom/android/server/appfunctions/RunAppFunctionServiceCallback;

    iput-object p2, p0, Lcom/android/server/appfunctions/RunAppFunctionServiceCallback$1;->val$serviceUsageCompleteListener:Lcom/android/server/appfunctions/RemoteServiceCaller$ServiceUsageCompleteListener;

    invoke-direct {p0}, Landroid/app/appfunctions/IExecuteAppFunctionCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/app/appfunctions/AppFunctionException;)V
    .locals 1
    .param p1, "error"    # Landroid/app/appfunctions/AppFunctionException;

    .line 76
    iget-object v0, p0, Lcom/android/server/appfunctions/RunAppFunctionServiceCallback$1;->this$0:Lcom/android/server/appfunctions/RunAppFunctionServiceCallback;

    invoke-static {v0}, Lcom/android/server/appfunctions/RunAppFunctionServiceCallback;->-$$Nest$fgetmSafeExecuteAppFunctionCallback(Lcom/android/server/appfunctions/RunAppFunctionServiceCallback;)Landroid/app/appfunctions/SafeOneTimeExecuteAppFunctionCallback;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/appfunctions/SafeOneTimeExecuteAppFunctionCallback;->onError(Landroid/app/appfunctions/AppFunctionException;)V

    .line 77
    iget-object v0, p0, Lcom/android/server/appfunctions/RunAppFunctionServiceCallback$1;->val$serviceUsageCompleteListener:Lcom/android/server/appfunctions/RemoteServiceCaller$ServiceUsageCompleteListener;

    invoke-interface {v0}, Lcom/android/server/appfunctions/RemoteServiceCaller$ServiceUsageCompleteListener;->onCompleted()V

    .line 78
    return-void
.end method

.method public onSuccess(Landroid/app/appfunctions/ExecuteAppFunctionResponse;)V
    .locals 1
    .param p1, "response"    # Landroid/app/appfunctions/ExecuteAppFunctionResponse;

    .line 70
    iget-object v0, p0, Lcom/android/server/appfunctions/RunAppFunctionServiceCallback$1;->this$0:Lcom/android/server/appfunctions/RunAppFunctionServiceCallback;

    invoke-static {v0}, Lcom/android/server/appfunctions/RunAppFunctionServiceCallback;->-$$Nest$fgetmSafeExecuteAppFunctionCallback(Lcom/android/server/appfunctions/RunAppFunctionServiceCallback;)Landroid/app/appfunctions/SafeOneTimeExecuteAppFunctionCallback;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/appfunctions/SafeOneTimeExecuteAppFunctionCallback;->onResult(Landroid/app/appfunctions/ExecuteAppFunctionResponse;)V

    .line 71
    iget-object v0, p0, Lcom/android/server/appfunctions/RunAppFunctionServiceCallback$1;->val$serviceUsageCompleteListener:Lcom/android/server/appfunctions/RemoteServiceCaller$ServiceUsageCompleteListener;

    invoke-interface {v0}, Lcom/android/server/appfunctions/RemoteServiceCaller$ServiceUsageCompleteListener;->onCompleted()V

    .line 72
    return-void
.end method
