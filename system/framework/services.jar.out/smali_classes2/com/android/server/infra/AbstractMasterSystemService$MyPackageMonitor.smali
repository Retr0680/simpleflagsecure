.class Lcom/android/server/infra/AbstractMasterSystemService$MyPackageMonitor;
.super Lcom/android/internal/content/PackageMonitor;
.source "AbstractMasterSystemService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/infra/AbstractMasterSystemService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyPackageMonitor"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/infra/AbstractMasterSystemService;


# direct methods
.method public static synthetic $r8$lambda$WJOav7o2UH2fVtcWZYNxlSqiN4Y(Ljava/lang/String;Lcom/android/server/infra/AbstractPerUserSystemService;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/infra/AbstractMasterSystemService$MyPackageMonitor;->lambda$handlePackageUpdateLocked$0(Ljava/lang/String;Lcom/android/server/infra/AbstractPerUserSystemService;)V

    return-void
.end method

.method constructor <init>(Lcom/android/server/infra/AbstractMasterSystemService;Z)V
    .locals 0
    .param p2, "supportsPackageRestartQuery"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 993
    .local p0, "this":Lcom/android/server/infra/AbstractMasterSystemService$MyPackageMonitor;, "Lcom/android/server/infra/AbstractMasterSystemService<TM;TS;>.MyPackageMonitor;"
    iput-object p1, p0, Lcom/android/server/infra/AbstractMasterSystemService$MyPackageMonitor;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    .line 994
    invoke-direct {p0, p2}, Lcom/android/internal/content/PackageMonitor;-><init>(Z)V

    .line 995
    return-void
.end method

.method private getActiveServicePackageNameLocked()Ljava/lang/String;
    .locals 4

    .line 1229
    .local p0, "this":Lcom/android/server/infra/AbstractMasterSystemService$MyPackageMonitor;, "Lcom/android/server/infra/AbstractMasterSystemService<TM;TS;>.MyPackageMonitor;"
    invoke-virtual {p0}, Lcom/android/internal/content/PackageMonitor;->getChangingUserId()I

    move-result v0

    .line 1230
    .local v0, "userId":I
    iget-object v1, p0, Lcom/android/server/infra/AbstractMasterSystemService$MyPackageMonitor;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    invoke-virtual {v1, v0}, Lcom/android/server/infra/AbstractMasterSystemService;->peekServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object v1

    .line 1231
    .local v1, "service":Lcom/android/server/infra/AbstractPerUserSystemService;, "TS;"
    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 1232
    return-object v2

    .line 1234
    :cond_0
    invoke-virtual {v1}, Lcom/android/server/infra/AbstractPerUserSystemService;->getServiceComponentName()Landroid/content/ComponentName;

    move-result-object v3

    .line 1235
    .local v3, "serviceComponent":Landroid/content/ComponentName;
    if-nez v3, :cond_1

    .line 1236
    return-object v2

    .line 1238
    :cond_1
    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private handleActiveServiceRemoved(I)V
    .locals 3
    .param p1, "userId"    # I

    .line 1134
    .local p0, "this":Lcom/android/server/infra/AbstractMasterSystemService$MyPackageMonitor;, "Lcom/android/server/infra/AbstractMasterSystemService<TM;TS;>.MyPackageMonitor;"
    iget-object v0, p0, Lcom/android/server/infra/AbstractMasterSystemService$MyPackageMonitor;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    iget-object v0, v0, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1135
    :try_start_0
    iget-object v1, p0, Lcom/android/server/infra/AbstractMasterSystemService$MyPackageMonitor;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    invoke-virtual {v1, p1}, Lcom/android/server/infra/AbstractMasterSystemService;->removeCachedServiceListLocked(I)Ljava/util/List;

    .line 1136
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1137
    iget-object v0, p0, Lcom/android/server/infra/AbstractMasterSystemService$MyPackageMonitor;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    invoke-virtual {v0}, Lcom/android/server/infra/AbstractMasterSystemService;->getServiceSettingsProperty()Ljava/lang/String;

    move-result-object v0

    .line 1138
    .local v0, "serviceSettingsProperty":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 1139
    iget-object v1, p0, Lcom/android/server/infra/AbstractMasterSystemService$MyPackageMonitor;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    invoke-virtual {v1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v0, v2, p1}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 1142
    :cond_0
    return-void

    .line 1136
    .end local v0    # "serviceSettingsProperty":Ljava/lang/String;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private handleActiveServiceRestartedLocked(Ljava/lang/String;I)V
    .locals 4
    .param p1, "activePackageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 1147
    .local p0, "this":Lcom/android/server/infra/AbstractMasterSystemService$MyPackageMonitor;, "Lcom/android/server/infra/AbstractMasterSystemService<TM;TS;>.MyPackageMonitor;"
    iget-object v0, p0, Lcom/android/server/infra/AbstractMasterSystemService$MyPackageMonitor;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    invoke-static {v0}, Lcom/android/server/infra/AbstractMasterSystemService;->-$$Nest$fgetmServicePackagePolicyFlags(Lcom/android/server/infra/AbstractMasterSystemService;)I

    move-result v0

    and-int/lit8 v0, v0, 0x10

    const-string v1, " is being restarted"

    if-eqz v0, :cond_0

    .line 1148
    iget-object v0, p0, Lcom/android/server/infra/AbstractMasterSystemService$MyPackageMonitor;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    iget-boolean v0, v0, Lcom/android/server/infra/AbstractMasterSystemService;->debug:Z

    if-eqz v0, :cond_3

    .line 1149
    iget-object v0, p0, Lcom/android/server/infra/AbstractMasterSystemService$MyPackageMonitor;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    iget-object v0, v0, Lcom/android/server/infra/AbstractMasterSystemService;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Holding service for user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " while package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1153
    :cond_0
    iget-object v0, p0, Lcom/android/server/infra/AbstractMasterSystemService$MyPackageMonitor;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    iget-boolean v0, v0, Lcom/android/server/infra/AbstractMasterSystemService;->debug:Z

    if-eqz v0, :cond_1

    .line 1154
    iget-object v0, p0, Lcom/android/server/infra/AbstractMasterSystemService$MyPackageMonitor;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    iget-object v0, v0, Lcom/android/server/infra/AbstractMasterSystemService;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Removing service for user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " because package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1158
    :cond_1
    iget-object v0, p0, Lcom/android/server/infra/AbstractMasterSystemService$MyPackageMonitor;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    invoke-virtual {v0, p2}, Lcom/android/server/infra/AbstractMasterSystemService;->removeCachedServiceListLocked(I)Ljava/util/List;

    .line 1160
    iget-object v0, p0, Lcom/android/server/infra/AbstractMasterSystemService$MyPackageMonitor;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    invoke-static {v0}, Lcom/android/server/infra/AbstractMasterSystemService;->-$$Nest$fgetmServicePackagePolicyFlags(Lcom/android/server/infra/AbstractMasterSystemService;)I

    move-result v0

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_3

    .line 1161
    iget-object v0, p0, Lcom/android/server/infra/AbstractMasterSystemService$MyPackageMonitor;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    iget-boolean v0, v0, Lcom/android/server/infra/AbstractMasterSystemService;->debug:Z

    if-eqz v0, :cond_2

    .line 1162
    iget-object v0, p0, Lcom/android/server/infra/AbstractMasterSystemService$MyPackageMonitor;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    iget-object v0, v0, Lcom/android/server/infra/AbstractMasterSystemService;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Eagerly recreating service for user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1164
    :cond_2
    iget-object v0, p0, Lcom/android/server/infra/AbstractMasterSystemService$MyPackageMonitor;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    invoke-virtual {v0, p2}, Lcom/android/server/infra/AbstractMasterSystemService;->updateCachedServiceLocked(I)V

    .line 1167
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/android/server/infra/AbstractMasterSystemService$MyPackageMonitor;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    invoke-virtual {v0, p2}, Lcom/android/server/infra/AbstractMasterSystemService;->onServicePackageRestartedLocked(I)V

    .line 1168
    return-void
.end method

.method private handlePackageUpdateLocked(Ljava/lang/String;)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .line 1243
    .local p0, "this":Lcom/android/server/infra/AbstractMasterSystemService$MyPackageMonitor;, "Lcom/android/server/infra/AbstractMasterSystemService<TM;TS;>.MyPackageMonitor;"
    iget-object v0, p0, Lcom/android/server/infra/AbstractMasterSystemService$MyPackageMonitor;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    new-instance v1, Lcom/android/server/infra/AbstractMasterSystemService$MyPackageMonitor$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Lcom/android/server/infra/AbstractMasterSystemService$MyPackageMonitor$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/android/server/infra/AbstractMasterSystemService;->visitServicesLocked(Lcom/android/server/infra/AbstractMasterSystemService$Visitor;)V

    .line 1244
    return-void
.end method

.method private static synthetic lambda$handlePackageUpdateLocked$0(Ljava/lang/String;Lcom/android/server/infra/AbstractPerUserSystemService;)V
    .locals 0
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "s"    # Lcom/android/server/infra/AbstractPerUserSystemService;

    .line 1243
    invoke-virtual {p1, p0}, Lcom/android/server/infra/AbstractPerUserSystemService;->handlePackageUpdateLocked(Ljava/lang/String;)V

    return-void
.end method

.method private peekAndUpdateCachedServiceLocked(Ljava/lang/String;ILjava/lang/String;)V
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "serviceName"    # Ljava/lang/String;

    .line 1204
    .local p0, "this":Lcom/android/server/infra/AbstractMasterSystemService$MyPackageMonitor;, "Lcom/android/server/infra/AbstractMasterSystemService<TM;TS;>.MyPackageMonitor;"
    if-nez p3, :cond_0

    .line 1205
    return-void

    .line 1208
    :cond_0
    nop

    .line 1209
    invoke-static {p3}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    .line 1210
    .local v0, "serviceComponentName":Landroid/content/ComponentName;
    if-eqz v0, :cond_4

    .line 1211
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 1217
    :cond_1
    iget-object v1, p0, Lcom/android/server/infra/AbstractMasterSystemService$MyPackageMonitor;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    invoke-virtual {v1, p2}, Lcom/android/server/infra/AbstractMasterSystemService;->peekServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object v1

    .line 1218
    .local v1, "service":Lcom/android/server/infra/AbstractPerUserSystemService;, "TS;"
    if-eqz v1, :cond_3

    .line 1219
    invoke-virtual {v1}, Lcom/android/server/infra/AbstractPerUserSystemService;->getServiceComponentName()Landroid/content/ComponentName;

    move-result-object v2

    .line 1220
    .local v2, "componentName":Landroid/content/ComponentName;
    if-nez v2, :cond_3

    .line 1221
    iget-object v3, p0, Lcom/android/server/infra/AbstractMasterSystemService$MyPackageMonitor;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    iget-boolean v3, v3, Lcom/android/server/infra/AbstractMasterSystemService;->verbose:Z

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/server/infra/AbstractMasterSystemService$MyPackageMonitor;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    iget-object v3, v3, Lcom/android/server/infra/AbstractMasterSystemService;->mTag:Ljava/lang/String;

    const-string/jumbo v4, "update cached"

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1222
    :cond_2
    iget-object v3, p0, Lcom/android/server/infra/AbstractMasterSystemService$MyPackageMonitor;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    invoke-virtual {v3, p2}, Lcom/android/server/infra/AbstractMasterSystemService;->updateCachedServiceLocked(I)V

    .line 1225
    .end local v2    # "componentName":Landroid/content/ComponentName;
    :cond_3
    return-void

    .line 1212
    .end local v1    # "service":Lcom/android/server/infra/AbstractPerUserSystemService;, "TS;"
    :cond_4
    :goto_0
    return-void
.end method


# virtual methods
.method public onHandleForceStop(Landroid/content/Intent;[Ljava/lang/String;IZ)Z
    .locals 9
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "packages"    # [Ljava/lang/String;
    .param p3, "uid"    # I
    .param p4, "doit"    # Z

    .line 1085
    .local p0, "this":Lcom/android/server/infra/AbstractMasterSystemService$MyPackageMonitor;, "Lcom/android/server/infra/AbstractMasterSystemService<TM;TS;>.MyPackageMonitor;"
    iget-object v0, p0, Lcom/android/server/infra/AbstractMasterSystemService$MyPackageMonitor;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    iget-object v0, v0, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1086
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/infra/AbstractMasterSystemService$MyPackageMonitor;->getActiveServicePackageNameLocked()Ljava/lang/String;

    move-result-object v1

    .line 1087
    .local v1, "activePackageName":Ljava/lang/String;
    array-length v2, p2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    nop

    if-ge v4, v2, :cond_3

    aget-object v5, p2, v4

    .line 1088
    .local v5, "pkg":Ljava/lang/String;
    invoke-virtual {v5, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1089
    if-nez p4, :cond_0

    .line 1090
    monitor-exit v0

    const/4 v0, 0x1

    return v0

    .line 1103
    .end local v1    # "activePackageName":Ljava/lang/String;
    .end local v5    # "pkg":Ljava/lang/String;
    :catchall_0
    move-exception v1

    goto :goto_3

    .line 1092
    .restart local v1    # "activePackageName":Ljava/lang/String;
    .restart local v5    # "pkg":Ljava/lang/String;
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    .line 1093
    .local v6, "action":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/internal/content/PackageMonitor;->getChangingUserId()I

    move-result v7

    .line 1094
    .local v7, "userId":I
    const-string v8, "android.intent.action.PACKAGE_RESTARTED"

    invoke-virtual {v8, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1095
    invoke-direct {p0, v1, v7}, Lcom/android/server/infra/AbstractMasterSystemService$MyPackageMonitor;->handleActiveServiceRestartedLocked(Ljava/lang/String;I)V

    goto :goto_1

    .line 1097
    :cond_1
    iget-object v8, p0, Lcom/android/server/infra/AbstractMasterSystemService$MyPackageMonitor;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    invoke-virtual {v8, v7}, Lcom/android/server/infra/AbstractMasterSystemService;->removeCachedServiceListLocked(I)Ljava/util/List;

    .line 1099
    .end local v6    # "action":Ljava/lang/String;
    .end local v7    # "userId":I
    :goto_1
    goto :goto_2

    .line 1100
    :cond_2
    invoke-direct {p0, v5}, Lcom/android/server/infra/AbstractMasterSystemService$MyPackageMonitor;->handlePackageUpdateLocked(Ljava/lang/String;)V

    .line 1087
    .end local v5    # "pkg":Ljava/lang/String;
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1103
    .end local v1    # "activePackageName":Ljava/lang/String;
    :cond_3
    monitor-exit v0

    .line 1104
    return v3

    .line 1103
    :goto_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onPackageDataCleared(Ljava/lang/String;I)V
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 1109
    .local p0, "this":Lcom/android/server/infra/AbstractMasterSystemService$MyPackageMonitor;, "Lcom/android/server/infra/AbstractMasterSystemService<TM;TS;>.MyPackageMonitor;"
    iget-object v0, p0, Lcom/android/server/infra/AbstractMasterSystemService$MyPackageMonitor;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    iget-boolean v0, v0, Lcom/android/server/infra/AbstractMasterSystemService;->verbose:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/infra/AbstractMasterSystemService$MyPackageMonitor;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    iget-object v0, v0, Lcom/android/server/infra/AbstractMasterSystemService;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onPackageDataCleared(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1110
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/content/PackageMonitor;->getChangingUserId()I

    move-result v0

    .line 1112
    .local v0, "userId":I
    iget-object v1, p0, Lcom/android/server/infra/AbstractMasterSystemService$MyPackageMonitor;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    iget-object v1, v1, Lcom/android/server/infra/AbstractMasterSystemService;->mServiceNameResolver:Lcom/android/server/infra/ServiceNameResolver;

    nop

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/infra/AbstractMasterSystemService$MyPackageMonitor;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    iget-object v1, v1, Lcom/android/server/infra/AbstractMasterSystemService;->mServiceNameResolver:Lcom/android/server/infra/ServiceNameResolver;

    .line 1113
    invoke-interface {v1}, Lcom/android/server/infra/ServiceNameResolver;->isConfiguredInMultipleMode()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1114
    iget-object v1, p0, Lcom/android/server/infra/AbstractMasterSystemService$MyPackageMonitor;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    iget-object v1, v1, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1115
    :try_start_0
    iget-object v2, p0, Lcom/android/server/infra/AbstractMasterSystemService$MyPackageMonitor;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    invoke-virtual {v2, p1, v0}, Lcom/android/server/infra/AbstractMasterSystemService;->onServicePackageDataClearedMultiModeLocked(Ljava/lang/String;I)V

    .line 1116
    monitor-exit v1

    .line 1117
    return-void

    .line 1116
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 1120
    :cond_1
    iget-object v1, p0, Lcom/android/server/infra/AbstractMasterSystemService$MyPackageMonitor;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    iget-object v1, v1, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1121
    :try_start_1
    iget-object v2, p0, Lcom/android/server/infra/AbstractMasterSystemService$MyPackageMonitor;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    invoke-virtual {v2, v0}, Lcom/android/server/infra/AbstractMasterSystemService;->peekServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object v2

    .line 1122
    .local v2, "service":Lcom/android/server/infra/AbstractPerUserSystemService;, "TS;"
    if-eqz v2, :cond_2

    .line 1123
    invoke-virtual {v2}, Lcom/android/server/infra/AbstractPerUserSystemService;->getServiceComponentName()Landroid/content/ComponentName;

    move-result-object v3

    .line 1124
    .local v3, "componentName":Landroid/content/ComponentName;
    if-eqz v3, :cond_2

    .line 1125
    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1126
    iget-object v4, p0, Lcom/android/server/infra/AbstractMasterSystemService$MyPackageMonitor;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    invoke-virtual {v4, v0}, Lcom/android/server/infra/AbstractMasterSystemService;->onServicePackageDataClearedLocked(I)V

    goto :goto_0

    .line 1130
    .end local v2    # "service":Lcom/android/server/infra/AbstractPerUserSystemService;, "TS;"
    .end local v3    # "componentName":Landroid/content/ComponentName;
    :catchall_1
    move-exception v2

    goto :goto_1

    :cond_2
    :goto_0
    monitor-exit v1

    .line 1131
    return-void

    .line 1130
    :goto_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v2
.end method

.method public onPackageModified(Ljava/lang/String;)V
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;

    .line 1172
    .local p0, "this":Lcom/android/server/infra/AbstractMasterSystemService$MyPackageMonitor;, "Lcom/android/server/infra/AbstractMasterSystemService<TM;TS;>.MyPackageMonitor;"
    iget-object v0, p0, Lcom/android/server/infra/AbstractMasterSystemService$MyPackageMonitor;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    iget-object v0, v0, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1173
    :try_start_0
    iget-object v1, p0, Lcom/android/server/infra/AbstractMasterSystemService$MyPackageMonitor;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    iget-boolean v1, v1, Lcom/android/server/infra/AbstractMasterSystemService;->verbose:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/infra/AbstractMasterSystemService$MyPackageMonitor;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    iget-object v1, v1, Lcom/android/server/infra/AbstractMasterSystemService;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onPackageModified(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1198
    :catchall_0
    move-exception v1

    goto :goto_2

    .line 1175
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/server/infra/AbstractMasterSystemService$MyPackageMonitor;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    iget-object v1, v1, Lcom/android/server/infra/AbstractMasterSystemService;->mServiceNameResolver:Lcom/android/server/infra/ServiceNameResolver;

    if-nez v1, :cond_1

    .line 1176
    monitor-exit v0

    return-void

    .line 1179
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/content/PackageMonitor;->getChangingUserId()I

    move-result v1

    .line 1180
    .local v1, "userId":I
    iget-object v2, p0, Lcom/android/server/infra/AbstractMasterSystemService$MyPackageMonitor;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    iget-object v2, v2, Lcom/android/server/infra/AbstractMasterSystemService;->mServiceNameResolver:Lcom/android/server/infra/ServiceNameResolver;

    invoke-interface {v2, v1}, Lcom/android/server/infra/ServiceNameResolver;->getDefaultServiceNameList(I)[Ljava/lang/String;

    move-result-object v2

    .line 1182
    .local v2, "serviceNames":[Ljava/lang/String;
    if-eqz v2, :cond_3

    .line 1183
    nop

    .line 1184
    iget-object v3, p0, Lcom/android/server/infra/AbstractMasterSystemService$MyPackageMonitor;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    iget-object v3, v3, Lcom/android/server/infra/AbstractMasterSystemService;->mServiceNameResolver:Lcom/android/server/infra/ServiceNameResolver;

    invoke-interface {v3}, Lcom/android/server/infra/ServiceNameResolver;->isConfiguredInMultipleMode()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1187
    iget-object v3, p0, Lcom/android/server/infra/AbstractMasterSystemService$MyPackageMonitor;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    invoke-static {v3, v2, p1, v1}, Lcom/android/server/infra/AbstractMasterSystemService;->-$$Nest$mremoveInvalidCachedServicesLocked(Lcom/android/server/infra/AbstractMasterSystemService;[Ljava/lang/String;Ljava/lang/String;I)V

    .line 1193
    :cond_2
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    array-length v4, v2

    if-ge v3, v4, :cond_3

    .line 1194
    aget-object v4, v2, v3

    invoke-direct {p0, p1, v1, v4}, Lcom/android/server/infra/AbstractMasterSystemService$MyPackageMonitor;->peekAndUpdateCachedServiceLocked(Ljava/lang/String;ILjava/lang/String;)V

    .line 1193
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1198
    .end local v1    # "userId":I
    .end local v2    # "serviceNames":[Ljava/lang/String;
    .end local v3    # "i":I
    :cond_3
    monitor-exit v0

    .line 1199
    return-void

    .line 1198
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onPackageRemoved(Ljava/lang/String;I)V
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 1059
    .local p0, "this":Lcom/android/server/infra/AbstractMasterSystemService$MyPackageMonitor;, "Lcom/android/server/infra/AbstractMasterSystemService<TM;TS;>.MyPackageMonitor;"
    iget-object v0, p0, Lcom/android/server/infra/AbstractMasterSystemService$MyPackageMonitor;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    iget-object v0, v0, Lcom/android/server/infra/AbstractMasterSystemService;->mServiceNameResolver:Lcom/android/server/infra/ServiceNameResolver;

    nop

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/infra/AbstractMasterSystemService$MyPackageMonitor;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    iget-object v0, v0, Lcom/android/server/infra/AbstractMasterSystemService;->mServiceNameResolver:Lcom/android/server/infra/ServiceNameResolver;

    .line 1060
    invoke-interface {v0}, Lcom/android/server/infra/ServiceNameResolver;->isConfiguredInMultipleMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1061
    invoke-virtual {p0}, Lcom/android/internal/content/PackageMonitor;->getChangingUserId()I

    move-result v0

    .line 1062
    .local v0, "userId":I
    iget-object v1, p0, Lcom/android/server/infra/AbstractMasterSystemService$MyPackageMonitor;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    iget-object v1, v1, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1063
    :try_start_0
    iget-object v2, p0, Lcom/android/server/infra/AbstractMasterSystemService$MyPackageMonitor;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    invoke-virtual {v2, p1, v0}, Lcom/android/server/infra/AbstractMasterSystemService;->handlePackageRemovedMultiModeLocked(Ljava/lang/String;I)V

    .line 1064
    monitor-exit v1

    .line 1065
    return-void

    .line 1064
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 1068
    .end local v0    # "userId":I
    :cond_0
    iget-object v0, p0, Lcom/android/server/infra/AbstractMasterSystemService$MyPackageMonitor;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    iget-object v0, v0, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1069
    :try_start_1
    invoke-virtual {p0}, Lcom/android/internal/content/PackageMonitor;->getChangingUserId()I

    move-result v1

    .line 1070
    .local v1, "userId":I
    iget-object v2, p0, Lcom/android/server/infra/AbstractMasterSystemService$MyPackageMonitor;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    invoke-virtual {v2, v1}, Lcom/android/server/infra/AbstractMasterSystemService;->peekServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object v2

    .line 1071
    .local v2, "service":Lcom/android/server/infra/AbstractPerUserSystemService;, "TS;"
    if-eqz v2, :cond_1

    .line 1072
    invoke-virtual {v2}, Lcom/android/server/infra/AbstractPerUserSystemService;->getServiceComponentName()Landroid/content/ComponentName;

    move-result-object v3

    .line 1073
    .local v3, "componentName":Landroid/content/ComponentName;
    if-eqz v3, :cond_1

    .line 1074
    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1075
    invoke-direct {p0, v1}, Lcom/android/server/infra/AbstractMasterSystemService$MyPackageMonitor;->handleActiveServiceRemoved(I)V

    goto :goto_0

    .line 1079
    .end local v1    # "userId":I
    .end local v2    # "service":Lcom/android/server/infra/AbstractPerUserSystemService;, "TS;"
    .end local v3    # "componentName":Landroid/content/ComponentName;
    :catchall_1
    move-exception v1

    goto :goto_1

    :cond_1
    :goto_0
    monitor-exit v0

    .line 1080
    return-void

    .line 1079
    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v1
.end method

.method public onPackageUpdateFinished(Ljava/lang/String;I)V
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 1038
    .local p0, "this":Lcom/android/server/infra/AbstractMasterSystemService$MyPackageMonitor;, "Lcom/android/server/infra/AbstractMasterSystemService<TM;TS;>.MyPackageMonitor;"
    iget-object v0, p0, Lcom/android/server/infra/AbstractMasterSystemService$MyPackageMonitor;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    iget-boolean v0, v0, Lcom/android/server/infra/AbstractMasterSystemService;->verbose:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/infra/AbstractMasterSystemService$MyPackageMonitor;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    iget-object v0, v0, Lcom/android/server/infra/AbstractMasterSystemService;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onPackageUpdateFinished(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1039
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/content/PackageMonitor;->getChangingUserId()I

    move-result v0

    .line 1040
    .local v0, "userId":I
    iget-object v1, p0, Lcom/android/server/infra/AbstractMasterSystemService$MyPackageMonitor;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    iget-object v1, v1, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1041
    :try_start_0
    iget-object v2, p0, Lcom/android/server/infra/AbstractMasterSystemService$MyPackageMonitor;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    invoke-static {v2}, Lcom/android/server/infra/AbstractMasterSystemService;->-$$Nest$fgetmUpdatingPackageNames(Lcom/android/server/infra/AbstractMasterSystemService;)Landroid/util/SparseArray;

    move-result-object v2

    const/4 v3, 0x0

    if-nez v2, :cond_1

    move-object v2, v3

    goto :goto_0

    .line 1042
    :cond_1
    iget-object v2, p0, Lcom/android/server/infra/AbstractMasterSystemService$MyPackageMonitor;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    invoke-static {v2}, Lcom/android/server/infra/AbstractMasterSystemService;->-$$Nest$fgetmUpdatingPackageNames(Lcom/android/server/infra/AbstractMasterSystemService;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    :goto_0
    nop

    .line 1043
    .local v2, "activePackageName":Ljava/lang/String;
    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1044
    iget-object v4, p0, Lcom/android/server/infra/AbstractMasterSystemService$MyPackageMonitor;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    invoke-static {v4}, Lcom/android/server/infra/AbstractMasterSystemService;->-$$Nest$fgetmUpdatingPackageNames(Lcom/android/server/infra/AbstractMasterSystemService;)Landroid/util/SparseArray;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 1045
    iget-object v4, p0, Lcom/android/server/infra/AbstractMasterSystemService$MyPackageMonitor;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    invoke-static {v4}, Lcom/android/server/infra/AbstractMasterSystemService;->-$$Nest$fgetmUpdatingPackageNames(Lcom/android/server/infra/AbstractMasterSystemService;)Landroid/util/SparseArray;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->remove(I)V

    .line 1046
    iget-object v4, p0, Lcom/android/server/infra/AbstractMasterSystemService$MyPackageMonitor;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    invoke-static {v4}, Lcom/android/server/infra/AbstractMasterSystemService;->-$$Nest$fgetmUpdatingPackageNames(Lcom/android/server/infra/AbstractMasterSystemService;)Landroid/util/SparseArray;

    move-result-object v4

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-nez v4, :cond_2

    .line 1047
    iget-object v4, p0, Lcom/android/server/infra/AbstractMasterSystemService$MyPackageMonitor;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    invoke-static {v4, v3}, Lcom/android/server/infra/AbstractMasterSystemService;->-$$Nest$fputmUpdatingPackageNames(Lcom/android/server/infra/AbstractMasterSystemService;Landroid/util/SparseArray;)V

    goto :goto_1

    .line 1054
    .end local v2    # "activePackageName":Ljava/lang/String;
    :catchall_0
    move-exception v2

    goto :goto_3

    .line 1050
    .restart local v2    # "activePackageName":Ljava/lang/String;
    :cond_2
    :goto_1
    iget-object v3, p0, Lcom/android/server/infra/AbstractMasterSystemService$MyPackageMonitor;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    invoke-virtual {v3, v0}, Lcom/android/server/infra/AbstractMasterSystemService;->onServicePackageUpdatedLocked(I)V

    goto :goto_2

    .line 1052
    :cond_3
    invoke-direct {p0, p1}, Lcom/android/server/infra/AbstractMasterSystemService$MyPackageMonitor;->handlePackageUpdateLocked(Ljava/lang/String;)V

    .line 1054
    .end local v2    # "activePackageName":Ljava/lang/String;
    :goto_2
    monitor-exit v1

    .line 1055
    return-void

    .line 1054
    :goto_3
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public onPackageUpdateStarted(Ljava/lang/String;I)V
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 999
    .local p0, "this":Lcom/android/server/infra/AbstractMasterSystemService$MyPackageMonitor;, "Lcom/android/server/infra/AbstractMasterSystemService<TM;TS;>.MyPackageMonitor;"
    iget-object v0, p0, Lcom/android/server/infra/AbstractMasterSystemService$MyPackageMonitor;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    iget-boolean v0, v0, Lcom/android/server/infra/AbstractMasterSystemService;->verbose:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/infra/AbstractMasterSystemService$MyPackageMonitor;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    iget-object v0, v0, Lcom/android/server/infra/AbstractMasterSystemService;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onPackageUpdateStarted(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1000
    :cond_0
    iget-object v0, p0, Lcom/android/server/infra/AbstractMasterSystemService$MyPackageMonitor;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    iget-object v0, v0, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1001
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/infra/AbstractMasterSystemService$MyPackageMonitor;->getActiveServicePackageNameLocked()Ljava/lang/String;

    move-result-object v1

    .line 1002
    .local v1, "activePackageName":Ljava/lang/String;
    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    monitor-exit v0

    return-void

    .line 1033
    .end local v1    # "activePackageName":Ljava/lang/String;
    :catchall_0
    move-exception v1

    goto/16 :goto_1

    .line 1004
    .restart local v1    # "activePackageName":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/content/PackageMonitor;->getChangingUserId()I

    move-result v2

    .line 1006
    .local v2, "userId":I
    iget-object v3, p0, Lcom/android/server/infra/AbstractMasterSystemService$MyPackageMonitor;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    invoke-static {v3}, Lcom/android/server/infra/AbstractMasterSystemService;->-$$Nest$fgetmUpdatingPackageNames(Lcom/android/server/infra/AbstractMasterSystemService;)Landroid/util/SparseArray;

    move-result-object v3

    if-nez v3, :cond_2

    .line 1007
    iget-object v3, p0, Lcom/android/server/infra/AbstractMasterSystemService$MyPackageMonitor;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    new-instance v4, Landroid/util/SparseArray;

    iget-object v5, p0, Lcom/android/server/infra/AbstractMasterSystemService$MyPackageMonitor;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    invoke-static {v5}, Lcom/android/server/infra/AbstractMasterSystemService;->-$$Nest$fgetmServicesCacheList(Lcom/android/server/infra/AbstractMasterSystemService;)Landroid/util/SparseArray;

    move-result-object v5

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    invoke-direct {v4, v5}, Landroid/util/SparseArray;-><init>(I)V

    invoke-static {v3, v4}, Lcom/android/server/infra/AbstractMasterSystemService;->-$$Nest$fputmUpdatingPackageNames(Lcom/android/server/infra/AbstractMasterSystemService;Landroid/util/SparseArray;)V

    .line 1009
    :cond_2
    iget-object v3, p0, Lcom/android/server/infra/AbstractMasterSystemService$MyPackageMonitor;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    invoke-static {v3}, Lcom/android/server/infra/AbstractMasterSystemService;->-$$Nest$fgetmUpdatingPackageNames(Lcom/android/server/infra/AbstractMasterSystemService;)Landroid/util/SparseArray;

    move-result-object v3

    invoke-virtual {v3, v2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1010
    iget-object v3, p0, Lcom/android/server/infra/AbstractMasterSystemService$MyPackageMonitor;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    invoke-virtual {v3, v2}, Lcom/android/server/infra/AbstractMasterSystemService;->onServicePackageUpdatingLocked(I)V

    .line 1011
    iget-object v3, p0, Lcom/android/server/infra/AbstractMasterSystemService$MyPackageMonitor;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    invoke-static {v3}, Lcom/android/server/infra/AbstractMasterSystemService;->-$$Nest$fgetmServicePackagePolicyFlags(Lcom/android/server/infra/AbstractMasterSystemService;)I

    move-result v3

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_3

    .line 1012
    iget-object v3, p0, Lcom/android/server/infra/AbstractMasterSystemService$MyPackageMonitor;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    iget-boolean v3, v3, Lcom/android/server/infra/AbstractMasterSystemService;->debug:Z

    if-eqz v3, :cond_6

    .line 1013
    iget-object v3, p0, Lcom/android/server/infra/AbstractMasterSystemService$MyPackageMonitor;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    iget-object v3, v3, Lcom/android/server/infra/AbstractMasterSystemService;->mTag:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Holding service for user "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " while package "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " is being updated"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1017
    :cond_3
    iget-object v3, p0, Lcom/android/server/infra/AbstractMasterSystemService$MyPackageMonitor;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    iget-boolean v3, v3, Lcom/android/server/infra/AbstractMasterSystemService;->debug:Z

    if-eqz v3, :cond_4

    .line 1018
    iget-object v3, p0, Lcom/android/server/infra/AbstractMasterSystemService$MyPackageMonitor;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    iget-object v3, v3, Lcom/android/server/infra/AbstractMasterSystemService;->mTag:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Removing service for user "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " because package "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " is being updated"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1022
    :cond_4
    iget-object v3, p0, Lcom/android/server/infra/AbstractMasterSystemService$MyPackageMonitor;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    invoke-virtual {v3, v2}, Lcom/android/server/infra/AbstractMasterSystemService;->removeCachedServiceListLocked(I)Ljava/util/List;

    .line 1024
    iget-object v3, p0, Lcom/android/server/infra/AbstractMasterSystemService$MyPackageMonitor;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    invoke-static {v3}, Lcom/android/server/infra/AbstractMasterSystemService;->-$$Nest$fgetmServicePackagePolicyFlags(Lcom/android/server/infra/AbstractMasterSystemService;)I

    move-result v3

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_6

    .line 1026
    iget-object v3, p0, Lcom/android/server/infra/AbstractMasterSystemService$MyPackageMonitor;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    iget-boolean v3, v3, Lcom/android/server/infra/AbstractMasterSystemService;->debug:Z

    if-eqz v3, :cond_5

    .line 1027
    iget-object v3, p0, Lcom/android/server/infra/AbstractMasterSystemService$MyPackageMonitor;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    iget-object v3, v3, Lcom/android/server/infra/AbstractMasterSystemService;->mTag:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Eagerly recreating service for user "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1030
    :cond_5
    iget-object v3, p0, Lcom/android/server/infra/AbstractMasterSystemService$MyPackageMonitor;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    invoke-virtual {v3, v2}, Lcom/android/server/infra/AbstractMasterSystemService;->getServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;

    .line 1033
    .end local v1    # "activePackageName":Ljava/lang/String;
    .end local v2    # "userId":I
    :cond_6
    :goto_0
    monitor-exit v0

    .line 1034
    return-void

    .line 1033
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
