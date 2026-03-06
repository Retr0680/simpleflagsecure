.class Lcom/android/server/appop/AppOpsService$5;
.super Landroid/content/BroadcastReceiver;
.source "AppOpsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/appop/AppOpsService;->systemReady()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/appop/AppOpsService;


# direct methods
.method constructor <init>(Lcom/android/server/appop/AppOpsService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/appop/AppOpsService;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1189
    iput-object p1, p0, Lcom/android/server/appop/AppOpsService$5;->this$0:Lcom/android/server/appop/AppOpsService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 16
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 1192
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    const-string v0, "android.intent.extra.changed_uid_list"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v3

    .line 1193
    .local v3, "changedUids":[I
    const-string v0, "android.intent.extra.changed_package_list"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 1195
    .local v4, "changedPkgs":[Ljava/lang/String;
    invoke-static {}, Lcom/android/server/appop/AppOpsService;->-$$Nest$sfgetOPS_RESTRICTED_ON_SUSPEND()[I

    move-result-object v0

    array-length v5, v0

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v5, :cond_4

    aget v9, v0, v6

    .line 1197
    .local v9, "code":I
    iget-object v7, v1, Lcom/android/server/appop/AppOpsService$5;->this$0:Lcom/android/server/appop/AppOpsService;

    monitor-enter v7

    .line 1198
    :try_start_0
    iget-object v8, v1, Lcom/android/server/appop/AppOpsService$5;->this$0:Lcom/android/server/appop/AppOpsService;

    invoke-static {v8}, Lcom/android/server/appop/AppOpsService;->-$$Nest$fgetmOpModeWatchers(Lcom/android/server/appop/AppOpsService;)Landroid/util/SparseArray;

    move-result-object v8

    invoke-virtual {v8, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/util/ArraySet;

    .line 1199
    .local v8, "onModeChangedListeners":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/appop/OnOpModeChangedListener;>;"
    if-nez v8, :cond_0

    .line 1200
    monitor-exit v7

    goto :goto_3

    .line 1203
    .end local v8    # "onModeChangedListeners":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/appop/OnOpModeChangedListener;>;"
    :catchall_0
    move-exception v0

    goto :goto_4

    .line 1202
    .restart local v8    # "onModeChangedListeners":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/appop/OnOpModeChangedListener;>;"
    :cond_0
    new-instance v10, Landroid/util/ArraySet;

    invoke-direct {v10, v8}, Landroid/util/ArraySet;-><init>(Landroid/util/ArraySet;)V

    move-object v8, v10

    .line 1203
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1204
    const/4 v7, 0x0

    move v13, v7

    .local v13, "i":I
    :goto_1
    array-length v7, v3

    if-ge v13, v7, :cond_3

    .line 1205
    aget v10, v3, v13

    .line 1206
    .local v10, "changedUid":I
    aget-object v11, v4, v13

    .line 1209
    .local v11, "changedPkg":Ljava/lang/String;
    new-instance v7, Landroid/util/ArraySet;

    invoke-direct {v7}, Landroid/util/ArraySet;-><init>()V

    move-object v14, v7

    .line 1210
    .local v14, "devices":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v7, "default:0"

    invoke-interface {v14, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1212
    iget-object v7, v1, Lcom/android/server/appop/AppOpsService$5;->this$0:Lcom/android/server/appop/AppOpsService;

    invoke-static {v7}, Lcom/android/server/appop/AppOpsService;->-$$Nest$fgetmVirtualDeviceManagerInternal(Lcom/android/server/appop/AppOpsService;)Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 1213
    iget-object v7, v1, Lcom/android/server/appop/AppOpsService$5;->this$0:Lcom/android/server/appop/AppOpsService;

    invoke-static {v7}, Lcom/android/server/appop/AppOpsService;->-$$Nest$fgetmVirtualDeviceManagerInternal(Lcom/android/server/appop/AppOpsService;)Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

    move-result-object v7

    .line 1214
    invoke-virtual {v7}, Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;->getAllPersistentDeviceIds()Ljava/util/Set;

    move-result-object v7

    .line 1213
    invoke-interface {v14, v7}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 1216
    :cond_1
    invoke-interface {v14}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_2
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    nop

    if-eqz v7, :cond_2

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    move-object v12, v7

    check-cast v12, Ljava/lang/String;

    .line 1217
    .local v12, "device":Ljava/lang/String;
    iget-object v7, v1, Lcom/android/server/appop/AppOpsService$5;->this$0:Lcom/android/server/appop/AppOpsService;

    invoke-static/range {v7 .. v12}, Lcom/android/server/appop/AppOpsService;->-$$Nest$mnotifyOpChanged(Lcom/android/server/appop/AppOpsService;Landroid/util/ArraySet;IILjava/lang/String;Ljava/lang/String;)V

    .line 1219
    .end local v12    # "device":Ljava/lang/String;
    goto :goto_2

    .line 1204
    .end local v10    # "changedUid":I
    .end local v11    # "changedPkg":Ljava/lang/String;
    .end local v14    # "devices":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_2
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 1195
    .end local v8    # "onModeChangedListeners":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/appop/OnOpModeChangedListener;>;"
    .end local v9    # "code":I
    .end local v13    # "i":I
    :cond_3
    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 1203
    .restart local v9    # "code":I
    :goto_4
    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 1222
    .end local v9    # "code":I
    :cond_4
    return-void
.end method
