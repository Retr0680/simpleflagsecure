.class Lcom/android/server/SensitiveContentProtectionManagerService$1;
.super Landroid/media/projection/MediaProjectionManager$Callback;
.source "SensitiveContentProtectionManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/SensitiveContentProtectionManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/SensitiveContentProtectionManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/SensitiveContentProtectionManagerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/SensitiveContentProtectionManagerService;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 192
    iput-object p1, p0, Lcom/android/server/SensitiveContentProtectionManagerService$1;->this$0:Lcom/android/server/SensitiveContentProtectionManagerService;

    invoke-direct {p0}, Landroid/media/projection/MediaProjectionManager$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public onStart(Landroid/media/projection/MediaProjectionInfo;)V
    .locals 3
    .param p1, "info"    # Landroid/media/projection/MediaProjectionInfo;

    .line 196
    const-string v0, "SensitiveContentProtectionManagerService.onProjectionStart"

    const-wide/32 v1, 0x80000

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 199
    :try_start_0
    iget-object v0, p0, Lcom/android/server/SensitiveContentProtectionManagerService$1;->this$0:Lcom/android/server/SensitiveContentProtectionManagerService;

    invoke-static {v0, p1}, Lcom/android/server/SensitiveContentProtectionManagerService;->-$$Nest$monProjectionStart(Lcom/android/server/SensitiveContentProtectionManagerService;Landroid/media/projection/MediaProjectionInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 201
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 202
    nop

    .line 203
    return-void

    .line 201
    :catchall_0
    move-exception v0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 202
    throw v0
.end method

.method public onStop(Landroid/media/projection/MediaProjectionInfo;)V
    .locals 3
    .param p1, "info"    # Landroid/media/projection/MediaProjectionInfo;

    .line 208
    const-string v0, "SensitiveContentProtectionManagerService.onProjectionStop"

    const-wide/32 v1, 0x80000

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 211
    :try_start_0
    iget-object v0, p0, Lcom/android/server/SensitiveContentProtectionManagerService$1;->this$0:Lcom/android/server/SensitiveContentProtectionManagerService;

    invoke-static {v0}, Lcom/android/server/SensitiveContentProtectionManagerService;->-$$Nest$monProjectionEnd(Lcom/android/server/SensitiveContentProtectionManagerService;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 213
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 214
    nop

    .line 215
    return-void

    .line 213
    :catchall_0
    move-exception v0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 214
    throw v0
.end method
