.class Lcom/android/server/am/ActivityManagerService$2;
.super Lcom/android/server/wm/ActivityMetricsLaunchObserver;
.source "ActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/am/ActivityManagerService;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1213
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-direct {p0}, Lcom/android/server/wm/ActivityMetricsLaunchObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityLaunchCancelled(J)V
    .locals 1
    .param p1, "id"    # J

    .line 1247
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessList;->getAppStartInfoTracker()Lcom/android/server/am/AppStartInfoTracker;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/am/AppStartInfoTracker;->onActivityLaunchCancelled(J)V

    .line 1248
    return-void
.end method

.method public onActivityLaunchFinished(JLandroid/content/ComponentName;JI)V
    .locals 8
    .param p1, "id"    # J
    .param p3, "name"    # Landroid/content/ComponentName;
    .param p4, "timestampNanos"    # J
    .param p6, "launchMode"    # I

    .line 1253
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessList;->getAppStartInfoTracker()Lcom/android/server/am/AppStartInfoTracker;

    move-result-object v1

    move-wide v2, p1

    move-object v4, p3

    move-wide v5, p4

    move v7, p6

    .end local p1    # "id":J
    .end local p3    # "name":Landroid/content/ComponentName;
    .end local p4    # "timestampNanos":J
    .end local p6    # "launchMode":I
    .local v2, "id":J
    .local v4, "name":Landroid/content/ComponentName;
    .local v5, "timestampNanos":J
    .local v7, "launchMode":I
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/am/AppStartInfoTracker;->onActivityLaunchFinished(JLandroid/content/ComponentName;JI)V

    .line 1255
    return-void
.end method

.method public onActivityLaunched(JLandroid/content/ComponentName;II)V
    .locals 9
    .param p1, "id"    # J
    .param p3, "name"    # Landroid/content/ComponentName;
    .param p4, "temperature"    # I
    .param p5, "userId"    # I

    .line 1230
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mAppProfiler:Lcom/android/server/am/AppProfiler;

    invoke-virtual {v0}, Lcom/android/server/am/AppProfiler;->onActivityLaunched()V

    .line 1231
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    monitor-enter v1

    .line 1232
    const/4 v2, 0x0

    .line 1234
    .local v2, "record":Lcom/android/server/am/ProcessRecord;
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {p3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    .line 1235
    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {p3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6, p5}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;II)I

    move-result v4

    .line 1234
    invoke-virtual {v0, v3, v4}, Lcom/android/server/am/ActivityManagerService;->getProcessRecordLocked(Ljava/lang/String;I)Lcom/android/server/am/ProcessRecord;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v0

    .line 1239
    move-object v8, v2

    goto :goto_0

    .line 1242
    .end local v2    # "record":Lcom/android/server/am/ProcessRecord;
    :catchall_0
    move-exception v0

    move-wide v3, p1

    move-object v5, p3

    goto :goto_1

    .line 1237
    .restart local v2    # "record":Lcom/android/server/am/ProcessRecord;
    :catch_0
    move-exception v0

    move-object v8, v2

    .line 1240
    .end local v2    # "record":Lcom/android/server/am/ProcessRecord;
    .local v8, "record":Lcom/android/server/am/ProcessRecord;
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessList;->getAppStartInfoTracker()Lcom/android/server/am/AppStartInfoTracker;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    int-to-long v6, p4

    move-wide v3, p1

    move-object v5, p3

    .end local p1    # "id":J
    .end local p3    # "name":Landroid/content/ComponentName;
    .local v3, "id":J
    .local v5, "name":Landroid/content/ComponentName;
    :try_start_2
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/am/AppStartInfoTracker;->onActivityLaunched(JLandroid/content/ComponentName;JLcom/android/server/am/ProcessRecord;)V

    .line 1242
    .end local v8    # "record":Lcom/android/server/am/ProcessRecord;
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 1243
    return-void

    .line 1242
    :catchall_1
    move-exception v0

    goto :goto_1

    .end local v3    # "id":J
    .end local v5    # "name":Landroid/content/ComponentName;
    .restart local p1    # "id":J
    .restart local p3    # "name":Landroid/content/ComponentName;
    :catchall_2
    move-exception v0

    move-wide v3, p1

    move-object v5, p3

    .end local p1    # "id":J
    .end local p3    # "name":Landroid/content/ComponentName;
    .restart local v3    # "id":J
    .restart local v5    # "name":Landroid/content/ComponentName;
    :goto_1
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method public onIntentFailed(J)V
    .locals 1
    .param p1, "id"    # J

    .line 1225
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessList;->getAppStartInfoTracker()Lcom/android/server/am/AppStartInfoTracker;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/am/AppStartInfoTracker;->onActivityIntentFailed(J)V

    .line 1226
    return-void
.end method

.method public onIntentStarted(Landroid/content/Intent;J)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "timestampNanos"    # J

    .line 1217
    monitor-enter p0

    .line 1218
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessList;->getAppStartInfoTracker()Lcom/android/server/am/AppStartInfoTracker;

    move-result-object v0

    .line 1219
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/am/AppStartInfoTracker;->onActivityIntentStarted(Landroid/content/Intent;J)V

    .line 1220
    monitor-exit p0

    .line 1221
    return-void

    .line 1220
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onReportFullyDrawn(JJ)V
    .locals 5
    .param p1, "id"    # J
    .param p3, "timestampNanos"    # J

    .line 1259
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessList;->getAppStartInfoTracker()Lcom/android/server/am/AppStartInfoTracker;

    move-result-object v0

    .line 1260
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/am/AppStartInfoTracker;->onActivityReportFullyDrawn(JJ)Landroid/app/ApplicationStartInfo;

    move-result-object v0

    .line 1262
    .local v0, "startInfo":Landroid/app/ApplicationStartInfo;
    invoke-static {}, Landroid/internal/os/profiling/Flags;->systemTriggeredProfilingNew()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 1264
    invoke-virtual {v0}, Landroid/app/ApplicationStartInfo;->getStartType()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 1265
    invoke-virtual {v0}, Landroid/app/ApplicationStartInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1266
    invoke-static {}, Landroid/os/ProfilingServiceHelper;->getInstance()Landroid/os/ProfilingServiceHelper;

    move-result-object v1

    .line 1267
    invoke-virtual {v0}, Landroid/app/ApplicationStartInfo;->getRealUid()I

    move-result v3

    .line 1268
    invoke-virtual {v0}, Landroid/app/ApplicationStartInfo;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 1266
    invoke-virtual {v1, v3, v4, v2}, Landroid/os/ProfilingServiceHelper;->onProfilingTriggerOccurred(ILjava/lang/String;I)V

    .line 1271
    :cond_0
    return-void
.end method
