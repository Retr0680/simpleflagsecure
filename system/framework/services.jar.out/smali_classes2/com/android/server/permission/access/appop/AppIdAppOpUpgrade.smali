.class public final Lcom/android/server/permission/access/appop/AppIdAppOpUpgrade;
.super Ljava/lang/Object;
.source "AppIdAppOpUpgrade.kt"


# instance fields
.field private final policy:Lcom/android/server/permission/access/appop/AppIdAppOpPolicy;


# direct methods
.method public constructor <init>(Lcom/android/server/permission/access/appop/AppIdAppOpPolicy;)V
    .locals 0
    .param p1, "policy"    # Lcom/android/server/permission/access/appop/AppIdAppOpPolicy;

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/permission/access/appop/AppIdAppOpUpgrade;->policy:Lcom/android/server/permission/access/appop/AppIdAppOpPolicy;

    return-void
.end method


# virtual methods
.method public final upgradePackageState(Lcom/android/server/permission/access/MutateStateScope;Lcom/android/server/pm/pkg/PackageState;II)V
    .locals 11
    .param p1, "$this$upgradePackageState"    # Lcom/android/server/permission/access/MutateStateScope;
    .param p2, "packageState"    # Lcom/android/server/pm/pkg/PackageState;
    .param p3, "userId"    # I
    .param p4, "version"    # I

    .line 29
    move v6, p4

    const/4 v0, 0x2

    if-gt v6, v0, :cond_0

    .line 30
    iget-object v0, p0, Lcom/android/server/permission/access/appop/AppIdAppOpUpgrade;->policy:Lcom/android/server/permission/access/appop/AppIdAppOpPolicy;

    .local v0, "$this$upgradePackageState_u24lambda_u240":Lcom/android/server/permission/access/appop/AppIdAppOpPolicy;
    const/4 v7, 0x0

    .line 32
    .local v7, "$i$a$-with-AppIdAppOpUpgrade$upgradePackageState$1":I
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v2

    const-string v4, "android:run_in_background"

    invoke-virtual {v0, p1, v2, p3, v4}, Lcom/android/server/permission/access/appop/AppIdAppOpPolicy;->getAppOpMode(Lcom/android/server/permission/access/GetStateScope;IILjava/lang/String;)I

    move-result v5

    .line 31
    nop

    .line 33
    .local v5, "appOpMode":I
    nop

    .line 34
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v2

    .line 35
    nop

    .line 36
    nop

    .line 37
    nop

    .line 33
    const-string v4, "android:run_any_in_background"

    move-object v1, p1

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/permission/access/appop/AppIdAppOpPolicy;->setAppOpMode(Lcom/android/server/permission/access/MutateStateScope;IILjava/lang/String;I)Z

    .line 38
    nop

    .line 30
    .end local v0    # "$this$upgradePackageState_u24lambda_u240":Lcom/android/server/permission/access/appop/AppIdAppOpPolicy;
    .end local v5    # "appOpMode":I
    .end local v7    # "$i$a$-with-AppIdAppOpUpgrade$upgradePackageState$1":I
    nop

    .line 41
    :cond_0
    const/16 v0, 0xd

    if-gt v6, v0, :cond_2

    .line 42
    const/16 v0, 0x6b

    invoke-static {v0}, Landroid/app/AppOpsManager;->opToPermission(I)Ljava/lang/String;

    move-result-object v7

    .line 43
    .local v7, "permissionName":Ljava/lang/String;
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v2}, Lcom/android/server/pm/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 44
    move v2, v0

    iget-object v0, p0, Lcom/android/server/permission/access/appop/AppIdAppOpUpgrade;->policy:Lcom/android/server/permission/access/appop/AppIdAppOpPolicy;

    .local v0, "$this$upgradePackageState_u24lambda_u241":Lcom/android/server/permission/access/appop/AppIdAppOpPolicy;
    const/4 v8, 0x0

    .line 46
    .local v8, "$i$a$-with-AppIdAppOpUpgrade$upgradePackageState$2":I
    nop

    .line 47
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v4

    .line 48
    nop

    .line 49
    nop

    .line 46
    const-string v5, "android:schedule_exact_alarm"

    invoke-virtual {v0, p1, v4, p3, v5}, Lcom/android/server/permission/access/appop/AppIdAppOpPolicy;->getAppOpMode(Lcom/android/server/permission/access/GetStateScope;IILjava/lang/String;)I

    move-result v4

    .line 45
    move v9, v4

    .line 52
    .local v9, "appOpMode":I
    invoke-static {v2}, Landroid/app/AppOpsManager;->opToDefaultMode(I)I

    move-result v2

    .line 51
    move v10, v2

    .line 53
    .local v10, "defaultAppOpMode":I
    if-ne v9, v10, :cond_1

    .line 54
    nop

    .line 55
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v2

    .line 56
    nop

    .line 57
    nop

    .line 58
    nop

    .line 54
    const-string v4, "android:schedule_exact_alarm"

    const/4 v5, 0x0

    move-object v1, p1

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/permission/access/appop/AppIdAppOpPolicy;->setAppOpMode(Lcom/android/server/permission/access/MutateStateScope;IILjava/lang/String;I)Z

    .line 61
    :cond_1
    nop

    .line 44
    .end local v0    # "$this$upgradePackageState_u24lambda_u241":Lcom/android/server/permission/access/appop/AppIdAppOpPolicy;
    .end local v8    # "$i$a$-with-AppIdAppOpUpgrade$upgradePackageState$2":I
    .end local v9    # "appOpMode":I
    .end local v10    # "defaultAppOpMode":I
    nop

    .line 64
    .end local v7    # "permissionName":Ljava/lang/String;
    :cond_2
    const/16 v0, 0xf

    if-gt v6, v0, :cond_4

    .line 65
    iget-object v0, p0, Lcom/android/server/permission/access/appop/AppIdAppOpUpgrade;->policy:Lcom/android/server/permission/access/appop/AppIdAppOpPolicy;

    .local v0, "$this$upgradePackageState_u24lambda_u242":Lcom/android/server/permission/access/appop/AppIdAppOpPolicy;
    const/4 v7, 0x0

    .line 66
    .local v7, "$i$a$-with-AppIdAppOpUpgrade$upgradePackageState$3":I
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v2

    invoke-virtual {v0, p1, v2, p3}, Lcom/android/server/permission/access/appop/AppIdAppOpPolicy;->getAppOpModes(Lcom/android/server/permission/access/GetStateScope;II)Lcom/android/server/permission/access/immutable/IndexedMap;

    move-result-object v8

    .line 67
    .local v8, "appOpModes":Lcom/android/server/permission/access/immutable/IndexedMap;
    nop

    .line 68
    if-eqz v8, :cond_3

    .line 69
    const-string v2, "android:access_restricted_settings"

    invoke-virtual {v8, v2}, Lcom/android/server/permission/access/immutable/IndexedMap;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 71
    nop

    .line 72
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v2

    .line 73
    nop

    .line 74
    nop

    .line 75
    nop

    .line 71
    const-string v4, "android:access_restricted_settings"

    const/4 v5, 0x0

    move-object v1, p1

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/permission/access/appop/AppIdAppOpPolicy;->setAppOpMode(Lcom/android/server/permission/access/MutateStateScope;IILjava/lang/String;I)Z

    .line 78
    :cond_3
    nop

    .line 65
    .end local v0    # "$this$upgradePackageState_u24lambda_u242":Lcom/android/server/permission/access/appop/AppIdAppOpPolicy;
    .end local v7    # "$i$a$-with-AppIdAppOpUpgrade$upgradePackageState$3":I
    .end local v8    # "appOpModes":Lcom/android/server/permission/access/immutable/IndexedMap;
    nop

    .line 80
    :cond_4
    return-void
.end method
