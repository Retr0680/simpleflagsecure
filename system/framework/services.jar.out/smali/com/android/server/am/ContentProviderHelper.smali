.class public Lcom/android/server/am/ContentProviderHelper;
.super Ljava/lang/Object;
.source "ContentProviderHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/ContentProviderHelper$DevelopmentSettingsObserver;,
        Lcom/android/server/am/ContentProviderHelper$StartActivityRunnable;
    }
.end annotation


# static fields
.field private static final PROCESS_STATE_STATS_FORMAT:[I

.field private static final TAG:Ljava/lang/String; = "ContentProviderHelper"


# instance fields
.field private final mCloneProfileAuthorityRedirectionCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mLaunchingProviders:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/ContentProviderRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mProcessStateStatsLongs:[J

.field private final mProviderMap:Lcom/android/server/am/ProviderMap;

.field private final mService:Lcom/android/server/am/ActivityManagerService;

.field private mSystemProvidersInstalled:Z


# direct methods
.method public static synthetic $r8$lambda$7SqNWgaMV7-OpTBuN-1CMmNHiyU(Lcom/android/server/am/ContentProviderHelper;Lcom/android/server/am/ProcessRecord;Landroid/content/pm/ProviderInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/am/ContentProviderHelper;->lambda$checkContentProviderAssociation$4(Lcom/android/server/am/ProcessRecord;Landroid/content/pm/ProviderInfo;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$Cuz--ZRyWbI5VNWXF2ERo-dfHW4(Lcom/android/server/am/ContentProviderHelper;Ljava/lang/String;ILandroid/os/RemoteCallback;Landroid/os/Bundle;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/am/ContentProviderHelper;->lambda$getMimeTypeFilterAsync$0(Ljava/lang/String;ILandroid/os/RemoteCallback;Landroid/os/Bundle;)V

    return-void
.end method

.method public static synthetic $r8$lambda$JV9jTPlBHAPZLxkKAqq24ds-FLE(Lcom/android/server/am/ContentProviderHelper;Ljava/lang/String;ILandroid/os/RemoteCallback;ILandroid/net/Uri;Landroid/os/Bundle;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p6}, Lcom/android/server/am/ContentProviderHelper;->lambda$getMimeTypeFilterAsync$1(Ljava/lang/String;ILandroid/os/RemoteCallback;ILandroid/net/Uri;Landroid/os/Bundle;)V

    return-void
.end method

.method public static synthetic $r8$lambda$WgT9vu5eZilG5Q2yFu6AlQnBbWA(Lcom/android/server/am/ContentProviderHelper;Lcom/android/server/am/ContentProviderConnection;ZZ)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/am/ContentProviderHelper;->lambda$decProviderCountLocked$3(Lcom/android/server/am/ContentProviderConnection;ZZ)V

    return-void
.end method

.method public static synthetic $r8$lambda$Ybb6ASgJllmnwf29cCLpR_JR-Yg(Lcom/android/server/am/ContentProviderHelper;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/server/am/ContentProviderHelper;->lambda$installEncryptionUnawareProviders$2(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmService(Lcom/android/server/am/ContentProviderHelper;)Lcom/android/server/am/ActivityManagerService;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 1724
    const/16 v0, 0x220

    const/16 v1, 0x2820

    const/16 v2, 0x20

    filled-new-array {v2, v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/android/server/am/ContentProviderHelper;->PROCESS_STATE_STATS_FORMAT:[I

    return-void
.end method

.method constructor <init>(Lcom/android/server/am/ActivityManagerService;Z)V
    .locals 2
    .param p1, "service"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "createProviderMap"    # Z

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ContentProviderHelper;->mLaunchingProviders:Ljava/util/ArrayList;

    .line 130
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ContentProviderHelper;->mCloneProfileAuthorityRedirectionCache:Ljava/util/Map;

    .line 1730
    const/4 v0, 0x1

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/server/am/ContentProviderHelper;->mProcessStateStatsLongs:[J

    .line 133
    iput-object p1, p0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 134
    if-eqz p2, :cond_0

    new-instance v0, Lcom/android/server/am/ProviderMap;

    iget-object v1, p0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-direct {v0, v1}, Lcom/android/server/am/ProviderMap;-><init>(Lcom/android/server/am/ActivityManagerService;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/android/server/am/ContentProviderHelper;->mProviderMap:Lcom/android/server/am/ProviderMap;

    .line 135
    return-void
.end method

.method private canAccessContentProviderFromSdkSandbox(Landroid/content/pm/ProviderInfo;I)Z
    .locals 3
    .param p1, "cpi"    # Landroid/content/pm/ProviderInfo;
    .param p2, "callingUid"    # I

    .line 1997
    invoke-static {p2}, Landroid/os/Process;->isSdkSandboxUid(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1998
    const/4 v0, 0x1

    return v0

    .line 2000
    :cond_0
    const-class v0, Lcom/android/server/sdksandbox/SdkSandboxManagerLocal;

    .line 2001
    invoke-static {v0}, Lcom/android/server/LocalManagerRegistry;->getManager(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/sdksandbox/SdkSandboxManagerLocal;

    .line 2002
    .local v0, "sdkSandboxManagerLocal":Lcom/android/server/sdksandbox/SdkSandboxManagerLocal;
    if-eqz v0, :cond_1

    .line 2007
    invoke-interface {v0, p1}, Lcom/android/server/sdksandbox/SdkSandboxManagerLocal;->canAccessContentProviderFromSdkSandbox(Landroid/content/pm/ProviderInfo;)Z

    move-result v1

    return v1

    .line 2003
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "SdkSandboxManagerLocal not found when checking whether SDK sandbox uid may access the contentprovider."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private canClearIdentity(III)Z
    .locals 3
    .param p1, "callingPid"    # I
    .param p2, "callingUid"    # I
    .param p3, "userId"    # I

    .line 1117
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, p3, :cond_0

    .line 1118
    return v1

    .line 1120
    :cond_0
    const-string v0, "android.permission.INTERACT_ACROSS_USERS"

    const/4 v2, -0x1

    invoke-static {v0, p1, p2, v2, v1}, Lcom/android/server/am/ActivityManagerService;->checkComponentPermission(Ljava/lang/String;IIIZ)I

    move-result v0

    nop

    if-eqz v0, :cond_2

    .line 1123
    const-string v0, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-static {v0, p1, p2, v2, v1}, Lcom/android/server/am/ActivityManagerService;->checkComponentPermission(Ljava/lang/String;IIIZ)I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    nop

    .line 1120
    :goto_1
    return v1
.end method

.method private checkAssociationAndPermissionLocked(Lcom/android/server/am/ProcessRecord;Landroid/content/pm/ProviderInfo;IIZLjava/lang/String;J)V
    .locals 10
    .param p1, "callingApp"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "cpi"    # Landroid/content/pm/ProviderInfo;
    .param p3, "callingUid"    # I
    .param p4, "userId"    # I
    .param p5, "checkUser"    # Z
    .param p6, "cprName"    # Ljava/lang/String;
    .param p7, "startTime"    # J

    .line 734
    move-wide/from16 v7, p7

    invoke-direct {p0, p1, p3, p2}, Lcom/android/server/am/ContentProviderHelper;->checkContentProviderAssociation(Lcom/android/server/am/ProcessRecord;ILandroid/content/pm/ProviderInfo;)Ljava/lang/String;

    move-result-object v2

    move-object v9, v2

    .local v9, "msg":Ljava/lang/String;
    if-nez v2, :cond_2

    .line 738
    const-string/jumbo v2, "getContentProviderImpl: before checkContentProviderPermission"

    invoke-direct {p0, v7, v8, v2}, Lcom/android/server/am/ContentProviderHelper;->checkTime(JLjava/lang/String;)V

    .line 739
    nop

    .line 740
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 741
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_0
    move-object v6, v4

    goto :goto_1

    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    .line 739
    :goto_1
    move-object v0, p0

    move-object v1, p2

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/server/am/ContentProviderHelper;->checkContentProviderPermission(Landroid/content/pm/ProviderInfo;IIIZLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    .end local v9    # "msg":Ljava/lang/String;
    .local v1, "msg":Ljava/lang/String;
    if-nez v2, :cond_1

    .line 745
    const-string/jumbo v2, "getContentProviderImpl: after checkContentProviderPermission"

    invoke-direct {p0, v7, v8, v2}, Lcom/android/server/am/ContentProviderHelper;->checkTime(JLjava/lang/String;)V

    .line 746
    return-void

    .line 743
    :cond_1
    new-instance v2, Ljava/lang/SecurityException;

    invoke-direct {v2, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 735
    .end local v1    # "msg":Ljava/lang/String;
    .restart local v9    # "msg":Ljava/lang/String;
    :cond_2
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Content provider lookup "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v3, p6

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " failed: association not allowed with package "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private checkContentProviderAssociation(Lcom/android/server/am/ProcessRecord;ILandroid/content/pm/ProviderInfo;)Ljava/lang/String;
    .locals 4
    .param p1, "callingApp"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "callingUid"    # I
    .param p3, "cpi"    # Landroid/content/pm/ProviderInfo;

    .line 1675
    if-nez p1, :cond_1

    .line 1676
    iget-object v0, p0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, p3, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    iget-object v2, p3, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3, p2}, Lcom/android/server/am/ActivityManagerService;->validateAssociationAllowedLocked(Ljava/lang/String;ILjava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1677
    goto :goto_0

    :cond_0
    const-string v3, "<null>"

    .line 1676
    :goto_0
    return-object v3

    .line 1679
    :cond_1
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getPkgList()Lcom/android/server/am/PackageList;

    move-result-object v0

    new-instance v1, Lcom/android/server/am/ContentProviderHelper$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1, p3}, Lcom/android/server/am/ContentProviderHelper$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/am/ContentProviderHelper;Lcom/android/server/am/ProcessRecord;Landroid/content/pm/ProviderInfo;)V

    invoke-virtual {v0, v1}, Lcom/android/server/am/PackageList;->searchEachPackage(Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1686
    .local v0, "r":Ljava/lang/String;
    return-object v0
.end method

.method private checkContentProviderPermission(Landroid/content/pm/ProviderInfo;IIIZLjava/lang/String;)Ljava/lang/String;
    .locals 13
    .param p1, "cpi"    # Landroid/content/pm/ProviderInfo;
    .param p2, "callingPid"    # I
    .param p3, "callingUid"    # I
    .param p4, "userId"    # I
    .param p5, "checkUser"    # Z
    .param p6, "appName"    # Ljava/lang/String;

    .line 1596
    move/from16 v2, p3

    move/from16 v8, p5

    invoke-direct {p0, p1, v2}, Lcom/android/server/am/ContentProviderHelper;->canAccessContentProviderFromSdkSandbox(Landroid/content/pm/ProviderInfo;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1597
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ContentProvider access not allowed from sdk sandbox UID. ProviderInfo: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1598
    invoke-virtual {p1}, Landroid/content/pm/ProviderInfo;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1597
    return-object v0

    .line 1600
    :cond_0
    const/4 v0, 0x0

    .line 1601
    .local v0, "checkedGrants":Z
    const/4 v9, 0x0

    if-eqz v8, :cond_3

    .line 1603
    iget-object v1, p0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    move/from16 v3, p4

    invoke-virtual {v1, v3}, Lcom/android/server/am/UserController;->unsafeConvertIncomingUser(I)I

    move-result v10

    .line 1604
    .local v10, "tmpTargetUserId":I
    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    if-eq v10, v1, :cond_2

    .line 1605
    iget-object v1, p0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mUgmInternal:Lcom/android/server/uri/UriGrantsManagerInternal;

    invoke-interface {v1, v2, p1, v10, v8}, Lcom/android/server/uri/UriGrantsManagerInternal;->checkAuthorityGrants(ILandroid/content/pm/ProviderInfo;IZ)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1607
    return-object v9

    .line 1609
    :cond_1
    const/4 v0, 0x1

    move v11, v0

    goto :goto_0

    .line 1604
    :cond_2
    move v11, v0

    .line 1611
    .end local v0    # "checkedGrants":Z
    .local v11, "checkedGrants":Z
    :goto_0
    iget-object v0, p0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkContentProviderPermissionLocked "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move v1, p2

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/am/UserController;->handleIncomingUser(IIIZILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 1614
    .end local p4    # "userId":I
    .local v0, "userId":I
    if-eq v0, v10, :cond_4

    .line 1619
    const/4 v3, 0x0

    move v11, v3

    .end local v11    # "checkedGrants":Z
    .local v3, "checkedGrants":Z
    goto :goto_1

    .line 1601
    .end local v3    # "checkedGrants":Z
    .end local v10    # "tmpTargetUserId":I
    .local v0, "checkedGrants":Z
    .restart local p4    # "userId":I
    :cond_3
    move v11, v0

    move/from16 v0, p4

    .line 1622
    .end local p4    # "userId":I
    .local v0, "userId":I
    .restart local v11    # "checkedGrants":Z
    :cond_4
    :goto_1
    iget-object v3, p1, Landroid/content/pm/ProviderInfo;->readPermission:Ljava/lang/String;

    iget-object v4, p1, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-boolean v5, p1, Landroid/content/pm/ProviderInfo;->exported:Z

    invoke-static {v3, p2, v2, v4, v5}, Lcom/android/server/am/ActivityManagerService;->checkComponentPermission(Ljava/lang/String;IIIZ)I

    move-result v3

    if-nez v3, :cond_5

    .line 1625
    return-object v9

    .line 1627
    :cond_5
    iget-object v3, p1, Landroid/content/pm/ProviderInfo;->writePermission:Ljava/lang/String;

    iget-object v4, p1, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-boolean v5, p1, Landroid/content/pm/ProviderInfo;->exported:Z

    invoke-static {v3, p2, v2, v4, v5}, Lcom/android/server/am/ActivityManagerService;->checkComponentPermission(Ljava/lang/String;IIIZ)I

    move-result v3

    if-nez v3, :cond_6

    .line 1630
    return-object v9

    .line 1633
    :cond_6
    iget-object v3, p1, Landroid/content/pm/ProviderInfo;->pathPermissions:[Landroid/content/pm/PathPermission;

    .line 1634
    .local v3, "pps":[Landroid/content/pm/PathPermission;
    if-eqz v3, :cond_9

    .line 1635
    array-length v4, v3

    .line 1636
    .local v4, "i":I
    :goto_2
    if-lez v4, :cond_9

    .line 1637
    add-int/lit8 v4, v4, -0x1

    .line 1638
    aget-object v5, v3, v4

    .line 1639
    .local v5, "pp":Landroid/content/pm/PathPermission;
    invoke-virtual {v5}, Landroid/content/pm/PathPermission;->getReadPermission()Ljava/lang/String;

    move-result-object v6

    .line 1640
    .local v6, "pprperm":Ljava/lang/String;
    if-eqz v6, :cond_7

    iget-object v7, p1, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-boolean v10, p1, Landroid/content/pm/ProviderInfo;->exported:Z

    invoke-static {v6, p2, v2, v7, v10}, Lcom/android/server/am/ActivityManagerService;->checkComponentPermission(Ljava/lang/String;IIIZ)I

    move-result v7

    if-nez v7, :cond_7

    .line 1643
    return-object v9

    .line 1645
    :cond_7
    invoke-virtual {v5}, Landroid/content/pm/PathPermission;->getWritePermission()Ljava/lang/String;

    move-result-object v7

    .line 1646
    .local v7, "ppwperm":Ljava/lang/String;
    if-eqz v7, :cond_8

    iget-object v10, p1, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v10, v10, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-boolean v12, p1, Landroid/content/pm/ProviderInfo;->exported:Z

    invoke-static {v7, p2, v2, v10, v12}, Lcom/android/server/am/ActivityManagerService;->checkComponentPermission(Ljava/lang/String;IIIZ)I

    move-result v10

    if-nez v10, :cond_8

    .line 1649
    return-object v9

    .line 1651
    .end local v5    # "pp":Landroid/content/pm/PathPermission;
    .end local v6    # "pprperm":Ljava/lang/String;
    .end local v7    # "ppwperm":Ljava/lang/String;
    :cond_8
    goto :goto_2

    .line 1653
    .end local v4    # "i":I
    :cond_9
    nop

    nop

    if-nez v11, :cond_a

    iget-object v4, p0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mUgmInternal:Lcom/android/server/uri/UriGrantsManagerInternal;

    .line 1654
    invoke-interface {v4, v2, p1, v0, v8}, Lcom/android/server/uri/UriGrantsManagerInternal;->checkAuthorityGrants(ILandroid/content/pm/ProviderInfo;IZ)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 1655
    return-object v9

    .line 1659
    :cond_a
    iget-boolean v4, p1, Landroid/content/pm/ProviderInfo;->exported:Z

    if-nez v4, :cond_b

    .line 1660
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " that is not exported from UID "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p1, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .local v4, "suffix":Ljava/lang/String;
    goto :goto_3

    .line 1661
    .end local v4    # "suffix":Ljava/lang/String;
    :cond_b
    const-string v4, "android.permission.MANAGE_DOCUMENTS"

    iget-object v5, p1, Landroid/content/pm/ProviderInfo;->readPermission:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 1662
    const-string v4, " requires that you obtain access using ACTION_OPEN_DOCUMENT or related APIs"

    .restart local v4    # "suffix":Ljava/lang/String;
    goto :goto_3

    .line 1664
    .end local v4    # "suffix":Ljava/lang/String;
    :cond_c
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " requires "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p1, Landroid/content/pm/ProviderInfo;->readPermission:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " or "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p1, Landroid/content/pm/ProviderInfo;->writePermission:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1666
    .restart local v4    # "suffix":Ljava/lang/String;
    :goto_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Permission Denial: opening provider "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p1, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " from "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1667
    if-eqz p6, :cond_d

    move-object/from16 v6, p6

    goto :goto_4

    :cond_d
    const-string v6, "(null)"

    :goto_4
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " (pid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", uid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1669
    .local v5, "msg":Ljava/lang/String;
    const-string v6, "ContentProviderHelper"

    invoke-static {v6, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1670
    return-object v5
.end method

.method private checkGetAnyTypePermission(II)Z
    .locals 2
    .param p1, "callingUid"    # I
    .param p2, "callingPid"    # I

    .line 1102
    iget-object v0, p0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string v1, "android.permission.GET_ANY_PROVIDER_TYPE"

    invoke-virtual {v0, v1, p2, p1}, Lcom/android/server/am/ActivityManagerService;->checkPermission(Ljava/lang/String;II)I

    move-result v0

    if-nez v0, :cond_0

    .line 1104
    const/4 v0, 0x1

    return v0

    .line 1106
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private checkTime(JLjava/lang/String;)V
    .locals 6
    .param p1, "startTime"    # J
    .param p3, "where"    # Ljava/lang/String;

    .line 1954
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 1955
    .local v0, "now":J
    sub-long v2, v0, p1

    const-wide/16 v4, 0x32

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 1957
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Slow operation: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long v3, v0, p1

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "ms so far, now at "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ContentProviderHelper"

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1959
    :cond_0
    return-void
.end method

.method private decProviderCountLocked(Lcom/android/server/am/ContentProviderConnection;Lcom/android/server/am/ContentProviderRecord;Landroid/os/IBinder;ZZZ)Z
    .locals 5
    .param p1, "conn"    # Lcom/android/server/am/ContentProviderConnection;
    .param p2, "cpr"    # Lcom/android/server/am/ContentProviderRecord;
    .param p3, "externalProcessToken"    # Landroid/os/IBinder;
    .param p4, "stable"    # Z
    .param p5, "enforceDelay"    # Z
    .param p6, "updateOomAdj"    # Z

    .line 1520
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 1521
    iget-object v1, p0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mProcessStateController:Lcom/android/server/am/ProcessStateController;

    invoke-virtual {v1, p2, p3}, Lcom/android/server/am/ProcessStateController;->removeExternalProviderClient(Lcom/android/server/am/ContentProviderRecord;Landroid/os/IBinder;)Z

    .line 1523
    return v0

    .line 1526
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/am/ContentProviderConnection;->totalRefCount()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_1

    .line 1527
    invoke-virtual {p1, p4}, Lcom/android/server/am/ContentProviderConnection;->decrementCount(Z)I

    .line 1528
    return v0

    .line 1530
    :cond_1
    if-eqz p5, :cond_2

    .line 1533
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/am/ContentProviderHelper$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1, p4, p6}, Lcom/android/server/am/ContentProviderHelper$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/am/ContentProviderHelper;Lcom/android/server/am/ContentProviderConnection;ZZ)V

    const-wide/16 v3, 0x1388

    invoke-virtual {v0, v1, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 1537
    :cond_2
    invoke-direct {p0, p1, p4, p6}, Lcom/android/server/am/ContentProviderHelper;->handleProviderRemoval(Lcom/android/server/am/ContentProviderConnection;ZZ)V

    .line 1539
    :goto_0
    return v2
.end method

.method private getContentProviderImpl(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/os/IBinder;ILjava/lang/String;Ljava/lang/String;ZI)Landroid/app/ContentProviderHolder;
    .locals 54
    .param p1, "caller"    # Landroid/app/IApplicationThread;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "token"    # Landroid/os/IBinder;
    .param p4, "callingUid"    # I
    .param p5, "callingPackage"    # Ljava/lang/String;
    .param p6, "callingTag"    # Ljava/lang/String;
    .param p7, "stable"    # Z
    .param p8, "userId"    # I

    .line 182
    move-object/from16 v1, p0

    move-object/from16 v14, p1

    move-object/from16 v15, p2

    move/from16 v13, p8

    const/4 v2, 0x0

    .line 183
    .local v2, "cpr":Lcom/android/server/am/ContentProviderRecord;
    const/16 v16, 0x0

    .line 184
    .local v16, "conn":Lcom/android/server/am/ContentProviderConnection;
    const/4 v3, 0x0

    .line 185
    .local v3, "cpi":Landroid/content/pm/ProviderInfo;
    const/4 v4, 0x0

    .line 186
    .local v4, "providerRunning":Z
    move/from16 v12, p8

    .line 187
    .local v12, "expectedUserId":I
    iget-object v10, v1, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    monitor-enter v10

    .line 188
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    .line 189
    .local v8, "startTime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeNanos()J

    move-result-wide v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5c

    .line 191
    .local v5, "startTimeNs":J
    const/4 v0, 0x0

    .line 192
    .local v0, "r":Lcom/android/server/am/ProcessRecord;
    if-eqz v14, :cond_1

    .line 193
    :try_start_1
    iget-object v7, v1, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v7, v14}, Lcom/android/server/am/ActivityManagerService;->getRecordForAppLOSP(Landroid/app/IApplicationThread;)Lcom/android/server/am/ProcessRecord;

    move-result-object v7

    move-object v0, v7

    .line 194
    if-eqz v0, :cond_0

    move-object/from16 v17, v2

    move-object v2, v0

    goto :goto_0

    .line 195
    :cond_0
    new-instance v7, Ljava/lang/SecurityException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object/from16 v17, v2

    .end local v2    # "cpr":Lcom/android/server/am/ContentProviderRecord;
    .local v17, "cpr":Lcom/android/server/am/ContentProviderRecord;
    :try_start_2
    const-string v2, "Unable to find app for caller "

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " (pid="

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ") when getting content provider "

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v7, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local v3    # "cpi":Landroid/content/pm/ProviderInfo;
    .end local v4    # "providerRunning":Z
    .end local v12    # "expectedUserId":I
    .end local v16    # "conn":Lcom/android/server/am/ContentProviderConnection;
    .end local v17    # "cpr":Lcom/android/server/am/ContentProviderRecord;
    .end local p0    # "this":Lcom/android/server/am/ContentProviderHelper;
    .end local p1    # "caller":Landroid/app/IApplicationThread;
    .end local p2    # "name":Ljava/lang/String;
    .end local p3    # "token":Landroid/os/IBinder;
    .end local p4    # "callingUid":I
    .end local p5    # "callingPackage":Ljava/lang/String;
    .end local p6    # "callingTag":Ljava/lang/String;
    .end local p7    # "stable":Z
    .end local p8    # "userId":I
    throw v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 667
    .end local v0    # "r":Lcom/android/server/am/ProcessRecord;
    .end local v5    # "startTimeNs":J
    .end local v8    # "startTime":J
    .restart local v3    # "cpi":Landroid/content/pm/ProviderInfo;
    .restart local v4    # "providerRunning":Z
    .restart local v12    # "expectedUserId":I
    .restart local v16    # "conn":Lcom/android/server/am/ContentProviderConnection;
    .restart local v17    # "cpr":Lcom/android/server/am/ContentProviderRecord;
    .restart local p0    # "this":Lcom/android/server/am/ContentProviderHelper;
    .restart local p1    # "caller":Landroid/app/IApplicationThread;
    .restart local p2    # "name":Ljava/lang/String;
    .restart local p3    # "token":Landroid/os/IBinder;
    .restart local p4    # "callingUid":I
    .restart local p5    # "callingPackage":Ljava/lang/String;
    .restart local p6    # "callingTag":Ljava/lang/String;
    .restart local p7    # "stable":Z
    .restart local p8    # "userId":I
    :catchall_0
    move-exception v0

    move/from16 v11, p4

    move-object/from16 v21, v10

    move/from16 v22, v12

    move v6, v13

    move-object v9, v14

    move-object v14, v15

    move-object/from16 v2, v17

    goto/16 :goto_3d

    .end local v17    # "cpr":Lcom/android/server/am/ContentProviderRecord;
    .restart local v2    # "cpr":Lcom/android/server/am/ContentProviderRecord;
    :catchall_1
    move-exception v0

    move-object/from16 v17, v2

    move/from16 v11, p4

    move-object/from16 v21, v10

    move/from16 v22, v12

    move v6, v13

    move-object v9, v14

    move-object v14, v15

    .end local v2    # "cpr":Lcom/android/server/am/ContentProviderRecord;
    .restart local v17    # "cpr":Lcom/android/server/am/ContentProviderRecord;
    goto/16 :goto_3d

    .line 192
    .end local v17    # "cpr":Lcom/android/server/am/ContentProviderRecord;
    .restart local v0    # "r":Lcom/android/server/am/ProcessRecord;
    .restart local v2    # "cpr":Lcom/android/server/am/ContentProviderRecord;
    .restart local v5    # "startTimeNs":J
    .restart local v8    # "startTime":J
    :cond_1
    move-object/from16 v17, v2

    .end local v2    # "cpr":Lcom/android/server/am/ContentProviderRecord;
    .restart local v17    # "cpr":Lcom/android/server/am/ContentProviderRecord;
    move-object v2, v0

    .line 201
    .end local v0    # "r":Lcom/android/server/am/ProcessRecord;
    .local v2, "r":Lcom/android/server/am/ProcessRecord;
    :goto_0
    const/4 v0, 0x1

    .line 203
    .local v0, "checkCrossUser":Z
    :try_start_3
    const-string/jumbo v7, "getContentProviderImpl: getProviderByName"

    invoke-direct {v1, v8, v9, v7}, Lcom/android/server/am/ContentProviderHelper;->checkTime(JLjava/lang/String;)V

    .line 205
    const-class v7, Lcom/android/server/pm/UserManagerInternal;

    invoke-static {v7}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/pm/UserManagerInternal;

    move-object v11, v7

    .line 215
    .local v11, "umInternal":Lcom/android/server/pm/UserManagerInternal;
    invoke-virtual {v11, v13}, Lcom/android/server/pm/UserManagerInternal;->getUserProperties(I)Landroid/content/pm/UserProperties;

    move-result-object v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_5b

    move-object/from16 v18, v7

    .line 216
    .local v18, "userProps":Landroid/content/pm/UserProperties;
    if-eqz v18, :cond_2

    .line 217
    :try_start_4
    invoke-virtual/range {v18 .. v18}, Landroid/content/pm/UserProperties;->isMediaSharedWithParent()Z

    move-result v20
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v20, :cond_2

    const/16 v20, 0x1

    goto :goto_1

    :cond_2
    const/16 v20, 0x0

    :goto_1
    nop

    .line 218
    .local v20, "isMediaSharedWithParent":Z
    :try_start_5
    invoke-direct {v1, v15}, Lcom/android/server/am/ContentProviderHelper;->isAuthorityRedirectedForCloneProfileCached(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_3

    if-nez v20, :cond_4

    :cond_3
    goto :goto_2

    :cond_4
    move-object/from16 v23, v3

    move/from16 v24, v4

    move-object/from16 v7, v17

    goto/16 :goto_4

    .line 220
    :goto_2
    iget-object v7, v1, Lcom/android/server/am/ContentProviderHelper;->mProviderMap:Lcom/android/server/am/ProviderMap;

    invoke-virtual {v7, v15, v13}, Lcom/android/server/am/ProviderMap;->getProviderByName(Ljava/lang/String;I)Lcom/android/server/am/ContentProviderRecord;

    move-result-object v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5b

    .line 224
    .end local v17    # "cpr":Lcom/android/server/am/ContentProviderRecord;
    .local v7, "cpr":Lcom/android/server/am/ContentProviderRecord;
    :try_start_6
    invoke-direct {v1, v15}, Lcom/android/server/am/ContentProviderHelper;->isAuthorityRedirectedForCloneProfileCached(Ljava/lang/String;)Z

    move-result v17
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5a

    if-eqz v17, :cond_7

    .line 225
    :try_start_7
    invoke-static/range {p4 .. p4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v17
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    move/from16 v22, v17

    .line 226
    .local v22, "callingUserId":I
    nop

    .line 227
    move-object/from16 v23, v3

    move/from16 v3, v22

    .end local v22    # "callingUserId":I
    .local v3, "callingUserId":I
    .local v23, "cpi":Landroid/content/pm/ProviderInfo;
    :try_start_8
    invoke-virtual {v11, v3}, Lcom/android/server/pm/UserManagerInternal;->getUserProperties(I)Landroid/content/pm/UserProperties;

    move-result-object v17
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 228
    .local v17, "userPropsCallingUser":Landroid/content/pm/UserProperties;
    if-eqz v17, :cond_5

    .line 230
    :try_start_9
    invoke-virtual/range {v17 .. v17}, Landroid/content/pm/UserProperties;->isMediaSharedWithParent()Z

    move-result v22
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    if-eqz v22, :cond_5

    const/16 v22, 0x1

    goto :goto_3

    .line 667
    .end local v0    # "checkCrossUser":Z
    .end local v2    # "r":Lcom/android/server/am/ProcessRecord;
    .end local v3    # "callingUserId":I
    .end local v5    # "startTimeNs":J
    .end local v8    # "startTime":J
    .end local v11    # "umInternal":Lcom/android/server/pm/UserManagerInternal;
    .end local v17    # "userPropsCallingUser":Landroid/content/pm/UserProperties;
    .end local v18    # "userProps":Landroid/content/pm/UserProperties;
    .end local v20    # "isMediaSharedWithParent":Z
    :catchall_2
    move-exception v0

    move/from16 v11, p4

    move-object v2, v7

    move-object/from16 v21, v10

    move/from16 v22, v12

    move v6, v13

    move-object v9, v14

    move-object v14, v15

    move-object/from16 v3, v23

    goto/16 :goto_3d

    .line 230
    .restart local v0    # "checkCrossUser":Z
    .restart local v2    # "r":Lcom/android/server/am/ProcessRecord;
    .restart local v3    # "callingUserId":I
    .restart local v5    # "startTimeNs":J
    .restart local v8    # "startTime":J
    .restart local v11    # "umInternal":Lcom/android/server/pm/UserManagerInternal;
    .restart local v17    # "userPropsCallingUser":Landroid/content/pm/UserProperties;
    .restart local v18    # "userProps":Landroid/content/pm/UserProperties;
    .restart local v20    # "isMediaSharedWithParent":Z
    :cond_5
    const/16 v22, 0x0

    :goto_3
    nop

    .line 231
    .local v22, "isMediaSharedWithParentForCallingUser":Z
    if-eqz v22, :cond_6

    .line 232
    move/from16 v24, v4

    .end local v4    # "providerRunning":Z
    .local v24, "providerRunning":Z
    :try_start_a
    invoke-virtual {v11, v3}, Lcom/android/server/pm/UserManagerInternal;->getProfileParentId(I)I

    move-result v4

    if-ne v4, v13, :cond_8

    .line 233
    const/4 v0, 0x0

    goto :goto_4

    .line 667
    .end local v0    # "checkCrossUser":Z
    .end local v2    # "r":Lcom/android/server/am/ProcessRecord;
    .end local v3    # "callingUserId":I
    .end local v5    # "startTimeNs":J
    .end local v8    # "startTime":J
    .end local v11    # "umInternal":Lcom/android/server/pm/UserManagerInternal;
    .end local v17    # "userPropsCallingUser":Landroid/content/pm/UserProperties;
    .end local v18    # "userProps":Landroid/content/pm/UserProperties;
    .end local v20    # "isMediaSharedWithParent":Z
    .end local v22    # "isMediaSharedWithParentForCallingUser":Z
    :catchall_3
    move-exception v0

    move/from16 v11, p4

    move-object v2, v7

    move-object/from16 v21, v10

    move/from16 v22, v12

    move v6, v13

    move-object v9, v14

    move-object v14, v15

    move-object/from16 v3, v23

    move/from16 v4, v24

    goto/16 :goto_3d

    .line 231
    .end local v24    # "providerRunning":Z
    .restart local v0    # "checkCrossUser":Z
    .restart local v2    # "r":Lcom/android/server/am/ProcessRecord;
    .restart local v3    # "callingUserId":I
    .restart local v4    # "providerRunning":Z
    .restart local v5    # "startTimeNs":J
    .restart local v8    # "startTime":J
    .restart local v11    # "umInternal":Lcom/android/server/pm/UserManagerInternal;
    .restart local v17    # "userPropsCallingUser":Landroid/content/pm/UserProperties;
    .restart local v18    # "userProps":Landroid/content/pm/UserProperties;
    .restart local v20    # "isMediaSharedWithParent":Z
    .restart local v22    # "isMediaSharedWithParentForCallingUser":Z
    :cond_6
    move/from16 v24, v4

    .end local v4    # "providerRunning":Z
    .restart local v24    # "providerRunning":Z
    goto :goto_4

    .line 667
    .end local v0    # "checkCrossUser":Z
    .end local v2    # "r":Lcom/android/server/am/ProcessRecord;
    .end local v3    # "callingUserId":I
    .end local v5    # "startTimeNs":J
    .end local v8    # "startTime":J
    .end local v11    # "umInternal":Lcom/android/server/pm/UserManagerInternal;
    .end local v17    # "userPropsCallingUser":Landroid/content/pm/UserProperties;
    .end local v18    # "userProps":Landroid/content/pm/UserProperties;
    .end local v20    # "isMediaSharedWithParent":Z
    .end local v22    # "isMediaSharedWithParentForCallingUser":Z
    .end local v24    # "providerRunning":Z
    .restart local v4    # "providerRunning":Z
    :catchall_4
    move-exception v0

    move/from16 v24, v4

    move/from16 v11, p4

    move-object v2, v7

    move-object/from16 v21, v10

    move/from16 v22, v12

    move v6, v13

    move-object v9, v14

    move-object v14, v15

    move-object/from16 v3, v23

    .end local v4    # "providerRunning":Z
    .restart local v24    # "providerRunning":Z
    goto/16 :goto_3d

    .end local v23    # "cpi":Landroid/content/pm/ProviderInfo;
    .end local v24    # "providerRunning":Z
    .local v3, "cpi":Landroid/content/pm/ProviderInfo;
    .restart local v4    # "providerRunning":Z
    :catchall_5
    move-exception v0

    move-object/from16 v23, v3

    move/from16 v24, v4

    move/from16 v11, p4

    move-object v2, v7

    move-object/from16 v21, v10

    move/from16 v22, v12

    move v6, v13

    move-object v9, v14

    move-object v14, v15

    .end local v3    # "cpi":Landroid/content/pm/ProviderInfo;
    .end local v4    # "providerRunning":Z
    .restart local v23    # "cpi":Landroid/content/pm/ProviderInfo;
    .restart local v24    # "providerRunning":Z
    goto/16 :goto_3d

    .line 224
    .end local v23    # "cpi":Landroid/content/pm/ProviderInfo;
    .end local v24    # "providerRunning":Z
    .restart local v0    # "checkCrossUser":Z
    .restart local v2    # "r":Lcom/android/server/am/ProcessRecord;
    .restart local v3    # "cpi":Landroid/content/pm/ProviderInfo;
    .restart local v4    # "providerRunning":Z
    .restart local v5    # "startTimeNs":J
    .restart local v8    # "startTime":J
    .restart local v11    # "umInternal":Lcom/android/server/pm/UserManagerInternal;
    .restart local v18    # "userProps":Landroid/content/pm/UserProperties;
    .restart local v20    # "isMediaSharedWithParent":Z
    :cond_7
    move-object/from16 v23, v3

    move/from16 v24, v4

    .line 239
    .end local v3    # "cpi":Landroid/content/pm/ProviderInfo;
    .end local v4    # "providerRunning":Z
    .restart local v23    # "cpi":Landroid/content/pm/ProviderInfo;
    .restart local v24    # "providerRunning":Z
    :cond_8
    :goto_4
    if-nez v7, :cond_e

    if-eqz v13, :cond_e

    .line 240
    iget-object v3, v1, Lcom/android/server/am/ContentProviderHelper;->mProviderMap:Lcom/android/server/am/ProviderMap;

    const/4 v4, 0x0

    invoke-virtual {v3, v15, v4}, Lcom/android/server/am/ProviderMap;->getProviderByName(Ljava/lang/String;I)Lcom/android/server/am/ContentProviderRecord;

    move-result-object v3
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 241
    .end local v7    # "cpr":Lcom/android/server/am/ContentProviderRecord;
    .local v3, "cpr":Lcom/android/server/am/ContentProviderRecord;
    if-eqz v3, :cond_d

    .line 242
    :try_start_b
    iget-object v7, v3, Lcom/android/server/am/ContentProviderRecord;->info:Landroid/content/pm/ProviderInfo;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_8

    .line 244
    .end local v23    # "cpi":Landroid/content/pm/ProviderInfo;
    .local v7, "cpi":Landroid/content/pm/ProviderInfo;
    :try_start_c
    iget-object v4, v1, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_7

    move-object/from16 v17, v3

    .end local v3    # "cpr":Lcom/android/server/am/ContentProviderRecord;
    .local v17, "cpr":Lcom/android/server/am/ContentProviderRecord;
    :try_start_d
    iget-object v3, v7, Landroid/content/pm/ProviderInfo;->processName:Ljava/lang/String;

    move-wide/from16 v25, v5

    .end local v5    # "startTimeNs":J
    .local v25, "startTimeNs":J
    iget-object v5, v7, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v7, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    move-wide/from16 v27, v8

    .end local v8    # "startTime":J
    .local v27, "startTime":J
    iget v8, v7, Landroid/content/pm/ProviderInfo;->flags:I

    invoke-virtual {v4, v3, v5, v6, v8}, Lcom/android/server/am/ActivityManagerService;->isSingleton(Ljava/lang/String;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_a

    iget-object v3, v1, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 247
    if-nez v2, :cond_9

    move/from16 v4, p4

    goto :goto_5

    :cond_9
    iget v4, v2, Lcom/android/server/am/ProcessRecord;->uid:I

    :goto_5
    iget-object v5, v7, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 246
    invoke-virtual {v3, v4, v5}, Lcom/android/server/am/ActivityManagerService;->isValidSingletonCall(II)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 248
    const/4 v3, 0x0

    .line 249
    .end local p8    # "userId":I
    .local v3, "userId":I
    const/4 v0, 0x0

    move v6, v0

    move v5, v3

    move-object v3, v7

    move-object/from16 v13, v17

    goto/16 :goto_6

    .line 667
    .end local v0    # "checkCrossUser":Z
    .end local v2    # "r":Lcom/android/server/am/ProcessRecord;
    .end local v3    # "userId":I
    .end local v11    # "umInternal":Lcom/android/server/pm/UserManagerInternal;
    .end local v18    # "userProps":Landroid/content/pm/UserProperties;
    .end local v20    # "isMediaSharedWithParent":Z
    .end local v25    # "startTimeNs":J
    .end local v27    # "startTime":J
    .restart local p8    # "userId":I
    :catchall_6
    move-exception v0

    move/from16 v11, p4

    move-object v3, v7

    move-object/from16 v21, v10

    move/from16 v22, v12

    move v6, v13

    move-object v9, v14

    move-object v14, v15

    move-object/from16 v2, v17

    move/from16 v4, v24

    goto/16 :goto_3d

    .line 250
    .restart local v0    # "checkCrossUser":Z
    .restart local v2    # "r":Lcom/android/server/am/ProcessRecord;
    .restart local v11    # "umInternal":Lcom/android/server/pm/UserManagerInternal;
    .restart local v18    # "userProps":Landroid/content/pm/UserProperties;
    .restart local v20    # "isMediaSharedWithParent":Z
    .restart local v25    # "startTimeNs":J
    .restart local v27    # "startTime":J
    :cond_a
    invoke-direct {v1, v15}, Lcom/android/server/am/ContentProviderHelper;->isAuthorityRedirectedForCloneProfileCached(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 251
    if-eqz v20, :cond_b

    .line 252
    invoke-virtual {v11, v13}, Lcom/android/server/pm/UserManagerInternal;->getProfileParentId(I)I

    move-result v3
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_6

    .line 253
    .end local p8    # "userId":I
    .restart local v3    # "userId":I
    const/4 v0, 0x0

    move v6, v0

    move v5, v3

    move-object v3, v7

    move-object/from16 v13, v17

    goto/16 :goto_6

    .line 251
    .end local v3    # "userId":I
    .restart local p8    # "userId":I
    :cond_b
    move v6, v0

    move-object v3, v7

    move v5, v13

    move-object/from16 v13, v17

    goto/16 :goto_6

    .line 256
    :cond_c
    const/4 v3, 0x0

    .line 257
    .end local v17    # "cpr":Lcom/android/server/am/ContentProviderRecord;
    .local v3, "cpr":Lcom/android/server/am/ContentProviderRecord;
    const/4 v4, 0x0

    move v6, v0

    move v5, v13

    move-object v13, v3

    move-object v3, v4

    .end local v7    # "cpi":Landroid/content/pm/ProviderInfo;
    .local v4, "cpi":Landroid/content/pm/ProviderInfo;
    goto/16 :goto_6

    .line 667
    .end local v0    # "checkCrossUser":Z
    .end local v2    # "r":Lcom/android/server/am/ProcessRecord;
    .end local v4    # "cpi":Landroid/content/pm/ProviderInfo;
    .end local v11    # "umInternal":Lcom/android/server/pm/UserManagerInternal;
    .end local v18    # "userProps":Landroid/content/pm/UserProperties;
    .end local v20    # "isMediaSharedWithParent":Z
    .end local v25    # "startTimeNs":J
    .end local v27    # "startTime":J
    .restart local v7    # "cpi":Landroid/content/pm/ProviderInfo;
    :catchall_7
    move-exception v0

    move-object/from16 v17, v3

    move/from16 v11, p4

    move-object v3, v7

    move-object/from16 v21, v10

    move/from16 v22, v12

    move v6, v13

    move-object v9, v14

    move-object v14, v15

    move-object/from16 v2, v17

    move/from16 v4, v24

    .end local v3    # "cpr":Lcom/android/server/am/ContentProviderRecord;
    .restart local v17    # "cpr":Lcom/android/server/am/ContentProviderRecord;
    goto/16 :goto_3d

    .end local v7    # "cpi":Landroid/content/pm/ProviderInfo;
    .end local v17    # "cpr":Lcom/android/server/am/ContentProviderRecord;
    .restart local v3    # "cpr":Lcom/android/server/am/ContentProviderRecord;
    .restart local v23    # "cpi":Landroid/content/pm/ProviderInfo;
    :catchall_8
    move-exception v0

    move-object/from16 v17, v3

    move/from16 v11, p4

    move-object/from16 v21, v10

    move/from16 v22, v12

    move v6, v13

    move-object v9, v14

    move-object v14, v15

    move-object/from16 v2, v17

    move-object/from16 v3, v23

    move/from16 v4, v24

    .end local v3    # "cpr":Lcom/android/server/am/ContentProviderRecord;
    .restart local v17    # "cpr":Lcom/android/server/am/ContentProviderRecord;
    goto/16 :goto_3d

    .line 241
    .end local v17    # "cpr":Lcom/android/server/am/ContentProviderRecord;
    .restart local v0    # "checkCrossUser":Z
    .restart local v2    # "r":Lcom/android/server/am/ProcessRecord;
    .restart local v3    # "cpr":Lcom/android/server/am/ContentProviderRecord;
    .restart local v5    # "startTimeNs":J
    .restart local v8    # "startTime":J
    .restart local v11    # "umInternal":Lcom/android/server/pm/UserManagerInternal;
    .restart local v18    # "userProps":Landroid/content/pm/UserProperties;
    .restart local v20    # "isMediaSharedWithParent":Z
    :cond_d
    move-object/from16 v17, v3

    move-wide/from16 v25, v5

    move-wide/from16 v27, v8

    .end local v3    # "cpr":Lcom/android/server/am/ContentProviderRecord;
    .end local v5    # "startTimeNs":J
    .end local v8    # "startTime":J
    .restart local v17    # "cpr":Lcom/android/server/am/ContentProviderRecord;
    .restart local v25    # "startTimeNs":J
    .restart local v27    # "startTime":J
    move v6, v0

    move v5, v13

    move-object/from16 v13, v17

    move-object/from16 v3, v23

    goto :goto_6

    .line 239
    .end local v17    # "cpr":Lcom/android/server/am/ContentProviderRecord;
    .end local v25    # "startTimeNs":J
    .end local v27    # "startTime":J
    .restart local v5    # "startTimeNs":J
    .local v7, "cpr":Lcom/android/server/am/ContentProviderRecord;
    .restart local v8    # "startTime":J
    :cond_e
    move-wide/from16 v25, v5

    move-wide/from16 v27, v8

    .line 262
    .end local v5    # "startTimeNs":J
    .end local v8    # "startTime":J
    .restart local v25    # "startTimeNs":J
    .restart local v27    # "startTime":J
    if-nez v13, :cond_f

    .line 263
    :try_start_e
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v3

    .line 264
    .local v3, "callingUserId":I
    sget-object v4, Lcom/nothing/server/INtExtServiceFactory$ExtType;->NT_DUAL_APPS_SERVICE:Lcom/nothing/server/INtExtServiceFactory$ExtType;

    invoke-static {v4}, Lcom/nothing/server/NtExtServiceFactory;->getOrCreate(Lcom/nothing/server/INtExtServiceFactory$ExtType;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/nothing/server/ext/INtDualAppsService;

    .line 265
    invoke-interface {v4, v15, v3}, Lcom/nothing/server/ext/INtDualAppsService;->isAuthorityRedirectedForDualAppsProfile(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 266
    const-string v4, "ContentProviderHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Skip check cross user for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    .line 267
    const/4 v0, 0x0

    move v6, v0

    move v5, v13

    move-object/from16 v3, v23

    move-object v13, v7

    goto :goto_6

    .line 272
    .end local v3    # "callingUserId":I
    :cond_f
    move v6, v0

    move v5, v13

    move-object/from16 v3, v23

    move-object v13, v7

    .end local v0    # "checkCrossUser":Z
    .end local v7    # "cpr":Lcom/android/server/am/ContentProviderRecord;
    .end local v23    # "cpi":Landroid/content/pm/ProviderInfo;
    .end local p8    # "userId":I
    .local v3, "cpi":Landroid/content/pm/ProviderInfo;
    .local v5, "userId":I
    .local v6, "checkCrossUser":Z
    .local v13, "cpr":Lcom/android/server/am/ContentProviderRecord;
    :goto_6
    const/4 v0, 0x0

    .line 273
    .local v0, "dyingProc":Lcom/android/server/am/ProcessRecord;
    if-eqz v13, :cond_12

    :try_start_f
    iget-object v4, v13, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    if-eqz v4, :cond_12

    .line 274
    iget-object v4, v13, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v4}, Lcom/android/server/am/ProcessRecord;->isKilled()Z

    move-result v4
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_a

    if-nez v4, :cond_10

    const/4 v4, 0x1

    goto :goto_7

    :cond_10
    const/4 v4, 0x0

    .line 281
    .end local v24    # "providerRunning":Z
    .local v4, "providerRunning":Z
    :goto_7
    :try_start_10
    iget-object v7, v13, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v7}, Lcom/android/server/am/ProcessRecord;->isKilled()Z

    move-result v7

    if-eqz v7, :cond_11

    iget-object v7, v13, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v7}, Lcom/android/server/am/ProcessRecord;->isKilledByAm()Z

    move-result v7

    if-eqz v7, :cond_11

    .line 282
    const-string v7, "ContentProviderHelper"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, v13, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v9}, Lcom/android/server/am/ProcessRecord;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " was killed by AM but isn\'t really dead"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    iget-object v7, v13, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_9

    move-object v0, v7

    move-object/from16 v17, v0

    move/from16 v24, v4

    goto :goto_8

    .line 667
    .end local v0    # "dyingProc":Lcom/android/server/am/ProcessRecord;
    .end local v2    # "r":Lcom/android/server/am/ProcessRecord;
    .end local v6    # "checkCrossUser":Z
    .end local v11    # "umInternal":Lcom/android/server/pm/UserManagerInternal;
    .end local v18    # "userProps":Landroid/content/pm/UserProperties;
    .end local v20    # "isMediaSharedWithParent":Z
    .end local v25    # "startTimeNs":J
    .end local v27    # "startTime":J
    :catchall_9
    move-exception v0

    move/from16 v11, p4

    move v6, v5

    move-object/from16 v21, v10

    move/from16 v22, v12

    move-object v2, v13

    move-object v9, v14

    move-object v14, v15

    goto/16 :goto_3d

    .line 288
    .restart local v0    # "dyingProc":Lcom/android/server/am/ProcessRecord;
    .restart local v2    # "r":Lcom/android/server/am/ProcessRecord;
    .restart local v6    # "checkCrossUser":Z
    .restart local v11    # "umInternal":Lcom/android/server/pm/UserManagerInternal;
    .restart local v18    # "userProps":Landroid/content/pm/UserProperties;
    .restart local v20    # "isMediaSharedWithParent":Z
    .restart local v25    # "startTimeNs":J
    .restart local v27    # "startTime":J
    :cond_11
    move-object/from16 v17, v0

    move/from16 v24, v4

    goto :goto_8

    .line 667
    .end local v0    # "dyingProc":Lcom/android/server/am/ProcessRecord;
    .end local v2    # "r":Lcom/android/server/am/ProcessRecord;
    .end local v4    # "providerRunning":Z
    .end local v6    # "checkCrossUser":Z
    .end local v11    # "umInternal":Lcom/android/server/pm/UserManagerInternal;
    .end local v18    # "userProps":Landroid/content/pm/UserProperties;
    .end local v20    # "isMediaSharedWithParent":Z
    .end local v25    # "startTimeNs":J
    .end local v27    # "startTime":J
    .restart local v24    # "providerRunning":Z
    :catchall_a
    move-exception v0

    move/from16 v11, p4

    move v6, v5

    move-object/from16 v21, v10

    move/from16 v22, v12

    move-object v2, v13

    move-object v9, v14

    move-object v14, v15

    move/from16 v4, v24

    goto/16 :goto_3d

    .line 288
    .restart local v0    # "dyingProc":Lcom/android/server/am/ProcessRecord;
    .restart local v2    # "r":Lcom/android/server/am/ProcessRecord;
    .restart local v6    # "checkCrossUser":Z
    .restart local v11    # "umInternal":Lcom/android/server/pm/UserManagerInternal;
    .restart local v18    # "userProps":Landroid/content/pm/UserProperties;
    .restart local v20    # "isMediaSharedWithParent":Z
    .restart local v25    # "startTimeNs":J
    .restart local v27    # "startTime":J
    :cond_12
    move-object/from16 v17, v0

    .end local v0    # "dyingProc":Lcom/android/server/am/ProcessRecord;
    .local v17, "dyingProc":Lcom/android/server/am/ProcessRecord;
    :goto_8
    if-eqz v2, :cond_13

    .line 289
    :try_start_11
    iget-object v0, v2, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v0
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_a

    :goto_9
    move v7, v0

    goto :goto_a

    :cond_13
    const/4 v0, -0x1

    goto :goto_9

    :goto_a
    move/from16 v22, v7

    .line 291
    .local v22, "callingProcessState":I
    const/4 v4, 0x7

    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    if-eqz v24, :cond_1b

    .line 292
    :try_start_12
    iget-object v0, v13, Lcom/android/server/am/ContentProviderRecord;->info:Landroid/content/pm/ProviderInfo;
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_1d

    move-object v3, v0

    .line 295
    if-eqz v2, :cond_14

    :try_start_13
    invoke-virtual {v13, v2}, Lcom/android/server/am/ContentProviderRecord;->canRunHere(Lcom/android/server/am/ProcessRecord;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 296
    iget-object v0, v13, Lcom/android/server/am/ContentProviderRecord;->name:Landroid/content/ComponentName;

    .line 297
    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v7
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_f

    .line 296
    move/from16 v4, p4

    move-object/from16 v21, v10

    move-wide/from16 v29, v25

    const/4 v14, 0x1

    move-object v10, v9

    move-wide/from16 v8, v27

    .end local v25    # "startTimeNs":J
    .end local v27    # "startTime":J
    .restart local v8    # "startTime":J
    .local v29, "startTimeNs":J
    :try_start_14
    invoke-direct/range {v1 .. v9}, Lcom/android/server/am/ContentProviderHelper;->checkAssociationAndPermissionLocked(Lcom/android/server/am/ProcessRecord;Landroid/content/pm/ProviderInfo;IIZLjava/lang/String;J)V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_e

    move-object v1, v3

    move/from16 v23, v6

    .line 303
    .end local v3    # "cpi":Landroid/content/pm/ProviderInfo;
    .end local v6    # "checkCrossUser":Z
    .end local v8    # "startTime":J
    .local v1, "cpi":Landroid/content/pm/ProviderInfo;
    .local v23, "checkCrossUser":Z
    .restart local v27    # "startTime":J
    :try_start_15
    invoke-virtual {v13, v10, v14}, Lcom/android/server/am/ContentProviderRecord;->newHolder(Lcom/android/server/am/ContentProviderConnection;Z)Landroid/app/ContentProviderHolder;

    move-result-object v0

    move-object v14, v0

    .line 305
    .local v14, "holder":Landroid/app/ContentProviderHolder;
    iput-object v10, v14, Landroid/app/ContentProviderHolder;->provider:Landroid/content/IContentProvider;

    .line 306
    iget v0, v2, Lcom/android/server/am/ProcessRecord;->uid:I
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_d

    move v3, v5

    .end local v5    # "userId":I
    .local v3, "userId":I
    :try_start_16
    iget-object v5, v1, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_c

    const/4 v9, 0x0

    move-object v7, v11

    .end local v11    # "umInternal":Lcom/android/server/pm/UserManagerInternal;
    .local v7, "umInternal":Lcom/android/server/pm/UserManagerInternal;
    const-wide/16 v10, 0x0

    move-object v4, v1

    move v1, v0

    .end local v1    # "cpi":Landroid/content/pm/ProviderInfo;
    .local v4, "cpi":Landroid/content/pm/ProviderInfo;
    const/16 v0, 0x1dd

    move v6, v3

    .end local v3    # "userId":I
    .local v6, "userId":I
    const/4 v3, 0x1

    move-object v8, v4

    .end local v4    # "cpi":Landroid/content/pm/ProviderInfo;
    .local v8, "cpi":Landroid/content/pm/ProviderInfo;
    const/4 v4, 0x1

    move-object/from16 v19, v8

    .end local v8    # "cpi":Landroid/content/pm/ProviderInfo;
    .local v19, "cpi":Landroid/content/pm/ProviderInfo;
    move/from16 v8, v22

    move-object/from16 v25, v7

    move-object/from16 p8, v14

    move-object/from16 v26, v19

    move/from16 v7, v22

    move-object/from16 v22, v2

    move v14, v6

    move/from16 v2, p4

    move-object/from16 v6, p5

    .end local v2    # "r":Lcom/android/server/am/ProcessRecord;
    .end local v6    # "userId":I
    .end local v19    # "cpi":Landroid/content/pm/ProviderInfo;
    .local v7, "callingProcessState":I
    .local v14, "userId":I
    .local v22, "r":Lcom/android/server/am/ProcessRecord;
    .local v25, "umInternal":Lcom/android/server/pm/UserManagerInternal;
    .local v26, "cpi":Landroid/content/pm/ProviderInfo;
    .local p8, "holder":Landroid/app/ContentProviderHolder;
    :try_start_17
    invoke-static/range {v0 .. v11}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIIILjava/lang/String;Ljava/lang/String;IIZJ)V

    move/from16 v31, v7

    .line 314
    .end local v7    # "callingProcessState":I
    .local v31, "callingProcessState":I
    monitor-exit v21
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_b

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-object p8

    .line 667
    .end local v17    # "dyingProc":Lcom/android/server/am/ProcessRecord;
    .end local v18    # "userProps":Landroid/content/pm/UserProperties;
    .end local v20    # "isMediaSharedWithParent":Z
    .end local v22    # "r":Lcom/android/server/am/ProcessRecord;
    .end local v23    # "checkCrossUser":Z
    .end local v25    # "umInternal":Lcom/android/server/pm/UserManagerInternal;
    .end local v27    # "startTime":J
    .end local v29    # "startTimeNs":J
    .end local v31    # "callingProcessState":I
    .end local p8    # "holder":Landroid/app/ContentProviderHolder;
    :catchall_b
    move-exception v0

    move-object/from16 v1, p0

    move-object/from16 v9, p1

    move/from16 v11, p4

    move/from16 v22, v12

    move-object v2, v13

    move v6, v14

    move-object v14, v15

    move/from16 v4, v24

    move-object/from16 v3, v26

    goto/16 :goto_3d

    .end local v14    # "userId":I
    .end local v26    # "cpi":Landroid/content/pm/ProviderInfo;
    .restart local v1    # "cpi":Landroid/content/pm/ProviderInfo;
    .restart local v3    # "userId":I
    :catchall_c
    move-exception v0

    move-object/from16 v26, v1

    move v14, v3

    move-object/from16 v1, p0

    move-object/from16 v9, p1

    move/from16 v11, p4

    move/from16 v22, v12

    move-object v2, v13

    move v6, v14

    move-object v14, v15

    move/from16 v4, v24

    move-object/from16 v3, v26

    .end local v1    # "cpi":Landroid/content/pm/ProviderInfo;
    .end local v3    # "userId":I
    .restart local v14    # "userId":I
    .restart local v26    # "cpi":Landroid/content/pm/ProviderInfo;
    goto/16 :goto_3d

    .end local v14    # "userId":I
    .end local v26    # "cpi":Landroid/content/pm/ProviderInfo;
    .restart local v1    # "cpi":Landroid/content/pm/ProviderInfo;
    .restart local v5    # "userId":I
    :catchall_d
    move-exception v0

    move-object/from16 v26, v1

    move v14, v5

    move-object/from16 v1, p0

    move-object/from16 v9, p1

    move/from16 v11, p4

    move/from16 v22, v12

    move-object v2, v13

    move v6, v14

    move-object v14, v15

    move/from16 v4, v24

    move-object/from16 v3, v26

    .end local v1    # "cpi":Landroid/content/pm/ProviderInfo;
    .end local v5    # "userId":I
    .restart local v14    # "userId":I
    .restart local v26    # "cpi":Landroid/content/pm/ProviderInfo;
    goto/16 :goto_3d

    .end local v14    # "userId":I
    .end local v26    # "cpi":Landroid/content/pm/ProviderInfo;
    .local v3, "cpi":Landroid/content/pm/ProviderInfo;
    .restart local v5    # "userId":I
    :catchall_e
    move-exception v0

    move-object/from16 v26, v3

    move v14, v5

    :goto_b
    move-object/from16 v1, p0

    move-object/from16 v9, p1

    move/from16 v11, p4

    move/from16 v22, v12

    move-object v2, v13

    move v6, v14

    move-object v14, v15

    move/from16 v4, v24

    .end local v3    # "cpi":Landroid/content/pm/ProviderInfo;
    .end local v5    # "userId":I
    .restart local v14    # "userId":I
    .restart local v26    # "cpi":Landroid/content/pm/ProviderInfo;
    goto/16 :goto_3d

    .end local v14    # "userId":I
    .end local v26    # "cpi":Landroid/content/pm/ProviderInfo;
    .restart local v3    # "cpi":Landroid/content/pm/ProviderInfo;
    .restart local v5    # "userId":I
    :catchall_f
    move-exception v0

    move-object/from16 v26, v3

    move v14, v5

    move-object/from16 v21, v10

    goto :goto_b

    .line 295
    .restart local v2    # "r":Lcom/android/server/am/ProcessRecord;
    .local v6, "checkCrossUser":Z
    .restart local v11    # "umInternal":Lcom/android/server/pm/UserManagerInternal;
    .restart local v17    # "dyingProc":Lcom/android/server/am/ProcessRecord;
    .restart local v18    # "userProps":Landroid/content/pm/UserProperties;
    .restart local v20    # "isMediaSharedWithParent":Z
    .local v22, "callingProcessState":I
    .local v25, "startTimeNs":J
    .restart local v27    # "startTime":J
    :cond_14
    move v14, v5

    move/from16 v23, v6

    move-object/from16 v21, v10

    move/from16 v31, v22

    move-wide/from16 v29, v25

    move-object/from16 v22, v2

    move-object/from16 v26, v3

    move-object v10, v9

    move-object/from16 v25, v11

    const/4 v11, 0x1

    .line 320
    .end local v2    # "r":Lcom/android/server/am/ProcessRecord;
    .end local v3    # "cpi":Landroid/content/pm/ProviderInfo;
    .end local v5    # "userId":I
    .end local v6    # "checkCrossUser":Z
    .end local v11    # "umInternal":Lcom/android/server/pm/UserManagerInternal;
    .restart local v14    # "userId":I
    .local v22, "r":Lcom/android/server/am/ProcessRecord;
    .restart local v23    # "checkCrossUser":Z
    .local v25, "umInternal":Lcom/android/server/pm/UserManagerInternal;
    .restart local v26    # "cpi":Landroid/content/pm/ProviderInfo;
    .restart local v29    # "startTimeNs":J
    .restart local v31    # "callingProcessState":I
    :try_start_18
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    .line 321
    invoke-interface {v0, v15, v7, v8, v14}, Landroid/content/pm/IPackageManager;->resolveContentProvider(Ljava/lang/String;JI)Landroid/content/pm/ProviderInfo;

    move-result-object v0
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_18} :catch_0
    .catchall {:try_start_18 .. :try_end_18} :catchall_b

    if-nez v0, :cond_15

    .line 322
    :try_start_19
    monitor-exit v21
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_b

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-object v10

    .line 325
    :cond_15
    goto :goto_c

    .line 324
    :catch_0
    move-exception v0

    .line 327
    :goto_c
    :try_start_1a
    iget-object v0, v13, Lcom/android/server/am/ContentProviderRecord;->name:Landroid/content/ComponentName;

    .line 328
    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v0
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_1c

    .line 327
    move-object/from16 v1, p0

    move-object v7, v0

    move v5, v14

    move-object/from16 v2, v22

    move/from16 v6, v23

    move-object/from16 v3, v26

    move-wide/from16 v8, v27

    move v14, v4

    move/from16 v4, p4

    .end local v14    # "userId":I
    .end local v22    # "r":Lcom/android/server/am/ProcessRecord;
    .end local v23    # "checkCrossUser":Z
    .end local v26    # "cpi":Landroid/content/pm/ProviderInfo;
    .end local v27    # "startTime":J
    .restart local v2    # "r":Lcom/android/server/am/ProcessRecord;
    .restart local v3    # "cpi":Landroid/content/pm/ProviderInfo;
    .restart local v5    # "userId":I
    .restart local v6    # "checkCrossUser":Z
    .local v8, "startTime":J
    :try_start_1b
    invoke-direct/range {v1 .. v9}, Lcom/android/server/am/ContentProviderHelper;->checkAssociationAndPermissionLocked(Lcom/android/server/am/ProcessRecord;Landroid/content/pm/ProviderInfo;IIZLjava/lang/String;J)V

    .line 330
    .end local v6    # "checkCrossUser":Z
    .restart local v23    # "checkCrossUser":Z
    iget-object v0, v13, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v0

    move/from16 v22, v0

    .line 332
    .local v22, "providerProcessState":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_1b

    move-wide/from16 v26, v6

    .line 334
    .local v26, "origId":J
    :try_start_1c
    const-string/jumbo v0, "getContentProviderImpl: incProviderCountLocked"

    invoke-direct {v1, v8, v9, v0}, Lcom/android/server/am/ContentProviderHelper;->checkTime(JLjava/lang/String;)V

    .line 337
    iget-object v0, v1, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_1a

    move-object v6, v10

    move v4, v11

    move-wide v10, v8

    .end local v8    # "startTime":J
    .local v10, "startTime":J
    const/4 v9, 0x1

    move-object/from16 v4, p3

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v35, v3

    move/from16 v33, v5

    move-object v3, v13

    move/from16 v5, p4

    move v13, v12

    move-object v12, v0

    .end local v5    # "userId":I
    .end local v12    # "expectedUserId":I
    .local v3, "cpr":Lcom/android/server/am/ContentProviderRecord;
    .local v13, "expectedUserId":I
    .local v33, "userId":I
    .local v35, "cpi":Landroid/content/pm/ProviderInfo;
    :try_start_1d
    invoke-direct/range {v1 .. v13}, Lcom/android/server/am/ContentProviderHelper;->incProviderCountLocked(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ContentProviderRecord;Landroid/os/IBinder;ILjava/lang/String;Ljava/lang/String;ZZJLcom/android/server/am/ProcessList;I)Lcom/android/server/am/ContentProviderConnection;

    move-result-object v0
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_19

    move-object v12, v2

    move-wide v8, v10

    .end local v2    # "r":Lcom/android/server/am/ProcessRecord;
    .end local v10    # "startTime":J
    .restart local v8    # "startTime":J
    .local v12, "r":Lcom/android/server/am/ProcessRecord;
    move-object v2, v0

    .line 341
    .end local v16    # "conn":Lcom/android/server/am/ContentProviderConnection;
    .local v2, "conn":Lcom/android/server/am/ContentProviderConnection;
    :try_start_1e
    const-string/jumbo v0, "getContentProviderImpl: before updateOomAdj"

    invoke-direct {v1, v8, v9, v0}, Lcom/android/server/am/ContentProviderHelper;->checkTime(JLjava/lang/String;)V

    .line 342
    iget-object v0, v3, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessStateRecord;->getVerifiedAdj()I

    move-result v0

    .line 343
    .local v0, "verifiedAdj":I
    iget-object v4, v1, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mOomAdjuster:Lcom/android/server/am/OomAdjuster;

    iget-object v5, v3, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    .line 344
    invoke-virtual {v4, v12, v5}, Lcom/android/server/am/OomAdjuster;->evaluateProviderConnectionAdd(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ProcessRecord;)Z

    move-result v4
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_18

    if-eqz v4, :cond_16

    .line 345
    :try_start_1f
    iget-object v4, v1, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mProcessStateController:Lcom/android/server/am/ProcessStateController;

    iget-object v5, v3, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v4, v5, v14}, Lcom/android/server/am/ProcessStateController;->runUpdate(Lcom/android/server/am/ProcessRecord;I)Z

    move-result v7

    goto :goto_d

    .line 395
    .end local v0    # "verifiedAdj":I
    :catchall_10
    move-exception v0

    move-object/from16 v10, p5

    move-object v14, v1

    move-object/from16 v16, v2

    move-object/from16 v28, v12

    move/from16 v4, v24

    move/from16 v11, v31

    move-object/from16 v31, v3

    move/from16 v52, v22

    move/from16 v22, v13

    move-wide v12, v8

    move/from16 v8, v52

    goto/16 :goto_10

    .line 347
    .restart local v0    # "verifiedAdj":I
    :cond_16
    const/4 v7, 0x1

    :goto_d
    nop

    .line 353
    .local v7, "success":Z
    if-eqz v7, :cond_17

    iget-object v4, v3, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    iget-object v4, v4, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v4}, Lcom/android/server/am/ProcessStateRecord;->getSetAdj()I

    move-result v4

    if-eq v0, v4, :cond_17

    iget-object v4, v3, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    .line 354
    invoke-direct {v1, v4}, Lcom/android/server/am/ContentProviderHelper;->isProcessAliveLocked(Lcom/android/server/am/ProcessRecord;)Z

    move-result v4
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_10

    if-nez v4, :cond_17

    .line 355
    const/4 v7, 0x0

    move v10, v7

    goto :goto_e

    .line 357
    :cond_17
    move v10, v7

    .end local v7    # "success":Z
    .local v10, "success":Z
    :goto_e
    :try_start_20
    iget-object v4, v3, Lcom/android/server/am/ContentProviderRecord;->info:Landroid/content/pm/ProviderInfo;

    iget-object v4, v4, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    invoke-direct {v1, v12, v4, v15}, Lcom/android/server/am/ContentProviderHelper;->maybeUpdateProviderUsageStatsLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    const-string/jumbo v4, "getContentProviderImpl: after updateOomAdj"

    invoke-direct {v1, v8, v9, v4}, Lcom/android/server/am/ContentProviderHelper;->checkTime(JLjava/lang/String;)V

    .line 359
    sget-boolean v4, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PROVIDER:Z
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_18

    if-eqz v4, :cond_18

    .line 360
    :try_start_21
    const-string v4, "ContentProviderHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Adjust success: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_10

    .line 366
    :cond_18
    if-nez v10, :cond_1a

    .line 371
    :try_start_22
    const-string v4, "ContentProviderHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Existing provider "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v3, Lcom/android/server/am/ContentProviderRecord;->name:Landroid/content/ComponentName;

    invoke-virtual {v6}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " is crashing; detaching "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v4, p3

    move/from16 v5, p7

    invoke-direct/range {v1 .. v7}, Lcom/android/server/am/ContentProviderHelper;->decProviderCountLocked(Lcom/android/server/am/ContentProviderConnection;Lcom/android/server/am/ContentProviderRecord;Landroid/os/IBinder;ZZZ)Z

    move-result v6
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_13

    move-object/from16 v16, v2

    move-object v1, v3

    .line 375
    .end local v2    # "conn":Lcom/android/server/am/ContentProviderConnection;
    .end local v3    # "cpr":Lcom/android/server/am/ContentProviderRecord;
    .local v1, "cpr":Lcom/android/server/am/ContentProviderRecord;
    .local v6, "lastRef":Z
    .restart local v16    # "conn":Lcom/android/server/am/ContentProviderConnection;
    if-nez v6, :cond_19

    .line 378
    nop

    .line 395
    :try_start_23
    invoke-static/range {v26 .. v27}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v21
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_11

    .line 378
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    const/16 v34, 0x0

    return-object v34

    .line 667
    .end local v0    # "verifiedAdj":I
    .end local v6    # "lastRef":Z
    .end local v8    # "startTime":J
    .end local v10    # "success":Z
    .end local v12    # "r":Lcom/android/server/am/ProcessRecord;
    .end local v17    # "dyingProc":Lcom/android/server/am/ProcessRecord;
    .end local v18    # "userProps":Landroid/content/pm/UserProperties;
    .end local v20    # "isMediaSharedWithParent":Z
    .end local v22    # "providerProcessState":I
    .end local v23    # "checkCrossUser":Z
    .end local v25    # "umInternal":Lcom/android/server/pm/UserManagerInternal;
    .end local v26    # "origId":J
    .end local v29    # "startTimeNs":J
    .end local v31    # "callingProcessState":I
    :catchall_11
    move-exception v0

    move-object/from16 v9, p1

    move/from16 v11, p4

    move-object v2, v1

    move/from16 v22, v13

    move-object v14, v15

    move/from16 v4, v24

    move/from16 v6, v33

    move-object/from16 v3, v35

    move-object/from16 v1, p0

    goto/16 :goto_3d

    .line 381
    .restart local v0    # "verifiedAdj":I
    .restart local v6    # "lastRef":Z
    .restart local v8    # "startTime":J
    .restart local v10    # "success":Z
    .restart local v12    # "r":Lcom/android/server/am/ProcessRecord;
    .restart local v17    # "dyingProc":Lcom/android/server/am/ProcessRecord;
    .restart local v18    # "userProps":Landroid/content/pm/UserProperties;
    .restart local v20    # "isMediaSharedWithParent":Z
    .restart local v22    # "providerProcessState":I
    .restart local v23    # "checkCrossUser":Z
    .restart local v25    # "umInternal":Lcom/android/server/pm/UserManagerInternal;
    .restart local v26    # "origId":J
    .restart local v29    # "startTimeNs":J
    .restart local v31    # "callingProcessState":I
    :cond_19
    const/16 v34, 0x0

    const/4 v2, 0x0

    .line 382
    .end local v24    # "providerRunning":Z
    .local v2, "providerRunning":Z
    const/16 v16, 0x0

    .line 383
    :try_start_24
    iget-object v3, v1, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_12

    move-object/from16 v17, v3

    .line 384
    .end local v6    # "lastRef":Z
    move-object/from16 v14, p0

    move-object/from16 v10, p5

    move v4, v2

    move-object/from16 v28, v12

    move/from16 v11, v31

    move-object/from16 v31, v1

    move/from16 v52, v22

    move/from16 v22, v13

    move-wide v12, v8

    move/from16 v8, v52

    goto/16 :goto_f

    .line 395
    .end local v0    # "verifiedAdj":I
    .end local v10    # "success":Z
    :catchall_12
    move-exception v0

    move-object/from16 v14, p0

    move-object/from16 v10, p5

    move v4, v2

    move-object/from16 v28, v12

    move/from16 v11, v31

    move-object/from16 v31, v1

    move/from16 v52, v22

    move/from16 v22, v13

    move-wide v12, v8

    move/from16 v8, v52

    goto/16 :goto_10

    .end local v1    # "cpr":Lcom/android/server/am/ContentProviderRecord;
    .end local v16    # "conn":Lcom/android/server/am/ContentProviderConnection;
    .local v2, "conn":Lcom/android/server/am/ContentProviderConnection;
    .restart local v3    # "cpr":Lcom/android/server/am/ContentProviderRecord;
    .restart local v24    # "providerRunning":Z
    :catchall_13
    move-exception v0

    move-object/from16 v16, v2

    move-object v1, v3

    move-object/from16 v14, p0

    move-object/from16 v10, p5

    move-object/from16 v28, v12

    move/from16 v4, v24

    move/from16 v11, v31

    move-object/from16 v31, v1

    move/from16 v52, v22

    move/from16 v22, v13

    move-wide v12, v8

    move/from16 v8, v52

    .end local v2    # "conn":Lcom/android/server/am/ContentProviderConnection;
    .end local v3    # "cpr":Lcom/android/server/am/ContentProviderRecord;
    .restart local v1    # "cpr":Lcom/android/server/am/ContentProviderRecord;
    .restart local v16    # "conn":Lcom/android/server/am/ContentProviderConnection;
    goto/16 :goto_10

    .line 385
    .end local v1    # "cpr":Lcom/android/server/am/ContentProviderRecord;
    .end local v16    # "conn":Lcom/android/server/am/ContentProviderConnection;
    .restart local v0    # "verifiedAdj":I
    .restart local v2    # "conn":Lcom/android/server/am/ContentProviderConnection;
    .restart local v3    # "cpr":Lcom/android/server/am/ContentProviderRecord;
    .restart local v10    # "success":Z
    :cond_1a
    move-object/from16 v16, v2

    move-object v1, v3

    const/16 v34, 0x0

    .end local v2    # "conn":Lcom/android/server/am/ContentProviderConnection;
    .end local v3    # "cpr":Lcom/android/server/am/ContentProviderRecord;
    .restart local v1    # "cpr":Lcom/android/server/am/ContentProviderRecord;
    .restart local v16    # "conn":Lcom/android/server/am/ContentProviderConnection;
    :try_start_25
    iget-object v2, v1, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    iget-object v2, v2, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    iget-object v3, v1, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    iget-object v3, v3, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v3}, Lcom/android/server/am/ProcessStateRecord;->getSetAdj()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/server/am/ProcessStateRecord;->setVerifiedAdj(I)V

    .line 386
    iget-object v2, v1, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    iget v2, v2, Lcom/android/server/am/ProcessRecord;->uid:I
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_17

    move-object/from16 v3, v35

    .end local v35    # "cpi":Landroid/content/pm/ProviderInfo;
    .local v3, "cpi":Landroid/content/pm/ProviderInfo;
    :try_start_26
    iget-object v5, v3, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_16

    move-wide v6, v8

    .end local v8    # "startTime":J
    .local v6, "startTime":J
    const/4 v9, 0x0

    move v4, v10

    .end local v10    # "success":Z
    .local v4, "success":Z
    const-wide/16 v10, 0x0

    move v8, v0

    .end local v0    # "verifiedAdj":I
    .local v8, "verifiedAdj":I
    const/16 v0, 0x1dd

    move-object/from16 v35, v3

    .end local v3    # "cpi":Landroid/content/pm/ProviderInfo;
    .restart local v35    # "cpi":Landroid/content/pm/ProviderInfo;
    const/4 v3, 0x1

    move/from16 v28, v4

    .end local v4    # "success":Z
    .local v28, "success":Z
    const/4 v4, 0x1

    move-object/from16 v14, p0

    move/from16 v34, v8

    move/from16 v8, v22

    move/from16 v37, v28

    move-object/from16 v28, v12

    move/from16 v22, v13

    move-wide v12, v6

    move/from16 v7, v31

    move-object/from16 v6, p5

    move-object/from16 v31, v1

    move v1, v2

    move/from16 v2, p4

    .end local v1    # "cpr":Lcom/android/server/am/ContentProviderRecord;
    .end local v6    # "startTime":J
    .end local v13    # "expectedUserId":I
    .local v7, "callingProcessState":I
    .local v8, "providerProcessState":I
    .local v12, "startTime":J
    .local v22, "expectedUserId":I
    .local v28, "r":Lcom/android/server/am/ProcessRecord;
    .local v31, "cpr":Lcom/android/server/am/ContentProviderRecord;
    .local v34, "verifiedAdj":I
    .local v37, "success":Z
    :try_start_27
    invoke-static/range {v0 .. v11}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIIILjava/lang/String;Ljava/lang/String;IIZJ)V
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_15

    move-object v10, v6

    move v11, v7

    .end local v7    # "callingProcessState":I
    .local v11, "callingProcessState":I
    move/from16 v4, v24

    .line 395
    .end local v24    # "providerRunning":Z
    .end local v34    # "verifiedAdj":I
    .end local v37    # "success":Z
    .local v4, "providerRunning":Z
    :goto_f
    :try_start_28
    invoke-static/range {v26 .. v27}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 396
    move-object/from16 v3, v35

    goto/16 :goto_11

    .line 667
    .end local v8    # "providerProcessState":I
    .end local v11    # "callingProcessState":I
    .end local v12    # "startTime":J
    .end local v17    # "dyingProc":Lcom/android/server/am/ProcessRecord;
    .end local v18    # "userProps":Landroid/content/pm/UserProperties;
    .end local v20    # "isMediaSharedWithParent":Z
    .end local v23    # "checkCrossUser":Z
    .end local v25    # "umInternal":Lcom/android/server/pm/UserManagerInternal;
    .end local v26    # "origId":J
    .end local v28    # "r":Lcom/android/server/am/ProcessRecord;
    .end local v29    # "startTimeNs":J
    :catchall_14
    move-exception v0

    move-object/from16 v9, p1

    move/from16 v11, p4

    move-object v1, v14

    move-object v14, v15

    move-object/from16 v2, v31

    move/from16 v6, v33

    move-object/from16 v3, v35

    goto/16 :goto_3d

    .line 395
    .end local v4    # "providerRunning":Z
    .restart local v7    # "callingProcessState":I
    .restart local v8    # "providerProcessState":I
    .restart local v12    # "startTime":J
    .restart local v17    # "dyingProc":Lcom/android/server/am/ProcessRecord;
    .restart local v18    # "userProps":Landroid/content/pm/UserProperties;
    .restart local v20    # "isMediaSharedWithParent":Z
    .restart local v23    # "checkCrossUser":Z
    .restart local v24    # "providerRunning":Z
    .restart local v25    # "umInternal":Lcom/android/server/pm/UserManagerInternal;
    .restart local v26    # "origId":J
    .restart local v28    # "r":Lcom/android/server/am/ProcessRecord;
    .restart local v29    # "startTimeNs":J
    :catchall_15
    move-exception v0

    move-object v10, v6

    move v11, v7

    move/from16 v4, v24

    .end local v7    # "callingProcessState":I
    .restart local v11    # "callingProcessState":I
    goto/16 :goto_10

    .end local v11    # "callingProcessState":I
    .end local v28    # "r":Lcom/android/server/am/ProcessRecord;
    .end local v35    # "cpi":Landroid/content/pm/ProviderInfo;
    .restart local v1    # "cpr":Lcom/android/server/am/ContentProviderRecord;
    .restart local v3    # "cpi":Landroid/content/pm/ProviderInfo;
    .local v8, "startTime":J
    .local v12, "r":Lcom/android/server/am/ProcessRecord;
    .restart local v13    # "expectedUserId":I
    .local v22, "providerProcessState":I
    .local v31, "callingProcessState":I
    :catchall_16
    move-exception v0

    move-object/from16 v14, p0

    move-object/from16 v10, p5

    move-object/from16 v35, v3

    move-object/from16 v28, v12

    move/from16 v11, v31

    move-object/from16 v31, v1

    move/from16 v52, v22

    move/from16 v22, v13

    move-wide v12, v8

    move/from16 v8, v52

    move/from16 v4, v24

    .end local v1    # "cpr":Lcom/android/server/am/ContentProviderRecord;
    .end local v3    # "cpi":Landroid/content/pm/ProviderInfo;
    .end local v13    # "expectedUserId":I
    .local v8, "providerProcessState":I
    .restart local v11    # "callingProcessState":I
    .local v12, "startTime":J
    .local v22, "expectedUserId":I
    .restart local v28    # "r":Lcom/android/server/am/ProcessRecord;
    .local v31, "cpr":Lcom/android/server/am/ContentProviderRecord;
    .restart local v35    # "cpi":Landroid/content/pm/ProviderInfo;
    goto/16 :goto_10

    .end local v11    # "callingProcessState":I
    .end local v28    # "r":Lcom/android/server/am/ProcessRecord;
    .restart local v1    # "cpr":Lcom/android/server/am/ContentProviderRecord;
    .local v8, "startTime":J
    .local v12, "r":Lcom/android/server/am/ProcessRecord;
    .restart local v13    # "expectedUserId":I
    .local v22, "providerProcessState":I
    .local v31, "callingProcessState":I
    :catchall_17
    move-exception v0

    move-object/from16 v14, p0

    move-object/from16 v10, p5

    move-object/from16 v28, v12

    move/from16 v11, v31

    move-object/from16 v31, v1

    move/from16 v52, v22

    move/from16 v22, v13

    move-wide v12, v8

    move/from16 v8, v52

    move/from16 v4, v24

    .end local v1    # "cpr":Lcom/android/server/am/ContentProviderRecord;
    .end local v13    # "expectedUserId":I
    .local v8, "providerProcessState":I
    .restart local v11    # "callingProcessState":I
    .local v12, "startTime":J
    .local v22, "expectedUserId":I
    .restart local v28    # "r":Lcom/android/server/am/ProcessRecord;
    .local v31, "cpr":Lcom/android/server/am/ContentProviderRecord;
    goto :goto_10

    .end local v11    # "callingProcessState":I
    .end local v16    # "conn":Lcom/android/server/am/ContentProviderConnection;
    .end local v28    # "r":Lcom/android/server/am/ProcessRecord;
    .restart local v2    # "conn":Lcom/android/server/am/ContentProviderConnection;
    .local v3, "cpr":Lcom/android/server/am/ContentProviderRecord;
    .local v8, "startTime":J
    .local v12, "r":Lcom/android/server/am/ProcessRecord;
    .restart local v13    # "expectedUserId":I
    .local v22, "providerProcessState":I
    .local v31, "callingProcessState":I
    :catchall_18
    move-exception v0

    move-object/from16 v10, p5

    move-object v14, v1

    move-object/from16 v16, v2

    move-object/from16 v28, v12

    move/from16 v11, v31

    move-object/from16 v31, v3

    move/from16 v52, v22

    move/from16 v22, v13

    move-wide v12, v8

    move/from16 v8, v52

    move/from16 v4, v24

    .end local v2    # "conn":Lcom/android/server/am/ContentProviderConnection;
    .end local v3    # "cpr":Lcom/android/server/am/ContentProviderRecord;
    .end local v13    # "expectedUserId":I
    .local v8, "providerProcessState":I
    .restart local v11    # "callingProcessState":I
    .local v12, "startTime":J
    .restart local v16    # "conn":Lcom/android/server/am/ContentProviderConnection;
    .local v22, "expectedUserId":I
    .restart local v28    # "r":Lcom/android/server/am/ProcessRecord;
    .local v31, "cpr":Lcom/android/server/am/ContentProviderRecord;
    goto :goto_10

    .end local v8    # "providerProcessState":I
    .end local v11    # "callingProcessState":I
    .end local v12    # "startTime":J
    .end local v28    # "r":Lcom/android/server/am/ProcessRecord;
    .local v2, "r":Lcom/android/server/am/ProcessRecord;
    .restart local v3    # "cpr":Lcom/android/server/am/ContentProviderRecord;
    .local v10, "startTime":J
    .restart local v13    # "expectedUserId":I
    .local v22, "providerProcessState":I
    .local v31, "callingProcessState":I
    :catchall_19
    move-exception v0

    move-object v14, v1

    move-object/from16 v28, v2

    move/from16 v8, v22

    move/from16 v22, v13

    move-wide v12, v10

    move/from16 v11, v31

    move-object/from16 v31, v3

    move-object v10, v6

    move/from16 v4, v24

    .end local v2    # "r":Lcom/android/server/am/ProcessRecord;
    .end local v3    # "cpr":Lcom/android/server/am/ContentProviderRecord;
    .end local v10    # "startTime":J
    .end local v13    # "expectedUserId":I
    .restart local v8    # "providerProcessState":I
    .restart local v11    # "callingProcessState":I
    .restart local v12    # "startTime":J
    .local v22, "expectedUserId":I
    .restart local v28    # "r":Lcom/android/server/am/ProcessRecord;
    .local v31, "cpr":Lcom/android/server/am/ContentProviderRecord;
    goto :goto_10

    .end local v11    # "callingProcessState":I
    .end local v28    # "r":Lcom/android/server/am/ProcessRecord;
    .end local v33    # "userId":I
    .end local v35    # "cpi":Landroid/content/pm/ProviderInfo;
    .restart local v2    # "r":Lcom/android/server/am/ProcessRecord;
    .local v3, "cpi":Landroid/content/pm/ProviderInfo;
    .restart local v5    # "userId":I
    .local v8, "startTime":J
    .local v12, "expectedUserId":I
    .local v13, "cpr":Lcom/android/server/am/ContentProviderRecord;
    .local v22, "providerProcessState":I
    .local v31, "callingProcessState":I
    :catchall_1a
    move-exception v0

    move-object/from16 v10, p5

    move-object v14, v1

    move-object/from16 v28, v2

    move-object/from16 v35, v3

    move/from16 v33, v5

    move/from16 v11, v31

    move-object/from16 v31, v13

    move/from16 v52, v22

    move/from16 v22, v12

    move-wide v12, v8

    move/from16 v8, v52

    move/from16 v4, v24

    .end local v2    # "r":Lcom/android/server/am/ProcessRecord;
    .end local v3    # "cpi":Landroid/content/pm/ProviderInfo;
    .end local v5    # "userId":I
    .end local v13    # "cpr":Lcom/android/server/am/ContentProviderRecord;
    .end local v24    # "providerRunning":Z
    .restart local v4    # "providerRunning":Z
    .local v8, "providerProcessState":I
    .restart local v11    # "callingProcessState":I
    .local v12, "startTime":J
    .local v22, "expectedUserId":I
    .restart local v28    # "r":Lcom/android/server/am/ProcessRecord;
    .local v31, "cpr":Lcom/android/server/am/ContentProviderRecord;
    .restart local v33    # "userId":I
    .restart local v35    # "cpi":Landroid/content/pm/ProviderInfo;
    :goto_10
    invoke-static/range {v26 .. v27}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 396
    nop

    .end local v4    # "providerRunning":Z
    .end local v16    # "conn":Lcom/android/server/am/ContentProviderConnection;
    .end local v22    # "expectedUserId":I
    .end local v31    # "cpr":Lcom/android/server/am/ContentProviderRecord;
    .end local v33    # "userId":I
    .end local v35    # "cpi":Landroid/content/pm/ProviderInfo;
    .end local p0    # "this":Lcom/android/server/am/ContentProviderHelper;
    .end local p1    # "caller":Landroid/app/IApplicationThread;
    .end local p2    # "name":Ljava/lang/String;
    .end local p3    # "token":Landroid/os/IBinder;
    .end local p4    # "callingUid":I
    .end local p5    # "callingPackage":Ljava/lang/String;
    .end local p6    # "callingTag":Ljava/lang/String;
    .end local p7    # "stable":Z
    throw v0
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_14

    .line 667
    .end local v8    # "providerProcessState":I
    .end local v11    # "callingProcessState":I
    .end local v17    # "dyingProc":Lcom/android/server/am/ProcessRecord;
    .end local v18    # "userProps":Landroid/content/pm/UserProperties;
    .end local v20    # "isMediaSharedWithParent":Z
    .end local v23    # "checkCrossUser":Z
    .end local v25    # "umInternal":Lcom/android/server/pm/UserManagerInternal;
    .end local v26    # "origId":J
    .end local v28    # "r":Lcom/android/server/am/ProcessRecord;
    .end local v29    # "startTimeNs":J
    .restart local v3    # "cpi":Landroid/content/pm/ProviderInfo;
    .restart local v5    # "userId":I
    .local v12, "expectedUserId":I
    .restart local v13    # "cpr":Lcom/android/server/am/ContentProviderRecord;
    .restart local v16    # "conn":Lcom/android/server/am/ContentProviderConnection;
    .restart local v24    # "providerRunning":Z
    .restart local p0    # "this":Lcom/android/server/am/ContentProviderHelper;
    .restart local p1    # "caller":Landroid/app/IApplicationThread;
    .restart local p2    # "name":Ljava/lang/String;
    .restart local p3    # "token":Landroid/os/IBinder;
    .restart local p4    # "callingUid":I
    .restart local p5    # "callingPackage":Ljava/lang/String;
    .restart local p6    # "callingTag":Ljava/lang/String;
    .restart local p7    # "stable":Z
    :catchall_1b
    move-exception v0

    move-object/from16 v10, p5

    move-object v14, v1

    move-object/from16 v35, v3

    move/from16 v33, v5

    move/from16 v22, v12

    move-object/from16 v31, v13

    move-object/from16 v9, p1

    move/from16 v11, p4

    move-object v14, v15

    move/from16 v4, v24

    move-object/from16 v2, v31

    move/from16 v6, v33

    .end local v3    # "cpi":Landroid/content/pm/ProviderInfo;
    .end local v5    # "userId":I
    .end local v12    # "expectedUserId":I
    .end local v13    # "cpr":Lcom/android/server/am/ContentProviderRecord;
    .restart local v22    # "expectedUserId":I
    .restart local v31    # "cpr":Lcom/android/server/am/ContentProviderRecord;
    .restart local v33    # "userId":I
    .restart local v35    # "cpi":Landroid/content/pm/ProviderInfo;
    goto/16 :goto_3d

    .end local v22    # "expectedUserId":I
    .end local v31    # "cpr":Lcom/android/server/am/ContentProviderRecord;
    .end local v33    # "userId":I
    .end local v35    # "cpi":Landroid/content/pm/ProviderInfo;
    .restart local v12    # "expectedUserId":I
    .restart local v13    # "cpr":Lcom/android/server/am/ContentProviderRecord;
    .restart local v14    # "userId":I
    .local v26, "cpi":Landroid/content/pm/ProviderInfo;
    :catchall_1c
    move-exception v0

    move-object/from16 v10, p5

    move/from16 v22, v12

    move-object/from16 v31, v13

    move/from16 v33, v14

    move-object/from16 v35, v26

    move-object/from16 v14, p0

    move-object/from16 v9, p1

    move/from16 v11, p4

    move-object v1, v14

    move-object v14, v15

    move/from16 v4, v24

    move-object/from16 v2, v31

    move/from16 v6, v33

    move-object/from16 v3, v35

    .end local v12    # "expectedUserId":I
    .end local v13    # "cpr":Lcom/android/server/am/ContentProviderRecord;
    .end local v14    # "userId":I
    .end local v26    # "cpi":Landroid/content/pm/ProviderInfo;
    .restart local v22    # "expectedUserId":I
    .restart local v31    # "cpr":Lcom/android/server/am/ContentProviderRecord;
    .restart local v33    # "userId":I
    .restart local v35    # "cpi":Landroid/content/pm/ProviderInfo;
    goto/16 :goto_3d

    .end local v22    # "expectedUserId":I
    .end local v31    # "cpr":Lcom/android/server/am/ContentProviderRecord;
    .end local v33    # "userId":I
    .end local v35    # "cpi":Landroid/content/pm/ProviderInfo;
    .restart local v3    # "cpi":Landroid/content/pm/ProviderInfo;
    .restart local v5    # "userId":I
    .restart local v12    # "expectedUserId":I
    .restart local v13    # "cpr":Lcom/android/server/am/ContentProviderRecord;
    :catchall_1d
    move-exception v0

    move-object v14, v1

    move/from16 v33, v5

    move-object/from16 v21, v10

    move/from16 v22, v12

    move-object/from16 v31, v13

    move-object/from16 v10, p5

    move-object/from16 v9, p1

    move/from16 v11, p4

    move-object v14, v15

    move/from16 v4, v24

    move-object/from16 v2, v31

    move/from16 v6, v33

    .end local v5    # "userId":I
    .end local v12    # "expectedUserId":I
    .end local v13    # "cpr":Lcom/android/server/am/ContentProviderRecord;
    .restart local v22    # "expectedUserId":I
    .restart local v31    # "cpr":Lcom/android/server/am/ContentProviderRecord;
    .restart local v33    # "userId":I
    goto/16 :goto_3d

    .line 291
    .end local v31    # "cpr":Lcom/android/server/am/ContentProviderRecord;
    .end local v33    # "userId":I
    .restart local v2    # "r":Lcom/android/server/am/ProcessRecord;
    .restart local v5    # "userId":I
    .local v6, "checkCrossUser":Z
    .local v11, "umInternal":Lcom/android/server/pm/UserManagerInternal;
    .restart local v12    # "expectedUserId":I
    .restart local v13    # "cpr":Lcom/android/server/am/ContentProviderRecord;
    .restart local v17    # "dyingProc":Lcom/android/server/am/ProcessRecord;
    .restart local v18    # "userProps":Landroid/content/pm/UserProperties;
    .restart local v20    # "isMediaSharedWithParent":Z
    .local v22, "callingProcessState":I
    .local v25, "startTimeNs":J
    .restart local v27    # "startTime":J
    :cond_1b
    move-object v14, v1

    move/from16 v33, v5

    move/from16 v23, v6

    move-object/from16 v21, v10

    move-object/from16 v31, v13

    move-wide/from16 v29, v25

    move-object/from16 v10, p5

    move-object/from16 v25, v11

    move/from16 v11, v22

    move/from16 v22, v12

    move-wide/from16 v12, v27

    move-object/from16 v28, v2

    .end local v2    # "r":Lcom/android/server/am/ProcessRecord;
    .end local v5    # "userId":I
    .end local v6    # "checkCrossUser":Z
    .end local v13    # "cpr":Lcom/android/server/am/ContentProviderRecord;
    .end local v27    # "startTime":J
    .local v11, "callingProcessState":I
    .local v12, "startTime":J
    .local v22, "expectedUserId":I
    .restart local v23    # "checkCrossUser":Z
    .local v25, "umInternal":Lcom/android/server/pm/UserManagerInternal;
    .restart local v28    # "r":Lcom/android/server/am/ProcessRecord;
    .restart local v29    # "startTimeNs":J
    .restart local v31    # "cpr":Lcom/android/server/am/ContentProviderRecord;
    .restart local v33    # "userId":I
    move/from16 v4, v24

    .line 399
    .end local v24    # "providerRunning":Z
    .restart local v4    # "providerRunning":Z
    :goto_11
    if-nez v4, :cond_3d

    .line 401
    :try_start_29
    const-string/jumbo v0, "getContentProviderImpl: before resolveContentProvider"

    invoke-direct {v14, v12, v13, v0}, Lcom/android/server/am/ContentProviderHelper;->checkTime(JLjava/lang/String;)V

    .line 402
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0
    :try_end_29
    .catch Landroid/os/RemoteException; {:try_start_29 .. :try_end_29} :catch_2
    .catchall {:try_start_29 .. :try_end_29} :catchall_1f

    const-wide/16 v1, 0xc00

    move/from16 v5, v33

    .end local v33    # "userId":I
    .restart local v5    # "userId":I
    :try_start_2a
    invoke-interface {v0, v15, v1, v2, v5}, Landroid/content/pm/IPackageManager;->resolveContentProvider(Ljava/lang/String;JI)Landroid/content/pm/ProviderInfo;

    move-result-object v0

    move-object v3, v0

    .line 406
    const-string/jumbo v0, "getContentProviderImpl: after resolveContentProvider"

    invoke-direct {v14, v12, v13, v0}, Lcom/android/server/am/ContentProviderHelper;->checkTime(JLjava/lang/String;)V
    :try_end_2a
    .catch Landroid/os/RemoteException; {:try_start_2a .. :try_end_2a} :catch_1
    .catchall {:try_start_2a .. :try_end_2a} :catchall_1e

    .line 408
    goto :goto_12

    .line 667
    .end local v11    # "callingProcessState":I
    .end local v12    # "startTime":J
    .end local v17    # "dyingProc":Lcom/android/server/am/ProcessRecord;
    .end local v18    # "userProps":Landroid/content/pm/UserProperties;
    .end local v20    # "isMediaSharedWithParent":Z
    .end local v23    # "checkCrossUser":Z
    .end local v25    # "umInternal":Lcom/android/server/pm/UserManagerInternal;
    .end local v28    # "r":Lcom/android/server/am/ProcessRecord;
    .end local v29    # "startTimeNs":J
    :catchall_1e
    move-exception v0

    move-object/from16 v9, p1

    move/from16 v11, p4

    move v6, v5

    move-object v1, v14

    move-object v14, v15

    move-object/from16 v2, v31

    goto/16 :goto_3d

    .line 407
    .restart local v11    # "callingProcessState":I
    .restart local v12    # "startTime":J
    .restart local v17    # "dyingProc":Lcom/android/server/am/ProcessRecord;
    .restart local v18    # "userProps":Landroid/content/pm/UserProperties;
    .restart local v20    # "isMediaSharedWithParent":Z
    .restart local v23    # "checkCrossUser":Z
    .restart local v25    # "umInternal":Lcom/android/server/pm/UserManagerInternal;
    .restart local v28    # "r":Lcom/android/server/am/ProcessRecord;
    .restart local v29    # "startTimeNs":J
    :catch_1
    move-exception v0

    goto :goto_12

    .line 667
    .end local v5    # "userId":I
    .end local v11    # "callingProcessState":I
    .end local v12    # "startTime":J
    .end local v17    # "dyingProc":Lcom/android/server/am/ProcessRecord;
    .end local v18    # "userProps":Landroid/content/pm/UserProperties;
    .end local v20    # "isMediaSharedWithParent":Z
    .end local v23    # "checkCrossUser":Z
    .end local v25    # "umInternal":Lcom/android/server/pm/UserManagerInternal;
    .end local v28    # "r":Lcom/android/server/am/ProcessRecord;
    .end local v29    # "startTimeNs":J
    .restart local v33    # "userId":I
    :catchall_1f
    move-exception v0

    move/from16 v5, v33

    move-object/from16 v9, p1

    move/from16 v11, p4

    move v6, v5

    move-object v1, v14

    move-object v14, v15

    move-object/from16 v2, v31

    .end local v33    # "userId":I
    .restart local v5    # "userId":I
    goto/16 :goto_3d

    .line 407
    .end local v5    # "userId":I
    .restart local v11    # "callingProcessState":I
    .restart local v12    # "startTime":J
    .restart local v17    # "dyingProc":Lcom/android/server/am/ProcessRecord;
    .restart local v18    # "userProps":Landroid/content/pm/UserProperties;
    .restart local v20    # "isMediaSharedWithParent":Z
    .restart local v23    # "checkCrossUser":Z
    .restart local v25    # "umInternal":Lcom/android/server/pm/UserManagerInternal;
    .restart local v28    # "r":Lcom/android/server/am/ProcessRecord;
    .restart local v29    # "startTimeNs":J
    .restart local v33    # "userId":I
    :catch_2
    move-exception v0

    move/from16 v5, v33

    .line 409
    .end local v33    # "userId":I
    .restart local v5    # "userId":I
    :goto_12
    if-nez v3, :cond_1c

    .line 410
    :try_start_2b
    monitor-exit v21
    :try_end_2b
    .catchall {:try_start_2b .. :try_end_2b} :catchall_1e

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    const/16 v34, 0x0

    return-object v34

    .line 415
    :cond_1c
    const/16 v34, 0x0

    :try_start_2c
    iget-object v0, v14, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v3, Landroid/content/pm/ProviderInfo;->processName:Ljava/lang/String;

    iget-object v2, v3, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v3, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    iget v7, v3, Landroid/content/pm/ProviderInfo;->flags:I

    invoke-virtual {v0, v1, v2, v6, v7}, Lcom/android/server/am/ActivityManagerService;->isSingleton(Ljava/lang/String;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;I)Z

    move-result v0
    :try_end_2c
    .catchall {:try_start_2c .. :try_end_2c} :catchall_4b

    if-eqz v0, :cond_1e

    :try_start_2d
    iget-object v0, v14, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 418
    if-nez v28, :cond_1d

    move/from16 v1, p4

    move-object/from16 v2, v28

    goto :goto_13

    :cond_1d
    move-object/from16 v2, v28

    .end local v28    # "r":Lcom/android/server/am/ProcessRecord;
    .restart local v2    # "r":Lcom/android/server/am/ProcessRecord;
    iget v1, v2, Lcom/android/server/am/ProcessRecord;->uid:I

    :goto_13
    iget-object v6, v3, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 417
    invoke-virtual {v0, v1, v6}, Lcom/android/server/am/ActivityManagerService;->isValidSingletonCall(II)Z

    move-result v0
    :try_end_2d
    .catchall {:try_start_2d .. :try_end_2d} :catchall_1e

    if-eqz v0, :cond_1f

    const/16 v42, 0x1

    goto :goto_14

    .line 415
    .end local v2    # "r":Lcom/android/server/am/ProcessRecord;
    .restart local v28    # "r":Lcom/android/server/am/ProcessRecord;
    :cond_1e
    move-object/from16 v2, v28

    .line 417
    .end local v28    # "r":Lcom/android/server/am/ProcessRecord;
    .restart local v2    # "r":Lcom/android/server/am/ProcessRecord;
    :cond_1f
    const/16 v42, 0x0

    :goto_14
    nop

    .line 419
    .local v42, "singleton":Z
    if-eqz v42, :cond_20

    .line 420
    const/4 v0, 0x0

    move v5, v0

    .line 422
    :cond_20
    :try_start_2e
    iget-object v0, v14, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v3, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0, v1, v5}, Lcom/android/server/am/ActivityManagerService;->getAppInfoForUser(Landroid/content/pm/ApplicationInfo;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iput-object v0, v3, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 423
    const-string/jumbo v0, "getContentProviderImpl: got app info for user"

    invoke-direct {v14, v12, v13, v0}, Lcom/android/server/am/ContentProviderHelper;->checkTime(JLjava/lang/String;)V
    :try_end_2e
    .catchall {:try_start_2e .. :try_end_2e} :catchall_4a

    .line 425
    if-nez v42, :cond_21

    const/4 v6, 0x1

    goto :goto_15

    :cond_21
    const/4 v6, 0x0

    :goto_15
    move-wide v8, v12

    move-object v1, v14

    move-object v7, v15

    move-object/from16 v12, v17

    move-object/from16 v14, v34

    move v15, v4

    move/from16 v4, p4

    .end local v4    # "providerRunning":Z
    .end local v17    # "dyingProc":Lcom/android/server/am/ProcessRecord;
    .local v8, "startTime":J
    .local v12, "dyingProc":Lcom/android/server/am/ProcessRecord;
    .local v15, "providerRunning":Z
    :try_start_2f
    invoke-direct/range {v1 .. v9}, Lcom/android/server/am/ContentProviderHelper;->checkAssociationAndPermissionLocked(Lcom/android/server/am/ProcessRecord;Landroid/content/pm/ProviderInfo;IIZLjava/lang/String;J)V
    :try_end_2f
    .catchall {:try_start_2f .. :try_end_2f} :catchall_49

    move-object v13, v1

    move v6, v5

    move-object v1, v7

    move-wide v4, v8

    .line 428
    .end local v5    # "userId":I
    .end local v8    # "startTime":J
    .local v4, "startTime":J
    .local v6, "userId":I
    :try_start_30
    iget-object v0, v13, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcessesReady:Z
    :try_end_30
    .catchall {:try_start_30 .. :try_end_30} :catchall_45

    if-nez v0, :cond_22

    :try_start_31
    iget-object v0, v3, Landroid/content/pm/ProviderInfo;->processName:Ljava/lang/String;

    const-string/jumbo v7, "system"

    invoke-virtual {v0, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    :cond_22
    goto :goto_16

    .line 432
    :cond_23
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v7, "Attempt to launch content provider before system ready"

    invoke-direct {v0, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v3    # "cpi":Landroid/content/pm/ProviderInfo;
    .end local v6    # "userId":I
    .end local v15    # "providerRunning":Z
    .end local v16    # "conn":Lcom/android/server/am/ContentProviderConnection;
    .end local v22    # "expectedUserId":I
    .end local v31    # "cpr":Lcom/android/server/am/ContentProviderRecord;
    .end local p0    # "this":Lcom/android/server/am/ContentProviderHelper;
    .end local p1    # "caller":Landroid/app/IApplicationThread;
    .end local p2    # "name":Ljava/lang/String;
    .end local p3    # "token":Landroid/os/IBinder;
    .end local p4    # "callingUid":I
    .end local p5    # "callingPackage":Ljava/lang/String;
    .end local p6    # "callingTag":Ljava/lang/String;
    .end local p7    # "stable":Z
    throw v0
    :try_end_31
    .catchall {:try_start_31 .. :try_end_31} :catchall_20

    .line 667
    .end local v2    # "r":Lcom/android/server/am/ProcessRecord;
    .end local v4    # "startTime":J
    .end local v11    # "callingProcessState":I
    .end local v12    # "dyingProc":Lcom/android/server/am/ProcessRecord;
    .end local v18    # "userProps":Landroid/content/pm/UserProperties;
    .end local v20    # "isMediaSharedWithParent":Z
    .end local v23    # "checkCrossUser":Z
    .end local v25    # "umInternal":Lcom/android/server/pm/UserManagerInternal;
    .end local v29    # "startTimeNs":J
    .end local v42    # "singleton":Z
    .restart local v3    # "cpi":Landroid/content/pm/ProviderInfo;
    .restart local v6    # "userId":I
    .restart local v15    # "providerRunning":Z
    .restart local v16    # "conn":Lcom/android/server/am/ContentProviderConnection;
    .restart local v22    # "expectedUserId":I
    .restart local v31    # "cpr":Lcom/android/server/am/ContentProviderRecord;
    .restart local p0    # "this":Lcom/android/server/am/ContentProviderHelper;
    .restart local p1    # "caller":Landroid/app/IApplicationThread;
    .restart local p2    # "name":Ljava/lang/String;
    .restart local p3    # "token":Landroid/os/IBinder;
    .restart local p4    # "callingUid":I
    .restart local p5    # "callingPackage":Ljava/lang/String;
    .restart local p6    # "callingTag":Ljava/lang/String;
    .restart local p7    # "stable":Z
    :catchall_20
    move-exception v0

    move-object/from16 v9, p1

    move/from16 v11, p4

    move-object v14, v1

    move-object v1, v13

    move v4, v15

    move-object/from16 v2, v31

    goto/16 :goto_3d

    .line 438
    .restart local v2    # "r":Lcom/android/server/am/ProcessRecord;
    .restart local v4    # "startTime":J
    .restart local v11    # "callingProcessState":I
    .restart local v12    # "dyingProc":Lcom/android/server/am/ProcessRecord;
    .restart local v18    # "userProps":Landroid/content/pm/UserProperties;
    .restart local v20    # "isMediaSharedWithParent":Z
    .restart local v23    # "checkCrossUser":Z
    .restart local v25    # "umInternal":Lcom/android/server/pm/UserManagerInternal;
    .restart local v29    # "startTimeNs":J
    .restart local v42    # "singleton":Z
    :goto_16
    :try_start_32
    monitor-enter p0
    :try_end_32
    .catchall {:try_start_32 .. :try_end_32} :catchall_45

    .line 439
    :try_start_33
    iget-boolean v0, v13, Lcom/android/server/am/ContentProviderHelper;->mSystemProvidersInstalled:Z
    :try_end_33
    .catchall {:try_start_33 .. :try_end_33} :catchall_46

    if-nez v0, :cond_25

    :try_start_34
    iget-object v0, v3, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result v0

    if-eqz v0, :cond_25

    const-string/jumbo v0, "system"

    iget-object v7, v3, Landroid/content/pm/ProviderInfo;->processName:Ljava/lang/String;

    .line 440
    invoke-virtual {v0, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_24

    goto :goto_17

    .line 441
    :cond_24
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Cannot access system provider: \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v3, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "\' before system providers are installed!"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v2    # "r":Lcom/android/server/am/ProcessRecord;
    .end local v3    # "cpi":Landroid/content/pm/ProviderInfo;
    .end local v4    # "startTime":J
    .end local v6    # "userId":I
    .end local v11    # "callingProcessState":I
    .end local v12    # "dyingProc":Lcom/android/server/am/ProcessRecord;
    .end local v15    # "providerRunning":Z
    .end local v16    # "conn":Lcom/android/server/am/ContentProviderConnection;
    .end local v18    # "userProps":Landroid/content/pm/UserProperties;
    .end local v20    # "isMediaSharedWithParent":Z
    .end local v22    # "expectedUserId":I
    .end local v23    # "checkCrossUser":Z
    .end local v25    # "umInternal":Lcom/android/server/pm/UserManagerInternal;
    .end local v29    # "startTimeNs":J
    .end local v31    # "cpr":Lcom/android/server/am/ContentProviderRecord;
    .end local v42    # "singleton":Z
    .end local p0    # "this":Lcom/android/server/am/ContentProviderHelper;
    .end local p1    # "caller":Landroid/app/IApplicationThread;
    .end local p2    # "name":Ljava/lang/String;
    .end local p3    # "token":Landroid/os/IBinder;
    .end local p4    # "callingUid":I
    .end local p5    # "callingPackage":Ljava/lang/String;
    .end local p6    # "callingTag":Ljava/lang/String;
    .end local p7    # "stable":Z
    throw v0
    :try_end_34
    .catchall {:try_start_34 .. :try_end_34} :catchall_21

    .line 444
    .restart local v2    # "r":Lcom/android/server/am/ProcessRecord;
    .restart local v3    # "cpi":Landroid/content/pm/ProviderInfo;
    .restart local v4    # "startTime":J
    .restart local v6    # "userId":I
    .restart local v11    # "callingProcessState":I
    .restart local v12    # "dyingProc":Lcom/android/server/am/ProcessRecord;
    .restart local v15    # "providerRunning":Z
    .restart local v16    # "conn":Lcom/android/server/am/ContentProviderConnection;
    .restart local v18    # "userProps":Landroid/content/pm/UserProperties;
    .restart local v20    # "isMediaSharedWithParent":Z
    .restart local v22    # "expectedUserId":I
    .restart local v23    # "checkCrossUser":Z
    .restart local v25    # "umInternal":Lcom/android/server/pm/UserManagerInternal;
    .restart local v29    # "startTimeNs":J
    .restart local v31    # "cpr":Lcom/android/server/am/ContentProviderRecord;
    .restart local v42    # "singleton":Z
    .restart local p0    # "this":Lcom/android/server/am/ContentProviderHelper;
    .restart local p1    # "caller":Landroid/app/IApplicationThread;
    .restart local p2    # "name":Ljava/lang/String;
    .restart local p3    # "token":Landroid/os/IBinder;
    .restart local p4    # "callingUid":I
    .restart local p5    # "callingPackage":Ljava/lang/String;
    .restart local p6    # "callingTag":Ljava/lang/String;
    .restart local p7    # "stable":Z
    :catchall_21
    move-exception v0

    move-object v14, v1

    move-object/from16 v39, v3

    move-wide v8, v4

    move/from16 v33, v6

    move-object/from16 v28, v12

    move-object v1, v13

    move/from16 v24, v15

    move v15, v11

    goto/16 :goto_2d

    :cond_25
    :goto_17
    :try_start_35
    monitor-exit p0
    :try_end_35
    .catchall {:try_start_35 .. :try_end_35} :catchall_46

    .line 448
    :try_start_36
    iget-object v0, v13, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    const/4 v7, 0x0

    invoke-virtual {v0, v6, v7}, Lcom/android/server/am/UserController;->isUserRunning(II)Z

    move-result v0
    :try_end_36
    .catchall {:try_start_36 .. :try_end_36} :catchall_45

    if-nez v0, :cond_26

    .line 449
    :try_start_37
    const-string v0, "ContentProviderHelper"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unable to launch app "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v3, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v3, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " for provider "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ": user "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " is stopped"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    monitor-exit v21
    :try_end_37
    .catchall {:try_start_37 .. :try_end_37} :catchall_20

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-object v14

    .line 455
    :cond_26
    :try_start_38
    new-instance v0, Landroid/content/ComponentName;

    iget-object v7, v3, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    iget-object v8, v3, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v7, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v7, v0

    .line 456
    .local v7, "comp":Landroid/content/ComponentName;
    const-string/jumbo v0, "getContentProviderImpl: before getProviderByClass"

    invoke-direct {v13, v4, v5, v0}, Lcom/android/server/am/ContentProviderHelper;->checkTime(JLjava/lang/String;)V

    .line 457
    iget-object v0, v13, Lcom/android/server/am/ContentProviderHelper;->mProviderMap:Lcom/android/server/am/ProviderMap;

    invoke-virtual {v0, v7, v6}, Lcom/android/server/am/ProviderMap;->getProviderByClass(Landroid/content/ComponentName;I)Lcom/android/server/am/ContentProviderRecord;

    move-result-object v0
    :try_end_38
    .catchall {:try_start_38 .. :try_end_38} :catchall_45

    move-object v8, v0

    .line 458
    .end local v31    # "cpr":Lcom/android/server/am/ContentProviderRecord;
    .local v8, "cpr":Lcom/android/server/am/ContentProviderRecord;
    :try_start_39
    const-string/jumbo v0, "getContentProviderImpl: after getProviderByClass"

    invoke-direct {v13, v4, v5, v0}, Lcom/android/server/am/ContentProviderHelper;->checkTime(JLjava/lang/String;)V
    :try_end_39
    .catchall {:try_start_39 .. :try_end_39} :catchall_44

    .line 465
    if-eqz v8, :cond_27

    :try_start_3a
    iget-object v0, v8, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;
    :try_end_3a
    .catchall {:try_start_3a .. :try_end_3a} :catchall_22

    if-ne v12, v0, :cond_28

    if-eqz v12, :cond_28

    :cond_27
    goto :goto_18

    :cond_28
    const/4 v0, 0x0

    goto :goto_19

    .line 667
    .end local v2    # "r":Lcom/android/server/am/ProcessRecord;
    .end local v4    # "startTime":J
    .end local v7    # "comp":Landroid/content/ComponentName;
    .end local v11    # "callingProcessState":I
    .end local v12    # "dyingProc":Lcom/android/server/am/ProcessRecord;
    .end local v18    # "userProps":Landroid/content/pm/UserProperties;
    .end local v20    # "isMediaSharedWithParent":Z
    .end local v23    # "checkCrossUser":Z
    .end local v25    # "umInternal":Lcom/android/server/pm/UserManagerInternal;
    .end local v29    # "startTimeNs":J
    .end local v42    # "singleton":Z
    :catchall_22
    move-exception v0

    move-object/from16 v9, p1

    move/from16 v11, p4

    move-object v14, v1

    move-object v2, v8

    move-object v1, v13

    move v4, v15

    goto/16 :goto_3d

    .line 465
    .restart local v2    # "r":Lcom/android/server/am/ProcessRecord;
    .restart local v4    # "startTime":J
    .restart local v7    # "comp":Landroid/content/ComponentName;
    .restart local v11    # "callingProcessState":I
    .restart local v12    # "dyingProc":Lcom/android/server/am/ProcessRecord;
    .restart local v18    # "userProps":Landroid/content/pm/UserProperties;
    .restart local v20    # "isMediaSharedWithParent":Z
    .restart local v23    # "checkCrossUser":Z
    .restart local v25    # "umInternal":Lcom/android/server/pm/UserManagerInternal;
    .restart local v29    # "startTimeNs":J
    .restart local v42    # "singleton":Z
    :goto_18
    const/4 v0, 0x1

    :goto_19
    move/from16 v17, v0

    .line 466
    .local v17, "firstClass":Z
    if-eqz v17, :cond_2b

    .line 467
    :try_start_3b
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v26

    .line 472
    .local v26, "ident":J
    iget-object v0, v13, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v13, v3, v2, v6, v0}, Lcom/android/server/am/ContentProviderHelper;->requestTargetProviderPermissionsReviewIfNeededLocked(Landroid/content/pm/ProviderInfo;Lcom/android/server/am/ProcessRecord;ILandroid/content/Context;)Z

    move-result v0
    :try_end_3b
    .catchall {:try_start_3b .. :try_end_3b} :catchall_2a

    if-nez v0, :cond_29

    .line 474
    :try_start_3c
    monitor-exit v21
    :try_end_3c
    .catchall {:try_start_3c .. :try_end_3c} :catchall_22

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-object v14

    .line 478
    :cond_29
    :try_start_3d
    const-string/jumbo v0, "getContentProviderImpl: before getApplicationInfo"

    invoke-direct {v13, v4, v5, v0}, Lcom/android/server/am/ContentProviderHelper;->checkTime(JLjava/lang/String;)V

    .line 479
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    iget-object v9, v3, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v9, v9, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;
    :try_end_3d
    .catch Landroid/os/RemoteException; {:try_start_3d .. :try_end_3d} :catch_6
    .catchall {:try_start_3d .. :try_end_3d} :catchall_28

    move-object/from16 v34, v14

    move/from16 v24, v15

    .end local v15    # "providerRunning":Z
    .restart local v24    # "providerRunning":Z
    const-wide/16 v14, 0x400

    :try_start_3e
    invoke-interface {v0, v9, v14, v15, v6}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;JI)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 482
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    const-string/jumbo v9, "getContentProviderImpl: after getApplicationInfo"

    invoke-direct {v13, v4, v5, v9}, Lcom/android/server/am/ContentProviderHelper;->checkTime(JLjava/lang/String;)V
    :try_end_3e
    .catch Landroid/os/RemoteException; {:try_start_3e .. :try_end_3e} :catch_5
    .catchall {:try_start_3e .. :try_end_3e} :catchall_27

    .line 483
    if-nez v0, :cond_2a

    .line 484
    :try_start_3f
    const-string v9, "ContentProviderHelper"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "No package info for content provider "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v15, v3, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v9, v14}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3f
    .catch Landroid/os/RemoteException; {:try_start_3f .. :try_end_3f} :catch_3
    .catchall {:try_start_3f .. :try_end_3f} :catchall_24

    .line 485
    nop

    .line 492
    :try_start_40
    invoke-static/range {v26 .. v27}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v21
    :try_end_40
    .catchall {:try_start_40 .. :try_end_40} :catchall_23

    .line 485
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-object v34

    .line 667
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v2    # "r":Lcom/android/server/am/ProcessRecord;
    .end local v4    # "startTime":J
    .end local v7    # "comp":Landroid/content/ComponentName;
    .end local v11    # "callingProcessState":I
    .end local v12    # "dyingProc":Lcom/android/server/am/ProcessRecord;
    .end local v17    # "firstClass":Z
    .end local v18    # "userProps":Landroid/content/pm/UserProperties;
    .end local v20    # "isMediaSharedWithParent":Z
    .end local v23    # "checkCrossUser":Z
    .end local v25    # "umInternal":Lcom/android/server/pm/UserManagerInternal;
    .end local v26    # "ident":J
    .end local v29    # "startTimeNs":J
    .end local v42    # "singleton":Z
    :catchall_23
    move-exception v0

    move-object/from16 v9, p1

    move/from16 v11, p4

    move-object v14, v1

    move-object v2, v8

    move-object v1, v13

    move/from16 v4, v24

    goto/16 :goto_3d

    .line 492
    .restart local v2    # "r":Lcom/android/server/am/ProcessRecord;
    .restart local v4    # "startTime":J
    .restart local v7    # "comp":Landroid/content/ComponentName;
    .restart local v11    # "callingProcessState":I
    .restart local v12    # "dyingProc":Lcom/android/server/am/ProcessRecord;
    .restart local v17    # "firstClass":Z
    .restart local v18    # "userProps":Landroid/content/pm/UserProperties;
    .restart local v20    # "isMediaSharedWithParent":Z
    .restart local v23    # "checkCrossUser":Z
    .restart local v25    # "umInternal":Lcom/android/server/pm/UserManagerInternal;
    .restart local v26    # "ident":J
    .restart local v29    # "startTimeNs":J
    .restart local v42    # "singleton":Z
    :catchall_24
    move-exception v0

    move-object v14, v3

    move-object v15, v7

    goto/16 :goto_1a

    .line 489
    :catch_3
    move-exception v0

    move-object v14, v3

    move-object v15, v7

    goto/16 :goto_1b

    .line 487
    .restart local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    :cond_2a
    :try_start_41
    iget-object v9, v13, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v9, v0, v6}, Lcom/android/server/am/ActivityManagerService;->getAppInfoForUser(Landroid/content/pm/ApplicationInfo;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v40

    .line 488
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    .local v40, "ai":Landroid/content/pm/ApplicationInfo;
    new-instance v37, Lcom/android/server/am/ContentProviderRecord;

    iget-object v0, v13, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;
    :try_end_41
    .catch Landroid/os/RemoteException; {:try_start_41 .. :try_end_41} :catch_5
    .catchall {:try_start_41 .. :try_end_41} :catchall_27

    move-object/from16 v38, v0

    move-object/from16 v39, v3

    move-object/from16 v41, v7

    .end local v3    # "cpi":Landroid/content/pm/ProviderInfo;
    .end local v7    # "comp":Landroid/content/ComponentName;
    .local v39, "cpi":Landroid/content/pm/ProviderInfo;
    .local v41, "comp":Landroid/content/ComponentName;
    :try_start_42
    invoke-direct/range {v37 .. v42}, Lcom/android/server/am/ContentProviderRecord;-><init>(Lcom/android/server/am/ActivityManagerService;Landroid/content/pm/ProviderInfo;Landroid/content/pm/ApplicationInfo;Landroid/content/ComponentName;Z)V
    :try_end_42
    .catch Landroid/os/RemoteException; {:try_start_42 .. :try_end_42} :catch_4
    .catchall {:try_start_42 .. :try_end_42} :catchall_26

    move-object/from16 v14, v39

    move-object/from16 v15, v41

    .line 492
    .end local v8    # "cpr":Lcom/android/server/am/ContentProviderRecord;
    .end local v39    # "cpi":Landroid/content/pm/ProviderInfo;
    .end local v40    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v41    # "comp":Landroid/content/ComponentName;
    .local v14, "cpi":Landroid/content/pm/ProviderInfo;
    .local v15, "comp":Landroid/content/ComponentName;
    .local v37, "cpr":Lcom/android/server/am/ContentProviderRecord;
    :try_start_43
    invoke-static/range {v26 .. v27}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_43
    .catchall {:try_start_43 .. :try_end_43} :catchall_25

    .line 493
    move-object/from16 v3, v37

    goto/16 :goto_1d

    .line 667
    .end local v2    # "r":Lcom/android/server/am/ProcessRecord;
    .end local v4    # "startTime":J
    .end local v11    # "callingProcessState":I
    .end local v12    # "dyingProc":Lcom/android/server/am/ProcessRecord;
    .end local v15    # "comp":Landroid/content/ComponentName;
    .end local v17    # "firstClass":Z
    .end local v18    # "userProps":Landroid/content/pm/UserProperties;
    .end local v20    # "isMediaSharedWithParent":Z
    .end local v23    # "checkCrossUser":Z
    .end local v25    # "umInternal":Lcom/android/server/pm/UserManagerInternal;
    .end local v26    # "ident":J
    .end local v29    # "startTimeNs":J
    .end local v42    # "singleton":Z
    :catchall_25
    move-exception v0

    move-object/from16 v9, p1

    move/from16 v11, p4

    move-object v3, v14

    move/from16 v4, v24

    move-object/from16 v2, v37

    move-object v14, v1

    move-object v1, v13

    goto/16 :goto_3d

    .line 492
    .end local v14    # "cpi":Landroid/content/pm/ProviderInfo;
    .end local v37    # "cpr":Lcom/android/server/am/ContentProviderRecord;
    .restart local v2    # "r":Lcom/android/server/am/ProcessRecord;
    .restart local v4    # "startTime":J
    .restart local v8    # "cpr":Lcom/android/server/am/ContentProviderRecord;
    .restart local v11    # "callingProcessState":I
    .restart local v12    # "dyingProc":Lcom/android/server/am/ProcessRecord;
    .restart local v17    # "firstClass":Z
    .restart local v18    # "userProps":Landroid/content/pm/UserProperties;
    .restart local v20    # "isMediaSharedWithParent":Z
    .restart local v23    # "checkCrossUser":Z
    .restart local v25    # "umInternal":Lcom/android/server/pm/UserManagerInternal;
    .restart local v26    # "ident":J
    .restart local v29    # "startTimeNs":J
    .restart local v39    # "cpi":Landroid/content/pm/ProviderInfo;
    .restart local v41    # "comp":Landroid/content/ComponentName;
    .restart local v42    # "singleton":Z
    :catchall_26
    move-exception v0

    move-object/from16 v14, v39

    move-object/from16 v15, v41

    .end local v39    # "cpi":Landroid/content/pm/ProviderInfo;
    .end local v41    # "comp":Landroid/content/ComponentName;
    .restart local v14    # "cpi":Landroid/content/pm/ProviderInfo;
    .restart local v15    # "comp":Landroid/content/ComponentName;
    goto :goto_1a

    .line 489
    .end local v14    # "cpi":Landroid/content/pm/ProviderInfo;
    .end local v15    # "comp":Landroid/content/ComponentName;
    .restart local v39    # "cpi":Landroid/content/pm/ProviderInfo;
    .restart local v41    # "comp":Landroid/content/ComponentName;
    :catch_4
    move-exception v0

    move-object/from16 v14, v39

    move-object/from16 v15, v41

    .end local v39    # "cpi":Landroid/content/pm/ProviderInfo;
    .end local v41    # "comp":Landroid/content/ComponentName;
    .restart local v14    # "cpi":Landroid/content/pm/ProviderInfo;
    .restart local v15    # "comp":Landroid/content/ComponentName;
    goto :goto_1b

    .line 492
    .end local v14    # "cpi":Landroid/content/pm/ProviderInfo;
    .end local v15    # "comp":Landroid/content/ComponentName;
    .restart local v3    # "cpi":Landroid/content/pm/ProviderInfo;
    .restart local v7    # "comp":Landroid/content/ComponentName;
    :catchall_27
    move-exception v0

    move-object v14, v3

    move-object v15, v7

    .end local v3    # "cpi":Landroid/content/pm/ProviderInfo;
    .end local v7    # "comp":Landroid/content/ComponentName;
    .restart local v14    # "cpi":Landroid/content/pm/ProviderInfo;
    .restart local v15    # "comp":Landroid/content/ComponentName;
    goto :goto_1a

    .line 489
    .end local v14    # "cpi":Landroid/content/pm/ProviderInfo;
    .end local v15    # "comp":Landroid/content/ComponentName;
    .restart local v3    # "cpi":Landroid/content/pm/ProviderInfo;
    .restart local v7    # "comp":Landroid/content/ComponentName;
    :catch_5
    move-exception v0

    move-object v14, v3

    move-object v15, v7

    .end local v3    # "cpi":Landroid/content/pm/ProviderInfo;
    .end local v7    # "comp":Landroid/content/ComponentName;
    .restart local v14    # "cpi":Landroid/content/pm/ProviderInfo;
    .restart local v15    # "comp":Landroid/content/ComponentName;
    goto :goto_1b

    .line 492
    .end local v14    # "cpi":Landroid/content/pm/ProviderInfo;
    .end local v24    # "providerRunning":Z
    .restart local v3    # "cpi":Landroid/content/pm/ProviderInfo;
    .restart local v7    # "comp":Landroid/content/ComponentName;
    .local v15, "providerRunning":Z
    :catchall_28
    move-exception v0

    move-object v14, v3

    move/from16 v24, v15

    move-object v15, v7

    .end local v3    # "cpi":Landroid/content/pm/ProviderInfo;
    .end local v7    # "comp":Landroid/content/ComponentName;
    .restart local v14    # "cpi":Landroid/content/pm/ProviderInfo;
    .local v15, "comp":Landroid/content/ComponentName;
    .restart local v24    # "providerRunning":Z
    goto :goto_1a

    .line 489
    .end local v14    # "cpi":Landroid/content/pm/ProviderInfo;
    .end local v24    # "providerRunning":Z
    .restart local v3    # "cpi":Landroid/content/pm/ProviderInfo;
    .restart local v7    # "comp":Landroid/content/ComponentName;
    .local v15, "providerRunning":Z
    :catch_6
    move-exception v0

    move-object/from16 v34, v14

    move/from16 v24, v15

    move-object v14, v3

    move-object v15, v7

    .end local v3    # "cpi":Landroid/content/pm/ProviderInfo;
    .end local v7    # "comp":Landroid/content/ComponentName;
    .restart local v14    # "cpi":Landroid/content/pm/ProviderInfo;
    .local v15, "comp":Landroid/content/ComponentName;
    .restart local v24    # "providerRunning":Z
    goto :goto_1b

    .line 492
    :goto_1a
    :try_start_44
    invoke-static/range {v26 .. v27}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 493
    nop

    .end local v6    # "userId":I
    .end local v8    # "cpr":Lcom/android/server/am/ContentProviderRecord;
    .end local v14    # "cpi":Landroid/content/pm/ProviderInfo;
    .end local v16    # "conn":Lcom/android/server/am/ContentProviderConnection;
    .end local v22    # "expectedUserId":I
    .end local v24    # "providerRunning":Z
    .end local p0    # "this":Lcom/android/server/am/ContentProviderHelper;
    .end local p1    # "caller":Landroid/app/IApplicationThread;
    .end local p2    # "name":Ljava/lang/String;
    .end local p3    # "token":Landroid/os/IBinder;
    .end local p4    # "callingUid":I
    .end local p5    # "callingPackage":Ljava/lang/String;
    .end local p6    # "callingTag":Ljava/lang/String;
    .end local p7    # "stable":Z
    throw v0

    .line 667
    .end local v2    # "r":Lcom/android/server/am/ProcessRecord;
    .end local v4    # "startTime":J
    .end local v11    # "callingProcessState":I
    .end local v12    # "dyingProc":Lcom/android/server/am/ProcessRecord;
    .end local v15    # "comp":Landroid/content/ComponentName;
    .end local v17    # "firstClass":Z
    .end local v18    # "userProps":Landroid/content/pm/UserProperties;
    .end local v20    # "isMediaSharedWithParent":Z
    .end local v23    # "checkCrossUser":Z
    .end local v25    # "umInternal":Lcom/android/server/pm/UserManagerInternal;
    .end local v26    # "ident":J
    .end local v29    # "startTimeNs":J
    .end local v42    # "singleton":Z
    .restart local v6    # "userId":I
    .restart local v8    # "cpr":Lcom/android/server/am/ContentProviderRecord;
    .restart local v14    # "cpi":Landroid/content/pm/ProviderInfo;
    .restart local v16    # "conn":Lcom/android/server/am/ContentProviderConnection;
    .restart local v22    # "expectedUserId":I
    .restart local v24    # "providerRunning":Z
    .restart local p0    # "this":Lcom/android/server/am/ContentProviderHelper;
    .restart local p1    # "caller":Landroid/app/IApplicationThread;
    .restart local p2    # "name":Ljava/lang/String;
    .restart local p3    # "token":Landroid/os/IBinder;
    .restart local p4    # "callingUid":I
    .restart local p5    # "callingPackage":Ljava/lang/String;
    .restart local p6    # "callingTag":Ljava/lang/String;
    .restart local p7    # "stable":Z
    :catchall_29
    move-exception v0

    move-object/from16 v9, p1

    move/from16 v11, p4

    move-object v2, v8

    move-object v3, v14

    move/from16 v4, v24

    move-object v14, v1

    move-object v1, v13

    goto/16 :goto_3d

    .line 492
    .restart local v2    # "r":Lcom/android/server/am/ProcessRecord;
    .restart local v4    # "startTime":J
    .restart local v11    # "callingProcessState":I
    .restart local v12    # "dyingProc":Lcom/android/server/am/ProcessRecord;
    .restart local v15    # "comp":Landroid/content/ComponentName;
    .restart local v17    # "firstClass":Z
    .restart local v18    # "userProps":Landroid/content/pm/UserProperties;
    .restart local v20    # "isMediaSharedWithParent":Z
    .restart local v23    # "checkCrossUser":Z
    .restart local v25    # "umInternal":Lcom/android/server/pm/UserManagerInternal;
    .restart local v26    # "ident":J
    .restart local v29    # "startTimeNs":J
    .restart local v42    # "singleton":Z
    :goto_1b
    invoke-static/range {v26 .. v27}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_44
    .catchall {:try_start_44 .. :try_end_44} :catchall_29

    .line 493
    goto :goto_1c

    .line 667
    .end local v2    # "r":Lcom/android/server/am/ProcessRecord;
    .end local v4    # "startTime":J
    .end local v11    # "callingProcessState":I
    .end local v12    # "dyingProc":Lcom/android/server/am/ProcessRecord;
    .end local v14    # "cpi":Landroid/content/pm/ProviderInfo;
    .end local v17    # "firstClass":Z
    .end local v18    # "userProps":Landroid/content/pm/UserProperties;
    .end local v20    # "isMediaSharedWithParent":Z
    .end local v23    # "checkCrossUser":Z
    .end local v24    # "providerRunning":Z
    .end local v25    # "umInternal":Lcom/android/server/pm/UserManagerInternal;
    .end local v26    # "ident":J
    .end local v29    # "startTimeNs":J
    .end local v42    # "singleton":Z
    .restart local v3    # "cpi":Landroid/content/pm/ProviderInfo;
    .local v15, "providerRunning":Z
    :catchall_2a
    move-exception v0

    move-object v14, v3

    move/from16 v24, v15

    move-object/from16 v9, p1

    move/from16 v11, p4

    move-object v2, v8

    move/from16 v4, v24

    move-object v14, v1

    move-object v1, v13

    .end local v3    # "cpi":Landroid/content/pm/ProviderInfo;
    .end local v15    # "providerRunning":Z
    .restart local v14    # "cpi":Landroid/content/pm/ProviderInfo;
    .restart local v24    # "providerRunning":Z
    goto/16 :goto_3d

    .line 466
    .end local v14    # "cpi":Landroid/content/pm/ProviderInfo;
    .end local v24    # "providerRunning":Z
    .restart local v2    # "r":Lcom/android/server/am/ProcessRecord;
    .restart local v3    # "cpi":Landroid/content/pm/ProviderInfo;
    .restart local v4    # "startTime":J
    .restart local v7    # "comp":Landroid/content/ComponentName;
    .restart local v11    # "callingProcessState":I
    .restart local v12    # "dyingProc":Lcom/android/server/am/ProcessRecord;
    .restart local v15    # "providerRunning":Z
    .restart local v17    # "firstClass":Z
    .restart local v18    # "userProps":Landroid/content/pm/UserProperties;
    .restart local v20    # "isMediaSharedWithParent":Z
    .restart local v23    # "checkCrossUser":Z
    .restart local v25    # "umInternal":Lcom/android/server/pm/UserManagerInternal;
    .restart local v29    # "startTimeNs":J
    .restart local v42    # "singleton":Z
    :cond_2b
    move-object/from16 v34, v14

    move/from16 v24, v15

    move-object v14, v3

    move-object v15, v7

    .line 496
    .end local v3    # "cpi":Landroid/content/pm/ProviderInfo;
    .end local v7    # "comp":Landroid/content/ComponentName;
    .restart local v14    # "cpi":Landroid/content/pm/ProviderInfo;
    .local v15, "comp":Landroid/content/ComponentName;
    .restart local v24    # "providerRunning":Z
    :goto_1c
    move-object v3, v8

    .end local v8    # "cpr":Lcom/android/server/am/ContentProviderRecord;
    .local v3, "cpr":Lcom/android/server/am/ContentProviderRecord;
    :goto_1d
    :try_start_45
    const-string/jumbo v0, "getContentProviderImpl: now have ContentProviderRecord"

    invoke-direct {v13, v4, v5, v0}, Lcom/android/server/am/ContentProviderHelper;->checkTime(JLjava/lang/String;)V
    :try_end_45
    .catchall {:try_start_45 .. :try_end_45} :catchall_43

    .line 498
    if-eqz v2, :cond_2c

    :try_start_46
    invoke-virtual {v3, v2}, Lcom/android/server/am/ContentProviderRecord;->canRunHere(Lcom/android/server/am/ProcessRecord;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 503
    move-object/from16 v8, v34

    const/4 v7, 0x1

    invoke-virtual {v3, v8, v7}, Lcom/android/server/am/ContentProviderRecord;->newHolder(Lcom/android/server/am/ContentProviderConnection;Z)Landroid/app/ContentProviderHolder;

    move-result-object v0

    monitor-exit v21
    :try_end_46
    .catchall {:try_start_46 .. :try_end_46} :catchall_2b

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-object v0

    .line 667
    .end local v2    # "r":Lcom/android/server/am/ProcessRecord;
    .end local v4    # "startTime":J
    .end local v11    # "callingProcessState":I
    .end local v12    # "dyingProc":Lcom/android/server/am/ProcessRecord;
    .end local v15    # "comp":Landroid/content/ComponentName;
    .end local v17    # "firstClass":Z
    .end local v18    # "userProps":Landroid/content/pm/UserProperties;
    .end local v20    # "isMediaSharedWithParent":Z
    .end local v23    # "checkCrossUser":Z
    .end local v25    # "umInternal":Lcom/android/server/pm/UserManagerInternal;
    .end local v29    # "startTimeNs":J
    .end local v42    # "singleton":Z
    :catchall_2b
    move-exception v0

    move-object/from16 v9, p1

    move/from16 v11, p4

    move-object v2, v3

    move-object v3, v14

    move/from16 v4, v24

    move-object v14, v1

    move-object v1, v13

    goto/16 :goto_3d

    .line 498
    .restart local v2    # "r":Lcom/android/server/am/ProcessRecord;
    .restart local v4    # "startTime":J
    .restart local v11    # "callingProcessState":I
    .restart local v12    # "dyingProc":Lcom/android/server/am/ProcessRecord;
    .restart local v15    # "comp":Landroid/content/ComponentName;
    .restart local v17    # "firstClass":Z
    .restart local v18    # "userProps":Landroid/content/pm/UserProperties;
    .restart local v20    # "isMediaSharedWithParent":Z
    .restart local v23    # "checkCrossUser":Z
    .restart local v25    # "umInternal":Lcom/android/server/pm/UserManagerInternal;
    .restart local v29    # "startTimeNs":J
    .restart local v42    # "singleton":Z
    :cond_2c
    const/4 v7, 0x1

    .line 506
    :try_start_47
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PROVIDER:Z
    :try_end_47
    .catchall {:try_start_47 .. :try_end_47} :catchall_43

    if-eqz v0, :cond_2e

    .line 507
    :try_start_48
    const-string v0, "ContentProviderHelper"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "LAUNCHING REMOTE PROVIDER (myuid "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v2, :cond_2d

    iget v9, v2, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    goto :goto_1e

    :cond_2d
    const/4 v9, 0x0

    :goto_1e
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, " pruid "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v3, Lcom/android/server/am/ContentProviderRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v9, v9, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, "): "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v3, Lcom/android/server/am/ContentProviderRecord;->info:Landroid/content/pm/ProviderInfo;

    iget-object v9, v9, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " callers="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 509
    const/4 v9, 0x6

    invoke-static {v9}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 507
    invoke-static {v0, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_48
    .catchall {:try_start_48 .. :try_end_48} :catchall_2b

    .line 514
    :cond_2e
    :try_start_49
    iget-object v0, v13, Lcom/android/server/am/ContentProviderHelper;->mLaunchingProviders:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0
    :try_end_49
    .catchall {:try_start_49 .. :try_end_49} :catchall_43

    move v8, v0

    .line 516
    .local v8, "numLaunchingProviders":I
    const/4 v0, 0x0

    move v9, v0

    .local v9, "i":I
    :goto_1f
    if-ge v9, v8, :cond_30

    .line 517
    :try_start_4a
    iget-object v0, v13, Lcom/android/server/am/ContentProviderHelper;->mLaunchingProviders:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0
    :try_end_4a
    .catchall {:try_start_4a .. :try_end_4a} :catchall_2b

    if-ne v0, v3, :cond_2f

    .line 518
    goto :goto_20

    .line 516
    :cond_2f
    add-int/lit8 v9, v9, 0x1

    goto :goto_1f

    .line 523
    :cond_30
    :goto_20
    if-lt v9, v8, :cond_3a

    .line 524
    :try_start_4b
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v26
    :try_end_4b
    .catchall {:try_start_4b .. :try_end_4b} :catchall_3e

    .line 527
    .local v26, "origId":J
    :try_start_4c
    iget-object v0, v3, Lcom/android/server/am/ContentProviderRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v0, v10}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_4c
    .catchall {:try_start_4c .. :try_end_4c} :catchall_3d

    if-nez v0, :cond_31

    .line 529
    :try_start_4d
    iget-object v0, v13, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mUsageStatsService:Landroid/app/usage/UsageStatsManagerInternal;

    iget-object v7, v3, Lcom/android/server/am/ContentProviderRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/16 v1, 0x1f

    invoke-virtual {v0, v7, v6, v1}, Landroid/app/usage/UsageStatsManagerInternal;->reportEvent(Ljava/lang/String;II)V
    :try_end_4d
    .catchall {:try_start_4d .. :try_end_4d} :catchall_2c

    goto :goto_21

    .line 612
    :catchall_2c
    move-exception v0

    move-object/from16 v32, v2

    move-wide/from16 v37, v4

    move/from16 v33, v6

    move/from16 v35, v8

    move/from16 v36, v9

    move-object/from16 v28, v12

    move-object/from16 v39, v14

    move-object/from16 v41, v15

    move-wide/from16 v1, v29

    move-object v12, v3

    move v15, v11

    goto/16 :goto_28

    .line 534
    :cond_31
    :goto_21
    :try_start_4e
    const-string/jumbo v0, "getContentProviderImpl: before set stopped state"

    invoke-direct {v13, v4, v5, v0}, Lcom/android/server/am/ContentProviderHelper;->checkTime(JLjava/lang/String;)V

    .line 536
    iget-object v0, v13, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    iget-object v1, v3, Lcom/android/server/am/ContentProviderRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 538
    invoke-virtual {v3}, Lcom/android/server/am/ContentProviderRecord;->toString()Ljava/lang/String;

    move-result-object v7

    .line 536
    invoke-virtual {v0, v1, v6, v10, v7}, Landroid/content/pm/PackageManagerInternal;->notifyComponentUsed(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 539
    const-string/jumbo v0, "getContentProviderImpl: after set stopped state"

    invoke-direct {v13, v4, v5, v0}, Lcom/android/server/am/ContentProviderHelper;->checkTime(JLjava/lang/String;)V
    :try_end_4e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4e .. :try_end_4e} :catch_7
    .catchall {:try_start_4e .. :try_end_4e} :catchall_2c

    .line 543
    move-object/from16 v28, v2

    goto :goto_22

    .line 540
    :catch_7
    move-exception v0

    nop

    .line 541
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    :try_start_4f
    const-string v1, "ContentProviderHelper"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_4f
    .catchall {:try_start_4f .. :try_end_4f} :catchall_3d

    move-object/from16 v28, v2

    .end local v2    # "r":Lcom/android/server/am/ProcessRecord;
    .restart local v28    # "r":Lcom/android/server/am/ProcessRecord;
    :try_start_50
    const-string v2, "Failed trying to unstop package "

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v3, Lcom/android/server/am/ContentProviderRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :goto_22
    const-string/jumbo v0, "getContentProviderImpl: looking for process record"

    invoke-direct {v13, v4, v5, v0}, Lcom/android/server/am/ContentProviderHelper;->checkTime(JLjava/lang/String;)V

    .line 547
    iget-object v0, v13, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v14, Landroid/content/pm/ProviderInfo;->processName:Ljava/lang/String;

    iget-object v2, v3, Lcom/android/server/am/ContentProviderRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityManagerService;->getProcessRecordLocked(Ljava/lang/String;I)Lcom/android/server/am/ProcessRecord;

    move-result-object v0
    :try_end_50
    .catchall {:try_start_50 .. :try_end_50} :catchall_3c

    move-object v1, v0

    .line 550
    .local v1, "proc":Lcom/android/server/am/ProcessRecord;
    if-eqz v1, :cond_36

    :try_start_51
    invoke-virtual {v1}, Lcom/android/server/am/ProcessRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object v0

    move-object v2, v0

    .local v2, "thread":Landroid/app/IApplicationThread;
    if-eqz v0, :cond_35

    .line 551
    invoke-virtual {v1}, Lcom/android/server/am/ProcessRecord;->isKilled()Z

    move-result v0

    if-nez v0, :cond_34

    .line 552
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PROVIDER:Z
    :try_end_51
    .catchall {:try_start_51 .. :try_end_51} :catchall_32

    if-eqz v0, :cond_32

    .line 553
    :try_start_52
    const-string v0, "ContentProviderHelper"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_52
    .catchall {:try_start_52 .. :try_end_52} :catchall_2e

    move/from16 v33, v6

    .end local v6    # "userId":I
    .restart local v33    # "userId":I
    :try_start_53
    const-string v6, "Installing in existing process "

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_53
    .catchall {:try_start_53 .. :try_end_53} :catchall_2d

    goto :goto_23

    .line 612
    .end local v1    # "proc":Lcom/android/server/am/ProcessRecord;
    .end local v2    # "thread":Landroid/app/IApplicationThread;
    :catchall_2d
    move-exception v0

    move-wide/from16 v37, v4

    move/from16 v35, v8

    move/from16 v36, v9

    move-object/from16 v39, v14

    move-object/from16 v41, v15

    move-object/from16 v32, v28

    move-wide/from16 v1, v29

    move v15, v11

    move-object/from16 v28, v12

    move-object v12, v3

    goto/16 :goto_28

    .end local v33    # "userId":I
    .restart local v6    # "userId":I
    :catchall_2e
    move-exception v0

    move/from16 v33, v6

    move-wide/from16 v37, v4

    move/from16 v35, v8

    move/from16 v36, v9

    move-object/from16 v39, v14

    move-object/from16 v41, v15

    move-object/from16 v32, v28

    move-wide/from16 v1, v29

    move v15, v11

    move-object/from16 v28, v12

    move-object v12, v3

    .end local v6    # "userId":I
    .restart local v33    # "userId":I
    goto/16 :goto_28

    .line 552
    .end local v33    # "userId":I
    .restart local v1    # "proc":Lcom/android/server/am/ProcessRecord;
    .restart local v2    # "thread":Landroid/app/IApplicationThread;
    .restart local v6    # "userId":I
    :cond_32
    move/from16 v33, v6

    .line 555
    .end local v6    # "userId":I
    .restart local v33    # "userId":I
    :goto_23
    :try_start_54
    iget-object v0, v13, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcessStateController:Lcom/android/server/am/ProcessStateController;

    iget-object v6, v14, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v6, v3}, Lcom/android/server/am/ProcessStateController;->addPublishedProvider(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Lcom/android/server/am/ContentProviderRecord;)Z

    move-result v0
    :try_end_54
    .catchall {:try_start_54 .. :try_end_54} :catchall_31

    if-eqz v0, :cond_33

    .line 557
    :try_start_55
    const-string/jumbo v0, "getContentProviderImpl: scheduling install"

    invoke-direct {v13, v4, v5, v0}, Lcom/android/server/am/ContentProviderHelper;->checkTime(JLjava/lang/String;)V

    .line 558
    iget-object v0, v13, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mOomAdjuster:Lcom/android/server/am/OomAdjuster;

    const/4 v6, 0x7

    invoke-virtual {v0, v1, v6}, Lcom/android/server/am/OomAdjuster;->unfreezeTemporarily(Lcom/android/server/am/ProcessRecord;I)V
    :try_end_55
    .catchall {:try_start_55 .. :try_end_55} :catchall_2d

    .line 561
    :try_start_56
    invoke-interface {v2, v14}, Landroid/app/IApplicationThread;->scheduleInstallProvider(Landroid/content/pm/ProviderInfo;)V
    :try_end_56
    .catch Landroid/os/RemoteException; {:try_start_56 .. :try_end_56} :catch_8
    .catchall {:try_start_56 .. :try_end_56} :catchall_2d

    .line 563
    goto :goto_24

    .line 562
    :catch_8
    move-exception v0

    .line 565
    :cond_33
    :goto_24
    :try_start_57
    iget v0, v1, Lcom/android/server/am/ProcessRecord;->uid:I
    :try_end_57
    .catchall {:try_start_57 .. :try_end_57} :catchall_31

    move-wide v6, v4

    .end local v4    # "startTime":J
    .local v6, "startTime":J
    :try_start_58
    iget-object v5, v14, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    iget-object v4, v1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 571
    invoke-virtual {v4}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v4
    :try_end_58
    .catchall {:try_start_58 .. :try_end_58} :catchall_30

    .line 565
    move-object/from16 v31, v1

    move v1, v0

    .end local v1    # "proc":Lcom/android/server/am/ProcessRecord;
    .local v31, "proc":Lcom/android/server/am/ProcessRecord;
    const/16 v0, 0x1dd

    move-object/from16 v37, v3

    .end local v3    # "cpr":Lcom/android/server/am/ContentProviderRecord;
    .restart local v37    # "cpr":Lcom/android/server/am/ContentProviderRecord;
    const/4 v3, 0x1

    move/from16 v35, v8

    move v8, v4

    .end local v8    # "numLaunchingProviders":I
    .local v35, "numLaunchingProviders":I
    const/4 v4, 0x1

    move/from16 v36, v9

    .end local v9    # "i":I
    .local v36, "i":I
    const/4 v9, 0x0

    move-wide/from16 v38, v6

    move v7, v11

    .end local v6    # "startTime":J
    .end local v11    # "callingProcessState":I
    .local v7, "callingProcessState":I
    .local v38, "startTime":J
    const-wide/16 v10, 0x0

    move-object/from16 v6, p5

    move-object/from16 v41, v15

    move-object/from16 v32, v28

    move-object/from16 v28, v12

    move-object/from16 v12, v37

    move-object/from16 v37, v2

    move/from16 v2, p4

    move-wide/from16 v52, v38

    move-object/from16 v39, v14

    move-wide/from16 v14, v52

    .end local v2    # "thread":Landroid/app/IApplicationThread;
    .end local v15    # "comp":Landroid/content/ComponentName;
    .end local v38    # "startTime":J
    .local v12, "cpr":Lcom/android/server/am/ContentProviderRecord;
    .local v14, "startTime":J
    .local v28, "dyingProc":Lcom/android/server/am/ProcessRecord;
    .local v32, "r":Lcom/android/server/am/ProcessRecord;
    .local v37, "thread":Landroid/app/IApplicationThread;
    .restart local v39    # "cpi":Landroid/content/pm/ProviderInfo;
    .restart local v41    # "comp":Landroid/content/ComponentName;
    :try_start_59
    invoke-static/range {v0 .. v11}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIIILjava/lang/String;Ljava/lang/String;IIZJ)V
    :try_end_59
    .catchall {:try_start_59 .. :try_end_59} :catchall_2f

    move-wide/from16 v37, v14

    move-wide/from16 v1, v29

    move-object/from16 v14, v31

    move v15, v7

    goto/16 :goto_27

    .line 612
    .end local v31    # "proc":Lcom/android/server/am/ProcessRecord;
    .end local v37    # "thread":Landroid/app/IApplicationThread;
    :catchall_2f
    move-exception v0

    move-wide/from16 v37, v14

    move-wide/from16 v1, v29

    move v15, v7

    goto/16 :goto_28

    .end local v7    # "callingProcessState":I
    .end local v32    # "r":Lcom/android/server/am/ProcessRecord;
    .end local v35    # "numLaunchingProviders":I
    .end local v36    # "i":I
    .end local v39    # "cpi":Landroid/content/pm/ProviderInfo;
    .end local v41    # "comp":Landroid/content/ComponentName;
    .restart local v3    # "cpr":Lcom/android/server/am/ContentProviderRecord;
    .restart local v6    # "startTime":J
    .restart local v8    # "numLaunchingProviders":I
    .restart local v9    # "i":I
    .restart local v11    # "callingProcessState":I
    .local v12, "dyingProc":Lcom/android/server/am/ProcessRecord;
    .local v14, "cpi":Landroid/content/pm/ProviderInfo;
    .restart local v15    # "comp":Landroid/content/ComponentName;
    .local v28, "r":Lcom/android/server/am/ProcessRecord;
    :catchall_30
    move-exception v0

    move/from16 v35, v8

    move/from16 v36, v9

    move-object/from16 v39, v14

    move-object/from16 v41, v15

    move-object/from16 v32, v28

    move-wide v14, v6

    move v7, v11

    move-object/from16 v28, v12

    move-object v12, v3

    move-wide/from16 v37, v14

    move-wide/from16 v1, v29

    move v15, v7

    .end local v3    # "cpr":Lcom/android/server/am/ContentProviderRecord;
    .end local v6    # "startTime":J
    .end local v8    # "numLaunchingProviders":I
    .end local v9    # "i":I
    .end local v11    # "callingProcessState":I
    .end local v15    # "comp":Landroid/content/ComponentName;
    .restart local v7    # "callingProcessState":I
    .local v12, "cpr":Lcom/android/server/am/ContentProviderRecord;
    .local v14, "startTime":J
    .local v28, "dyingProc":Lcom/android/server/am/ProcessRecord;
    .restart local v32    # "r":Lcom/android/server/am/ProcessRecord;
    .restart local v35    # "numLaunchingProviders":I
    .restart local v36    # "i":I
    .restart local v39    # "cpi":Landroid/content/pm/ProviderInfo;
    .restart local v41    # "comp":Landroid/content/ComponentName;
    goto/16 :goto_28

    .end local v7    # "callingProcessState":I
    .end local v32    # "r":Lcom/android/server/am/ProcessRecord;
    .end local v35    # "numLaunchingProviders":I
    .end local v36    # "i":I
    .end local v39    # "cpi":Landroid/content/pm/ProviderInfo;
    .end local v41    # "comp":Landroid/content/ComponentName;
    .restart local v3    # "cpr":Lcom/android/server/am/ContentProviderRecord;
    .restart local v4    # "startTime":J
    .restart local v8    # "numLaunchingProviders":I
    .restart local v9    # "i":I
    .restart local v11    # "callingProcessState":I
    .local v12, "dyingProc":Lcom/android/server/am/ProcessRecord;
    .local v14, "cpi":Landroid/content/pm/ProviderInfo;
    .restart local v15    # "comp":Landroid/content/ComponentName;
    .local v28, "r":Lcom/android/server/am/ProcessRecord;
    :catchall_31
    move-exception v0

    move/from16 v35, v8

    move/from16 v36, v9

    move v7, v11

    move-object/from16 v39, v14

    move-object/from16 v41, v15

    move-object/from16 v32, v28

    move-wide v14, v4

    move-object/from16 v28, v12

    move-object v12, v3

    move-wide/from16 v37, v14

    move-wide/from16 v1, v29

    move v15, v7

    .end local v3    # "cpr":Lcom/android/server/am/ContentProviderRecord;
    .end local v4    # "startTime":J
    .end local v8    # "numLaunchingProviders":I
    .end local v9    # "i":I
    .end local v11    # "callingProcessState":I
    .end local v15    # "comp":Landroid/content/ComponentName;
    .restart local v7    # "callingProcessState":I
    .local v12, "cpr":Lcom/android/server/am/ContentProviderRecord;
    .local v14, "startTime":J
    .local v28, "dyingProc":Lcom/android/server/am/ProcessRecord;
    .restart local v32    # "r":Lcom/android/server/am/ProcessRecord;
    .restart local v35    # "numLaunchingProviders":I
    .restart local v36    # "i":I
    .restart local v39    # "cpi":Landroid/content/pm/ProviderInfo;
    .restart local v41    # "comp":Landroid/content/ComponentName;
    goto/16 :goto_28

    .end local v7    # "callingProcessState":I
    .end local v32    # "r":Lcom/android/server/am/ProcessRecord;
    .end local v33    # "userId":I
    .end local v35    # "numLaunchingProviders":I
    .end local v36    # "i":I
    .end local v39    # "cpi":Landroid/content/pm/ProviderInfo;
    .end local v41    # "comp":Landroid/content/ComponentName;
    .restart local v3    # "cpr":Lcom/android/server/am/ContentProviderRecord;
    .restart local v4    # "startTime":J
    .local v6, "userId":I
    .restart local v8    # "numLaunchingProviders":I
    .restart local v9    # "i":I
    .restart local v11    # "callingProcessState":I
    .local v12, "dyingProc":Lcom/android/server/am/ProcessRecord;
    .local v14, "cpi":Landroid/content/pm/ProviderInfo;
    .restart local v15    # "comp":Landroid/content/ComponentName;
    .local v28, "r":Lcom/android/server/am/ProcessRecord;
    :catchall_32
    move-exception v0

    move/from16 v33, v6

    move/from16 v35, v8

    move/from16 v36, v9

    move v7, v11

    move-object/from16 v39, v14

    move-object/from16 v41, v15

    move-object/from16 v32, v28

    move-wide v14, v4

    move-object/from16 v28, v12

    move-object v12, v3

    move-wide/from16 v37, v14

    move-wide/from16 v1, v29

    move v15, v7

    .end local v3    # "cpr":Lcom/android/server/am/ContentProviderRecord;
    .end local v4    # "startTime":J
    .end local v6    # "userId":I
    .end local v8    # "numLaunchingProviders":I
    .end local v9    # "i":I
    .end local v11    # "callingProcessState":I
    .end local v15    # "comp":Landroid/content/ComponentName;
    .restart local v7    # "callingProcessState":I
    .local v12, "cpr":Lcom/android/server/am/ContentProviderRecord;
    .local v14, "startTime":J
    .local v28, "dyingProc":Lcom/android/server/am/ProcessRecord;
    .restart local v32    # "r":Lcom/android/server/am/ProcessRecord;
    .restart local v33    # "userId":I
    .restart local v35    # "numLaunchingProviders":I
    .restart local v36    # "i":I
    .restart local v39    # "cpi":Landroid/content/pm/ProviderInfo;
    .restart local v41    # "comp":Landroid/content/ComponentName;
    goto/16 :goto_28

    .line 551
    .end local v7    # "callingProcessState":I
    .end local v32    # "r":Lcom/android/server/am/ProcessRecord;
    .end local v33    # "userId":I
    .end local v35    # "numLaunchingProviders":I
    .end local v36    # "i":I
    .end local v39    # "cpi":Landroid/content/pm/ProviderInfo;
    .end local v41    # "comp":Landroid/content/ComponentName;
    .restart local v1    # "proc":Lcom/android/server/am/ProcessRecord;
    .restart local v2    # "thread":Landroid/app/IApplicationThread;
    .restart local v3    # "cpr":Lcom/android/server/am/ContentProviderRecord;
    .restart local v4    # "startTime":J
    .restart local v6    # "userId":I
    .restart local v8    # "numLaunchingProviders":I
    .restart local v9    # "i":I
    .restart local v11    # "callingProcessState":I
    .local v12, "dyingProc":Lcom/android/server/am/ProcessRecord;
    .local v14, "cpi":Landroid/content/pm/ProviderInfo;
    .restart local v15    # "comp":Landroid/content/ComponentName;
    .local v28, "r":Lcom/android/server/am/ProcessRecord;
    :cond_34
    move-object/from16 v31, v1

    move-object/from16 v37, v2

    move/from16 v33, v6

    move/from16 v35, v8

    move/from16 v36, v9

    move v7, v11

    move-object/from16 v39, v14

    move-object/from16 v41, v15

    move-object/from16 v32, v28

    move-wide v14, v4

    move-object/from16 v28, v12

    move-object v12, v3

    .end local v1    # "proc":Lcom/android/server/am/ProcessRecord;
    .end local v2    # "thread":Landroid/app/IApplicationThread;
    .end local v3    # "cpr":Lcom/android/server/am/ContentProviderRecord;
    .end local v4    # "startTime":J
    .end local v6    # "userId":I
    .end local v8    # "numLaunchingProviders":I
    .end local v9    # "i":I
    .end local v11    # "callingProcessState":I
    .end local v15    # "comp":Landroid/content/ComponentName;
    .restart local v7    # "callingProcessState":I
    .local v12, "cpr":Lcom/android/server/am/ContentProviderRecord;
    .local v14, "startTime":J
    .local v28, "dyingProc":Lcom/android/server/am/ProcessRecord;
    .restart local v31    # "proc":Lcom/android/server/am/ProcessRecord;
    .restart local v32    # "r":Lcom/android/server/am/ProcessRecord;
    .restart local v33    # "userId":I
    .restart local v35    # "numLaunchingProviders":I
    .restart local v36    # "i":I
    .restart local v37    # "thread":Landroid/app/IApplicationThread;
    .restart local v39    # "cpi":Landroid/content/pm/ProviderInfo;
    .restart local v41    # "comp":Landroid/content/ComponentName;
    goto :goto_25

    .line 550
    .end local v7    # "callingProcessState":I
    .end local v31    # "proc":Lcom/android/server/am/ProcessRecord;
    .end local v32    # "r":Lcom/android/server/am/ProcessRecord;
    .end local v33    # "userId":I
    .end local v35    # "numLaunchingProviders":I
    .end local v36    # "i":I
    .end local v37    # "thread":Landroid/app/IApplicationThread;
    .end local v39    # "cpi":Landroid/content/pm/ProviderInfo;
    .end local v41    # "comp":Landroid/content/ComponentName;
    .restart local v1    # "proc":Lcom/android/server/am/ProcessRecord;
    .restart local v2    # "thread":Landroid/app/IApplicationThread;
    .restart local v3    # "cpr":Lcom/android/server/am/ContentProviderRecord;
    .restart local v4    # "startTime":J
    .restart local v6    # "userId":I
    .restart local v8    # "numLaunchingProviders":I
    .restart local v9    # "i":I
    .restart local v11    # "callingProcessState":I
    .local v12, "dyingProc":Lcom/android/server/am/ProcessRecord;
    .local v14, "cpi":Landroid/content/pm/ProviderInfo;
    .restart local v15    # "comp":Landroid/content/ComponentName;
    .local v28, "r":Lcom/android/server/am/ProcessRecord;
    :cond_35
    move-object/from16 v31, v1

    move-object/from16 v37, v2

    move/from16 v33, v6

    move/from16 v35, v8

    move/from16 v36, v9

    move v7, v11

    move-object/from16 v39, v14

    move-object/from16 v41, v15

    move-object/from16 v32, v28

    move-wide v14, v4

    move-object/from16 v28, v12

    move-object v12, v3

    .end local v1    # "proc":Lcom/android/server/am/ProcessRecord;
    .end local v2    # "thread":Landroid/app/IApplicationThread;
    .end local v3    # "cpr":Lcom/android/server/am/ContentProviderRecord;
    .end local v4    # "startTime":J
    .end local v6    # "userId":I
    .end local v8    # "numLaunchingProviders":I
    .end local v9    # "i":I
    .end local v11    # "callingProcessState":I
    .end local v15    # "comp":Landroid/content/ComponentName;
    .restart local v7    # "callingProcessState":I
    .local v12, "cpr":Lcom/android/server/am/ContentProviderRecord;
    .local v14, "startTime":J
    .local v28, "dyingProc":Lcom/android/server/am/ProcessRecord;
    .restart local v31    # "proc":Lcom/android/server/am/ProcessRecord;
    .restart local v32    # "r":Lcom/android/server/am/ProcessRecord;
    .restart local v33    # "userId":I
    .restart local v35    # "numLaunchingProviders":I
    .restart local v36    # "i":I
    .restart local v37    # "thread":Landroid/app/IApplicationThread;
    .restart local v39    # "cpi":Landroid/content/pm/ProviderInfo;
    .restart local v41    # "comp":Landroid/content/ComponentName;
    goto :goto_25

    .end local v7    # "callingProcessState":I
    .end local v31    # "proc":Lcom/android/server/am/ProcessRecord;
    .end local v32    # "r":Lcom/android/server/am/ProcessRecord;
    .end local v33    # "userId":I
    .end local v35    # "numLaunchingProviders":I
    .end local v36    # "i":I
    .end local v37    # "thread":Landroid/app/IApplicationThread;
    .end local v39    # "cpi":Landroid/content/pm/ProviderInfo;
    .end local v41    # "comp":Landroid/content/ComponentName;
    .restart local v1    # "proc":Lcom/android/server/am/ProcessRecord;
    .restart local v3    # "cpr":Lcom/android/server/am/ContentProviderRecord;
    .restart local v4    # "startTime":J
    .restart local v6    # "userId":I
    .restart local v8    # "numLaunchingProviders":I
    .restart local v9    # "i":I
    .restart local v11    # "callingProcessState":I
    .local v12, "dyingProc":Lcom/android/server/am/ProcessRecord;
    .local v14, "cpi":Landroid/content/pm/ProviderInfo;
    .restart local v15    # "comp":Landroid/content/ComponentName;
    .local v28, "r":Lcom/android/server/am/ProcessRecord;
    :cond_36
    move-object/from16 v31, v1

    move/from16 v33, v6

    move/from16 v35, v8

    move/from16 v36, v9

    move v7, v11

    move-object/from16 v39, v14

    move-object/from16 v41, v15

    move-object/from16 v32, v28

    move-wide v14, v4

    move-object/from16 v28, v12

    move-object v12, v3

    .line 574
    .end local v1    # "proc":Lcom/android/server/am/ProcessRecord;
    .end local v3    # "cpr":Lcom/android/server/am/ContentProviderRecord;
    .end local v4    # "startTime":J
    .end local v6    # "userId":I
    .end local v8    # "numLaunchingProviders":I
    .end local v9    # "i":I
    .end local v11    # "callingProcessState":I
    .end local v15    # "comp":Landroid/content/ComponentName;
    .restart local v7    # "callingProcessState":I
    .local v12, "cpr":Lcom/android/server/am/ContentProviderRecord;
    .local v14, "startTime":J
    .local v28, "dyingProc":Lcom/android/server/am/ProcessRecord;
    .restart local v31    # "proc":Lcom/android/server/am/ProcessRecord;
    .restart local v32    # "r":Lcom/android/server/am/ProcessRecord;
    .restart local v33    # "userId":I
    .restart local v35    # "numLaunchingProviders":I
    .restart local v36    # "i":I
    .restart local v39    # "cpi":Landroid/content/pm/ProviderInfo;
    .restart local v41    # "comp":Landroid/content/ComponentName;
    :goto_25
    :try_start_5a
    iget-object v0, v12, Lcom/android/server/am/ContentProviderRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->isStopped()Z

    move-result v0

    .line 575
    .local v0, "stopped":Z
    if-eqz v0, :cond_37

    .line 576
    const/4 v1, 0x2

    move v4, v1

    goto :goto_26

    .line 577
    :cond_37
    const/4 v4, 0x1

    :goto_26
    nop

    .line 578
    .local v4, "packageState":I
    iget-object v1, v12, Lcom/android/server/am/ContentProviderRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v1}, Landroid/content/pm/ApplicationInfo;->isNotLaunched()Z

    move-result v9

    .line 579
    .local v9, "firstLaunch":Z
    const-string/jumbo v1, "getContentProviderImpl: before start process"

    invoke-direct {v13, v14, v15, v1}, Lcom/android/server/am/ContentProviderHelper;->checkTime(JLjava/lang/String;)V

    .line 580
    iget-object v1, v13, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;
    :try_end_5a
    .catchall {:try_start_5a .. :try_end_5a} :catchall_3b

    move-object/from16 v2, v39

    .end local v39    # "cpi":Landroid/content/pm/ProviderInfo;
    .local v2, "cpi":Landroid/content/pm/ProviderInfo;
    :try_start_5b
    iget-object v3, v2, Landroid/content/pm/ProviderInfo;->processName:Ljava/lang/String;

    iget-object v5, v12, Lcom/android/server/am/ContentProviderRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    new-instance v6, Lcom/android/server/am/HostingRecord;

    const-string v8, "content provider"

    new-instance v10, Landroid/content/ComponentName;

    iget-object v11, v2, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v11, v11, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v43, v1

    iget-object v1, v2, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    invoke-direct {v10, v11, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v6, v8, v10}, Lcom/android/server/am/HostingRecord;-><init>(Ljava/lang/String;Landroid/content/ComponentName;)V

    const/16 v50, 0x0

    const/16 v51, 0x0

    const/16 v46, 0x0

    const/16 v47, 0x0

    const/16 v49, 0x0

    move-object/from16 v44, v3

    move-object/from16 v45, v5

    move-object/from16 v48, v6

    invoke-virtual/range {v43 .. v51}, Lcom/android/server/am/ActivityManagerService;->startProcessLocked(Ljava/lang/String;Landroid/content/pm/ApplicationInfo;ZILcom/android/server/am/HostingRecord;IZZ)Lcom/android/server/am/ProcessRecord;

    move-result-object v1

    .line 586
    .end local v31    # "proc":Lcom/android/server/am/ProcessRecord;
    .restart local v1    # "proc":Lcom/android/server/am/ProcessRecord;
    const-string/jumbo v3, "getContentProviderImpl: after start process"

    invoke-direct {v13, v14, v15, v3}, Lcom/android/server/am/ContentProviderHelper;->checkTime(JLjava/lang/String;)V
    :try_end_5b
    .catchall {:try_start_5b .. :try_end_5b} :catchall_3a

    .line 587
    if-nez v1, :cond_38

    .line 588
    :try_start_5c
    const-string v3, "ContentProviderHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to launch app "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v2, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v2, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " for provider "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_5c
    .catchall {:try_start_5c .. :try_end_5c} :catchall_35

    move-object/from16 v6, p2

    :try_start_5d
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ": process is bad"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5d
    .catchall {:try_start_5d .. :try_end_5d} :catchall_34

    .line 592
    nop

    .line 612
    :try_start_5e
    invoke-static/range {v26 .. v27}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v21
    :try_end_5e
    .catchall {:try_start_5e .. :try_end_5e} :catchall_33

    .line 592
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    const/16 v34, 0x0

    return-object v34

    .line 667
    .end local v0    # "stopped":Z
    .end local v1    # "proc":Lcom/android/server/am/ProcessRecord;
    .end local v4    # "packageState":I
    .end local v7    # "callingProcessState":I
    .end local v9    # "firstLaunch":Z
    .end local v14    # "startTime":J
    .end local v17    # "firstClass":Z
    .end local v18    # "userProps":Landroid/content/pm/UserProperties;
    .end local v20    # "isMediaSharedWithParent":Z
    .end local v23    # "checkCrossUser":Z
    .end local v25    # "umInternal":Lcom/android/server/pm/UserManagerInternal;
    .end local v26    # "origId":J
    .end local v28    # "dyingProc":Lcom/android/server/am/ProcessRecord;
    .end local v29    # "startTimeNs":J
    .end local v32    # "r":Lcom/android/server/am/ProcessRecord;
    .end local v35    # "numLaunchingProviders":I
    .end local v36    # "i":I
    .end local v41    # "comp":Landroid/content/ComponentName;
    .end local v42    # "singleton":Z
    :catchall_33
    move-exception v0

    move-object/from16 v9, p1

    move/from16 v11, p4

    move-object v3, v2

    move-object v14, v6

    move-object v2, v12

    move-object v1, v13

    move/from16 v4, v24

    move/from16 v6, v33

    goto/16 :goto_3d

    .line 612
    .restart local v7    # "callingProcessState":I
    .restart local v14    # "startTime":J
    .restart local v17    # "firstClass":Z
    .restart local v18    # "userProps":Landroid/content/pm/UserProperties;
    .restart local v20    # "isMediaSharedWithParent":Z
    .restart local v23    # "checkCrossUser":Z
    .restart local v25    # "umInternal":Lcom/android/server/pm/UserManagerInternal;
    .restart local v26    # "origId":J
    .restart local v28    # "dyingProc":Lcom/android/server/am/ProcessRecord;
    .restart local v29    # "startTimeNs":J
    .restart local v32    # "r":Lcom/android/server/am/ProcessRecord;
    .restart local v35    # "numLaunchingProviders":I
    .restart local v36    # "i":I
    .restart local v41    # "comp":Landroid/content/ComponentName;
    .restart local v42    # "singleton":Z
    :catchall_34
    move-exception v0

    move-object/from16 v39, v2

    move-wide/from16 v37, v14

    move-wide/from16 v1, v29

    move v15, v7

    goto/16 :goto_28

    :catchall_35
    move-exception v0

    move-object/from16 v6, p2

    move-object/from16 v39, v2

    move-wide/from16 v37, v14

    move-wide/from16 v1, v29

    move v15, v7

    goto/16 :goto_28

    .line 594
    .restart local v0    # "stopped":Z
    .restart local v1    # "proc":Lcom/android/server/am/ProcessRecord;
    .restart local v4    # "packageState":I
    .restart local v9    # "firstLaunch":Z
    :cond_38
    move-object/from16 v6, p2

    :try_start_5f
    sget-boolean v3, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PROCESSES:Z
    :try_end_5f
    .catchall {:try_start_5f .. :try_end_5f} :catchall_3a

    if-eqz v3, :cond_39

    .line 595
    :try_start_60
    const-string v3, "ContentProviderHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Logging provider access for "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v2, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", stopped="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, ", firstLaunch="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_60
    .catchall {:try_start_60 .. :try_end_60} :catchall_34

    .line 598
    :cond_39
    move-object v3, v1

    .end local v1    # "proc":Lcom/android/server/am/ProcessRecord;
    .local v3, "proc":Lcom/android/server/am/ProcessRecord;
    :try_start_61
    iget v1, v3, Lcom/android/server/am/ProcessRecord;->uid:I

    iget-object v5, v2, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;
    :try_end_61
    .catchall {:try_start_61 .. :try_end_61} :catchall_3a

    const/16 v8, 0x14

    const-wide/16 v10, 0x0

    move/from16 v31, v0

    .end local v0    # "stopped":Z
    .local v31, "stopped":Z
    const/16 v0, 0x1dd

    move-object/from16 v37, v3

    .end local v3    # "proc":Lcom/android/server/am/ProcessRecord;
    .local v37, "proc":Lcom/android/server/am/ProcessRecord;
    const/4 v3, 0x3

    move-wide/from16 v52, v14

    move-object/from16 v14, v37

    move-wide/from16 v37, v52

    move-object/from16 v6, p5

    move-object/from16 v39, v2

    move/from16 v2, p4

    .end local v2    # "cpi":Landroid/content/pm/ProviderInfo;
    .local v14, "proc":Lcom/android/server/am/ProcessRecord;
    .local v37, "startTime":J
    .restart local v39    # "cpi":Landroid/content/pm/ProviderInfo;
    :try_start_62
    invoke-static/range {v0 .. v11}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIIILjava/lang/String;Ljava/lang/String;IIZJ)V
    :try_end_62
    .catchall {:try_start_62 .. :try_end_62} :catchall_39

    move v15, v7

    .line 606
    .end local v7    # "callingProcessState":I
    .local v15, "callingProcessState":I
    :try_start_63
    iget-object v0, v13, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessList;->getAppStartInfoTracker()Lcom/android/server/am/AppStartInfoTracker;

    move-result-object v0
    :try_end_63
    .catchall {:try_start_63 .. :try_end_63} :catchall_38

    .line 607
    move-wide/from16 v1, v29

    .end local v29    # "startTimeNs":J
    .local v1, "startTimeNs":J
    :try_start_64
    invoke-virtual {v0, v1, v2, v14}, Lcom/android/server/am/AppStartInfoTracker;->handleProcessContentProviderStart(JLcom/android/server/am/ProcessRecord;)V

    .line 609
    .end local v4    # "packageState":I
    .end local v9    # "firstLaunch":Z
    .end local v31    # "stopped":Z
    :goto_27
    iput-object v14, v12, Lcom/android/server/am/ContentProviderRecord;->launchingApp:Lcom/android/server/am/ProcessRecord;

    .line 610
    iget-object v0, v13, Lcom/android/server/am/ContentProviderHelper;->mLaunchingProviders:Ljava/util/ArrayList;

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_64
    .catchall {:try_start_64 .. :try_end_64} :catchall_37

    .line 612
    .end local v14    # "proc":Lcom/android/server/am/ProcessRecord;
    :try_start_65
    invoke-static/range {v26 .. v27}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 613
    goto/16 :goto_29

    .line 667
    .end local v1    # "startTimeNs":J
    .end local v15    # "callingProcessState":I
    .end local v17    # "firstClass":Z
    .end local v18    # "userProps":Landroid/content/pm/UserProperties;
    .end local v20    # "isMediaSharedWithParent":Z
    .end local v23    # "checkCrossUser":Z
    .end local v25    # "umInternal":Lcom/android/server/pm/UserManagerInternal;
    .end local v26    # "origId":J
    .end local v28    # "dyingProc":Lcom/android/server/am/ProcessRecord;
    .end local v32    # "r":Lcom/android/server/am/ProcessRecord;
    .end local v35    # "numLaunchingProviders":I
    .end local v36    # "i":I
    .end local v37    # "startTime":J
    .end local v41    # "comp":Landroid/content/ComponentName;
    .end local v42    # "singleton":Z
    :catchall_36
    move-exception v0

    move-object/from16 v9, p1

    move-object/from16 v14, p2

    move/from16 v11, p4

    move-object v2, v12

    move-object v1, v13

    move/from16 v4, v24

    move/from16 v6, v33

    move-object/from16 v3, v39

    goto/16 :goto_3d

    .line 612
    .restart local v1    # "startTimeNs":J
    .restart local v15    # "callingProcessState":I
    .restart local v17    # "firstClass":Z
    .restart local v18    # "userProps":Landroid/content/pm/UserProperties;
    .restart local v20    # "isMediaSharedWithParent":Z
    .restart local v23    # "checkCrossUser":Z
    .restart local v25    # "umInternal":Lcom/android/server/pm/UserManagerInternal;
    .restart local v26    # "origId":J
    .restart local v28    # "dyingProc":Lcom/android/server/am/ProcessRecord;
    .restart local v32    # "r":Lcom/android/server/am/ProcessRecord;
    .restart local v35    # "numLaunchingProviders":I
    .restart local v36    # "i":I
    .restart local v37    # "startTime":J
    .restart local v41    # "comp":Landroid/content/ComponentName;
    .restart local v42    # "singleton":Z
    :catchall_37
    move-exception v0

    goto :goto_28

    .end local v1    # "startTimeNs":J
    .restart local v29    # "startTimeNs":J
    :catchall_38
    move-exception v0

    move-wide/from16 v1, v29

    .end local v29    # "startTimeNs":J
    .restart local v1    # "startTimeNs":J
    goto :goto_28

    .end local v1    # "startTimeNs":J
    .end local v15    # "callingProcessState":I
    .restart local v7    # "callingProcessState":I
    .restart local v29    # "startTimeNs":J
    :catchall_39
    move-exception v0

    move v15, v7

    move-wide/from16 v1, v29

    .end local v7    # "callingProcessState":I
    .end local v29    # "startTimeNs":J
    .restart local v1    # "startTimeNs":J
    .restart local v15    # "callingProcessState":I
    goto :goto_28

    .end local v1    # "startTimeNs":J
    .end local v15    # "callingProcessState":I
    .end local v37    # "startTime":J
    .end local v39    # "cpi":Landroid/content/pm/ProviderInfo;
    .restart local v2    # "cpi":Landroid/content/pm/ProviderInfo;
    .restart local v7    # "callingProcessState":I
    .local v14, "startTime":J
    .restart local v29    # "startTimeNs":J
    :catchall_3a
    move-exception v0

    move-object/from16 v39, v2

    move-wide/from16 v37, v14

    move-wide/from16 v1, v29

    move v15, v7

    .end local v2    # "cpi":Landroid/content/pm/ProviderInfo;
    .end local v7    # "callingProcessState":I
    .end local v14    # "startTime":J
    .end local v29    # "startTimeNs":J
    .restart local v1    # "startTimeNs":J
    .restart local v15    # "callingProcessState":I
    .restart local v37    # "startTime":J
    .restart local v39    # "cpi":Landroid/content/pm/ProviderInfo;
    goto :goto_28

    .end local v1    # "startTimeNs":J
    .end local v15    # "callingProcessState":I
    .end local v37    # "startTime":J
    .restart local v7    # "callingProcessState":I
    .restart local v14    # "startTime":J
    .restart local v29    # "startTimeNs":J
    :catchall_3b
    move-exception v0

    move-wide/from16 v37, v14

    move-wide/from16 v1, v29

    move v15, v7

    .end local v7    # "callingProcessState":I
    .end local v14    # "startTime":J
    .end local v29    # "startTimeNs":J
    .restart local v1    # "startTimeNs":J
    .restart local v15    # "callingProcessState":I
    .restart local v37    # "startTime":J
    goto :goto_28

    .end local v1    # "startTimeNs":J
    .end local v32    # "r":Lcom/android/server/am/ProcessRecord;
    .end local v33    # "userId":I
    .end local v35    # "numLaunchingProviders":I
    .end local v36    # "i":I
    .end local v37    # "startTime":J
    .end local v39    # "cpi":Landroid/content/pm/ProviderInfo;
    .end local v41    # "comp":Landroid/content/ComponentName;
    .local v3, "cpr":Lcom/android/server/am/ContentProviderRecord;
    .local v4, "startTime":J
    .restart local v6    # "userId":I
    .restart local v8    # "numLaunchingProviders":I
    .local v9, "i":I
    .restart local v11    # "callingProcessState":I
    .local v12, "dyingProc":Lcom/android/server/am/ProcessRecord;
    .local v14, "cpi":Landroid/content/pm/ProviderInfo;
    .local v15, "comp":Landroid/content/ComponentName;
    .local v28, "r":Lcom/android/server/am/ProcessRecord;
    .restart local v29    # "startTimeNs":J
    :catchall_3c
    move-exception v0

    move-wide/from16 v37, v4

    move/from16 v33, v6

    move/from16 v35, v8

    move/from16 v36, v9

    move-object/from16 v39, v14

    move-object/from16 v41, v15

    move-object/from16 v32, v28

    move-wide/from16 v1, v29

    move v15, v11

    move-object/from16 v28, v12

    move-object v12, v3

    .end local v3    # "cpr":Lcom/android/server/am/ContentProviderRecord;
    .end local v4    # "startTime":J
    .end local v6    # "userId":I
    .end local v8    # "numLaunchingProviders":I
    .end local v9    # "i":I
    .end local v11    # "callingProcessState":I
    .end local v14    # "cpi":Landroid/content/pm/ProviderInfo;
    .end local v29    # "startTimeNs":J
    .restart local v1    # "startTimeNs":J
    .local v12, "cpr":Lcom/android/server/am/ContentProviderRecord;
    .local v15, "callingProcessState":I
    .local v28, "dyingProc":Lcom/android/server/am/ProcessRecord;
    .restart local v32    # "r":Lcom/android/server/am/ProcessRecord;
    .restart local v33    # "userId":I
    .restart local v35    # "numLaunchingProviders":I
    .restart local v36    # "i":I
    .restart local v37    # "startTime":J
    .restart local v39    # "cpi":Landroid/content/pm/ProviderInfo;
    .restart local v41    # "comp":Landroid/content/ComponentName;
    goto :goto_28

    .end local v1    # "startTimeNs":J
    .end local v28    # "dyingProc":Lcom/android/server/am/ProcessRecord;
    .end local v32    # "r":Lcom/android/server/am/ProcessRecord;
    .end local v33    # "userId":I
    .end local v35    # "numLaunchingProviders":I
    .end local v36    # "i":I
    .end local v37    # "startTime":J
    .end local v39    # "cpi":Landroid/content/pm/ProviderInfo;
    .end local v41    # "comp":Landroid/content/ComponentName;
    .local v2, "r":Lcom/android/server/am/ProcessRecord;
    .restart local v3    # "cpr":Lcom/android/server/am/ContentProviderRecord;
    .restart local v4    # "startTime":J
    .restart local v6    # "userId":I
    .restart local v8    # "numLaunchingProviders":I
    .restart local v9    # "i":I
    .restart local v11    # "callingProcessState":I
    .local v12, "dyingProc":Lcom/android/server/am/ProcessRecord;
    .restart local v14    # "cpi":Landroid/content/pm/ProviderInfo;
    .local v15, "comp":Landroid/content/ComponentName;
    .restart local v29    # "startTimeNs":J
    :catchall_3d
    move-exception v0

    move-object/from16 v32, v2

    move-wide/from16 v37, v4

    move/from16 v33, v6

    move/from16 v35, v8

    move/from16 v36, v9

    move-object/from16 v28, v12

    move-object/from16 v39, v14

    move-object/from16 v41, v15

    move-wide/from16 v1, v29

    move-object v12, v3

    move v15, v11

    .end local v2    # "r":Lcom/android/server/am/ProcessRecord;
    .end local v3    # "cpr":Lcom/android/server/am/ContentProviderRecord;
    .end local v4    # "startTime":J
    .end local v6    # "userId":I
    .end local v8    # "numLaunchingProviders":I
    .end local v9    # "i":I
    .end local v11    # "callingProcessState":I
    .end local v14    # "cpi":Landroid/content/pm/ProviderInfo;
    .end local v29    # "startTimeNs":J
    .restart local v1    # "startTimeNs":J
    .local v12, "cpr":Lcom/android/server/am/ContentProviderRecord;
    .local v15, "callingProcessState":I
    .restart local v28    # "dyingProc":Lcom/android/server/am/ProcessRecord;
    .restart local v32    # "r":Lcom/android/server/am/ProcessRecord;
    .restart local v33    # "userId":I
    .restart local v35    # "numLaunchingProviders":I
    .restart local v36    # "i":I
    .restart local v37    # "startTime":J
    .restart local v39    # "cpi":Landroid/content/pm/ProviderInfo;
    .restart local v41    # "comp":Landroid/content/ComponentName;
    :goto_28
    invoke-static/range {v26 .. v27}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 613
    nop

    .end local v12    # "cpr":Lcom/android/server/am/ContentProviderRecord;
    .end local v16    # "conn":Lcom/android/server/am/ContentProviderConnection;
    .end local v22    # "expectedUserId":I
    .end local v24    # "providerRunning":Z
    .end local v33    # "userId":I
    .end local v39    # "cpi":Landroid/content/pm/ProviderInfo;
    .end local p0    # "this":Lcom/android/server/am/ContentProviderHelper;
    .end local p1    # "caller":Landroid/app/IApplicationThread;
    .end local p2    # "name":Ljava/lang/String;
    .end local p3    # "token":Landroid/os/IBinder;
    .end local p4    # "callingUid":I
    .end local p5    # "callingPackage":Ljava/lang/String;
    .end local p6    # "callingTag":Ljava/lang/String;
    .end local p7    # "stable":Z
    throw v0
    :try_end_65
    .catchall {:try_start_65 .. :try_end_65} :catchall_36

    .line 667
    .end local v1    # "startTimeNs":J
    .end local v15    # "callingProcessState":I
    .end local v17    # "firstClass":Z
    .end local v18    # "userProps":Landroid/content/pm/UserProperties;
    .end local v20    # "isMediaSharedWithParent":Z
    .end local v23    # "checkCrossUser":Z
    .end local v25    # "umInternal":Lcom/android/server/pm/UserManagerInternal;
    .end local v26    # "origId":J
    .end local v28    # "dyingProc":Lcom/android/server/am/ProcessRecord;
    .end local v32    # "r":Lcom/android/server/am/ProcessRecord;
    .end local v35    # "numLaunchingProviders":I
    .end local v36    # "i":I
    .end local v37    # "startTime":J
    .end local v41    # "comp":Landroid/content/ComponentName;
    .end local v42    # "singleton":Z
    .restart local v3    # "cpr":Lcom/android/server/am/ContentProviderRecord;
    .restart local v6    # "userId":I
    .restart local v14    # "cpi":Landroid/content/pm/ProviderInfo;
    .restart local v16    # "conn":Lcom/android/server/am/ContentProviderConnection;
    .restart local v22    # "expectedUserId":I
    .restart local v24    # "providerRunning":Z
    .restart local p0    # "this":Lcom/android/server/am/ContentProviderHelper;
    .restart local p1    # "caller":Landroid/app/IApplicationThread;
    .restart local p2    # "name":Ljava/lang/String;
    .restart local p3    # "token":Landroid/os/IBinder;
    .restart local p4    # "callingUid":I
    .restart local p5    # "callingPackage":Ljava/lang/String;
    .restart local p6    # "callingTag":Ljava/lang/String;
    .restart local p7    # "stable":Z
    :catchall_3e
    move-exception v0

    move-object v12, v3

    move/from16 v33, v6

    move-object/from16 v39, v14

    move-object/from16 v9, p1

    move-object/from16 v14, p2

    move/from16 v11, p4

    move-object v2, v12

    move-object v1, v13

    move/from16 v4, v24

    move-object/from16 v3, v39

    .end local v3    # "cpr":Lcom/android/server/am/ContentProviderRecord;
    .end local v6    # "userId":I
    .end local v14    # "cpi":Landroid/content/pm/ProviderInfo;
    .restart local v12    # "cpr":Lcom/android/server/am/ContentProviderRecord;
    .restart local v33    # "userId":I
    .restart local v39    # "cpi":Landroid/content/pm/ProviderInfo;
    goto/16 :goto_3d

    .line 523
    .end local v33    # "userId":I
    .end local v39    # "cpi":Landroid/content/pm/ProviderInfo;
    .restart local v2    # "r":Lcom/android/server/am/ProcessRecord;
    .restart local v3    # "cpr":Lcom/android/server/am/ContentProviderRecord;
    .restart local v4    # "startTime":J
    .restart local v6    # "userId":I
    .restart local v8    # "numLaunchingProviders":I
    .restart local v9    # "i":I
    .restart local v11    # "callingProcessState":I
    .local v12, "dyingProc":Lcom/android/server/am/ProcessRecord;
    .restart local v14    # "cpi":Landroid/content/pm/ProviderInfo;
    .local v15, "comp":Landroid/content/ComponentName;
    .restart local v17    # "firstClass":Z
    .restart local v18    # "userProps":Landroid/content/pm/UserProperties;
    .restart local v20    # "isMediaSharedWithParent":Z
    .restart local v23    # "checkCrossUser":Z
    .restart local v25    # "umInternal":Lcom/android/server/pm/UserManagerInternal;
    .restart local v29    # "startTimeNs":J
    .restart local v42    # "singleton":Z
    :cond_3a
    move-object/from16 v32, v2

    move-wide/from16 v37, v4

    move/from16 v33, v6

    move/from16 v35, v8

    move/from16 v36, v9

    move-object/from16 v28, v12

    move-object/from16 v39, v14

    move-object/from16 v41, v15

    move-wide/from16 v1, v29

    move-object v12, v3

    move v15, v11

    .line 616
    .end local v2    # "r":Lcom/android/server/am/ProcessRecord;
    .end local v3    # "cpr":Lcom/android/server/am/ContentProviderRecord;
    .end local v4    # "startTime":J
    .end local v6    # "userId":I
    .end local v8    # "numLaunchingProviders":I
    .end local v9    # "i":I
    .end local v11    # "callingProcessState":I
    .end local v14    # "cpi":Landroid/content/pm/ProviderInfo;
    .end local v29    # "startTimeNs":J
    .restart local v1    # "startTimeNs":J
    .local v12, "cpr":Lcom/android/server/am/ContentProviderRecord;
    .local v15, "callingProcessState":I
    .restart local v28    # "dyingProc":Lcom/android/server/am/ProcessRecord;
    .restart local v32    # "r":Lcom/android/server/am/ProcessRecord;
    .restart local v33    # "userId":I
    .restart local v35    # "numLaunchingProviders":I
    .restart local v36    # "i":I
    .restart local v37    # "startTime":J
    .restart local v39    # "cpi":Landroid/content/pm/ProviderInfo;
    .restart local v41    # "comp":Landroid/content/ComponentName;
    :goto_29
    :try_start_66
    const-string/jumbo v0, "getContentProviderImpl: updating data structures"

    move-wide/from16 v8, v37

    .end local v37    # "startTime":J
    .local v8, "startTime":J
    invoke-direct {v13, v8, v9, v0}, Lcom/android/server/am/ContentProviderHelper;->checkTime(JLjava/lang/String;)V
    :try_end_66
    .catchall {:try_start_66 .. :try_end_66} :catchall_42

    .line 620
    if-eqz v17, :cond_3b

    .line 621
    :try_start_67
    iget-object v0, v13, Lcom/android/server/am/ContentProviderHelper;->mProviderMap:Lcom/android/server/am/ProviderMap;

    move-object/from16 v14, v41

    .end local v41    # "comp":Landroid/content/ComponentName;
    .local v14, "comp":Landroid/content/ComponentName;
    invoke-virtual {v0, v14, v12}, Lcom/android/server/am/ProviderMap;->putProviderByClass(Landroid/content/ComponentName;Lcom/android/server/am/ContentProviderRecord;)V
    :try_end_67
    .catchall {:try_start_67 .. :try_end_67} :catchall_36

    goto :goto_2a

    .line 620
    .end local v14    # "comp":Landroid/content/ComponentName;
    .restart local v41    # "comp":Landroid/content/ComponentName;
    :cond_3b
    move-object/from16 v14, v41

    .line 624
    .end local v41    # "comp":Landroid/content/ComponentName;
    .restart local v14    # "comp":Landroid/content/ComponentName;
    :goto_2a
    :try_start_68
    iget-object v0, v13, Lcom/android/server/am/ContentProviderHelper;->mProviderMap:Lcom/android/server/am/ProviderMap;
    :try_end_68
    .catchall {:try_start_68 .. :try_end_68} :catchall_42

    move-object/from16 v7, p2

    :try_start_69
    invoke-virtual {v0, v7, v12}, Lcom/android/server/am/ProviderMap;->putProviderByName(Ljava/lang/String;Lcom/android/server/am/ContentProviderRecord;)V

    .line 625
    iget-object v0, v13, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;
    :try_end_69
    .catchall {:try_start_69 .. :try_end_69} :catchall_41

    move-wide v10, v8

    .end local v8    # "startTime":J
    .restart local v10    # "startTime":J
    const/4 v9, 0x0

    move-object/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v8, p7

    move-wide/from16 v29, v1

    move-object v3, v12

    move-object v1, v13

    move-object/from16 v41, v14

    move/from16 v13, v22

    move-object/from16 v2, v32

    move-object v12, v0

    move-object v14, v7

    move-object/from16 v7, p6

    .end local v1    # "startTimeNs":J
    .end local v12    # "cpr":Lcom/android/server/am/ContentProviderRecord;
    .end local v14    # "comp":Landroid/content/ComponentName;
    .end local v22    # "expectedUserId":I
    .end local v32    # "r":Lcom/android/server/am/ProcessRecord;
    .restart local v2    # "r":Lcom/android/server/am/ProcessRecord;
    .restart local v3    # "cpr":Lcom/android/server/am/ContentProviderRecord;
    .local v13, "expectedUserId":I
    .restart local v29    # "startTimeNs":J
    .restart local v41    # "comp":Landroid/content/ComponentName;
    :try_start_6a
    invoke-direct/range {v1 .. v13}, Lcom/android/server/am/ContentProviderHelper;->incProviderCountLocked(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ContentProviderRecord;Landroid/os/IBinder;ILjava/lang/String;Ljava/lang/String;ZZJLcom/android/server/am/ProcessList;I)Lcom/android/server/am/ContentProviderConnection;

    move-result-object v0
    :try_end_6a
    .catchall {:try_start_6a .. :try_end_6a} :catchall_40

    move-object/from16 v37, v3

    move-wide v8, v10

    .end local v3    # "cpr":Lcom/android/server/am/ContentProviderRecord;
    .end local v10    # "startTime":J
    .end local v13    # "expectedUserId":I
    .restart local v8    # "startTime":J
    .restart local v22    # "expectedUserId":I
    .local v37, "cpr":Lcom/android/server/am/ContentProviderRecord;
    move-object v3, v0

    .line 627
    .end local v16    # "conn":Lcom/android/server/am/ContentProviderConnection;
    .local v3, "conn":Lcom/android/server/am/ContentProviderConnection;
    if-eqz v3, :cond_3c

    .line 628
    const/4 v7, 0x1

    :try_start_6b
    iput-boolean v7, v3, Lcom/android/server/am/ContentProviderConnection;->waiting:Z
    :try_end_6b
    .catchall {:try_start_6b .. :try_end_6b} :catchall_3f

    goto :goto_2b

    .line 667
    .end local v2    # "r":Lcom/android/server/am/ProcessRecord;
    .end local v8    # "startTime":J
    .end local v15    # "callingProcessState":I
    .end local v17    # "firstClass":Z
    .end local v18    # "userProps":Landroid/content/pm/UserProperties;
    .end local v20    # "isMediaSharedWithParent":Z
    .end local v23    # "checkCrossUser":Z
    .end local v25    # "umInternal":Lcom/android/server/pm/UserManagerInternal;
    .end local v28    # "dyingProc":Lcom/android/server/am/ProcessRecord;
    .end local v29    # "startTimeNs":J
    .end local v35    # "numLaunchingProviders":I
    .end local v36    # "i":I
    .end local v41    # "comp":Landroid/content/ComponentName;
    .end local v42    # "singleton":Z
    :catchall_3f
    move-exception v0

    move-object/from16 v9, p1

    move/from16 v11, p4

    move-object/from16 v16, v3

    move/from16 v4, v24

    move/from16 v6, v33

    move-object/from16 v2, v37

    move-object/from16 v3, v39

    goto/16 :goto_3d

    .line 627
    .restart local v2    # "r":Lcom/android/server/am/ProcessRecord;
    .restart local v8    # "startTime":J
    .restart local v15    # "callingProcessState":I
    .restart local v17    # "firstClass":Z
    .restart local v18    # "userProps":Landroid/content/pm/UserProperties;
    .restart local v20    # "isMediaSharedWithParent":Z
    .restart local v23    # "checkCrossUser":Z
    .restart local v25    # "umInternal":Lcom/android/server/pm/UserManagerInternal;
    .restart local v28    # "dyingProc":Lcom/android/server/am/ProcessRecord;
    .restart local v29    # "startTimeNs":J
    .restart local v35    # "numLaunchingProviders":I
    .restart local v36    # "i":I
    .restart local v41    # "comp":Landroid/content/ComponentName;
    .restart local v42    # "singleton":Z
    :cond_3c
    const/4 v7, 0x1

    .line 631
    .end local v17    # "firstClass":Z
    .end local v35    # "numLaunchingProviders":I
    .end local v36    # "i":I
    .end local v41    # "comp":Landroid/content/ComponentName;
    .end local v42    # "singleton":Z
    :goto_2b
    move-object v6, v3

    move/from16 v5, v33

    move-object/from16 v3, v37

    move-object/from16 v4, v39

    goto/16 :goto_2e

    .line 667
    .end local v2    # "r":Lcom/android/server/am/ProcessRecord;
    .end local v8    # "startTime":J
    .end local v15    # "callingProcessState":I
    .end local v18    # "userProps":Landroid/content/pm/UserProperties;
    .end local v20    # "isMediaSharedWithParent":Z
    .end local v22    # "expectedUserId":I
    .end local v23    # "checkCrossUser":Z
    .end local v25    # "umInternal":Lcom/android/server/pm/UserManagerInternal;
    .end local v28    # "dyingProc":Lcom/android/server/am/ProcessRecord;
    .end local v29    # "startTimeNs":J
    .end local v37    # "cpr":Lcom/android/server/am/ContentProviderRecord;
    .local v3, "cpr":Lcom/android/server/am/ContentProviderRecord;
    .restart local v13    # "expectedUserId":I
    .restart local v16    # "conn":Lcom/android/server/am/ContentProviderConnection;
    :catchall_40
    move-exception v0

    move-object/from16 v37, v3

    move/from16 v22, v13

    move-object/from16 v9, p1

    move/from16 v11, p4

    move/from16 v4, v24

    move/from16 v6, v33

    move-object/from16 v2, v37

    move-object/from16 v3, v39

    .end local v3    # "cpr":Lcom/android/server/am/ContentProviderRecord;
    .end local v13    # "expectedUserId":I
    .restart local v22    # "expectedUserId":I
    .restart local v37    # "cpr":Lcom/android/server/am/ContentProviderRecord;
    goto/16 :goto_3d

    .end local v37    # "cpr":Lcom/android/server/am/ContentProviderRecord;
    .restart local v12    # "cpr":Lcom/android/server/am/ContentProviderRecord;
    :catchall_41
    move-exception v0

    move-object v14, v7

    :goto_2c
    move-object/from16 v37, v12

    move-object v1, v13

    move-object/from16 v9, p1

    move/from16 v11, p4

    move/from16 v4, v24

    move/from16 v6, v33

    move-object/from16 v2, v37

    move-object/from16 v3, v39

    .end local v12    # "cpr":Lcom/android/server/am/ContentProviderRecord;
    .restart local v37    # "cpr":Lcom/android/server/am/ContentProviderRecord;
    goto/16 :goto_3d

    .end local v37    # "cpr":Lcom/android/server/am/ContentProviderRecord;
    .restart local v12    # "cpr":Lcom/android/server/am/ContentProviderRecord;
    :catchall_42
    move-exception v0

    move-object/from16 v14, p2

    goto :goto_2c

    .end local v12    # "cpr":Lcom/android/server/am/ContentProviderRecord;
    .end local v33    # "userId":I
    .end local v39    # "cpi":Landroid/content/pm/ProviderInfo;
    .restart local v3    # "cpr":Lcom/android/server/am/ContentProviderRecord;
    .restart local v6    # "userId":I
    .local v14, "cpi":Landroid/content/pm/ProviderInfo;
    :catchall_43
    move-exception v0

    move-object/from16 v37, v3

    move/from16 v33, v6

    move-object/from16 v39, v14

    move-object v14, v1

    move-object v1, v13

    move-object/from16 v9, p1

    move/from16 v11, p4

    move/from16 v4, v24

    move-object/from16 v2, v37

    move-object/from16 v3, v39

    .end local v3    # "cpr":Lcom/android/server/am/ContentProviderRecord;
    .end local v6    # "userId":I
    .end local v14    # "cpi":Landroid/content/pm/ProviderInfo;
    .restart local v33    # "userId":I
    .restart local v37    # "cpr":Lcom/android/server/am/ContentProviderRecord;
    .restart local v39    # "cpi":Landroid/content/pm/ProviderInfo;
    goto/16 :goto_3d

    .end local v24    # "providerRunning":Z
    .end local v33    # "userId":I
    .end local v37    # "cpr":Lcom/android/server/am/ContentProviderRecord;
    .end local v39    # "cpi":Landroid/content/pm/ProviderInfo;
    .local v3, "cpi":Landroid/content/pm/ProviderInfo;
    .restart local v6    # "userId":I
    .local v8, "cpr":Lcom/android/server/am/ContentProviderRecord;
    .local v15, "providerRunning":Z
    :catchall_44
    move-exception v0

    move-object v14, v1

    move-object/from16 v39, v3

    move/from16 v33, v6

    move-object v1, v13

    move/from16 v24, v15

    move-object/from16 v9, p1

    move/from16 v11, p4

    move-object v2, v8

    move/from16 v4, v24

    .end local v3    # "cpi":Landroid/content/pm/ProviderInfo;
    .end local v6    # "userId":I
    .end local v15    # "providerRunning":Z
    .restart local v24    # "providerRunning":Z
    .restart local v33    # "userId":I
    .restart local v39    # "cpi":Landroid/content/pm/ProviderInfo;
    goto/16 :goto_3d

    .end local v8    # "cpr":Lcom/android/server/am/ContentProviderRecord;
    .end local v24    # "providerRunning":Z
    .end local v33    # "userId":I
    .end local v39    # "cpi":Landroid/content/pm/ProviderInfo;
    .restart local v3    # "cpi":Landroid/content/pm/ProviderInfo;
    .restart local v6    # "userId":I
    .restart local v15    # "providerRunning":Z
    .local v31, "cpr":Lcom/android/server/am/ContentProviderRecord;
    :catchall_45
    move-exception v0

    move-object v14, v1

    move-object/from16 v39, v3

    move/from16 v33, v6

    move-object v1, v13

    move/from16 v24, v15

    move-object/from16 v9, p1

    move/from16 v11, p4

    move/from16 v4, v24

    move-object/from16 v2, v31

    .end local v3    # "cpi":Landroid/content/pm/ProviderInfo;
    .end local v6    # "userId":I
    .end local v15    # "providerRunning":Z
    .restart local v24    # "providerRunning":Z
    .restart local v33    # "userId":I
    .restart local v39    # "cpi":Landroid/content/pm/ProviderInfo;
    goto/16 :goto_3d

    .line 444
    .end local v24    # "providerRunning":Z
    .end local v33    # "userId":I
    .end local v39    # "cpi":Landroid/content/pm/ProviderInfo;
    .restart local v2    # "r":Lcom/android/server/am/ProcessRecord;
    .restart local v3    # "cpi":Landroid/content/pm/ProviderInfo;
    .restart local v4    # "startTime":J
    .restart local v6    # "userId":I
    .restart local v11    # "callingProcessState":I
    .local v12, "dyingProc":Lcom/android/server/am/ProcessRecord;
    .restart local v15    # "providerRunning":Z
    .restart local v18    # "userProps":Landroid/content/pm/UserProperties;
    .restart local v20    # "isMediaSharedWithParent":Z
    .restart local v23    # "checkCrossUser":Z
    .restart local v25    # "umInternal":Lcom/android/server/pm/UserManagerInternal;
    .restart local v29    # "startTimeNs":J
    .restart local v42    # "singleton":Z
    :catchall_46
    move-exception v0

    move-object v14, v1

    move-object/from16 v39, v3

    move-wide v8, v4

    move/from16 v33, v6

    move-object/from16 v28, v12

    move-object v1, v13

    move/from16 v24, v15

    move v15, v11

    .end local v3    # "cpi":Landroid/content/pm/ProviderInfo;
    .end local v4    # "startTime":J
    .end local v6    # "userId":I
    .end local v11    # "callingProcessState":I
    .end local v12    # "dyingProc":Lcom/android/server/am/ProcessRecord;
    .local v8, "startTime":J
    .local v15, "callingProcessState":I
    .restart local v24    # "providerRunning":Z
    .restart local v28    # "dyingProc":Lcom/android/server/am/ProcessRecord;
    .restart local v33    # "userId":I
    .restart local v39    # "cpi":Landroid/content/pm/ProviderInfo;
    :goto_2d
    :try_start_6c
    monitor-exit p0
    :try_end_6c
    .catchall {:try_start_6c .. :try_end_6c} :catchall_48

    .end local v16    # "conn":Lcom/android/server/am/ContentProviderConnection;
    .end local v22    # "expectedUserId":I
    .end local v24    # "providerRunning":Z
    .end local v31    # "cpr":Lcom/android/server/am/ContentProviderRecord;
    .end local v33    # "userId":I
    .end local v39    # "cpi":Landroid/content/pm/ProviderInfo;
    .end local p0    # "this":Lcom/android/server/am/ContentProviderHelper;
    .end local p1    # "caller":Landroid/app/IApplicationThread;
    .end local p2    # "name":Ljava/lang/String;
    .end local p3    # "token":Landroid/os/IBinder;
    .end local p4    # "callingUid":I
    .end local p5    # "callingPackage":Ljava/lang/String;
    .end local p6    # "callingTag":Ljava/lang/String;
    .end local p7    # "stable":Z
    :try_start_6d
    throw v0
    :try_end_6d
    .catchall {:try_start_6d .. :try_end_6d} :catchall_47

    .line 667
    .end local v2    # "r":Lcom/android/server/am/ProcessRecord;
    .end local v8    # "startTime":J
    .end local v15    # "callingProcessState":I
    .end local v18    # "userProps":Landroid/content/pm/UserProperties;
    .end local v20    # "isMediaSharedWithParent":Z
    .end local v23    # "checkCrossUser":Z
    .end local v25    # "umInternal":Lcom/android/server/pm/UserManagerInternal;
    .end local v28    # "dyingProc":Lcom/android/server/am/ProcessRecord;
    .end local v29    # "startTimeNs":J
    .end local v42    # "singleton":Z
    .restart local v16    # "conn":Lcom/android/server/am/ContentProviderConnection;
    .restart local v22    # "expectedUserId":I
    .restart local v24    # "providerRunning":Z
    .restart local v31    # "cpr":Lcom/android/server/am/ContentProviderRecord;
    .restart local v33    # "userId":I
    .restart local v39    # "cpi":Landroid/content/pm/ProviderInfo;
    .restart local p0    # "this":Lcom/android/server/am/ContentProviderHelper;
    .restart local p1    # "caller":Landroid/app/IApplicationThread;
    .restart local p2    # "name":Ljava/lang/String;
    .restart local p3    # "token":Landroid/os/IBinder;
    .restart local p4    # "callingUid":I
    .restart local p5    # "callingPackage":Ljava/lang/String;
    .restart local p6    # "callingTag":Ljava/lang/String;
    .restart local p7    # "stable":Z
    :catchall_47
    move-exception v0

    move-object/from16 v9, p1

    move/from16 v11, p4

    move/from16 v4, v24

    move-object/from16 v2, v31

    move/from16 v6, v33

    move-object/from16 v3, v39

    goto/16 :goto_3d

    .line 444
    .restart local v2    # "r":Lcom/android/server/am/ProcessRecord;
    .restart local v8    # "startTime":J
    .restart local v15    # "callingProcessState":I
    .restart local v18    # "userProps":Landroid/content/pm/UserProperties;
    .restart local v20    # "isMediaSharedWithParent":Z
    .restart local v23    # "checkCrossUser":Z
    .restart local v25    # "umInternal":Lcom/android/server/pm/UserManagerInternal;
    .restart local v28    # "dyingProc":Lcom/android/server/am/ProcessRecord;
    .restart local v29    # "startTimeNs":J
    .restart local v42    # "singleton":Z
    :catchall_48
    move-exception v0

    goto :goto_2d

    .line 667
    .end local v2    # "r":Lcom/android/server/am/ProcessRecord;
    .end local v8    # "startTime":J
    .end local v18    # "userProps":Landroid/content/pm/UserProperties;
    .end local v20    # "isMediaSharedWithParent":Z
    .end local v23    # "checkCrossUser":Z
    .end local v24    # "providerRunning":Z
    .end local v25    # "umInternal":Lcom/android/server/pm/UserManagerInternal;
    .end local v28    # "dyingProc":Lcom/android/server/am/ProcessRecord;
    .end local v29    # "startTimeNs":J
    .end local v33    # "userId":I
    .end local v39    # "cpi":Landroid/content/pm/ProviderInfo;
    .end local v42    # "singleton":Z
    .restart local v3    # "cpi":Landroid/content/pm/ProviderInfo;
    .restart local v5    # "userId":I
    .local v15, "providerRunning":Z
    :catchall_49
    move-exception v0

    move-object/from16 v39, v3

    move/from16 v33, v5

    move-object v14, v7

    move/from16 v24, v15

    move-object/from16 v9, p1

    move/from16 v11, p4

    move/from16 v4, v24

    move-object/from16 v2, v31

    move/from16 v6, v33

    .end local v3    # "cpi":Landroid/content/pm/ProviderInfo;
    .end local v5    # "userId":I
    .end local v15    # "providerRunning":Z
    .restart local v24    # "providerRunning":Z
    .restart local v33    # "userId":I
    .restart local v39    # "cpi":Landroid/content/pm/ProviderInfo;
    goto/16 :goto_3d

    .end local v24    # "providerRunning":Z
    .end local v33    # "userId":I
    .end local v39    # "cpi":Landroid/content/pm/ProviderInfo;
    .restart local v3    # "cpi":Landroid/content/pm/ProviderInfo;
    .local v4, "providerRunning":Z
    .restart local v5    # "userId":I
    :catchall_4a
    move-exception v0

    move-object/from16 v39, v3

    move/from16 v24, v4

    move/from16 v33, v5

    move-object v1, v14

    move-object v14, v15

    move-object/from16 v9, p1

    move/from16 v11, p4

    move-object/from16 v2, v31

    move/from16 v6, v33

    .end local v3    # "cpi":Landroid/content/pm/ProviderInfo;
    .end local v4    # "providerRunning":Z
    .end local v5    # "userId":I
    .restart local v24    # "providerRunning":Z
    .restart local v33    # "userId":I
    .restart local v39    # "cpi":Landroid/content/pm/ProviderInfo;
    goto/16 :goto_3d

    .end local v24    # "providerRunning":Z
    .end local v33    # "userId":I
    .end local v39    # "cpi":Landroid/content/pm/ProviderInfo;
    .restart local v3    # "cpi":Landroid/content/pm/ProviderInfo;
    .restart local v4    # "providerRunning":Z
    .restart local v5    # "userId":I
    :catchall_4b
    move-exception v0

    move-object/from16 v39, v3

    move/from16 v24, v4

    move-object v1, v14

    move-object v14, v15

    move-object/from16 v9, p1

    move/from16 v11, p4

    move v6, v5

    move-object/from16 v2, v31

    .end local v3    # "cpi":Landroid/content/pm/ProviderInfo;
    .end local v4    # "providerRunning":Z
    .restart local v24    # "providerRunning":Z
    .restart local v39    # "cpi":Landroid/content/pm/ProviderInfo;
    goto/16 :goto_3d

    .line 399
    .end local v5    # "userId":I
    .end local v24    # "providerRunning":Z
    .end local v39    # "cpi":Landroid/content/pm/ProviderInfo;
    .restart local v3    # "cpi":Landroid/content/pm/ProviderInfo;
    .restart local v4    # "providerRunning":Z
    .restart local v11    # "callingProcessState":I
    .local v12, "startTime":J
    .local v17, "dyingProc":Lcom/android/server/am/ProcessRecord;
    .restart local v18    # "userProps":Landroid/content/pm/UserProperties;
    .restart local v20    # "isMediaSharedWithParent":Z
    .restart local v23    # "checkCrossUser":Z
    .restart local v25    # "umInternal":Lcom/android/server/pm/UserManagerInternal;
    .local v28, "r":Lcom/android/server/am/ProcessRecord;
    .restart local v29    # "startTimeNs":J
    .restart local v33    # "userId":I
    :cond_3d
    move/from16 v24, v4

    move-wide v8, v12

    move-object v1, v14

    move-object v14, v15

    move-object/from16 v2, v28

    move/from16 v5, v33

    const/4 v7, 0x1

    move v15, v11

    move-object/from16 v28, v17

    .end local v4    # "providerRunning":Z
    .end local v11    # "callingProcessState":I
    .end local v12    # "startTime":J
    .end local v17    # "dyingProc":Lcom/android/server/am/ProcessRecord;
    .end local v33    # "userId":I
    .restart local v2    # "r":Lcom/android/server/am/ProcessRecord;
    .restart local v5    # "userId":I
    .restart local v8    # "startTime":J
    .local v15, "callingProcessState":I
    .restart local v24    # "providerRunning":Z
    .local v28, "dyingProc":Lcom/android/server/am/ProcessRecord;
    move-object v4, v3

    move-object/from16 v6, v16

    move-object/from16 v3, v31

    .line 631
    .end local v16    # "conn":Lcom/android/server/am/ContentProviderConnection;
    .end local v31    # "cpr":Lcom/android/server/am/ContentProviderRecord;
    .local v3, "cpr":Lcom/android/server/am/ContentProviderRecord;
    .local v4, "cpi":Landroid/content/pm/ProviderInfo;
    .local v6, "conn":Lcom/android/server/am/ContentProviderConnection;
    :goto_2e
    :try_start_6e
    const-string/jumbo v0, "getContentProviderImpl: done!"

    invoke-direct {v1, v8, v9, v0}, Lcom/android/server/am/ContentProviderHelper;->checkTime(JLjava/lang/String;)V

    .line 633
    iget-object v0, v1, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v10, v4, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v10, v10, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 634
    invoke-static {v10}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v10
    :try_end_6e
    .catchall {:try_start_6e .. :try_end_6e} :catchall_59

    .line 633
    move/from16 v11, p4

    const/4 v12, 0x0

    :try_start_6f
    invoke-virtual {v0, v5, v12, v11, v10}, Lcom/android/server/am/ActivityManagerService;->grantImplicitAccess(ILandroid/content/Intent;II)V
    :try_end_6f
    .catchall {:try_start_6f .. :try_end_6f} :catchall_58

    .line 636
    if-eqz p1, :cond_41

    .line 638
    :try_start_70
    monitor-enter v3
    :try_end_70
    .catchall {:try_start_70 .. :try_end_70} :catchall_4c

    .line 639
    :try_start_71
    iget-object v0, v3, Lcom/android/server/am/ContentProviderRecord;->provider:Landroid/content/IContentProvider;

    if-nez v0, :cond_40

    .line 640
    iget-object v0, v3, Lcom/android/server/am/ContentProviderRecord;->launchingApp:Lcom/android/server/am/ProcessRecord;

    if-nez v0, :cond_3e

    .line 641
    const-string v0, "ContentProviderHelper"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unable to launch app "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v4, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v10, v10, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "/"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v4, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v10, v10, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " for provider "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ": launching app became null"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 645
    iget-object v0, v4, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 646
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    iget-object v7, v4, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v10, v4, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v10, v10, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 645
    invoke-static {v0, v7, v10, v14}, Lcom/android/server/am/EventLogTags;->writeAmProviderLostProcess(ILjava/lang/String;ILjava/lang/String;)V

    .line 649
    monitor-exit v3
    :try_end_71
    .catchall {:try_start_71 .. :try_end_71} :catchall_4d

    :try_start_72
    monitor-exit v21
    :try_end_72
    .catchall {:try_start_72 .. :try_end_72} :catchall_4c

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    const/16 v34, 0x0

    return-object v34

    .line 667
    .end local v2    # "r":Lcom/android/server/am/ProcessRecord;
    .end local v8    # "startTime":J
    .end local v15    # "callingProcessState":I
    .end local v18    # "userProps":Landroid/content/pm/UserProperties;
    .end local v20    # "isMediaSharedWithParent":Z
    .end local v23    # "checkCrossUser":Z
    .end local v25    # "umInternal":Lcom/android/server/pm/UserManagerInternal;
    .end local v28    # "dyingProc":Lcom/android/server/am/ProcessRecord;
    .end local v29    # "startTimeNs":J
    :catchall_4c
    move-exception v0

    move-object/from16 v9, p1

    move-object v2, v3

    move-object v3, v4

    move-object/from16 v16, v6

    move/from16 v4, v24

    move v6, v5

    goto/16 :goto_3d

    .line 661
    .restart local v2    # "r":Lcom/android/server/am/ProcessRecord;
    .restart local v8    # "startTime":J
    .restart local v15    # "callingProcessState":I
    .restart local v18    # "userProps":Landroid/content/pm/UserProperties;
    .restart local v20    # "isMediaSharedWithParent":Z
    .restart local v23    # "checkCrossUser":Z
    .restart local v25    # "umInternal":Lcom/android/server/pm/UserManagerInternal;
    .restart local v28    # "dyingProc":Lcom/android/server/am/ProcessRecord;
    .restart local v29    # "startTimeNs":J
    :catchall_4d
    move-exception v0

    goto :goto_2f

    .line 652
    :cond_3e
    if-eqz v6, :cond_3f

    .line 653
    :try_start_73
    iput-boolean v7, v6, Lcom/android/server/am/ContentProviderConnection;->waiting:Z

    .line 655
    :cond_3f
    iget-object v0, v1, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    const/16 v7, 0x49

    invoke-virtual {v0, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 657
    .local v0, "msg":Landroid/os/Message;
    iput-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 658
    iget-object v7, v1, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v7, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    sget v10, Landroid/content/ContentResolver;->CONTENT_PROVIDER_READY_TIMEOUT_MILLIS:I

    int-to-long v12, v10

    invoke-virtual {v7, v0, v12, v13}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 661
    .end local v0    # "msg":Landroid/os/Message;
    :cond_40
    monitor-exit v3
    :try_end_73
    .catchall {:try_start_73 .. :try_end_73} :catchall_4d

    .line 665
    const/4 v7, 0x0

    :try_start_74
    invoke-virtual {v3, v6, v7}, Lcom/android/server/am/ContentProviderRecord;->newHolder(Lcom/android/server/am/ContentProviderConnection;Z)Landroid/app/ContentProviderHolder;

    move-result-object v0

    monitor-exit v21
    :try_end_74
    .catchall {:try_start_74 .. :try_end_74} :catchall_4c

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-object v0

    .line 661
    :goto_2f
    :try_start_75
    monitor-exit v3
    :try_end_75
    .catchall {:try_start_75 .. :try_end_75} :catchall_4d

    .end local v3    # "cpr":Lcom/android/server/am/ContentProviderRecord;
    .end local v4    # "cpi":Landroid/content/pm/ProviderInfo;
    .end local v5    # "userId":I
    .end local v6    # "conn":Lcom/android/server/am/ContentProviderConnection;
    .end local v22    # "expectedUserId":I
    .end local v24    # "providerRunning":Z
    .end local p0    # "this":Lcom/android/server/am/ContentProviderHelper;
    .end local p1    # "caller":Landroid/app/IApplicationThread;
    .end local p2    # "name":Ljava/lang/String;
    .end local p3    # "token":Landroid/os/IBinder;
    .end local p4    # "callingUid":I
    .end local p5    # "callingPackage":Ljava/lang/String;
    .end local p6    # "callingTag":Ljava/lang/String;
    .end local p7    # "stable":Z
    :try_start_76
    throw v0
    :try_end_76
    .catchall {:try_start_76 .. :try_end_76} :catchall_4c

    .line 636
    .restart local v3    # "cpr":Lcom/android/server/am/ContentProviderRecord;
    .restart local v4    # "cpi":Landroid/content/pm/ProviderInfo;
    .restart local v5    # "userId":I
    .restart local v6    # "conn":Lcom/android/server/am/ContentProviderConnection;
    .restart local v22    # "expectedUserId":I
    .restart local v24    # "providerRunning":Z
    .restart local p0    # "this":Lcom/android/server/am/ContentProviderHelper;
    .restart local p1    # "caller":Landroid/app/IApplicationThread;
    .restart local p2    # "name":Ljava/lang/String;
    .restart local p3    # "token":Landroid/os/IBinder;
    .restart local p4    # "callingUid":I
    .restart local p5    # "callingPackage":Ljava/lang/String;
    .restart local p6    # "callingTag":Ljava/lang/String;
    .restart local p7    # "stable":Z
    :cond_41
    nop

    .line 667
    .end local v2    # "r":Lcom/android/server/am/ProcessRecord;
    .end local v8    # "startTime":J
    .end local v15    # "callingProcessState":I
    .end local v18    # "userProps":Landroid/content/pm/UserProperties;
    .end local v20    # "isMediaSharedWithParent":Z
    .end local v23    # "checkCrossUser":Z
    .end local v25    # "umInternal":Lcom/android/server/pm/UserManagerInternal;
    .end local v28    # "dyingProc":Lcom/android/server/am/ProcessRecord;
    .end local v29    # "startTimeNs":J
    :try_start_77
    monitor-exit v21
    :try_end_77
    .catchall {:try_start_77 .. :try_end_77} :catchall_58

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 672
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    sget v0, Landroid/content/ContentResolver;->CONTENT_PROVIDER_READY_TIMEOUT_MILLIS:I

    int-to-long v12, v0

    add-long/2addr v8, v12

    .line 673
    .local v8, "timeout":J
    const/4 v2, 0x0

    .line 674
    .local v2, "timedOut":Z
    monitor-enter v3

    .line 675
    :goto_30
    :try_start_78
    iget-object v0, v3, Lcom/android/server/am/ContentProviderRecord;->provider:Landroid/content/IContentProvider;
    :try_end_78
    .catchall {:try_start_78 .. :try_end_78} :catchall_56

    if-nez v0, :cond_49

    .line 676
    :try_start_79
    iget-object v0, v3, Lcom/android/server/am/ContentProviderRecord;->launchingApp:Lcom/android/server/am/ProcessRecord;
    :try_end_79
    .catchall {:try_start_79 .. :try_end_79} :catchall_52

    if-nez v0, :cond_42

    .line 677
    :try_start_7a
    const-string v0, "ContentProviderHelper"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unable to launch app "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v4, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v10, v10, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "/"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v4, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v10, v10, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " for provider "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ": launching app became null"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 680
    iget-object v0, v4, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 681
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    iget-object v7, v4, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v10, v4, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v10, v10, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 680
    invoke-static {v0, v7, v10, v14}, Lcom/android/server/am/EventLogTags;->writeAmProviderLostProcess(ILjava/lang/String;ILjava/lang/String;)V

    .line 683
    monitor-exit v3
    :try_end_7a
    .catchall {:try_start_7a .. :try_end_7a} :catchall_4e

    const/16 v34, 0x0

    return-object v34

    .line 708
    :catchall_4e
    move-exception v0

    move-wide v15, v8

    move/from16 v10, v24

    move-object/from16 v9, p1

    goto/16 :goto_3b

    .line 686
    :cond_42
    :try_start_7b
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v12
    :try_end_7b
    .catch Ljava/lang/InterruptedException; {:try_start_7b .. :try_end_7b} :catch_b
    .catchall {:try_start_7b .. :try_end_7b} :catchall_51

    sub-long v12, v8, v12

    move-wide v15, v8

    const-wide/16 v7, 0x0

    .end local v8    # "timeout":J
    .local v15, "timeout":J
    :try_start_7c
    invoke-static {v7, v8, v12, v13}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v9

    .line 687
    .local v9, "wait":J
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_MU:Z

    if-eqz v0, :cond_43

    .line 688
    const-string v0, "ActivityManager_MU"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Waiting to start provider "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v13, " launchingApp="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v3, Lcom/android/server/am/ContentProviderRecord;->launchingApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v13, " for "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v13, " ms"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v0, v12}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7c
    .catch Ljava/lang/InterruptedException; {:try_start_7c .. :try_end_7c} :catch_9
    .catchall {:try_start_7c .. :try_end_7c} :catchall_4f

    goto :goto_31

    .line 703
    .end local v9    # "wait":J
    :catchall_4f
    move-exception v0

    goto :goto_34

    .line 701
    :catch_9
    move-exception v0

    const/4 v12, 0x1

    goto :goto_35

    .line 691
    .restart local v9    # "wait":J
    :cond_43
    :goto_31
    if-eqz v6, :cond_44

    .line 692
    const/4 v12, 0x1

    :try_start_7d
    iput-boolean v12, v6, Lcom/android/server/am/ContentProviderConnection;->waiting:Z

    goto :goto_32

    .line 701
    .end local v9    # "wait":J
    :catch_a
    move-exception v0

    goto :goto_35

    .line 691
    .restart local v9    # "wait":J
    :cond_44
    const/4 v12, 0x1

    .line 694
    :goto_32
    cmp-long v0, v9, v7

    if-lez v0, :cond_45

    .line 695
    invoke-virtual {v3, v9, v10}, Ljava/lang/Object;->wait(J)V

    .line 697
    :cond_45
    iget-object v0, v3, Lcom/android/server/am/ContentProviderRecord;->provider:Landroid/content/IContentProvider;
    :try_end_7d
    .catch Ljava/lang/InterruptedException; {:try_start_7d .. :try_end_7d} :catch_a
    .catchall {:try_start_7d .. :try_end_7d} :catchall_4f

    if-nez v0, :cond_46

    .line 698
    const/4 v2, 0x1

    .line 703
    if-eqz v6, :cond_4a

    .line 704
    const/4 v7, 0x0

    :try_start_7e
    iput-boolean v7, v6, Lcom/android/server/am/ContentProviderConnection;->waiting:Z

    goto :goto_37

    .line 708
    .end local v9    # "wait":J
    :catchall_50
    move-exception v0

    move-object/from16 v9, p1

    move/from16 v10, v24

    goto/16 :goto_3b

    .line 697
    .restart local v9    # "wait":J
    :cond_46
    nop

    .line 703
    .end local v9    # "wait":J
    if-eqz v6, :cond_48

    .line 704
    :goto_33
    const/4 v9, 0x0

    iput-boolean v9, v6, Lcom/android/server/am/ContentProviderConnection;->waiting:Z

    goto :goto_36

    .line 703
    .end local v15    # "timeout":J
    .restart local v8    # "timeout":J
    :catchall_51
    move-exception v0

    move-wide v15, v8

    .end local v8    # "timeout":J
    .restart local v15    # "timeout":J
    :goto_34
    if-eqz v6, :cond_47

    .line 704
    const/4 v7, 0x0

    iput-boolean v7, v6, Lcom/android/server/am/ContentProviderConnection;->waiting:Z

    .line 706
    :cond_47
    nop

    .end local v2    # "timedOut":Z
    .end local v3    # "cpr":Lcom/android/server/am/ContentProviderRecord;
    .end local v4    # "cpi":Landroid/content/pm/ProviderInfo;
    .end local v5    # "userId":I
    .end local v6    # "conn":Lcom/android/server/am/ContentProviderConnection;
    .end local v15    # "timeout":J
    .end local v22    # "expectedUserId":I
    .end local v24    # "providerRunning":Z
    .end local p0    # "this":Lcom/android/server/am/ContentProviderHelper;
    .end local p1    # "caller":Landroid/app/IApplicationThread;
    .end local p2    # "name":Ljava/lang/String;
    .end local p3    # "token":Landroid/os/IBinder;
    .end local p4    # "callingUid":I
    .end local p5    # "callingPackage":Ljava/lang/String;
    .end local p6    # "callingTag":Ljava/lang/String;
    .end local p7    # "stable":Z
    throw v0
    :try_end_7e
    .catchall {:try_start_7e .. :try_end_7e} :catchall_50

    .line 701
    .restart local v2    # "timedOut":Z
    .restart local v3    # "cpr":Lcom/android/server/am/ContentProviderRecord;
    .restart local v4    # "cpi":Landroid/content/pm/ProviderInfo;
    .restart local v5    # "userId":I
    .restart local v6    # "conn":Lcom/android/server/am/ContentProviderConnection;
    .restart local v8    # "timeout":J
    .restart local v22    # "expectedUserId":I
    .restart local v24    # "providerRunning":Z
    .restart local p0    # "this":Lcom/android/server/am/ContentProviderHelper;
    .restart local p1    # "caller":Landroid/app/IApplicationThread;
    .restart local p2    # "name":Ljava/lang/String;
    .restart local p3    # "token":Landroid/os/IBinder;
    .restart local p4    # "callingUid":I
    .restart local p5    # "callingPackage":Ljava/lang/String;
    .restart local p6    # "callingTag":Ljava/lang/String;
    .restart local p7    # "stable":Z
    :catch_b
    move-exception v0

    move v12, v7

    move-wide v15, v8

    const-wide/16 v7, 0x0

    .line 703
    .end local v8    # "timeout":J
    .restart local v15    # "timeout":J
    :goto_35
    if-eqz v6, :cond_48

    .line 704
    goto :goto_33

    .line 706
    :cond_48
    :goto_36
    move v7, v12

    move-wide v8, v15

    goto/16 :goto_30

    .line 708
    .end local v15    # "timeout":J
    .restart local v8    # "timeout":J
    :catchall_52
    move-exception v0

    move-wide v15, v8

    move-object/from16 v9, p1

    move/from16 v10, v24

    .end local v8    # "timeout":J
    .restart local v15    # "timeout":J
    goto/16 :goto_3b

    .line 675
    .end local v15    # "timeout":J
    .restart local v8    # "timeout":J
    :cond_49
    move-wide v15, v8

    .line 708
    .end local v8    # "timeout":J
    .restart local v15    # "timeout":J
    :cond_4a
    :goto_37
    :try_start_7f
    monitor-exit v3
    :try_end_7f
    .catchall {:try_start_7f .. :try_end_7f} :catchall_55

    .line 709
    if-eqz v2, :cond_4d

    .line 711
    const-string/jumbo v7, "unknown"

    .line 712
    .local v7, "callerName":Ljava/lang/String;
    if-eqz p1, :cond_4c

    .line 713
    iget-object v0, v1, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v8, v0, Lcom/android/server/am/ActivityManagerService;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    monitor-enter v8

    .line 714
    :try_start_80
    iget-object v0, v1, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;
    :try_end_80
    .catchall {:try_start_80 .. :try_end_80} :catchall_54

    .line 715
    move-object/from16 v9, p1

    :try_start_81
    invoke-virtual {v0, v9}, Lcom/android/server/am/ProcessList;->getLRURecordForAppLOSP(Landroid/app/IApplicationThread;)Lcom/android/server/am/ProcessRecord;

    move-result-object v0

    .line 716
    .local v0, "record":Lcom/android/server/am/ProcessRecord;
    if-eqz v0, :cond_4b

    .line 717
    iget-object v10, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    move-object v7, v10

    goto :goto_38

    .line 719
    .end local v0    # "record":Lcom/android/server/am/ProcessRecord;
    :catchall_53
    move-exception v0

    goto :goto_39

    :cond_4b
    :goto_38
    monitor-exit v8
    :try_end_81
    .catchall {:try_start_81 .. :try_end_81} :catchall_53

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    goto :goto_3a

    :catchall_54
    move-exception v0

    move-object/from16 v9, p1

    :goto_39
    :try_start_82
    monitor-exit v8
    :try_end_82
    .catchall {:try_start_82 .. :try_end_82} :catchall_53

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw v0

    .line 712
    :cond_4c
    move-object/from16 v9, p1

    .line 722
    :goto_3a
    const-string v0, "ContentProviderHelper"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Timeout waiting for provider "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v4, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v10, v10, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "/"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v4, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v10, v10, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " for provider "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " providerRunning="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v10, v24

    .end local v24    # "providerRunning":Z
    .local v10, "providerRunning":Z
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v12, " caller="

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "/"

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 725
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v12

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 722
    invoke-static {v0, v8}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 726
    const/16 v34, 0x0

    return-object v34

    .line 728
    .end local v7    # "callerName":Ljava/lang/String;
    .end local v10    # "providerRunning":Z
    .restart local v24    # "providerRunning":Z
    :cond_4d
    const/4 v7, 0x0

    invoke-virtual {v3, v6, v7}, Lcom/android/server/am/ContentProviderRecord;->newHolder(Lcom/android/server/am/ContentProviderConnection;Z)Landroid/app/ContentProviderHolder;

    move-result-object v0

    return-object v0

    .line 708
    :catchall_55
    move-exception v0

    move-object/from16 v9, p1

    move/from16 v10, v24

    .end local v24    # "providerRunning":Z
    .restart local v10    # "providerRunning":Z
    goto :goto_3b

    .end local v10    # "providerRunning":Z
    .end local v15    # "timeout":J
    .restart local v8    # "timeout":J
    .restart local v24    # "providerRunning":Z
    :catchall_56
    move-exception v0

    move-wide v15, v8

    move/from16 v10, v24

    move-object/from16 v9, p1

    .end local v8    # "timeout":J
    .end local v24    # "providerRunning":Z
    .restart local v10    # "providerRunning":Z
    .restart local v15    # "timeout":J
    :goto_3b
    :try_start_83
    monitor-exit v3
    :try_end_83
    .catchall {:try_start_83 .. :try_end_83} :catchall_57

    throw v0

    :catchall_57
    move-exception v0

    goto :goto_3b

    .line 667
    .end local v2    # "timedOut":Z
    .end local v10    # "providerRunning":Z
    .end local v15    # "timeout":J
    .restart local v24    # "providerRunning":Z
    :catchall_58
    move-exception v0

    move-object/from16 v9, p1

    :goto_3c
    move/from16 v10, v24

    move-object v2, v3

    move-object v3, v4

    move-object/from16 v16, v6

    move v4, v10

    move v6, v5

    .end local v24    # "providerRunning":Z
    .restart local v10    # "providerRunning":Z
    goto :goto_3d

    .end local v10    # "providerRunning":Z
    .restart local v24    # "providerRunning":Z
    :catchall_59
    move-exception v0

    move-object/from16 v9, p1

    move/from16 v11, p4

    goto :goto_3c

    .end local v5    # "userId":I
    .end local v6    # "conn":Lcom/android/server/am/ContentProviderConnection;
    .end local v22    # "expectedUserId":I
    .end local v24    # "providerRunning":Z
    .local v3, "cpi":Landroid/content/pm/ProviderInfo;
    .local v4, "providerRunning":Z
    .local v7, "cpr":Lcom/android/server/am/ContentProviderRecord;
    .local v12, "expectedUserId":I
    .restart local v16    # "conn":Lcom/android/server/am/ContentProviderConnection;
    .local p8, "userId":I
    :catchall_5a
    move-exception v0

    move/from16 v11, p4

    move-object/from16 v23, v3

    move/from16 v24, v4

    move-object/from16 v21, v10

    move/from16 v22, v12

    move-object v9, v14

    move-object v14, v15

    move-object v2, v7

    move v6, v13

    .end local v3    # "cpi":Landroid/content/pm/ProviderInfo;
    .end local v4    # "providerRunning":Z
    .end local v12    # "expectedUserId":I
    .restart local v22    # "expectedUserId":I
    .local v23, "cpi":Landroid/content/pm/ProviderInfo;
    .restart local v24    # "providerRunning":Z
    goto :goto_3d

    .end local v7    # "cpr":Lcom/android/server/am/ContentProviderRecord;
    .end local v22    # "expectedUserId":I
    .end local v23    # "cpi":Landroid/content/pm/ProviderInfo;
    .end local v24    # "providerRunning":Z
    .restart local v3    # "cpi":Landroid/content/pm/ProviderInfo;
    .restart local v4    # "providerRunning":Z
    .restart local v12    # "expectedUserId":I
    .local v17, "cpr":Lcom/android/server/am/ContentProviderRecord;
    :catchall_5b
    move-exception v0

    move/from16 v11, p4

    move-object/from16 v23, v3

    move/from16 v24, v4

    move-object/from16 v21, v10

    move/from16 v22, v12

    move-object v9, v14

    move-object v14, v15

    move v6, v13

    move-object/from16 v2, v17

    .end local v3    # "cpi":Landroid/content/pm/ProviderInfo;
    .end local v4    # "providerRunning":Z
    .end local v12    # "expectedUserId":I
    .restart local v22    # "expectedUserId":I
    .restart local v23    # "cpi":Landroid/content/pm/ProviderInfo;
    .restart local v24    # "providerRunning":Z
    goto :goto_3d

    .end local v17    # "cpr":Lcom/android/server/am/ContentProviderRecord;
    .end local v22    # "expectedUserId":I
    .end local v23    # "cpi":Landroid/content/pm/ProviderInfo;
    .end local v24    # "providerRunning":Z
    .local v2, "cpr":Lcom/android/server/am/ContentProviderRecord;
    .restart local v3    # "cpi":Landroid/content/pm/ProviderInfo;
    .restart local v4    # "providerRunning":Z
    .restart local v12    # "expectedUserId":I
    :catchall_5c
    move-exception v0

    move/from16 v11, p4

    move-object/from16 v17, v2

    move-object/from16 v23, v3

    move/from16 v24, v4

    move-object/from16 v21, v10

    move/from16 v22, v12

    move-object v9, v14

    move-object v14, v15

    move v6, v13

    .end local v12    # "expectedUserId":I
    .end local p8    # "userId":I
    .local v6, "userId":I
    .restart local v22    # "expectedUserId":I
    :goto_3d
    :try_start_84
    monitor-exit v21
    :try_end_84
    .catchall {:try_start_84 .. :try_end_84} :catchall_5d

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    :catchall_5d
    move-exception v0

    goto :goto_3d
.end method

.method private handleProviderRemoval(Lcom/android/server/am/ContentProviderConnection;ZZ)V
    .locals 10
    .param p1, "conn"    # Lcom/android/server/am/ContentProviderConnection;
    .param p2, "stable"    # Z
    .param p3, "updateOomAdj"    # Z

    .line 1554
    iget-object v1, p0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    monitor-enter v1

    .line 1556
    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p1, Lcom/android/server/am/ContentProviderConnection;->provider:Lcom/android/server/am/ContentProviderRecord;

    if-eqz v0, :cond_0

    invoke-virtual {p1, p2}, Lcom/android/server/am/ContentProviderConnection;->decrementCount(Z)I

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    goto/16 :goto_1

    .line 1560
    :cond_1
    iget-object v0, p1, Lcom/android/server/am/ContentProviderConnection;->provider:Lcom/android/server/am/ContentProviderRecord;

    .line 1561
    .local v0, "cpr":Lcom/android/server/am/ContentProviderRecord;
    invoke-virtual {p1}, Lcom/android/server/am/ContentProviderConnection;->stopAssociation()V

    .line 1562
    iget-object v2, v0, Lcom/android/server/am/ContentProviderRecord;->connections:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1563
    iget-object v2, v0, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    if-eqz v2, :cond_2

    iget-object v2, v0, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    invoke-direct {p0, v2}, Lcom/android/server/am/ContentProviderHelper;->hasProviderConnectionLocked(Lcom/android/server/am/ProcessRecord;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1564
    iget-object v2, v0, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    iget-object v2, v2, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    const/16 v3, 0x40

    invoke-virtual {v2, v3}, Lcom/android/server/am/ProcessProfileRecord;->clearHostingComponentType(I)V

    goto :goto_0

    .line 1584
    .end local v0    # "cpr":Lcom/android/server/am/ContentProviderRecord;
    :catchall_0
    move-exception v0

    goto :goto_2

    .line 1566
    .restart local v0    # "cpr":Lcom/android/server/am/ContentProviderRecord;
    :cond_2
    :goto_0
    iget-object v2, p0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mProcessStateController:Lcom/android/server/am/ProcessStateController;

    iget-object v3, p1, Lcom/android/server/am/ContentProviderConnection;->client:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v2, v3, p1}, Lcom/android/server/am/ProcessStateController;->removeProviderConnection(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ContentProviderConnection;)V

    .line 1567
    iget-object v2, p1, Lcom/android/server/am/ContentProviderConnection;->client:Lcom/android/server/am/ProcessRecord;

    iget-object v2, v2, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v2}, Lcom/android/server/am/ProcessStateRecord;->getSetProcState()I

    move-result v2

    const/16 v3, 0xf

    if-ge v2, v3, :cond_3

    .line 1572
    iget-object v2, v0, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    if-eqz v2, :cond_3

    .line 1573
    iget-object v2, p0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mProcessStateController:Lcom/android/server/am/ProcessStateController;

    iget-object v3, v0, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    .line 1574
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 1573
    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/am/ProcessStateController;->setLastProviderTime(Lcom/android/server/am/ProcessRecord;J)V

    .line 1577
    :cond_3
    iget-object v2, p0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, p1, Lcom/android/server/am/ContentProviderConnection;->client:Lcom/android/server/am/ProcessRecord;

    iget v3, v3, Lcom/android/server/am/ProcessRecord;->uid:I

    iget-object v4, p1, Lcom/android/server/am/ContentProviderConnection;->client:Lcom/android/server/am/ProcessRecord;

    iget-object v4, v4, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget v5, v0, Lcom/android/server/am/ContentProviderRecord;->uid:I

    iget-object v6, v0, Lcom/android/server/am/ContentProviderRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-wide v6, v6, Landroid/content/pm/ApplicationInfo;->longVersionCode:J

    iget-object v8, v0, Lcom/android/server/am/ContentProviderRecord;->name:Landroid/content/ComponentName;

    iget-object v9, v0, Lcom/android/server/am/ContentProviderRecord;->info:Landroid/content/pm/ProviderInfo;

    iget-object v9, v9, Landroid/content/pm/ProviderInfo;->processName:Ljava/lang/String;

    invoke-virtual/range {v2 .. v9}, Lcom/android/server/am/ActivityManagerService;->stopAssociationLocked(ILjava/lang/String;IJLandroid/content/ComponentName;Ljava/lang/String;)V

    .line 1579
    nop

    nop

    if-eqz p3, :cond_4

    iget-object v2, p0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mOomAdjuster:Lcom/android/server/am/OomAdjuster;

    iget-object v3, p1, Lcom/android/server/am/ContentProviderConnection;->client:Lcom/android/server/am/ProcessRecord;

    iget-object v4, v0, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    .line 1580
    invoke-virtual {v2, v3, v4}, Lcom/android/server/am/OomAdjuster;->evaluateProviderConnectionRemoval(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ProcessRecord;)Z

    move-result v2

    nop

    if-eqz v2, :cond_4

    .line 1582
    iget-object v2, p0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, p1, Lcom/android/server/am/ContentProviderConnection;->provider:Lcom/android/server/am/ContentProviderRecord;

    iget-object v3, v3, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    const/16 v4, 0x8

    invoke-virtual {v2, v3, v4}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjLocked(Lcom/android/server/am/ProcessRecord;I)Z

    .line 1584
    .end local v0    # "cpr":Lcom/android/server/am/ContentProviderRecord;
    :cond_4
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 1585
    return-void

    .line 1557
    :goto_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 1584
    :goto_2
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method private hasProviderConnectionLocked(Lcom/android/server/am/ProcessRecord;)Z
    .locals 3
    .param p1, "proc"    # Lcom/android/server/am/ProcessRecord;

    .line 1544
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->mProviders:Lcom/android/server/am/ProcessProviderRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessProviderRecord;->numberOfProviders()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 1545
    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->mProviders:Lcom/android/server/am/ProcessProviderRecord;

    invoke-virtual {v2, v0}, Lcom/android/server/am/ProcessProviderRecord;->getProviderAt(I)Lcom/android/server/am/ContentProviderRecord;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/am/ContentProviderRecord;->connections:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1546
    return v1

    .line 1544
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    nop

    .line 1549
    .end local v0    # "i":I
    const/4 v0, 0x0

    return v0
.end method

.method private incProviderCountLocked(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ContentProviderRecord;Landroid/os/IBinder;ILjava/lang/String;Ljava/lang/String;ZZJLcom/android/server/am/ProcessList;I)Lcom/android/server/am/ContentProviderConnection;
    .locals 25
    .param p1, "r"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "cpr"    # Lcom/android/server/am/ContentProviderRecord;
    .param p3, "externalProcessToken"    # Landroid/os/IBinder;
    .param p4, "callingUid"    # I
    .param p5, "callingPackage"    # Ljava/lang/String;
    .param p6, "callingTag"    # Ljava/lang/String;
    .param p7, "stable"    # Z
    .param p8, "updateLru"    # Z
    .param p9, "startTime"    # J
    .param p11, "processList"    # Lcom/android/server/am/ProcessList;
    .param p12, "expectedUserId"    # I

    .line 1473
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p7

    move-wide/from16 v4, p9

    const/4 v6, 0x0

    if-nez v1, :cond_0

    .line 1474
    iget-object v7, v0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v7, Lcom/android/server/am/ActivityManagerService;->mProcessStateController:Lcom/android/server/am/ProcessStateController;

    move-object/from16 v8, p3

    move/from16 v9, p4

    move-object/from16 v10, p6

    invoke-virtual {v7, v2, v8, v9, v10}, Lcom/android/server/am/ProcessStateController;->addExternalProviderClient(Lcom/android/server/am/ContentProviderRecord;Landroid/os/IBinder;ILjava/lang/String;)V

    .line 1476
    return-object v6

    .line 1480
    :cond_0
    move-object/from16 v8, p3

    move/from16 v9, p4

    move-object/from16 v10, p6

    iget-object v7, v1, Lcom/android/server/am/ProcessRecord;->mProviders:Lcom/android/server/am/ProcessProviderRecord;

    .line 1481
    .local v7, "pr":Lcom/android/server/am/ProcessProviderRecord;
    const/4 v11, 0x0

    .local v11, "i":I
    invoke-virtual {v7}, Lcom/android/server/am/ProcessProviderRecord;->numberOfProviderConnections()I

    move-result v12

    .local v12, "size":I
    :goto_0
    if-ge v11, v12, :cond_2

    .line 1482
    invoke-virtual {v7, v11}, Lcom/android/server/am/ProcessProviderRecord;->getProviderConnectionAt(I)Lcom/android/server/am/ContentProviderConnection;

    move-result-object v13

    .line 1483
    .local v13, "conn":Lcom/android/server/am/ContentProviderConnection;
    iget-object v14, v13, Lcom/android/server/am/ContentProviderConnection;->provider:Lcom/android/server/am/ContentProviderRecord;

    if-ne v14, v2, :cond_1

    .line 1484
    invoke-virtual {v13, v3}, Lcom/android/server/am/ContentProviderConnection;->incrementCount(Z)I

    .line 1485
    return-object v13

    .line 1483
    :cond_1
    nop

    .line 1481
    .end local v13    # "conn":Lcom/android/server/am/ContentProviderConnection;
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    :cond_2
    nop

    .line 1490
    .end local v11    # "i":I
    .end local v12    # "size":I
    new-instance v11, Lcom/android/server/am/ContentProviderConnection;

    move-object/from16 v12, p5

    move/from16 v13, p12

    invoke-direct {v11, v2, v1, v12, v13}, Lcom/android/server/am/ContentProviderConnection;-><init>(Lcom/android/server/am/ContentProviderRecord;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;I)V

    .line 1492
    .local v11, "conn":Lcom/android/server/am/ContentProviderConnection;
    invoke-virtual {v11}, Lcom/android/server/am/ContentProviderConnection;->startAssociationIfNeeded()V

    .line 1493
    invoke-virtual {v11, v3}, Lcom/android/server/am/ContentProviderConnection;->initializeCount(Z)V

    .line 1494
    iget-object v14, v2, Lcom/android/server/am/ContentProviderRecord;->connections:Ljava/util/ArrayList;

    invoke-virtual {v14, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1495
    iget-object v14, v2, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    if-eqz v14, :cond_3

    .line 1496
    iget-object v14, v2, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    iget-object v14, v14, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    const/16 v15, 0x40

    invoke-virtual {v14, v15}, Lcom/android/server/am/ProcessProfileRecord;->addHostingComponentType(I)V

    .line 1498
    :cond_3
    iget-object v14, v0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v14, v14, Lcom/android/server/am/ActivityManagerService;->mProcessStateController:Lcom/android/server/am/ProcessStateController;

    invoke-virtual {v14, v1, v11}, Lcom/android/server/am/ProcessStateController;->addProviderConnection(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ContentProviderConnection;)V

    .line 1499
    iget-object v15, v0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v14, v1, Lcom/android/server/am/ProcessRecord;->uid:I

    iget-object v6, v1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget-object v3, v1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v3}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v18

    iget v3, v2, Lcom/android/server/am/ContentProviderRecord;->uid:I

    move/from16 v19, v3

    iget-object v3, v2, Lcom/android/server/am/ContentProviderRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v17, v6

    move-object/from16 v24, v7

    .end local v7    # "pr":Lcom/android/server/am/ProcessProviderRecord;
    .local v24, "pr":Lcom/android/server/am/ProcessProviderRecord;
    iget-wide v6, v3, Landroid/content/pm/ApplicationInfo;->longVersionCode:J

    iget-object v3, v2, Lcom/android/server/am/ContentProviderRecord;->name:Landroid/content/ComponentName;

    move-object/from16 v22, v3

    iget-object v3, v2, Lcom/android/server/am/ContentProviderRecord;->info:Landroid/content/pm/ProviderInfo;

    iget-object v3, v3, Landroid/content/pm/ProviderInfo;->processName:Ljava/lang/String;

    move-object/from16 v23, v3

    move-wide/from16 v20, v6

    move/from16 v16, v14

    invoke-virtual/range {v15 .. v23}, Lcom/android/server/am/ActivityManagerService;->startAssociationLocked(ILjava/lang/String;IIJLandroid/content/ComponentName;Ljava/lang/String;)Lcom/android/server/am/ActivityManagerService$Association;

    .line 1501
    if-eqz p8, :cond_5

    iget-object v3, v2, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    if-eqz v3, :cond_5

    iget-object v3, v1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 1502
    invoke-virtual {v3}, Lcom/android/server/am/ProcessStateRecord;->getSetAdj()I

    move-result v3

    const/16 v6, 0xfa

    if-gt v3, v6, :cond_4

    .line 1509
    const-string/jumbo v3, "getContentProviderImpl: before updateLruProcess"

    invoke-direct {v0, v4, v5, v3}, Lcom/android/server/am/ContentProviderHelper;->checkTime(JLjava/lang/String;)V

    .line 1510
    iget-object v3, v2, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    const/4 v6, 0x0

    move-object/from16 v7, p11

    const/4 v14, 0x0

    invoke-virtual {v7, v3, v6, v14}, Lcom/android/server/am/ProcessList;->updateLruProcessLocked(Lcom/android/server/am/ProcessRecord;ZLcom/android/server/am/ProcessRecord;)V

    .line 1511
    const-string/jumbo v3, "getContentProviderImpl: after updateLruProcess"

    invoke-direct {v0, v4, v5, v3}, Lcom/android/server/am/ContentProviderHelper;->checkTime(JLjava/lang/String;)V

    goto :goto_1

    .line 1502
    :cond_4
    move-object/from16 v7, p11

    goto :goto_1

    .line 1501
    :cond_5
    move-object/from16 v7, p11

    .line 1513
    :goto_1
    return-object v11
.end method

.method private isAuthorityRedirectedForCloneProfileCached(Ljava/lang/String;)Z
    .locals 3
    .param p1, "auth"    # Ljava/lang/String;

    .line 2033
    iget-object v0, p0, Lcom/android/server/am/ContentProviderHelper;->mCloneProfileAuthorityRedirectionCache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2034
    iget-object v0, p0, Lcom/android/server/am/ContentProviderHelper;->mCloneProfileAuthorityRedirectionCache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 2035
    .local v0, "retVal":Ljava/lang/Boolean;
    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    :goto_0
    return v1

    .line 2043
    .end local v0    # "retVal":Ljava/lang/Boolean;
    :cond_1
    invoke-static {p1}, Landroid/content/ContentProvider;->isAuthorityRedirectedForCloneProfile(Ljava/lang/String;)Z

    move-result v0

    nop

    if-nez v0, :cond_2

    sget-object v0, Lcom/nothing/server/INtExtServiceFactory$ExtType;->NT_DUAL_APPS_SERVICE:Lcom/nothing/server/INtExtServiceFactory$ExtType;

    .line 2044
    invoke-static {v0}, Lcom/nothing/server/NtExtServiceFactory;->getOrCreate(Lcom/nothing/server/INtExtServiceFactory$ExtType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nothing/server/ext/INtDualAppsService;

    .line 2045
    invoke-interface {v0, p1}, Lcom/nothing/server/ext/INtDualAppsService;->isAuthorityRedirectedForDualAppsProfile(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    const/4 v1, 0x1

    .line 2047
    .local v1, "isAuthRedirected":Z
    :cond_3
    iget-object v0, p0, Lcom/android/server/am/ContentProviderHelper;->mCloneProfileAuthorityRedirectionCache:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2048
    return v1
.end method

.method private isHolderVisibleToCaller(Landroid/app/ContentProviderHolder;II)Z
    .locals 3
    .param p1, "holder"    # Landroid/app/ContentProviderHolder;
    .param p2, "callingUid"    # I
    .param p3, "userId"    # I

    .line 1130
    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-object v1, p1, Landroid/app/ContentProviderHolder;->info:Landroid/content/pm/ProviderInfo;

    if-nez v1, :cond_1

    :cond_0
    goto :goto_0

    .line 1134
    :cond_1
    iget-object v1, p1, Landroid/app/ContentProviderHolder;->info:Landroid/content/pm/ProviderInfo;

    iget-object v1, v1, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/server/am/ContentProviderHelper;->isAuthorityRedirectedForCloneProfileCached(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1135
    invoke-static {p3}, Lcom/android/server/am/ContentProviderHelper;->resolveParentUserIdForCloneProfile(I)I

    move-result v1

    if-eq v1, p3, :cond_2

    .line 1138
    iget-object v1, p0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityManagerService;->getPackageManagerInternal()Landroid/content/pm/PackageManagerInternal;

    move-result-object v1

    iget-object v2, p1, Landroid/app/ContentProviderHolder;->info:Landroid/content/pm/ProviderInfo;

    iget-object v2, v2, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2, p2, p3, v0}, Landroid/content/pm/PackageManagerInternal;->filterAppAccess(Ljava/lang/String;IIZ)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0

    .line 1142
    :cond_2
    iget-object v0, p0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->getPackageManagerInternal()Landroid/content/pm/PackageManagerInternal;

    move-result-object v0

    iget-object v1, p1, Landroid/app/ContentProviderHolder;->info:Landroid/content/pm/ProviderInfo;

    iget-object v1, v1, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1, p2, p3}, Landroid/content/pm/PackageManagerInternal;->filterAppAccess(Ljava/lang/String;II)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0

    .line 1131
    :goto_0
    return v0
.end method

.method private isProcessAliveLocked(Lcom/android/server/am/ProcessRecord;)Z
    .locals 8
    .param p1, "proc"    # Lcom/android/server/am/ProcessRecord;

    .line 1733
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v0

    .line 1734
    .local v0, "pid":I
    const-string v1, "ActivityManager"

    const/4 v2, 0x0

    if-gtz v0, :cond_1

    .line 1735
    sget-boolean v3, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ:Z

    if-eqz v3, :cond_0

    .line 1736
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Process hasn\'t started yet: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1738
    :cond_0
    return v2

    .line 1740
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/proc/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "/stat"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1741
    .local v3, "procStatFile":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/am/ContentProviderHelper;->mProcessStateStatsLongs:[J

    const-wide/16 v5, 0x0

    aput-wide v5, v4, v2

    .line 1742
    sget-object v4, Lcom/android/server/am/ContentProviderHelper;->PROCESS_STATE_STATS_FORMAT:[I

    iget-object v5, p0, Lcom/android/server/am/ContentProviderHelper;->mProcessStateStatsLongs:[J

    const/4 v6, 0x0

    invoke-static {v3, v4, v6, v5, v6}, Landroid/os/Process;->readProcFile(Ljava/lang/String;[I[Ljava/lang/String;[J[F)Z

    move-result v4

    if-nez v4, :cond_3

    .line 1744
    sget-boolean v4, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ:Z

    if-eqz v4, :cond_2

    .line 1745
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "UNABLE TO RETRIEVE STATE FOR "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1748
    :cond_2
    return v2

    .line 1750
    :cond_3
    iget-object v4, p0, Lcom/android/server/am/ContentProviderHelper;->mProcessStateStatsLongs:[J

    aget-wide v4, v4, v2

    .line 1751
    .local v4, "state":J
    sget-boolean v6, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ:Z

    if-eqz v6, :cond_4

    .line 1752
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "RETRIEVED STATE FOR "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    long-to-int v7, v4

    int-to-char v7, v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1755
    :cond_4
    const-wide/16 v6, 0x5a

    cmp-long v1, v4, v6

    if-eqz v1, :cond_6

    const-wide/16 v6, 0x58

    cmp-long v1, v4, v6

    if-eqz v1, :cond_6

    const-wide/16 v6, 0x78

    cmp-long v1, v4, v6

    if-eqz v1, :cond_6

    const-wide/16 v6, 0x4b

    cmp-long v1, v4, v6

    if-eqz v1, :cond_6

    .line 1756
    invoke-static {v0}, Landroid/os/Process;->getUidForPid(I)I

    move-result v1

    iget v6, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    if-ne v1, v6, :cond_5

    const/4 v2, 0x1

    :cond_5
    return v2

    .line 1758
    :cond_6
    return v2
.end method

.method private isSingletonOrSystemUserOnly(Landroid/content/pm/ProviderInfo;)Z
    .locals 5
    .param p1, "pi"    # Landroid/content/pm/ProviderInfo;

    .line 2056
    iget-object v0, p0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v1, p1, Landroid/content/pm/ProviderInfo;->flags:I

    .line 2057
    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityManagerService;->isSystemUserOnly(I)Z

    move-result v0

    nop

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, p1, Landroid/content/pm/ProviderInfo;->processName:Ljava/lang/String;

    iget-object v2, p1, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, p1, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    iget v4, p1, Landroid/content/pm/ProviderInfo;->flags:I

    .line 2058
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/am/ActivityManagerService;->isSingleton(Ljava/lang/String;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 2056
    :goto_1
    return v0
.end method

.method private synthetic lambda$checkContentProviderAssociation$4(Lcom/android/server/am/ProcessRecord;Landroid/content/pm/ProviderInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "callingApp"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "cpi"    # Landroid/content/pm/ProviderInfo;
    .param p3, "pkgName"    # Ljava/lang/String;

    .line 1680
    iget-object v0, p0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v1, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    iget-object v2, p2, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    iget-object v3, p2, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v0, p3, v1, v2, v3}, Lcom/android/server/am/ActivityManagerService;->validateAssociationAllowedLocked(Ljava/lang/String;ILjava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1682
    iget-object v0, p2, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    return-object v0

    .line 1684
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private synthetic lambda$decProviderCountLocked$3(Lcom/android/server/am/ContentProviderConnection;ZZ)V
    .locals 0
    .param p1, "conn"    # Lcom/android/server/am/ContentProviderConnection;
    .param p2, "stable"    # Z
    .param p3, "updateOomAdj"    # Z

    .line 1534
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/am/ContentProviderHelper;->handleProviderRemoval(Lcom/android/server/am/ContentProviderConnection;ZZ)V

    .line 1535
    return-void
.end method

.method private synthetic lambda$getMimeTypeFilterAsync$0(Ljava/lang/String;ILandroid/os/RemoteCallback;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "safeUserId"    # I
    .param p3, "resultCallback"    # Landroid/os/RemoteCallback;
    .param p4, "result"    # Landroid/os/Bundle;

    .line 1069
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1071
    .local v0, "identity":J
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v2, p2}, Lcom/android/server/am/ContentProviderHelper;->removeContentProviderExternalUnchecked(Ljava/lang/String;Landroid/os/IBinder;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1073
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1074
    nop

    .line 1075
    invoke-virtual {p3, p4}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V

    .line 1076
    return-void

    .line 1073
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1074
    throw v2
.end method

.method private synthetic lambda$getMimeTypeFilterAsync$1(Ljava/lang/String;ILandroid/os/RemoteCallback;ILandroid/net/Uri;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "safeUserId"    # I
    .param p3, "resultCallback"    # Landroid/os/RemoteCallback;
    .param p4, "callingUid"    # I
    .param p5, "uri"    # Landroid/net/Uri;
    .param p6, "result"    # Landroid/os/Bundle;

    .line 1079
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1081
    .local v0, "identity":J
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v2, p2}, Lcom/android/server/am/ContentProviderHelper;->removeContentProviderExternalUnchecked(Ljava/lang/String;Landroid/os/IBinder;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1083
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1084
    nop

    .line 1085
    invoke-virtual {p3, p6}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V

    .line 1086
    invoke-virtual {p6}, Landroid/os/Bundle;->getPairValue()Ljava/lang/String;

    move-result-object v2

    .line 1087
    .local v2, "type":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 1088
    invoke-direct {p0, p4, p5, v2}, Lcom/android/server/am/ContentProviderHelper;->logGetTypeData(ILandroid/net/Uri;Ljava/lang/String;)V

    .line 1090
    :cond_0
    return-void

    .line 1083
    .end local v2    # "type":Ljava/lang/String;
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1084
    throw v2
.end method

.method private synthetic lambda$installEncryptionUnawareProviders$2(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)V
    .locals 16
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "pkgName"    # Ljava/lang/String;

    .line 1436
    move-object/from16 v1, p1

    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    iget v2, v1, Lcom/android/server/am/ProcessRecord;->userId:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2

    .line 1437
    const-wide/32 v3, 0x40008

    move-object/from16 v5, p2

    :try_start_1
    invoke-interface {v0, v5, v3, v4, v2}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;JI)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 1438
    .local v0, "pkgInfo":Landroid/content/pm/PackageInfo;
    invoke-virtual {v1}, Lcom/android/server/am/ProcessRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object v2

    .line 1439
    .local v2, "thread":Landroid/app/IApplicationThread;
    if-eqz v0, :cond_9

    iget-object v3, v0, Landroid/content/pm/PackageInfo;->providers:[Landroid/content/pm/ProviderInfo;

    invoke-static {v3}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 1440
    iget-object v3, v0, Landroid/content/pm/PackageInfo;->providers:[Landroid/content/pm/ProviderInfo;

    array-length v4, v3

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v4, :cond_8

    aget-object v8, v3, v7

    .line 1442
    .local v8, "pi":Landroid/content/pm/ProviderInfo;
    iget-object v9, v8, Landroid/content/pm/ProviderInfo;->processName:Ljava/lang/String;

    iget-object v10, v1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 1443
    invoke-static {v9, v10}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    const/4 v10, 0x1

    if-nez v9, :cond_0

    iget-boolean v9, v8, Landroid/content/pm/ProviderInfo;->multiprocess:Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz v9, :cond_1

    :cond_0
    goto :goto_1

    :cond_1
    const/4 v9, 0x0

    goto :goto_2

    .line 1460
    .end local v0    # "pkgInfo":Landroid/content/pm/PackageInfo;
    .end local v2    # "thread":Landroid/app/IApplicationThread;
    .end local v8    # "pi":Landroid/content/pm/ProviderInfo;
    :catch_0
    move-exception v0

    move-object/from16 v11, p0

    goto/16 :goto_9

    .line 1443
    .restart local v0    # "pkgInfo":Landroid/content/pm/PackageInfo;
    .restart local v2    # "thread":Landroid/app/IApplicationThread;
    .restart local v8    # "pi":Landroid/content/pm/ProviderInfo;
    :goto_1
    move v9, v10

    :goto_2
    nop

    .line 1445
    .local v9, "processMatch":Z
    move-object/from16 v11, p0

    :try_start_2
    invoke-direct {v11, v8}, Lcom/android/server/am/ContentProviderHelper;->isSingletonOrSystemUserOnly(Landroid/content/pm/ProviderInfo;)Z

    move-result v12

    if-eqz v12, :cond_2

    iget v12, v1, Lcom/android/server/am/ProcessRecord;->userId:I

    if-nez v12, :cond_3

    :cond_2
    goto :goto_3

    :cond_3
    const/4 v12, 0x0

    goto :goto_4

    .line 1460
    .end local v0    # "pkgInfo":Landroid/content/pm/PackageInfo;
    .end local v2    # "thread":Landroid/app/IApplicationThread;
    .end local v8    # "pi":Landroid/content/pm/ProviderInfo;
    .end local v9    # "processMatch":Z
    :catch_1
    move-exception v0

    goto :goto_9

    .line 1445
    .restart local v0    # "pkgInfo":Landroid/content/pm/PackageInfo;
    .restart local v2    # "thread":Landroid/app/IApplicationThread;
    .restart local v8    # "pi":Landroid/content/pm/ProviderInfo;
    .restart local v9    # "processMatch":Z
    :goto_3
    move v12, v10

    :goto_4
    nop

    .line 1447
    .local v12, "userMatch":Z
    iget-object v13, v8, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v13}, Landroid/content/pm/ApplicationInfo;->isInstantApp()Z

    move-result v13

    .line 1448
    .local v13, "isInstantApp":Z
    iget-object v14, v8, Landroid/content/pm/ProviderInfo;->splitName:Ljava/lang/String;

    if-eqz v14, :cond_5

    iget-object v14, v8, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v14, v14, Landroid/content/pm/ApplicationInfo;->splitNames:[Ljava/lang/String;

    iget-object v15, v8, Landroid/content/pm/ProviderInfo;->splitName:Ljava/lang/String;

    .line 1449
    invoke-static {v14, v15}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v14
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_1

    if-eqz v14, :cond_4

    goto :goto_5

    :cond_4
    const/4 v10, 0x0

    goto :goto_6

    :cond_5
    :goto_5
    nop

    :goto_6
    nop

    .line 1451
    .local v10, "splitInstalled":Z
    const-string v14, "ContentProviderHelper"

    if-eqz v9, :cond_7

    if-eqz v12, :cond_7

    if-eqz v13, :cond_6

    if-eqz v10, :cond_7

    .line 1453
    :cond_6
    :try_start_3
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Installing "

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v14, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1454
    invoke-interface {v2, v8}, Landroid/app/IApplicationThread;->scheduleInstallProvider(Landroid/content/pm/ProviderInfo;)V

    goto :goto_7

    .line 1456
    :cond_7
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Skipping "

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v14, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_1

    .line 1440
    .end local v8    # "pi":Landroid/content/pm/ProviderInfo;
    .end local v9    # "processMatch":Z
    .end local v10    # "splitInstalled":Z
    .end local v12    # "userMatch":Z
    .end local v13    # "isInstantApp":Z
    :goto_7
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    :cond_8
    move-object/from16 v11, p0

    goto :goto_8

    .line 1439
    :cond_9
    move-object/from16 v11, p0

    .line 1461
    .end local v0    # "pkgInfo":Landroid/content/pm/PackageInfo;
    .end local v2    # "thread":Landroid/app/IApplicationThread;
    :goto_8
    goto :goto_9

    .line 1460
    :catch_2
    move-exception v0

    move-object/from16 v11, p0

    move-object/from16 v5, p2

    .line 1462
    :goto_9
    return-void
.end method

.method private logGetTypeData(ILandroid/net/Uri;Ljava/lang/String;)V
    .locals 3
    .param p1, "callingUid"    # I
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "type"    # Ljava/lang/String;

    .line 1111
    nop

    .line 1113
    invoke-virtual {p2}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    .line 1111
    const/16 v1, 0x234

    const/4 v2, 0x1

    invoke-static {v1, v2, p1, v0, p3}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIILjava/lang/String;Ljava/lang/String;)V

    .line 1114
    return-void
.end method

.method private maybeUpdateProviderUsageStatsLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "providerPkgName"    # Ljava/lang/String;
    .param p3, "authority"    # Ljava/lang/String;

    .line 1705
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v0

    const/4 v1, 0x6

    if-le v0, v1, :cond_1

    :cond_0
    goto :goto_0

    .line 1710
    :cond_1
    iget-object v0, p0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    iget v1, p1, Lcom/android/server/am/ProcessRecord;->userId:I

    invoke-virtual {v0, v1}, Lcom/android/server/am/UserController;->getStartedUserState(I)Lcom/android/server/am/UserState;

    move-result-object v0

    .line 1711
    .local v0, "userState":Lcom/android/server/am/UserState;
    if-nez v0, :cond_2

    return-void

    .line 1712
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    .line 1713
    .local v1, "now":J
    iget-object v3, v0, Lcom/android/server/am/UserState;->mProviderLastReportedFg:Landroid/util/ArrayMap;

    invoke-virtual {v3, p3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    .line 1714
    .local v3, "lastReported":Ljava/lang/Long;
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/32 v6, 0xea60

    sub-long v6, v1, v6

    cmp-long v4, v4, v6

    if-gez v4, :cond_5

    .line 1715
    :cond_3
    iget-object v4, p0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v4, v4, Lcom/android/server/am/ActivityManagerService;->mSystemReady:Z

    if-eqz v4, :cond_4

    .line 1717
    iget-object v4, p0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mUsageStatsService:Landroid/app/usage/UsageStatsManagerInternal;

    iget v5, p1, Lcom/android/server/am/ProcessRecord;->userId:I

    invoke-virtual {v4, p3, p2, v5}, Landroid/app/usage/UsageStatsManagerInternal;->reportContentProviderUsage(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1720
    :cond_4
    iget-object v4, v0, Lcom/android/server/am/UserState;->mProviderLastReportedFg:Landroid/util/ArrayMap;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, p3, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1722
    :cond_5
    return-void

    .line 1707
    .end local v0    # "userState":Lcom/android/server/am/UserState;
    .end local v1    # "now":J
    .end local v3    # "lastReported":Ljava/lang/Long;
    :goto_0
    return-void
.end method

.method private requestTargetProviderPermissionsReviewIfNeededLocked(Landroid/content/pm/ProviderInfo;Lcom/android/server/am/ProcessRecord;ILandroid/content/Context;)Z
    .locals 7
    .param p1, "cpi"    # Landroid/content/pm/ProviderInfo;
    .param p2, "r"    # Lcom/android/server/am/ProcessRecord;
    .param p3, "userId"    # I
    .param p4, "context"    # Landroid/content/Context;

    .line 1780
    iget-object v0, p0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->getPackageManagerInternal()Landroid/content/pm/PackageManagerInternal;

    move-result-object v0

    iget-object v1, p1, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1, p3}, Landroid/content/pm/PackageManagerInternal;->isPermissionsReviewRequired(Ljava/lang/String;I)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 1782
    return v1

    .line 1785
    :cond_0
    const/4 v0, 0x0

    nop

    if-eqz p2, :cond_2

    iget-object v2, p2, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 1786
    invoke-virtual {v2}, Lcom/android/server/am/ProcessStateRecord;->getSetSchedGroup()I

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    move v1, v0

    goto :goto_1

    :cond_2
    :goto_0
    nop

    :goto_1
    nop

    .line 1789
    .local v1, "callerForeground":Z
    const-string/jumbo v2, "u"

    const-string v3, "ContentProviderHelper"

    if-nez v1, :cond_3

    .line 1790
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " Instantiating a provider in package "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " requires a permissions review"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1792
    return v0

    .line 1795
    :cond_3
    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.REVIEW_PERMISSIONS"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1796
    .local v4, "intent":Landroid/content/Intent;
    const/high16 v5, 0x10800000

    invoke-virtual {v4, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1797
    const-string v5, "android.intent.extra.PACKAGE_NAME"

    iget-object v6, p1, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1799
    sget-boolean v5, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PERMISSIONS_REVIEW:Z

    if-eqz v5, :cond_4

    .line 1800
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " Launching permission review for package "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1804
    :cond_4
    new-instance v2, Landroid/os/UserHandle;

    invoke-direct {v2, p3}, Landroid/os/UserHandle;-><init>(I)V

    .line 1805
    .local v2, "userHandle":Landroid/os/UserHandle;
    iget-object v3, p0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    new-instance v5, Lcom/android/server/am/ContentProviderHelper$StartActivityRunnable;

    invoke-direct {v5, p4, v4, v2}, Lcom/android/server/am/ContentProviderHelper$StartActivityRunnable;-><init>(Landroid/content/Context;Landroid/content/Intent;Landroid/os/UserHandle;)V

    invoke-virtual {v3, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1807
    return v0
.end method

.method private static resolveParentUserIdForCloneProfile(I)I
    .locals 3
    .param p0, "userId"    # I

    .line 1147
    const-class v0, Lcom/android/server/pm/UserManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/UserManagerInternal;

    .line 1148
    .local v0, "umInternal":Lcom/android/server/pm/UserManagerInternal;
    invoke-virtual {v0, p0}, Lcom/android/server/pm/UserManagerInternal;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    .line 1150
    .local v1, "userInfo":Landroid/content/pm/UserInfo;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isCloneProfile()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    goto :goto_0

    .line 1154
    :cond_1
    invoke-virtual {v0, p0}, Lcom/android/server/pm/UserManagerInternal;->getProfileParentId(I)I

    move-result v2

    return v2

    .line 1151
    :goto_0
    return p0
.end method


# virtual methods
.method appNotRespondingViaProvider(Landroid/os/IBinder;)V
    .locals 6
    .param p1, "connection"    # Landroid/os/IBinder;

    .line 1010
    iget-object v0, p0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string v1, "android.permission.REMOVE_TASKS"

    const-string v2, "appNotRespondingViaProvider()"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityManagerService;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1013
    move-object v0, p1

    check-cast v0, Lcom/android/server/am/ContentProviderConnection;

    .line 1014
    .local v0, "conn":Lcom/android/server/am/ContentProviderConnection;
    const-string v1, "ContentProviderHelper"

    if-nez v0, :cond_0

    .line 1015
    const-string v2, "ContentProviderConnection is null"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1016
    return-void

    .line 1019
    :cond_0
    nop

    .line 1021
    iget-object v2, v0, Lcom/android/server/am/ContentProviderConnection;->provider:Lcom/android/server/am/ContentProviderRecord;

    if-eqz v2, :cond_1

    iget-object v2, v0, Lcom/android/server/am/ContentProviderConnection;->provider:Lcom/android/server/am/ContentProviderRecord;

    iget-object v2, v2, Lcom/android/server/am/ContentProviderRecord;->info:Landroid/content/pm/ProviderInfo;

    if-eqz v2, :cond_1

    .line 1022
    iget-object v2, v0, Lcom/android/server/am/ContentProviderConnection;->provider:Lcom/android/server/am/ContentProviderRecord;

    iget-object v2, v2, Lcom/android/server/am/ContentProviderRecord;->info:Landroid/content/pm/ProviderInfo;

    iget-object v2, v2, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const-string v2, ""

    .line 1019
    :goto_0
    const-wide/16 v3, 0x40

    const-string v5, "appNotRespondingViaProvider: "

    invoke-static {v3, v4, v5, v2}, Lcom/android/server/am/ActivityManagerService;->traceBegin(JLjava/lang/String;Ljava/lang/String;)V

    .line 1024
    :try_start_0
    iget-object v2, v0, Lcom/android/server/am/ContentProviderConnection;->provider:Lcom/android/server/am/ContentProviderRecord;

    iget-object v2, v2, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    .line 1025
    .local v2, "host":Lcom/android/server/am/ProcessRecord;
    if-nez v2, :cond_2

    .line 1026
    const-string v5, "Failed to find hosting ProcessRecord"

    invoke-static {v1, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1034
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    .line 1027
    return-void

    .line 1034
    .end local v2    # "host":Lcom/android/server/am/ProcessRecord;
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 1030
    .restart local v2    # "host":Lcom/android/server/am/ProcessRecord;
    :cond_2
    :try_start_1
    const-string v1, "ContentProvider not responding"

    invoke-static {v1}, Lcom/android/internal/os/TimeoutRecord;->forContentProvider(Ljava/lang/String;)Lcom/android/internal/os/TimeoutRecord;

    move-result-object v1

    .line 1032
    .local v1, "timeoutRecord":Lcom/android/internal/os/TimeoutRecord;
    iget-object v5, p0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mAnrHelper:Lcom/android/server/am/AnrHelper;

    invoke-virtual {v5, v2, v1}, Lcom/android/server/am/AnrHelper;->appNotResponding(Lcom/android/server/am/ProcessRecord;Lcom/android/internal/os/TimeoutRecord;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1034
    .end local v1    # "timeoutRecord":Lcom/android/internal/os/TimeoutRecord;
    .end local v2    # "host":Lcom/android/server/am/ProcessRecord;
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    .line 1035
    nop

    .line 1036
    return-void

    .line 1034
    :goto_1
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    .line 1035
    throw v1
.end method

.method checkAppInLaunchingProvidersLocked(Lcom/android/server/am/ProcessRecord;)Z
    .locals 4
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .line 1907
    iget-object v0, p0, Lcom/android/server/am/ContentProviderHelper;->mLaunchingProviders:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 1908
    iget-object v2, p0, Lcom/android/server/am/ContentProviderHelper;->mLaunchingProviders:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ContentProviderRecord;

    .line 1909
    .local v2, "cpr":Lcom/android/server/am/ContentProviderRecord;
    iget-object v3, v2, Lcom/android/server/am/ContentProviderRecord;->launchingApp:Lcom/android/server/am/ProcessRecord;

    if-ne v3, p1, :cond_0

    .line 1910
    return v1

    .line 1909
    :cond_0
    nop

    .line 1907
    .end local v2    # "cpr":Lcom/android/server/am/ContentProviderRecord;
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    nop

    .line 1913
    .end local v0    # "i":I
    const/4 v0, 0x0

    return v0
.end method

.method checkContentProviderAccess(Ljava/lang/String;I)Ljava/lang/String;
    .locals 10
    .param p1, "authority"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 1162
    const/4 v0, 0x1

    .line 1163
    .local v0, "checkUser":Z
    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    .line 1164
    iget-object v1, p0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.INTERACT_ACROSS_USERS_FULL"

    const-string v3, "ContentProviderHelper"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1166
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result p2

    .line 1169
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/am/ContentProviderHelper;->isAuthorityRedirectedForCloneProfileCached(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1170
    const-class v1, Lcom/android/server/pm/UserManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/UserManagerInternal;

    .line 1171
    .local v1, "umInternal":Lcom/android/server/pm/UserManagerInternal;
    invoke-virtual {v1, p2}, Lcom/android/server/pm/UserManagerInternal;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v2

    .line 1173
    .local v2, "userInfo":Landroid/content/pm/UserInfo;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isCloneProfile()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1174
    invoke-virtual {v1, p2}, Lcom/android/server/pm/UserManagerInternal;->getProfileParentId(I)I

    move-result p2

    .line 1175
    const/4 v0, 0x0

    move v7, p2

    move v8, v0

    goto :goto_0

    .line 1178
    :cond_1
    sget-object v3, Lcom/nothing/server/INtExtServiceFactory$ExtType;->NT_DUAL_APPS_SERVICE:Lcom/nothing/server/INtExtServiceFactory$ExtType;

    invoke-static {v3}, Lcom/nothing/server/NtExtServiceFactory;->getOrCreate(Lcom/nothing/server/INtExtServiceFactory$ExtType;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/nothing/server/ext/INtDualAppsService;

    .line 1179
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v4

    invoke-interface {v3, v4}, Lcom/nothing/server/ext/INtDualAppsService;->isDualAppsUserId(I)Z

    move-result v3

    if-eqz v3, :cond_2

    if-nez p2, :cond_2

    .line 1180
    const/4 v0, 0x0

    move v7, p2

    move v8, v0

    goto :goto_0

    .line 1185
    .end local v1    # "umInternal":Lcom/android/server/pm/UserManagerInternal;
    .end local v2    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_2
    move v7, p2

    move v8, v0

    .end local v0    # "checkUser":Z
    .end local p2    # "userId":I
    .local v7, "userId":I
    .local v8, "checkUser":Z
    :goto_0
    const/4 p2, 0x0

    .line 1187
    .local p2, "cpi":Landroid/content/pm/ProviderInfo;
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    const-wide/32 v1, 0xc0e00

    invoke-interface {v0, p1, v1, v2, v7}, Landroid/content/pm/IPackageManager;->resolveContentProvider(Ljava/lang/String;JI)Landroid/content/pm/ProviderInfo;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object p2, v0

    .line 1195
    move-object v4, p2

    goto :goto_1

    .line 1194
    :catch_0
    move-exception v0

    move-object v4, p2

    .line 1196
    .end local p2    # "cpi":Landroid/content/pm/ProviderInfo;
    .local v4, "cpi":Landroid/content/pm/ProviderInfo;
    :goto_1
    if-nez v4, :cond_3

    .line 1197
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed to find provider "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " for user "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "; expected to find a valid ContentProvider for this authority"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    return-object p2

    .line 1201
    :cond_3
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    .line 1204
    .local v5, "callingPid":I
    iget-object p2, p0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p2, p2, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    monitor-enter p2

    .line 1205
    :try_start_1
    iget-object v0, p0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    invoke-virtual {v0, v5}, Lcom/android/server/am/ActivityManagerService$PidMap;->get(I)Lcom/android/server/am/ProcessRecord;

    move-result-object v0

    .line 1206
    .local v0, "r":Lcom/android/server/am/ProcessRecord;
    if-nez v0, :cond_4

    .line 1207
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to find PID "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    monitor-exit p2

    return-object v1

    .line 1210
    .end local v0    # "r":Lcom/android/server/am/ProcessRecord;
    :catchall_0
    move-exception v0

    goto :goto_2

    .line 1209
    .restart local v0    # "r":Lcom/android/server/am/ProcessRecord;
    :cond_4
    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1210
    .local v9, "appName":Ljava/lang/String;
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1212
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    move-object v3, p0

    invoke-direct/range {v3 .. v9}, Lcom/android/server/am/ContentProviderHelper;->checkContentProviderPermission(Landroid/content/pm/ProviderInfo;IIIZLjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    return-object p2

    .line 1210
    .end local v0    # "r":Lcom/android/server/am/ProcessRecord;
    .end local v9    # "appName":Ljava/lang/String;
    :goto_2
    :try_start_2
    monitor-exit p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method checkContentProviderUriPermission(Landroid/net/Uri;III)I
    .locals 15
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "userId"    # I
    .param p3, "callingUid"    # I
    .param p4, "modeFlags"    # I

    .line 1217
    move-object/from16 v1, p1

    iget-object v0, p0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mActivityTaskManager:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getGlobalLock()Lcom/android/server/wm/WindowManagerGlobalLock;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    const-string v8, "ContentProviderHelper"

    const/4 v9, -0x1

    if-eqz v0, :cond_0

    .line 1218
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Unable to check Uri permission because caller is holding WM lock; assuming permission denied"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v8, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1220
    return v9

    .line 1223
    :cond_0
    invoke-virtual {v1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v3

    .line 1224
    .local v3, "name":Ljava/lang/String;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    .line 1225
    .local v10, "ident":J
    const/4 v12, 0x0

    .line 1227
    .local v12, "holder":Landroid/app/ContentProviderHolder;
    const/4 v13, 0x0

    :try_start_0
    const-string v6, "*checkContentProviderUriPermission*"
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    const/4 v4, 0x0

    move-object v2, p0

    move/from16 v7, p2

    move/from16 v5, p3

    :try_start_1
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/am/ContentProviderHelper;->getContentProviderExternalUnchecked(Ljava/lang/String;Landroid/os/IBinder;ILjava/lang/String;I)Landroid/app/ContentProviderHolder;

    move-result-object v0

    move-object v12, v0

    .line 1229
    if-eqz v12, :cond_2

    .line 1231
    iget-object v0, p0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->getPackageManagerInternal()Landroid/content/pm/PackageManagerInternal;

    move-result-object v0

    .line 1232
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/content/pm/PackageManagerInternal;->getPackage(I)Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    move-object v4, v0

    .line 1233
    .local v4, "androidPackage":Lcom/android/server/pm/pkg/AndroidPackage;
    if-nez v4, :cond_1

    .line 1234
    nop

    .line 1250
    nop

    .line 1251
    :try_start_2
    invoke-virtual {p0, v3, v13, v7}, Lcom/android/server/am/ContentProviderHelper;->removeContentProviderExternalUnchecked(Ljava/lang/String;Landroid/os/IBinder;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1254
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1255
    nop

    .line 1234
    return v9

    .line 1254
    :catchall_0
    move-exception v0

    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1255
    throw v0

    .line 1237
    :cond_1
    :try_start_3
    new-instance v0, Landroid/content/AttributionSource;

    .line 1238
    invoke-interface {v4}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v5, v6, v13}, Landroid/content/AttributionSource;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    move-object v6, v0

    .line 1239
    .local v6, "attributionSource":Landroid/content/AttributionSource;
    iget-object v0, v12, Landroid/app/ContentProviderHolder;->provider:Landroid/content/IContentProvider;
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    move/from16 v14, p4

    :try_start_4
    invoke-interface {v0, v6, v1, v5, v14}, Landroid/content/IContentProvider;->checkUriPermission(Landroid/content/AttributionSource;Landroid/net/Uri;II)I

    move-result v0
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 1250
    nop

    .line 1251
    :try_start_5
    invoke-virtual {p0, v3, v13, v7}, Lcom/android/server/am/ContentProviderHelper;->removeContentProviderExternalUnchecked(Ljava/lang/String;Landroid/os/IBinder;I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1254
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1255
    nop

    .line 1239
    return v0

    .line 1254
    :catchall_1
    move-exception v0

    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1255
    throw v0

    .line 1249
    .end local v4    # "androidPackage":Lcom/android/server/pm/pkg/AndroidPackage;
    .end local v6    # "attributionSource":Landroid/content/AttributionSource;
    :catchall_2
    move-exception v0

    goto/16 :goto_8

    .line 1245
    :catch_0
    move-exception v0

    goto :goto_4

    .line 1242
    :catch_1
    move-exception v0

    goto :goto_6

    .line 1249
    :catchall_3
    move-exception v0

    :goto_0
    move/from16 v14, p4

    goto/16 :goto_8

    .line 1245
    :catch_2
    move-exception v0

    :goto_1
    move/from16 v14, p4

    goto :goto_4

    .line 1242
    :catch_3
    move-exception v0

    :goto_2
    move/from16 v14, p4

    goto :goto_6

    .line 1250
    :cond_2
    move/from16 v14, p4

    if-eqz v12, :cond_3

    .line 1251
    :try_start_6
    invoke-virtual {p0, v3, v13, v7}, Lcom/android/server/am/ContentProviderHelper;->removeContentProviderExternalUnchecked(Ljava/lang/String;Landroid/os/IBinder;I)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    goto :goto_3

    .line 1254
    :catchall_4
    move-exception v0

    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1255
    throw v0

    .line 1254
    :cond_3
    :goto_3
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1255
    nop

    .line 1256
    nop

    .line 1257
    return v9

    .line 1249
    :catchall_5
    move-exception v0

    move/from16 v7, p2

    move/from16 v5, p3

    goto :goto_0

    .line 1245
    :catch_4
    move-exception v0

    move/from16 v7, p2

    move/from16 v5, p3

    goto :goto_1

    :goto_4
    move-object v4, v0

    .line 1246
    .local v4, "e":Ljava/lang/Exception;
    :try_start_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception while determining type of "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 1247
    nop

    .line 1250
    if-eqz v12, :cond_4

    .line 1251
    :try_start_8
    invoke-virtual {p0, v3, v13, v7}, Lcom/android/server/am/ContentProviderHelper;->removeContentProviderExternalUnchecked(Ljava/lang/String;Landroid/os/IBinder;I)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_6

    goto :goto_5

    .line 1254
    :catchall_6
    move-exception v0

    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1255
    throw v0

    .line 1254
    :cond_4
    :goto_5
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1255
    nop

    .line 1247
    return v9

    .line 1242
    .end local v4    # "e":Ljava/lang/Exception;
    :catch_5
    move-exception v0

    move/from16 v7, p2

    move/from16 v5, p3

    goto :goto_2

    :goto_6
    move-object v4, v0

    .line 1243
    .local v4, "e":Landroid/os/RemoteException;
    :try_start_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Content provider dead retrieving "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 1244
    nop

    .line 1250
    if-eqz v12, :cond_5

    .line 1251
    :try_start_a
    invoke-virtual {p0, v3, v13, v7}, Lcom/android/server/am/ContentProviderHelper;->removeContentProviderExternalUnchecked(Ljava/lang/String;Landroid/os/IBinder;I)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_7

    goto :goto_7

    .line 1254
    :catchall_7
    move-exception v0

    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1255
    throw v0

    .line 1254
    :cond_5
    :goto_7
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1255
    nop

    .line 1244
    return v9

    .line 1250
    .end local v4    # "e":Landroid/os/RemoteException;
    :goto_8
    if-eqz v12, :cond_6

    .line 1251
    :try_start_b
    invoke-virtual {p0, v3, v13, v7}, Lcom/android/server/am/ContentProviderHelper;->removeContentProviderExternalUnchecked(Ljava/lang/String;Landroid/os/IBinder;I)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_8

    goto :goto_9

    .line 1254
    :catchall_8
    move-exception v0

    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1255
    throw v0

    .line 1254
    :cond_6
    :goto_9
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1255
    nop

    .line 1256
    throw v0
.end method

.method cleanupAppInLaunchingProvidersLocked(Lcom/android/server/am/ProcessRecord;Z)Z
    .locals 6
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "alwaysBad"    # Z

    .line 1921
    const/4 v0, 0x0

    .line 1922
    .local v0, "restart":Z
    iget-object v1, p0, Lcom/android/server/am/ContentProviderHelper;->mLaunchingProviders:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_3

    .line 1923
    iget-object v3, p0, Lcom/android/server/am/ContentProviderHelper;->mLaunchingProviders:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ContentProviderRecord;

    .line 1924
    .local v3, "cpr":Lcom/android/server/am/ContentProviderRecord;
    iget-object v4, v3, Lcom/android/server/am/ContentProviderRecord;->launchingApp:Lcom/android/server/am/ProcessRecord;

    if-eq v4, p1, :cond_0

    .line 1925
    goto :goto_1

    .line 1928
    :cond_0
    iget v4, v3, Lcom/android/server/am/ContentProviderRecord;->mRestartCount:I

    add-int/2addr v4, v2

    iput v4, v3, Lcom/android/server/am/ContentProviderRecord;->mRestartCount:I

    const/4 v5, 0x3

    if-le v4, v5, :cond_1

    .line 1930
    const/4 p2, 0x1

    .line 1932
    :cond_1
    if-nez p2, :cond_2

    iget-object v4, p1, Lcom/android/server/am/ProcessRecord;->mErrorState:Lcom/android/server/am/ProcessErrorStateRecord;

    invoke-virtual {v4}, Lcom/android/server/am/ProcessErrorStateRecord;->isBad()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v3}, Lcom/android/server/am/ContentProviderRecord;->hasConnectionOrHandle()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1933
    const/4 v0, 0x1

    goto :goto_1

    .line 1935
    :cond_2
    invoke-virtual {p0, p1, v3, v2}, Lcom/android/server/am/ContentProviderHelper;->removeDyingProviderLocked(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ContentProviderRecord;Z)Z

    .line 1922
    .end local v3    # "cpr":Lcom/android/server/am/ContentProviderRecord;
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_3
    nop

    .line 1938
    .end local v1    # "i":I
    return v0
.end method

.method cleanupLaunchingProvidersLocked()V
    .locals 3

    .line 1942
    iget-object v0, p0, Lcom/android/server/am/ContentProviderHelper;->mLaunchingProviders:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 1943
    iget-object v1, p0, Lcom/android/server/am/ContentProviderHelper;->mLaunchingProviders:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ContentProviderRecord;

    .line 1944
    .local v1, "cpr":Lcom/android/server/am/ContentProviderRecord;
    iget-object v2, v1, Lcom/android/server/am/ContentProviderRecord;->connections:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gtz v2, :cond_0

    invoke-virtual {v1}, Lcom/android/server/am/ContentProviderRecord;->hasExternalProcessHandles()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1945
    monitor-enter v1

    .line 1946
    const/4 v2, 0x0

    :try_start_0
    iput-object v2, v1, Lcom/android/server/am/ContentProviderRecord;->launchingApp:Lcom/android/server/am/ProcessRecord;

    .line 1947
    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 1948
    monitor-exit v1

    goto :goto_1

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 1942
    .end local v1    # "cpr":Lcom/android/server/am/ContentProviderRecord;
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    nop

    .line 1951
    .end local v0    # "i":I
    return-void
.end method

.method protected dumpProvider(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/String;IZ)Z
    .locals 7
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "args"    # [Ljava/lang/String;
    .param p5, "opti"    # I
    .param p6, "dumpAll"    # Z

    .line 2020
    iget-object v0, p0, Lcom/android/server/am/ContentProviderHelper;->mProviderMap:Lcom/android/server/am/ProviderMap;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    .end local p1    # "fd":Ljava/io/FileDescriptor;
    .end local p2    # "pw":Ljava/io/PrintWriter;
    .end local p3    # "name":Ljava/lang/String;
    .end local p4    # "args":[Ljava/lang/String;
    .end local p5    # "opti":I
    .end local p6    # "dumpAll":Z
    .local v1, "fd":Ljava/io/FileDescriptor;
    .local v2, "pw":Ljava/io/PrintWriter;
    .local v3, "name":Ljava/lang/String;
    .local v4, "args":[Ljava/lang/String;
    .local v5, "opti":I
    .local v6, "dumpAll":Z
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/am/ProviderMap;->dumpProvider(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/String;IZ)Z

    move-result p1

    return p1
.end method

.method protected dumpProviderProto(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 1
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "args"    # [Ljava/lang/String;

    .line 2029
    iget-object v0, p0, Lcom/android/server/am/ContentProviderHelper;->mProviderMap:Lcom/android/server/am/ProviderMap;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/am/ProviderMap;->dumpProviderProto(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method dumpProvidersLocked(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;IZLjava/lang/String;)V
    .locals 7
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;
    .param p4, "opti"    # I
    .param p5, "dumpAll"    # Z
    .param p6, "dumpPackage"    # Ljava/lang/String;

    .line 1963
    new-instance v0, Lcom/android/server/am/ActivityManagerService$ItemMatcher;

    invoke-direct {v0}, Lcom/android/server/am/ActivityManagerService$ItemMatcher;-><init>()V

    .line 1964
    .local v0, "matcher":Lcom/android/server/am/ActivityManagerService$ItemMatcher;
    invoke-virtual {v0, p3, p4}, Lcom/android/server/am/ActivityManagerService$ItemMatcher;->build([Ljava/lang/String;I)I

    .line 1966
    const-string v1, "ACTIVITY MANAGER CONTENT PROVIDERS (dumpsys activity providers)"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1968
    iget-object v1, p0, Lcom/android/server/am/ContentProviderHelper;->mProviderMap:Lcom/android/server/am/ProviderMap;

    invoke-virtual {v1, p2, p5, p6}, Lcom/android/server/am/ProviderMap;->dumpProvidersLocked(Ljava/io/PrintWriter;ZLjava/lang/String;)Z

    move-result v1

    .line 1969
    .local v1, "needSep":Z
    move v2, v1

    .line 1971
    .local v2, "printedAnything":Z
    iget-object v3, p0, Lcom/android/server/am/ContentProviderHelper;->mLaunchingProviders:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_3

    .line 1972
    const/4 v3, 0x0

    .line 1973
    .local v3, "printed":Z
    iget-object v4, p0, Lcom/android/server/am/ContentProviderHelper;->mLaunchingProviders:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    .local v4, "i":I
    :goto_0
    if-ltz v4, :cond_3

    .line 1974
    iget-object v5, p0, Lcom/android/server/am/ContentProviderHelper;->mLaunchingProviders:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ContentProviderRecord;

    .line 1975
    .local v5, "r":Lcom/android/server/am/ContentProviderRecord;
    if-eqz p6, :cond_0

    iget-object v6, v5, Lcom/android/server/am/ContentProviderRecord;->name:Landroid/content/ComponentName;

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p6, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 1976
    goto :goto_1

    .line 1978
    :cond_0
    if-nez v3, :cond_2

    .line 1979
    if-eqz v1, :cond_1

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 1980
    :cond_1
    const/4 v1, 0x1

    .line 1981
    const-string v6, "  Launching content providers:"

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1982
    const/4 v3, 0x1

    .line 1983
    const/4 v2, 0x1

    .line 1985
    :cond_2
    const-string v6, "  Launching #"

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(I)V

    const-string v6, ": "

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1986
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1973
    .end local v5    # "r":Lcom/android/server/am/ContentProviderRecord;
    :goto_1
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 1990
    .end local v3    # "printed":Z
    .end local v4    # "i":I
    :cond_3
    if-nez v2, :cond_4

    .line 1991
    const-string v3, "  (nothing)"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1993
    :cond_4
    return-void
.end method

.method generateApplicationProvidersLocked(Lcom/android/server/am/ProcessRecord;)Ljava/util/List;
    .locals 19
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/am/ProcessRecord;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/pm/ProviderInfo;",
            ">;"
        }
    .end annotation

    .line 1272
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const/4 v3, 0x0

    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v4

    iget-object v5, v2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget v6, v2, Lcom/android/server/am/ProcessRecord;->uid:I

    const-wide/32 v7, 0x10000c00

    const/4 v9, 0x0

    invoke-interface/range {v4 .. v9}, Landroid/content/pm/IPackageManager;->queryContentProviders(Ljava/lang/String;IJLjava/lang/String;)Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    .line 1276
    invoke-virtual {v0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1279
    .local v0, "providers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ProviderInfo;>;"
    nop

    .line 1280
    if-nez v0, :cond_0

    .line 1281
    return-object v3

    .line 1284
    :cond_0
    sget-boolean v4, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_MU:Z

    const-string v5, "ActivityManager_MU"

    if-eqz v4, :cond_1

    .line 1285
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "generateApplicationProvidersLocked, app.info.uid = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v2, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1288
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    .line 1289
    .local v4, "numProviders":I
    iget-object v6, v2, Lcom/android/server/am/ProcessRecord;->mProviders:Lcom/android/server/am/ProcessProviderRecord;

    .line 1290
    .local v6, "pr":Lcom/android/server/am/ProcessProviderRecord;
    invoke-virtual {v6}, Lcom/android/server/am/ProcessProviderRecord;->numberOfProviders()I

    move-result v7

    add-int/2addr v7, v4

    invoke-virtual {v6, v7}, Lcom/android/server/am/ProcessProviderRecord;->ensureProviderCapacity(I)V

    .line 1291
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    if-ge v7, v4, :cond_a

    .line 1293
    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    move-object v11, v8

    check-cast v11, Landroid/content/pm/ProviderInfo;

    .line 1294
    .local v11, "cpi":Landroid/content/pm/ProviderInfo;
    iget-object v8, v1, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v9, v11, Landroid/content/pm/ProviderInfo;->processName:Ljava/lang/String;

    iget-object v10, v11, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v12, v11, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    iget v13, v11, Landroid/content/pm/ProviderInfo;->flags:I

    invoke-virtual {v8, v9, v10, v12, v13}, Lcom/android/server/am/ActivityManagerService;->isSingleton(Ljava/lang/String;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;I)Z

    move-result v14

    .line 1296
    .local v14, "singleton":Z
    invoke-direct {v1, v11}, Lcom/android/server/am/ContentProviderHelper;->isSingletonOrSystemUserOnly(Landroid/content/pm/ProviderInfo;)Z

    move-result v8

    const/4 v15, 0x1

    if-eqz v8, :cond_2

    iget v8, v2, Lcom/android/server/am/ProcessRecord;->userId:I

    if-eqz v8, :cond_2

    .line 1301
    invoke-interface {v0, v7}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1302
    add-int/lit8 v4, v4, -0x1

    .line 1303
    add-int/lit8 v7, v7, -0x1

    .line 1304
    move-object/from16 v17, v3

    goto/16 :goto_6

    .line 1306
    :cond_2
    iget-object v8, v11, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v8}, Landroid/content/pm/ApplicationInfo;->isInstantApp()Z

    move-result v8

    .line 1307
    .local v8, "isInstantApp":Z
    iget-object v9, v11, Landroid/content/pm/ProviderInfo;->splitName:Ljava/lang/String;

    if-eqz v9, :cond_3

    iget-object v9, v11, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v9, v9, Landroid/content/pm/ApplicationInfo;->splitNames:[Ljava/lang/String;

    iget-object v10, v11, Landroid/content/pm/ProviderInfo;->splitName:Ljava/lang/String;

    invoke-static {v9, v10}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    :cond_3
    goto :goto_1

    :cond_4
    const/4 v9, 0x0

    goto :goto_2

    :goto_1
    move v9, v15

    :goto_2
    move/from16 v16, v9

    .line 1309
    .local v16, "splitInstalled":Z
    if-eqz v8, :cond_5

    if-nez v16, :cond_5

    .line 1312
    invoke-interface {v0, v7}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1313
    add-int/lit8 v4, v4, -0x1

    .line 1314
    add-int/lit8 v7, v7, -0x1

    .line 1315
    move-object/from16 v17, v3

    goto/16 :goto_6

    .line 1318
    :cond_5
    new-instance v13, Landroid/content/ComponentName;

    iget-object v9, v11, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    iget-object v10, v11, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    invoke-direct {v13, v9, v10}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1319
    .local v13, "comp":Landroid/content/ComponentName;
    iget-object v9, v1, Lcom/android/server/am/ContentProviderHelper;->mProviderMap:Lcom/android/server/am/ProviderMap;

    iget v10, v2, Lcom/android/server/am/ProcessRecord;->userId:I

    invoke-virtual {v9, v13, v10}, Lcom/android/server/am/ProviderMap;->getProviderByClass(Landroid/content/ComponentName;I)Lcom/android/server/am/ContentProviderRecord;

    move-result-object v17

    .line 1320
    .local v17, "cpr":Lcom/android/server/am/ContentProviderRecord;
    if-nez v17, :cond_6

    .line 1321
    new-instance v9, Lcom/android/server/am/ContentProviderRecord;

    iget-object v10, v1, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v12, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    invoke-direct/range {v9 .. v14}, Lcom/android/server/am/ContentProviderRecord;-><init>(Lcom/android/server/am/ActivityManagerService;Landroid/content/pm/ProviderInfo;Landroid/content/pm/ApplicationInfo;Landroid/content/ComponentName;Z)V

    .line 1322
    .end local v17    # "cpr":Lcom/android/server/am/ContentProviderRecord;
    .local v9, "cpr":Lcom/android/server/am/ContentProviderRecord;
    iget-object v10, v1, Lcom/android/server/am/ContentProviderHelper;->mProviderMap:Lcom/android/server/am/ProviderMap;

    invoke-virtual {v10, v13, v9}, Lcom/android/server/am/ProviderMap;->putProviderByClass(Landroid/content/ComponentName;Lcom/android/server/am/ContentProviderRecord;)V

    goto :goto_3

    .line 1320
    .end local v9    # "cpr":Lcom/android/server/am/ContentProviderRecord;
    .restart local v17    # "cpr":Lcom/android/server/am/ContentProviderRecord;
    :cond_6
    move-object/from16 v9, v17

    .line 1324
    .end local v17    # "cpr":Lcom/android/server/am/ContentProviderRecord;
    .restart local v9    # "cpr":Lcom/android/server/am/ContentProviderRecord;
    :goto_3
    sget-boolean v10, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_MU:Z

    if-eqz v10, :cond_7

    .line 1325
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "generateApplicationProvidersLocked, cpi.uid = "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v12, v9, Lcom/android/server/am/ContentProviderRecord;->uid:I

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v5, v10}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1327
    :cond_7
    iget-object v10, v11, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    invoke-virtual {v6, v10, v9}, Lcom/android/server/am/ProcessProviderRecord;->installProvider(Ljava/lang/String;Lcom/android/server/am/ContentProviderRecord;)V

    .line 1328
    iget-boolean v10, v11, Landroid/content/pm/ProviderInfo;->multiprocess:Z

    if-eqz v10, :cond_8

    const-string v10, "android"

    iget-object v12, v11, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v10, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_9

    :cond_8
    goto :goto_4

    :cond_9
    move-object/from16 v17, v3

    move/from16 v18, v4

    goto :goto_5

    .line 1333
    :goto_4
    iget-object v10, v11, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v10, v10, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v12, v11, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v17, v3

    move/from16 v18, v4

    .end local v4    # "numProviders":I
    .local v18, "numProviders":I
    iget-wide v3, v12, Landroid/content/pm/ApplicationInfo;->longVersionCode:J

    iget-object v12, v1, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v12, v12, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    invoke-virtual {v2, v10, v3, v4, v12}, Lcom/android/server/am/ProcessRecord;->addPackage(Ljava/lang/String;JLcom/android/server/am/ProcessStatsService;)Z

    .line 1336
    :goto_5
    iget-object v3, v1, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v11, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/4 v10, 0x4

    invoke-virtual {v3, v4, v10}, Lcom/android/server/am/ActivityManagerService;->notifyPackageUse(Ljava/lang/String;I)V

    move/from16 v4, v18

    .line 1291
    .end local v8    # "isInstantApp":Z
    .end local v9    # "cpr":Lcom/android/server/am/ContentProviderRecord;
    .end local v11    # "cpi":Landroid/content/pm/ProviderInfo;
    .end local v13    # "comp":Landroid/content/ComponentName;
    .end local v14    # "singleton":Z
    .end local v16    # "splitInstalled":Z
    .end local v18    # "numProviders":I
    .restart local v4    # "numProviders":I
    :goto_6
    add-int/2addr v7, v15

    move-object/from16 v3, v17

    goto/16 :goto_0

    :cond_a
    move-object/from16 v17, v3

    move/from16 v18, v4

    .line 1339
    .end local v4    # "numProviders":I
    .end local v7    # "i":I
    .restart local v18    # "numProviders":I
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_b

    move-object/from16 v3, v17

    goto :goto_7

    :cond_b
    move-object v3, v0

    :goto_7
    return-object v3

    .line 1277
    .end local v0    # "providers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ProviderInfo;>;"
    .end local v6    # "pr":Lcom/android/server/am/ProcessProviderRecord;
    .end local v18    # "numProviders":I
    :catch_0
    move-exception v0

    move-object/from16 v17, v3

    .line 1278
    .local v0, "ex":Landroid/os/RemoteException;
    return-object v17
.end method

.method getContentProvider(Landroid/app/IApplicationThread;Ljava/lang/String;Ljava/lang/String;IZ)Landroid/app/ContentProviderHolder;
    .locals 9
    .param p1, "caller"    # Landroid/app/IApplicationThread;
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "userId"    # I
    .param p5, "stable"    # Z

    .line 143
    iget-object v1, p0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string/jumbo v2, "getContentProvider"

    invoke-virtual {v1, v2}, Lcom/android/server/am/ActivityManagerService;->enforceNotIsolatedCaller(Ljava/lang/String;)V

    .line 144
    if-eqz p1, :cond_2

    .line 151
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    .line 152
    .local v4, "callingUid":I
    if-eqz p2, :cond_0

    iget-object v1, p0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mAppOpsService:Lcom/android/server/appop/AppOpsService;

    invoke-virtual {v1, v4, p2}, Lcom/android/server/appop/AppOpsService;->checkPackage(ILjava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    goto :goto_0

    .line 154
    :cond_1
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Given calling package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " does not match caller\'s uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 157
    :goto_0
    const/4 v3, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v5, p2

    move-object v2, p3

    move v8, p4

    move v7, p5

    invoke-direct/range {v0 .. v8}, Lcom/android/server/am/ContentProviderHelper;->getContentProviderImpl(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/os/IBinder;ILjava/lang/String;Ljava/lang/String;ZI)Landroid/app/ContentProviderHolder;

    move-result-object v3

    return-object v3

    .line 145
    .end local v4    # "callingUid":I
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "null IApplicationThread when getting content provider "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 146
    .local v0, "msg":Ljava/lang/String;
    const-string v1, "ContentProviderHelper"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    new-instance v1, Ljava/lang/SecurityException;

    invoke-direct {v1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method getContentProviderExternal(Ljava/lang/String;ILandroid/os/IBinder;Ljava/lang/String;)Landroid/app/ContentProviderHolder;
    .locals 10
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "token"    # Landroid/os/IBinder;
    .param p4, "tag"    # Ljava/lang/String;

    .line 163
    iget-object v1, p0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string v2, "android.permission.ACCESS_CONTENT_PROVIDERS_EXTERNALLY"

    const-string v3, "Do not have permission in call getContentProviderExternal()"

    invoke-virtual {v1, v2, v3}, Lcom/android/server/am/ActivityManagerService;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    iget-object v1, p0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v1, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    .line 167
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    .line 166
    const/4 v6, 0x0

    const/4 v7, 0x2

    const-string/jumbo v8, "getContentProvider"

    const/4 v9, 0x0

    move v5, p2

    invoke-virtual/range {v2 .. v9}, Lcom/android/server/am/UserController;->handleIncomingUser(IIIZILjava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 169
    .end local p2    # "userId":I
    .local v5, "userId":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 170
    if-eqz p4, :cond_0

    move-object v4, p4

    goto :goto_0

    :cond_0
    const-string v1, "*external*"

    move-object v4, v1

    .line 169
    :goto_0
    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ContentProviderHelper;->getContentProviderExternalUnchecked(Ljava/lang/String;Landroid/os/IBinder;ILjava/lang/String;I)Landroid/app/ContentProviderHolder;

    move-result-object v3

    return-object v3
.end method

.method getContentProviderExternalUnchecked(Ljava/lang/String;Landroid/os/IBinder;ILjava/lang/String;I)Landroid/app/ContentProviderHolder;
    .locals 9
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "callingUid"    # I
    .param p4, "callingTag"    # Ljava/lang/String;
    .param p5, "userId"    # I

    .line 175
    const/4 v5, 0x0

    const/4 v7, 0x1

    const/4 v1, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v6, p4

    move v8, p5

    .end local p1    # "name":Ljava/lang/String;
    .end local p2    # "token":Landroid/os/IBinder;
    .end local p3    # "callingUid":I
    .end local p4    # "callingTag":Ljava/lang/String;
    .end local p5    # "userId":I
    .local v2, "name":Ljava/lang/String;
    .local v3, "token":Landroid/os/IBinder;
    .local v4, "callingUid":I
    .local v6, "callingTag":Ljava/lang/String;
    .local v8, "userId":I
    invoke-direct/range {v0 .. v8}, Lcom/android/server/am/ContentProviderHelper;->getContentProviderImpl(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/os/IBinder;ILjava/lang/String;Ljava/lang/String;ZI)Landroid/app/ContentProviderHolder;

    move-result-object p1

    return-object p1
.end method

.method getMimeTypeFilterAsync(Landroid/net/Uri;ILandroid/os/RemoteCallback;)V
    .locals 16
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "userId"    # I
    .param p3, "resultCallback"    # Landroid/os/RemoteCallback;

    .line 1045
    move-object/from16 v1, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p3

    iget-object v0, v1, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string/jumbo v2, "getProviderMimeTypeAsync"

    invoke-virtual {v0, v2}, Lcom/android/server/am/ActivityManagerService;->enforceNotIsolatedCaller(Ljava/lang/String;)V

    .line 1046
    invoke-virtual {v7}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v2

    .line 1047
    .local v2, "name":Ljava/lang/String;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    .line 1048
    .local v4, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v9

    .line 1049
    .local v9, "callingPid":I
    iget-object v0, v1, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    move/from16 v10, p2

    invoke-virtual {v0, v10}, Lcom/android/server/am/UserController;->unsafeConvertIncomingUser(I)I

    move-result v3

    .line 1050
    .local v3, "safeUserId":I
    invoke-direct {v1, v9, v4, v3}, Lcom/android/server/am/ContentProviderHelper;->canClearIdentity(III)Z

    move-result v0

    const-wide/16 v11, 0x0

    if-eqz v0, :cond_0

    .line 1051
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v5

    goto :goto_0

    :cond_0
    move-wide v5, v11

    :goto_0
    move-wide v13, v5

    .line 1054
    .local v13, "ident":J
    :try_start_0
    const-string v5, "*getmimetype*"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move v6, v3

    .end local v3    # "safeUserId":I
    .local v6, "safeUserId":I
    const/4 v3, 0x0

    :try_start_1
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/am/ContentProviderHelper;->getContentProviderExternalUnchecked(Ljava/lang/String;Landroid/os/IBinder;ILjava/lang/String;I)Landroid/app/ContentProviderHolder;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v15, v0

    .line 1057
    .local v15, "holder":Landroid/app/ContentProviderHolder;
    cmp-long v0, v13, v11

    if-eqz v0, :cond_1

    .line 1058
    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1063
    :cond_1
    :try_start_2
    invoke-direct {v1, v15, v4, v6}, Lcom/android/server/am/ContentProviderHelper;->isHolderVisibleToCaller(Landroid/app/ContentProviderHolder;II)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1064
    invoke-direct {v1, v4, v9}, Lcom/android/server/am/ContentProviderHelper;->checkGetAnyTypePermission(II)Z

    move-result v0
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    if-eqz v0, :cond_2

    .line 1065
    :try_start_3
    new-instance v0, Landroid/content/AttributionSource$Builder;

    invoke-direct {v0, v4}, Landroid/content/AttributionSource$Builder;-><init>(I)V

    .line 1066
    invoke-virtual {v0}, Landroid/content/AttributionSource$Builder;->build()Landroid/content/AttributionSource;

    move-result-object v0

    .line 1067
    .local v0, "attributionSource":Landroid/content/AttributionSource;
    iget-object v3, v15, Landroid/app/ContentProviderHolder;->provider:Landroid/content/IContentProvider;

    new-instance v5, Landroid/os/RemoteCallback;

    new-instance v11, Lcom/android/server/am/ContentProviderHelper$$ExternalSyntheticLambda0;

    invoke-direct {v11, v1, v2, v6, v8}, Lcom/android/server/am/ContentProviderHelper$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/am/ContentProviderHelper;Ljava/lang/String;ILandroid/os/RemoteCallback;)V

    invoke-direct {v5, v11}, Landroid/os/RemoteCallback;-><init>(Landroid/os/RemoteCallback$OnResultListener;)V

    invoke-interface {v3, v0, v7, v5}, Landroid/content/IContentProvider;->getTypeAsync(Landroid/content/AttributionSource;Landroid/net/Uri;Landroid/os/RemoteCallback;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    .line 1077
    .end local v0    # "attributionSource":Landroid/content/AttributionSource;
    move v5, v4

    move v3, v6

    move-object v6, v7

    move-object v4, v8

    goto :goto_1

    .line 1095
    :catch_0
    move-exception v0

    move v5, v4

    move v3, v6

    move-object v6, v7

    move-object v4, v8

    goto :goto_2

    .line 1078
    :cond_2
    :try_start_4
    iget-object v11, v15, Landroid/app/ContentProviderHolder;->provider:Landroid/content/IContentProvider;

    new-instance v12, Landroid/os/RemoteCallback;

    new-instance v0, Lcom/android/server/am/ContentProviderHelper$$ExternalSyntheticLambda1;
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_2

    move v5, v4

    move v3, v6

    move-object v6, v7

    move-object v4, v8

    .end local v4    # "callingUid":I
    .end local v6    # "safeUserId":I
    .restart local v3    # "safeUserId":I
    .local v5, "callingUid":I
    :try_start_5
    invoke-direct/range {v0 .. v6}, Lcom/android/server/am/ContentProviderHelper$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/am/ContentProviderHelper;Ljava/lang/String;ILandroid/os/RemoteCallback;ILandroid/net/Uri;)V

    invoke-direct {v12, v0}, Landroid/os/RemoteCallback;-><init>(Landroid/os/RemoteCallback$OnResultListener;)V

    invoke-interface {v11, v6, v12}, Landroid/content/IContentProvider;->getTypeAnonymousAsync(Landroid/net/Uri;Landroid/os/RemoteCallback;)V

    goto :goto_1

    .line 1095
    :catch_1
    move-exception v0

    goto :goto_2

    .end local v3    # "safeUserId":I
    .end local v5    # "callingUid":I
    .restart local v4    # "callingUid":I
    .restart local v6    # "safeUserId":I
    :catch_2
    move-exception v0

    move v5, v4

    move v3, v6

    move-object v6, v7

    move-object v4, v8

    .end local v4    # "callingUid":I
    .end local v6    # "safeUserId":I
    .restart local v3    # "safeUserId":I
    .restart local v5    # "callingUid":I
    goto :goto_2

    .line 1093
    .end local v3    # "safeUserId":I
    .end local v5    # "callingUid":I
    .restart local v4    # "callingUid":I
    .restart local v6    # "safeUserId":I
    :cond_3
    move v5, v4

    move v3, v6

    move-object v6, v7

    move-object v4, v8

    .end local v4    # "callingUid":I
    .end local v6    # "safeUserId":I
    .restart local v3    # "safeUserId":I
    .restart local v5    # "callingUid":I
    sget-object v0, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    invoke-virtual {v4, v0}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_1

    .line 1098
    :goto_1
    goto :goto_3

    .line 1095
    :goto_2
    nop

    .line 1096
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Content provider dead retrieving "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v7, "ContentProviderHelper"

    invoke-static {v7, v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1097
    sget-object v1, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    invoke-virtual {v4, v1}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V

    .line 1099
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_3
    return-void

    .line 1057
    .end local v3    # "safeUserId":I
    .end local v5    # "callingUid":I
    .end local v15    # "holder":Landroid/app/ContentProviderHolder;
    .restart local v4    # "callingUid":I
    .restart local v6    # "safeUserId":I
    :catchall_0
    move-exception v0

    move v3, v6

    move v5, v4

    move-object v6, v7

    move-object v4, v8

    .end local v4    # "callingUid":I
    .end local v6    # "safeUserId":I
    .restart local v3    # "safeUserId":I
    .restart local v5    # "callingUid":I
    goto :goto_4

    .end local v5    # "callingUid":I
    .restart local v4    # "callingUid":I
    :catchall_1
    move-exception v0

    move v5, v4

    move-object v6, v7

    move-object v4, v8

    .end local v4    # "callingUid":I
    .restart local v5    # "callingUid":I
    :goto_4
    cmp-long v1, v13, v11

    if-eqz v1, :cond_4

    .line 1058
    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1060
    :cond_4
    throw v0
.end method

.method getProviderInfoLocked(Ljava/lang/String;II)Landroid/content/pm/ProviderInfo;
    .locals 4
    .param p1, "authority"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "pmFlags"    # I

    .line 1690
    iget-object v0, p0, Lcom/android/server/am/ContentProviderHelper;->mProviderMap:Lcom/android/server/am/ProviderMap;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/am/ProviderMap;->getProviderByName(Ljava/lang/String;I)Lcom/android/server/am/ContentProviderRecord;

    move-result-object v0

    .line 1691
    .local v0, "cpr":Lcom/android/server/am/ContentProviderRecord;
    if-eqz v0, :cond_0

    .line 1692
    iget-object v1, v0, Lcom/android/server/am/ContentProviderRecord;->info:Landroid/content/pm/ProviderInfo;

    return-object v1

    .line 1695
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    or-int/lit16 v2, p3, 0x800

    int-to-long v2, v2

    invoke-interface {v1, p1, v2, v3, p2}, Landroid/content/pm/IPackageManager;->resolveContentProvider(Ljava/lang/String;JI)Landroid/content/pm/ProviderInfo;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 1697
    :catch_0
    move-exception v1

    .line 1698
    .local v1, "ex":Landroid/os/RemoteException;
    const/4 v2, 0x0

    return-object v2
.end method

.method getProviderMap()Lcom/android/server/am/ProviderMap;
    .locals 1

    .line 138
    iget-object v0, p0, Lcom/android/server/am/ContentProviderHelper;->mProviderMap:Lcom/android/server/am/ProviderMap;

    return-object v0
.end method

.method installEncryptionUnawareProviders(I)V
    .locals 11
    .param p1, "userId"    # I

    .line 1419
    const v0, 0x40008

    .line 1422
    .local v0, "matchFlags":I
    iget-object v1, p0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    monitor-enter v1

    .line 1423
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    .line 1424
    invoke-virtual {v2}, Lcom/android/server/am/ProcessList;->getProcessNamesLOSP()Lcom/android/server/am/ProcessList$MyProcessMap;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v2

    .line 1425
    .local v2, "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Lcom/android/server/am/ProcessRecord;>;>;"
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v3

    .line 1426
    .local v3, "numProc":I
    const/4 v4, 0x0

    .local v4, "iProc":I
    :goto_0
    if-ge v4, v3, :cond_3

    .line 1427
    invoke-virtual {v2, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/SparseArray;

    .line 1428
    .local v5, "apps":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/ProcessRecord;>;"
    const/4 v6, 0x0

    .local v6, "iApp":I
    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v7

    .local v7, "numApps":I
    :goto_1
    if-ge v6, v7, :cond_2

    .line 1429
    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/ProcessRecord;

    .line 1430
    .local v8, "app":Lcom/android/server/am/ProcessRecord;
    iget v9, v8, Lcom/android/server/am/ProcessRecord;->userId:I

    if-ne v9, p1, :cond_1

    invoke-virtual {v8}, Lcom/android/server/am/ProcessRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object v9

    if-eqz v9, :cond_1

    invoke-virtual {v8}, Lcom/android/server/am/ProcessRecord;->isUnlocked()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 1431
    goto :goto_2

    .line 1434
    :cond_0
    invoke-virtual {v8}, Lcom/android/server/am/ProcessRecord;->getPkgList()Lcom/android/server/am/PackageList;

    move-result-object v9

    new-instance v10, Lcom/android/server/am/ContentProviderHelper$$ExternalSyntheticLambda4;

    invoke-direct {v10, p0, v8}, Lcom/android/server/am/ContentProviderHelper$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/am/ContentProviderHelper;Lcom/android/server/am/ProcessRecord;)V

    invoke-virtual {v9, v10}, Lcom/android/server/am/PackageList;->forEachPackage(Ljava/util/function/Consumer;)V

    goto :goto_2

    .line 1465
    .end local v2    # "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Lcom/android/server/am/ProcessRecord;>;>;"
    .end local v3    # "numProc":I
    .end local v4    # "iProc":I
    .end local v5    # "apps":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/ProcessRecord;>;"
    .end local v6    # "iApp":I
    .end local v7    # "numApps":I
    .end local v8    # "app":Lcom/android/server/am/ProcessRecord;
    :catchall_0
    move-exception v2

    goto :goto_3

    .line 1428
    .restart local v2    # "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Lcom/android/server/am/ProcessRecord;>;>;"
    .restart local v3    # "numProc":I
    .restart local v4    # "iProc":I
    .restart local v5    # "apps":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/ProcessRecord;>;"
    .restart local v6    # "iApp":I
    .restart local v7    # "numApps":I
    :cond_1
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_2
    nop

    .line 1426
    .end local v5    # "apps":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/ProcessRecord;>;"
    .end local v6    # "iApp":I
    .end local v7    # "numApps":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    nop

    .line 1465
    .end local v2    # "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Lcom/android/server/am/ProcessRecord;>;>;"
    .end local v3    # "numProc":I
    .end local v4    # "iProc":I
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 1466
    return-void

    .line 1465
    :goto_3
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw v2
.end method

.method public final installSystemProviders()V
    .locals 9

    .line 1377
    iget-object v0, p0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    .line 1378
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    .line 1379
    invoke-virtual {v1}, Lcom/android/server/am/ProcessList;->getProcessNamesLOSP()Lcom/android/server/am/ProcessList$MyProcessMap;

    move-result-object v1

    const-string/jumbo v2, "system"

    const/16 v3, 0x3e8

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ProcessRecord;

    .line 1380
    .local v1, "app":Lcom/android/server/am/ProcessRecord;
    invoke-virtual {p0, v1}, Lcom/android/server/am/ContentProviderHelper;->generateApplicationProvidersLocked(Lcom/android/server/am/ProcessRecord;)Ljava/util/List;

    move-result-object v2

    .line 1381
    .local v2, "providers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ProviderInfo;>;"
    const/4 v3, 0x1

    if-eqz v2, :cond_1

    .line 1382
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v3

    .local v4, "i":I
    :goto_0
    if-ltz v4, :cond_1

    .line 1383
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ProviderInfo;

    .line 1384
    .local v5, "pi":Landroid/content/pm/ProviderInfo;
    iget-object v6, v5, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v6, v3

    if-nez v6, :cond_0

    .line 1385
    const-string v6, "ContentProviderHelper"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Not installing system proc provider "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v5, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ": not system .apk"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1387
    invoke-interface {v2, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 1391
    .end local v1    # "app":Lcom/android/server/am/ProcessRecord;
    .end local v2    # "providers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ProviderInfo;>;"
    .end local v4    # "i":I
    .end local v5    # "pi":Landroid/content/pm/ProviderInfo;
    :catchall_0
    move-exception v1

    goto :goto_2

    .line 1382
    .restart local v1    # "app":Lcom/android/server/am/ProcessRecord;
    .restart local v2    # "providers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ProviderInfo;>;"
    .restart local v4    # "i":I
    :cond_0
    :goto_1
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 1391
    .end local v1    # "app":Lcom/android/server/am/ProcessRecord;
    .end local v4    # "i":I
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 1393
    if-eqz v2, :cond_2

    .line 1394
    iget-object v0, p0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mSystemThread:Landroid/app/ActivityThread;

    invoke-virtual {v0, v2}, Landroid/app/ActivityThread;->installSystemProviders(Ljava/util/List;)V

    .line 1396
    :cond_2
    monitor-enter p0

    .line 1397
    :try_start_1
    iput-boolean v3, p0, Lcom/android/server/am/ContentProviderHelper;->mSystemProvidersInstalled:Z

    .line 1398
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1400
    iget-object v0, p0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-object v1, p0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityManagerConstants;->start(Landroid/content/ContentResolver;)V

    .line 1401
    iget-object v0, p0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    new-instance v1, Lcom/android/server/am/CoreSettingsObserver;

    iget-object v3, p0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-direct {v1, v3}, Lcom/android/server/am/CoreSettingsObserver;-><init>(Lcom/android/server/am/ActivityManagerService;)V

    iput-object v1, v0, Lcom/android/server/am/ActivityManagerService;->mCoreSettingsObserver:Lcom/android/server/am/CoreSettingsObserver;

    .line 1402
    iget-object v0, p0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mActivityTaskManager:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->installSystemProviders()V

    .line 1403
    new-instance v0, Lcom/android/server/am/ContentProviderHelper$DevelopmentSettingsObserver;

    invoke-direct {v0, p0}, Lcom/android/server/am/ContentProviderHelper$DevelopmentSettingsObserver;-><init>(Lcom/android/server/am/ContentProviderHelper;)V

    .line 1404
    iget-object v0, p0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/SettingsToPropertiesMapper;->start(Landroid/content/ContentResolver;)Lcom/android/server/am/SettingsToPropertiesMapper;

    .line 1405
    iget-object v0, p0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mOomAdjuster:Lcom/android/server/am/OomAdjuster;

    invoke-virtual {v0}, Lcom/android/server/am/OomAdjuster;->initSettings()V

    .line 1408
    iget-object v0, p0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/crashrecovery/CrashRecoveryAdaptor;->rescuePartyOnSettingsProviderPublished(Landroid/content/Context;)V

    .line 1409
    return-void

    .line 1398
    :catchall_1
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    .line 1391
    .end local v2    # "providers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ProviderInfo;>;"
    :goto_2
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method processContentProviderPublishTimedOutLocked(Lcom/android/server/am/ProcessRecord;)V
    .locals 8
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .line 1262
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/server/am/ContentProviderHelper;->cleanupAppInLaunchingProvidersLocked(Lcom/android/server/am/ProcessRecord;Z)Z

    .line 1263
    iget-object v0, p0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v0, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    const/4 v6, 0x0

    const-string/jumbo v7, "timeout publishing content providers"

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x7

    move-object v2, p1

    .end local p1    # "app":Lcom/android/server/am/ProcessRecord;
    .local v2, "app":Lcom/android/server/am/ProcessRecord;
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/am/ProcessList;->removeProcessLocked(Lcom/android/server/am/ProcessRecord;ZZIILjava/lang/String;)Z

    .line 1267
    return-void
.end method

.method publishContentProviders(Landroid/app/IApplicationThread;Ljava/util/List;)V
    .locals 19
    .param p1, "caller"    # Landroid/app/IApplicationThread;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/IApplicationThread;",
            "Ljava/util/List<",
            "Landroid/app/ContentProviderHolder;",
            ">;)V"
        }
    .end annotation

    .line 749
    .local p2, "providers":Ljava/util/List;, "Ljava/util/List<Landroid/app/ContentProviderHolder;>;"
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    if-nez v3, :cond_0

    .line 750
    return-void

    .line 753
    :cond_0
    iget-object v0, v1, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string/jumbo v4, "publishContentProviders"

    invoke-virtual {v0, v4}, Lcom/android/server/am/ActivityManagerService;->enforceNotIsolatedOrSdkSandboxCaller(Ljava/lang/String;)V

    .line 754
    iget-object v4, v1, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    monitor-enter v4

    .line 755
    :try_start_0
    iget-object v0, v1, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0, v2}, Lcom/android/server/am/ActivityManagerService;->getRecordForAppLOSP(Landroid/app/IApplicationThread;)Lcom/android/server/am/ProcessRecord;

    move-result-object v0

    move-object v5, v0

    .line 756
    .local v5, "r":Lcom/android/server/am/ProcessRecord;
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_MU:Z

    if-eqz v0, :cond_1

    .line 757
    const-string v0, "ActivityManager_MU"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ProcessRecord uid = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v5, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 836
    .end local v5    # "r":Lcom/android/server/am/ProcessRecord;
    :catchall_0
    move-exception v0

    goto/16 :goto_7

    .line 759
    .restart local v5    # "r":Lcom/android/server/am/ProcessRecord;
    :cond_1
    :goto_0
    if-eqz v5, :cond_f

    .line 765
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 766
    .local v6, "origId":J
    const/4 v0, 0x0

    .line 767
    .local v0, "providersPublished":Z
    const/4 v8, 0x0

    .local v8, "i":I
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v9

    .local v9, "size":I
    :goto_1
    if-ge v8, v9, :cond_b

    .line 768
    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/ContentProviderHolder;

    .line 769
    .local v10, "src":Landroid/app/ContentProviderHolder;
    if-eqz v10, :cond_a

    iget-object v11, v10, Landroid/app/ContentProviderHolder;->info:Landroid/content/pm/ProviderInfo;

    if-eqz v11, :cond_a

    iget-object v11, v10, Landroid/app/ContentProviderHolder;->provider:Landroid/content/IContentProvider;

    if-nez v11, :cond_2

    .line 770
    move-wide/from16 v17, v6

    goto/16 :goto_4

    .line 772
    :cond_2
    iget-object v11, v5, Lcom/android/server/am/ProcessRecord;->mProviders:Lcom/android/server/am/ProcessProviderRecord;

    iget-object v12, v10, Landroid/app/ContentProviderHolder;->info:Landroid/content/pm/ProviderInfo;

    iget-object v12, v12, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    invoke-virtual {v11, v12}, Lcom/android/server/am/ProcessProviderRecord;->getProvider(Ljava/lang/String;)Lcom/android/server/am/ContentProviderRecord;

    move-result-object v11

    .line 773
    .local v11, "dst":Lcom/android/server/am/ContentProviderRecord;
    if-nez v11, :cond_3

    .line 774
    move-wide/from16 v17, v6

    goto/16 :goto_4

    .line 776
    :cond_3
    sget-boolean v12, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_MU:Z

    if-eqz v12, :cond_4

    .line 777
    const-string v12, "ActivityManager_MU"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "ContentProviderRecord uid = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v14, v11, Lcom/android/server/am/ContentProviderRecord;->uid:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 779
    :cond_4
    const/4 v12, 0x1

    .line 781
    .end local v0    # "providersPublished":Z
    .local v12, "providersPublished":Z
    new-instance v0, Landroid/content/ComponentName;

    iget-object v13, v11, Lcom/android/server/am/ContentProviderRecord;->info:Landroid/content/pm/ProviderInfo;

    iget-object v13, v13, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    iget-object v14, v11, Lcom/android/server/am/ContentProviderRecord;->info:Landroid/content/pm/ProviderInfo;

    iget-object v14, v14, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v13, v14}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v13, v0

    .line 782
    .local v13, "comp":Landroid/content/ComponentName;
    iget-object v0, v1, Lcom/android/server/am/ContentProviderHelper;->mProviderMap:Lcom/android/server/am/ProviderMap;

    invoke-virtual {v0, v13, v11}, Lcom/android/server/am/ProviderMap;->putProviderByClass(Landroid/content/ComponentName;Lcom/android/server/am/ContentProviderRecord;)V

    .line 783
    iget-object v0, v11, Lcom/android/server/am/ContentProviderRecord;->info:Landroid/content/pm/ProviderInfo;

    iget-object v0, v0, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    const-string v14, ";"

    invoke-virtual {v0, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    move-object v14, v0

    .line 784
    .local v14, "names":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "j":I
    :goto_2
    array-length v15, v14

    if-ge v0, v15, :cond_5

    .line 785
    iget-object v15, v1, Lcom/android/server/am/ContentProviderHelper;->mProviderMap:Lcom/android/server/am/ProviderMap;

    move/from16 v16, v0

    .end local v0    # "j":I
    .local v16, "j":I
    aget-object v0, v14, v16

    invoke-virtual {v15, v0, v11}, Lcom/android/server/am/ProviderMap;->putProviderByName(Ljava/lang/String;Lcom/android/server/am/ContentProviderRecord;)V

    .line 784
    add-int/lit8 v0, v16, 0x1

    .end local v16    # "j":I
    .restart local v0    # "j":I
    goto :goto_2

    :cond_5
    move/from16 v16, v0

    .line 788
    .end local v0    # "j":I
    const/4 v0, 0x0

    .line 789
    .local v0, "wasInLaunchingProviders":Z
    const/4 v15, 0x0

    move/from16 v16, v0

    .end local v0    # "wasInLaunchingProviders":Z
    .local v15, "j":I
    .local v16, "wasInLaunchingProviders":Z
    iget-object v0, v1, Lcom/android/server/am/ContentProviderHelper;->mLaunchingProviders:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .local v0, "numLaunching":I
    :goto_3
    move-wide/from16 v17, v6

    .end local v6    # "origId":J
    .local v17, "origId":J
    const/4 v6, 0x1

    if-ge v15, v0, :cond_7

    .line 790
    iget-object v7, v1, Lcom/android/server/am/ContentProviderHelper;->mLaunchingProviders:Ljava/util/ArrayList;

    invoke-virtual {v7, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    if-ne v7, v11, :cond_6

    .line 791
    iget-object v7, v1, Lcom/android/server/am/ContentProviderHelper;->mLaunchingProviders:Ljava/util/ArrayList;

    invoke-virtual {v7, v15}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 792
    const/4 v7, 0x1

    .line 793
    .end local v16    # "wasInLaunchingProviders":Z
    .local v7, "wasInLaunchingProviders":Z
    add-int/lit8 v15, v15, -0x1

    .line 794
    add-int/lit8 v0, v0, -0x1

    move/from16 v16, v7

    .line 789
    .end local v7    # "wasInLaunchingProviders":Z
    .restart local v16    # "wasInLaunchingProviders":Z
    :cond_6
    add-int/2addr v15, v6

    move-wide/from16 v6, v17

    goto :goto_3

    :cond_7
    nop

    .line 797
    .end local v0    # "numLaunching":I
    .end local v15    # "j":I
    if-eqz v16, :cond_8

    .line 798
    iget-object v0, v1, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    const/16 v7, 0x49

    invoke-virtual {v0, v7, v11}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 800
    iget-object v0, v1, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    const/16 v7, 0x39

    invoke-virtual {v0, v7, v5}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 808
    :cond_8
    iget-object v0, v11, Lcom/android/server/am/ContentProviderRecord;->info:Landroid/content/pm/ProviderInfo;

    iget-object v0, v0, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v7, v11, Lcom/android/server/am/ContentProviderRecord;->info:Landroid/content/pm/ProviderInfo;

    iget-object v7, v7, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-wide v6, v7, Landroid/content/pm/ApplicationInfo;->longVersionCode:J

    iget-object v15, v1, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v15, v15, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    invoke-virtual {v5, v0, v6, v7, v15}, Lcom/android/server/am/ProcessRecord;->addPackage(Ljava/lang/String;JLcom/android/server/am/ProcessStatsService;)Z

    .line 810
    monitor-enter v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 811
    :try_start_1
    iget-object v0, v10, Landroid/app/ContentProviderHolder;->provider:Landroid/content/IContentProvider;

    iput-object v0, v11, Lcom/android/server/am/ContentProviderRecord;->provider:Landroid/content/IContentProvider;

    .line 812
    invoke-virtual {v11, v5}, Lcom/android/server/am/ContentProviderRecord;->setProcess(Lcom/android/server/am/ProcessRecord;)V

    .line 813
    invoke-virtual {v11}, Ljava/lang/Object;->notifyAll()V

    .line 814
    const/4 v15, 0x1

    invoke-virtual {v11, v15}, Lcom/android/server/am/ContentProviderRecord;->onProviderPublishStatusLocked(Z)V

    .line 815
    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 816
    const/4 v0, 0x0

    :try_start_2
    iput v0, v11, Lcom/android/server/am/ContentProviderRecord;->mRestartCount:I

    .line 817
    invoke-direct {v1, v5}, Lcom/android/server/am/ContentProviderHelper;->hasProviderConnectionLocked(Lcom/android/server/am/ProcessRecord;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 818
    iget-object v0, v5, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    const/16 v6, 0x40

    invoke-virtual {v0, v6}, Lcom/android/server/am/ProcessProfileRecord;->addHostingComponentType(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 767
    .end local v10    # "src":Landroid/app/ContentProviderHolder;
    .end local v11    # "dst":Lcom/android/server/am/ContentProviderRecord;
    .end local v13    # "comp":Landroid/content/ComponentName;
    .end local v14    # "names":[Ljava/lang/String;
    .end local v16    # "wasInLaunchingProviders":Z
    :cond_9
    move v0, v12

    goto :goto_4

    .line 815
    .restart local v10    # "src":Landroid/app/ContentProviderHolder;
    .restart local v11    # "dst":Lcom/android/server/am/ContentProviderRecord;
    .restart local v13    # "comp":Landroid/content/ComponentName;
    .restart local v14    # "names":[Ljava/lang/String;
    .restart local v16    # "wasInLaunchingProviders":Z
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v11
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .end local p0    # "this":Lcom/android/server/am/ContentProviderHelper;
    .end local p1    # "caller":Landroid/app/IApplicationThread;
    .end local p2    # "providers":Ljava/util/List;, "Ljava/util/List<Landroid/app/ContentProviderHolder;>;"
    :try_start_4
    throw v0

    .line 769
    .end local v11    # "dst":Lcom/android/server/am/ContentProviderRecord;
    .end local v12    # "providersPublished":Z
    .end local v13    # "comp":Landroid/content/ComponentName;
    .end local v14    # "names":[Ljava/lang/String;
    .end local v16    # "wasInLaunchingProviders":Z
    .end local v17    # "origId":J
    .local v0, "providersPublished":Z
    .restart local v6    # "origId":J
    .restart local p0    # "this":Lcom/android/server/am/ContentProviderHelper;
    .restart local p1    # "caller":Landroid/app/IApplicationThread;
    .restart local p2    # "providers":Ljava/util/List;, "Ljava/util/List<Landroid/app/ContentProviderHolder;>;"
    :cond_a
    move-wide/from16 v17, v6

    .line 767
    .end local v6    # "origId":J
    .end local v10    # "src":Landroid/app/ContentProviderHolder;
    .restart local v17    # "origId":J
    :goto_4
    add-int/lit8 v8, v8, 0x1

    move-wide/from16 v6, v17

    goto/16 :goto_1

    .end local v17    # "origId":J
    .restart local v6    # "origId":J
    :cond_b
    move-wide/from16 v17, v6

    .line 823
    .end local v6    # "origId":J
    .end local v8    # "i":I
    .end local v9    # "size":I
    .restart local v17    # "origId":J
    if-eqz v0, :cond_e

    .line 824
    iget-object v6, v1, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v7, 0x7

    invoke-virtual {v6, v5, v7}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjLocked(Lcom/android/server/am/ProcessRecord;I)Z

    .line 825
    const/4 v6, 0x0

    .local v6, "i":I
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    .local v7, "size":I
    :goto_5
    if-ge v6, v7, :cond_e

    .line 826
    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/ContentProviderHolder;

    .line 827
    .local v8, "src":Landroid/app/ContentProviderHolder;
    if-eqz v8, :cond_d

    iget-object v9, v8, Landroid/app/ContentProviderHolder;->info:Landroid/content/pm/ProviderInfo;

    if-eqz v9, :cond_d

    iget-object v9, v8, Landroid/app/ContentProviderHolder;->provider:Landroid/content/IContentProvider;

    if-nez v9, :cond_c

    .line 828
    goto :goto_6

    .line 830
    :cond_c
    iget-object v9, v8, Landroid/app/ContentProviderHolder;->info:Landroid/content/pm/ProviderInfo;

    iget-object v9, v9, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    iget-object v10, v8, Landroid/app/ContentProviderHolder;->info:Landroid/content/pm/ProviderInfo;

    iget-object v10, v10, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    invoke-direct {v1, v5, v9, v10}, Lcom/android/server/am/ContentProviderHelper;->maybeUpdateProviderUsageStatsLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Ljava/lang/String;)V

    .line 825
    .end local v8    # "src":Landroid/app/ContentProviderHolder;
    :cond_d
    :goto_6
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    .line 835
    .end local v6    # "i":I
    .end local v7    # "size":I
    :cond_e
    invoke-static/range {v17 .. v18}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 836
    .end local v0    # "providersPublished":Z
    .end local v5    # "r":Lcom/android/server/am/ProcessRecord;
    .end local v17    # "origId":J
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 837
    return-void

    .line 760
    .restart local v5    # "r":Lcom/android/server/am/ProcessRecord;
    :cond_f
    :try_start_5
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to find app for caller "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " (pid="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 761
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ") when publishing content providers"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v6}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/am/ContentProviderHelper;
    .end local p1    # "caller":Landroid/app/IApplicationThread;
    .end local p2    # "providers":Ljava/util/List;, "Ljava/util/List<Landroid/app/ContentProviderHolder;>;"
    throw v0

    .line 836
    .end local v5    # "r":Lcom/android/server/am/ProcessRecord;
    .restart local p0    # "this":Lcom/android/server/am/ContentProviderHelper;
    .restart local p1    # "caller":Landroid/app/IApplicationThread;
    .restart local p2    # "providers":Ljava/util/List;, "Ljava/util/List<Landroid/app/ContentProviderHolder;>;"
    :goto_7
    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method refContentProvider(Landroid/os/IBinder;II)Z
    .locals 5
    .param p1, "connection"    # Landroid/os/IBinder;
    .param p2, "stable"    # I
    .param p3, "unstable"    # I

    .line 918
    const-string/jumbo v0, "refContentProvider: "

    :try_start_0
    move-object v1, p1

    check-cast v1, Lcom/android/server/am/ContentProviderConnection;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 923
    .local v1, "conn":Lcom/android/server/am/ContentProviderConnection;
    nop

    .line 924
    if-eqz v1, :cond_1

    .line 928
    nop

    .line 929
    iget-object v2, v1, Lcom/android/server/am/ContentProviderConnection;->provider:Lcom/android/server/am/ContentProviderRecord;

    if-eqz v2, :cond_0

    iget-object v2, v1, Lcom/android/server/am/ContentProviderConnection;->provider:Lcom/android/server/am/ContentProviderRecord;

    iget-object v2, v2, Lcom/android/server/am/ContentProviderRecord;->info:Landroid/content/pm/ProviderInfo;

    if-eqz v2, :cond_0

    .line 930
    iget-object v2, v1, Lcom/android/server/am/ContentProviderConnection;->provider:Lcom/android/server/am/ContentProviderRecord;

    iget-object v2, v2, Lcom/android/server/am/ContentProviderRecord;->info:Landroid/content/pm/ProviderInfo;

    iget-object v2, v2, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v2, ""

    .line 928
    :goto_0
    const-wide/16 v3, 0x40

    invoke-static {v3, v4, v0, v2}, Lcom/android/server/am/ActivityManagerService;->traceBegin(JLjava/lang/String;Ljava/lang/String;)V

    .line 932
    :try_start_1
    invoke-virtual {v1, p2, p3}, Lcom/android/server/am/ContentProviderConnection;->adjustCounts(II)V

    .line 933
    iget-boolean v0, v1, Lcom/android/server/am/ContentProviderConnection;->dead:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 935
    xor-int/lit8 v0, v0, 0x1

    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    .line 933
    return v0

    .line 935
    :catchall_0
    move-exception v0

    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    .line 936
    throw v0

    .line 925
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v2, "connection is null"

    invoke-direct {v0, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 919
    .end local v1    # "conn":Lcom/android/server/am/ContentProviderConnection;
    :catch_0
    move-exception v1

    .line 920
    .local v1, "e":Ljava/lang/ClassCastException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " not a ContentProviderConnection"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 921
    .local v0, "msg":Ljava/lang/String;
    const-string v2, "ContentProviderHelper"

    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 922
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method removeContentProvider(Landroid/os/IBinder;Z)V
    .locals 13
    .param p1, "connection"    # Landroid/os/IBinder;
    .param p2, "stable"    # Z

    .line 843
    iget-object v0, p0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string/jumbo v1, "removeContentProvider"

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityManagerService;->enforceNotIsolatedCaller(Ljava/lang/String;)V

    .line 844
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 848
    .local v1, "ident":J
    :try_start_0
    move-object v0, p1

    check-cast v0, Lcom/android/server/am/ContentProviderConnection;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    move-object v4, v0

    .line 854
    .local v4, "conn":Lcom/android/server/am/ContentProviderConnection;
    nop

    .line 855
    if-eqz v4, :cond_1

    .line 858
    :try_start_1
    const-string/jumbo v0, "removeContentProvider: "

    .line 860
    iget-object v3, v4, Lcom/android/server/am/ContentProviderConnection;->provider:Lcom/android/server/am/ContentProviderRecord;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    if-eqz v3, :cond_0

    :try_start_2
    iget-object v3, v4, Lcom/android/server/am/ContentProviderConnection;->provider:Lcom/android/server/am/ContentProviderRecord;

    iget-object v3, v3, Lcom/android/server/am/ContentProviderRecord;->info:Landroid/content/pm/ProviderInfo;

    if-eqz v3, :cond_0

    .line 861
    iget-object v3, v4, Lcom/android/server/am/ContentProviderConnection;->provider:Lcom/android/server/am/ContentProviderRecord;

    iget-object v3, v3, Lcom/android/server/am/ContentProviderRecord;->info:Landroid/content/pm/ProviderInfo;

    iget-object v3, v3, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 870
    .end local v4    # "conn":Lcom/android/server/am/ContentProviderConnection;
    :catchall_0
    move-exception v0

    move v7, p2

    goto/16 :goto_2

    .line 861
    .restart local v4    # "conn":Lcom/android/server/am/ContentProviderConnection;
    :cond_0
    :try_start_3
    const-string v3, ""

    .line 858
    :goto_0
    const-wide/16 v10, 0x40

    invoke-static {v10, v11, v0, v3}, Lcom/android/server/am/ActivityManagerService;->traceBegin(JLjava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_5

    .line 863
    :try_start_4
    iget-object v12, p0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    monitor-enter v12
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 864
    const/4 v8, 0x1

    const/4 v9, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v3, p0

    move v7, p2

    .end local p2    # "stable":Z
    .local v7, "stable":Z
    :try_start_5
    invoke-direct/range {v3 .. v9}, Lcom/android/server/am/ContentProviderHelper;->decProviderCountLocked(Lcom/android/server/am/ContentProviderConnection;Lcom/android/server/am/ContentProviderRecord;Landroid/os/IBinder;ZZZ)Z

    .line 865
    monitor-exit v12
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :try_start_6
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 867
    :try_start_7
    invoke-static {v10, v11}, Landroid/os/Trace;->traceEnd(J)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 868
    nop

    .line 870
    .end local v4    # "conn":Lcom/android/server/am/ContentProviderConnection;
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 871
    nop

    .line 872
    return-void

    .line 870
    :catchall_1
    move-exception v0

    goto :goto_2

    .line 867
    .restart local v4    # "conn":Lcom/android/server/am/ContentProviderConnection;
    :catchall_2
    move-exception v0

    move-object p2, v0

    goto :goto_1

    .line 865
    :catchall_3
    move-exception v0

    move-object p2, v0

    :try_start_8
    monitor-exit v12
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    :try_start_9
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .end local v1    # "ident":J
    .end local v4    # "conn":Lcom/android/server/am/ContentProviderConnection;
    .end local v7    # "stable":Z
    .end local p0    # "this":Lcom/android/server/am/ContentProviderHelper;
    .end local p1    # "connection":Landroid/os/IBinder;
    throw p2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 867
    .restart local v1    # "ident":J
    .restart local v4    # "conn":Lcom/android/server/am/ContentProviderConnection;
    .restart local p0    # "this":Lcom/android/server/am/ContentProviderHelper;
    .restart local p1    # "connection":Landroid/os/IBinder;
    .restart local p2    # "stable":Z
    :catchall_4
    move-exception v0

    move v7, p2

    move-object p2, v0

    .end local p2    # "stable":Z
    .restart local v7    # "stable":Z
    :goto_1
    :try_start_a
    invoke-static {v10, v11}, Landroid/os/Trace;->traceEnd(J)V

    .line 868
    nop

    .end local v1    # "ident":J
    .end local v7    # "stable":Z
    .end local p0    # "this":Lcom/android/server/am/ContentProviderHelper;
    .end local p1    # "connection":Landroid/os/IBinder;
    throw p2

    .line 870
    .end local v4    # "conn":Lcom/android/server/am/ContentProviderConnection;
    .restart local v1    # "ident":J
    .restart local p0    # "this":Lcom/android/server/am/ContentProviderHelper;
    .restart local p1    # "connection":Landroid/os/IBinder;
    .restart local p2    # "stable":Z
    :catchall_5
    move-exception v0

    move v7, p2

    .end local p2    # "stable":Z
    .restart local v7    # "stable":Z
    goto :goto_2

    .line 856
    .end local v7    # "stable":Z
    .restart local v4    # "conn":Lcom/android/server/am/ContentProviderConnection;
    .restart local p2    # "stable":Z
    :cond_1
    move v7, p2

    .end local p2    # "stable":Z
    .restart local v7    # "stable":Z
    new-instance p2, Ljava/lang/NullPointerException;

    const-string v0, "connection is null"

    invoke-direct {p2, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .end local v1    # "ident":J
    .end local v7    # "stable":Z
    .end local p0    # "this":Lcom/android/server/am/ContentProviderHelper;
    .end local p1    # "connection":Landroid/os/IBinder;
    throw p2

    .line 849
    .end local v4    # "conn":Lcom/android/server/am/ContentProviderConnection;
    .restart local v1    # "ident":J
    .restart local p0    # "this":Lcom/android/server/am/ContentProviderHelper;
    .restart local p1    # "connection":Landroid/os/IBinder;
    .restart local p2    # "stable":Z
    :catch_0
    move-exception v0

    move v7, p2

    move-object p2, v0

    .line 850
    .restart local v7    # "stable":Z
    .local p2, "e":Ljava/lang/ClassCastException;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "removeContentProvider: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " not a ContentProviderConnection"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 852
    .local v0, "msg":Ljava/lang/String;
    const-string v3, "ContentProviderHelper"

    invoke-static {v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 853
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v1    # "ident":J
    .end local v7    # "stable":Z
    .end local p0    # "this":Lcom/android/server/am/ContentProviderHelper;
    .end local p1    # "connection":Landroid/os/IBinder;
    throw v3
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 870
    .end local v0    # "msg":Ljava/lang/String;
    .end local p2    # "e":Ljava/lang/ClassCastException;
    .restart local v1    # "ident":J
    .restart local v7    # "stable":Z
    .restart local p0    # "this":Lcom/android/server/am/ContentProviderHelper;
    .restart local p1    # "connection":Landroid/os/IBinder;
    :goto_2
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 871
    throw v0
.end method

.method removeContentProviderExternalAsUser(Ljava/lang/String;Landroid/os/IBinder;I)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "userId"    # I

    .line 875
    iget-object v0, p0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string v1, "android.permission.ACCESS_CONTENT_PROVIDERS_EXTERNALLY"

    const-string v2, "Do not have permission in call removeContentProviderExternal()"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityManagerService;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 878
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 880
    .local v0, "ident":J
    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/am/ContentProviderHelper;->removeContentProviderExternalUnchecked(Ljava/lang/String;Landroid/os/IBinder;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 882
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 883
    nop

    .line 884
    return-void

    .line 882
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 883
    throw v2
.end method

.method removeContentProviderExternalUnchecked(Ljava/lang/String;Landroid/os/IBinder;I)V
    .locals 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "userId"    # I

    .line 887
    iget-object v0, p0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    .line 888
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/ContentProviderHelper;->mProviderMap:Lcom/android/server/am/ProviderMap;

    invoke-virtual {v1, p1, p3}, Lcom/android/server/am/ProviderMap;->getProviderByName(Ljava/lang/String;I)Lcom/android/server/am/ContentProviderRecord;

    move-result-object v1

    .line 889
    .local v1, "cpr":Lcom/android/server/am/ContentProviderRecord;
    if-nez v1, :cond_0

    .line 894
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 912
    .end local v1    # "cpr":Lcom/android/server/am/ContentProviderRecord;
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 898
    .restart local v1    # "cpr":Lcom/android/server/am/ContentProviderRecord;
    :cond_0
    :try_start_1
    new-instance v2, Landroid/content/ComponentName;

    iget-object v3, v1, Lcom/android/server/am/ContentProviderRecord;->info:Landroid/content/pm/ProviderInfo;

    iget-object v3, v3, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    iget-object v4, v1, Lcom/android/server/am/ContentProviderRecord;->info:Landroid/content/pm/ProviderInfo;

    iget-object v4, v4, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 899
    .local v2, "comp":Landroid/content/ComponentName;
    iget-object v3, p0, Lcom/android/server/am/ContentProviderHelper;->mProviderMap:Lcom/android/server/am/ProviderMap;

    invoke-virtual {v3, v2, p3}, Lcom/android/server/am/ProviderMap;->getProviderByClass(Landroid/content/ComponentName;I)Lcom/android/server/am/ContentProviderRecord;

    move-result-object v3

    .line 900
    .local v3, "localCpr":Lcom/android/server/am/ContentProviderRecord;
    invoke-virtual {v3}, Lcom/android/server/am/ContentProviderRecord;->hasExternalProcessHandles()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 901
    iget-object v4, p0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mProcessStateController:Lcom/android/server/am/ProcessStateController;

    invoke-virtual {v4, v3, p2}, Lcom/android/server/am/ProcessStateController;->removeExternalProviderClient(Lcom/android/server/am/ContentProviderRecord;Landroid/os/IBinder;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 903
    iget-object v4, p0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v3, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    const/16 v6, 0x8

    invoke-virtual {v4, v5, v6}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjLocked(Lcom/android/server/am/ProcessRecord;I)Z

    goto :goto_0

    .line 905
    :cond_1
    const-string v4, "ContentProviderHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Attempt to remove content provider "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " with no external reference for token: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 909
    :cond_2
    const-string v4, "ContentProviderHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Attempt to remove content provider: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " with no external references."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 912
    .end local v1    # "cpr":Lcom/android/server/am/ContentProviderRecord;
    .end local v2    # "comp":Landroid/content/ComponentName;
    .end local v3    # "localCpr":Lcom/android/server/am/ContentProviderRecord;
    :goto_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 913
    return-void

    .line 912
    :goto_1
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method removeDyingProviderLocked(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ContentProviderRecord;Z)Z
    .locals 20
    .param p1, "proc"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "cpr"    # Lcom/android/server/am/ContentProviderRecord;
    .param p3, "always"    # Z

    .line 1819
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    iget-object v0, v1, Lcom/android/server/am/ContentProviderHelper;->mLaunchingProviders:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    .line 1820
    .local v4, "inLaunching":Z
    const/4 v5, 0x1

    if-eqz v4, :cond_0

    if-nez p3, :cond_0

    iget v0, v3, Lcom/android/server/am/ContentProviderRecord;->mRestartCount:I

    add-int/2addr v0, v5

    iput v0, v3, Lcom/android/server/am/ContentProviderRecord;->mRestartCount:I

    const/4 v6, 0x3

    if-le v0, v6, :cond_0

    .line 1822
    const/4 v0, 0x1

    move v6, v0

    .end local p3    # "always":Z
    .local v0, "always":Z
    goto :goto_0

    .line 1825
    .end local v0    # "always":Z
    .restart local p3    # "always":Z
    :cond_0
    move/from16 v6, p3

    .end local p3    # "always":Z
    .local v6, "always":Z
    :goto_0
    const/4 v7, 0x0

    if-eqz v4, :cond_1

    if-eqz v6, :cond_5

    .line 1826
    :cond_1
    monitor-enter p2

    .line 1827
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, v3, Lcom/android/server/am/ContentProviderRecord;->launchingApp:Lcom/android/server/am/ProcessRecord;

    .line 1828
    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V

    .line 1829
    invoke-virtual {v3, v7}, Lcom/android/server/am/ContentProviderRecord;->onProviderPublishStatusLocked(Z)V

    .line 1830
    iget-object v0, v1, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    const/16 v8, 0x49

    invoke-virtual {v0, v8, v3}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 1832
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1833
    iget v0, v3, Lcom/android/server/am/ContentProviderRecord;->uid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 1834
    .local v0, "userId":I
    const/4 v8, 0x0

    .line 1837
    .local v8, "removed":Z
    iget-object v9, v1, Lcom/android/server/am/ContentProviderHelper;->mProviderMap:Lcom/android/server/am/ProviderMap;

    iget-object v10, v3, Lcom/android/server/am/ContentProviderRecord;->name:Landroid/content/ComponentName;

    invoke-virtual {v9, v10, v0}, Lcom/android/server/am/ProviderMap;->getProviderByClass(Landroid/content/ComponentName;I)Lcom/android/server/am/ContentProviderRecord;

    move-result-object v9

    if-ne v9, v3, :cond_2

    .line 1838
    iget-object v9, v1, Lcom/android/server/am/ContentProviderHelper;->mProviderMap:Lcom/android/server/am/ProviderMap;

    iget-object v10, v3, Lcom/android/server/am/ContentProviderRecord;->name:Landroid/content/ComponentName;

    invoke-virtual {v9, v10, v0}, Lcom/android/server/am/ProviderMap;->removeProviderByClass(Landroid/content/ComponentName;I)V

    .line 1839
    const/4 v8, 0x1

    .line 1841
    :cond_2
    iget-object v9, v3, Lcom/android/server/am/ContentProviderRecord;->info:Landroid/content/pm/ProviderInfo;

    iget-object v9, v9, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    const-string v10, ";"

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 1842
    .local v9, "names":[Ljava/lang/String;
    const/4 v10, 0x0

    .local v10, "j":I
    :goto_1
    array-length v11, v9

    if-ge v10, v11, :cond_4

    .line 1845
    iget-object v11, v1, Lcom/android/server/am/ContentProviderHelper;->mProviderMap:Lcom/android/server/am/ProviderMap;

    aget-object v12, v9, v10

    invoke-virtual {v11, v12, v0}, Lcom/android/server/am/ProviderMap;->getProviderByName(Ljava/lang/String;I)Lcom/android/server/am/ContentProviderRecord;

    move-result-object v11

    if-ne v11, v3, :cond_3

    .line 1846
    iget-object v11, v1, Lcom/android/server/am/ContentProviderHelper;->mProviderMap:Lcom/android/server/am/ProviderMap;

    aget-object v12, v9, v10

    invoke-virtual {v11, v12, v0}, Lcom/android/server/am/ProviderMap;->removeProviderByName(Ljava/lang/String;I)V

    .line 1847
    const/4 v8, 0x1

    .line 1842
    :cond_3
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_4
    nop

    .line 1850
    .end local v10    # "j":I
    if-eqz v8, :cond_5

    iget-object v10, v3, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    if-eqz v10, :cond_5

    .line 1851
    iget-object v10, v1, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v10, v10, Lcom/android/server/am/ActivityManagerService;->mProcessStateController:Lcom/android/server/am/ProcessStateController;

    iget-object v11, v3, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    iget-object v12, v3, Lcom/android/server/am/ContentProviderRecord;->info:Landroid/content/pm/ProviderInfo;

    iget-object v12, v12, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    invoke-virtual {v10, v11, v12}, Lcom/android/server/am/ProcessStateController;->removePublishedProvider(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)V

    .line 1855
    .end local v0    # "userId":I
    .end local v8    # "removed":Z
    .end local v9    # "names":[Ljava/lang/String;
    :cond_5
    iget-object v0, v3, Lcom/android/server/am/ContentProviderRecord;->connections:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v5

    move v8, v0

    .local v8, "i":I
    :goto_2
    if-ltz v8, :cond_e

    .line 1856
    iget-object v0, v3, Lcom/android/server/am/ContentProviderRecord;->connections:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lcom/android/server/am/ContentProviderConnection;

    .line 1857
    .local v9, "conn":Lcom/android/server/am/ContentProviderConnection;
    iget-boolean v0, v9, Lcom/android/server/am/ContentProviderConnection;->waiting:Z

    if-eqz v0, :cond_6

    .line 1861
    if-eqz v4, :cond_6

    if-nez v6, :cond_6

    .line 1862
    move/from16 p3, v6

    goto/16 :goto_6

    .line 1865
    :cond_6
    iget-object v10, v9, Lcom/android/server/am/ContentProviderConnection;->client:Lcom/android/server/am/ProcessRecord;

    .line 1866
    .local v10, "capp":Lcom/android/server/am/ProcessRecord;
    invoke-virtual {v10}, Lcom/android/server/am/ProcessRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object v11

    .line 1867
    .local v11, "thread":Landroid/app/IApplicationThread;
    iput-boolean v5, v9, Lcom/android/server/am/ContentProviderConnection;->dead:Z

    .line 1868
    invoke-virtual {v9}, Lcom/android/server/am/ContentProviderConnection;->stableCount()I

    move-result v0

    if-lez v0, :cond_a

    .line 1869
    invoke-virtual {v10}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v0

    .line 1870
    .local v0, "pid":I
    invoke-virtual {v10}, Lcom/android/server/am/ProcessRecord;->isPersistent()Z

    move-result v12

    if-nez v12, :cond_9

    if-eqz v11, :cond_9

    if-eqz v0, :cond_9

    sget v12, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    if-eq v0, v12, :cond_9

    .line 1872
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "depends on provider "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v3, Lcom/android/server/am/ContentProviderRecord;->name:Landroid/content/ComponentName;

    .line 1873
    invoke-virtual {v13}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, " in dying proc "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1874
    if-eqz v2, :cond_7

    iget-object v13, v2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    goto :goto_3

    :cond_7
    const-string v13, "??"

    :goto_3
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, " (adj "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1875
    if-eqz v2, :cond_8

    iget-object v13, v2, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v13}, Lcom/android/server/am/ProcessStateRecord;->getSetAdj()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    goto :goto_4

    :cond_8
    const-string v13, "??"

    :goto_4
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v13, ")"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 1872
    const/16 v13, 0xc

    invoke-virtual {v10, v12, v13, v7, v5}, Lcom/android/server/am/ProcessRecord;->killLocked(Ljava/lang/String;IIZ)V

    .line 1880
    .end local v0    # "pid":I
    :cond_9
    move/from16 p3, v6

    goto :goto_6

    :cond_a
    if-eqz v11, :cond_d

    iget-object v0, v9, Lcom/android/server/am/ContentProviderConnection;->provider:Lcom/android/server/am/ContentProviderRecord;

    iget-object v0, v0, Lcom/android/server/am/ContentProviderRecord;->provider:Landroid/content/IContentProvider;

    if-eqz v0, :cond_d

    .line 1882
    :try_start_1
    iget-object v0, v9, Lcom/android/server/am/ContentProviderConnection;->provider:Lcom/android/server/am/ContentProviderRecord;

    iget-object v0, v0, Lcom/android/server/am/ContentProviderRecord;->provider:Landroid/content/IContentProvider;

    invoke-interface {v0}, Landroid/content/IContentProvider;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {v11, v0}, Landroid/app/IApplicationThread;->unstableProviderDied(Landroid/os/IBinder;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1884
    goto :goto_5

    .line 1883
    :catch_0
    move-exception v0

    .line 1887
    :goto_5
    iget-object v0, v3, Lcom/android/server/am/ContentProviderRecord;->connections:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1888
    iget-object v0, v3, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    if-eqz v0, :cond_b

    iget-object v0, v3, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    invoke-direct {v1, v0}, Lcom/android/server/am/ContentProviderHelper;->hasProviderConnectionLocked(Lcom/android/server/am/ProcessRecord;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 1889
    iget-object v0, v3, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    const/16 v12, 0x40

    invoke-virtual {v0, v12}, Lcom/android/server/am/ProcessProfileRecord;->clearHostingComponentType(I)V

    .line 1891
    :cond_b
    iget-object v0, v9, Lcom/android/server/am/ContentProviderConnection;->client:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->mProviders:Lcom/android/server/am/ProcessProviderRecord;

    invoke-virtual {v0, v9}, Lcom/android/server/am/ProcessProviderRecord;->removeProviderConnection(Lcom/android/server/am/ContentProviderConnection;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1892
    iget-object v12, v1, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v13, v10, Lcom/android/server/am/ProcessRecord;->uid:I

    iget-object v14, v10, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget v15, v3, Lcom/android/server/am/ContentProviderRecord;->uid:I

    iget-object v0, v3, Lcom/android/server/am/ContentProviderRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    move/from16 p3, v6

    .end local v6    # "always":Z
    .restart local p3    # "always":Z
    iget-wide v5, v0, Landroid/content/pm/ApplicationInfo;->longVersionCode:J

    iget-object v0, v3, Lcom/android/server/am/ContentProviderRecord;->name:Landroid/content/ComponentName;

    iget-object v7, v3, Lcom/android/server/am/ContentProviderRecord;->info:Landroid/content/pm/ProviderInfo;

    iget-object v7, v7, Landroid/content/pm/ProviderInfo;->processName:Ljava/lang/String;

    move-object/from16 v18, v0

    move-wide/from16 v16, v5

    move-object/from16 v19, v7

    invoke-virtual/range {v12 .. v19}, Lcom/android/server/am/ActivityManagerService;->stopAssociationLocked(ILjava/lang/String;IJLandroid/content/ComponentName;Ljava/lang/String;)V

    goto :goto_6

    .line 1891
    .end local p3    # "always":Z
    .restart local v6    # "always":Z
    :cond_c
    move/from16 p3, v6

    .end local v6    # "always":Z
    .restart local p3    # "always":Z
    goto :goto_6

    .line 1880
    .end local p3    # "always":Z
    .restart local v6    # "always":Z
    :cond_d
    move/from16 p3, v6

    .line 1855
    .end local v6    # "always":Z
    .end local v9    # "conn":Lcom/android/server/am/ContentProviderConnection;
    .end local v10    # "capp":Lcom/android/server/am/ProcessRecord;
    .end local v11    # "thread":Landroid/app/IApplicationThread;
    .restart local p3    # "always":Z
    :goto_6
    add-int/lit8 v8, v8, -0x1

    move/from16 v6, p3

    const/4 v5, 0x1

    const/4 v7, 0x0

    goto/16 :goto_2

    .end local p3    # "always":Z
    .restart local v6    # "always":Z
    :cond_e
    move/from16 p3, v6

    .line 1898
    .end local v6    # "always":Z
    .end local v8    # "i":I
    .restart local p3    # "always":Z
    if-eqz v4, :cond_f

    if-eqz p3, :cond_f

    .line 1899
    iget-object v0, v1, Lcom/android/server/am/ContentProviderHelper;->mLaunchingProviders:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1900
    const/4 v5, 0x0

    iput v5, v3, Lcom/android/server/am/ContentProviderRecord;->mRestartCount:I

    .line 1901
    const/4 v4, 0x0

    .line 1903
    :cond_f
    return v4

    .line 1832
    .end local p3    # "always":Z
    .restart local v6    # "always":Z
    :catchall_0
    move-exception v0

    move/from16 p3, v6

    .end local v6    # "always":Z
    .restart local p3    # "always":Z
    :goto_7
    :try_start_2
    monitor-exit p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_7
.end method

.method unstableProviderDied(Landroid/os/IBinder;)V
    .locals 10
    .param p1, "connection"    # Landroid/os/IBinder;

    .line 942
    :try_start_0
    move-object v0, p1

    check-cast v0, Lcom/android/server/am/ContentProviderConnection;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 947
    .local v0, "conn":Lcom/android/server/am/ContentProviderConnection;
    nop

    .line 948
    if-eqz v0, :cond_6

    .line 952
    const-string/jumbo v1, "unstableProviderDied: "

    .line 954
    iget-object v2, v0, Lcom/android/server/am/ContentProviderConnection;->provider:Lcom/android/server/am/ContentProviderRecord;

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/android/server/am/ContentProviderConnection;->provider:Lcom/android/server/am/ContentProviderRecord;

    iget-object v2, v2, Lcom/android/server/am/ContentProviderRecord;->info:Landroid/content/pm/ProviderInfo;

    if-eqz v2, :cond_0

    .line 955
    iget-object v2, v0, Lcom/android/server/am/ContentProviderConnection;->provider:Lcom/android/server/am/ContentProviderRecord;

    iget-object v2, v2, Lcom/android/server/am/ContentProviderRecord;->info:Landroid/content/pm/ProviderInfo;

    iget-object v2, v2, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v2, ""

    .line 952
    :goto_0
    const-wide/16 v3, 0x40

    invoke-static {v3, v4, v1, v2}, Lcom/android/server/am/ActivityManagerService;->traceBegin(JLjava/lang/String;Ljava/lang/String;)V

    .line 960
    :try_start_1
    iget-object v1, p0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    monitor-enter v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 961
    :try_start_2
    iget-object v2, v0, Lcom/android/server/am/ContentProviderConnection;->provider:Lcom/android/server/am/ContentProviderRecord;

    iget-object v2, v2, Lcom/android/server/am/ContentProviderRecord;->provider:Landroid/content/IContentProvider;

    .line 962
    .local v2, "provider":Landroid/content/IContentProvider;
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 964
    if-nez v2, :cond_1

    .line 1005
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    .line 966
    return-void

    .line 970
    :cond_1
    :try_start_4
    invoke-interface {v2}, Landroid/content/IContentProvider;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {v1}, Landroid/os/IBinder;->pingBinder()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 972
    iget-object v1, p0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    monitor-enter v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 973
    :try_start_5
    const-string v5, "ContentProviderHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "unstableProviderDied: caller "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " says "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " died, but we don\'t agree"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 975
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1005
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    .line 975
    return-void

    .line 976
    :catchall_0
    move-exception v5

    :try_start_6
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .end local v0    # "conn":Lcom/android/server/am/ContentProviderConnection;
    .end local p0    # "this":Lcom/android/server/am/ContentProviderHelper;
    .end local p1    # "connection":Landroid/os/IBinder;
    throw v5

    .line 1005
    .end local v2    # "provider":Landroid/content/IContentProvider;
    .restart local v0    # "conn":Lcom/android/server/am/ContentProviderConnection;
    .restart local p0    # "this":Lcom/android/server/am/ContentProviderHelper;
    .restart local p1    # "connection":Landroid/os/IBinder;
    :catchall_1
    move-exception v1

    goto/16 :goto_3

    .line 980
    .restart local v2    # "provider":Landroid/content/IContentProvider;
    :cond_2
    iget-object v1, p0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    monitor-enter v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 981
    :try_start_8
    iget-object v5, v0, Lcom/android/server/am/ContentProviderConnection;->provider:Lcom/android/server/am/ContentProviderRecord;

    iget-object v5, v5, Lcom/android/server/am/ContentProviderRecord;->provider:Landroid/content/IContentProvider;

    if-eq v5, v2, :cond_3

    .line 983
    monitor-exit v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 1005
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    .line 983
    return-void

    .line 1003
    :catchall_2
    move-exception v5

    goto :goto_2

    .line 986
    :cond_3
    :try_start_9
    iget-object v5, v0, Lcom/android/server/am/ContentProviderConnection;->provider:Lcom/android/server/am/ContentProviderRecord;

    iget-object v5, v5, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    .line 987
    .local v5, "proc":Lcom/android/server/am/ProcessRecord;
    if-eqz v5, :cond_4

    invoke-virtual {v5}, Lcom/android/server/am/ProcessRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object v6

    if-nez v6, :cond_5

    :cond_4
    goto :goto_1

    .line 994
    :cond_5
    iget-object v6, p0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string v7, "ContentProviderHelper"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Process "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v5, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " (pid "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 995
    invoke-virtual {v5}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ") early provider death"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iget-object v9, v5, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v9, v9, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 994
    invoke-virtual {v6, v7, v8, v9}, Lcom/android/server/am/ActivityManagerService;->reportUidInfoMessageLocked(Ljava/lang/String;Ljava/lang/String;I)V

    .line 997
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 999
    .local v6, "token":J
    :try_start_a
    iget-object v8, p0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string/jumbo v9, "unstable content provider"

    invoke-virtual {v8, v5, v9}, Lcom/android/server/am/ActivityManagerService;->appDiedLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 1001
    :try_start_b
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1002
    nop

    .line 1003
    .end local v5    # "proc":Lcom/android/server/am/ProcessRecord;
    .end local v6    # "token":J
    monitor-exit v1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    :try_start_c
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 1005
    .end local v2    # "provider":Landroid/content/IContentProvider;
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    .line 1006
    nop

    .line 1007
    return-void

    .line 1001
    .restart local v2    # "provider":Landroid/content/IContentProvider;
    .restart local v5    # "proc":Lcom/android/server/am/ProcessRecord;
    .restart local v6    # "token":J
    :catchall_3
    move-exception v8

    :try_start_d
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1002
    nop

    .end local v0    # "conn":Lcom/android/server/am/ContentProviderConnection;
    .end local v2    # "provider":Landroid/content/IContentProvider;
    .end local p0    # "this":Lcom/android/server/am/ContentProviderHelper;
    .end local p1    # "connection":Landroid/os/IBinder;
    throw v8

    .line 989
    .end local v6    # "token":J
    .restart local v0    # "conn":Lcom/android/server/am/ContentProviderConnection;
    .restart local v2    # "provider":Landroid/content/IContentProvider;
    .restart local p0    # "this":Lcom/android/server/am/ContentProviderHelper;
    .restart local p1    # "connection":Landroid/os/IBinder;
    :goto_1
    monitor-exit v1
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    .line 1005
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    .line 989
    return-void

    .line 1003
    .end local v5    # "proc":Lcom/android/server/am/ProcessRecord;
    :goto_2
    :try_start_e
    monitor-exit v1
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    :try_start_f
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .end local v0    # "conn":Lcom/android/server/am/ContentProviderConnection;
    .end local p0    # "this":Lcom/android/server/am/ContentProviderHelper;
    .end local p1    # "connection":Landroid/os/IBinder;
    throw v5
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    .line 962
    .end local v2    # "provider":Landroid/content/IContentProvider;
    .restart local v0    # "conn":Lcom/android/server/am/ContentProviderConnection;
    .restart local p0    # "this":Lcom/android/server/am/ContentProviderHelper;
    .restart local p1    # "connection":Landroid/os/IBinder;
    :catchall_4
    move-exception v2

    :try_start_10
    monitor-exit v1
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_4

    :try_start_11
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .end local v0    # "conn":Lcom/android/server/am/ContentProviderConnection;
    .end local p0    # "this":Lcom/android/server/am/ContentProviderHelper;
    .end local p1    # "connection":Landroid/os/IBinder;
    throw v2
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    .line 1005
    .restart local v0    # "conn":Lcom/android/server/am/ContentProviderConnection;
    .restart local p0    # "this":Lcom/android/server/am/ContentProviderHelper;
    .restart local p1    # "connection":Landroid/os/IBinder;
    :goto_3
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    .line 1006
    throw v1

    .line 949
    :cond_6
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "connection is null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 943
    .end local v0    # "conn":Lcom/android/server/am/ContentProviderConnection;
    :catch_0
    move-exception v0

    .line 944
    .local v0, "e":Ljava/lang/ClassCastException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "refContentProvider: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " not a ContentProviderConnection"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 945
    .local v1, "msg":Ljava/lang/String;
    const-string v2, "ContentProviderHelper"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 946
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
