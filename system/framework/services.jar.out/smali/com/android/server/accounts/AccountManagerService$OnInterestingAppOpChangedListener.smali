.class Lcom/android/server/accounts/AccountManagerService$OnInterestingAppOpChangedListener;
.super Landroid/app/AppOpsManager$OnOpChangedInternalListener;
.source "AccountManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accounts/AccountManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnInterestingAppOpChangedListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/accounts/AccountManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/accounts/AccountManagerService;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 422
    iput-object p1, p0, Lcom/android/server/accounts/AccountManagerService$OnInterestingAppOpChangedListener;->this$0:Lcom/android/server/accounts/AccountManagerService;

    invoke-direct {p0}, Landroid/app/AppOpsManager$OnOpChangedInternalListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/accounts/AccountManagerService$OnInterestingAppOpChangedListener;-><init>(Lcom/android/server/accounts/AccountManagerService;)V

    return-void
.end method


# virtual methods
.method public onOpChanged(ILjava/lang/String;)V
    .locals 8
    .param p1, "op"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 426
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    .line 429
    .local v0, "userId":I
    :try_start_0
    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService$OnInterestingAppOpChangedListener;->this$0:Lcom/android/server/accounts/AccountManagerService;

    invoke-static {v1}, Lcom/android/server/accounts/AccountManagerService;->-$$Nest$fgetmPackageManager(Lcom/android/server/accounts/AccountManagerService;)Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, p2, v0}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result v1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 433
    .local v1, "packageUid":I
    nop

    .line 435
    iget-object v2, p0, Lcom/android/server/accounts/AccountManagerService$OnInterestingAppOpChangedListener;->this$0:Lcom/android/server/accounts/AccountManagerService;

    invoke-static {v2}, Lcom/android/server/accounts/AccountManagerService;->-$$Nest$fgetmAppOpsManager(Lcom/android/server/accounts/AccountManagerService;)Landroid/app/AppOpsManager;

    move-result-object v2

    invoke-virtual {v2, p1, v1, p2}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    move-result v2

    .line 436
    .local v2, "mode":I
    if-eqz v2, :cond_0

    .line 437
    return-void

    .line 440
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 442
    .local v3, "identity":J
    :try_start_1
    iget-object v5, p0, Lcom/android/server/accounts/AccountManagerService$OnInterestingAppOpChangedListener;->this$0:Lcom/android/server/accounts/AccountManagerService;

    iget-object v6, p0, Lcom/android/server/accounts/AccountManagerService$OnInterestingAppOpChangedListener;->this$0:Lcom/android/server/accounts/AccountManagerService;

    .line 443
    invoke-virtual {v6, v0}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v6

    .line 442
    const/4 v7, 0x1

    invoke-static {v5, p2, v1, v7, v6}, Lcom/android/server/accounts/AccountManagerService;->-$$Nest$mcancelAccountAccessRequestNotificationIfNeeded(Lcom/android/server/accounts/AccountManagerService;Ljava/lang/String;IZLcom/android/server/accounts/AccountManagerService$UserAccounts;)V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteCantOpenDatabaseException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 447
    nop

    :goto_0
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 448
    goto :goto_1

    .line 447
    :catchall_0
    move-exception v5

    goto :goto_2

    .line 444
    :catch_0
    move-exception v5

    nop

    .line 445
    .local v5, "e":Landroid/database/sqlite/SQLiteCantOpenDatabaseException;
    :try_start_2
    const-string v6, "AccountManagerService"

    const-string v7, "Can\'t read accounts database"

    invoke-static {v6, v7, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 447
    nop

    .end local v5    # "e":Landroid/database/sqlite/SQLiteCantOpenDatabaseException;
    goto :goto_0

    .line 449
    :goto_1
    return-void

    .line 447
    :goto_2
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 448
    throw v5

    .line 430
    .end local v1    # "packageUid":I
    .end local v2    # "mode":I
    .end local v3    # "identity":J
    :catch_1
    move-exception v1

    .line 432
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    return-void
.end method
