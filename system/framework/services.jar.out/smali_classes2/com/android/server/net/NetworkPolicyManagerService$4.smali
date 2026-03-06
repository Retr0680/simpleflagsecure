.class Lcom/android/server/net/NetworkPolicyManagerService$4;
.super Landroid/app/UidObserver;
.source "NetworkPolicyManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/net/NetworkPolicyManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/net/NetworkPolicyManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/net/NetworkPolicyManagerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/net/NetworkPolicyManagerService;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1232
    iput-object p1, p0, Lcom/android/server/net/NetworkPolicyManagerService$4;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-direct {p0}, Landroid/app/UidObserver;-><init>()V

    return-void
.end method

.method private isUidStateChangeRelevant(Lcom/android/server/net/NetworkPolicyManagerService$UidStateCallbackInfo;IJI)Z
    .locals 7
    .param p1, "previousInfo"    # Lcom/android/server/net/NetworkPolicyManagerService$UidStateCallbackInfo;
    .param p2, "newProcState"    # I
    .param p3, "newProcStateSeq"    # J
    .param p5, "newCapability"    # I

    .line 1242
    iget-wide v0, p1, Lcom/android/server/net/NetworkPolicyManagerService$UidStateCallbackInfo;->procStateSeq:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 1244
    return v1

    .line 1246
    :cond_0
    iget-wide v2, p1, Lcom/android/server/net/NetworkPolicyManagerService$UidStateCallbackInfo;->procStateSeq:J

    cmp-long v0, p3, v2

    const/4 v2, 0x0

    if-gtz v0, :cond_1

    .line 1248
    return v2

    .line 1250
    :cond_1
    iget v0, p1, Lcom/android/server/net/NetworkPolicyManagerService$UidStateCallbackInfo;->procState:I

    .line 1251
    .local v0, "previousProcState":I
    const/4 v3, 0x3

    if-le v0, v3, :cond_2

    if-gt p2, v3, :cond_3

    :cond_2
    goto :goto_4

    .line 1261
    :cond_3
    const/4 v3, 0x5

    if-gt v0, v3, :cond_4

    move v4, v1

    goto :goto_0

    :cond_4
    move v4, v2

    :goto_0
    if-gt p2, v3, :cond_5

    move v3, v1

    goto :goto_1

    :cond_5
    move v3, v2

    :goto_1
    if-eq v4, v3, :cond_6

    .line 1265
    return v1

    .line 1267
    :cond_6
    const/16 v3, 0xc

    if-lt v0, v3, :cond_7

    move v4, v1

    goto :goto_2

    :cond_7
    move v4, v2

    :goto_2
    if-lt p2, v3, :cond_8

    move v5, v1

    goto :goto_3

    :cond_8
    move v5, v2

    :goto_3
    if-eq v4, v5, :cond_9

    .line 1271
    return v1

    .line 1273
    :cond_9
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService$4;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v4}, Lcom/android/server/net/NetworkPolicyManagerService;->-$$Nest$fgetmUseDifferentDelaysForBackgroundChain(Lcom/android/server/net/NetworkPolicyManagerService;)Z

    move-result v4

    if-eqz v4, :cond_a

    if-lt p2, v3, :cond_a

    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService$4;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    .line 1275
    invoke-static {v3, p2}, Lcom/android/server/net/NetworkPolicyManagerService;->-$$Nest$mgetBackgroundTransitioningDelay(Lcom/android/server/net/NetworkPolicyManagerService;I)J

    move-result-wide v3

    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService$4;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    .line 1276
    invoke-static {v5, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->-$$Nest$mgetBackgroundTransitioningDelay(Lcom/android/server/net/NetworkPolicyManagerService;I)J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-gez v3, :cond_a

    .line 1279
    return v1

    .line 1281
    :cond_a
    const/16 v3, 0x28

    .line 1283
    .local v3, "networkCapabilities":I
    iget v4, p1, Lcom/android/server/net/NetworkPolicyManagerService$UidStateCallbackInfo;->capability:I

    and-int/lit8 v4, v4, 0x28

    and-int/lit8 v5, p5, 0x28

    if-eq v4, v5, :cond_b

    .line 1285
    return v1

    .line 1287
    :cond_b
    return v2

    .line 1259
    .end local v3    # "networkCapabilities":I
    :goto_4
    return v1
.end method


# virtual methods
.method public onUidGone(IZ)V
    .locals 3
    .param p1, "uid"    # I
    .param p2, "disabled"    # Z

    .line 1310
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService$4;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v0}, Lcom/android/server/net/NetworkPolicyManagerService;->-$$Nest$fgetmUidStateCallbackInfos(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/util/SparseArray;

    move-result-object v0

    monitor-enter v0

    .line 1311
    :try_start_0
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService$4;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v1}, Lcom/android/server/net/NetworkPolicyManagerService;->-$$Nest$fgetmUidStateCallbackInfos(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 1312
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1313
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService$4;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidEventHandler:Landroid/os/Handler;

    const/16 v1, 0x65

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1314
    return-void

    .line 1312
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public onUidStateChanged(IIJI)V
    .locals 8
    .param p1, "uid"    # I
    .param p2, "procState"    # I
    .param p3, "procStateSeq"    # J
    .param p5, "capability"    # I

    .line 1292
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService$4;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v0}, Lcom/android/server/net/NetworkPolicyManagerService;->-$$Nest$fgetmUidStateCallbackInfos(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/util/SparseArray;

    move-result-object v1

    monitor-enter v1

    .line 1293
    :try_start_0
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService$4;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v0}, Lcom/android/server/net/NetworkPolicyManagerService;->-$$Nest$fgetmUidStateCallbackInfos(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/net/NetworkPolicyManagerService$UidStateCallbackInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 1294
    .local v0, "callbackInfo":Lcom/android/server/net/NetworkPolicyManagerService$UidStateCallbackInfo;
    if-nez v0, :cond_0

    .line 1295
    :try_start_1
    new-instance v2, Lcom/android/server/net/NetworkPolicyManagerService$UidStateCallbackInfo;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/android/server/net/NetworkPolicyManagerService$UidStateCallbackInfo;-><init>(Lcom/android/server/net/NetworkPolicyManagerService-IA;)V

    move-object v0, v2

    .line 1296
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService$4;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v2}, Lcom/android/server/net/NetworkPolicyManagerService;->-$$Nest$fgetmUidStateCallbackInfos(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v2, v0

    goto :goto_0

    .line 1306
    .end local v0    # "callbackInfo":Lcom/android/server/net/NetworkPolicyManagerService$UidStateCallbackInfo;
    :catchall_0
    move-exception v0

    move v3, p1

    move v4, p2

    move-wide v5, p3

    move v7, p5

    move-object p3, p0

    goto :goto_2

    .line 1294
    .restart local v0    # "callbackInfo":Lcom/android/server/net/NetworkPolicyManagerService$UidStateCallbackInfo;
    :cond_0
    move-object v2, v0

    .line 1298
    .end local v0    # "callbackInfo":Lcom/android/server/net/NetworkPolicyManagerService$UidStateCallbackInfo;
    .local v2, "callbackInfo":Lcom/android/server/net/NetworkPolicyManagerService$UidStateCallbackInfo;
    :goto_0
    move v4, p2

    move-wide v5, p3

    move v7, p5

    move-object v3, v2

    move-object v2, p0

    .end local v2    # "callbackInfo":Lcom/android/server/net/NetworkPolicyManagerService$UidStateCallbackInfo;
    .end local p2    # "procState":I
    .end local p3    # "procStateSeq":J
    .end local p5    # "capability":I
    .local v3, "callbackInfo":Lcom/android/server/net/NetworkPolicyManagerService$UidStateCallbackInfo;
    .local v4, "procState":I
    .local v5, "procStateSeq":J
    .local v7, "capability":I
    :try_start_2
    invoke-direct/range {v2 .. v7}, Lcom/android/server/net/NetworkPolicyManagerService$4;->isUidStateChangeRelevant(Lcom/android/server/net/NetworkPolicyManagerService$UidStateCallbackInfo;IJI)Z

    move-result p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-object p3, v2

    move-object v2, v3

    .end local v3    # "callbackInfo":Lcom/android/server/net/NetworkPolicyManagerService$UidStateCallbackInfo;
    .restart local v2    # "callbackInfo":Lcom/android/server/net/NetworkPolicyManagerService$UidStateCallbackInfo;
    if-eqz p2, :cond_1

    .line 1299
    move v3, p1

    .end local p1    # "uid":I
    .local v3, "uid":I
    :try_start_3
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/net/NetworkPolicyManagerService$UidStateCallbackInfo;->update(IIJI)V

    .line 1300
    iget-boolean p1, v2, Lcom/android/server/net/NetworkPolicyManagerService$UidStateCallbackInfo;->isPending:Z

    if-nez p1, :cond_2

    .line 1301
    iget-object p1, p3, Lcom/android/server/net/NetworkPolicyManagerService$4;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    iget-object p1, p1, Lcom/android/server/net/NetworkPolicyManagerService;->mUidEventHandler:Landroid/os/Handler;

    const/16 p2, 0x64

    const/4 p4, 0x0

    invoke-virtual {p1, p2, v3, p4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    .line 1302
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 1303
    const/4 p1, 0x1

    iput-boolean p1, v2, Lcom/android/server/net/NetworkPolicyManagerService$UidStateCallbackInfo;->isPending:Z

    goto :goto_1

    .line 1306
    .end local v2    # "callbackInfo":Lcom/android/server/net/NetworkPolicyManagerService$UidStateCallbackInfo;
    :catchall_1
    move-exception v0

    goto :goto_2

    .line 1298
    .end local v3    # "uid":I
    .restart local v2    # "callbackInfo":Lcom/android/server/net/NetworkPolicyManagerService$UidStateCallbackInfo;
    .restart local p1    # "uid":I
    :cond_1
    move v3, p1

    .line 1306
    .end local v2    # "callbackInfo":Lcom/android/server/net/NetworkPolicyManagerService$UidStateCallbackInfo;
    .end local p1    # "uid":I
    .restart local v3    # "uid":I
    :cond_2
    :goto_1
    monitor-exit v1

    .line 1307
    return-void

    .line 1306
    .end local v3    # "uid":I
    .restart local p1    # "uid":I
    :catchall_2
    move-exception v0

    move v3, p1

    move-object p3, v2

    .end local p1    # "uid":I
    .restart local v3    # "uid":I
    goto :goto_2

    .end local v3    # "uid":I
    .end local v4    # "procState":I
    .end local v5    # "procStateSeq":J
    .end local v7    # "capability":I
    .restart local p1    # "uid":I
    .restart local p2    # "procState":I
    .restart local p3    # "procStateSeq":J
    .restart local p5    # "capability":I
    :catchall_3
    move-exception v0

    move v3, p1

    move v4, p2

    move-wide v5, p3

    move v7, p5

    move-object p3, p0

    .end local p1    # "uid":I
    .end local p2    # "procState":I
    .end local p3    # "procStateSeq":J
    .end local p5    # "capability":I
    .restart local v3    # "uid":I
    .restart local v4    # "procState":I
    .restart local v5    # "procStateSeq":J
    .restart local v7    # "capability":I
    :goto_2
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method
