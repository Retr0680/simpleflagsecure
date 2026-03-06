.class public final Lcom/android/server/pm/BroadcastHelper;
.super Ljava/lang/Object;
.source "BroadcastHelper.java"


# static fields
.field private static final DEBUG_BROADCASTS:Z = false


# instance fields
.field private final mAmInternal:Landroid/app/ActivityManagerInternal;

.field private final mAppsFilter:Lcom/android/server/pm/AppsFilterSnapshot;

.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private final mPackageMonitorCallbackHelper:Lcom/android/server/pm/PackageMonitorCallbackHelper;

.field private final mUmInternal:Lcom/android/server/pm/UserManagerInternal;


# direct methods
.method public static synthetic $r8$lambda$0B9HCn1vf6QimS7wJUMJ9dvoh3c(Ljava/util/function/Supplier;Ljava/lang/Integer;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/android/server/pm/BroadcastHelper;->lambda$sendResourcesChangedBroadcast$0(Ljava/util/function/Supplier;Ljava/lang/Integer;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$D70H7ky9q6h4G5Q35Lsgrv5YLOA(Lcom/android/server/pm/BroadcastHelper;ZILjava/util/function/Supplier;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Lcom/android/server/pm/BroadcastHelper;->lambda$sendMyPackageSuspendedOrUnsuspended$8(ZILjava/util/function/Supplier;[Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$LaHdmMUvJ9UawhmO5eyjF4t1D68(Lcom/android/server/pm/BroadcastHelper;Ljava/lang/String;I[I[IZILandroid/util/SparseArray;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p7}, Lcom/android/server/pm/BroadcastHelper;->lambda$sendPackageAddedForNewUsers$2(Ljava/lang/String;I[I[IZILandroid/util/SparseArray;)V

    return-void
.end method

.method public static synthetic $r8$lambda$MJMB0qlrojqhYKHthOSSagY91y4(Lcom/android/server/pm/BroadcastHelper;Ljava/lang/String;ZLjava/util/ArrayList;ILjava/lang/String;[I[ILandroid/util/SparseArray;Lcom/android/server/pm/pkg/PackageStateInternal;[Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p12}, Lcom/android/server/pm/BroadcastHelper;->lambda$sendPackageChangedBroadcast$4(Ljava/lang/String;ZLjava/util/ArrayList;ILjava/lang/String;[I[ILandroid/util/SparseArray;Lcom/android/server/pm/pkg/PackageStateInternal;[Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$Oug9dEN74-YzL_S_zLOLodG8ONM(Lcom/android/server/pm/BroadcastHelper;[ILjava/lang/String;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/pm/BroadcastHelper;->lambda$sendPackageAddedForNewUsers$3([ILjava/lang/String;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$U8HVWwxx8XZlOvvlHzULhiCt5C4(Lcom/android/server/pm/BroadcastHelper;Landroid/os/Bundle;ILjava/util/function/Supplier;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/pm/BroadcastHelper;->lambda$sendDistractingPackagesChanged$10(Landroid/os/Bundle;ILjava/util/function/Supplier;)V

    return-void
.end method

.method public static synthetic $r8$lambda$a2Z1Nu599yOcxet0uhIrvF8v35U(Ljava/util/function/Supplier;Ljava/lang/Integer;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/android/server/pm/BroadcastHelper;->lambda$sendPackagesSuspendedOrUnsuspendedForUser$6(Ljava/util/function/Supplier;Ljava/lang/Integer;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$clcBGnQt-06kKHBsgiJHusWsyNs(Lcom/android/server/pm/BroadcastHelper;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/String;Landroid/content/IIntentReceiver;[I[ILandroid/util/SparseArray;Landroid/os/Bundle;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p10}, Lcom/android/server/pm/BroadcastHelper;->lambda$sendPackageBroadcastAndNotify$5(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/String;Landroid/content/IIntentReceiver;[I[ILandroid/util/SparseArray;Landroid/os/Bundle;)V

    return-void
.end method

.method public static synthetic $r8$lambda$i8o0iZdBhpYueYoVdN3iTtpw0PY(Lcom/android/server/pm/BroadcastHelper;Ljava/lang/String;Landroid/os/Bundle;ILjava/util/function/BiFunction;Landroid/os/Bundle;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Lcom/android/server/pm/BroadcastHelper;->lambda$sendPackagesSuspendedOrUnsuspendedForUser$7(Ljava/lang/String;Landroid/os/Bundle;ILjava/util/function/BiFunction;Landroid/os/Bundle;)V

    return-void
.end method

.method public static synthetic $r8$lambda$nOHrbCKi_oIEn_MfbAgPLe4KPbA(I)V
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/server/pm/BroadcastHelper;->lambda$sendPreferredActivityChangedBroadcast$1(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$rnKNtcTVJ4yPTacJOjnngz30icw(Ljava/util/function/Supplier;Ljava/lang/Integer;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/android/server/pm/BroadcastHelper;->lambda$sendDistractingPackagesChanged$9(Ljava/util/function/Supplier;Ljava/lang/Integer;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method constructor <init>(Lcom/android/server/pm/PackageManagerServiceInjector;)V
    .locals 1
    .param p1, "injector"    # Lcom/android/server/pm/PackageManagerServiceInjector;

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    invoke-virtual {p1}, Lcom/android/server/pm/PackageManagerServiceInjector;->getUserManagerInternal()Lcom/android/server/pm/UserManagerInternal;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/BroadcastHelper;->mUmInternal:Lcom/android/server/pm/UserManagerInternal;

    .line 109
    invoke-virtual {p1}, Lcom/android/server/pm/PackageManagerServiceInjector;->getActivityManagerInternal()Landroid/app/ActivityManagerInternal;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/BroadcastHelper;->mAmInternal:Landroid/app/ActivityManagerInternal;

    .line 110
    invoke-virtual {p1}, Lcom/android/server/pm/PackageManagerServiceInjector;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/BroadcastHelper;->mContext:Landroid/content/Context;

    .line 111
    invoke-virtual {p1}, Lcom/android/server/pm/PackageManagerServiceInjector;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/BroadcastHelper;->mHandler:Landroid/os/Handler;

    .line 112
    invoke-virtual {p1}, Lcom/android/server/pm/PackageManagerServiceInjector;->getPackageMonitorCallbackHelper()Lcom/android/server/pm/PackageMonitorCallbackHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/BroadcastHelper;->mPackageMonitorCallbackHelper:Lcom/android/server/pm/PackageMonitorCallbackHelper;

    .line 113
    invoke-virtual {p1}, Lcom/android/server/pm/PackageManagerServiceInjector;->getAppsFilter()Lcom/android/server/pm/AppsFilterImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/BroadcastHelper;->mAppsFilter:Lcom/android/server/pm/AppsFilterSnapshot;

    .line 114
    return-void
.end method

.method private broadcastIntent(Landroid/content/Intent;Landroid/content/IIntentReceiver;ZILandroid/util/SparseArray;Ljava/util/function/BiFunction;Landroid/os/Bundle;[Ljava/lang/String;)V
    .locals 9
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "finishedReceiver"    # Landroid/content/IIntentReceiver;
    .param p3, "isInstantApp"    # Z
    .param p4, "userId"    # I
    .param p7, "bOptions"    # Landroid/os/Bundle;
    .param p8, "requiredPermissions"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Landroid/content/IIntentReceiver;",
            "ZI",
            "Landroid/util/SparseArray<",
            "[I>;",
            "Ljava/util/function/BiFunction<",
            "Ljava/lang/Integer;",
            "Landroid/os/Bundle;",
            "Landroid/os/Bundle;",
            ">;",
            "Landroid/os/Bundle;",
            "[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 212
    .local p5, "broadcastAllowList":Landroid/util/SparseArray;, "Landroid/util/SparseArray<[I>;"
    .local p6, "filterExtrasForReceiver":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<Ljava/lang/Integer;Landroid/os/Bundle;Landroid/os/Bundle;>;"
    if-eqz p3, :cond_0

    .line 213
    const-class v0, Ljava/lang/String;

    const-string v1, "android.permission.ACCESS_INSTANT_APPS"

    move-object/from16 v2, p8

    invoke-static {v0, v2, v1}, Lcom/android/internal/util/ArrayUtils;->appendElement(Ljava/lang/Class;[Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    move-object v4, v0

    .end local p8    # "requiredPermissions":[Ljava/lang/String;
    .local v0, "requiredPermissions":[Ljava/lang/String;
    goto :goto_0

    .line 212
    .end local v0    # "requiredPermissions":[Ljava/lang/String;
    .restart local p8    # "requiredPermissions":[Ljava/lang/String;
    :cond_0
    move-object/from16 v2, p8

    move-object v4, v2

    .line 223
    .end local p8    # "requiredPermissions":[Ljava/lang/String;
    .local v4, "requiredPermissions":[Ljava/lang/String;
    :goto_0
    iget-object v1, p0, Lcom/android/server/pm/BroadcastHelper;->mAmInternal:Landroid/app/ActivityManagerInternal;

    .line 225
    if-nez p5, :cond_1

    const/4 v0, 0x0

    :goto_1
    move-object v6, v0

    goto :goto_2

    :cond_1
    invoke-virtual {p5, p4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    goto :goto_1

    .line 223
    :goto_2
    move-object v2, p1

    move-object v3, p2

    move v5, p4

    move-object v7, p6

    move-object/from16 v8, p7

    invoke-virtual/range {v1 .. v8}, Landroid/app/ActivityManagerInternal;->broadcastIntentWithCallback(Landroid/content/Intent;Landroid/content/IIntentReceiver;[Ljava/lang/String;I[ILjava/util/function/BiFunction;Landroid/os/Bundle;)I

    .line 227
    return-void
.end method

.method private doSendBroadcast(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/String;Landroid/content/IIntentReceiver;[IZLandroid/util/SparseArray;Ljava/util/function/BiFunction;Landroid/os/Bundle;[Ljava/lang/String;)V
    .locals 17
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "extras"    # Landroid/os/Bundle;
    .param p4, "flags"    # I
    .param p5, "targetPkg"    # Ljava/lang/String;
    .param p6, "finishedReceiver"    # Landroid/content/IIntentReceiver;
    .param p7, "userIds"    # [I
    .param p8, "isInstantApp"    # Z
    .param p11, "bOptions"    # Landroid/os/Bundle;
    .param p12, "requiredPermissions"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            "I",
            "Ljava/lang/String;",
            "Landroid/content/IIntentReceiver;",
            "[IZ",
            "Landroid/util/SparseArray<",
            "[I>;",
            "Ljava/util/function/BiFunction<",
            "Ljava/lang/Integer;",
            "Landroid/os/Bundle;",
            "Landroid/os/Bundle;",
            ">;",
            "Landroid/os/Bundle;",
            "[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 182
    .local p9, "broadcastAllowList":Landroid/util/SparseArray;, "Landroid/util/SparseArray<[I>;"
    .local p10, "filterExtrasForReceiver":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<Ljava/lang/Integer;Landroid/os/Bundle;Landroid/os/Bundle;>;"
    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v2, p5

    move-object/from16 v3, p7

    move-object/from16 v9, p9

    array-length v13, v3

    const/4 v4, 0x0

    move v14, v4

    :goto_0
    if-ge v14, v13, :cond_5

    aget v8, v3, v14

    .line 183
    .local v8, "userId":I
    new-instance v5, Landroid/content/Intent;

    .line 184
    const/4 v4, 0x0

    if-eqz v0, :cond_0

    const-string/jumbo v6, "package"

    invoke-static {v6, v0, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    :cond_0
    move-object/from16 v15, p1

    invoke-direct {v5, v15, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 185
    .local v5, "intent":Landroid/content/Intent;
    if-eqz v1, :cond_1

    .line 186
    invoke-virtual {v5, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 188
    :cond_1
    if-eqz v2, :cond_2

    .line 189
    invoke-virtual {v5, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 192
    :cond_2
    const/4 v4, -0x1

    const-string v6, "android.intent.extra.UID"

    invoke-virtual {v5, v6, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 193
    .local v4, "uid":I
    if-ltz v4, :cond_3

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7

    if-eq v7, v8, :cond_3

    .line 194
    invoke-static {v4}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v7

    invoke-static {v8, v7}, Landroid/os/UserHandle;->getUid(II)I

    move-result v4

    .line 195
    invoke-virtual {v5, v6, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move/from16 v16, v4

    goto :goto_1

    .line 197
    :cond_3
    move/from16 v16, v4

    .end local v4    # "uid":I
    .local v16, "uid":I
    :goto_1
    if-eqz v9, :cond_4

    const-string v4, "android"

    invoke-virtual {v4, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 198
    nop

    .line 199
    invoke-virtual {v9, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [I

    .line 198
    const-string v6, "android.intent.extra.VISIBILITY_ALLOW_LIST"

    invoke-virtual {v5, v6, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 201
    :cond_4
    const-string v4, "android.intent.extra.user_handle"

    invoke-virtual {v5, v4, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 202
    const/high16 v4, 0x4000000

    or-int v4, p4, v4

    invoke-virtual {v5, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 203
    move-object/from16 v4, p0

    move-object/from16 v6, p6

    move/from16 v7, p8

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    invoke-direct/range {v4 .. v12}, Lcom/android/server/pm/BroadcastHelper;->broadcastIntent(Landroid/content/Intent;Landroid/content/IIntentReceiver;ZILandroid/util/SparseArray;Ljava/util/function/BiFunction;Landroid/os/Bundle;[Ljava/lang/String;)V

    .line 182
    .end local v5    # "intent":Landroid/content/Intent;
    .end local v8    # "userId":I
    .end local v16    # "uid":I
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v9, p9

    goto :goto_0

    .line 206
    :cond_5
    move-object/from16 v15, p1

    return-void
.end method

.method private static filterExtrasChangedPackageList(Ljava/util/function/Supplier;ILandroid/os/Bundle;)Landroid/os/Bundle;
    .locals 9
    .param p1, "callingUid"    # I
    .param p2, "extras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Supplier<",
            "Lcom/android/server/pm/Computer;",
            ">;I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/os/Bundle;"
        }
    .end annotation

    .line 898
    .local p0, "snapshotSupplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Lcom/android/server/pm/Computer;>;"
    invoke-static {p1}, Landroid/os/UserHandle;->isCore(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 900
    return-object p2

    .line 902
    :cond_0
    const-string v0, "android.intent.extra.changed_package_list"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 903
    .local v1, "pkgs":[Ljava/lang/String;
    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 904
    return-object p2

    .line 906
    :cond_1
    nop

    .line 907
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    .line 906
    const-string v3, "android.intent.extra.user_handle"

    invoke-virtual {p2, v3, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 908
    .local v2, "userId":I
    const-string v3, "android.intent.extra.changed_uid_list"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v4

    .line 909
    .local v4, "uids":[I
    invoke-interface {p0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/Computer;

    .line 910
    .local v5, "snapshot":Lcom/android/server/pm/Computer;
    nop

    .line 911
    invoke-static {v5, v1, v4, p1, v2}, Lcom/android/server/pm/BroadcastHelper;->filterPackages(Lcom/android/server/pm/Computer;[Ljava/lang/String;[III)Landroid/util/Pair;

    move-result-object v6

    .line 912
    .local v6, "filteredPkgs":Landroid/util/Pair;, "Landroid/util/Pair<[Ljava/lang/String;[I>;"
    iget-object v7, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, [Ljava/lang/String;

    invoke-static {v7}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 914
    const/4 v0, 0x0

    return-object v0

    .line 916
    :cond_2
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7, p2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 917
    .local v7, "filteredExtras":Landroid/os/Bundle;
    iget-object v8, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v8, [Ljava/lang/String;

    invoke-virtual {v7, v0, v8}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 918
    iget-object v0, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, [I

    invoke-virtual {v7, v3, v0}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 919
    return-object v7
.end method

.method private static filterPackages(Lcom/android/server/pm/Computer;[Ljava/lang/String;[III)Landroid/util/Pair;
    .locals 8
    .param p0, "snapshot"    # Lcom/android/server/pm/Computer;
    .param p1, "pkgs"    # [Ljava/lang/String;
    .param p2, "uids"    # [I
    .param p3, "callingUid"    # I
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/Computer;",
            "[",
            "Ljava/lang/String;",
            "[III)",
            "Landroid/util/Pair<",
            "[",
            "Ljava/lang/String;",
            "[I>;"
        }
    .end annotation

    .line 935
    array-length v0, p1

    .line 936
    .local v0, "pkgSize":I
    invoke-static {p2}, Lcom/android/internal/util/ArrayUtils;->isEmpty([I)Z

    move-result v1

    if-nez v1, :cond_0

    array-length v1, p2

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 938
    .local v1, "uidSize":I
    :goto_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 939
    .local v2, "pkgList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v3, 0x0

    if-lez v1, :cond_1

    new-instance v4, Landroid/util/IntArray;

    invoke-direct {v4, v1}, Landroid/util/IntArray;-><init>(I)V

    goto :goto_1

    :cond_1
    move-object v4, v3

    .line 940
    .local v4, "uidList":Landroid/util/IntArray;
    :goto_1
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_2
    if-ge v5, v0, :cond_4

    .line 941
    aget-object v6, p1, v5

    .line 942
    .local v6, "packageName":Ljava/lang/String;
    nop

    .line 943
    invoke-interface {p0, v6}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v7

    .line 942
    invoke-interface {p0, v7, p3, p4}, Lcom/android/server/pm/Computer;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 944
    goto :goto_3

    .line 946
    :cond_2
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 947
    if-eqz v4, :cond_3

    if-ge v5, v1, :cond_3

    .line 948
    aget v7, p2, v5

    invoke-virtual {v4, v7}, Landroid/util/IntArray;->add(I)V

    .line 940
    .end local v6    # "packageName":Ljava/lang/String;
    :cond_3
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_4
    nop

    .line 951
    .end local v5    # "i":I
    new-instance v5, Landroid/util/Pair;

    .line 952
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_5

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v6, v6, [Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    goto :goto_4

    :cond_5
    move-object v6, v3

    .line 953
    :goto_4
    if-eqz v4, :cond_6

    invoke-virtual {v4}, Landroid/util/IntArray;->size()I

    move-result v7

    if-lez v7, :cond_6

    invoke-virtual {v4}, Landroid/util/IntArray;->toArray()[I

    move-result-object v3

    :cond_6
    invoke-direct {v5, v6, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 951
    return-object v5
.end method

.method private getAllNotExportedComponents(Lcom/android/server/pm/pkg/AndroidPackage;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 5
    .param p1, "pkg"    # Lcom/android/server/pm/pkg/AndroidPackage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/pkg/AndroidPackage;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 312
    .local p2, "inputComponentNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 313
    .local v0, "outputNotExportedComponentNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 314
    .local v1, "remainingComponentCount":I
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getReceivers()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/pm/pkg/component/ParsedActivity;

    .line 315
    .local v3, "component":Lcom/android/internal/pm/pkg/component/ParsedActivity;
    invoke-interface {v3}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 316
    invoke-interface {v3}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->isExported()Z

    move-result v4

    if-nez v4, :cond_0

    .line 317
    invoke-interface {v3}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 319
    :cond_0
    add-int/lit8 v1, v1, -0x1

    .line 320
    if-gtz v1, :cond_1

    .line 321
    return-object v0

    .line 324
    .end local v3    # "component":Lcom/android/internal/pm/pkg/component/ParsedActivity;
    :cond_1
    goto :goto_0

    .line 325
    :cond_2
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getProviders()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/pm/pkg/component/ParsedProvider;

    .line 326
    .local v3, "component":Lcom/android/internal/pm/pkg/component/ParsedProvider;
    invoke-interface {v3}, Lcom/android/internal/pm/pkg/component/ParsedProvider;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 327
    invoke-interface {v3}, Lcom/android/internal/pm/pkg/component/ParsedProvider;->isExported()Z

    move-result v4

    if-nez v4, :cond_3

    .line 328
    invoke-interface {v3}, Lcom/android/internal/pm/pkg/component/ParsedProvider;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 330
    :cond_3
    add-int/lit8 v1, v1, -0x1

    .line 331
    if-gtz v1, :cond_4

    .line 332
    return-object v0

    .line 335
    .end local v3    # "component":Lcom/android/internal/pm/pkg/component/ParsedProvider;
    :cond_4
    goto :goto_1

    .line 336
    :cond_5
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getServices()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/pm/pkg/component/ParsedService;

    .line 337
    .local v3, "component":Lcom/android/internal/pm/pkg/component/ParsedService;
    invoke-interface {v3}, Lcom/android/internal/pm/pkg/component/ParsedService;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 338
    invoke-interface {v3}, Lcom/android/internal/pm/pkg/component/ParsedService;->isExported()Z

    move-result v4

    if-nez v4, :cond_6

    .line 339
    invoke-interface {v3}, Lcom/android/internal/pm/pkg/component/ParsedService;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 341
    :cond_6
    add-int/lit8 v1, v1, -0x1

    .line 342
    if-gtz v1, :cond_7

    .line 343
    return-object v0

    .line 346
    .end local v3    # "component":Lcom/android/internal/pm/pkg/component/ParsedService;
    :cond_7
    goto :goto_2

    .line 347
    :cond_8
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getActivities()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/pm/pkg/component/ParsedActivity;

    .line 348
    .local v3, "component":Lcom/android/internal/pm/pkg/component/ParsedActivity;
    invoke-interface {v3}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 349
    invoke-interface {v3}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->isExported()Z

    move-result v4

    if-nez v4, :cond_9

    .line 350
    invoke-interface {v3}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 352
    :cond_9
    add-int/lit8 v1, v1, -0x1

    .line 353
    if-gtz v1, :cond_a

    .line 354
    return-object v0

    .line 357
    .end local v3    # "component":Lcom/android/internal/pm/pkg/component/ParsedActivity;
    :cond_a
    goto :goto_3

    .line 358
    :cond_b
    return-object v0
.end method

.method private getTemporaryAppAllowlistBroadcastOptions(I)Landroid/app/BroadcastOptions;
    .locals 8
    .param p1, "reasonCode"    # I

    .line 299
    const-wide/16 v0, 0x2710

    .line 300
    .local v0, "duration":J
    iget-object v2, p0, Lcom/android/server/pm/BroadcastHelper;->mAmInternal:Landroid/app/ActivityManagerInternal;

    if-eqz v2, :cond_0

    .line 301
    iget-object v2, p0, Lcom/android/server/pm/BroadcastHelper;->mAmInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v2}, Landroid/app/ActivityManagerInternal;->getBootTimeTempAllowListDuration()J

    move-result-wide v0

    move-wide v3, v0

    goto :goto_0

    .line 300
    :cond_0
    move-wide v3, v0

    .line 303
    .end local v0    # "duration":J
    .local v3, "duration":J
    :goto_0
    invoke-static {}, Landroid/app/BroadcastOptions;->makeBasic()Landroid/app/BroadcastOptions;

    move-result-object v2

    .line 304
    .local v2, "bOptions":Landroid/app/BroadcastOptions;
    const/4 v5, 0x0

    const-string v7, ""

    move v6, p1

    .end local p1    # "reasonCode":I
    .local v6, "reasonCode":I
    invoke-virtual/range {v2 .. v7}, Landroid/app/BroadcastOptions;->setTemporaryAppAllowlist(JIILjava/lang/String;)V

    .line 307
    return-object v2
.end method

.method private getTemporaryBroadcastOptionsForSystemPackageUpdate(I)Landroid/app/BroadcastOptions;
    .locals 8
    .param p1, "reasonCode"    # I

    .line 1066
    const-wide/16 v0, 0x2710

    .line 1067
    .local v0, "duration":J
    iget-object v2, p0, Lcom/android/server/pm/BroadcastHelper;->mAmInternal:Landroid/app/ActivityManagerInternal;

    if-eqz v2, :cond_0

    .line 1068
    iget-object v2, p0, Lcom/android/server/pm/BroadcastHelper;->mAmInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v2}, Landroid/app/ActivityManagerInternal;->getBootTimeTempAllowListDuration()J

    move-result-wide v0

    move-wide v3, v0

    goto :goto_0

    .line 1067
    :cond_0
    move-wide v3, v0

    .line 1070
    .end local v0    # "duration":J
    .local v3, "duration":J
    :goto_0
    invoke-static {}, Landroid/app/BroadcastOptions;->makeBasic()Landroid/app/BroadcastOptions;

    move-result-object v2

    .line 1071
    .local v2, "bOptions":Landroid/app/BroadcastOptions;
    const/4 v5, 0x0

    const-string v7, ""

    move v6, p1

    .end local p1    # "reasonCode":I
    .local v6, "reasonCode":I
    invoke-virtual/range {v2 .. v7}, Landroid/app/BroadcastOptions;->setTemporaryAppAllowlist(JIILjava/lang/String;)V

    .line 1074
    return-object v2
.end method

.method private static isPrivacySafetyLabelChangeNotificationsEnabled(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .line 924
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 925
    .local v0, "packageManager":Landroid/content/pm/PackageManager;
    const-string/jumbo v1, "privacy"

    const-string/jumbo v2, "safety_label_change_notifications_enabled"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    nop

    if-eqz v1, :cond_0

    .line 927
    const-string v1, "android.hardware.type.automotive"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    nop

    if-nez v1, :cond_0

    .line 928
    const-string v1, "android.software.leanback"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    nop

    if-nez v1, :cond_0

    .line 929
    const-string v1, "android.hardware.type.watch"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 925
    :goto_0
    return v3
.end method

.method private synthetic lambda$sendDistractingPackagesChanged$10(Landroid/os/Bundle;ILjava/util/function/Supplier;)V
    .locals 14
    .param p1, "extras"    # Landroid/os/Bundle;
    .param p2, "userId"    # I
    .param p3, "snapshotSupplier"    # Ljava/util/function/Supplier;

    .line 1270
    filled-new-array/range {p2 .. p2}, [I

    move-result-object v7

    new-instance v10, Lcom/android/server/pm/BroadcastHelper$$ExternalSyntheticLambda6;

    move-object/from16 v13, p3

    invoke-direct {v10, v13}, Lcom/android/server/pm/BroadcastHelper$$ExternalSyntheticLambda6;-><init>(Ljava/util/function/Supplier;)V

    const/4 v11, 0x0

    const/4 v12, 0x0

    const-string v1, "android.intent.action.DISTRACTING_PACKAGES_CHANGED"

    const/4 v2, 0x0

    const/high16 v4, 0x40000000    # 2.0f

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    move-object v3, p1

    invoke-virtual/range {v0 .. v12}, Lcom/android/server/pm/BroadcastHelper;->sendPackageBroadcast(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/String;Landroid/content/IIntentReceiver;[I[ILandroid/util/SparseArray;Ljava/util/function/BiFunction;Landroid/os/Bundle;[Ljava/lang/String;)V

    return-void
.end method

.method private static synthetic lambda$sendDistractingPackagesChanged$9(Ljava/util/function/Supplier;Ljava/lang/Integer;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1
    .param p0, "snapshotSupplier"    # Ljava/util/function/Supplier;
    .param p1, "callingUid"    # Ljava/lang/Integer;
    .param p2, "intentExtras"    # Landroid/os/Bundle;

    .line 1275
    nop

    .line 1276
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1275
    invoke-static {p0, v0, p2}, Lcom/android/server/pm/BroadcastHelper;->filterExtrasChangedPackageList(Ljava/util/function/Supplier;ILandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method private synthetic lambda$sendMyPackageSuspendedOrUnsuspended$8(ZILjava/util/function/Supplier;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 19
    .param p1, "suspended"    # Z
    .param p2, "userId"    # I
    .param p3, "snapshotSupplier"    # Ljava/util/function/Supplier;
    .param p4, "affectedPackages"    # [Ljava/lang/String;
    .param p5, "action"    # Ljava/lang/String;

    .line 1223
    move-object/from16 v0, p4

    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v1

    .line 1224
    .local v1, "am":Landroid/app/IActivityManager;
    if-nez v1, :cond_1

    .line 1225
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IActivityManager null. Cannot send MY_PACKAGE_ "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1226
    if-eqz p1, :cond_0

    const-string v3, ""

    goto :goto_0

    :cond_0
    const-string v3, "UN"

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "SUSPENDED broadcasts"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1225
    const-string v3, "PackageManager"

    invoke-static {v3, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1227
    return-void

    .line 1229
    :cond_1
    filled-new-array/range {p2 .. p2}, [I

    move-result-object v2

    move-object v10, v2

    .line 1230
    .local v10, "targetUserIds":[I
    invoke-interface/range {p3 .. p3}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/Computer;

    .line 1231
    .local v2, "snapshot":Lcom/android/server/pm/Computer;
    array-length v3, v0

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_4

    aget-object v8, v0, v4

    .line 1232
    .local v8, "packageName":Ljava/lang/String;
    if-eqz p1, :cond_2

    .line 1233
    const/16 v5, 0x3e8

    move/from16 v6, p2

    invoke-static {v2, v8, v6, v5}, Lcom/android/server/pm/SuspendPackageHelper;->getSuspendedPackageAppExtras(Lcom/android/server/pm/Computer;Ljava/lang/String;II)Landroid/os/Bundle;

    move-result-object v5

    goto :goto_2

    .line 1235
    :cond_2
    move/from16 v6, p2

    const/4 v5, 0x0

    :goto_2
    nop

    .line 1237
    .local v5, "appExtras":Landroid/os/Bundle;
    if-eqz v5, :cond_3

    .line 1238
    new-instance v7, Landroid/os/Bundle;

    const/4 v9, 0x1

    invoke-direct {v7, v9}, Landroid/os/Bundle;-><init>(I)V

    .line 1239
    .local v7, "intentExtras":Landroid/os/Bundle;
    const-string v9, "android.intent.extra.SUSPENDED_PACKAGE_EXTRAS"

    invoke-virtual {v7, v9, v5}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_3

    .line 1241
    .end local v7    # "intentExtras":Landroid/os/Bundle;
    :cond_3
    const/4 v7, 0x0

    .line 1243
    .restart local v7    # "intentExtras":Landroid/os/Bundle;
    :goto_3
    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object v9, v5

    .end local v5    # "appExtras":Landroid/os/Bundle;
    .local v9, "appExtras":Landroid/os/Bundle;
    const/4 v5, 0x0

    move-object v6, v7

    .end local v7    # "intentExtras":Landroid/os/Bundle;
    .local v6, "intentExtras":Landroid/os/Bundle;
    const/high16 v7, 0x1000000

    move-object v11, v9

    .end local v9    # "appExtras":Landroid/os/Bundle;
    .local v11, "appExtras":Landroid/os/Bundle;
    const/4 v9, 0x0

    move-object v12, v11

    .end local v11    # "appExtras":Landroid/os/Bundle;
    .local v12, "appExtras":Landroid/os/Bundle;
    const/4 v11, 0x0

    move-object v13, v12

    .end local v12    # "appExtras":Landroid/os/Bundle;
    .local v13, "appExtras":Landroid/os/Bundle;
    const/4 v12, 0x0

    move-object/from16 v16, v13

    .end local v13    # "appExtras":Landroid/os/Bundle;
    .local v16, "appExtras":Landroid/os/Bundle;
    const/4 v13, 0x0

    move/from16 v17, v4

    move-object/from16 v18, v16

    move-object/from16 v4, p5

    move/from16 v16, v3

    move-object/from16 v3, p0

    .end local v16    # "appExtras":Landroid/os/Bundle;
    .local v18, "appExtras":Landroid/os/Bundle;
    invoke-direct/range {v3 .. v15}, Lcom/android/server/pm/BroadcastHelper;->doSendBroadcast(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/String;Landroid/content/IIntentReceiver;[IZLandroid/util/SparseArray;Ljava/util/function/BiFunction;Landroid/os/Bundle;[Ljava/lang/String;)V

    .line 1231
    .end local v6    # "intentExtras":Landroid/os/Bundle;
    .end local v8    # "packageName":Ljava/lang/String;
    .end local v18    # "appExtras":Landroid/os/Bundle;
    add-int/lit8 v4, v17, 0x1

    move/from16 v3, v16

    goto :goto_1

    .line 1250
    :cond_4
    return-void
.end method

.method private synthetic lambda$sendPackageAddedForNewUsers$2(Ljava/lang/String;I[I[IZILandroid/util/SparseArray;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "appId"    # I
    .param p3, "userIds"    # [I
    .param p4, "instantUserIds"    # [I
    .param p5, "isArchived"    # Z
    .param p6, "dataLoaderType"    # I
    .param p7, "broadcastAllowList"    # Landroid/util/SparseArray;

    .line 807
    invoke-direct/range {p0 .. p7}, Lcom/android/server/pm/BroadcastHelper;->sendPackageAddedForNewUsers(Ljava/lang/String;I[I[IZILandroid/util/SparseArray;)V

    return-void
.end method

.method private synthetic lambda$sendPackageAddedForNewUsers$3([ILjava/lang/String;Z)V
    .locals 3
    .param p1, "userIds"    # [I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "includeStopped"    # Z

    .line 813
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget v2, p1, v1

    .line 814
    .local v2, "userId":I
    invoke-direct {p0, p2, p3, v2}, Lcom/android/server/pm/BroadcastHelper;->sendBootCompletedBroadcastToSystemApp(Ljava/lang/String;ZI)V

    .line 813
    .end local v2    # "userId":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 817
    :cond_0
    return-void
.end method

.method private synthetic lambda$sendPackageBroadcastAndNotify$5(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/String;Landroid/content/IIntentReceiver;[I[ILandroid/util/SparseArray;Landroid/os/Bundle;)V
    .locals 13
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "extras"    # Landroid/os/Bundle;
    .param p4, "flags"    # I
    .param p5, "targetPkg"    # Ljava/lang/String;
    .param p6, "finishedReceiver"    # Landroid/content/IIntentReceiver;
    .param p7, "userIds"    # [I
    .param p8, "instantUserIds"    # [I
    .param p9, "broadcastAllowList"    # Landroid/util/SparseArray;
    .param p10, "bOptions"    # Landroid/os/Bundle;

    .line 1015
    const/4 v10, 0x0

    const/4 v12, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v11, p10

    invoke-virtual/range {v0 .. v12}, Lcom/android/server/pm/BroadcastHelper;->sendPackageBroadcast(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/String;Landroid/content/IIntentReceiver;[I[ILandroid/util/SparseArray;Ljava/util/function/BiFunction;Landroid/os/Bundle;[Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$sendPackageChangedBroadcast$4(Ljava/lang/String;ZLjava/util/ArrayList;ILjava/lang/String;[I[ILandroid/util/SparseArray;Lcom/android/server/pm/pkg/PackageStateInternal;[Ljava/lang/String;Ljava/lang/String;I)V
    .locals 13
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "dontKillApp"    # Z
    .param p3, "componentNames"    # Ljava/util/ArrayList;
    .param p4, "packageUid"    # I
    .param p5, "reason"    # Ljava/lang/String;
    .param p6, "userIds"    # [I
    .param p7, "instantUserIds"    # [I
    .param p8, "broadcastAllowList"    # Landroid/util/SparseArray;
    .param p9, "setting"    # Lcom/android/server/pm/pkg/PackageStateInternal;
    .param p10, "sharedUserPackages"    # [Ljava/lang/String;
    .param p11, "reasonForTrace"    # Ljava/lang/String;
    .param p12, "callingUidForTrace"    # I

    .line 997
    nop

    .line 999
    invoke-interface/range {p9 .. p9}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v9

    .line 997
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move/from16 v12, p12

    invoke-direct/range {v0 .. v12}, Lcom/android/server/pm/BroadcastHelper;->sendPackageChangedBroadcastInternal(Ljava/lang/String;ZLjava/util/ArrayList;ILjava/lang/String;[I[ILandroid/util/SparseArray;Lcom/android/server/pm/pkg/AndroidPackage;[Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method private static synthetic lambda$sendPackagesSuspendedOrUnsuspendedForUser$6(Ljava/util/function/Supplier;Ljava/lang/Integer;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1
    .param p0, "snapshotSupplier"    # Ljava/util/function/Supplier;
    .param p1, "callingUid"    # Ljava/lang/Integer;
    .param p2, "intentExtras"    # Landroid/os/Bundle;

    .line 1204
    nop

    .line 1205
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1204
    invoke-static {p0, v0, p2}, Lcom/android/server/pm/BroadcastHelper;->filterExtrasChangedPackageList(Ljava/util/function/Supplier;ILandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method private synthetic lambda$sendPackagesSuspendedOrUnsuspendedForUser$7(Ljava/lang/String;Landroid/os/Bundle;ILjava/util/function/BiFunction;Landroid/os/Bundle;)V
    .locals 13
    .param p1, "intent"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;
    .param p3, "userId"    # I
    .param p4, "filterExtrasForReceiver"    # Ljava/util/function/BiFunction;
    .param p5, "options"    # Landroid/os/Bundle;

    .line 1206
    filled-new-array/range {p3 .. p3}, [I

    move-result-object v7

    const/4 v9, 0x0

    const/4 v12, 0x0

    const/4 v2, 0x0

    const/high16 v4, 0x50000000

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object/from16 v10, p4

    move-object/from16 v11, p5

    invoke-virtual/range {v0 .. v12}, Lcom/android/server/pm/BroadcastHelper;->sendPackageBroadcast(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/String;Landroid/content/IIntentReceiver;[I[ILandroid/util/SparseArray;Ljava/util/function/BiFunction;Landroid/os/Bundle;[Ljava/lang/String;)V

    return-void
.end method

.method private static synthetic lambda$sendPreferredActivityChangedBroadcast$1(I)V
    .locals 18
    .param p0, "userId"    # I

    .line 560
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v1

    .line 561
    .local v1, "am":Landroid/app/IActivityManager;
    if-nez v1, :cond_0

    .line 562
    return-void

    .line 565
    :cond_0
    new-instance v4, Landroid/content/Intent;

    const-string v0, "android.intent.action.ACTION_PREFERRED_ACTIVITY_CHANGED"

    invoke-direct {v4, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 566
    .local v4, "intent":Landroid/content/Intent;
    const-string v0, "android.intent.extra.user_handle"

    move/from16 v2, p0

    invoke-virtual {v4, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 567
    const/high16 v0, 0x4000000

    invoke-virtual {v4, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 569
    const/4 v15, 0x0

    const/16 v16, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, -0x1

    const/4 v14, 0x0

    move/from16 v17, p0

    :try_start_0
    invoke-interface/range {v1 .. v17}, Landroid/app/IActivityManager;->broadcastIntentWithFeature(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/os/Bundle;ZZI)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 573
    goto :goto_0

    .line 572
    :catch_0
    move-exception v0

    .line 574
    :goto_0
    return-void
.end method

.method private static synthetic lambda$sendResourcesChangedBroadcast$0(Ljava/util/function/Supplier;Ljava/lang/Integer;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1
    .param p0, "snapshotSupplier"    # Ljava/util/function/Supplier;
    .param p1, "callingUid"    # Ljava/lang/Integer;
    .param p2, "intentExtras"    # Landroid/os/Bundle;

    .line 248
    nop

    .line 249
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 248
    invoke-static {p0, v0, p2}, Lcom/android/server/pm/BroadcastHelper;->filterExtrasChangedPackageList(Ljava/util/function/Supplier;ILandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method private notifyPackageMonitor(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;[I[ILandroid/util/SparseArray;Ljava/util/function/BiFunction;)V
    .locals 9
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "extras"    # Landroid/os/Bundle;
    .param p4, "userIds"    # [I
    .param p5, "instantUserIds"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            "[I[I",
            "Landroid/util/SparseArray<",
            "[I>;",
            "Ljava/util/function/BiFunction<",
            "Ljava/lang/Integer;",
            "Landroid/os/Bundle;",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    .line 1304
    .local p6, "broadcastAllowList":Landroid/util/SparseArray;, "Landroid/util/SparseArray<[I>;"
    .local p7, "filterExtras":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<Ljava/lang/Integer;Landroid/os/Bundle;Landroid/os/Bundle;>;"
    iget-object v0, p0, Lcom/android/server/pm/BroadcastHelper;->mPackageMonitorCallbackHelper:Lcom/android/server/pm/PackageMonitorCallbackHelper;

    iget-object v7, p0, Lcom/android/server/pm/BroadcastHelper;->mHandler:Landroid/os/Handler;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v8, p7

    invoke-virtual/range {v0 .. v8}, Lcom/android/server/pm/PackageMonitorCallbackHelper;->notifyPackageMonitor(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;[I[ILandroid/util/SparseArray;Landroid/os/Handler;Ljava/util/function/BiFunction;)V

    .line 1306
    return-void
.end method

.method private notifyResourcesChanged(ZZ[Ljava/lang/String;[I)V
    .locals 6
    .param p1, "mediaStatus"    # Z
    .param p2, "replacing"    # Z
    .param p3, "pkgNames"    # [Ljava/lang/String;
    .param p4, "uids"    # [I

    .line 1312
    iget-object v0, p0, Lcom/android/server/pm/BroadcastHelper;->mPackageMonitorCallbackHelper:Lcom/android/server/pm/PackageMonitorCallbackHelper;

    iget-object v5, p0, Lcom/android/server/pm/BroadcastHelper;->mHandler:Landroid/os/Handler;

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    .end local p1    # "mediaStatus":Z
    .end local p2    # "replacing":Z
    .end local p3    # "pkgNames":[Ljava/lang/String;
    .end local p4    # "uids":[I
    .local v1, "mediaStatus":Z
    .local v2, "replacing":Z
    .local v3, "pkgNames":[Ljava/lang/String;
    .local v4, "uids":[I
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/PackageMonitorCallbackHelper;->notifyResourcesChanged(ZZ[Ljava/lang/String;[ILandroid/os/Handler;)V

    .line 1314
    return-void
.end method

.method private sendBootCompletedBroadcastToSystemApp(Ljava/lang/String;ZI)V
    .locals 22
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "includeStopped"    # Z
    .param p3, "userId"    # I

    .line 262
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p3

    const-string v0, "android.intent.extra.user_handle"

    iget-object v4, v1, Lcom/android/server/pm/BroadcastHelper;->mUmInternal:Lcom/android/server/pm/UserManagerInternal;

    invoke-virtual {v4, v3}, Lcom/android/server/pm/UserManagerInternal;->isUserRunning(I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 263
    return-void

    .line 265
    :cond_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v4

    .line 268
    .local v4, "am":Landroid/app/IActivityManager;
    :try_start_0
    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.intent.action.LOCKED_BOOT_COMPLETED"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 269
    invoke-virtual {v5, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    .line 270
    .local v6, "lockedBcIntent":Landroid/content/Intent;
    invoke-virtual {v6, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2

    .line 271
    const/16 v5, 0x20

    if-eqz p2, :cond_1

    .line 272
    :try_start_1
    invoke-virtual {v6, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 292
    .end local v6    # "lockedBcIntent":Landroid/content/Intent;
    :catch_0
    move-exception v0

    move-object v3, v4

    goto/16 :goto_2

    .line 274
    .restart local v6    # "lockedBcIntent":Landroid/content/Intent;
    :cond_1
    :goto_0
    :try_start_2
    const-string v7, "android.permission.RECEIVE_BOOT_COMPLETED"

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v12

    .line 275
    .local v12, "requiredPermissions":[Ljava/lang/String;
    const/16 v7, 0xca

    invoke-direct {v1, v7}, Lcom/android/server/pm/BroadcastHelper;->getTemporaryAppAllowlistBroadcastOptions(I)Landroid/app/BroadcastOptions;

    move-result-object v7

    move-object/from16 v20, v7

    .line 277
    .local v20, "bOptions":Landroid/app/BroadcastOptions;
    nop

    .line 279
    invoke-virtual/range {v20 .. v20}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v16
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    .line 277
    move-object v3, v4

    .end local v4    # "am":Landroid/app/IActivityManager;
    .local v3, "am":Landroid/app/IActivityManager;
    const/4 v4, 0x0

    move v7, v5

    const/4 v5, 0x0

    move v8, v7

    const/4 v7, 0x0

    move v9, v8

    const/4 v8, 0x0

    move v10, v9

    const/4 v9, 0x0

    move v11, v10

    const/4 v10, 0x0

    move v13, v11

    const/4 v11, 0x0

    move v14, v13

    const/4 v13, 0x0

    move v15, v14

    const/4 v14, 0x0

    move/from16 v17, v15

    const/4 v15, -0x1

    move/from16 v18, v17

    const/16 v17, 0x0

    move/from16 v19, v18

    const/16 v18, 0x0

    move/from16 v19, p3

    :try_start_3
    invoke-interface/range {v3 .. v19}, Landroid/app/IActivityManager;->broadcastIntentWithFeature(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/os/Bundle;ZZI)I
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1

    move-object v4, v3

    move-object/from16 v21, v6

    move/from16 v3, v19

    .line 282
    .end local v3    # "am":Landroid/app/IActivityManager;
    .end local v6    # "lockedBcIntent":Landroid/content/Intent;
    .restart local v4    # "am":Landroid/app/IActivityManager;
    .local v21, "lockedBcIntent":Landroid/content/Intent;
    :try_start_4
    iget-object v5, v1, Lcom/android/server/pm/BroadcastHelper;->mUmInternal:Lcom/android/server/pm/UserManagerInternal;

    invoke-virtual {v5, v3}, Lcom/android/server/pm/UserManagerInternal;->isUserUnlockingOrUnlocked(I)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 283
    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.intent.action.BOOT_COMPLETED"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    .line 284
    .local v6, "bcIntent":Landroid/content/Intent;
    invoke-virtual {v6, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_2

    .line 285
    if-eqz p2, :cond_2

    .line 286
    const/16 v13, 0x20

    :try_start_5
    invoke-virtual {v6, v13}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_0

    .line 288
    :cond_2
    nop

    .line 290
    :try_start_6
    invoke-virtual/range {v20 .. v20}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v16
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_2

    .line 288
    move-object v3, v4

    .end local v4    # "am":Landroid/app/IActivityManager;
    .restart local v3    # "am":Landroid/app/IActivityManager;
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, -0x1

    const/16 v17, 0x0

    const/16 v18, 0x0

    move/from16 v19, p3

    :try_start_7
    invoke-interface/range {v3 .. v19}, Landroid/app/IActivityManager;->broadcastIntentWithFeature(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/os/Bundle;ZZI)I
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_1

    .line 292
    .end local v6    # "bcIntent":Landroid/content/Intent;
    .end local v12    # "requiredPermissions":[Ljava/lang/String;
    .end local v20    # "bOptions":Landroid/app/BroadcastOptions;
    .end local v21    # "lockedBcIntent":Landroid/content/Intent;
    :catch_1
    move-exception v0

    goto :goto_2

    .end local v3    # "am":Landroid/app/IActivityManager;
    .restart local v4    # "am":Landroid/app/IActivityManager;
    :catch_2
    move-exception v0

    move-object v3, v4

    .end local v4    # "am":Landroid/app/IActivityManager;
    .restart local v3    # "am":Landroid/app/IActivityManager;
    goto :goto_2

    .line 282
    .end local v3    # "am":Landroid/app/IActivityManager;
    .restart local v4    # "am":Landroid/app/IActivityManager;
    .restart local v12    # "requiredPermissions":[Ljava/lang/String;
    .restart local v20    # "bOptions":Landroid/app/BroadcastOptions;
    .restart local v21    # "lockedBcIntent":Landroid/content/Intent;
    :cond_3
    move-object v3, v4

    .line 294
    .end local v4    # "am":Landroid/app/IActivityManager;
    .end local v12    # "requiredPermissions":[Ljava/lang/String;
    .end local v20    # "bOptions":Landroid/app/BroadcastOptions;
    .end local v21    # "lockedBcIntent":Landroid/content/Intent;
    .restart local v3    # "am":Landroid/app/IActivityManager;
    :goto_1
    nop

    .line 295
    return-void

    .line 292
    :goto_2
    nop

    .line 293
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v4

    throw v4
.end method

.method static sendDeviceCustomizationReadyBroadcast()V
    .locals 19

    .line 485
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.DEVICE_CUSTOMIZATION_READY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v5, v0

    .line 486
    .local v5, "intent":Landroid/content/Intent;
    const/high16 v0, 0x1000000

    invoke-virtual {v5, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 487
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v2

    .line 488
    .local v2, "am":Landroid/app/IActivityManager;
    const-string v0, "android.permission.RECEIVE_DEVICE_CUSTOMIZATION_READY"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v11

    .line 492
    .local v11, "requiredPermissions":[Ljava/lang/String;
    const/16 v17, 0x0

    const/16 v18, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, -0x1

    const/4 v15, 0x0

    const/16 v16, 0x0

    :try_start_0
    invoke-interface/range {v2 .. v18}, Landroid/app/IActivityManager;->broadcastIntentWithFeature(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/os/Bundle;ZZI)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 497
    nop

    .line 498
    return-void

    .line 495
    :catch_0
    move-exception v0

    .line 496
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method private sendPackageAddedForNewUsers(Lcom/android/server/pm/Computer;Ljava/lang/String;ZZI[I[IZI)V
    .locals 10
    .param p1, "snapshot"    # Lcom/android/server/pm/Computer;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "sendBootCompleted"    # Z
    .param p4, "includeStopped"    # Z
    .param p5, "appId"    # I
    .param p6, "userIds"    # [I
    .param p7, "instantUserIds"    # [I
    .param p8, "isArchived"    # Z
    .param p9, "dataLoaderType"    # I

    .line 800
    move-object/from16 v3, p6

    invoke-static {v3}, Lcom/android/internal/util/ArrayUtils;->isEmpty([I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static/range {p7 .. p7}, Lcom/android/internal/util/ArrayUtils;->isEmpty([I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 801
    return-void

    .line 803
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/BroadcastHelper;->mAppsFilter:Lcom/android/server/pm/AppsFilterSnapshot;

    .line 804
    const/16 v1, 0x3e8

    invoke-interface {p1, p2, v1}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;I)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v1

    .line 805
    invoke-interface {p1}, Lcom/android/server/pm/Computer;->getPackageStates()Landroid/util/ArrayMap;

    move-result-object v2

    .line 803
    invoke-interface {v0, p1, v1, v3, v2}, Lcom/android/server/pm/AppsFilterSnapshot;->getVisibilityAllowList(Lcom/android/server/pm/snapshot/PackageDataSnapshot;Lcom/android/server/pm/pkg/PackageStateInternal;[ILandroid/util/ArrayMap;)Landroid/util/SparseArray;

    move-result-object v7

    .line 806
    .local v7, "broadcastAllowList":Landroid/util/SparseArray;, "Landroid/util/SparseArray<[I>;"
    iget-object v9, p0, Lcom/android/server/pm/BroadcastHelper;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/pm/BroadcastHelper$$ExternalSyntheticLambda4;

    move-object v1, p0

    move-object v2, p2

    move-object/from16 v5, p7

    move/from16 v6, p8

    move-object v4, v3

    move-object v8, v7

    move v3, p5

    move/from16 v7, p9

    .end local v7    # "broadcastAllowList":Landroid/util/SparseArray;, "Landroid/util/SparseArray<[I>;"
    .local v8, "broadcastAllowList":Landroid/util/SparseArray;, "Landroid/util/SparseArray<[I>;"
    invoke-direct/range {v0 .. v8}, Lcom/android/server/pm/BroadcastHelper$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/pm/BroadcastHelper;Ljava/lang/String;I[I[IZILandroid/util/SparseArray;)V

    move-object v7, v8

    .end local v8    # "broadcastAllowList":Landroid/util/SparseArray;, "Landroid/util/SparseArray<[I>;"
    .restart local v7    # "broadcastAllowList":Landroid/util/SparseArray;, "Landroid/util/SparseArray<[I>;"
    invoke-virtual {v9, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 809
    iget-object v0, p0, Lcom/android/server/pm/BroadcastHelper;->mPackageMonitorCallbackHelper:Lcom/android/server/pm/PackageMonitorCallbackHelper;

    iget-object v8, p0, Lcom/android/server/pm/BroadcastHelper;->mHandler:Landroid/os/Handler;

    move-object v1, p2

    move v2, p5

    move-object/from16 v3, p6

    move-object/from16 v4, p7

    move/from16 v5, p8

    move/from16 v6, p9

    invoke-virtual/range {v0 .. v8}, Lcom/android/server/pm/PackageMonitorCallbackHelper;->notifyPackageAddedForNewUsers(Ljava/lang/String;I[I[IZILandroid/util/SparseArray;Landroid/os/Handler;)V

    .line 811
    if-eqz p3, :cond_1

    invoke-static {v3}, Lcom/android/internal/util/ArrayUtils;->isEmpty([I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 812
    iget-object v0, p0, Lcom/android/server/pm/BroadcastHelper;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/pm/BroadcastHelper$$ExternalSyntheticLambda5;

    invoke-direct {v2, p0, v3, p2, p4}, Lcom/android/server/pm/BroadcastHelper$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/pm/BroadcastHelper;[ILjava/lang/String;Z)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 820
    :cond_1
    return-void
.end method

.method private sendPackageAddedForNewUsers(Ljava/lang/String;I[I[IZILandroid/util/SparseArray;)V
    .locals 16
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "appId"    # I
    .param p3, "userIds"    # [I
    .param p4, "instantUserIds"    # [I
    .param p5, "isArchived"    # Z
    .param p6, "dataLoaderType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I[I[IZI",
            "Landroid/util/SparseArray<",
            "[I>;)V"
        }
    .end annotation

    .line 829
    .local p7, "broadcastAllowlist":Landroid/util/SparseArray;, "Landroid/util/SparseArray<[I>;"
    new-instance v3, Landroid/os/Bundle;

    const/4 v0, 0x1

    invoke-direct {v3, v0}, Landroid/os/Bundle;-><init>(I)V

    .line 832
    .local v3, "extras":Landroid/os/Bundle;
    invoke-static/range {p3 .. p3}, Lcom/android/internal/util/ArrayUtils;->isEmpty([I)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    aget v1, p4, v2

    goto :goto_0

    :cond_0
    aget v1, p3, v2

    .line 831
    :goto_0
    move/from16 v13, p2

    invoke-static {v1, v13}, Landroid/os/UserHandle;->getUid(II)I

    move-result v14

    .line 833
    .local v14, "uid":I
    const-string v1, "android.intent.extra.UID"

    invoke-virtual {v3, v1, v14}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 834
    if-eqz p5, :cond_1

    .line 835
    const-string v1, "android.intent.extra.ARCHIVAL"

    invoke-virtual {v3, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 837
    :cond_1
    const-string v0, "android.content.pm.extra.DATA_LOADER_TYPE"

    move/from16 v15, p6

    invoke-virtual {v3, v0, v15}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 839
    const/4 v11, 0x0

    const/4 v12, 0x0

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v10, 0x0

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p7

    invoke-virtual/range {v0 .. v12}, Lcom/android/server/pm/BroadcastHelper;->sendPackageBroadcast(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/String;Landroid/content/IIntentReceiver;[I[ILandroid/util/SparseArray;Ljava/util/function/BiFunction;Landroid/os/Bundle;[Ljava/lang/String;)V

    .line 845
    iget-object v1, v0, Lcom/android/server/pm/BroadcastHelper;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/server/pm/BroadcastHelper;->isPrivacySafetyLabelChangeNotificationsEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 846
    iget-object v1, v0, Lcom/android/server/pm/BroadcastHelper;->mContext:Landroid/content/Context;

    .line 848
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/pm/PackageManager;->getPermissionControllerPackageName()Ljava/lang/String;

    move-result-object v5

    .line 846
    const-string v1, "android.intent.action.PACKAGE_ADDED"

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v2, p1

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p7

    invoke-virtual/range {v0 .. v12}, Lcom/android/server/pm/BroadcastHelper;->sendPackageBroadcast(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/String;Landroid/content/IIntentReceiver;[I[ILandroid/util/SparseArray;Ljava/util/function/BiFunction;Landroid/os/Bundle;[Ljava/lang/String;)V

    .line 853
    :cond_2
    return-void
.end method

.method private sendPackageBroadcastAndNotify(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/String;Landroid/content/IIntentReceiver;[I[ILandroid/util/SparseArray;Landroid/os/Bundle;)V
    .locals 13
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "extras"    # Landroid/os/Bundle;
    .param p4, "flags"    # I
    .param p5, "targetPkg"    # Ljava/lang/String;
    .param p6, "finishedReceiver"    # Landroid/content/IIntentReceiver;
    .param p7, "userIds"    # [I
    .param p8, "instantUserIds"    # [I
    .param p10, "bOptions"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            "I",
            "Ljava/lang/String;",
            "Landroid/content/IIntentReceiver;",
            "[I[I",
            "Landroid/util/SparseArray<",
            "[I>;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .line 1015
    .local p9, "broadcastAllowList":Landroid/util/SparseArray;, "Landroid/util/SparseArray<[I>;"
    iget-object v0, p0, Lcom/android/server/pm/BroadcastHelper;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/pm/BroadcastHelper$$ExternalSyntheticLambda10;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object/from16 v5, p3

    move/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    move-object/from16 v12, p10

    invoke-direct/range {v1 .. v12}, Lcom/android/server/pm/BroadcastHelper$$ExternalSyntheticLambda10;-><init>(Lcom/android/server/pm/BroadcastHelper;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/String;Landroid/content/IIntentReceiver;[I[ILandroid/util/SparseArray;Landroid/os/Bundle;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1018
    if-nez p5, :cond_0

    .line 1025
    const/4 v9, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    move-object/from16 v8, p9

    invoke-direct/range {v2 .. v9}, Lcom/android/server/pm/BroadcastHelper;->notifyPackageMonitor(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;[I[ILandroid/util/SparseArray;Ljava/util/function/BiFunction;)V

    .line 1028
    :cond_0
    return-void
.end method

.method private sendPackageChangedBroadcastInternal(Ljava/lang/String;ZLjava/util/ArrayList;ILjava/lang/String;[I[ILandroid/util/SparseArray;Lcom/android/server/pm/pkg/AndroidPackage;[Ljava/lang/String;Ljava/lang/String;I)V
    .locals 20
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "dontKillApp"    # Z
    .param p4, "packageUid"    # I
    .param p5, "reason"    # Ljava/lang/String;
    .param p6, "userIds"    # [I
    .param p7, "instantUserIds"    # [I
    .param p9, "pkg"    # Lcom/android/server/pm/pkg/AndroidPackage;
    .param p10, "sharedUidPackages"    # [Ljava/lang/String;
    .param p11, "reasonForTrace"    # Ljava/lang/String;
    .param p12, "callingUidForTrace"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;I",
            "Ljava/lang/String;",
            "[I[I",
            "Landroid/util/SparseArray<",
            "[I>;",
            "Lcom/android/server/pm/pkg/AndroidPackage;",
            "[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .line 373
    .local p3, "componentNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p8, "broadcastAllowList":Landroid/util/SparseArray;, "Landroid/util/SparseArray<[I>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v11, p3

    move-object/from16 v12, p10

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v13

    .line 374
    .local v13, "isForWholeApp":Z
    iget-object v2, v0, Lcom/android/server/pm/BroadcastHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    move/from16 v14, p12

    invoke-virtual {v2, v14}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v6

    .line 376
    .local v6, "callingPackageNameForTrace":Ljava/lang/String;
    if-nez v13, :cond_5

    .line 392
    move-object/from16 v15, p9

    invoke-direct {v0, v15, v11}, Lcom/android/server/pm/BroadcastHelper;->getAllNotExportedComponents(Lcom/android/server/pm/pkg/AndroidPackage;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v8

    .line 394
    .local v8, "notExportedComponentNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v11}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Ljava/util/ArrayList;

    .line 395
    .local v9, "exportedComponentNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 397
    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    .line 402
    const-string v2, "android"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 403
    nop

    .line 405
    move-object v7, v6

    .end local v6    # "callingPackageNameForTrace":Ljava/lang/String;
    .local v7, "callingPackageNameForTrace":Ljava/lang/String;
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 403
    const/4 v1, 0x1

    const-string v4, "android"

    const-string/jumbo v5, "notExported"

    move-object/from16 v3, p1

    move-object/from16 v2, p11

    invoke-static/range {v1 .. v7}, Lcom/android/server/pm/BroadcastHelper;->tracePackageChangedBroadcastEvent(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 406
    move-object/from16 v16, v7

    .end local v7    # "callingPackageNameForTrace":Ljava/lang/String;
    .local v16, "callingPackageNameForTrace":Ljava/lang/String;
    move-object v3, v9

    .end local v9    # "exportedComponentNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local v3, "exportedComponentNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v9, "android"

    const/4 v10, 0x0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v17, v3

    move-object v3, v8

    move-object/from16 v8, p8

    .end local v8    # "notExportedComponentNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local v3, "notExportedComponentNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local v17, "exportedComponentNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct/range {v0 .. v10}, Lcom/android/server/pm/BroadcastHelper;->sendPackageChangedBroadcastWithPermissions(Ljava/lang/String;ZLjava/util/ArrayList;ILjava/lang/String;[I[ILandroid/util/SparseArray;Ljava/lang/String;[Ljava/lang/String;)V

    move-object v7, v3

    .end local v3    # "notExportedComponentNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local v7, "notExportedComponentNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    goto :goto_0

    .line 402
    .end local v7    # "notExportedComponentNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v16    # "callingPackageNameForTrace":Ljava/lang/String;
    .end local v17    # "exportedComponentNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v6    # "callingPackageNameForTrace":Ljava/lang/String;
    .restart local v8    # "notExportedComponentNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v9    # "exportedComponentNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_0
    move-object/from16 v16, v6

    move-object v7, v8

    move-object/from16 v17, v9

    .line 413
    .end local v6    # "callingPackageNameForTrace":Ljava/lang/String;
    .end local v8    # "notExportedComponentNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v9    # "exportedComponentNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v7    # "notExportedComponentNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v16    # "callingPackageNameForTrace":Ljava/lang/String;
    .restart local v17    # "exportedComponentNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_0
    nop

    .line 415
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 413
    const/4 v0, 0x1

    const-string/jumbo v4, "notExported"

    move-object/from16 v3, p1

    move-object/from16 v2, p1

    move-object/from16 v1, p11

    move-object/from16 v6, v16

    .end local v16    # "callingPackageNameForTrace":Ljava/lang/String;
    .restart local v6    # "callingPackageNameForTrace":Ljava/lang/String;
    invoke-static/range {v0 .. v6}, Lcom/android/server/pm/BroadcastHelper;->tracePackageChangedBroadcastEvent(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 416
    .end local v6    # "callingPackageNameForTrace":Ljava/lang/String;
    .restart local v16    # "callingPackageNameForTrace":Ljava/lang/String;
    const/4 v10, 0x0

    move-object/from16 v9, p1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v8, p8

    move-object v3, v7

    move-object/from16 v7, p7

    .end local v7    # "notExportedComponentNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v3    # "notExportedComponentNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct/range {v0 .. v10}, Lcom/android/server/pm/BroadcastHelper;->sendPackageChangedBroadcastWithPermissions(Ljava/lang/String;ZLjava/util/ArrayList;ILjava/lang/String;[I[ILandroid/util/SparseArray;Ljava/lang/String;[Ljava/lang/String;)V

    .line 422
    move-object v7, v3

    .end local v3    # "notExportedComponentNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v7    # "notExportedComponentNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x0

    move v8, v0

    .local v8, "i":I
    :goto_1
    array-length v0, v12

    if-ge v8, v0, :cond_2

    .line 423
    aget-object v3, v12, v8

    .line 424
    .local v3, "sharedPackage":Ljava/lang/String;
    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 425
    move-object/from16 v19, v7

    move/from16 v18, v8

    goto :goto_2

    .line 427
    :cond_1
    nop

    .line 429
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 427
    const/4 v0, 0x1

    const-string/jumbo v4, "notExported"

    move-object v2, v1

    move-object/from16 v6, v16

    move-object/from16 v1, p11

    .end local v16    # "callingPackageNameForTrace":Ljava/lang/String;
    .restart local v6    # "callingPackageNameForTrace":Ljava/lang/String;
    invoke-static/range {v0 .. v6}, Lcom/android/server/pm/BroadcastHelper;->tracePackageChangedBroadcastEvent(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 430
    .end local v6    # "callingPackageNameForTrace":Ljava/lang/String;
    .restart local v16    # "callingPackageNameForTrace":Ljava/lang/String;
    const/4 v10, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object v9, v3

    move-object v3, v7

    move/from16 v18, v8

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    .end local v7    # "notExportedComponentNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v8    # "i":I
    .local v3, "notExportedComponentNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local v9, "sharedPackage":Ljava/lang/String;
    .local v18, "i":I
    invoke-direct/range {v0 .. v10}, Lcom/android/server/pm/BroadcastHelper;->sendPackageChangedBroadcastWithPermissions(Ljava/lang/String;ZLjava/util/ArrayList;ILjava/lang/String;[I[ILandroid/util/SparseArray;Ljava/lang/String;[Ljava/lang/String;)V

    move-object/from16 v19, v3

    move-object v3, v9

    .line 422
    .end local v3    # "notExportedComponentNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v9    # "sharedPackage":Ljava/lang/String;
    .local v19, "notExportedComponentNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_2
    add-int/lit8 v8, v18, 0x1

    move-object/from16 v1, p1

    move-object/from16 v7, v19

    .end local v18    # "i":I
    .restart local v8    # "i":I
    goto :goto_1

    .end local v19    # "notExportedComponentNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v7    # "notExportedComponentNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_2
    move-object/from16 v19, v7

    move/from16 v18, v8

    .end local v7    # "notExportedComponentNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v8    # "i":I
    .restart local v18    # "i":I
    .restart local v19    # "notExportedComponentNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    goto :goto_3

    .line 397
    .end local v16    # "callingPackageNameForTrace":Ljava/lang/String;
    .end local v17    # "exportedComponentNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v18    # "i":I
    .end local v19    # "notExportedComponentNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v6    # "callingPackageNameForTrace":Ljava/lang/String;
    .local v8, "notExportedComponentNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local v9, "exportedComponentNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_3
    move-object/from16 v16, v6

    move-object/from16 v19, v8

    move-object/from16 v17, v9

    .line 438
    .end local v6    # "callingPackageNameForTrace":Ljava/lang/String;
    .end local v8    # "notExportedComponentNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v9    # "exportedComponentNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v16    # "callingPackageNameForTrace":Ljava/lang/String;
    .restart local v17    # "exportedComponentNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v19    # "notExportedComponentNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_3
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 439
    nop

    .line 441
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 439
    const/4 v0, 0x1

    const-string v3, "<implicit>"

    const-string v4, "exported"

    move-object/from16 v2, p1

    move-object/from16 v1, p11

    move-object/from16 v6, v16

    .end local v16    # "callingPackageNameForTrace":Ljava/lang/String;
    .restart local v6    # "callingPackageNameForTrace":Ljava/lang/String;
    invoke-static/range {v0 .. v6}, Lcom/android/server/pm/BroadcastHelper;->tracePackageChangedBroadcastEvent(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 442
    .end local v6    # "callingPackageNameForTrace":Ljava/lang/String;
    .restart local v16    # "callingPackageNameForTrace":Ljava/lang/String;
    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v3, v17

    .end local v17    # "exportedComponentNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local v3, "exportedComponentNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct/range {v0 .. v10}, Lcom/android/server/pm/BroadcastHelper;->sendPackageChangedBroadcastWithPermissions(Ljava/lang/String;ZLjava/util/ArrayList;ILjava/lang/String;[I[ILandroid/util/SparseArray;Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_4

    .line 438
    .end local v3    # "exportedComponentNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v17    # "exportedComponentNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_4
    move-object/from16 v3, v17

    .line 447
    .end local v17    # "exportedComponentNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v3    # "exportedComponentNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_4
    return-void

    .line 376
    .end local v3    # "exportedComponentNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v16    # "callingPackageNameForTrace":Ljava/lang/String;
    .end local v19    # "notExportedComponentNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v6    # "callingPackageNameForTrace":Ljava/lang/String;
    :cond_5
    move-object/from16 v15, p9

    move-object/from16 v16, v6

    .line 378
    .end local v6    # "callingPackageNameForTrace":Ljava/lang/String;
    .restart local v16    # "callingPackageNameForTrace":Ljava/lang/String;
    nop

    .line 380
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 377
    const/4 v0, 0x1

    const-string v3, "<implicit>"

    const-string/jumbo v4, "whole"

    move-object/from16 v2, p1

    move-object/from16 v1, p11

    move-object/from16 v6, v16

    .end local v16    # "callingPackageNameForTrace":Ljava/lang/String;
    .restart local v6    # "callingPackageNameForTrace":Ljava/lang/String;
    invoke-static/range {v0 .. v6}, Lcom/android/server/pm/BroadcastHelper;->tracePackageChangedBroadcastEvent(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 382
    .end local v6    # "callingPackageNameForTrace":Ljava/lang/String;
    .restart local v16    # "callingPackageNameForTrace":Ljava/lang/String;
    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object v3, v11

    invoke-direct/range {v0 .. v10}, Lcom/android/server/pm/BroadcastHelper;->sendPackageChangedBroadcastWithPermissions(Ljava/lang/String;ZLjava/util/ArrayList;ILjava/lang/String;[I[ILandroid/util/SparseArray;Ljava/lang/String;[Ljava/lang/String;)V

    .line 385
    return-void
.end method

.method private sendPackageChangedBroadcastWithPermissions(Ljava/lang/String;ZLjava/util/ArrayList;ILjava/lang/String;[I[ILandroid/util/SparseArray;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 17
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "dontKillApp"    # Z
    .param p4, "packageUid"    # I
    .param p5, "reason"    # Ljava/lang/String;
    .param p6, "userIds"    # [I
    .param p7, "instantUserIds"    # [I
    .param p9, "targetPackageName"    # Ljava/lang/String;
    .param p10, "requiredPermissions"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;I",
            "Ljava/lang/String;",
            "[I[I",
            "Landroid/util/SparseArray<",
            "[I>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 463
    .local p3, "componentNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p8, "broadcastAllowList":Landroid/util/SparseArray;, "Landroid/util/SparseArray<[I>;"
    move-object/from16 v0, p3

    move-object/from16 v1, p5

    new-instance v2, Landroid/os/Bundle;

    const/4 v3, 0x4

    invoke-direct {v2, v3}, Landroid/os/Bundle;-><init>(I)V

    move-object v7, v2

    .line 464
    .local v7, "extras":Landroid/os/Bundle;
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "android.intent.extra.changed_component_name"

    invoke-virtual {v7, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 465
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    .line 466
    .local v3, "nameList":[Ljava/lang/String;
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 467
    const-string v4, "android.intent.extra.changed_component_name_list"

    invoke-virtual {v7, v4, v3}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 468
    const-string v4, "android.intent.extra.DONT_KILL_APP"

    move/from16 v5, p2

    invoke-virtual {v7, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 469
    const-string v4, "android.intent.extra.UID"

    move/from16 v6, p4

    invoke-virtual {v7, v4, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 470
    if-eqz v1, :cond_0

    .line 471
    const-string v4, "android.intent.extra.REASON"

    invoke-virtual {v7, v4, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 476
    :cond_0
    move-object/from16 v4, p1

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 477
    const/high16 v2, 0x40000000    # 2.0f

    :goto_0
    move v8, v2

    goto :goto_1

    :cond_1
    goto :goto_0

    .line 478
    .local v8, "flags":I
    :goto_1
    const/4 v14, 0x0

    const/4 v15, 0x0

    const-string v5, "android.intent.action.PACKAGE_CHANGED"

    const/4 v10, 0x0

    move-object/from16 v11, p6

    move-object/from16 v12, p7

    move-object/from16 v13, p8

    move-object/from16 v9, p9

    move-object/from16 v16, p10

    move-object v6, v4

    move-object/from16 v4, p0

    invoke-virtual/range {v4 .. v16}, Lcom/android/server/pm/BroadcastHelper;->sendPackageBroadcast(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/String;Landroid/content/IIntentReceiver;[I[ILandroid/util/SparseArray;Ljava/util/function/BiFunction;Landroid/os/Bundle;[Ljava/lang/String;)V

    .line 482
    return-void
.end method

.method private static tracePackageChangedBroadcastEvent(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 4
    .param p0, "applyFlag"    # Z
    .param p1, "reasonForTrace"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "targetPackageName"    # Ljava/lang/String;
    .param p4, "targetComponent"    # Ljava/lang/String;
    .param p5, "componentSize"    # I
    .param p6, "callingPackageNameForTrace"    # Ljava/lang/String;

    .line 1321
    const-wide/32 v0, 0x80000

    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1322
    return-void

    .line 1325
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1326
    .local v2, "builder":Ljava/lang/StringBuilder;
    const-string v3, "broadcastPackageChanged; "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1327
    const-string v3, "af="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1328
    const-string v3, ",rft="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1329
    const-string v3, ",pn="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1330
    const-string v3, ",tpn="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1331
    const-string v3, ",tc="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1332
    const-string v3, ",cs="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1333
    const-string v3, ",cpnft="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1335
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v3}, Landroid/os/Trace;->instant(JLjava/lang/String;)V

    .line 1336
    return-void
.end method


# virtual methods
.method canLauncherAccessProfile(Landroid/content/ComponentName;I)Z
    .locals 4
    .param p1, "launcherComponent"    # Landroid/content/ComponentName;
    .param p2, "userId"    # I

    .line 536
    nop

    .line 537
    nop

    .line 538
    nop

    .line 539
    iget-object v0, p0, Lcom/android/server/pm/BroadcastHelper;->mUmInternal:Lcom/android/server/pm/UserManagerInternal;

    invoke-virtual {v0, p2}, Lcom/android/server/pm/UserManagerInternal;->getUserProperties(I)Landroid/content/pm/UserProperties;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/UserProperties;->getProfileApiVisibility()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 541
    return v1

    .line 543
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/BroadcastHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 545
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 543
    const-string v3, "android.permission.ACCESS_HIDDEN_PROFILES_FULL"

    invoke-virtual {v0, v3, v2}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    .line 547
    return v1

    .line 550
    :cond_1
    iget-object v0, p0, Lcom/android/server/pm/BroadcastHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 552
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 550
    const-string v3, "android.permission.ACCESS_HIDDEN_PROFILES"

    invoke-virtual {v0, v3, v2}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method sendApplicationHiddenForUser(Ljava/lang/String;Lcom/android/server/pm/pkg/PackageStateInternal;ILcom/android/server/pm/PackageSender;)V
    .locals 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "packageState"    # Lcom/android/server/pm/pkg/PackageStateInternal;
    .param p3, "userId"    # I
    .param p4, "packageSender"    # Lcom/android/server/pm/PackageSender;

    .line 960
    new-instance v0, Lcom/android/server/pm/PackageRemovedInfo;

    invoke-direct {v0}, Lcom/android/server/pm/PackageRemovedInfo;-><init>()V

    move-object v2, v0

    .line 961
    .local v2, "info":Lcom/android/server/pm/PackageRemovedInfo;
    iput-object p1, v2, Lcom/android/server/pm/PackageRemovedInfo;->mRemovedPackage:Ljava/lang/String;

    .line 962
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getInstallSource()Lcom/android/server/pm/InstallSource;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/pm/InstallSource;->mInstallerPackageName:Ljava/lang/String;

    iput-object v0, v2, Lcom/android/server/pm/PackageRemovedInfo;->mInstallerPackageName:Ljava/lang/String;

    .line 963
    filled-new-array {p3}, [I

    move-result-object v0

    iput-object v0, v2, Lcom/android/server/pm/PackageRemovedInfo;->mRemovedUsers:[I

    .line 964
    filled-new-array {p3}, [I

    move-result-object v0

    iput-object v0, v2, Lcom/android/server/pm/PackageRemovedInfo;->mBroadcastUsers:[I

    .line 965
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v0

    invoke-static {p3, v0}, Landroid/os/UserHandle;->getUid(II)I

    move-result v0

    iput v0, v2, Lcom/android/server/pm/PackageRemovedInfo;->mUid:I

    .line 966
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->getVersionCode()J

    move-result-wide v0

    iput-wide v0, v2, Lcom/android/server/pm/PackageRemovedInfo;->mRemovedPackageVersionCode:J

    .line 969
    invoke-interface {p2, p3}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/pm/pkg/PackageUserStateInternal;->isPrivacyHidden()Z

    move-result v0

    iput-boolean v0, v2, Lcom/android/server/pm/PackageRemovedInfo;->mDeleteByPrivacyHidden:Z

    .line 971
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v4, 0x1

    move-object v1, p0

    move-object v3, p4

    .end local p4    # "packageSender":Lcom/android/server/pm/PackageSender;
    .local v3, "packageSender":Lcom/android/server/pm/PackageSender;
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/BroadcastHelper;->sendPackageRemovedBroadcasts(Lcom/android/server/pm/PackageRemovedInfo;Lcom/android/server/pm/PackageSender;ZZZ)V

    .line 973
    return-void
.end method

.method sendDistractingPackagesChanged(Ljava/util/function/Supplier;[Ljava/lang/String;[III)V
    .locals 3
    .param p2, "pkgList"    # [Ljava/lang/String;
    .param p3, "uidList"    # [I
    .param p4, "userId"    # I
    .param p5, "distractionFlags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Supplier<",
            "Lcom/android/server/pm/Computer;",
            ">;[",
            "Ljava/lang/String;",
            "[III)V"
        }
    .end annotation

    .line 1265
    .local p1, "snapshotSupplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Lcom/android/server/pm/Computer;>;"
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1266
    .local v0, "extras":Landroid/os/Bundle;
    const-string v1, "android.intent.extra.changed_package_list"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 1267
    const-string v1, "android.intent.extra.changed_uid_list"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 1268
    const-string v1, "android.intent.extra.distraction_restrictions"

    invoke-virtual {v0, v1, p5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1270
    iget-object v1, p0, Lcom/android/server/pm/BroadcastHelper;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/pm/BroadcastHelper$$ExternalSyntheticLambda8;

    invoke-direct {v2, p0, v0, p4, p1}, Lcom/android/server/pm/BroadcastHelper$$ExternalSyntheticLambda8;-><init>(Lcom/android/server/pm/BroadcastHelper;Landroid/os/Bundle;ILjava/util/function/Supplier;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1278
    return-void
.end method

.method sendFirstLaunchBroadcast(Ljava/lang/String;Ljava/lang/String;[I[I)V
    .locals 13
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "installerPkg"    # Ljava/lang/String;
    .param p3, "userIds"    # [I
    .param p4, "instantUserIds"    # [I

    .line 880
    const/4 v11, 0x0

    const/4 v12, 0x0

    const-string v1, "android.intent.action.PACKAGE_FIRST_LAUNCH"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v5, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    invoke-virtual/range {v0 .. v12}, Lcom/android/server/pm/BroadcastHelper;->sendPackageBroadcast(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/String;Landroid/content/IIntentReceiver;[I[ILandroid/util/SparseArray;Ljava/util/function/BiFunction;Landroid/os/Bundle;[Ljava/lang/String;)V

    .line 884
    return-void
.end method

.method sendMyPackageSuspendedOrUnsuspended(Ljava/util/function/Supplier;[Ljava/lang/String;ZI)V
    .locals 8
    .param p2, "affectedPackages"    # [Ljava/lang/String;
    .param p3, "suspended"    # Z
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Supplier<",
            "Lcom/android/server/pm/Computer;",
            ">;[",
            "Ljava/lang/String;",
            "ZI)V"
        }
    .end annotation

    .line 1219
    .local p1, "snapshotSupplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Lcom/android/server/pm/Computer;>;"
    if-eqz p3, :cond_0

    .line 1220
    const-string v0, "android.intent.action.MY_PACKAGE_SUSPENDED"

    goto :goto_0

    .line 1221
    :cond_0
    const-string v0, "android.intent.action.MY_PACKAGE_UNSUSPENDED"

    :goto_0
    move-object v7, v0

    .line 1222
    .local v7, "action":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/server/pm/BroadcastHelper;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/pm/BroadcastHelper$$ExternalSyntheticLambda9;

    move-object v2, p0

    move-object v5, p1

    move-object v6, p2

    move v3, p3

    move v4, p4

    .end local p1    # "snapshotSupplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Lcom/android/server/pm/Computer;>;"
    .end local p2    # "affectedPackages":[Ljava/lang/String;
    .end local p3    # "suspended":Z
    .end local p4    # "userId":I
    .local v3, "suspended":Z
    .local v4, "userId":I
    .local v5, "snapshotSupplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Lcom/android/server/pm/Computer;>;"
    .local v6, "affectedPackages":[Ljava/lang/String;
    invoke-direct/range {v1 .. v7}, Lcom/android/server/pm/BroadcastHelper$$ExternalSyntheticLambda9;-><init>(Lcom/android/server/pm/BroadcastHelper;ZILjava/util/function/Supplier;[Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1251
    return-void
.end method

.method sendPackageAddedForUser(Lcom/android/server/pm/Computer;Ljava/lang/String;Lcom/android/server/pm/pkg/PackageStateInternal;IZILjava/lang/String;)V
    .locals 13
    .param p1, "snapshot"    # Lcom/android/server/pm/Computer;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "packageState"    # Lcom/android/server/pm/pkg/PackageStateInternal;
    .param p4, "userId"    # I
    .param p5, "isArchived"    # Z
    .param p6, "dataLoaderType"    # I
    .param p7, "appPredictionServicePackage"    # Ljava/lang/String;

    .line 862
    move/from16 v0, p4

    invoke-interface/range {p3 .. p4}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v1

    .line 863
    .local v1, "userState":Lcom/android/server/pm/pkg/PackageUserStateInternal;
    invoke-interface/range {p3 .. p3}, Lcom/android/server/pm/pkg/PackageState;->isSystem()Z

    move-result v5

    .line 864
    .local v5, "isSystem":Z
    invoke-interface {v1}, Lcom/android/server/pm/pkg/PackageUserState;->isInstantApp()Z

    move-result v12

    .line 865
    .local v12, "isInstantApp":Z
    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v12, :cond_0

    sget-object v4, Lcom/android/server/pm/PackageManagerService;->EMPTY_INT_ARRAY:[I

    :goto_0
    move-object v8, v4

    goto :goto_1

    :cond_0
    new-array v4, v3, [I

    aput v0, v4, v2

    goto :goto_0

    .line 866
    .local v8, "userIds":[I
    :goto_1
    if-eqz v12, :cond_1

    new-array v3, v3, [I

    aput v0, v3, v2

    :goto_2
    move-object v9, v3

    goto :goto_3

    :cond_1
    sget-object v3, Lcom/android/server/pm/PackageManagerService;->EMPTY_INT_ARRAY:[I

    goto :goto_2

    .line 867
    .local v9, "instantUserIds":[I
    :goto_3
    nop

    .line 868
    invoke-interface/range {p3 .. p3}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v7

    .line 867
    const/4 v6, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move/from16 v10, p5

    move/from16 v11, p6

    invoke-direct/range {v2 .. v11}, Lcom/android/server/pm/BroadcastHelper;->sendPackageAddedForNewUsers(Lcom/android/server/pm/Computer;Ljava/lang/String;ZZI[I[IZI)V

    .line 872
    new-instance v6, Landroid/content/pm/PackageInstaller$SessionInfo;

    invoke-direct {v6}, Landroid/content/pm/PackageInstaller$SessionInfo;-><init>()V

    .line 873
    .local v6, "info":Landroid/content/pm/PackageInstaller$SessionInfo;
    invoke-interface {v1}, Lcom/android/server/pm/pkg/PackageUserState;->getInstallReason()I

    move-result v7

    iput v7, v6, Landroid/content/pm/PackageInstaller$SessionInfo;->installReason:I

    .line 874
    iput-object p2, v6, Landroid/content/pm/PackageInstaller$SessionInfo;->appPackageName:Ljava/lang/String;

    .line 875
    move-object/from16 v7, p7

    invoke-virtual {p0, p1, v6, v0, v7}, Lcom/android/server/pm/BroadcastHelper;->sendSessionCommitBroadcast(Lcom/android/server/pm/Computer;Landroid/content/pm/PackageInstaller$SessionInfo;ILjava/lang/String;)V

    .line 876
    return-void
.end method

.method sendPackageBroadcast(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/String;Landroid/content/IIntentReceiver;[I[ILandroid/util/SparseArray;Ljava/util/function/BiFunction;Landroid/os/Bundle;[Ljava/lang/String;)V
    .locals 24
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "extras"    # Landroid/os/Bundle;
    .param p4, "flags"    # I
    .param p5, "targetPkg"    # Ljava/lang/String;
    .param p6, "finishedReceiver"    # Landroid/content/IIntentReceiver;
    .param p7, "userIds"    # [I
    .param p8, "instantUserIds"    # [I
    .param p11, "bOptions"    # Landroid/os/Bundle;
    .param p12, "requiredPermissions"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            "I",
            "Ljava/lang/String;",
            "Landroid/content/IIntentReceiver;",
            "[I[I",
            "Landroid/util/SparseArray<",
            "[I>;",
            "Ljava/util/function/BiFunction<",
            "Ljava/lang/Integer;",
            "Landroid/os/Bundle;",
            "Landroid/os/Bundle;",
            ">;",
            "Landroid/os/Bundle;",
            "[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 139
    .local p9, "broadcastAllowList":Landroid/util/SparseArray;, "Landroid/util/SparseArray<[I>;"
    .local p10, "filterExtrasForReceiver":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<Ljava/lang/Integer;Landroid/os/Bundle;Landroid/os/Bundle;>;"
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    .line 140
    .local v0, "am":Landroid/app/IActivityManager;
    if-nez v0, :cond_0

    return-void

    .line 142
    :cond_0
    if-nez p7, :cond_1

    .line 143
    invoke-interface {v0}, Landroid/app/IActivityManager;->getRunningUserIds()[I

    move-result-object v1

    move-object v9, v1

    .local v1, "resolvedUserIds":[I
    goto :goto_0

    .line 158
    .end local v0    # "am":Landroid/app/IActivityManager;
    .end local v1    # "resolvedUserIds":[I
    :catch_0
    move-exception v0

    goto :goto_2

    .line 145
    .restart local v0    # "am":Landroid/app/IActivityManager;
    :cond_1
    move-object/from16 v1, p7

    move-object v9, v1

    .line 148
    .local v9, "resolvedUserIds":[I
    :goto_0
    invoke-static/range {p8 .. p8}, Lcom/android/internal/util/ArrayUtils;->isEmpty([I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 149
    const/4 v10, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v11, p9

    move-object/from16 v12, p10

    move-object/from16 v13, p11

    move-object/from16 v14, p12

    invoke-direct/range {v2 .. v14}, Lcom/android/server/pm/BroadcastHelper;->doSendBroadcast(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/String;Landroid/content/IIntentReceiver;[IZLandroid/util/SparseArray;Ljava/util/function/BiFunction;Landroid/os/Bundle;[Ljava/lang/String;)V

    goto :goto_1

    .line 154
    :cond_2
    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v19, 0x1

    move-object/from16 v11, p0

    move-object/from16 v12, p1

    move-object/from16 v13, p2

    move-object/from16 v14, p3

    move/from16 v15, p4

    move-object/from16 v16, p5

    move-object/from16 v17, p6

    move-object/from16 v18, p8

    move-object/from16 v22, p11

    move-object/from16 v23, p12

    invoke-direct/range {v11 .. v23}, Lcom/android/server/pm/BroadcastHelper;->doSendBroadcast(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/String;Landroid/content/IIntentReceiver;[IZLandroid/util/SparseArray;Ljava/util/function/BiFunction;Landroid/os/Bundle;[Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 159
    .end local v0    # "am":Landroid/app/IActivityManager;
    .end local v9    # "resolvedUserIds":[I
    :goto_1
    nop

    .line 160
    :goto_2
    return-void
.end method

.method sendPackageBroadcastWithIntent(Landroid/content/Intent;IZI[ILandroid/content/IIntentReceiver;Ljava/util/function/BiFunction;Landroid/os/Bundle;)V
    .locals 10
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "userId"    # I
    .param p3, "isInstantApp"    # Z
    .param p4, "flags"    # I
    .param p5, "visibilityAllowList"    # [I
    .param p6, "finishedReceiver"    # Landroid/content/IIntentReceiver;
    .param p8, "bOptions"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "IZI[I",
            "Landroid/content/IIntentReceiver;",
            "Ljava/util/function/BiFunction<",
            "Ljava/lang/Integer;",
            "Landroid/os/Bundle;",
            "Landroid/os/Bundle;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .line 125
    .local p7, "filterExtrasForReceiver":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<Ljava/lang/Integer;Landroid/os/Bundle;Landroid/os/Bundle;>;"
    const/high16 v0, 0x4000000

    or-int/2addr v0, p4

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 126
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    move-object v6, v0

    .line 127
    .local v6, "broadcastAllowList":Landroid/util/SparseArray;, "Landroid/util/SparseArray<[I>;"
    invoke-virtual {v6, p2, p5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 128
    const/4 v9, 0x0

    move-object v1, p0

    move-object v2, p1

    move v5, p2

    move v4, p3

    move-object/from16 v3, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    invoke-direct/range {v1 .. v9}, Lcom/android/server/pm/BroadcastHelper;->broadcastIntent(Landroid/content/Intent;Landroid/content/IIntentReceiver;ZILandroid/util/SparseArray;Ljava/util/function/BiFunction;Landroid/os/Bundle;[Ljava/lang/String;)V

    .line 130
    return-void
.end method

.method sendPackageChangedBroadcast(Lcom/android/server/pm/Computer;Ljava/lang/String;ZLjava/util/ArrayList;ILjava/lang/String;Ljava/lang/String;I)V
    .locals 17
    .param p1, "snapshot"    # Lcom/android/server/pm/Computer;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "dontKillApp"    # Z
    .param p5, "packageUid"    # I
    .param p6, "reason"    # Ljava/lang/String;
    .param p7, "reasonForTrace"    # Ljava/lang/String;
    .param p8, "callingUidForTrace"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/Computer;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .line 983
    .local p4, "componentNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v1, p0

    move-object/from16 v14, p1

    move-object/from16 v2, p2

    const/16 v0, 0x3e8

    invoke-interface {v14, v2, v0}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;I)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v10

    .line 985
    .local v10, "setting":Lcom/android/server/pm/pkg/PackageStateInternal;
    if-eqz v10, :cond_4

    invoke-interface {v10}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v3

    if-nez v3, :cond_0

    move-object v11, v10

    move-object v10, v1

    goto/16 :goto_6

    .line 988
    :cond_0
    invoke-static/range {p5 .. p5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v15

    .line 989
    .local v15, "userId":I
    nop

    .line 990
    invoke-interface {v14, v2, v15, v0}, Lcom/android/server/pm/Computer;->isInstantAppInternal(Ljava/lang/String;II)Z

    move-result v16

    .line 991
    .local v16, "isInstantApp":Z
    const/4 v0, 0x0

    const/4 v3, 0x1

    if-eqz v16, :cond_1

    sget-object v4, Lcom/android/server/pm/PackageManagerService;->EMPTY_INT_ARRAY:[I

    :goto_0
    move-object v7, v4

    goto :goto_1

    :cond_1
    new-array v4, v3, [I

    aput v15, v4, v0

    goto :goto_0

    .line 992
    .local v7, "userIds":[I
    :goto_1
    if-eqz v16, :cond_2

    new-array v3, v3, [I

    aput v15, v3, v0

    :goto_2
    move-object v8, v3

    goto :goto_3

    :cond_2
    sget-object v3, Lcom/android/server/pm/PackageManagerService;->EMPTY_INT_ARRAY:[I

    goto :goto_2

    .line 994
    .local v8, "instantUserIds":[I
    :goto_3
    if-eqz v16, :cond_3

    const/4 v0, 0x0

    :goto_4
    move-object v9, v0

    goto :goto_5

    :cond_3
    invoke-interface {v14, v2, v7}, Lcom/android/server/pm/Computer;->getVisibilityAllowLists(Ljava/lang/String;[I)Landroid/util/SparseArray;

    move-result-object v0

    goto :goto_4

    .line 995
    .local v9, "broadcastAllowList":Landroid/util/SparseArray;, "Landroid/util/SparseArray<[I>;"
    :goto_5
    nop

    .line 996
    invoke-interface {v14, v2, v15}, Lcom/android/server/pm/Computer;->getSharedUserPackagesForPackage(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v11

    .line 997
    .local v11, "sharedUserPackages":[Ljava/lang/String;
    iget-object v0, v1, Lcom/android/server/pm/BroadcastHelper;->mHandler:Landroid/os/Handler;

    move-object v3, v0

    new-instance v0, Lcom/android/server/pm/BroadcastHelper$$ExternalSyntheticLambda3;

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v12, p7

    move/from16 v13, p8

    move-object v14, v3

    move/from16 v3, p3

    invoke-direct/range {v0 .. v13}, Lcom/android/server/pm/BroadcastHelper$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/pm/BroadcastHelper;Ljava/lang/String;ZLjava/util/ArrayList;ILjava/lang/String;[I[ILandroid/util/SparseArray;Lcom/android/server/pm/pkg/PackageStateInternal;[Ljava/lang/String;Ljava/lang/String;I)V

    move-object v12, v11

    move-object v11, v10

    move-object v10, v1

    .end local v10    # "setting":Lcom/android/server/pm/pkg/PackageStateInternal;
    .local v11, "setting":Lcom/android/server/pm/pkg/PackageStateInternal;
    .local v12, "sharedUserPackages":[Ljava/lang/String;
    invoke-virtual {v14, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1001
    iget-object v0, v10, Lcom/android/server/pm/BroadcastHelper;->mPackageMonitorCallbackHelper:Lcom/android/server/pm/PackageMonitorCallbackHelper;

    move-object v6, v7

    move-object v7, v8

    move-object v8, v9

    .end local v9    # "broadcastAllowList":Landroid/util/SparseArray;, "Landroid/util/SparseArray<[I>;"
    .local v6, "userIds":[I
    .local v7, "instantUserIds":[I
    .local v8, "broadcastAllowList":Landroid/util/SparseArray;, "Landroid/util/SparseArray<[I>;"
    iget-object v9, v10, Lcom/android/server/pm/BroadcastHelper;->mHandler:Landroid/os/Handler;

    move-object/from16 v1, p2

    move/from16 v2, p3

    move-object/from16 v3, p4

    move/from16 v4, p5

    move-object/from16 v5, p6

    invoke-virtual/range {v0 .. v9}, Lcom/android/server/pm/PackageMonitorCallbackHelper;->notifyPackageChanged(Ljava/lang/String;ZLjava/util/ArrayList;ILjava/lang/String;[I[ILandroid/util/SparseArray;Landroid/os/Handler;)V

    .line 1003
    move-object v9, v8

    move-object v8, v7

    move-object v7, v6

    .end local v6    # "userIds":[I
    .local v7, "userIds":[I
    .local v8, "instantUserIds":[I
    .restart local v9    # "broadcastAllowList":Landroid/util/SparseArray;, "Landroid/util/SparseArray<[I>;"
    return-void

    .line 985
    .end local v7    # "userIds":[I
    .end local v8    # "instantUserIds":[I
    .end local v9    # "broadcastAllowList":Landroid/util/SparseArray;, "Landroid/util/SparseArray<[I>;"
    .end local v11    # "setting":Lcom/android/server/pm/pkg/PackageStateInternal;
    .end local v12    # "sharedUserPackages":[Ljava/lang/String;
    .end local v15    # "userId":I
    .end local v16    # "isInstantApp":Z
    .restart local v10    # "setting":Lcom/android/server/pm/pkg/PackageStateInternal;
    :cond_4
    move-object v11, v10

    move-object v10, v1

    .line 986
    .end local v10    # "setting":Lcom/android/server/pm/pkg/PackageStateInternal;
    .restart local v11    # "setting":Lcom/android/server/pm/pkg/PackageStateInternal;
    :goto_6
    return-void
.end method

.method sendPackageRemovedBroadcasts(Lcom/android/server/pm/PackageRemovedInfo;Lcom/android/server/pm/PackageSender;ZZZ)V
    .locals 24
    .param p1, "packageRemovedInfo"    # Lcom/android/server/pm/PackageRemovedInfo;
    .param p2, "packageSender"    # Lcom/android/server/pm/PackageSender;
    .param p3, "killApp"    # Z
    .param p4, "removedBySystem"    # Z
    .param p5, "isArchived"    # Z

    .line 1084
    move-object/from16 v1, p1

    iget-object v4, v1, Lcom/android/server/pm/PackageRemovedInfo;->mRemovedPackage:Ljava/lang/String;

    .line 1085
    .local v4, "removedPackage":Ljava/lang/String;
    iget-object v7, v1, Lcom/android/server/pm/PackageRemovedInfo;->mInstallerPackageName:Ljava/lang/String;

    .line 1086
    .local v7, "installerPackageName":Ljava/lang/String;
    iget-object v9, v1, Lcom/android/server/pm/PackageRemovedInfo;->mBroadcastUsers:[I

    .line 1087
    .local v9, "broadcastUserIds":[I
    iget-object v10, v1, Lcom/android/server/pm/PackageRemovedInfo;->mInstantUserIds:[I

    .line 1088
    .local v10, "instantUserIds":[I
    iget-object v13, v1, Lcom/android/server/pm/PackageRemovedInfo;->mBroadcastAllowList:Landroid/util/SparseArray;

    .line 1089
    .local v13, "broadcastAllowList":Landroid/util/SparseArray;, "Landroid/util/SparseArray<[I>;"
    iget-boolean v14, v1, Lcom/android/server/pm/PackageRemovedInfo;->mDataRemoved:Z

    .line 1090
    .local v14, "dataRemoved":Z
    iget-boolean v15, v1, Lcom/android/server/pm/PackageRemovedInfo;->mIsUpdate:Z

    .line 1091
    .local v15, "isUpdate":Z
    iget-boolean v2, v1, Lcom/android/server/pm/PackageRemovedInfo;->mIsRemovedPackageSystemUpdate:Z

    .line 1093
    .local v2, "isRemovedPackageSystemUpdate":Z
    iget-boolean v3, v1, Lcom/android/server/pm/PackageRemovedInfo;->mRemovedForAllUsers:Z

    .line 1094
    .local v3, "isRemovedForAllUsers":Z
    iget-boolean v5, v1, Lcom/android/server/pm/PackageRemovedInfo;->mIsStaticSharedLib:Z

    .line 1096
    .local v5, "isStaticSharedLib":Z
    new-instance v11, Landroid/os/Bundle;

    invoke-direct {v11}, Landroid/os/Bundle;-><init>()V

    .line 1097
    .local v11, "extras":Landroid/os/Bundle;
    const-string v0, "android.intent.extra.UID"

    iget v6, v1, Lcom/android/server/pm/PackageRemovedInfo;->mUid:I

    invoke-virtual {v11, v0, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1098
    const-string v0, "android.intent.extra.DATA_REMOVED"

    invoke-virtual {v11, v0, v14}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1099
    const-string v0, "android.intent.extra.SYSTEM_UPDATE_UNINSTALL"

    invoke-virtual {v11, v0, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1100
    xor-int/lit8 v0, p3, 0x1

    const-string v6, "android.intent.extra.DONT_KILL_APP"

    invoke-virtual {v11, v6, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1101
    xor-int/lit8 v0, p4, 0x1

    const-string v6, "android.intent.extra.USER_INITIATED"

    invoke-virtual {v11, v6, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1104
    const-string/jumbo v0, "is_privacy_hidden"

    iget-boolean v6, v1, Lcom/android/server/pm/PackageRemovedInfo;->mDeleteByPrivacyHidden:Z

    invoke-virtual {v11, v0, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1106
    const/4 v0, 0x1

    if-nez v15, :cond_0

    if-eqz v2, :cond_1

    :cond_0
    goto :goto_0

    :cond_1
    const/4 v6, 0x0

    goto :goto_1

    :goto_0
    move v6, v0

    :goto_1
    move/from16 v19, v6

    .line 1107
    .local v19, "isReplace":Z
    if-nez v19, :cond_2

    if-eqz p5, :cond_3

    .line 1108
    :cond_2
    const-string v6, "android.intent.extra.REPLACING"

    invoke-virtual {v11, v6, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1110
    :cond_3
    if-eqz p5, :cond_4

    .line 1111
    const-string v6, "android.intent.extra.ARCHIVAL"

    invoke-virtual {v11, v6, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1113
    :cond_4
    const-string v0, "android.intent.extra.REMOVED_FOR_ALL_USERS"

    invoke-virtual {v11, v0, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1119
    if-eqz v4, :cond_5

    if-nez v5, :cond_5

    if-eqz v14, :cond_5

    if-nez v2, :cond_5

    .line 1121
    move-object/from16 v8, p0

    :try_start_0
    iget-object v0, v8, Lcom/android/server/pm/BroadcastHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/nothing/utils/NtTrackingUtils;->getInstance(Landroid/content/Context;)Lcom/nothing/utils/NtTrackingUtils;

    move-result-object v0

    invoke-virtual {v0, v4, v7}, Lcom/nothing/utils/NtTrackingUtils;->recordAppUnInstall(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 1123
    :catch_0
    move-exception v0

    .line 1124
    .local v0, "e":Ljava/lang/Exception;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "recordAppUnInstall Error:"

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v12, "PackageManager"

    invoke-static {v12, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 1119
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_5
    move-object/from16 v8, p0

    .line 1125
    :goto_2
    nop

    .line 1129
    :goto_3
    if-eqz v4, :cond_6

    if-eqz v7, :cond_6

    .line 1130
    move v6, v5

    move-object v5, v11

    .end local v11    # "extras":Landroid/os/Bundle;
    .local v5, "extras":Landroid/os/Bundle;
    .local v6, "isStaticSharedLib":Z
    const/4 v11, 0x0

    const/4 v12, 0x0

    move/from16 v16, v3

    .end local v3    # "isRemovedForAllUsers":Z
    .local v16, "isRemovedForAllUsers":Z
    const-string v3, "android.intent.action.PACKAGE_REMOVED"

    move/from16 v17, v6

    .end local v6    # "isStaticSharedLib":Z
    .local v17, "isStaticSharedLib":Z
    const/4 v6, 0x0

    const/4 v8, 0x0

    move/from16 v20, v2

    move/from16 v21, v16

    move/from16 v22, v17

    move-object/from16 v2, p0

    .end local v2    # "isRemovedPackageSystemUpdate":Z
    .end local v16    # "isRemovedForAllUsers":Z
    .end local v17    # "isStaticSharedLib":Z
    .local v20, "isRemovedPackageSystemUpdate":Z
    .local v21, "isRemovedForAllUsers":Z
    .local v22, "isStaticSharedLib":Z
    invoke-direct/range {v2 .. v12}, Lcom/android/server/pm/BroadcastHelper;->sendPackageBroadcastAndNotify(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/String;Landroid/content/IIntentReceiver;[I[ILandroid/util/SparseArray;Landroid/os/Bundle;)V

    move-object/from16 v23, v7

    .end local v7    # "installerPackageName":Ljava/lang/String;
    .local v23, "installerPackageName":Ljava/lang/String;
    goto :goto_4

    .line 1129
    .end local v20    # "isRemovedPackageSystemUpdate":Z
    .end local v21    # "isRemovedForAllUsers":Z
    .end local v22    # "isStaticSharedLib":Z
    .end local v23    # "installerPackageName":Ljava/lang/String;
    .restart local v2    # "isRemovedPackageSystemUpdate":Z
    .restart local v3    # "isRemovedForAllUsers":Z
    .local v5, "isStaticSharedLib":Z
    .restart local v7    # "installerPackageName":Ljava/lang/String;
    .restart local v11    # "extras":Landroid/os/Bundle;
    :cond_6
    move/from16 v20, v2

    move/from16 v21, v3

    move/from16 v22, v5

    move-object/from16 v23, v7

    move-object v5, v11

    .line 1134
    .end local v2    # "isRemovedPackageSystemUpdate":Z
    .end local v3    # "isRemovedForAllUsers":Z
    .end local v7    # "installerPackageName":Ljava/lang/String;
    .end local v11    # "extras":Landroid/os/Bundle;
    .local v5, "extras":Landroid/os/Bundle;
    .restart local v20    # "isRemovedPackageSystemUpdate":Z
    .restart local v21    # "isRemovedForAllUsers":Z
    .restart local v22    # "isStaticSharedLib":Z
    .restart local v23    # "installerPackageName":Ljava/lang/String;
    :goto_4
    if-eqz v22, :cond_7

    .line 1137
    return-void

    .line 1139
    :cond_7
    if-eqz v4, :cond_9

    .line 1140
    const/4 v8, 0x0

    const/4 v12, 0x0

    const-string v3, "android.intent.action.PACKAGE_REMOVED"

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    move-object v11, v13

    .end local v13    # "broadcastAllowList":Landroid/util/SparseArray;, "Landroid/util/SparseArray<[I>;"
    .local v11, "broadcastAllowList":Landroid/util/SparseArray;, "Landroid/util/SparseArray<[I>;"
    invoke-direct/range {v2 .. v12}, Lcom/android/server/pm/BroadcastHelper;->sendPackageBroadcastAndNotify(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/String;Landroid/content/IIntentReceiver;[I[ILandroid/util/SparseArray;Landroid/os/Bundle;)V

    .line 1143
    const-string v3, "android.intent.action.PACKAGE_REMOVED_INTERNAL"

    const-string v7, "android"

    invoke-direct/range {v2 .. v12}, Lcom/android/server/pm/BroadcastHelper;->sendPackageBroadcastAndNotify(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/String;Landroid/content/IIntentReceiver;[I[ILandroid/util/SparseArray;Landroid/os/Bundle;)V

    .line 1147
    if-eqz v14, :cond_8

    if-nez v20, :cond_8

    .line 1148
    const/4 v8, 0x0

    const/4 v12, 0x0

    const-string v3, "android.intent.action.PACKAGE_FULLY_REMOVED"

    const/high16 v6, 0x1000000

    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v12}, Lcom/android/server/pm/BroadcastHelper;->sendPackageBroadcastAndNotify(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/String;Landroid/content/IIntentReceiver;[I[ILandroid/util/SparseArray;Landroid/os/Bundle;)V

    .line 1151
    iget v0, v1, Lcom/android/server/pm/PackageRemovedInfo;->mUid:I

    move-object/from16 v2, p2

    invoke-interface {v2, v4, v0}, Lcom/android/server/pm/PackageSender;->notifyPackageRemoved(Ljava/lang/String;I)V

    .line 1154
    sget-object v0, Lcom/nothing/server/INtExtServiceFactory$ExtType;->NT_EX_SERVICE:Lcom/nothing/server/INtExtServiceFactory$ExtType;

    invoke-static {v0}, Lcom/nothing/server/NtExtServiceFactory;->getOrCreate(Lcom/nothing/server/INtExtServiceFactory$ExtType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nothing/server/ext/INtExService;

    iget v3, v1, Lcom/android/server/pm/PackageRemovedInfo;->mUid:I

    .line 1155
    invoke-interface {v0, v4, v3}, Lcom/nothing/server/ext/INtExService;->onPackageRemoved(Ljava/lang/String;I)V

    goto :goto_5

    .line 1147
    :cond_8
    move-object/from16 v2, p2

    goto :goto_5

    .line 1139
    .end local v11    # "broadcastAllowList":Landroid/util/SparseArray;, "Landroid/util/SparseArray<[I>;"
    .restart local v13    # "broadcastAllowList":Landroid/util/SparseArray;, "Landroid/util/SparseArray<[I>;"
    :cond_9
    move-object/from16 v2, p2

    move-object v11, v13

    .line 1159
    .end local v13    # "broadcastAllowList":Landroid/util/SparseArray;, "Landroid/util/SparseArray<[I>;"
    .restart local v11    # "broadcastAllowList":Landroid/util/SparseArray;, "Landroid/util/SparseArray<[I>;"
    :goto_5
    iget-boolean v0, v1, Lcom/android/server/pm/PackageRemovedInfo;->mIsAppIdRemoved:Z

    if-eqz v0, :cond_c

    .line 1169
    if-nez v19, :cond_a

    if-eqz p5, :cond_b

    .line 1170
    :cond_a
    const-string v0, "android.intent.extra.PACKAGE_NAME"

    invoke-virtual {v5, v0, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1173
    :cond_b
    move v3, v14

    .end local v14    # "dataRemoved":Z
    .local v3, "dataRemoved":Z
    const/4 v14, 0x0

    const/16 v18, 0x0

    move v6, v15

    move-object v15, v9

    .end local v9    # "broadcastUserIds":[I
    .local v6, "isUpdate":Z
    .local v15, "broadcastUserIds":[I
    const-string v9, "android.intent.action.UID_REMOVED"

    move-object/from16 v16, v10

    .end local v10    # "instantUserIds":[I
    .local v16, "instantUserIds":[I
    const/4 v10, 0x0

    const/high16 v12, 0x1000000

    const/4 v13, 0x0

    move-object/from16 v8, p0

    move-object/from16 v17, v11

    move-object v11, v5

    .end local v5    # "extras":Landroid/os/Bundle;
    .local v11, "extras":Landroid/os/Bundle;
    .local v17, "broadcastAllowList":Landroid/util/SparseArray;, "Landroid/util/SparseArray<[I>;"
    invoke-direct/range {v8 .. v18}, Lcom/android/server/pm/BroadcastHelper;->sendPackageBroadcastAndNotify(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/String;Landroid/content/IIntentReceiver;[I[ILandroid/util/SparseArray;Landroid/os/Bundle;)V

    move-object v9, v15

    move-object/from16 v10, v16

    move-object/from16 v11, v17

    .end local v15    # "broadcastUserIds":[I
    .end local v16    # "instantUserIds":[I
    .end local v17    # "broadcastAllowList":Landroid/util/SparseArray;, "Landroid/util/SparseArray<[I>;"
    .restart local v5    # "extras":Landroid/os/Bundle;
    .restart local v9    # "broadcastUserIds":[I
    .restart local v10    # "instantUserIds":[I
    .local v11, "broadcastAllowList":Landroid/util/SparseArray;, "Landroid/util/SparseArray<[I>;"
    goto :goto_6

    .line 1159
    .end local v3    # "dataRemoved":Z
    .end local v6    # "isUpdate":Z
    .restart local v14    # "dataRemoved":Z
    .local v15, "isUpdate":Z
    :cond_c
    move v3, v14

    move v6, v15

    .line 1177
    .end local v14    # "dataRemoved":Z
    .end local v15    # "isUpdate":Z
    .restart local v3    # "dataRemoved":Z
    .restart local v6    # "isUpdate":Z
    :goto_6
    return-void
.end method

.method sendPackagesSuspendedOrUnsuspendedForUser(Ljava/util/function/Supplier;Ljava/lang/String;[Ljava/lang/String;[IZI)V
    .locals 13
    .param p2, "intent"    # Ljava/lang/String;
    .param p3, "pkgList"    # [Ljava/lang/String;
    .param p4, "uidList"    # [I
    .param p5, "quarantined"    # Z
    .param p6, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Supplier<",
            "Lcom/android/server/pm/Computer;",
            ">;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "[IZI)V"
        }
    .end annotation

    .line 1193
    .local p1, "snapshotSupplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Lcom/android/server/pm/Computer;>;"
    new-instance v0, Landroid/os/Bundle;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(I)V

    move-object v5, v0

    .line 1194
    .local v5, "extras":Landroid/os/Bundle;
    const-string v0, "android.intent.extra.changed_package_list"

    move-object/from16 v1, p3

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 1195
    const-string v0, "android.intent.extra.changed_uid_list"

    move-object/from16 v10, p4

    invoke-virtual {v5, v0, v10}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 1196
    if-eqz p5, :cond_0

    .line 1197
    const-string v0, "android.intent.extra.quarantined"

    const/4 v2, 0x1

    invoke-virtual {v5, v0, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1199
    :cond_0
    const/high16 v0, 0x50000000

    .line 1200
    .local v0, "flags":I
    new-instance v2, Landroid/app/BroadcastOptions;

    invoke-direct {v2}, Landroid/app/BroadcastOptions;-><init>()V

    .line 1201
    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/app/BroadcastOptions;->setDeferralPolicy(I)Landroid/app/BroadcastOptions;

    move-result-object v2

    .line 1202
    invoke-virtual {v2}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v8

    .line 1203
    .local v8, "options":Landroid/os/Bundle;
    new-instance v9, Lcom/android/server/pm/BroadcastHelper$$ExternalSyntheticLambda1;

    invoke-direct {v9, p1}, Lcom/android/server/pm/BroadcastHelper$$ExternalSyntheticLambda1;-><init>(Ljava/util/function/Supplier;)V

    .line 1206
    .local v9, "filterExtrasForReceiver":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<Ljava/lang/Integer;Landroid/os/Bundle;Landroid/os/Bundle;>;"
    iget-object v11, p0, Lcom/android/server/pm/BroadcastHelper;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/pm/BroadcastHelper$$ExternalSyntheticLambda2;

    move-object v3, p0

    move-object v4, p2

    move/from16 v6, p6

    move-object v7, v9

    .end local v9    # "filterExtrasForReceiver":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<Ljava/lang/Integer;Landroid/os/Bundle;Landroid/os/Bundle;>;"
    .local v7, "filterExtrasForReceiver":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<Ljava/lang/Integer;Landroid/os/Bundle;Landroid/os/Bundle;>;"
    invoke-direct/range {v2 .. v8}, Lcom/android/server/pm/BroadcastHelper$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/pm/BroadcastHelper;Ljava/lang/String;Landroid/os/Bundle;ILjava/util/function/BiFunction;Landroid/os/Bundle;)V

    move-object v12, v8

    .end local v7    # "filterExtrasForReceiver":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<Ljava/lang/Integer;Landroid/os/Bundle;Landroid/os/Bundle;>;"
    .end local v8    # "options":Landroid/os/Bundle;
    .restart local v9    # "filterExtrasForReceiver":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<Ljava/lang/Integer;Landroid/os/Bundle;Landroid/os/Bundle;>;"
    .local v12, "options":Landroid/os/Bundle;
    invoke-virtual {v11, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1211
    filled-new-array/range {p6 .. p6}, [I

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v4, 0x0

    move-object v2, p0

    move-object v3, p2

    invoke-direct/range {v2 .. v9}, Lcom/android/server/pm/BroadcastHelper;->notifyPackageMonitor(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;[I[ILandroid/util/SparseArray;Ljava/util/function/BiFunction;)V

    .line 1213
    return-void
.end method

.method sendPostInstallBroadcasts(Ljava/util/function/Supplier;Lcom/android/server/pm/InstallRequest;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lcom/android/server/pm/PackageSender;ZZZZ)V
    .locals 27
    .param p2, "request"    # Lcom/android/server/pm/InstallRequest;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "requiredPermissionControllerPackage"    # Ljava/lang/String;
    .param p5, "requiredVerifierPackages"    # [Ljava/lang/String;
    .param p6, "requiredInstallerPackage"    # Ljava/lang/String;
    .param p7, "packageSender"    # Lcom/android/server/pm/PackageSender;
    .param p8, "isLaunchedForRestore"    # Z
    .param p9, "isKillApp"    # Z
    .param p10, "isUpdate"    # Z
    .param p11, "isArchived"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Supplier<",
            "Lcom/android/server/pm/Computer;",
            ">;",
            "Lcom/android/server/pm/InstallRequest;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/PackageSender;",
            "ZZZZ)V"
        }
    .end annotation

    .line 589
    .local p1, "snapshotSupplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Lcom/android/server/pm/Computer;>;"
    move-object/from16 v0, p0

    move-object/from16 v11, p5

    invoke-virtual/range {p2 .. p2}, Lcom/android/server/pm/InstallRequest;->getRemovedInfo()Lcom/android/server/pm/PackageRemovedInfo;

    move-result-object v1

    const/4 v12, 0x0

    const/4 v13, 0x1

    if-eqz v1, :cond_1

    .line 590
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/pm/InstallRequest;->getRemovedInfo()Lcom/android/server/pm/PackageRemovedInfo;

    move-result-object v1

    iget-boolean v1, v1, Lcom/android/server/pm/PackageRemovedInfo;->mIsExternal:Z

    if-eqz v1, :cond_0

    .line 595
    nop

    .line 596
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/pm/InstallRequest;->getRemovedInfo()Lcom/android/server/pm/PackageRemovedInfo;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/pm/PackageRemovedInfo;->mRemovedPackage:Ljava/lang/String;

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v4

    .line 597
    .local v4, "pkgNames":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/pm/InstallRequest;->getRemovedInfo()Lcom/android/server/pm/PackageRemovedInfo;

    move-result-object v1

    iget v1, v1, Lcom/android/server/pm/PackageRemovedInfo;->mUid:I

    filled-new-array {v1}, [I

    move-result-object v5

    .line 598
    .local v5, "uids":[I
    invoke-direct {v0, v12, v13, v4, v5}, Lcom/android/server/pm/BroadcastHelper;->notifyResourcesChanged(ZZ[Ljava/lang/String;[I)V

    .line 600
    const/4 v2, 0x0

    const/4 v3, 0x1

    move-object/from16 v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/BroadcastHelper;->sendResourcesChangedBroadcast(Ljava/util/function/Supplier;ZZ[Ljava/lang/String;[I)V

    .line 603
    .end local v4    # "pkgNames":[Ljava/lang/String;
    .end local v5    # "uids":[I
    :cond_0
    nop

    .line 604
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/pm/InstallRequest;->getRemovedInfo()Lcom/android/server/pm/PackageRemovedInfo;

    move-result-object v1

    .line 603
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v2, p7

    move/from16 v3, p9

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/BroadcastHelper;->sendPackageRemovedBroadcasts(Lcom/android/server/pm/PackageRemovedInfo;Lcom/android/server/pm/PackageSender;ZZZ)V

    .line 608
    :cond_1
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/pm/InstallRequest;->getFirstTimeBroadcastUserIds()[I

    move-result-object v14

    .line 609
    .local v14, "firstUserIds":[I
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/pm/InstallRequest;->getFirstTimeBroadcastInstantUserIds()[I

    move-result-object v15

    .line 610
    .local v15, "firstInstantUserIds":[I
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/pm/InstallRequest;->getUpdateBroadcastUserIds()[I

    move-result-object v7

    .line 611
    .local v7, "updateUserIds":[I
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/pm/InstallRequest;->getUpdateBroadcastInstantUserIds()[I

    move-result-object v16

    .line 614
    .local v16, "instantUserIds":[I
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/pm/InstallRequest;->getInstallerPackageName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 615
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/pm/InstallRequest;->getInstallerPackageName()Ljava/lang/String;

    move-result-object v0

    move-object v5, v0

    goto :goto_0

    .line 616
    :cond_2
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/pm/InstallRequest;->getRemovedInfo()Lcom/android/server/pm/PackageRemovedInfo;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 617
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/pm/InstallRequest;->getRemovedInfo()Lcom/android/server/pm/PackageRemovedInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/pm/PackageRemovedInfo;->mInstallerPackageName:Ljava/lang/String;

    move-object v5, v0

    goto :goto_0

    .line 618
    :cond_3
    const/4 v0, 0x0

    move-object v5, v0

    :goto_0
    nop

    .line 620
    .local v5, "installerPackageName":Ljava/lang/String;
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 621
    .local v3, "extras":Landroid/os/Bundle;
    const-string v0, "android.intent.extra.UID"

    invoke-virtual/range {p2 .. p2}, Lcom/android/server/pm/InstallRequest;->getAppId()I

    move-result v1

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 622
    if-eqz p10, :cond_4

    .line 623
    const-string v0, "android.intent.extra.REPLACING"

    invoke-virtual {v3, v0, v13}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 625
    :cond_4
    if-eqz p11, :cond_5

    .line 626
    const-string v0, "android.intent.extra.ARCHIVAL"

    invoke-virtual {v3, v0, v13}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 628
    :cond_5
    const-string v0, "android.content.pm.extra.DATA_LOADER_TYPE"

    invoke-virtual/range {p2 .. p2}, Lcom/android/server/pm/InstallRequest;->getDataLoaderType()I

    move-result v1

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 630
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/pm/InstallRequest;->getPkg()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->getStaticSharedLibraryName()Ljava/lang/String;

    move-result-object v17

    .line 633
    .local v17, "staticSharedLibraryName":Ljava/lang/String;
    if-eqz v5, :cond_6

    if-eqz v17, :cond_6

    .line 634
    nop

    .line 637
    move-object v0, v7

    .end local v7    # "updateUserIds":[I
    .local v0, "updateUserIds":[I
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/pm/InstallRequest;->getNewUsers()[I

    move-result-object v7

    .line 634
    const-string v1, "android.intent.action.PACKAGE_ADDED"

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v2, p3

    move-object v12, v0

    move-object/from16 v0, p0

    .end local v0    # "updateUserIds":[I
    .local v12, "updateUserIds":[I
    invoke-direct/range {v0 .. v10}, Lcom/android/server/pm/BroadcastHelper;->sendPackageBroadcastAndNotify(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/String;Landroid/content/IIntentReceiver;[I[ILandroid/util/SparseArray;Landroid/os/Bundle;)V

    move-object v10, v3

    move-object/from16 v19, v5

    .end local v3    # "extras":Landroid/os/Bundle;
    .end local v5    # "installerPackageName":Ljava/lang/String;
    .local v10, "extras":Landroid/os/Bundle;
    .local v19, "installerPackageName":Ljava/lang/String;
    goto :goto_1

    .line 633
    .end local v10    # "extras":Landroid/os/Bundle;
    .end local v12    # "updateUserIds":[I
    .end local v19    # "installerPackageName":Ljava/lang/String;
    .restart local v3    # "extras":Landroid/os/Bundle;
    .restart local v5    # "installerPackageName":Ljava/lang/String;
    .restart local v7    # "updateUserIds":[I
    :cond_6
    move-object v10, v3

    move-object/from16 v19, v5

    move-object v12, v7

    .line 641
    .end local v3    # "extras":Landroid/os/Bundle;
    .end local v5    # "installerPackageName":Ljava/lang/String;
    .end local v7    # "updateUserIds":[I
    .restart local v10    # "extras":Landroid/os/Bundle;
    .restart local v12    # "updateUserIds":[I
    .restart local v19    # "installerPackageName":Ljava/lang/String;
    :goto_1
    invoke-interface/range {p1 .. p1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/android/server/pm/Computer;

    .line 643
    .local v1, "snapshot":Lcom/android/server/pm/Computer;
    if-nez v17, :cond_15

    .line 646
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/pm/InstallRequest;->getAppId()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v5

    .line 647
    .local v5, "appId":I
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/pm/InstallRequest;->isInstallSystem()Z

    move-result v20

    .line 648
    .local v20, "isSystem":Z
    nop

    .line 649
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/pm/InstallRequest;->getInstallFlags()I

    move-result v0

    const/high16 v2, 0x10000

    and-int/2addr v0, v2

    if-eqz v0, :cond_7

    move v4, v13

    goto :goto_2

    :cond_7
    const/4 v4, 0x0

    .line 650
    .local v4, "isVirtualPreload":Z
    :goto_2
    if-nez v20, :cond_8

    if-eqz v4, :cond_9

    :cond_8
    goto :goto_3

    :cond_9
    const/4 v3, 0x0

    goto :goto_4

    :goto_3
    move v3, v13

    .line 653
    :goto_4
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/pm/InstallRequest;->getDataLoaderType()I

    move-result v9

    .line 650
    move-object/from16 v0, p0

    move-object/from16 v2, p3

    move/from16 v8, p11

    move-object v6, v14

    move-object v7, v15

    .end local v14    # "firstUserIds":[I
    .end local v15    # "firstInstantUserIds":[I
    .local v6, "firstUserIds":[I
    .local v7, "firstInstantUserIds":[I
    invoke-direct/range {v0 .. v9}, Lcom/android/server/pm/BroadcastHelper;->sendPackageAddedForNewUsers(Lcom/android/server/pm/Computer;Ljava/lang/String;ZZI[I[IZI)V

    .line 659
    move/from16 v22, v4

    move/from16 v21, v5

    .end local v4    # "isVirtualPreload":Z
    .end local v5    # "appId":I
    .end local v6    # "firstUserIds":[I
    .end local v7    # "firstInstantUserIds":[I
    .restart local v14    # "firstUserIds":[I
    .restart local v15    # "firstInstantUserIds":[I
    .local v21, "appId":I
    .local v22, "isVirtualPreload":Z
    iget-object v3, v0, Lcom/android/server/pm/BroadcastHelper;->mAppsFilter:Lcom/android/server/pm/AppsFilterSnapshot;

    .line 661
    const/16 v4, 0x3e8

    invoke-interface {v1, v2, v4}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;I)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v4

    .line 662
    invoke-interface {v1}, Lcom/android/server/pm/Computer;->getPackageStates()Landroid/util/ArrayMap;

    move-result-object v5

    .line 660
    invoke-interface {v3, v1, v4, v12, v5}, Lcom/android/server/pm/AppsFilterSnapshot;->getVisibilityAllowList(Lcom/android/server/pm/snapshot/PackageDataSnapshot;Lcom/android/server/pm/pkg/PackageStateInternal;[ILandroid/util/ArrayMap;)Landroid/util/SparseArray;

    move-result-object v9

    .line 663
    .local v9, "newBroadcastAllowList":Landroid/util/SparseArray;, "Landroid/util/SparseArray<[I>;"
    const/4 v6, 0x0

    move-object v3, v10

    .end local v10    # "extras":Landroid/os/Bundle;
    .restart local v3    # "extras":Landroid/os/Bundle;
    const/4 v10, 0x0

    move-object v4, v1

    .end local v1    # "snapshot":Lcom/android/server/pm/Computer;
    .local v4, "snapshot":Lcom/android/server/pm/Computer;
    const-string v1, "android.intent.action.PACKAGE_ADDED"

    move-object v5, v4

    .end local v4    # "snapshot":Lcom/android/server/pm/Computer;
    .local v5, "snapshot":Lcom/android/server/pm/Computer;
    const/4 v4, 0x0

    move-object v7, v5

    .end local v5    # "snapshot":Lcom/android/server/pm/Computer;
    .local v7, "snapshot":Lcom/android/server/pm/Computer;
    const/4 v5, 0x0

    move-object v8, v12

    move-object v12, v7

    move-object v7, v8

    move-object/from16 v8, v16

    .end local v16    # "instantUserIds":[I
    .local v7, "updateUserIds":[I
    .local v8, "instantUserIds":[I
    .local v12, "snapshot":Lcom/android/server/pm/Computer;
    invoke-direct/range {v0 .. v10}, Lcom/android/server/pm/BroadcastHelper;->sendPackageBroadcastAndNotify(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/String;Landroid/content/IIntentReceiver;[I[ILandroid/util/SparseArray;Landroid/os/Bundle;)V

    .line 668
    move-object/from16 v16, v9

    .end local v9    # "newBroadcastAllowList":Landroid/util/SparseArray;, "Landroid/util/SparseArray<[I>;"
    .local v16, "newBroadcastAllowList":Landroid/util/SparseArray;, "Landroid/util/SparseArray<[I>;"
    if-eqz v19, :cond_a

    .line 669
    const/4 v9, 0x0

    const/4 v10, 0x0

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object/from16 v2, p3

    move-object/from16 v5, v19

    .end local v19    # "installerPackageName":Ljava/lang/String;
    .local v5, "installerPackageName":Ljava/lang/String;
    invoke-direct/range {v0 .. v10}, Lcom/android/server/pm/BroadcastHelper;->sendPackageBroadcastAndNotify(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/String;Landroid/content/IIntentReceiver;[I[ILandroid/util/SparseArray;Landroid/os/Bundle;)V

    goto :goto_5

    .line 668
    .end local v5    # "installerPackageName":Ljava/lang/String;
    .restart local v19    # "installerPackageName":Ljava/lang/String;
    :cond_a
    move-object/from16 v0, p0

    move-object/from16 v5, v19

    .line 676
    .end local v19    # "installerPackageName":Ljava/lang/String;
    .restart local v5    # "installerPackageName":Ljava/lang/String;
    :goto_5
    iget-object v1, v0, Lcom/android/server/pm/BroadcastHelper;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/server/pm/BroadcastHelper;->isPrivacySafetyLabelChangeNotificationsEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 677
    const/4 v9, 0x0

    const/4 v10, 0x0

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object/from16 v2, p3

    move-object v13, v5

    move-object/from16 v5, p4

    .end local v5    # "installerPackageName":Ljava/lang/String;
    .local v13, "installerPackageName":Ljava/lang/String;
    invoke-direct/range {v0 .. v10}, Lcom/android/server/pm/BroadcastHelper;->sendPackageBroadcastAndNotify(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/String;Landroid/content/IIntentReceiver;[I[ILandroid/util/SparseArray;Landroid/os/Bundle;)V

    goto :goto_6

    .line 676
    .end local v13    # "installerPackageName":Ljava/lang/String;
    .restart local v5    # "installerPackageName":Ljava/lang/String;
    :cond_b
    move-object v13, v5

    .line 683
    .end local v5    # "installerPackageName":Ljava/lang/String;
    .restart local v13    # "installerPackageName":Ljava/lang/String;
    :goto_6
    array-length v0, v11

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_d

    aget-object v5, v11, v1

    .line 684
    .local v5, "verifierPackageName":Ljava/lang/String;
    if-eqz v5, :cond_c

    invoke-virtual {v5, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    .line 686
    const/4 v9, 0x0

    const/4 v10, 0x0

    move v2, v1

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    const/4 v4, 0x0

    const/4 v6, 0x0

    move/from16 v23, v0

    move/from16 v24, v2

    move-object/from16 v0, p0

    move-object/from16 v2, p3

    invoke-direct/range {v0 .. v10}, Lcom/android/server/pm/BroadcastHelper;->sendPackageBroadcastAndNotify(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/String;Landroid/content/IIntentReceiver;[I[ILandroid/util/SparseArray;Landroid/os/Bundle;)V

    move-object/from16 v25, v7

    .end local v7    # "updateUserIds":[I
    .local v25, "updateUserIds":[I
    goto :goto_8

    .line 684
    .end local v25    # "updateUserIds":[I
    .restart local v7    # "updateUserIds":[I
    :cond_c
    move/from16 v23, v0

    move/from16 v24, v1

    move-object/from16 v25, v7

    .line 683
    .end local v5    # "verifierPackageName":Ljava/lang/String;
    .end local v7    # "updateUserIds":[I
    .restart local v25    # "updateUserIds":[I
    :goto_8
    add-int/lit8 v1, v24, 0x1

    move/from16 v0, v23

    move-object/from16 v7, v25

    goto :goto_7

    .line 696
    .end local v25    # "updateUserIds":[I
    .restart local v7    # "updateUserIds":[I
    :cond_d
    move-object/from16 v25, v7

    .end local v7    # "updateUserIds":[I
    .restart local v25    # "updateUserIds":[I
    const/4 v9, 0x0

    const/4 v10, 0x0

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    const/high16 v4, 0x1000000

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object/from16 v2, p3

    move-object/from16 v5, p6

    move-object v7, v14

    .end local v14    # "firstUserIds":[I
    .local v7, "firstUserIds":[I
    invoke-direct/range {v0 .. v10}, Lcom/android/server/pm/BroadcastHelper;->sendPackageBroadcastAndNotify(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/String;Landroid/content/IIntentReceiver;[I[ILandroid/util/SparseArray;Landroid/os/Bundle;)V

    .line 702
    .end local v7    # "firstUserIds":[I
    .restart local v14    # "firstUserIds":[I
    if-eqz p10, :cond_11

    .line 703
    nop

    .line 707
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/pm/InstallRequest;->getRemovedInfo()Lcom/android/server/pm/PackageRemovedInfo;

    move-result-object v0

    iget-object v9, v0, Lcom/android/server/pm/PackageRemovedInfo;->mBroadcastAllowList:Landroid/util/SparseArray;

    .line 703
    const-string v1, "android.intent.action.PACKAGE_REPLACED"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v10, 0x0

    move-object/from16 v0, p0

    move-object/from16 v2, p3

    move-object/from16 v7, v25

    .end local v25    # "updateUserIds":[I
    .local v7, "updateUserIds":[I
    invoke-direct/range {v0 .. v10}, Lcom/android/server/pm/BroadcastHelper;->sendPackageBroadcastAndNotify(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/String;Landroid/content/IIntentReceiver;[I[ILandroid/util/SparseArray;Landroid/os/Bundle;)V

    .line 708
    if-eqz v13, :cond_e

    .line 709
    const/4 v9, 0x0

    const/4 v10, 0x0

    const-string v1, "android.intent.action.PACKAGE_REPLACED"

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object/from16 v2, p3

    move-object v5, v13

    .end local v13    # "installerPackageName":Ljava/lang/String;
    .local v5, "installerPackageName":Ljava/lang/String;
    invoke-direct/range {v0 .. v10}, Lcom/android/server/pm/BroadcastHelper;->sendPackageBroadcastAndNotify(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/String;Landroid/content/IIntentReceiver;[I[ILandroid/util/SparseArray;Landroid/os/Bundle;)V

    .line 715
    .end local v5    # "installerPackageName":Ljava/lang/String;
    .restart local v13    # "installerPackageName":Ljava/lang/String;
    :cond_e
    array-length v0, v11

    const/4 v1, 0x0

    :goto_9
    if-ge v1, v0, :cond_10

    aget-object v5, v11, v1

    .line 716
    .local v5, "verifierPackageName":Ljava/lang/String;
    if-eqz v5, :cond_f

    invoke-virtual {v5, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f

    .line 718
    const/4 v9, 0x0

    const/4 v10, 0x0

    move/from16 v18, v1

    const-string v1, "android.intent.action.PACKAGE_REPLACED"

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object/from16 v2, p3

    move/from16 v23, v18

    move/from16 v18, v0

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v10}, Lcom/android/server/pm/BroadcastHelper;->sendPackageBroadcastAndNotify(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/String;Landroid/content/IIntentReceiver;[I[ILandroid/util/SparseArray;Landroid/os/Bundle;)V

    move-object/from16 v24, v3

    .end local v3    # "extras":Landroid/os/Bundle;
    .local v24, "extras":Landroid/os/Bundle;
    goto :goto_a

    .line 716
    .end local v24    # "extras":Landroid/os/Bundle;
    .restart local v3    # "extras":Landroid/os/Bundle;
    :cond_f
    move/from16 v18, v0

    move/from16 v23, v1

    move-object/from16 v24, v3

    move-object/from16 v0, p0

    .line 715
    .end local v3    # "extras":Landroid/os/Bundle;
    .end local v5    # "verifierPackageName":Ljava/lang/String;
    .restart local v24    # "extras":Landroid/os/Bundle;
    :goto_a
    add-int/lit8 v1, v23, 0x1

    move/from16 v0, v18

    move-object/from16 v3, v24

    goto :goto_9

    .line 724
    .end local v24    # "extras":Landroid/os/Bundle;
    .restart local v3    # "extras":Landroid/os/Bundle;
    :cond_10
    move-object/from16 v0, p0

    move-object/from16 v24, v3

    .line 729
    .end local v3    # "extras":Landroid/os/Bundle;
    .restart local v24    # "extras":Landroid/os/Bundle;
    const/16 v1, 0x137

    invoke-direct {v0, v1}, Lcom/android/server/pm/BroadcastHelper;->getTemporaryAppAllowlistBroadcastOptions(I)Landroid/app/BroadcastOptions;

    move-result-object v1

    .line 730
    invoke-virtual {v1}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v10

    .line 724
    const-string v1, "android.intent.action.MY_PACKAGE_REPLACED"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v9, 0x0

    move-object/from16 v5, p3

    invoke-direct/range {v0 .. v10}, Lcom/android/server/pm/BroadcastHelper;->sendPackageBroadcastAndNotify(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/String;Landroid/content/IIntentReceiver;[I[ILandroid/util/SparseArray;Landroid/os/Bundle;)V

    move-object v9, v5

    move-object/from16 v25, v7

    move-object v10, v8

    .end local v7    # "updateUserIds":[I
    .end local v8    # "instantUserIds":[I
    .local v10, "instantUserIds":[I
    .restart local v25    # "updateUserIds":[I
    goto :goto_b

    .line 731
    .end local v10    # "instantUserIds":[I
    .end local v24    # "extras":Landroid/os/Bundle;
    .restart local v3    # "extras":Landroid/os/Bundle;
    .restart local v8    # "instantUserIds":[I
    :cond_11
    move-object/from16 v0, p0

    move-object/from16 v9, p3

    move-object/from16 v24, v3

    move-object v10, v8

    .end local v3    # "extras":Landroid/os/Bundle;
    .end local v8    # "instantUserIds":[I
    .restart local v10    # "instantUserIds":[I
    .restart local v24    # "extras":Landroid/os/Bundle;
    if-eqz p8, :cond_12

    invoke-virtual/range {p2 .. p2}, Lcom/android/server/pm/InstallRequest;->isInstallSystem()Z

    move-result v1

    if-nez v1, :cond_12

    .line 738
    invoke-virtual {v0, v9, v13, v14, v15}, Lcom/android/server/pm/BroadcastHelper;->sendFirstLaunchBroadcast(Ljava/lang/String;Ljava/lang/String;[I[I)V

    .line 743
    :cond_12
    :goto_b
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/pm/InstallRequest;->getPkg()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/server/pm/pkg/AndroidPackage;->isExternalStorage()Z

    move-result v1

    if-eqz v1, :cond_14

    .line 744
    if-nez p10, :cond_13

    .line 745
    iget-object v1, v0, Lcom/android/server/pm/BroadcastHelper;->mContext:Landroid/content/Context;

    const-class v2, Landroid/os/storage/StorageManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/storage/StorageManager;

    .line 746
    .local v1, "storage":Landroid/os/storage/StorageManager;
    nop

    .line 749
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/pm/InstallRequest;->getPkg()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/server/pm/pkg/AndroidPackage;->getVolumeUuid()Ljava/lang/String;

    move-result-object v2

    .line 748
    invoke-static {v2}, Landroid/os/storage/StorageManager;->convert(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v2

    .line 749
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 747
    invoke-virtual {v1, v2}, Landroid/os/storage/StorageManager;->findVolumeByUuid(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;

    move-result-object v2

    .line 750
    .local v2, "volume":Landroid/os/storage/VolumeInfo;
    nop

    .line 751
    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/android/server/pm/PackageManagerServiceUtils;->getPackageExternalStorageType(Landroid/os/storage/VolumeInfo;Z)I

    move-result v4

    .line 754
    .local v4, "packageExternalStorageType":I
    if-eqz v4, :cond_13

    .line 755
    const/16 v3, 0xb5

    invoke-static {v3, v4, v9}, Lcom/android/internal/util/FrameworkStatsLog;->write(IILjava/lang/String;)V

    .line 763
    .end local v1    # "storage":Landroid/os/storage/StorageManager;
    .end local v2    # "volume":Landroid/os/storage/VolumeInfo;
    .end local v4    # "packageExternalStorageType":I
    :cond_13
    if-nez p11, :cond_14

    .line 764
    filled-new-array {v9}, [Ljava/lang/String;

    move-result-object v4

    .line 765
    .local v4, "pkgNames":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/pm/InstallRequest;->getPkg()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/server/pm/pkg/AndroidPackage;->getUid()I

    move-result v1

    filled-new-array {v1}, [I

    move-result-object v5

    .line 766
    .local v5, "uids":[I
    const/4 v2, 0x1

    const/4 v3, 0x1

    move-object/from16 v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/BroadcastHelper;->sendResourcesChangedBroadcast(Ljava/util/function/Supplier;ZZ[Ljava/lang/String;[I)V

    .line 768
    const/4 v3, 0x1

    invoke-direct {v0, v3, v3, v4, v5}, Lcom/android/server/pm/BroadcastHelper;->notifyResourcesChanged(ZZ[Ljava/lang/String;[I)V

    .line 772
    .end local v4    # "pkgNames":[Ljava/lang/String;
    .end local v5    # "uids":[I
    .end local v16    # "newBroadcastAllowList":Landroid/util/SparseArray;, "Landroid/util/SparseArray<[I>;"
    .end local v20    # "isSystem":Z
    .end local v21    # "appId":I
    .end local v22    # "isVirtualPreload":Z
    :cond_14
    move-object v1, v12

    goto/16 :goto_d

    .line 773
    .end local v13    # "installerPackageName":Ljava/lang/String;
    .end local v24    # "extras":Landroid/os/Bundle;
    .end local v25    # "updateUserIds":[I
    .local v1, "snapshot":Lcom/android/server/pm/Computer;
    .local v10, "extras":Landroid/os/Bundle;
    .local v12, "updateUserIds":[I
    .local v16, "instantUserIds":[I
    .restart local v19    # "installerPackageName":Ljava/lang/String;
    :cond_15
    move-object/from16 v0, p0

    move-object/from16 v9, p3

    move-object/from16 v24, v10

    move-object/from16 v25, v12

    move-object/from16 v10, v16

    move-object/from16 v13, v19

    move-object v12, v1

    .end local v1    # "snapshot":Lcom/android/server/pm/Computer;
    .end local v16    # "instantUserIds":[I
    .end local v19    # "installerPackageName":Ljava/lang/String;
    .local v10, "instantUserIds":[I
    .local v12, "snapshot":Lcom/android/server/pm/Computer;
    .restart local v13    # "installerPackageName":Ljava/lang/String;
    .restart local v24    # "extras":Landroid/os/Bundle;
    .restart local v25    # "updateUserIds":[I
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/pm/InstallRequest;->getLibraryConsumers()Ljava/util/ArrayList;

    move-result-object v1

    .line 774
    .local v1, "libraryConsumers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/pm/pkg/AndroidPackage;>;"
    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v2

    if-nez v2, :cond_17

    .line 776
    xor-int/lit8 v3, p10, 0x1

    .line 777
    .local v3, "dontKillApp":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_c
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_16

    .line 778
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v16, v4

    check-cast v16, Lcom/android/server/pm/pkg/AndroidPackage;

    .line 780
    .local v16, "pkg":Lcom/android/server/pm/pkg/AndroidPackage;
    move v4, v2

    .end local v2    # "i":I
    .local v4, "i":I
    invoke-interface/range {v16 .. v16}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v2

    move v5, v4

    .end local v4    # "i":I
    .local v5, "i":I
    new-instance v4, Ljava/util/ArrayList;

    .line 782
    invoke-interface/range {v16 .. v16}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 783
    move v6, v5

    .end local v5    # "i":I
    .local v6, "i":I
    invoke-interface/range {v16 .. v16}, Lcom/android/server/pm/pkg/AndroidPackage;->getUid()I

    move-result v5

    .line 780
    move v7, v6

    .end local v6    # "i":I
    .local v7, "i":I
    const/4 v6, 0x0

    move v8, v7

    .end local v7    # "i":I
    .local v8, "i":I
    const-string/jumbo v7, "static_shared_library_changed"

    move/from16 v18, v8

    .end local v8    # "i":I
    .local v18, "i":I
    const/16 v8, 0x3e8

    move-object/from16 v26, v12

    move-object v12, v1

    move-object/from16 v1, v26

    .local v1, "snapshot":Lcom/android/server/pm/Computer;
    .local v12, "libraryConsumers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/pm/pkg/AndroidPackage;>;"
    invoke-virtual/range {v0 .. v8}, Lcom/android/server/pm/BroadcastHelper;->sendPackageChangedBroadcast(Lcom/android/server/pm/Computer;Ljava/lang/String;ZLjava/util/ArrayList;ILjava/lang/String;Ljava/lang/String;I)V

    .line 777
    .end local v16    # "pkg":Lcom/android/server/pm/pkg/AndroidPackage;
    add-int/lit8 v2, v18, 0x1

    move-object v0, v12

    move-object v12, v1

    move-object v1, v0

    move-object/from16 v0, p0

    .end local v18    # "i":I
    .restart local v2    # "i":I
    goto :goto_c

    .local v1, "libraryConsumers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/pm/pkg/AndroidPackage;>;"
    .local v12, "snapshot":Lcom/android/server/pm/Computer;
    :cond_16
    move-object/from16 v18, v12

    move-object v12, v1

    move-object/from16 v1, v18

    move/from16 v18, v2

    .end local v2    # "i":I
    .local v1, "snapshot":Lcom/android/server/pm/Computer;
    .local v12, "libraryConsumers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/pm/pkg/AndroidPackage;>;"
    .restart local v18    # "i":I
    goto :goto_d

    .line 774
    .end local v3    # "dontKillApp":Z
    .end local v18    # "i":I
    .local v1, "libraryConsumers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/pm/pkg/AndroidPackage;>;"
    .local v12, "snapshot":Lcom/android/server/pm/Computer;
    :cond_17
    move-object/from16 v26, v12

    move-object v12, v1

    move-object/from16 v1, v26

    .line 789
    .end local v12    # "snapshot":Lcom/android/server/pm/Computer;
    .local v1, "snapshot":Lcom/android/server/pm/Computer;
    :goto_d
    return-void
.end method

.method sendPreferredActivityChangedBroadcast(I)V
    .locals 2
    .param p1, "userId"    # I

    .line 559
    iget-object v0, p0, Lcom/android/server/pm/BroadcastHelper;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/pm/BroadcastHelper$$ExternalSyntheticLambda7;

    invoke-direct {v1, p1}, Lcom/android/server/pm/BroadcastHelper$$ExternalSyntheticLambda7;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 575
    return-void
.end method

.method sendResourcesChangedBroadcast(Ljava/util/function/Supplier;ZZ[Ljava/lang/String;[I)V
    .locals 16
    .param p2, "mediaStatus"    # Z
    .param p3, "replacing"    # Z
    .param p4, "pkgNames"    # [Ljava/lang/String;
    .param p5, "uids"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Supplier<",
            "Lcom/android/server/pm/Computer;",
            ">;ZZ[",
            "Ljava/lang/String;",
            "[I)V"
        }
    .end annotation

    .line 234
    .local p1, "snapshotSupplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Lcom/android/server/pm/Computer;>;"
    move/from16 v0, p3

    invoke-static/range {p4 .. p4}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static/range {p5 .. p5}, Lcom/android/internal/util/ArrayUtils;->isEmpty([I)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object/from16 v1, p1

    move-object/from16 v15, p4

    goto :goto_1

    .line 237
    :cond_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    move-object v5, v1

    .line 238
    .local v5, "extras":Landroid/os/Bundle;
    const-string v1, "android.intent.extra.changed_package_list"

    move-object/from16 v15, p4

    invoke-virtual {v5, v1, v15}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 239
    const-string v1, "android.intent.extra.changed_uid_list"

    move-object/from16 v2, p5

    invoke-virtual {v5, v1, v2}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 240
    if-eqz v0, :cond_1

    .line 241
    const-string v1, "android.intent.extra.REPLACING"

    invoke-virtual {v5, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 243
    :cond_1
    if-eqz p2, :cond_2

    const-string v1, "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

    move-object v3, v1

    goto :goto_0

    .line 244
    :cond_2
    const-string v1, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    move-object v3, v1

    :goto_0
    nop

    .line 245
    .local v3, "action":Ljava/lang/String;
    new-instance v12, Lcom/android/server/pm/BroadcastHelper$$ExternalSyntheticLambda0;

    move-object/from16 v1, p1

    invoke-direct {v12, v1}, Lcom/android/server/pm/BroadcastHelper$$ExternalSyntheticLambda0;-><init>(Ljava/util/function/Supplier;)V

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v14}, Lcom/android/server/pm/BroadcastHelper;->sendPackageBroadcast(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/String;Landroid/content/IIntentReceiver;[I[ILandroid/util/SparseArray;Ljava/util/function/BiFunction;Landroid/os/Bundle;[Ljava/lang/String;)V

    .line 251
    return-void

    .line 234
    .end local v3    # "action":Ljava/lang/String;
    .end local v5    # "extras":Landroid/os/Bundle;
    :cond_3
    move-object/from16 v1, p1

    move-object/from16 v15, p4

    .line 235
    :goto_1
    return-void
.end method

.method sendResourcesChangedBroadcastAndNotify(Ljava/util/function/Supplier;ZZLjava/util/ArrayList;)V
    .locals 7
    .param p2, "mediaStatus"    # Z
    .param p3, "replacing"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Supplier<",
            "Lcom/android/server/pm/Computer;",
            ">;ZZ",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/pm/pkg/AndroidPackage;",
            ">;)V"
        }
    .end annotation

    .line 1284
    .local p1, "snapshotSupplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Lcom/android/server/pm/Computer;>;"
    .local p4, "packages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/pm/pkg/AndroidPackage;>;"
    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1285
    .local v0, "size":I
    new-array v5, v0, [Ljava/lang/String;

    .line 1286
    .local v5, "packageNames":[Ljava/lang/String;
    new-array v6, v0, [I

    .line 1287
    .local v6, "packageUids":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 1288
    invoke-virtual {p4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/pkg/AndroidPackage;

    .line 1289
    .local v2, "pkg":Lcom/android/server/pm/pkg/AndroidPackage;
    invoke-interface {v2}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v5, v1

    .line 1290
    invoke-interface {v2}, Lcom/android/server/pm/pkg/AndroidPackage;->getUid()I

    move-result v3

    aput v3, v6, v1

    .line 1287
    .end local v2    # "pkg":Lcom/android/server/pm/pkg/AndroidPackage;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    nop

    .line 1292
    .end local v1    # "i":I
    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    .end local p1    # "snapshotSupplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Lcom/android/server/pm/Computer;>;"
    .end local p2    # "mediaStatus":Z
    .end local p3    # "replacing":Z
    .local v2, "snapshotSupplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Lcom/android/server/pm/Computer;>;"
    .local v3, "mediaStatus":Z
    .local v4, "replacing":Z
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/BroadcastHelper;->sendResourcesChangedBroadcast(Ljava/util/function/Supplier;ZZ[Ljava/lang/String;[I)V

    .line 1294
    invoke-direct {p0, v3, v4, v5, v6}, Lcom/android/server/pm/BroadcastHelper;->notifyResourcesChanged(ZZ[Ljava/lang/String;[I)V

    .line 1295
    return-void
.end method

.method sendSessionCommitBroadcast(Lcom/android/server/pm/Computer;Landroid/content/pm/PackageInstaller$SessionInfo;ILjava/lang/String;)V
    .locals 10
    .param p1, "snapshot"    # Lcom/android/server/pm/Computer;
    .param p2, "sessionInfo"    # Landroid/content/pm/PackageInstaller$SessionInfo;
    .param p3, "userId"    # I
    .param p4, "appPredictionServicePackage"    # Ljava/lang/String;

    .line 504
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v0

    .line 505
    .local v0, "ums":Lcom/android/server/pm/UserManagerService;
    if-eqz v0, :cond_0

    invoke-virtual {p2}, Landroid/content/pm/PackageInstaller$SessionInfo;->isStaged()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    goto :goto_1

    .line 508
    :cond_1
    invoke-virtual {v0, p3}, Lcom/android/server/pm/UserManagerService;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    .line 509
    .local v1, "parent":Landroid/content/pm/UserInfo;
    if-eqz v1, :cond_2

    iget v2, v1, Landroid/content/pm/UserInfo;->id:I

    goto :goto_0

    :cond_2
    move v2, p3

    .line 510
    .local v2, "launcherUserId":I
    :goto_0
    invoke-interface {p1, v2}, Lcom/android/server/pm/Computer;->getDefaultHomeActivity(I)Landroid/content/ComponentName;

    move-result-object v3

    .line 511
    .local v3, "launcherComponent":Landroid/content/ComponentName;
    const-string v4, "android.intent.extra.USER"

    const-string v5, "android.content.pm.extra.SESSION"

    const-string v6, "android.content.pm.action.SESSION_COMMITTED"

    if-eqz v3, :cond_3

    invoke-virtual {p0, v3, p3}, Lcom/android/server/pm/BroadcastHelper;->canLauncherAccessProfile(Landroid/content/ComponentName;I)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 512
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 513
    invoke-virtual {v7, v5, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v7

    .line 514
    invoke-static {p3}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v8

    invoke-virtual {v7, v4, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v7

    .line 515
    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v7

    .line 516
    .local v7, "launcherIntent":Landroid/content/Intent;
    iget-object v8, p0, Lcom/android/server/pm/BroadcastHelper;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v9

    invoke-virtual {v8, v7, v9}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 518
    .end local v7    # "launcherIntent":Landroid/content/Intent;
    :cond_3
    if-eqz p4, :cond_4

    .line 519
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 520
    invoke-virtual {v7, v5, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v5

    .line 521
    invoke-static {p3}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v6

    invoke-virtual {v5, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v4

    .line 522
    invoke-virtual {v4, p4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    .line 523
    .local v4, "predictorIntent":Landroid/content/Intent;
    iget-object v5, p0, Lcom/android/server/pm/BroadcastHelper;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v6

    invoke-virtual {v5, v4, v6}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 525
    .end local v4    # "predictorIntent":Landroid/content/Intent;
    :cond_4
    return-void

    .line 506
    .end local v1    # "parent":Landroid/content/pm/UserInfo;
    .end local v2    # "launcherUserId":I
    .end local v3    # "launcherComponent":Landroid/content/ComponentName;
    :goto_1
    return-void
.end method

.method sendSystemPackageUpdatedBroadcasts(Lcom/android/server/pm/PackageRemovedInfo;)V
    .locals 14
    .param p1, "packageRemovedInfo"    # Lcom/android/server/pm/PackageRemovedInfo;

    .line 1031
    iget-boolean v0, p1, Lcom/android/server/pm/PackageRemovedInfo;->mIsRemovedPackageSystemUpdate:Z

    if-nez v0, :cond_0

    .line 1032
    return-void

    .line 1035
    :cond_0
    iget-object v3, p1, Lcom/android/server/pm/PackageRemovedInfo;->mRemovedPackage:Ljava/lang/String;

    .line 1036
    .local v3, "removedPackage":Ljava/lang/String;
    iget-object v0, p1, Lcom/android/server/pm/PackageRemovedInfo;->mInstallerPackageName:Ljava/lang/String;

    .line 1037
    .local v0, "installerPackageName":Ljava/lang/String;
    iget-object v10, p1, Lcom/android/server/pm/PackageRemovedInfo;->mBroadcastAllowList:Landroid/util/SparseArray;

    .line 1039
    .local v10, "broadcastAllowList":Landroid/util/SparseArray;, "Landroid/util/SparseArray<[I>;"
    new-instance v4, Landroid/os/Bundle;

    const/4 v1, 0x2

    invoke-direct {v4, v1}, Landroid/os/Bundle;-><init>(I)V

    .line 1040
    .local v4, "extras":Landroid/os/Bundle;
    const-string v1, "android.intent.extra.UID"

    iget v2, p1, Lcom/android/server/pm/PackageRemovedInfo;->mUid:I

    invoke-virtual {v4, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1041
    const-string v1, "android.intent.extra.REPLACING"

    const/4 v2, 0x1

    invoke-virtual {v4, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1042
    const/4 v9, 0x0

    const/4 v11, 0x0

    const-string v2, "android.intent.action.PACKAGE_ADDED"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v11}, Lcom/android/server/pm/BroadcastHelper;->sendPackageBroadcastAndNotify(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/String;Landroid/content/IIntentReceiver;[I[ILandroid/util/SparseArray;Landroid/os/Bundle;)V

    .line 1045
    move-object v12, v10

    .end local v10    # "broadcastAllowList":Landroid/util/SparseArray;, "Landroid/util/SparseArray<[I>;"
    .local v12, "broadcastAllowList":Landroid/util/SparseArray;, "Landroid/util/SparseArray<[I>;"
    if-eqz v0, :cond_1

    .line 1046
    const/4 v10, 0x0

    const/4 v11, 0x0

    const-string v2, "android.intent.action.PACKAGE_ADDED"

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v1, p0

    move-object v6, v0

    .end local v0    # "installerPackageName":Ljava/lang/String;
    .local v6, "installerPackageName":Ljava/lang/String;
    invoke-direct/range {v1 .. v11}, Lcom/android/server/pm/BroadcastHelper;->sendPackageBroadcastAndNotify(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/String;Landroid/content/IIntentReceiver;[I[ILandroid/util/SparseArray;Landroid/os/Bundle;)V

    .line 1050
    const-string v2, "android.intent.action.PACKAGE_REPLACED"

    invoke-direct/range {v1 .. v11}, Lcom/android/server/pm/BroadcastHelper;->sendPackageBroadcastAndNotify(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/String;Landroid/content/IIntentReceiver;[I[ILandroid/util/SparseArray;Landroid/os/Bundle;)V

    .line 1055
    .end local v6    # "installerPackageName":Ljava/lang/String;
    .restart local v0    # "installerPackageName":Ljava/lang/String;
    :cond_1
    const/4 v9, 0x0

    const/4 v11, 0x0

    const-string v2, "android.intent.action.PACKAGE_REPLACED"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, p0

    move-object v10, v12

    .end local v12    # "broadcastAllowList":Landroid/util/SparseArray;, "Landroid/util/SparseArray<[I>;"
    .restart local v10    # "broadcastAllowList":Landroid/util/SparseArray;, "Landroid/util/SparseArray<[I>;"
    invoke-direct/range {v1 .. v11}, Lcom/android/server/pm/BroadcastHelper;->sendPackageBroadcastAndNotify(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/String;Landroid/content/IIntentReceiver;[I[ILandroid/util/SparseArray;Landroid/os/Bundle;)V

    .line 1057
    move-object v13, v4

    .line 1059
    .end local v4    # "extras":Landroid/os/Bundle;
    .end local v10    # "broadcastAllowList":Landroid/util/SparseArray;, "Landroid/util/SparseArray<[I>;"
    .restart local v12    # "broadcastAllowList":Landroid/util/SparseArray;, "Landroid/util/SparseArray<[I>;"
    .local v13, "extras":Landroid/os/Bundle;
    const/16 v2, 0x137

    invoke-direct {p0, v2}, Lcom/android/server/pm/BroadcastHelper;->getTemporaryBroadcastOptionsForSystemPackageUpdate(I)Landroid/app/BroadcastOptions;

    move-result-object v2

    .line 1060
    invoke-virtual {v2}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v11

    .line 1057
    const-string v2, "android.intent.action.MY_PACKAGE_REPLACED"

    move-object v6, v3

    .end local v3    # "removedPackage":Ljava/lang/String;
    .local v6, "removedPackage":Ljava/lang/String;
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v10, 0x0

    invoke-direct/range {v1 .. v11}, Lcom/android/server/pm/BroadcastHelper;->sendPackageBroadcastAndNotify(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/String;Landroid/content/IIntentReceiver;[I[ILandroid/util/SparseArray;Landroid/os/Bundle;)V

    .line 1061
    move-object v3, v6

    .end local v6    # "removedPackage":Ljava/lang/String;
    .restart local v3    # "removedPackage":Ljava/lang/String;
    return-void
.end method
