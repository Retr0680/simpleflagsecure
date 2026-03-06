.class Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$3;
.super Ljava/lang/Object;
.source "AppFunctionManagerServiceImpl.java"

# interfaces
.implements Landroid/app/appfunctions/SafeOneTimeExecuteAppFunctionCallback$CompletionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;->initializeSafeExecuteAppFunctionCallback(Landroid/app/appfunctions/ExecuteAppFunctionAidlRequest;Landroid/app/appfunctions/IExecuteAppFunctionCallback;I)Landroid/app/appfunctions/SafeOneTimeExecuteAppFunctionCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;

.field final synthetic val$callingUid:I

.field final synthetic val$requestInternal:Landroid/app/appfunctions/ExecuteAppFunctionAidlRequest;


# direct methods
.method constructor <init>(Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;Landroid/app/appfunctions/ExecuteAppFunctionAidlRequest;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 641
    iput-object p1, p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$3;->this$0:Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;

    iput-object p2, p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$3;->val$requestInternal:Landroid/app/appfunctions/ExecuteAppFunctionAidlRequest;

    iput p3, p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$3;->val$callingUid:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public finalizeOnError(Landroid/app/appfunctions/AppFunctionException;J)V
    .locals 7
    .param p1, "error"    # Landroid/app/appfunctions/AppFunctionException;
    .param p2, "executionStartTimeMillis"    # J

    .line 653
    iget-object v0, p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$3;->this$0:Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;

    invoke-static {v0}, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;->-$$Nest$fgetmLoggerWrapper(Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;)Lcom/android/server/appfunctions/AppFunctionsLoggerWrapper;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$3;->val$requestInternal:Landroid/app/appfunctions/ExecuteAppFunctionAidlRequest;

    .line 655
    invoke-virtual {p1}, Landroid/app/appfunctions/AppFunctionException;->getErrorCode()I

    move-result v3

    iget v4, p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$3;->val$callingUid:I

    .line 653
    move-wide v5, p2

    .end local p2    # "executionStartTimeMillis":J
    .local v5, "executionStartTimeMillis":J
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/appfunctions/AppFunctionsLoggerWrapper;->logAppFunctionError(Landroid/app/appfunctions/ExecuteAppFunctionAidlRequest;IIJ)V

    .line 658
    return-void
.end method

.method public finalizeOnSuccess(Landroid/app/appfunctions/ExecuteAppFunctionResponse;J)V
    .locals 7
    .param p1, "result"    # Landroid/app/appfunctions/ExecuteAppFunctionResponse;
    .param p2, "executionStartTimeMillis"    # J

    .line 646
    iget-object v0, p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$3;->this$0:Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;

    invoke-static {v0}, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;->-$$Nest$fgetmLoggerWrapper(Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;)Lcom/android/server/appfunctions/AppFunctionsLoggerWrapper;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$3;->val$requestInternal:Landroid/app/appfunctions/ExecuteAppFunctionAidlRequest;

    iget v4, p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$3;->val$callingUid:I

    move-object v3, p1

    move-wide v5, p2

    .end local p1    # "result":Landroid/app/appfunctions/ExecuteAppFunctionResponse;
    .end local p2    # "executionStartTimeMillis":J
    .local v3, "result":Landroid/app/appfunctions/ExecuteAppFunctionResponse;
    .local v5, "executionStartTimeMillis":J
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/appfunctions/AppFunctionsLoggerWrapper;->logAppFunctionSuccess(Landroid/app/appfunctions/ExecuteAppFunctionAidlRequest;Landroid/app/appfunctions/ExecuteAppFunctionResponse;IJ)V

    .line 648
    return-void
.end method
