.class final Lcom/android/server/os/instrumentation/DynamicInstrumentationManagerService$BinderService;
.super Landroid/os/instrumentation/IDynamicInstrumentationManager$Stub;
.source "DynamicInstrumentationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/os/instrumentation/DynamicInstrumentationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "BinderService"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/os/instrumentation/DynamicInstrumentationManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/os/instrumentation/DynamicInstrumentationManagerService;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 64
    iput-object p1, p0, Lcom/android/server/os/instrumentation/DynamicInstrumentationManagerService$BinderService;->this$0:Lcom/android/server/os/instrumentation/DynamicInstrumentationManagerService;

    invoke-direct {p0}, Landroid/os/instrumentation/IDynamicInstrumentationManager$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/os/instrumentation/DynamicInstrumentationManagerService;Lcom/android/server/os/instrumentation/DynamicInstrumentationManagerService-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/os/instrumentation/DynamicInstrumentationManagerService$BinderService;-><init>(Lcom/android/server/os/instrumentation/DynamicInstrumentationManagerService;)V

    return-void
.end method


# virtual methods
.method public getExecutableMethodFileOffsets(Landroid/os/instrumentation/TargetProcess;Landroid/os/instrumentation/MethodDescriptor;Landroid/os/instrumentation/IOffsetCallback;)V
    .locals 7
    .param p1, "targetProcess"    # Landroid/os/instrumentation/TargetProcess;
    .param p2, "methodDescriptor"    # Landroid/os/instrumentation/MethodDescriptor;
    .param p3, "callback"    # Landroid/os/instrumentation/IOffsetCallback;

    .line 71
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/art/flags/Flags;->executableMethodFileOffsets()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 74
    iget-object v0, p0, Lcom/android/server/os/instrumentation/DynamicInstrumentationManagerService$BinderService;->this$0:Lcom/android/server/os/instrumentation/DynamicInstrumentationManagerService;

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.DYNAMIC_INSTRUMENTATION"

    const-string v2, "Caller must have DYNAMIC_INSTRUMENTATION permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    iget-object v0, p1, Landroid/os/instrumentation/TargetProcess;->processName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 78
    iget-object v0, p1, Landroid/os/instrumentation/TargetProcess;->processName:Ljava/lang/String;

    const-string/jumbo v1, "system_server"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 80
    :try_start_0
    iget-object v0, p0, Lcom/android/server/os/instrumentation/DynamicInstrumentationManagerService$BinderService;->this$0:Lcom/android/server/os/instrumentation/DynamicInstrumentationManagerService;

    invoke-static {v0}, Lcom/android/server/os/instrumentation/DynamicInstrumentationManagerService;->-$$Nest$fgetmAmInternal(Lcom/android/server/os/instrumentation/DynamicInstrumentationManagerService;)Landroid/app/ActivityManagerInternal;

    move-result-object v1

    iget-object v2, p1, Landroid/os/instrumentation/TargetProcess;->processName:Ljava/lang/String;

    iget v3, p1, Landroid/os/instrumentation/TargetProcess;->pid:I

    iget v4, p1, Landroid/os/instrumentation/TargetProcess;->uid:I

    new-instance v6, Lcom/android/server/os/instrumentation/DynamicInstrumentationManagerService$BinderService$1;

    invoke-direct {v6, p0, p3}, Lcom/android/server/os/instrumentation/DynamicInstrumentationManagerService$BinderService$1;-><init>(Lcom/android/server/os/instrumentation/DynamicInstrumentationManagerService$BinderService;Landroid/os/instrumentation/IOffsetCallback;)V
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_1

    move-object v5, p2

    .end local p2    # "methodDescriptor":Landroid/os/instrumentation/MethodDescriptor;
    .local v5, "methodDescriptor":Landroid/os/instrumentation/MethodDescriptor;
    :try_start_1
    invoke-virtual/range {v1 .. v6}, Landroid/app/ActivityManagerInternal;->getExecutableMethodFileOffsets(Ljava/lang/String;IILandroid/os/instrumentation/MethodDescriptor;Landroid/os/instrumentation/IOffsetCallback;)V
    :try_end_1
    .catch Ljava/util/NoSuchElementException; {:try_start_1 .. :try_end_1} :catch_0

    .line 92
    return-void

    .line 93
    :catch_0
    move-exception v0

    move-object p2, v0

    goto :goto_0

    .end local v5    # "methodDescriptor":Landroid/os/instrumentation/MethodDescriptor;
    .restart local p2    # "methodDescriptor":Landroid/os/instrumentation/MethodDescriptor;
    :catch_1
    move-exception v0

    move-object v5, p2

    move-object p2, v0

    .line 94
    .restart local v5    # "methodDescriptor":Landroid/os/instrumentation/MethodDescriptor;
    .local p2, "e":Ljava/util/NoSuchElementException;
    :goto_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The specified app process cannot be found."

    invoke-direct {v0, v1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 99
    .end local v5    # "methodDescriptor":Landroid/os/instrumentation/MethodDescriptor;
    .local p2, "methodDescriptor":Landroid/os/instrumentation/MethodDescriptor;
    :cond_0
    move-object v5, p2

    .line 100
    .end local p2    # "methodDescriptor":Landroid/os/instrumentation/MethodDescriptor;
    .restart local v5    # "methodDescriptor":Landroid/os/instrumentation/MethodDescriptor;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p2

    .line 99
    invoke-static {p2, v5}, Landroid/os/instrumentation/MethodDescriptorParser;->parseMethodDescriptor(Ljava/lang/ClassLoader;Landroid/os/instrumentation/MethodDescriptor;)Ljava/lang/reflect/Executable;

    move-result-object p2

    .line 102
    .local p2, "executable":Ljava/lang/reflect/Executable;
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/art/flags/Flags;->executableMethodFileOffsetsV2()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 103
    invoke-static {p2}, Ldalvik/system/VMDebug;->getExecutableMethodFileOffsets(Ljava/lang/reflect/Executable;)Ldalvik/system/VMDebug$ExecutableMethodFileOffsets;

    move-result-object v0

    move-object v1, v0

    .local v0, "location":Ldalvik/system/VMDebug$ExecutableMethodFileOffsets;
    goto :goto_1

    .line 104
    .end local v0    # "location":Ldalvik/system/VMDebug$ExecutableMethodFileOffsets;
    :cond_1
    instance-of v0, p2, Ljava/lang/reflect/Method;

    if-eqz v0, :cond_3

    .line 105
    move-object v0, p2

    check-cast v0, Ljava/lang/reflect/Method;

    invoke-static {v0}, Ldalvik/system/VMDebug;->getExecutableMethodFileOffsets(Ljava/lang/reflect/Method;)Ldalvik/system/VMDebug$ExecutableMethodFileOffsets;

    move-result-object v0

    move-object v1, v0

    .line 111
    .local v1, "location":Ldalvik/system/VMDebug$ExecutableMethodFileOffsets;
    :goto_1
    if-nez v1, :cond_2

    .line 112
    const/4 v0, 0x0

    :try_start_2
    invoke-interface {p3, v0}, Landroid/os/instrumentation/IOffsetCallback;->onResult(Landroid/os/instrumentation/ExecutableMethodFileOffsets;)V

    .line 113
    return-void

    .line 121
    :catch_2
    move-exception v0

    goto :goto_2

    .line 116
    :cond_2
    new-instance v0, Landroid/os/instrumentation/ExecutableMethodFileOffsets;

    invoke-direct {v0}, Landroid/os/instrumentation/ExecutableMethodFileOffsets;-><init>()V

    .line 117
    .local v0, "ret":Landroid/os/instrumentation/ExecutableMethodFileOffsets;
    invoke-virtual {v1}, Ldalvik/system/VMDebug$ExecutableMethodFileOffsets;->getContainerPath()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroid/os/instrumentation/ExecutableMethodFileOffsets;->containerPath:Ljava/lang/String;

    .line 118
    invoke-virtual {v1}, Ldalvik/system/VMDebug$ExecutableMethodFileOffsets;->getContainerOffset()J

    move-result-wide v2

    iput-wide v2, v0, Landroid/os/instrumentation/ExecutableMethodFileOffsets;->containerOffset:J

    .line 119
    invoke-virtual {v1}, Ldalvik/system/VMDebug$ExecutableMethodFileOffsets;->getMethodOffset()J

    move-result-wide v2

    iput-wide v2, v0, Landroid/os/instrumentation/ExecutableMethodFileOffsets;->methodOffset:J

    .line 120
    invoke-interface {p3, v0}, Landroid/os/instrumentation/IOffsetCallback;->onResult(Landroid/os/instrumentation/ExecutableMethodFileOffsets;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    .line 123
    .end local v0    # "ret":Landroid/os/instrumentation/ExecutableMethodFileOffsets;
    nop

    .line 124
    return-void

    .line 121
    :goto_2
    nop

    .line 122
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Failed to invoke result callback"

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 107
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "location":Ldalvik/system/VMDebug$ExecutableMethodFileOffsets;
    :cond_3
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 72
    .end local v5    # "methodDescriptor":Landroid/os/instrumentation/MethodDescriptor;
    .local p2, "methodDescriptor":Landroid/os/instrumentation/MethodDescriptor;
    :cond_4
    move-object v5, p2

    .end local p2    # "methodDescriptor":Landroid/os/instrumentation/MethodDescriptor;
    .restart local v5    # "methodDescriptor":Landroid/os/instrumentation/MethodDescriptor;
    new-instance p2, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p2}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p2
.end method
