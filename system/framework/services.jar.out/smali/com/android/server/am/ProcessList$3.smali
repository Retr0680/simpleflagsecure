.class Lcom/android/server/am/ProcessList$3;
.super Ljava/lang/Object;
.source "ProcessList.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/ProcessList;->startProcess(Lcom/android/server/am/HostingRecord;Ljava/lang/String;Lcom/android/server/am/ProcessRecord;I[IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Landroid/os/Process$ProcessStartResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ProcessList;

.field final synthetic val$app:Lcom/android/server/am/ProcessRecord;

.field final synthetic val$startResult:Landroid/os/Process$ProcessStartResult;


# direct methods
.method constructor <init>(Lcom/android/server/am/ProcessList;Lcom/android/server/am/ProcessRecord;Landroid/os/Process$ProcessStartResult;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/am/ProcessList;
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

    .line 2732
    iput-object p1, p0, Lcom/android/server/am/ProcessList$3;->this$0:Lcom/android/server/am/ProcessList;

    iput-object p2, p0, Lcom/android/server/am/ProcessList$3;->val$app:Lcom/android/server/am/ProcessRecord;

    iput-object p3, p0, Lcom/android/server/am/ProcessList$3;->val$startResult:Landroid/os/Process$ProcessStartResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 2736
    const-string v0, ", processName = "

    const-string v1, "ActivityManager"

    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/ProcessList$3;->val$app:Lcom/android/server/am/ProcessRecord;

    iget v2, v2, Lcom/android/server/am/ProcessRecord;->uid:I

    const v3, 0x186a0

    rem-int/2addr v2, v3

    const/16 v3, 0x2710

    if-le v2, v3, :cond_0

    iget-object v2, p0, Lcom/android/server/am/ProcessList$3;->val$app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v2}, Lcom/android/server/am/ProcessRecord;->getHostingRecord()Lcom/android/server/am/HostingRecord;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/am/HostingRecord;->isTopApp()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/server/am/ProcessList$3;->this$0:Lcom/android/server/am/ProcessList;

    iget-object v3, p0, Lcom/android/server/am/ProcessList$3;->val$app:Lcom/android/server/am/ProcessRecord;

    iget-object v3, v3, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 2737
    invoke-static {v2, v3}, Lcom/android/server/am/ProcessList;->-$$Nest$misNothingApp(Lcom/android/server/am/ProcessList;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/server/am/ProcessList$3;->this$0:Lcom/android/server/am/ProcessList;

    iget-object v3, p0, Lcom/android/server/am/ProcessList$3;->val$app:Lcom/android/server/am/ProcessRecord;

    iget-object v3, v3, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 2738
    invoke-static {v2, v3}, Lcom/android/server/am/ProcessList;->-$$Nest$misInWhiteList(Lcom/android/server/am/ProcessList;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2739
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "uid = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/am/ProcessList$3;->val$app:Lcom/android/server/am/ProcessRecord;

    iget v3, v3, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", pid = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/am/ProcessList$3;->val$startResult:Landroid/os/Process$ProcessStartResult;

    iget v3, v3, Landroid/os/Process$ProcessStartResult;->pid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/am/ProcessList$3;->val$app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v3}, Lcom/android/server/am/ProcessRecord;->getProcessName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " is not top app, set nt foreground"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2740
    iget-object v2, p0, Lcom/android/server/am/ProcessList$3;->val$startResult:Landroid/os/Process$ProcessStartResult;

    iget v2, v2, Landroid/os/Process$ProcessStartResult;->pid:I

    const/16 v3, 0x9

    invoke-static {v2, v3}, Landroid/os/Process;->setProcessGroup(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2742
    :catch_0
    move-exception v2

    goto :goto_1

    .line 2744
    :cond_0
    :goto_0
    goto :goto_2

    .line 2742
    :goto_1
    nop

    .line 2743
    .local v2, "ex":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "exception: pid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/am/ProcessList$3;->val$startResult:Landroid/os/Process$ProcessStartResult;

    iget v4, v4, Landroid/os/Process$ProcessStartResult;->pid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/am/ProcessList$3;->val$app:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2745
    .end local v2    # "ex":Ljava/lang/Exception;
    :goto_2
    return-void
.end method
