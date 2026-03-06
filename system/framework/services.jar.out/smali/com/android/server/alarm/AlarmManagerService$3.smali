.class Lcom/android/server/alarm/AlarmManagerService$3;
.super Lcom/android/internal/app/IAppOpsCallback$Stub;
.source "AlarmManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/alarm/AlarmManagerService;->onBootPhase(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/alarm/AlarmManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/alarm/AlarmManagerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/alarm/AlarmManagerService;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 2014
    iput-object p1, p0, Lcom/android/server/alarm/AlarmManagerService$3;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-direct {p0}, Lcom/android/internal/app/IAppOpsCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public opChanged(IILjava/lang/String;Ljava/lang/String;)V
    .locals 10
    .param p1, "op"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "persistentDeviceId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2018
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 2019
    .local v0, "userId":I
    const/16 v1, 0x6b

    if-ne p1, v1, :cond_11

    .line 2020
    invoke-static {p3, v0}, Lcom/android/server/alarm/AlarmManagerService;->-$$Nest$smisExactAlarmChangeEnabled(Ljava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_9

    .line 2023
    :cond_0
    iget-object v2, p0, Lcom/android/server/alarm/AlarmManagerService$3;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-virtual {v2, p3, p2}, Lcom/android/server/alarm/AlarmManagerService;->hasUseExactAlarmInternal(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2024
    return-void

    .line 2026
    :cond_1
    iget-object v2, p0, Lcom/android/server/alarm/AlarmManagerService$3;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v2, v2, Lcom/android/server/alarm/AlarmManagerService;->mExactAlarmCandidates:Ljava/util/Set;

    invoke-static {p2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 2028
    return-void

    .line 2031
    :cond_2
    iget-object v2, p0, Lcom/android/server/alarm/AlarmManagerService$3;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v2, v2, Lcom/android/server/alarm/AlarmManagerService;->mAppOps:Landroid/app/AppOpsManager;

    invoke-virtual {v2, v1, p2, p3}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    move-result v2

    .line 2035
    .local v2, "newMode":I
    iget-object v3, p0, Lcom/android/server/alarm/AlarmManagerService$3;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v3, v3, Lcom/android/server/alarm/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 2036
    :try_start_0
    iget-object v4, p0, Lcom/android/server/alarm/AlarmManagerService$3;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v4, v4, Lcom/android/server/alarm/AlarmManagerService;->mLastOpScheduleExactAlarm:Landroid/util/SparseIntArray;

    invoke-virtual {v4, p2}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v4

    .line 2037
    .local v4, "index":I
    if-gez v4, :cond_3

    .line 2038
    invoke-static {v1}, Landroid/app/AppOpsManager;->opToDefaultMode(I)I

    move-result v1

    .line 2040
    .local v1, "oldMode":I
    iget-object v5, p0, Lcom/android/server/alarm/AlarmManagerService$3;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v5, v5, Lcom/android/server/alarm/AlarmManagerService;->mLastOpScheduleExactAlarm:Landroid/util/SparseIntArray;

    invoke-virtual {v5, p2, v2}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_0

    .line 2045
    .end local v1    # "oldMode":I
    .end local v4    # "index":I
    :catchall_0
    move-exception v1

    goto/16 :goto_8

    .line 2042
    .restart local v4    # "index":I
    :cond_3
    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService$3;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v1, v1, Lcom/android/server/alarm/AlarmManagerService;->mLastOpScheduleExactAlarm:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v4}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v1

    .line 2043
    .restart local v1    # "oldMode":I
    iget-object v5, p0, Lcom/android/server/alarm/AlarmManagerService$3;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v5, v5, Lcom/android/server/alarm/AlarmManagerService;->mLastOpScheduleExactAlarm:Landroid/util/SparseIntArray;

    invoke-virtual {v5, v4, v2}, Landroid/util/SparseIntArray;->setValueAt(II)V

    .line 2045
    .end local v4    # "index":I
    :goto_0
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2046
    if-ne v1, v2, :cond_4

    .line 2047
    return-void

    .line 2049
    :cond_4
    iget-object v3, p0, Lcom/android/server/alarm/AlarmManagerService$3;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    .line 2050
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    .line 2049
    invoke-static {v3, p3, v4}, Lcom/android/server/alarm/AlarmManagerService;->-$$Nest$misScheduleExactAlarmDeniedByDefault(Lcom/android/server/alarm/AlarmManagerService;Ljava/lang/String;I)Z

    move-result v3

    .line 2055
    .local v3, "deniedByDefault":Z
    const/4 v4, 0x3

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v3, :cond_a

    .line 2056
    iget-object v7, p0, Lcom/android/server/alarm/AlarmManagerService$3;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-virtual {v7}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v7

    const-string v8, "android.permission.SCHEDULE_EXACT_ALARM"

    const/4 v9, -0x1

    invoke-virtual {v7, v8, v9, p2}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v7

    if-nez v7, :cond_5

    move v7, v5

    goto :goto_1

    :cond_5
    move v7, v6

    .line 2059
    .local v7, "permissionState":Z
    :goto_1
    if-ne v1, v4, :cond_6

    .line 2060
    move v8, v7

    goto :goto_2

    .line 2061
    :cond_6
    if-nez v1, :cond_7

    move v8, v5

    goto :goto_2

    :cond_7
    move v8, v6

    :goto_2
    nop

    .line 2062
    .local v8, "hadPermission":Z
    if-ne v2, v4, :cond_8

    .line 2063
    move v5, v7

    goto :goto_3

    .line 2064
    :cond_8
    if-nez v2, :cond_9

    goto :goto_3

    :cond_9
    move v5, v6

    :goto_3
    nop

    .line 2065
    .end local v7    # "permissionState":Z
    .local v5, "hasPermission":Z
    goto :goto_6

    .line 2066
    .end local v5    # "hasPermission":Z
    .end local v8    # "hadPermission":Z
    :cond_a
    if-eq v1, v4, :cond_b

    if-nez v1, :cond_c

    :cond_b
    goto :goto_4

    :cond_c
    move v7, v6

    goto :goto_5

    :goto_4
    move v7, v5

    :goto_5
    move v8, v7

    .line 2068
    .restart local v8    # "hadPermission":Z
    if-eq v2, v4, :cond_d

    if-nez v2, :cond_e

    :cond_d
    goto :goto_6

    :cond_e
    move v5, v6

    .line 2072
    .restart local v5    # "hasPermission":Z
    :goto_6
    if-eqz v8, :cond_f

    if-nez v5, :cond_f

    .line 2073
    iget-object v4, p0, Lcom/android/server/alarm/AlarmManagerService$3;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v4, v4, Lcom/android/server/alarm/AlarmManagerService;->mHandler:Lcom/android/server/alarm/AlarmManagerService$AlarmHandler;

    const/16 v7, 0x8

    invoke-virtual {v4, v7, p2, v6, p3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    .line 2074
    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    goto :goto_7

    .line 2075
    :cond_f
    if-nez v8, :cond_10

    if-eqz v5, :cond_10

    .line 2076
    iget-object v4, p0, Lcom/android/server/alarm/AlarmManagerService$3;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-static {v4, p3, v0}, Lcom/android/server/alarm/AlarmManagerService;->-$$Nest$msendScheduleExactAlarmPermissionStateChangedBroadcast(Lcom/android/server/alarm/AlarmManagerService;Ljava/lang/String;I)V

    .line 2079
    :cond_10
    :goto_7
    return-void

    .line 2045
    .end local v1    # "oldMode":I
    .end local v3    # "deniedByDefault":Z
    .end local v5    # "hasPermission":Z
    .end local v8    # "hadPermission":Z
    :goto_8
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 2021
    .end local v2    # "newMode":I
    :cond_11
    :goto_9
    return-void
.end method
