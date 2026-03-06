.class final Lcom/android/server/supervision/SupervisionService$SupervisionManagerInternalImpl;
.super Landroid/app/supervision/SupervisionManagerInternal;
.source "SupervisionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/supervision/SupervisionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SupervisionManagerInternalImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/supervision/SupervisionService;


# direct methods
.method private constructor <init>(Lcom/android/server/supervision/SupervisionService;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 424
    iput-object p1, p0, Lcom/android/server/supervision/SupervisionService$SupervisionManagerInternalImpl;->this$0:Lcom/android/server/supervision/SupervisionService;

    invoke-direct {p0}, Landroid/app/supervision/SupervisionManagerInternal;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/supervision/SupervisionService;Lcom/android/server/supervision/SupervisionService-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/supervision/SupervisionService$SupervisionManagerInternalImpl;-><init>(Lcom/android/server/supervision/SupervisionService;)V

    return-void
.end method


# virtual methods
.method public isActiveSupervisionApp(I)Z
    .locals 8
    .param p1, "uid"    # I

    .line 427
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 428
    .local v0, "userId":I
    iget-object v1, p0, Lcom/android/server/supervision/SupervisionService$SupervisionManagerInternalImpl;->this$0:Lcom/android/server/supervision/SupervisionService;

    invoke-virtual {v1, v0}, Lcom/android/server/supervision/SupervisionService;->getActiveSupervisionAppPackage(I)Ljava/lang/String;

    move-result-object v1

    .line 429
    .local v1, "supervisionAppPackage":Ljava/lang/String;
    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 430
    return v2

    .line 433
    :cond_0
    iget-object v3, p0, Lcom/android/server/supervision/SupervisionService$SupervisionManagerInternalImpl;->this$0:Lcom/android/server/supervision/SupervisionService;

    invoke-static {v3}, Lcom/android/server/supervision/SupervisionService;->-$$Nest$fgetmInjector(Lcom/android/server/supervision/SupervisionService;)Lcom/android/server/supervision/SupervisionService$Injector;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/supervision/SupervisionService$Injector;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v3

    .line 434
    .local v3, "packages":[Ljava/lang/String;
    if-eqz v3, :cond_2

    .line 435
    array-length v4, v3

    move v5, v2

    :goto_0
    nop

    if-ge v5, v4, :cond_2

    aget-object v6, v3, v5

    .line 436
    .local v6, "packageName":Ljava/lang/String;
    invoke-virtual {v1, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 437
    const/4 v2, 0x1

    return v2

    .line 436
    :cond_1
    nop

    .line 435
    .end local v6    # "packageName":Ljava/lang/String;
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 441
    :cond_2
    return v2
.end method

.method public isSupervisionEnabledForUser(I)Z
    .locals 1
    .param p1, "userId"    # I

    .line 446
    iget-object v0, p0, Lcom/android/server/supervision/SupervisionService$SupervisionManagerInternalImpl;->this$0:Lcom/android/server/supervision/SupervisionService;

    invoke-virtual {v0, p1}, Lcom/android/server/supervision/SupervisionService;->isSupervisionEnabledForUser(I)Z

    move-result v0

    return v0
.end method

.method public isSupervisionLockscreenEnabledForUser(I)Z
    .locals 2
    .param p1, "userId"    # I

    .line 456
    iget-object v0, p0, Lcom/android/server/supervision/SupervisionService$SupervisionManagerInternalImpl;->this$0:Lcom/android/server/supervision/SupervisionService;

    invoke-static {v0}, Lcom/android/server/supervision/SupervisionService;->-$$Nest$mgetLockObject(Lcom/android/server/supervision/SupervisionService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 457
    :try_start_0
    iget-object v1, p0, Lcom/android/server/supervision/SupervisionService$SupervisionManagerInternalImpl;->this$0:Lcom/android/server/supervision/SupervisionService;

    invoke-virtual {v1, p1}, Lcom/android/server/supervision/SupervisionService;->getUserDataLocked(I)Lcom/android/server/supervision/SupervisionUserData;

    move-result-object v1

    iget-boolean v1, v1, Lcom/android/server/supervision/SupervisionUserData;->supervisionLockScreenEnabled:Z

    monitor-exit v0

    return v1

    .line 458
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setSupervisionEnabledForUser(IZ)V
    .locals 1
    .param p1, "userId"    # I
    .param p2, "enabled"    # Z

    .line 451
    iget-object v0, p0, Lcom/android/server/supervision/SupervisionService$SupervisionManagerInternalImpl;->this$0:Lcom/android/server/supervision/SupervisionService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/supervision/SupervisionService;->setSupervisionEnabledForUser(IZ)V

    .line 452
    return-void
.end method

.method public setSupervisionLockscreenEnabledForUser(IZLandroid/os/PersistableBundle;)V
    .locals 2
    .param p1, "userId"    # I
    .param p2, "enabled"    # Z
    .param p3, "options"    # Landroid/os/PersistableBundle;

    .line 464
    iget-object v0, p0, Lcom/android/server/supervision/SupervisionService$SupervisionManagerInternalImpl;->this$0:Lcom/android/server/supervision/SupervisionService;

    invoke-static {v0}, Lcom/android/server/supervision/SupervisionService;->-$$Nest$mgetLockObject(Lcom/android/server/supervision/SupervisionService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 465
    :try_start_0
    iget-object v1, p0, Lcom/android/server/supervision/SupervisionService$SupervisionManagerInternalImpl;->this$0:Lcom/android/server/supervision/SupervisionService;

    invoke-virtual {v1, p1}, Lcom/android/server/supervision/SupervisionService;->getUserDataLocked(I)Lcom/android/server/supervision/SupervisionUserData;

    move-result-object v1

    .line 466
    .local v1, "data":Lcom/android/server/supervision/SupervisionUserData;
    iput-boolean p2, v1, Lcom/android/server/supervision/SupervisionUserData;->supervisionLockScreenEnabled:Z

    .line 467
    iput-object p3, v1, Lcom/android/server/supervision/SupervisionUserData;->supervisionLockScreenOptions:Landroid/os/PersistableBundle;

    .line 468
    .end local v1    # "data":Lcom/android/server/supervision/SupervisionUserData;
    monitor-exit v0

    .line 469
    return-void

    .line 468
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
