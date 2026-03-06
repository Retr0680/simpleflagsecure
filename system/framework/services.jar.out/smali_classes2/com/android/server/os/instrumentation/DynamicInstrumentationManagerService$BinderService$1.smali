.class Lcom/android/server/os/instrumentation/DynamicInstrumentationManagerService$BinderService$1;
.super Landroid/os/instrumentation/IOffsetCallback$Stub;
.source "DynamicInstrumentationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/os/instrumentation/DynamicInstrumentationManagerService$BinderService;->getExecutableMethodFileOffsets(Landroid/os/instrumentation/TargetProcess;Landroid/os/instrumentation/MethodDescriptor;Landroid/os/instrumentation/IOffsetCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Landroid/os/instrumentation/IOffsetCallback;


# direct methods
.method constructor <init>(Lcom/android/server/os/instrumentation/DynamicInstrumentationManagerService$BinderService;Landroid/os/instrumentation/IOffsetCallback;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/os/instrumentation/DynamicInstrumentationManagerService$BinderService;
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

    .line 82
    iput-object p2, p0, Lcom/android/server/os/instrumentation/DynamicInstrumentationManagerService$BinderService$1;->val$callback:Landroid/os/instrumentation/IOffsetCallback;

    invoke-direct {p0}, Landroid/os/instrumentation/IOffsetCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Landroid/os/instrumentation/ExecutableMethodFileOffsets;)V
    .locals 1
    .param p1, "result"    # Landroid/os/instrumentation/ExecutableMethodFileOffsets;

    .line 86
    :try_start_0
    iget-object v0, p0, Lcom/android/server/os/instrumentation/DynamicInstrumentationManagerService$BinderService$1;->val$callback:Landroid/os/instrumentation/IOffsetCallback;

    invoke-interface {v0, p1}, Landroid/os/instrumentation/IOffsetCallback;->onResult(Landroid/os/instrumentation/ExecutableMethodFileOffsets;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    goto :goto_0

    .line 87
    :catch_0
    move-exception v0

    .line 90
    :goto_0
    return-void
.end method
