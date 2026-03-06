.class public final Lcom/android/server/permission/access/appop/PackageAppOpUpgrade;
.super Ljava/lang/Object;
.source "PackageAppOpUpgrade.kt"


# instance fields
.field private final policy:Lcom/android/server/permission/access/appop/PackageAppOpPolicy;


# direct methods
.method public constructor <init>(Lcom/android/server/permission/access/appop/PackageAppOpPolicy;)V
    .locals 0
    .param p1, "policy"    # Lcom/android/server/permission/access/appop/PackageAppOpPolicy;

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/permission/access/appop/PackageAppOpUpgrade;->policy:Lcom/android/server/permission/access/appop/PackageAppOpPolicy;

    return-void
.end method


# virtual methods
.method public final upgradePackageState(Lcom/android/server/permission/access/MutateStateScope;Lcom/android/server/pm/pkg/PackageState;II)V
    .locals 7
    .param p1, "$this$upgradePackageState"    # Lcom/android/server/permission/access/MutateStateScope;
    .param p2, "packageState"    # Lcom/android/server/pm/pkg/PackageState;
    .param p3, "userId"    # I
    .param p4, "version"    # I

    .line 29
    const/4 v0, 0x2

    if-gt p4, v0, :cond_0

    .line 30
    iget-object v1, p0, Lcom/android/server/permission/access/appop/PackageAppOpUpgrade;->policy:Lcom/android/server/permission/access/appop/PackageAppOpPolicy;

    .local v1, "$this$upgradePackageState_u24lambda_u240":Lcom/android/server/permission/access/appop/PackageAppOpPolicy;
    const/4 v0, 0x0

    .line 32
    .local v0, "$i$a$-with-PackageAppOpUpgrade$upgradePackageState$1":I
    nop

    .line 33
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 34
    nop

    .line 35
    nop

    .line 32
    const-string v3, "android:run_in_background"

    invoke-virtual {v1, p1, v2, p3, v3}, Lcom/android/server/permission/access/appop/PackageAppOpPolicy;->getAppOpMode(Lcom/android/server/permission/access/GetStateScope;Ljava/lang/String;ILjava/lang/String;)I

    move-result v6

    .line 31
    nop

    .line 37
    .local v6, "appOpMode":I
    nop

    .line 38
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 39
    nop

    .line 40
    nop

    .line 41
    nop

    .line 37
    const-string v5, "android:run_any_in_background"

    move-object v2, p1

    move v4, p3

    .end local p1    # "$this$upgradePackageState":Lcom/android/server/permission/access/MutateStateScope;
    .end local p3    # "userId":I
    .local v2, "$this$upgradePackageState":Lcom/android/server/permission/access/MutateStateScope;
    .local v4, "userId":I
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/permission/access/appop/PackageAppOpPolicy;->setAppOpMode(Lcom/android/server/permission/access/MutateStateScope;Ljava/lang/String;ILjava/lang/String;I)Z

    .line 42
    nop

    .line 30
    .end local v0    # "$i$a$-with-PackageAppOpUpgrade$upgradePackageState$1":I
    .end local v1    # "$this$upgradePackageState_u24lambda_u240":Lcom/android/server/permission/access/appop/PackageAppOpPolicy;
    .end local v6    # "appOpMode":I
    goto :goto_0

    .line 29
    .end local v2    # "$this$upgradePackageState":Lcom/android/server/permission/access/MutateStateScope;
    .end local v4    # "userId":I
    .restart local p1    # "$this$upgradePackageState":Lcom/android/server/permission/access/MutateStateScope;
    .restart local p3    # "userId":I
    :cond_0
    move-object v2, p1

    move v4, p3

    .line 45
    .end local p1    # "$this$upgradePackageState":Lcom/android/server/permission/access/MutateStateScope;
    .end local p3    # "userId":I
    .restart local v2    # "$this$upgradePackageState":Lcom/android/server/permission/access/MutateStateScope;
    .restart local v4    # "userId":I
    :goto_0
    return-void
.end method
