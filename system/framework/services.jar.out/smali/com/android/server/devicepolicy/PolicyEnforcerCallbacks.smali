.class final Lcom/android/server/devicepolicy/PolicyEnforcerCallbacks;
.super Ljava/lang/Object;
.source "PolicyEnforcerCallbacks.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/devicepolicy/PolicyEnforcerCallbacks$BlockingCallback;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "PolicyEnforcerCallbacks"


# direct methods
.method public static synthetic $r8$lambda$3A7A7sIJ5RIm2lhycHAktZ_v_wg(Ljava/lang/Boolean;Landroid/content/Context;I)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/android/server/devicepolicy/PolicyEnforcerCallbacks;->lambda$setPersonalAppsSuspended$13(Ljava/lang/Boolean;Landroid/content/Context;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$4ggaUHwmXRH9DSZY2qstuZxIcwI(Landroid/content/Context;ILjava/util/Set;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/android/server/devicepolicy/PolicyEnforcerCallbacks;->lambda$setUserControlDisabledPackages$4(Landroid/content/Context;ILjava/util/Set;)V

    return-void
.end method

.method public static synthetic $r8$lambda$923vf4aExZGFKsRX2l5EqcJweW4()V
    .locals 0

    .line 0
    invoke-static {}, Lcom/android/server/devicepolicy/PolicyEnforcerCallbacks;->lambda$updateScreenCaptureDisabled$12()V

    return-void
.end method

.method public static synthetic $r8$lambda$D1RBEpFVJNTU1BZDBtLcWbDin4w(Landroid/app/admin/PolicyKey;Ljava/lang/Boolean;I)Lcom/android/internal/infra/AndroidFuture;
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/android/server/devicepolicy/PolicyEnforcerCallbacks;->lambda$setApplicationHidden$9(Landroid/app/admin/PolicyKey;Ljava/lang/Boolean;I)Lcom/android/internal/infra/AndroidFuture;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$GufZ51Ay23GzqrICE8M3gGd8Aqc(Landroid/content/Context;Ljava/lang/Boolean;)Lcom/android/internal/infra/AndroidFuture;
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/devicepolicy/PolicyEnforcerCallbacks;->lambda$setUsbDataSignalingEnabled$14(Landroid/content/Context;Ljava/lang/Boolean;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$L1rxGGUzNJ4aUGTAR8iOoKaDmig(Landroid/content/Context;Ljava/lang/Integer;)Lcom/android/internal/infra/AndroidFuture;
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/devicepolicy/PolicyEnforcerCallbacks;->lambda$setAutoTimePolicy$3(Landroid/content/Context;Ljava/lang/Integer;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$QKViEWd2gERgQLjX9mqDPmUb95w(Landroid/content/Context;Ljava/lang/Integer;)Lcom/android/internal/infra/AndroidFuture;
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/devicepolicy/PolicyEnforcerCallbacks;->lambda$setAutoTimeZonePolicy$0(Landroid/content/Context;Ljava/lang/Integer;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$UERPhmxAVy3sxr1v41E8a4Miyr0(Landroid/app/admin/PolicyKey;Landroid/content/ComponentName;I)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/android/server/devicepolicy/PolicyEnforcerCallbacks;->lambda$addPersistentPreferredActivity$6(Landroid/app/admin/PolicyKey;Landroid/content/ComponentName;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$WijCbL7fEj9lotKYMgvPtIYYdmE(Landroid/app/admin/PolicyKey;ILjava/lang/Boolean;)Lcom/android/internal/infra/AndroidFuture;
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/android/server/devicepolicy/PolicyEnforcerCallbacks;->lambda$setUserRestriction$8(Landroid/app/admin/PolicyKey;ILjava/lang/Boolean;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$gxoPg1ULKK1uZv0lpeBqocEMEys(Landroid/app/admin/PolicyKey;Ljava/lang/Boolean;I)Lcom/android/internal/infra/AndroidFuture;
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/android/server/devicepolicy/PolicyEnforcerCallbacks;->lambda$setUninstallBlocked$7(Landroid/app/admin/PolicyKey;Ljava/lang/Boolean;I)Lcom/android/internal/infra/AndroidFuture;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$hroBZBFtiu0Fc4d2ycR1WqFQV2U(Landroid/app/admin/PolicyKey;Landroid/content/Context;Ljava/lang/Integer;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/android/server/devicepolicy/PolicyEnforcerCallbacks;->lambda$setApplicationRestrictions$2(Landroid/app/admin/PolicyKey;Landroid/content/Context;Ljava/lang/Integer;)V

    return-void
.end method

.method public static synthetic $r8$lambda$mhU4RwcN2rvgJiX5zFqW30EJig0(Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/devicepolicy/PolicyEnforcerCallbacks;->lambda$setContentProtectionPolicy$11(Ljava/lang/Integer;Ljava/lang/Integer;)V

    return-void
.end method

.method public static synthetic $r8$lambda$o4x0wEv9V1ApGxPYNb629kkq4D0(Landroid/content/pm/UserInfo;)Ljava/lang/Integer;
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/server/devicepolicy/PolicyEnforcerCallbacks;->lambda$resolveUsers$5(Landroid/content/pm/UserInfo;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$zi0x2TqIW93rOUZeDZ-HpdjcV44(ILjava/lang/Boolean;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/devicepolicy/PolicyEnforcerCallbacks;->lambda$setScreenCaptureDisabled$10(ILjava/lang/Boolean;)V

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static addPersistentPreferredActivity(Landroid/content/ComponentName;Landroid/content/Context;ILandroid/app/admin/PolicyKey;)Ljava/util/concurrent/CompletableFuture;
    .locals 1
    .param p0, "preferredActivity"    # Landroid/content/ComponentName;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userId"    # I
    .param p3, "policyKey"    # Landroid/app/admin/PolicyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Landroid/content/Context;",
            "I",
            "Landroid/app/admin/PolicyKey;",
            ")",
            "Ljava/util/concurrent/CompletableFuture<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 308
    new-instance v0, Lcom/android/server/devicepolicy/PolicyEnforcerCallbacks$$ExternalSyntheticLambda10;

    invoke-direct {v0, p3, p0, p2}, Lcom/android/server/devicepolicy/PolicyEnforcerCallbacks$$ExternalSyntheticLambda10;-><init>(Landroid/app/admin/PolicyKey;Landroid/content/ComponentName;I)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 331
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/infra/AndroidFuture;->completedFuture(Ljava/lang/Object;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object v0

    return-object v0
.end method

.method static enforceAuditLogging(Ljava/lang/Boolean;Landroid/content/Context;ILandroid/app/admin/PolicyKey;)Ljava/util/concurrent/CompletableFuture;
    .locals 2
    .param p0, "value"    # Ljava/lang/Boolean;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userId"    # I
    .param p3, "policyKey"    # Landroid/app/admin/PolicyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Boolean;",
            "Landroid/content/Context;",
            "I",
            "Landroid/app/admin/PolicyKey;",
            ")",
            "Ljava/util/concurrent/CompletableFuture<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 174
    const-class v0, Landroid/app/admin/DevicePolicyManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManagerInternal;

    .line 175
    .local v0, "dpmi":Landroid/app/admin/DevicePolicyManagerInternal;
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManagerInternal;->enforceAuditLoggingPolicy(Z)V

    .line 176
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/infra/AndroidFuture;->completedFuture(Ljava/lang/Object;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object v1

    return-object v1
.end method

.method static enforceSecurityLogging(Ljava/lang/Boolean;Landroid/content/Context;ILandroid/app/admin/PolicyKey;)Ljava/util/concurrent/CompletableFuture;
    .locals 2
    .param p0, "value"    # Ljava/lang/Boolean;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userId"    # I
    .param p3, "policyKey"    # Landroid/app/admin/PolicyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Boolean;",
            "Landroid/content/Context;",
            "I",
            "Landroid/app/admin/PolicyKey;",
            ")",
            "Ljava/util/concurrent/CompletableFuture<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 166
    const-class v0, Landroid/app/admin/DevicePolicyManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManagerInternal;

    .line 167
    .local v0, "dpmi":Landroid/app/admin/DevicePolicyManagerInternal;
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManagerInternal;->enforceSecurityLoggingPolicy(Z)V

    .line 168
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/infra/AndroidFuture;->completedFuture(Ljava/lang/Object;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object v1

    return-object v1
.end method

.method private static getPermissionControllerManager(Landroid/content/Context;Landroid/os/UserHandle;)Landroid/permission/PermissionControllerManager;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "user"    # Landroid/os/UserHandle;

    .line 150
    invoke-virtual {p0}, Landroid/content/Context;->getUser()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 151
    const-class v0, Landroid/permission/PermissionControllerManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/permission/PermissionControllerManager;

    return-object v0

    .line 154
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/permission/PermissionControllerManager;

    .line 155
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/permission/PermissionControllerManager;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 154
    return-object v0

    .line 156
    :catch_0
    move-exception v0

    .line 158
    .local v0, "notPossible":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static synthetic lambda$addPersistentPreferredActivity$6(Landroid/app/admin/PolicyKey;Landroid/content/ComponentName;I)V
    .locals 3
    .param p0, "policyKey"    # Landroid/app/admin/PolicyKey;
    .param p1, "preferredActivity"    # Landroid/content/ComponentName;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 310
    :try_start_0
    instance-of v0, p0, Landroid/app/admin/IntentFilterPolicyKey;

    if-eqz v0, :cond_1

    .line 314
    move-object v0, p0

    check-cast v0, Landroid/app/admin/IntentFilterPolicyKey;

    .line 316
    .local v0, "parsedKey":Landroid/app/admin/IntentFilterPolicyKey;
    invoke-virtual {v0}, Landroid/app/admin/IntentFilterPolicyKey;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 318
    .local v1, "filter":Landroid/content/IntentFilter;
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    .line 319
    .local v2, "packageManager":Landroid/content/pm/IPackageManager;
    if-eqz p1, :cond_0

    .line 320
    invoke-interface {v2, v1, p1, p2}, Landroid/content/pm/IPackageManager;->addPersistentPreferredActivity(Landroid/content/IntentFilter;Landroid/content/ComponentName;I)V

    goto :goto_0

    .line 326
    .end local v0    # "parsedKey":Landroid/app/admin/IntentFilterPolicyKey;
    .end local v1    # "filter":Landroid/content/IntentFilter;
    .end local v2    # "packageManager":Landroid/content/pm/IPackageManager;
    :catch_0
    move-exception v0

    goto :goto_1

    .line 323
    .restart local v0    # "parsedKey":Landroid/app/admin/IntentFilterPolicyKey;
    .restart local v1    # "filter":Landroid/content/IntentFilter;
    .restart local v2    # "packageManager":Landroid/content/pm/IPackageManager;
    :cond_0
    invoke-interface {v2, v1, p2}, Landroid/content/pm/IPackageManager;->clearPersistentPreferredActivity(Landroid/content/IntentFilter;I)V

    .line 325
    :goto_0
    invoke-interface {v2, p2}, Landroid/content/pm/IPackageManager;->flushPackageRestrictionsAsUser(I)V

    .line 329
    .end local v0    # "parsedKey":Landroid/app/admin/IntentFilterPolicyKey;
    .end local v1    # "filter":Landroid/content/IntentFilter;
    .end local v2    # "packageManager":Landroid/content/pm/IPackageManager;
    goto :goto_2

    .line 311
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "policyKey is not of type IntentFilterPolicyKey, passed in policyKey is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "policyKey":Landroid/app/admin/PolicyKey;
    .end local p1    # "preferredActivity":Landroid/content/ComponentName;
    .end local p2    # "userId":I
    throw v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 326
    .restart local p0    # "policyKey":Landroid/app/admin/PolicyKey;
    .restart local p1    # "preferredActivity":Landroid/content/ComponentName;
    .restart local p2    # "userId":I
    :goto_1
    nop

    .line 328
    .local v0, "re":Landroid/os/RemoteException;
    const-string v1, "PolicyEnforcerCallbacks"

    const-string v2, "Error adding/removing persistent preferred activity"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 330
    .end local v0    # "re":Landroid/os/RemoteException;
    :goto_2
    return-void
.end method

.method private static synthetic lambda$resolveUsers$5(Landroid/content/pm/UserInfo;)Ljava/lang/Integer;
    .locals 1
    .param p0, "ui"    # Landroid/content/pm/UserInfo;

    .line 288
    iget v0, p0, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method private static synthetic lambda$setApplicationHidden$9(Landroid/app/admin/PolicyKey;Ljava/lang/Boolean;I)Lcom/android/internal/infra/AndroidFuture;
    .locals 4
    .param p0, "policyKey"    # Landroid/app/admin/PolicyKey;
    .param p1, "hide"    # Ljava/lang/Boolean;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 373
    instance-of v0, p0, Landroid/app/admin/PackagePolicyKey;

    if-eqz v0, :cond_1

    .line 377
    move-object v0, p0

    check-cast v0, Landroid/app/admin/PackagePolicyKey;

    .line 378
    .local v0, "parsedKey":Landroid/app/admin/PackagePolicyKey;
    invoke-virtual {v0}, Landroid/app/admin/PackagePolicyKey;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 379
    .local v1, "packageName":Ljava/lang/String;
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    .line 380
    .local v2, "packageManager":Landroid/content/pm/IPackageManager;
    if-eqz p1, :cond_0

    .line 382
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 381
    :goto_0
    invoke-interface {v2, v1, v3, p2}, Landroid/content/pm/IPackageManager;->setApplicationHiddenSettingAsUser(Ljava/lang/String;ZI)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 380
    invoke-static {v3}, Lcom/android/internal/infra/AndroidFuture;->completedFuture(Ljava/lang/Object;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object v3

    return-object v3

    .line 374
    .end local v0    # "parsedKey":Landroid/app/admin/PackagePolicyKey;
    .end local v1    # "packageName":Ljava/lang/String;
    .end local v2    # "packageManager":Landroid/content/pm/IPackageManager;
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "policyKey is not of type PackagePolicyKey, passed in policyKey is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static synthetic lambda$setApplicationRestrictions$2(Landroid/app/admin/PolicyKey;Landroid/content/Context;Ljava/lang/Integer;)V
    .locals 4
    .param p0, "policyKey"    # Landroid/app/admin/PolicyKey;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userId"    # Ljava/lang/Integer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 204
    move-object v0, p0

    check-cast v0, Landroid/app/admin/PackagePolicyKey;

    .line 205
    .local v0, "key":Landroid/app/admin/PackagePolicyKey;
    invoke-virtual {v0}, Landroid/app/admin/PackagePolicyKey;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 206
    .local v1, "packageName":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 207
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.APPLICATION_RESTRICTIONS_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 208
    .local v2, "changeIntent":Landroid/content/Intent;
    invoke-virtual {v2, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 209
    const/high16 v3, 0x40000000    # 2.0f

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 210
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 211
    return-void
.end method

.method private static synthetic lambda$setAutoTimePolicy$3(Landroid/content/Context;Ljava/lang/Integer;)Lcom/android/internal/infra/AndroidFuture;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "policy"    # Ljava/lang/Integer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 222
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 223
    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 224
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_0

    .line 225
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/infra/AndroidFuture;->completedFuture(Ljava/lang/Object;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object v0

    return-object v0

    .line 227
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    const/4 v0, 0x1

    .line 228
    .local v0, "enabled":I
    :cond_1
    nop

    .line 230
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 229
    const-string v2, "auto_time"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 228
    invoke-static {v1}, Lcom/android/internal/infra/AndroidFuture;->completedFuture(Ljava/lang/Object;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object v1

    return-object v1
.end method

.method private static synthetic lambda$setAutoTimeZonePolicy$0(Landroid/content/Context;Ljava/lang/Integer;)Lcom/android/internal/infra/AndroidFuture;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "policy"    # Ljava/lang/Integer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 92
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 93
    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 94
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_0

    .line 95
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/infra/AndroidFuture;->completedFuture(Ljava/lang/Object;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object v0

    return-object v0

    .line 97
    :cond_0
    if-eqz p1, :cond_1

    .line 98
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    nop

    :goto_0
    nop

    .line 99
    .local v0, "enabled":I
    nop

    .line 100
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 99
    const-string v2, "auto_time_zone"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/infra/AndroidFuture;->completedFuture(Ljava/lang/Object;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object v1

    return-object v1
.end method

.method private static synthetic lambda$setContentProtectionPolicy$11(Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 3
    .param p0, "userId"    # Ljava/lang/Integer;
    .param p1, "value"    # Ljava/lang/Integer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 408
    invoke-static {}, Landroid/app/admin/DevicePolicyCache;->getInstance()Landroid/app/admin/DevicePolicyCache;

    move-result-object v0

    .line 409
    .local v0, "cache":Landroid/app/admin/DevicePolicyCache;
    instance-of v1, v0, Lcom/android/server/devicepolicy/DevicePolicyCacheImpl;

    nop

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lcom/android/server/devicepolicy/DevicePolicyCacheImpl;

    .line 410
    .local v1, "cacheImpl":Lcom/android/server/devicepolicy/DevicePolicyCacheImpl;
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2, p1}, Lcom/android/server/devicepolicy/DevicePolicyCacheImpl;->setContentProtectionPolicy(ILjava/lang/Integer;)V

    .line 412
    .end local v1    # "cacheImpl":Lcom/android/server/devicepolicy/DevicePolicyCacheImpl;
    :cond_0
    return-void
.end method

.method private static synthetic lambda$setPermissionGrantState$1(Landroid/app/admin/PolicyKey;Landroid/content/Context;Ljava/lang/Integer;I)Lcom/android/internal/infra/AndroidFuture;
    .locals 9
    .param p0, "policyKey"    # Landroid/app/admin/PolicyKey;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "grantState"    # Ljava/lang/Integer;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 113
    instance-of v0, p0, Landroid/app/admin/PackagePermissionPolicyKey;

    if-eqz v0, :cond_1

    .line 117
    move-object v0, p0

    check-cast v0, Landroid/app/admin/PackagePermissionPolicyKey;

    .line 118
    .local v0, "parsedKey":Landroid/app/admin/PackagePermissionPolicyKey;
    invoke-virtual {v0}, Landroid/app/admin/PackagePermissionPolicyKey;->getPermissionName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 119
    invoke-virtual {v0}, Landroid/app/admin/PackagePermissionPolicyKey;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 120
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 122
    const/4 v1, 0x0

    if-nez p2, :cond_0

    .line 123
    move v2, v1

    goto :goto_0

    .line 124
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    :goto_0
    nop

    .line 127
    .local v2, "value":I
    new-instance v3, Lcom/android/server/devicepolicy/PolicyEnforcerCallbacks$BlockingCallback;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/android/server/devicepolicy/PolicyEnforcerCallbacks$BlockingCallback;-><init>(Lcom/android/server/devicepolicy/PolicyEnforcerCallbacks-IA;)V

    .line 130
    .local v3, "callback":Lcom/android/server/devicepolicy/PolicyEnforcerCallbacks$BlockingCallback;
    new-instance v4, Landroid/permission/AdminPermissionControlParams;

    .line 131
    invoke-virtual {v0}, Landroid/app/admin/PackagePermissionPolicyKey;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Landroid/app/admin/PackagePermissionPolicyKey;->getPermissionName()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    invoke-direct {v4, v5, v6, v2, v7}, Landroid/permission/AdminPermissionControlParams;-><init>(Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 133
    .local v4, "permissionParams":Landroid/permission/AdminPermissionControlParams;
    invoke-static {p3}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v5

    invoke-static {p1, v5}, Lcom/android/server/devicepolicy/PolicyEnforcerCallbacks;->getPermissionControllerManager(Landroid/content/Context;Landroid/os/UserHandle;)Landroid/permission/PermissionControllerManager;

    move-result-object v5

    .line 135
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 136
    invoke-virtual {p1}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v7

    new-instance v8, Lcom/android/server/devicepolicy/PolicyEnforcerCallbacks$$ExternalSyntheticLambda0;

    invoke-direct {v8, v3}, Lcom/android/server/devicepolicy/PolicyEnforcerCallbacks$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/devicepolicy/PolicyEnforcerCallbacks$BlockingCallback;)V

    .line 135
    invoke-virtual {v5, v6, v4, v7, v8}, Landroid/permission/PermissionControllerManager;->setRuntimePermissionGrantStateByDeviceAdmin(Ljava/lang/String;Landroid/permission/AdminPermissionControlParams;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    .line 138
    :try_start_0
    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 139
    const-wide/16 v6, 0x4e20

    invoke-virtual {v3, v6, v7, v5}, Lcom/android/server/devicepolicy/PolicyEnforcerCallbacks$BlockingCallback;->await(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Boolean;

    move-result-object v5

    .line 138
    invoke-static {v5}, Lcom/android/internal/infra/AndroidFuture;->completedFuture(Ljava/lang/Object;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 140
    :catch_0
    move-exception v5

    .line 142
    .local v5, "e":Ljava/lang/Exception;
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/infra/AndroidFuture;->completedFuture(Ljava/lang/Object;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object v1

    return-object v1

    .line 114
    .end local v0    # "parsedKey":Landroid/app/admin/PackagePermissionPolicyKey;
    .end local v2    # "value":I
    .end local v3    # "callback":Lcom/android/server/devicepolicy/PolicyEnforcerCallbacks$BlockingCallback;
    .end local v4    # "permissionParams":Landroid/permission/AdminPermissionControlParams;
    .end local v5    # "e":Ljava/lang/Exception;
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "policyKey is not of type PermissionGrantStatePolicyKey, passed in policyKey is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static synthetic lambda$setPersonalAppsSuspended$13(Ljava/lang/Boolean;Landroid/content/Context;I)V
    .locals 1
    .param p0, "suspended"    # Ljava/lang/Boolean;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 432
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 433
    invoke-static {p1, p2}, Lcom/android/server/devicepolicy/PolicyEnforcerCallbacks;->suspendPersonalAppsInPackageManager(Landroid/content/Context;I)V

    goto :goto_0

    .line 435
    :cond_0
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    .line 436
    invoke-virtual {v0, p2}, Landroid/content/pm/PackageManagerInternal;->unsuspendAdminSuspendedPackages(I)V

    .line 438
    :goto_0
    return-void
.end method

.method private static synthetic lambda$setScreenCaptureDisabled$10(ILjava/lang/Boolean;)V
    .locals 3
    .param p0, "userId"    # I
    .param p1, "disabled"    # Ljava/lang/Boolean;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 390
    invoke-static {}, Landroid/app/admin/DevicePolicyCache;->getInstance()Landroid/app/admin/DevicePolicyCache;

    move-result-object v0

    .line 391
    .local v0, "cache":Landroid/app/admin/DevicePolicyCache;
    instance-of v1, v0, Lcom/android/server/devicepolicy/DevicePolicyCacheImpl;

    if-eqz v1, :cond_1

    .line 392
    move-object v1, v0

    check-cast v1, Lcom/android/server/devicepolicy/DevicePolicyCacheImpl;

    .line 393
    .local v1, "parsedCache":Lcom/android/server/devicepolicy/DevicePolicyCacheImpl;
    if-eqz p1, :cond_0

    .line 394
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 393
    :goto_0
    invoke-virtual {v1, p0, v2}, Lcom/android/server/devicepolicy/DevicePolicyCacheImpl;->setScreenCaptureDisallowedUser(IZ)V

    .line 395
    invoke-static {}, Lcom/android/server/devicepolicy/PolicyEnforcerCallbacks;->updateScreenCaptureDisabled()V

    .line 397
    .end local v1    # "parsedCache":Lcom/android/server/devicepolicy/DevicePolicyCacheImpl;
    :cond_1
    return-void
.end method

.method private static synthetic lambda$setUninstallBlocked$7(Landroid/app/admin/PolicyKey;Ljava/lang/Boolean;I)Lcom/android/internal/infra/AndroidFuture;
    .locals 4
    .param p0, "policyKey"    # Landroid/app/admin/PolicyKey;
    .param p1, "uninstallBlocked"    # Ljava/lang/Boolean;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 338
    instance-of v0, p0, Landroid/app/admin/PackagePolicyKey;

    if-eqz v0, :cond_1

    .line 342
    move-object v0, p0

    check-cast v0, Landroid/app/admin/PackagePolicyKey;

    .line 343
    .local v0, "parsedKey":Landroid/app/admin/PackagePolicyKey;
    invoke-virtual {v0}, Landroid/app/admin/PackagePolicyKey;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 344
    .local v1, "packageName":Ljava/lang/String;
    const/4 v2, 0x1

    if-eqz p1, :cond_0

    .line 346
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 344
    :goto_0
    invoke-static {v1, v3, p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->setUninstallBlockedUnchecked(Ljava/lang/String;ZI)V

    .line 348
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/infra/AndroidFuture;->completedFuture(Ljava/lang/Object;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object v2

    return-object v2

    .line 339
    .end local v0    # "parsedKey":Landroid/app/admin/PackagePolicyKey;
    .end local v1    # "packageName":Ljava/lang/String;
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "policyKey is not of type PackagePolicyKey, passed in policyKey is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static synthetic lambda$setUsbDataSignalingEnabled$14(Landroid/content/Context;Ljava/lang/Boolean;)Lcom/android/internal/infra/AndroidFuture;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "value"    # Ljava/lang/Boolean;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 456
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 458
    const/4 v0, 0x1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    :goto_0
    move v1, v0

    .line 459
    .local v1, "enabled":Z
    :goto_1
    invoke-static {p0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->updateUsbDataSignal(Landroid/content/Context;Z)V

    .line 460
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/infra/AndroidFuture;->completedFuture(Ljava/lang/Object;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object v0

    return-object v0
.end method

.method private static synthetic lambda$setUserControlDisabledPackages$4(Landroid/content/Context;ILjava/util/Set;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userId"    # I
    .param p2, "packages"    # Ljava/util/Set;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 257
    nop

    .line 258
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    .line 259
    .local v0, "pmi":Landroid/content/pm/PackageManagerInternal;
    const-class v1, Landroid/app/AppOpsManager;

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AppOpsManager;

    .line 261
    .local v1, "appOpsManager":Landroid/app/AppOpsManager;
    nop

    .line 262
    const/4 v2, 0x0

    if-nez p2, :cond_0

    move-object v3, v2

    goto :goto_0

    :cond_0
    invoke-interface {p2}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/stream/Stream;->toList()Ljava/util/List;

    move-result-object v3

    .line 261
    :goto_0
    invoke-virtual {v0, p1, v3}, Landroid/content/pm/PackageManagerInternal;->setOwnerProtectedPackages(ILjava/util/List;)V

    .line 263
    const-class v3, Landroid/app/usage/UsageStatsManagerInternal;

    invoke-static {v3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/usage/UsageStatsManagerInternal;

    .line 265
    if-nez p2, :cond_1

    goto :goto_1

    :cond_1
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2, p2}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    .line 264
    :goto_1
    invoke-virtual {v3, v2, p1}, Landroid/app/usage/UsageStatsManagerInternal;->setAdminProtectedPackages(Ljava/util/Set;I)V

    .line 267
    if-eqz p2, :cond_2

    invoke-interface {p2}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    goto :goto_4

    .line 271
    :cond_3
    invoke-static {p1}, Lcom/android/server/devicepolicy/PolicyEnforcerCallbacks;->resolveUsers(I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 272
    .local v3, "user":I
    invoke-static {p2, v0, v3, v1}, Lcom/android/server/devicepolicy/PolicyEnforcerCallbacks;->setBgUsageAppOp(Ljava/util/Set;Landroid/content/pm/PackageManagerInternal;ILandroid/app/AppOpsManager;)V

    .line 273
    nop

    .line 274
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    nop

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 275
    .local v5, "packageName":Ljava/lang/String;
    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6, v3}, Landroid/content/pm/PackageManagerInternal;->setPackageStoppedState(Ljava/lang/String;ZI)V

    .line 276
    .end local v5    # "packageName":Ljava/lang/String;
    goto :goto_3

    .line 278
    .end local v3    # "user":I
    :cond_4
    goto :goto_2

    .line 279
    :cond_5
    return-void

    .line 268
    :goto_4
    return-void
.end method

.method private static synthetic lambda$setUserRestriction$8(Landroid/app/admin/PolicyKey;ILjava/lang/Boolean;)Lcom/android/internal/infra/AndroidFuture;
    .locals 5
    .param p0, "policyKey"    # Landroid/app/admin/PolicyKey;
    .param p1, "userId"    # I
    .param p2, "enabled"    # Ljava/lang/Boolean;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 356
    instance-of v0, p0, Landroid/app/admin/UserRestrictionPolicyKey;

    if-eqz v0, :cond_1

    .line 360
    move-object v0, p0

    check-cast v0, Landroid/app/admin/UserRestrictionPolicyKey;

    .line 362
    .local v0, "parsedKey":Landroid/app/admin/UserRestrictionPolicyKey;
    const-class v1, Lcom/android/server/pm/UserManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/UserManagerInternal;

    .line 363
    .local v1, "userManager":Lcom/android/server/pm/UserManagerInternal;
    nop

    .line 364
    invoke-virtual {v0}, Landroid/app/admin/UserRestrictionPolicyKey;->getRestriction()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_0

    move v4, v3

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    .line 363
    :goto_0
    invoke-virtual {v1, p1, v2, v4}, Lcom/android/server/pm/UserManagerInternal;->setUserRestriction(ILjava/lang/String;Z)V

    .line 365
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/infra/AndroidFuture;->completedFuture(Ljava/lang/Object;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object v2

    return-object v2

    .line 357
    .end local v0    # "parsedKey":Landroid/app/admin/UserRestrictionPolicyKey;
    .end local v1    # "userManager":Lcom/android/server/pm/UserManagerInternal;
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "policyKey is not of type UserRestrictionPolicyKey, passed in policyKey is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static synthetic lambda$updateScreenCaptureDisabled$12()V
    .locals 3

    .line 419
    :try_start_0
    const-string/jumbo v0, "window"

    .line 420
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v0

    .line 421
    invoke-interface {v0}, Landroid/view/IWindowManager;->refreshScreenCaptureDisabled()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 424
    goto :goto_0

    .line 422
    :catch_0
    move-exception v0

    .line 423
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "PolicyEnforcerCallbacks"

    const-string v2, "Unable to notify WindowManager."

    invoke-static {v1, v2, v0}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 425
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method static noOp(Ljava/lang/Object;Landroid/content/Context;Ljava/lang/Integer;Landroid/app/admin/PolicyKey;)Ljava/util/concurrent/CompletableFuture;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userId"    # Ljava/lang/Integer;
    .param p3, "policyKey"    # Landroid/app/admin/PolicyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Landroid/content/Context;",
            "Ljava/lang/Integer;",
            "Landroid/app/admin/PolicyKey;",
            ")",
            "Ljava/util/concurrent/CompletableFuture<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 81
    .local p0, "value":Ljava/lang/Object;, "TT;"
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/infra/AndroidFuture;->completedFuture(Ljava/lang/Object;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object v0

    return-object v0
.end method

.method private static resolveUsers(I)Ljava/util/List;
    .locals 3
    .param p0, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 285
    const/4 v0, -0x1

    if-ne p0, v0, :cond_0

    .line 286
    const-class v0, Lcom/android/server/pm/UserManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/UserManagerInternal;

    .line 287
    .local v0, "userManager":Lcom/android/server/pm/UserManagerInternal;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/pm/UserManagerInternal;->getUsers(Z)Ljava/util/List;

    move-result-object v1

    .line 288
    invoke-interface {v1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/server/devicepolicy/PolicyEnforcerCallbacks$$ExternalSyntheticLambda9;

    invoke-direct {v2}, Lcom/android/server/devicepolicy/PolicyEnforcerCallbacks$$ExternalSyntheticLambda9;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/stream/Stream;->toList()Ljava/util/List;

    move-result-object v1

    .line 287
    return-object v1

    .line 290
    .end local v0    # "userManager":Lcom/android/server/pm/UserManagerInternal;
    :cond_0
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/List;->of(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static setApplicationHidden(Ljava/lang/Boolean;Landroid/content/Context;ILandroid/app/admin/PolicyKey;)Ljava/util/concurrent/CompletableFuture;
    .locals 1
    .param p0, "hide"    # Ljava/lang/Boolean;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userId"    # I
    .param p3, "policyKey"    # Landroid/app/admin/PolicyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Boolean;",
            "Landroid/content/Context;",
            "I",
            "Landroid/app/admin/PolicyKey;",
            ")",
            "Ljava/util/concurrent/CompletableFuture<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 372
    new-instance v0, Lcom/android/server/devicepolicy/PolicyEnforcerCallbacks$$ExternalSyntheticLambda7;

    invoke-direct {v0, p3, p0, p2}, Lcom/android/server/devicepolicy/PolicyEnforcerCallbacks$$ExternalSyntheticLambda7;-><init>(Landroid/app/admin/PolicyKey;Ljava/lang/Boolean;I)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/CompletableFuture;

    return-object v0
.end method

.method static setApplicationRestrictions(Landroid/os/Bundle;Landroid/content/Context;Ljava/lang/Integer;Landroid/app/admin/PolicyKey;)Ljava/util/concurrent/CompletableFuture;
    .locals 1
    .param p0, "bundle"    # Landroid/os/Bundle;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userId"    # Ljava/lang/Integer;
    .param p3, "policyKey"    # Landroid/app/admin/PolicyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Landroid/content/Context;",
            "Ljava/lang/Integer;",
            "Landroid/app/admin/PolicyKey;",
            ")",
            "Ljava/util/concurrent/CompletableFuture<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 203
    new-instance v0, Lcom/android/server/devicepolicy/PolicyEnforcerCallbacks$$ExternalSyntheticLambda11;

    invoke-direct {v0, p3, p1, p2}, Lcom/android/server/devicepolicy/PolicyEnforcerCallbacks$$ExternalSyntheticLambda11;-><init>(Landroid/app/admin/PolicyKey;Landroid/content/Context;Ljava/lang/Integer;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 212
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/infra/AndroidFuture;->completedFuture(Ljava/lang/Object;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object v0

    return-object v0
.end method

.method public static setAutoTimePolicy(Ljava/lang/Integer;Landroid/content/Context;Ljava/lang/Integer;Landroid/app/admin/PolicyKey;)Ljava/util/concurrent/CompletableFuture;
    .locals 1
    .param p0, "policy"    # Ljava/lang/Integer;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userId"    # Ljava/lang/Integer;
    .param p3, "policyKey"    # Landroid/app/admin/PolicyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            "Landroid/content/Context;",
            "Ljava/lang/Integer;",
            "Landroid/app/admin/PolicyKey;",
            ")",
            "Ljava/util/concurrent/CompletableFuture<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 217
    nop

    .line 221
    new-instance v0, Lcom/android/server/devicepolicy/PolicyEnforcerCallbacks$$ExternalSyntheticLambda2;

    invoke-direct {v0, p1, p0}, Lcom/android/server/devicepolicy/PolicyEnforcerCallbacks$$ExternalSyntheticLambda2;-><init>(Landroid/content/Context;Ljava/lang/Integer;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/CompletableFuture;

    return-object v0
.end method

.method static setAutoTimeZonePolicy(Ljava/lang/Integer;Landroid/content/Context;ILandroid/app/admin/PolicyKey;)Ljava/util/concurrent/CompletableFuture;
    .locals 1
    .param p0, "policy"    # Ljava/lang/Integer;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userId"    # I
    .param p3, "policyKey"    # Landroid/app/admin/PolicyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            "Landroid/content/Context;",
            "I",
            "Landroid/app/admin/PolicyKey;",
            ")",
            "Ljava/util/concurrent/CompletableFuture<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 87
    nop

    .line 91
    new-instance v0, Lcom/android/server/devicepolicy/PolicyEnforcerCallbacks$$ExternalSyntheticLambda13;

    invoke-direct {v0, p1, p0}, Lcom/android/server/devicepolicy/PolicyEnforcerCallbacks$$ExternalSyntheticLambda13;-><init>(Landroid/content/Context;Ljava/lang/Integer;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/CompletableFuture;

    return-object v0
.end method

.method private static setBgUsageAppOp(Ljava/util/Set;Landroid/content/pm/PackageManagerInternal;ILandroid/app/AppOpsManager;)V
    .locals 8
    .param p1, "pmi"    # Landroid/content/pm/PackageManagerInternal;
    .param p2, "userId"    # I
    .param p3, "appOpsManager"    # Landroid/app/AppOpsManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/content/pm/PackageManagerInternal;",
            "I",
            "Landroid/app/AppOpsManager;",
            ")V"
        }
    .end annotation

    .line 296
    .local p0, "packages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Ljava/lang/String;

    .line 297
    .local v3, "pkg":Ljava/lang/String;
    const/high16 v1, 0xc0000

    .line 298
    .local v1, "packageFlags":I
    int-to-long v4, v1

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v6

    move-object v2, p1

    move v7, p2

    .end local p1    # "pmi":Landroid/content/pm/PackageManagerInternal;
    .end local p2    # "userId":I
    .local v2, "pmi":Landroid/content/pm/PackageManagerInternal;
    .local v7, "userId":I
    invoke-virtual/range {v2 .. v7}, Landroid/content/pm/PackageManagerInternal;->getApplicationInfo(Ljava/lang/String;JII)Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    .line 299
    .local p1, "appInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz p1, :cond_0

    .line 300
    invoke-static {p3, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->setBgUsageAppOp(Landroid/app/AppOpsManager;Landroid/content/pm/ApplicationInfo;)V

    .line 302
    .end local v1    # "packageFlags":I
    .end local v3    # "pkg":Ljava/lang/String;
    .end local p1    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :cond_0
    move-object p1, v2

    move p2, v7

    goto :goto_0

    .line 303
    .end local v2    # "pmi":Landroid/content/pm/PackageManagerInternal;
    .end local v7    # "userId":I
    .local p1, "pmi":Landroid/content/pm/PackageManagerInternal;
    .restart local p2    # "userId":I
    :cond_1
    return-void
.end method

.method static setContentProtectionPolicy(Ljava/lang/Integer;Landroid/content/Context;Ljava/lang/Integer;Landroid/app/admin/PolicyKey;)Ljava/util/concurrent/CompletableFuture;
    .locals 1
    .param p0, "value"    # Ljava/lang/Integer;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userId"    # Ljava/lang/Integer;
    .param p3, "policyKey"    # Landroid/app/admin/PolicyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            "Landroid/content/Context;",
            "Ljava/lang/Integer;",
            "Landroid/app/admin/PolicyKey;",
            ")",
            "Ljava/util/concurrent/CompletableFuture<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 406
    new-instance v0, Lcom/android/server/devicepolicy/PolicyEnforcerCallbacks$$ExternalSyntheticLambda3;

    invoke-direct {v0, p2, p0}, Lcom/android/server/devicepolicy/PolicyEnforcerCallbacks$$ExternalSyntheticLambda3;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 413
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/infra/AndroidFuture;->completedFuture(Ljava/lang/Object;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object v0

    return-object v0
.end method

.method static setLockTask(Landroid/app/admin/LockTaskPolicy;Landroid/content/Context;I)Ljava/util/concurrent/CompletableFuture;
    .locals 3
    .param p0, "policy"    # Landroid/app/admin/LockTaskPolicy;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/admin/LockTaskPolicy;",
            "Landroid/content/Context;",
            "I)",
            "Ljava/util/concurrent/CompletableFuture<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 181
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 182
    .local v0, "packages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/16 v1, 0x10

    .line 183
    .local v1, "flags":I
    if-eqz p0, :cond_0

    .line 184
    invoke-virtual {p0}, Landroid/app/admin/LockTaskPolicy;->getPackages()Ljava/util/Set;

    move-result-object v2

    invoke-static {v2}, Ljava/util/List;->copyOf(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    .line 185
    invoke-virtual {p0}, Landroid/app/admin/LockTaskPolicy;->getFlags()I

    move-result v1

    .line 187
    :cond_0
    invoke-static {p1, v0, p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->updateLockTaskPackagesLocked(Landroid/content/Context;Ljava/util/List;I)V

    .line 188
    invoke-static {v1, p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->updateLockTaskFeaturesLocked(II)V

    .line 189
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/infra/AndroidFuture;->completedFuture(Ljava/lang/Object;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object v2

    return-object v2
.end method

.method static setMtePolicy(Ljava/lang/Integer;Landroid/content/Context;ILandroid/app/admin/PolicyKey;)Ljava/util/concurrent/CompletableFuture;
    .locals 9
    .param p0, "mtePolicy"    # Ljava/lang/Integer;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userId"    # I
    .param p3, "policyKey"    # Landroid/app/admin/PolicyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            "Landroid/content/Context;",
            "I",
            "Landroid/app/admin/PolicyKey;",
            ")",
            "Ljava/util/concurrent/CompletableFuture<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 467
    const/4 v0, 0x0

    .line 477
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 467
    if-nez p0, :cond_0

    .line 468
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    .line 470
    :cond_0
    nop

    .line 472
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 473
    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 474
    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 471
    invoke-static {v2, v4, v6}, Ljava/util/Set;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v2

    .line 475
    .local v2, "allowedModes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-interface {v2, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 476
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MTE policy is not a known one: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "PolicyEnforcerCallbacks"

    invoke-static {v3, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    invoke-static {v1}, Lcom/android/internal/infra/AndroidFuture;->completedFuture(Ljava/lang/Object;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object v0

    return-object v0

    .line 480
    :cond_1
    const-string/jumbo v4, "ro.arm64.memtag.bootctl_device_policy_manager"

    .line 482
    .local v4, "mteDpmSystemProperty":Ljava/lang/String;
    const-string/jumbo v6, "ro.arm64.memtag.bootctl_settings_toggle"

    .line 484
    .local v6, "mteSettingsSystemProperty":Ljava/lang/String;
    const-string v7, "arm64.memtag.bootctl"

    .line 486
    .local v7, "mteControlProperty":Ljava/lang/String;
    nop

    .line 487
    const-string/jumbo v8, "ro.arm64.memtag.bootctl_settings_toggle"

    invoke-static {v8, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 486
    const-string/jumbo v8, "ro.arm64.memtag.bootctl_device_policy_manager"

    invoke-static {v8, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 488
    .local v0, "isAvailable":Z
    if-nez v0, :cond_2

    .line 489
    invoke-static {v1}, Lcom/android/internal/infra/AndroidFuture;->completedFuture(Ljava/lang/Object;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object v1

    return-object v1

    .line 492
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const-string v8, "arm64.memtag.bootctl"

    if-ne v1, v5, :cond_3

    .line 493
    const-string/jumbo v1, "memtag"

    invoke-static {v8, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 494
    :cond_3
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v3, :cond_4

    .line 495
    const-string/jumbo v1, "memtag-off"

    invoke-static {v8, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 496
    :cond_4
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_5

    .line 497
    const-string v1, "default"

    invoke-static {v8, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 500
    :cond_5
    :goto_0
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/infra/AndroidFuture;->completedFuture(Ljava/lang/Object;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object v1

    return-object v1
.end method

.method static setPermissionGrantState(Ljava/lang/Integer;Landroid/content/Context;ILandroid/app/admin/PolicyKey;)Ljava/util/concurrent/CompletableFuture;
    .locals 2
    .param p0, "grantState"    # Ljava/lang/Integer;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userId"    # I
    .param p3, "policyKey"    # Landroid/app/admin/PolicyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            "Landroid/content/Context;",
            "I",
            "Landroid/app/admin/PolicyKey;",
            ")",
            "Ljava/util/concurrent/CompletableFuture<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 108
    nop

    .line 109
    const-string v0, "PolicyEnforcerCallbacks"

    const-string v1, "Trying to enforce setPermissionGrantState while flag is off."

    invoke-static {v0, v1}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/infra/AndroidFuture;->completedFuture(Ljava/lang/Object;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object v0

    return-object v0
.end method

.method static setPersonalAppsSuspended(Ljava/lang/Boolean;Landroid/content/Context;ILandroid/app/admin/PolicyKey;)Ljava/util/concurrent/CompletableFuture;
    .locals 1
    .param p0, "suspended"    # Ljava/lang/Boolean;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userId"    # I
    .param p3, "policyKey"    # Landroid/app/admin/PolicyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Boolean;",
            "Landroid/content/Context;",
            "I",
            "Landroid/app/admin/PolicyKey;",
            ")",
            "Ljava/util/concurrent/CompletableFuture<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 431
    new-instance v0, Lcom/android/server/devicepolicy/PolicyEnforcerCallbacks$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/devicepolicy/PolicyEnforcerCallbacks$$ExternalSyntheticLambda6;-><init>(Ljava/lang/Boolean;Landroid/content/Context;I)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 439
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/infra/AndroidFuture;->completedFuture(Ljava/lang/Object;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object v0

    return-object v0
.end method

.method static setScreenCaptureDisabled(Ljava/lang/Boolean;Landroid/content/Context;ILandroid/app/admin/PolicyKey;)Ljava/util/concurrent/CompletableFuture;
    .locals 1
    .param p0, "disabled"    # Ljava/lang/Boolean;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userId"    # I
    .param p3, "policyKey"    # Landroid/app/admin/PolicyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Boolean;",
            "Landroid/content/Context;",
            "I",
            "Landroid/app/admin/PolicyKey;",
            ")",
            "Ljava/util/concurrent/CompletableFuture<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 389
    new-instance v0, Lcom/android/server/devicepolicy/PolicyEnforcerCallbacks$$ExternalSyntheticLambda4;

    invoke-direct {v0, p2, p0}, Lcom/android/server/devicepolicy/PolicyEnforcerCallbacks$$ExternalSyntheticLambda4;-><init>(ILjava/lang/Boolean;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 398
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/infra/AndroidFuture;->completedFuture(Ljava/lang/Object;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object v0

    return-object v0
.end method

.method static setUninstallBlocked(Ljava/lang/Boolean;Landroid/content/Context;ILandroid/app/admin/PolicyKey;)Ljava/util/concurrent/CompletableFuture;
    .locals 1
    .param p0, "uninstallBlocked"    # Ljava/lang/Boolean;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userId"    # I
    .param p3, "policyKey"    # Landroid/app/admin/PolicyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Boolean;",
            "Landroid/content/Context;",
            "I",
            "Landroid/app/admin/PolicyKey;",
            ")",
            "Ljava/util/concurrent/CompletableFuture<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 337
    new-instance v0, Lcom/android/server/devicepolicy/PolicyEnforcerCallbacks$$ExternalSyntheticLambda5;

    invoke-direct {v0, p3, p0, p2}, Lcom/android/server/devicepolicy/PolicyEnforcerCallbacks$$ExternalSyntheticLambda5;-><init>(Landroid/app/admin/PolicyKey;Ljava/lang/Boolean;I)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/CompletableFuture;

    return-object v0
.end method

.method static setUsbDataSignalingEnabled(Ljava/lang/Boolean;Landroid/content/Context;)Ljava/util/concurrent/CompletableFuture;
    .locals 1
    .param p0, "value"    # Ljava/lang/Boolean;
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Boolean;",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/concurrent/CompletableFuture<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 455
    new-instance v0, Lcom/android/server/devicepolicy/PolicyEnforcerCallbacks$$ExternalSyntheticLambda12;

    invoke-direct {v0, p1, p0}, Lcom/android/server/devicepolicy/PolicyEnforcerCallbacks$$ExternalSyntheticLambda12;-><init>(Landroid/content/Context;Ljava/lang/Boolean;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/CompletableFuture;

    return-object v0
.end method

.method static setUserControlDisabledPackages(Ljava/util/Set;Landroid/content/Context;ILandroid/app/admin/PolicyKey;)Ljava/util/concurrent/CompletableFuture;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userId"    # I
    .param p3, "policyKey"    # Landroid/app/admin/PolicyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/content/Context;",
            "I",
            "Landroid/app/admin/PolicyKey;",
            ")",
            "Ljava/util/concurrent/CompletableFuture<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 256
    .local p0, "packages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v0, Lcom/android/server/devicepolicy/PolicyEnforcerCallbacks$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1, p2, p0}, Lcom/android/server/devicepolicy/PolicyEnforcerCallbacks$$ExternalSyntheticLambda1;-><init>(Landroid/content/Context;ILjava/util/Set;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 280
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/infra/AndroidFuture;->completedFuture(Ljava/lang/Object;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object v0

    return-object v0
.end method

.method static setUserRestriction(Ljava/lang/Boolean;Landroid/content/Context;ILandroid/app/admin/PolicyKey;)Ljava/util/concurrent/CompletableFuture;
    .locals 1
    .param p0, "enabled"    # Ljava/lang/Boolean;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userId"    # I
    .param p3, "policyKey"    # Landroid/app/admin/PolicyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Boolean;",
            "Landroid/content/Context;",
            "I",
            "Landroid/app/admin/PolicyKey;",
            ")",
            "Ljava/util/concurrent/CompletableFuture<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 355
    new-instance v0, Lcom/android/server/devicepolicy/PolicyEnforcerCallbacks$$ExternalSyntheticLambda14;

    invoke-direct {v0, p3, p2, p0}, Lcom/android/server/devicepolicy/PolicyEnforcerCallbacks$$ExternalSyntheticLambda14;-><init>(Landroid/app/admin/PolicyKey;ILjava/lang/Boolean;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/CompletableFuture;

    return-object v0
.end method

.method private static suspendPersonalAppsInPackageManager(Landroid/content/Context;I)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userId"    # I

    .line 443
    invoke-static {p0, p1}, Lcom/android/server/devicepolicy/PersonalAppsSuspensionHelper;->forUser(Landroid/content/Context;I)Lcom/android/server/devicepolicy/PersonalAppsSuspensionHelper;

    move-result-object v0

    .line 444
    invoke-virtual {v0}, Lcom/android/server/devicepolicy/PersonalAppsSuspensionHelper;->getPersonalAppsForSuspension()[Ljava/lang/String;

    move-result-object v0

    .line 445
    .local v0, "appsToSuspend":[Ljava/lang/String;
    const-string v1, ","

    invoke-static {v1, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "PolicyEnforcerCallbacks"

    const-string v4, "Suspending personal apps: %s"

    invoke-static {v3, v4, v2}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 446
    const-class v2, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageManagerInternal;

    .line 447
    const/4 v4, 0x1

    invoke-virtual {v2, p1, v0, v4}, Landroid/content/pm/PackageManagerInternal;->setPackagesSuspendedByAdmin(I[Ljava/lang/String;Z)[Ljava/lang/String;

    move-result-object v2

    .line 448
    .local v2, "failedApps":[Ljava/lang/String;
    invoke-static {v2}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 449
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to suspend apps: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1, v2}, Ljava/lang/String;->join(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/android/server/utils/Slogf;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    :cond_0
    return-void
.end method

.method private static updateScreenCaptureDisabled()V
    .locals 2

    .line 417
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/devicepolicy/PolicyEnforcerCallbacks$$ExternalSyntheticLambda8;

    invoke-direct {v1}, Lcom/android/server/devicepolicy/PolicyEnforcerCallbacks$$ExternalSyntheticLambda8;-><init>()V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 426
    return-void
.end method
