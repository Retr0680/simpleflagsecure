.class public Lcom/android/server/uri/UriGrantsManagerService;
.super Landroid/app/IUriGrantsManager$Stub;
.source "UriGrantsManagerService.java"

# interfaces
.implements Lcom/android/server/uri/UriMetricsHelper$PersistentUriGrantsProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/uri/UriGrantsManagerService$H;,
        Lcom/android/server/uri/UriGrantsManagerService$LocalService;,
        Lcom/android/server/uri/UriGrantsManagerService$Lifecycle;
    }
.end annotation


# static fields
.field private static final ATTR_CREATED_TIME:Ljava/lang/String; = "createdTime"

.field private static final ATTR_MODE_FLAGS:Ljava/lang/String; = "modeFlags"

.field private static final ATTR_PREFIX:Ljava/lang/String; = "prefix"

.field private static final ATTR_SOURCE_PKG:Ljava/lang/String; = "sourcePkg"

.field private static final ATTR_SOURCE_USER_ID:Ljava/lang/String; = "sourceUserId"

.field private static final ATTR_TARGET_PKG:Ljava/lang/String; = "targetPkg"

.field private static final ATTR_TARGET_USER_ID:Ljava/lang/String; = "targetUserId"

.field private static final ATTR_URI:Ljava/lang/String; = "uri"

.field private static final ATTR_USER_HANDLE:Ljava/lang/String; = "userHandle"

.field private static final DEBUG:Z = false

.field private static final ENABLE_DYNAMIC_PERMISSIONS:Z = true

.field private static final MAX_PERSISTED_URI_GRANTS:I = 0x200

.field private static final TAG:Ljava/lang/String; = "UriGrantsManagerService"

.field private static final TAG_URI_GRANT:Ljava/lang/String; = "uri-grant"

.field private static final TAG_URI_GRANTS:Ljava/lang/String; = "uri-grants"


# instance fields
.field mAmInternal:Landroid/app/ActivityManagerInternal;

.field private final mGrantFile:Landroid/util/AtomicFile;

.field private final mGrantedUriPermissions:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/ArrayMap<",
            "Lcom/android/server/uri/GrantUri;",
            "Lcom/android/server/uri/UriPermission;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mH:Lcom/android/server/uri/UriGrantsManagerService$H;

.field private final mLaunchToContentUrisWithoutCallerReadPermission:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/ArraySet<",
            "Landroid/net/Uri;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;

.field mMetricsHelper:Lcom/android/server/uri/UriMetricsHelper;

.field mPmInternal:Landroid/content/pm/PackageManagerInternal;


# direct methods
.method static bridge synthetic -$$Nest$fgetmGrantedUriPermissions(Lcom/android/server/uri/UriGrantsManagerService;)Landroid/util/SparseArray;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantedUriPermissions:Landroid/util/SparseArray;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLock(Lcom/android/server/uri/UriGrantsManagerService;)Ljava/lang/Object;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/uri/UriGrantsManagerService;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mcheckAuthorityGrantsLocked(Lcom/android/server/uri/UriGrantsManagerService;ILandroid/content/pm/ProviderInfo;IZ)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/uri/UriGrantsManagerService;->checkAuthorityGrantsLocked(ILandroid/content/pm/ProviderInfo;IZ)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mcheckContentUriPermissionFullUnlocked(Lcom/android/server/uri/UriGrantsManagerService;Lcom/android/server/uri/GrantUri;II)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/uri/UriGrantsManagerService;->checkContentUriPermissionFullUnlocked(Lcom/android/server/uri/GrantUri;II)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mcheckGrantUriPermissionFromIntentUnlocked(Lcom/android/server/uri/UriGrantsManagerService;ILjava/lang/String;Landroid/content/Intent;ILcom/android/server/uri/NeededUriGrants;ILjava/lang/Integer;Ljava/lang/Integer;)Lcom/android/server/uri/NeededUriGrants;
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p8}, Lcom/android/server/uri/UriGrantsManagerService;->checkGrantUriPermissionFromIntentUnlocked(ILjava/lang/String;Landroid/content/Intent;ILcom/android/server/uri/NeededUriGrants;ILjava/lang/Integer;Ljava/lang/Integer;)Lcom/android/server/uri/NeededUriGrants;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mcheckGrantUriPermissionUnlocked(Lcom/android/server/uri/UriGrantsManagerService;ILjava/lang/String;Landroid/net/Uri;II)I
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Lcom/android/server/uri/UriGrantsManagerService;->checkGrantUriPermissionUnlocked(ILjava/lang/String;Landroid/net/Uri;II)I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mcheckUriPermissionLocked(Lcom/android/server/uri/UriGrantsManagerService;Lcom/android/server/uri/GrantUri;II)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/uri/UriGrantsManagerService;->checkUriPermissionLocked(Lcom/android/server/uri/GrantUri;II)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$menforceNotIsolatedCaller(Lcom/android/server/uri/UriGrantsManagerService;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/uri/UriGrantsManagerService;->enforceNotIsolatedCaller(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mgrantUriPermissionUncheckedFromIntent(Lcom/android/server/uri/UriGrantsManagerService;Lcom/android/server/uri/NeededUriGrants;Lcom/android/server/uri/UriPermissionOwner;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/server/uri/UriGrantsManagerService;->grantUriPermissionUncheckedFromIntent(Lcom/android/server/uri/NeededUriGrants;Lcom/android/server/uri/UriPermissionOwner;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mnotifyActivityLaunchRequestCompletedUnlocked(Lcom/android/server/uri/UriGrantsManagerService;Ljava/lang/Integer;ZLjava/lang/String;ILjava/lang/String;ILjava/lang/String;Z)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p8}, Lcom/android/server/uri/UriGrantsManagerService;->notifyActivityLaunchRequestCompletedUnlocked(Ljava/lang/Integer;ZLjava/lang/String;ILjava/lang/String;ILjava/lang/String;Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mreadGrantedUriPermissionsLocked(Lcom/android/server/uri/UriGrantsManagerService;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/uri/UriGrantsManagerService;->readGrantedUriPermissionsLocked()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mremoveUriPermissionIfNeededLocked(Lcom/android/server/uri/UriGrantsManagerService;Lcom/android/server/uri/UriPermission;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/uri/UriGrantsManagerService;->removeUriPermissionIfNeededLocked(Lcom/android/server/uri/UriPermission;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mremoveUriPermissionsForPackageLocked(Lcom/android/server/uri/UriGrantsManagerService;Ljava/lang/String;IZZ)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/uri/UriGrantsManagerService;->removeUriPermissionsForPackageLocked(Ljava/lang/String;IZZ)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mrevokeUriPermission(Lcom/android/server/uri/UriGrantsManagerService;Ljava/lang/String;ILcom/android/server/uri/GrantUri;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/uri/UriGrantsManagerService;->revokeUriPermission(Ljava/lang/String;ILcom/android/server/uri/GrantUri;I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mstart(Lcom/android/server/uri/UriGrantsManagerService;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/uri/UriGrantsManagerService;->start()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mwriteGrantedUriPermissions(Lcom/android/server/uri/UriGrantsManagerService;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/uri/UriGrantsManagerService;->writeGrantedUriPermissions()V

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 178
    invoke-static {}, Lcom/android/server/SystemServiceManager;->ensureSystemDir()Ljava/io/File;

    move-result-object v0

    const-string v1, "uri-grants"

    invoke-direct {p0, v0, v1}, Lcom/android/server/uri/UriGrantsManagerService;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 179
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/uri/UriGrantsManagerService-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/uri/UriGrantsManagerService;-><init>()V

    return-void
.end method

.method private constructor <init>(Ljava/io/File;Ljava/lang/String;)V
    .locals 2
    .param p1, "systemDir"    # Ljava/io/File;
    .param p2, "commitTag"    # Ljava/lang/String;

    .line 181
    invoke-direct {p0}, Landroid/app/IUriGrantsManager$Stub;-><init>()V

    .line 130
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/uri/UriGrantsManagerService;->mLock:Ljava/lang/Object;

    .line 157
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantedUriPermissions:Landroid/util/SparseArray;

    .line 173
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/uri/UriGrantsManagerService;->mLaunchToContentUrisWithoutCallerReadPermission:Landroid/util/SparseArray;

    .line 182
    new-instance v0, Lcom/android/server/uri/UriGrantsManagerService$H;

    invoke-static {}, Lcom/android/server/IoThread;->get()Lcom/android/server/IoThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/ServiceThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/uri/UriGrantsManagerService$H;-><init>(Lcom/android/server/uri/UriGrantsManagerService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/uri/UriGrantsManagerService;->mH:Lcom/android/server/uri/UriGrantsManagerService$H;

    .line 183
    new-instance v0, Ljava/io/File;

    const-string v1, "urigrants.xml"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 184
    .local v0, "file":Ljava/io/File;
    new-instance v1, Landroid/util/AtomicFile;

    if-eqz p2, :cond_0

    invoke-direct {v1, v0, p2}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-direct {v1, v0}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    :goto_0
    iput-object v1, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantFile:Landroid/util/AtomicFile;

    .line 185
    return-void
.end method

.method synthetic constructor <init>(Ljava/io/File;Ljava/lang/String;Lcom/android/server/uri/UriGrantsManagerService-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/server/uri/UriGrantsManagerService;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-void
.end method

.method private checkAuthorityGrantsLocked(ILandroid/content/pm/ProviderInfo;IZ)Z
    .locals 5
    .param p1, "callingUid"    # I
    .param p2, "cpi"    # Landroid/content/pm/ProviderInfo;
    .param p3, "userId"    # I
    .param p4, "checkUser"    # Z

    .line 570
    iget-object v0, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantedUriPermissions:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    .line 571
    .local v0, "perms":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/uri/GrantUri;Lcom/android/server/uri/UriPermission;>;"
    if-eqz v0, :cond_2

    .line 572
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_2

    .line 573
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/uri/GrantUri;

    .line 574
    .local v3, "grantUri":Lcom/android/server/uri/GrantUri;
    iget v4, v3, Lcom/android/server/uri/GrantUri;->sourceUserId:I

    if-eq v4, p3, :cond_0

    if-nez p4, :cond_1

    .line 575
    :cond_0
    iget-object v4, v3, Lcom/android/server/uri/GrantUri;->uri:Landroid/net/Uri;

    invoke-direct {p0, v4, p2}, Lcom/android/server/uri/UriGrantsManagerService;->matchesProvider(Landroid/net/Uri;Landroid/content/pm/ProviderInfo;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 576
    return v2

    .line 572
    .end local v3    # "grantUri":Lcom/android/server/uri/GrantUri;
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 581
    .end local v1    # "i":I
    :cond_2
    const/4 v1, 0x0

    return v1
.end method

.method private checkContentUriPermissionFullUnlocked(Lcom/android/server/uri/GrantUri;II)Z
    .locals 6
    .param p1, "grantUri"    # Lcom/android/server/uri/GrantUri;
    .param p2, "uid"    # I
    .param p3, "modeFlags"    # I

    .line 1482
    if-ltz p2, :cond_5

    .line 1487
    const-string v0, "check content URI permission"

    invoke-direct {p0, p1, p3, v0}, Lcom/android/server/uri/UriGrantsManagerService;->isContentUriWithAccessModeFlags(Lcom/android/server/uri/GrantUri;ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1494
    invoke-static {p2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    .line 1495
    .local v0, "appId":I
    const/16 v1, 0x3e8

    const/4 v2, 0x1

    if-eq v0, v1, :cond_0

    if-nez v0, :cond_1

    :cond_0
    goto :goto_0

    .line 1500
    :cond_1
    iget-object v1, p1, Lcom/android/server/uri/GrantUri;->uri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    .line 1501
    .local v1, "authority":Ljava/lang/String;
    iget v3, p1, Lcom/android/server/uri/GrantUri;->sourceUserId:I

    const/high16 v4, 0x10000000

    invoke-direct {p0, v1, v3, v4, p2}, Lcom/android/server/uri/UriGrantsManagerService;->getProviderInfo(Ljava/lang/String;III)Landroid/content/pm/ProviderInfo;

    move-result-object v3

    .line 1504
    .local v3, "pi":Landroid/content/pm/ProviderInfo;
    if-nez v3, :cond_2

    .line 1505
    const-string v2, "UriGrantsManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No content provider found for content URI permission check: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p1, Lcom/android/server/uri/GrantUri;->uri:Landroid/net/Uri;

    .line 1506
    invoke-virtual {v5}, Landroid/net/Uri;->toSafeString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1505
    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1507
    const/4 v2, 0x0

    return v2

    .line 1511
    :cond_2
    invoke-direct {p0, v3, p1, p2, p3}, Lcom/android/server/uri/UriGrantsManagerService;->checkHoldingPermissionsUnlocked(Landroid/content/pm/ProviderInfo;Lcom/android/server/uri/GrantUri;II)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1512
    return v2

    .line 1516
    :cond_3
    iget-object v4, p0, Lcom/android/server/uri/UriGrantsManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 1517
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/uri/UriGrantsManagerService;->checkUriPermissionLocked(Lcom/android/server/uri/GrantUri;II)Z

    move-result v2

    monitor-exit v4

    return v2

    .line 1518
    :catchall_0
    move-exception v2

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 1496
    .end local v1    # "authority":Ljava/lang/String;
    .end local v3    # "pi":Landroid/content/pm/ProviderInfo;
    :goto_0
    return v2

    .line 1489
    .end local v0    # "appId":I
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The URI must be a content URI and the mode flags must be at least read and/or write for the content URI permission check of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/android/server/uri/GrantUri;->uri:Landroid/net/Uri;

    .line 1491
    invoke-virtual {v2}, Landroid/net/Uri;->toSafeString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1483
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Uid must be positive for the content URI permission check of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/android/server/uri/GrantUri;->uri:Landroid/net/Uri;

    .line 1484
    invoke-virtual {v2}, Landroid/net/Uri;->toSafeString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private checkGrantUriPermissionFromIntentUnlocked(ILjava/lang/String;Landroid/content/Intent;ILcom/android/server/uri/NeededUriGrants;ILjava/lang/Integer;Ljava/lang/Integer;)Lcom/android/server/uri/NeededUriGrants;
    .locals 16
    .param p1, "callingUid"    # I
    .param p2, "targetPkg"    # Ljava/lang/String;
    .param p3, "intent"    # Landroid/content/Intent;
    .param p4, "mode"    # I
    .param p5, "needed"    # Lcom/android/server/uri/NeededUriGrants;
    .param p6, "targetUserId"    # I
    .param p7, "requireContentUriPermissionFromCaller"    # Ljava/lang/Integer;
    .param p8, "requestHashCode"    # Ljava/lang/Integer;

    .line 645
    move-object/from16 v7, p2

    move-object/from16 v8, p5

    if-eqz v7, :cond_f

    .line 649
    const/4 v9, 0x0

    if-nez p3, :cond_0

    .line 650
    return-object v9

    .line 654
    :cond_0
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getContentUserHint()I

    move-result v0

    .line 655
    .local v0, "contentUserHint":I
    const/4 v1, -0x2

    if-ne v0, v1, :cond_1

    .line 656
    invoke-static/range {p1 .. p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    move v2, v0

    goto :goto_0

    .line 655
    :cond_1
    move v2, v0

    .line 659
    .end local v0    # "contentUserHint":I
    .local v2, "contentUserHint":I
    :goto_0
    nop

    .line 660
    move-object/from16 v0, p0

    move/from16 v4, p1

    move-object/from16 v1, p3

    move/from16 v3, p4

    move-object/from16 v5, p7

    move-object/from16 v6, p8

    invoke-direct/range {v0 .. v6}, Lcom/android/server/uri/UriGrantsManagerService;->enforceRequireContentUriPermissionFromCallerOnIntentExtraStreamUnlocked(Landroid/content/Intent;IIILjava/lang/Integer;Ljava/lang/Integer;)V

    move v11, v2

    move v1, v4

    move-object v10, v6

    move v4, v3

    move-object v6, v5

    .line 665
    .end local v2    # "contentUserHint":I
    .local v11, "contentUserHint":I
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v12

    .line 666
    .local v12, "data":Landroid/net/Uri;
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getClipData()Landroid/content/ClipData;

    move-result-object v13

    .line 667
    .local v13, "clip":Landroid/content/ClipData;
    if-nez v12, :cond_2

    if-nez v13, :cond_2

    .line 668
    return-object v9

    .line 672
    :cond_2
    if-eqz v8, :cond_3

    .line 673
    iget v2, v8, Lcom/android/server/uri/NeededUriGrants;->targetUid:I

    move/from16 v3, p6

    move v5, v2

    .local v2, "targetUid":I
    goto :goto_1

    .line 675
    .end local v2    # "targetUid":I
    :cond_3
    iget-object v2, v0, Lcom/android/server/uri/UriGrantsManagerService;->mPmInternal:Landroid/content/pm/PackageManagerInternal;

    const-wide/32 v14, 0x10000000

    move/from16 v3, p6

    invoke-virtual {v2, v7, v14, v15, v3}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;JI)I

    move-result v2

    .line 677
    .restart local v2    # "targetUid":I
    if-gez v2, :cond_4

    .line 680
    return-object v9

    .line 677
    :cond_4
    move v5, v2

    .line 683
    .end local v2    # "targetUid":I
    .local v5, "targetUid":I
    :goto_1
    if-eqz v12, :cond_6

    .line 684
    invoke-static {v11, v12, v4}, Lcom/android/server/uri/GrantUri;->resolve(ILandroid/net/Uri;I)Lcom/android/server/uri/GrantUri;

    move-result-object v3

    .line 685
    .local v3, "grantUri":Lcom/android/server/uri/GrantUri;
    nop

    .line 686
    invoke-direct {v0, v6, v3, v1, v10}, Lcom/android/server/uri/UriGrantsManagerService;->enforceRequireContentUriPermissionFromCallerUnlocked(Ljava/lang/Integer;Lcom/android/server/uri/GrantUri;ILjava/lang/Integer;)V

    .line 690
    move-object v2, v7

    invoke-direct/range {v0 .. v5}, Lcom/android/server/uri/UriGrantsManagerService;->checkGrantUriPermissionUnlocked(ILjava/lang/String;Lcom/android/server/uri/GrantUri;II)I

    move-result v5

    .line 692
    if-lez v5, :cond_7

    .line 693
    if-nez v8, :cond_5

    .line 694
    new-instance v7, Lcom/android/server/uri/NeededUriGrants;

    invoke-direct {v7, v2, v5, v4}, Lcom/android/server/uri/NeededUriGrants;-><init>(Ljava/lang/String;II)V

    .end local p5    # "needed":Lcom/android/server/uri/NeededUriGrants;
    .local v7, "needed":Lcom/android/server/uri/NeededUriGrants;
    goto :goto_2

    .line 693
    .end local v7    # "needed":Lcom/android/server/uri/NeededUriGrants;
    .restart local p5    # "needed":Lcom/android/server/uri/NeededUriGrants;
    :cond_5
    move-object v7, v8

    .line 696
    .end local p5    # "needed":Lcom/android/server/uri/NeededUriGrants;
    .restart local v7    # "needed":Lcom/android/server/uri/NeededUriGrants;
    :goto_2
    iget-object v8, v7, Lcom/android/server/uri/NeededUriGrants;->uris:Landroid/util/ArraySet;

    invoke-virtual {v8, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    move-object v8, v7

    goto :goto_3

    .line 683
    .end local v3    # "grantUri":Lcom/android/server/uri/GrantUri;
    .end local v7    # "needed":Lcom/android/server/uri/NeededUriGrants;
    .restart local p5    # "needed":Lcom/android/server/uri/NeededUriGrants;
    :cond_6
    move-object v2, v7

    .line 699
    .end local p5    # "needed":Lcom/android/server/uri/NeededUriGrants;
    .local v8, "needed":Lcom/android/server/uri/NeededUriGrants;
    :cond_7
    :goto_3
    if-eqz v13, :cond_e

    .line 700
    const/4 v3, 0x0

    move v9, v3

    .local v9, "i":I
    :goto_4
    invoke-virtual {v13}, Landroid/content/ClipData;->getItemCount()I

    move-result v3

    if-ge v9, v3, :cond_d

    .line 701
    invoke-virtual {v13, v9}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v14

    .line 702
    .local v14, "uri":Landroid/net/Uri;
    if-eqz v14, :cond_a

    .line 703
    invoke-static {v11, v14, v4}, Lcom/android/server/uri/GrantUri;->resolve(ILandroid/net/Uri;I)Lcom/android/server/uri/GrantUri;

    move-result-object v3

    .line 704
    .restart local v3    # "grantUri":Lcom/android/server/uri/GrantUri;
    nop

    .line 705
    invoke-direct {v0, v6, v3, v1, v10}, Lcom/android/server/uri/UriGrantsManagerService;->enforceRequireContentUriPermissionFromCallerUnlocked(Ljava/lang/Integer;Lcom/android/server/uri/GrantUri;ILjava/lang/Integer;)V

    .line 709
    invoke-direct/range {v0 .. v5}, Lcom/android/server/uri/UriGrantsManagerService;->checkGrantUriPermissionUnlocked(ILjava/lang/String;Lcom/android/server/uri/GrantUri;II)I

    move-result v5

    .line 711
    if-lez v5, :cond_9

    .line 712
    if-nez v8, :cond_8

    .line 713
    new-instance v0, Lcom/android/server/uri/NeededUriGrants;

    invoke-direct {v0, v2, v5, v4}, Lcom/android/server/uri/NeededUriGrants;-><init>(Ljava/lang/String;II)V

    move-object v8, v0

    .line 715
    :cond_8
    iget-object v0, v8, Lcom/android/server/uri/NeededUriGrants;->uris:Landroid/util/ArraySet;

    invoke-virtual {v0, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 717
    .end local v3    # "grantUri":Lcom/android/server/uri/GrantUri;
    :cond_9
    goto :goto_5

    .line 718
    :cond_a
    move v15, v5

    .end local v5    # "targetUid":I
    .local v15, "targetUid":I
    invoke-virtual {v13, v9}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ClipData$Item;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 719
    .local v3, "clipIntent":Landroid/content/Intent;
    if-eqz v3, :cond_b

    .line 720
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object v7, v6

    move-object v5, v8

    move-object v8, v10

    move/from16 v6, p6

    .end local v8    # "needed":Lcom/android/server/uri/NeededUriGrants;
    .local v5, "needed":Lcom/android/server/uri/NeededUriGrants;
    invoke-direct/range {v0 .. v8}, Lcom/android/server/uri/UriGrantsManagerService;->checkGrantUriPermissionFromIntentUnlocked(ILjava/lang/String;Landroid/content/Intent;ILcom/android/server/uri/NeededUriGrants;ILjava/lang/Integer;Ljava/lang/Integer;)Lcom/android/server/uri/NeededUriGrants;

    move-result-object v10

    .line 723
    .local v10, "newNeeded":Lcom/android/server/uri/NeededUriGrants;
    if-eqz v10, :cond_c

    .line 724
    move-object v0, v10

    move-object v8, v0

    move v5, v15

    .end local v5    # "needed":Lcom/android/server/uri/NeededUriGrants;
    .local v0, "needed":Lcom/android/server/uri/NeededUriGrants;
    goto :goto_5

    .line 719
    .end local v0    # "needed":Lcom/android/server/uri/NeededUriGrants;
    .end local v10    # "newNeeded":Lcom/android/server/uri/NeededUriGrants;
    .restart local v8    # "needed":Lcom/android/server/uri/NeededUriGrants;
    :cond_b
    move-object v5, v8

    .line 700
    .end local v3    # "clipIntent":Landroid/content/Intent;
    .end local v8    # "needed":Lcom/android/server/uri/NeededUriGrants;
    .end local v14    # "uri":Landroid/net/Uri;
    .restart local v5    # "needed":Lcom/android/server/uri/NeededUriGrants;
    :cond_c
    move-object v8, v5

    move v5, v15

    .end local v15    # "targetUid":I
    .local v5, "targetUid":I
    .restart local v8    # "needed":Lcom/android/server/uri/NeededUriGrants;
    :goto_5
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v4, p4

    move-object/from16 v6, p7

    move-object/from16 v10, p8

    goto :goto_4

    :cond_d
    move v15, v5

    move-object v5, v8

    .end local v8    # "needed":Lcom/android/server/uri/NeededUriGrants;
    .local v5, "needed":Lcom/android/server/uri/NeededUriGrants;
    .restart local v15    # "targetUid":I
    move v5, v15

    .line 731
    .end local v9    # "i":I
    .end local v15    # "targetUid":I
    .local v5, "targetUid":I
    .restart local v8    # "needed":Lcom/android/server/uri/NeededUriGrants;
    :cond_e
    return-object v8

    .line 646
    .end local v5    # "targetUid":I
    .end local v8    # "needed":Lcom/android/server/uri/NeededUriGrants;
    .end local v11    # "contentUserHint":I
    .end local v12    # "data":Landroid/net/Uri;
    .end local v13    # "clip":Landroid/content/ClipData;
    .restart local p5    # "needed":Lcom/android/server/uri/NeededUriGrants;
    :cond_f
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "targetPkg"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private checkGrantUriPermissionUnlocked(ILjava/lang/String;Landroid/net/Uri;II)I
    .locals 6
    .param p1, "callingUid"    # I
    .param p2, "targetPkg"    # Ljava/lang/String;
    .param p3, "uri"    # Landroid/net/Uri;
    .param p4, "modeFlags"    # I
    .param p5, "userId"    # I

    .line 1526
    new-instance v3, Lcom/android/server/uri/GrantUri;

    invoke-direct {v3, p5, p3, p4}, Lcom/android/server/uri/GrantUri;-><init>(ILandroid/net/Uri;I)V

    const/4 v5, -0x1

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v4, p4

    .end local p1    # "callingUid":I
    .end local p2    # "targetPkg":Ljava/lang/String;
    .end local p4    # "modeFlags":I
    .local v1, "callingUid":I
    .local v2, "targetPkg":Ljava/lang/String;
    .local v4, "modeFlags":I
    invoke-direct/range {v0 .. v5}, Lcom/android/server/uri/UriGrantsManagerService;->checkGrantUriPermissionUnlocked(ILjava/lang/String;Lcom/android/server/uri/GrantUri;II)I

    move-result p1

    return p1
.end method

.method private checkGrantUriPermissionUnlocked(ILjava/lang/String;Lcom/android/server/uri/GrantUri;II)I
    .locals 21
    .param p1, "callingUid"    # I
    .param p2, "targetPkg"    # Ljava/lang/String;
    .param p3, "grantUri"    # Lcom/android/server/uri/GrantUri;
    .param p4, "modeFlags"    # I
    .param p5, "lastTargetUid"    # I

    .line 1285
    move-object/from16 v1, p0

    move/from16 v4, p1

    move-object/from16 v7, p2

    move-object/from16 v3, p3

    move/from16 v5, p4

    const-string v0, "grant URI permission"

    invoke-direct {v1, v3, v5, v0}, Lcom/android/server/uri/UriGrantsManagerService;->isContentUriWithAccessModeFlags(Lcom/android/server/uri/GrantUri;ILjava/lang/String;)Z

    move-result v0

    const/4 v2, -0x1

    if-nez v0, :cond_0

    .line 1287
    return v2

    .line 1290
    :cond_0
    nop

    .line 1296
    invoke-static {v4}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v8

    .line 1297
    .local v8, "callingAppId":I
    const/16 v0, 0x3e8

    if-eq v8, v0, :cond_1

    if-nez v8, :cond_3

    .line 1298
    :cond_1
    const-string v0, "com.android.settings.files"

    iget-object v6, v3, Lcom/android/server/uri/GrantUri;->uri:Landroid/net/Uri;

    invoke-virtual {v6}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    nop

    if-nez v0, :cond_3

    const-string v0, "com.android.settings.module_licenses"

    iget-object v6, v3, Lcom/android/server/uri/GrantUri;->uri:Landroid/net/Uri;

    .line 1299
    invoke-virtual {v6}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 1306
    :cond_2
    const-string v0, "UriGrantsManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "For security reasons, the system cannot issue a Uri permission grant to "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, "; use startActivityAsCaller() instead"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1308
    return v2

    .line 1312
    :cond_3
    :goto_0
    iget-object v0, v3, Lcom/android/server/uri/GrantUri;->uri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v9

    .line 1313
    .local v9, "authority":Ljava/lang/String;
    iget v0, v3, Lcom/android/server/uri/GrantUri;->sourceUserId:I

    const/high16 v6, 0x10000000

    invoke-direct {v1, v9, v0, v6, v4}, Lcom/android/server/uri/UriGrantsManagerService;->getProviderInfo(Ljava/lang/String;III)Landroid/content/pm/ProviderInfo;

    move-result-object v6

    .line 1315
    .local v6, "pi":Landroid/content/pm/ProviderInfo;
    if-nez v6, :cond_4

    .line 1316
    const-string v0, "UriGrantsManagerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "No content provider found for permission check: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v3, Lcom/android/server/uri/GrantUri;->uri:Landroid/net/Uri;

    .line 1317
    invoke-virtual {v11}, Landroid/net/Uri;->toSafeString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1316
    invoke-static {v0, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1318
    return v2

    .line 1321
    :cond_4
    move/from16 v0, p5

    .line 1322
    .local v0, "targetUid":I
    if-gez v0, :cond_6

    if-eqz v7, :cond_6

    .line 1323
    iget-object v10, v1, Lcom/android/server/uri/UriGrantsManagerService;->mPmInternal:Landroid/content/pm/PackageManagerInternal;

    .line 1324
    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v11

    .line 1323
    const-wide/32 v12, 0x10000000

    invoke-virtual {v10, v7, v12, v13, v11}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;JI)I

    move-result v0

    .line 1325
    if-gez v0, :cond_5

    .line 1327
    return v2

    .line 1325
    :cond_5
    move v10, v0

    goto :goto_1

    .line 1331
    :cond_6
    move v10, v0

    .end local v0    # "targetUid":I
    .local v10, "targetUid":I
    :goto_1
    const/4 v0, 0x0

    .line 1332
    .local v0, "targetHoldsPermission":Z
    if-ltz v10, :cond_7

    .line 1334
    invoke-direct {v1, v6, v3, v10, v5}, Lcom/android/server/uri/UriGrantsManagerService;->checkHoldingPermissionsUnlocked(Landroid/content/pm/ProviderInfo;Lcom/android/server/uri/GrantUri;II)Z

    move-result v11

    if-eqz v11, :cond_d

    .line 1338
    const/4 v0, 0x1

    goto :goto_4

    .line 1342
    :cond_7
    iget-boolean v11, v6, Landroid/content/pm/ProviderInfo;->exported:Z

    .line 1343
    .local v11, "allowed":Z
    and-int/lit8 v12, v5, 0x1

    if-eqz v12, :cond_8

    .line 1344
    iget-object v12, v6, Landroid/content/pm/ProviderInfo;->readPermission:Ljava/lang/String;

    if-eqz v12, :cond_8

    .line 1345
    const/4 v11, 0x0

    .line 1348
    :cond_8
    and-int/lit8 v12, v5, 0x2

    if-eqz v12, :cond_9

    .line 1349
    iget-object v12, v6, Landroid/content/pm/ProviderInfo;->writePermission:Ljava/lang/String;

    if-eqz v12, :cond_9

    .line 1350
    const/4 v11, 0x0

    .line 1353
    :cond_9
    iget-object v12, v6, Landroid/content/pm/ProviderInfo;->pathPermissions:[Landroid/content/pm/PathPermission;

    if-eqz v12, :cond_c

    .line 1354
    iget-object v12, v6, Landroid/content/pm/ProviderInfo;->pathPermissions:[Landroid/content/pm/PathPermission;

    array-length v12, v12

    .line 1355
    .local v12, "N":I
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_2
    if-ge v13, v12, :cond_c

    .line 1356
    iget-object v14, v6, Landroid/content/pm/ProviderInfo;->pathPermissions:[Landroid/content/pm/PathPermission;

    aget-object v14, v14, v13

    nop

    if-eqz v14, :cond_b

    iget-object v14, v6, Landroid/content/pm/ProviderInfo;->pathPermissions:[Landroid/content/pm/PathPermission;

    aget-object v14, v14, v13

    iget-object v15, v3, Lcom/android/server/uri/GrantUri;->uri:Landroid/net/Uri;

    .line 1357
    invoke-virtual {v15}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/content/pm/PathPermission;->match(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_b

    .line 1358
    and-int/lit8 v14, v5, 0x1

    if-eqz v14, :cond_a

    .line 1359
    iget-object v14, v6, Landroid/content/pm/ProviderInfo;->pathPermissions:[Landroid/content/pm/PathPermission;

    aget-object v14, v14, v13

    invoke-virtual {v14}, Landroid/content/pm/PathPermission;->getReadPermission()Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_a

    .line 1360
    const/4 v11, 0x0

    .line 1363
    :cond_a
    and-int/lit8 v14, v5, 0x2

    if-eqz v14, :cond_c

    .line 1364
    iget-object v14, v6, Landroid/content/pm/ProviderInfo;->pathPermissions:[Landroid/content/pm/PathPermission;

    aget-object v14, v14, v13

    invoke-virtual {v14}, Landroid/content/pm/PathPermission;->getWritePermission()Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_c

    .line 1365
    const/4 v11, 0x0

    goto :goto_3

    .line 1355
    :cond_b
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    .line 1372
    .end local v12    # "N":I
    .end local v13    # "i":I
    :cond_c
    :goto_3
    if-eqz v11, :cond_d

    .line 1373
    const/4 v0, 0x1

    .line 1377
    .end local v11    # "allowed":Z
    :cond_d
    :goto_4
    iget-boolean v11, v6, Landroid/content/pm/ProviderInfo;->forceUriPermissions:Z

    if-eqz v11, :cond_e

    .line 1381
    const/4 v0, 0x0

    move v11, v0

    goto :goto_5

    .line 1377
    :cond_e
    move v11, v0

    .line 1384
    .end local v0    # "targetHoldsPermission":Z
    .local v11, "targetHoldsPermission":Z
    :goto_5
    and-int/lit16 v0, v5, 0xc0

    const/4 v12, 0x0

    const/4 v13, 0x1

    if-nez v0, :cond_f

    move v0, v13

    goto :goto_6

    :cond_f
    move v0, v12

    :goto_6
    move v14, v0

    .line 1386
    .local v14, "basicGrant":Z
    if-eqz v14, :cond_10

    if-eqz v11, :cond_10

    .line 1391
    iget-object v15, v1, Lcom/android/server/uri/UriGrantsManagerService;->mPmInternal:Landroid/content/pm/PackageManagerInternal;

    .line 1392
    invoke-static {v10}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v16

    .line 1393
    invoke-static {v10}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v18

    iget-object v0, v6, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 1391
    const/16 v17, 0x0

    const/16 v20, 0x0

    move/from16 v19, v0

    invoke-virtual/range {v15 .. v20}, Landroid/content/pm/PackageManagerInternal;->grantImplicitAccess(ILandroid/content/Intent;IIZ)V

    .line 1394
    return v2

    .line 1403
    :cond_10
    if-ltz v10, :cond_12

    .line 1404
    invoke-static {v10}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    iget v2, v3, Lcom/android/server/uri/GrantUri;->sourceUserId:I

    if-eq v0, v2, :cond_11

    .line 1405
    move-object v2, v6

    .end local v6    # "pi":Landroid/content/pm/ProviderInfo;
    .local v2, "pi":Landroid/content/pm/ProviderInfo;
    const/4 v6, 0x0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/uri/UriGrantsManagerService;->checkHoldingPermissionsInternalUnlocked(Landroid/content/pm/ProviderInfo;Lcom/android/server/uri/GrantUri;IIZ)Z

    move-result v0

    if-eqz v0, :cond_13

    move v12, v13

    goto :goto_8

    .line 1404
    .end local v2    # "pi":Landroid/content/pm/ProviderInfo;
    .restart local v6    # "pi":Landroid/content/pm/ProviderInfo;
    :cond_11
    move-object v2, v6

    .end local v6    # "pi":Landroid/content/pm/ProviderInfo;
    .restart local v2    # "pi":Landroid/content/pm/ProviderInfo;
    goto :goto_7

    .line 1403
    .end local v2    # "pi":Landroid/content/pm/ProviderInfo;
    .restart local v6    # "pi":Landroid/content/pm/ProviderInfo;
    :cond_12
    move-object v2, v6

    .line 1405
    .end local v6    # "pi":Landroid/content/pm/ProviderInfo;
    .restart local v2    # "pi":Landroid/content/pm/ProviderInfo;
    :cond_13
    :goto_7
    nop

    :goto_8
    nop

    .line 1409
    .local v12, "specialCrossUserGrant":Z
    iget-boolean v0, v2, Landroid/content/pm/ProviderInfo;->grantUriPermissions:Z

    .line 1410
    .local v0, "grantAllowed":Z
    iget-object v6, v2, Landroid/content/pm/ProviderInfo;->uriPermissionPatterns:[Landroid/os/PatternMatcher;

    invoke-static {v6}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_17

    .line 1411
    iget-object v6, v2, Landroid/content/pm/ProviderInfo;->uriPermissionPatterns:[Landroid/os/PatternMatcher;

    array-length v6, v6

    .line 1412
    .local v6, "N":I
    const/4 v0, 0x0

    .line 1413
    const/4 v13, 0x0

    .restart local v13    # "i":I
    :goto_9
    if-ge v13, v6, :cond_16

    .line 1414
    iget-object v15, v2, Landroid/content/pm/ProviderInfo;->uriPermissionPatterns:[Landroid/os/PatternMatcher;

    aget-object v15, v15, v13

    if-eqz v15, :cond_14

    iget-object v15, v2, Landroid/content/pm/ProviderInfo;->uriPermissionPatterns:[Landroid/os/PatternMatcher;

    aget-object v15, v15, v13

    move/from16 v16, v0

    .end local v0    # "grantAllowed":Z
    .local v16, "grantAllowed":Z
    iget-object v0, v3, Lcom/android/server/uri/GrantUri;->uri:Landroid/net/Uri;

    .line 1415
    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Landroid/os/PatternMatcher;->match(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1416
    const/4 v0, 0x1

    .line 1417
    .end local v16    # "grantAllowed":Z
    .restart local v0    # "grantAllowed":Z
    move/from16 v16, v0

    goto :goto_a

    .line 1414
    :cond_14
    move/from16 v16, v0

    .line 1413
    .end local v0    # "grantAllowed":Z
    .restart local v16    # "grantAllowed":Z
    :cond_15
    add-int/lit8 v13, v13, 0x1

    move/from16 v0, v16

    goto :goto_9

    .end local v16    # "grantAllowed":Z
    .restart local v0    # "grantAllowed":Z
    :cond_16
    move/from16 v16, v0

    .end local v0    # "grantAllowed":Z
    .restart local v16    # "grantAllowed":Z
    goto :goto_a

    .line 1410
    .end local v6    # "N":I
    .end local v13    # "i":I
    .end local v16    # "grantAllowed":Z
    .restart local v0    # "grantAllowed":Z
    :cond_17
    move/from16 v16, v0

    .line 1421
    .end local v0    # "grantAllowed":Z
    .restart local v16    # "grantAllowed":Z
    :goto_a
    if-nez v16, :cond_1a

    .line 1422
    if-eqz v12, :cond_19

    .line 1425
    if-eqz v14, :cond_18

    goto :goto_b

    .line 1426
    :cond_18
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Provider "

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v2, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "/"

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v2, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, " does not allow granting of advanced Uri permissions (uri "

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v13, ")"

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v6}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1432
    :cond_19
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Provider "

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v2, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "/"

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v2, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, " does not allow granting of Uri permissions (uri "

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v13, ")"

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v6}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1440
    :cond_1a
    :goto_b
    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/server/uri/UriGrantsManagerService;->checkHoldingPermissionsUnlocked(Landroid/content/pm/ProviderInfo;Lcom/android/server/uri/GrantUri;II)Z

    move-result v0

    if-nez v0, :cond_1c

    .line 1443
    iget-object v6, v1, Lcom/android/server/uri/UriGrantsManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 1444
    :try_start_0
    invoke-direct {v1, v3, v4, v5}, Lcom/android/server/uri/UriGrantsManagerService;->checkUriPermissionLocked(Lcom/android/server/uri/GrantUri;II)Z

    move-result v0

    .line 1445
    .local v0, "res":Z
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1446
    if-nez v0, :cond_1c

    .line 1447
    const-string v6, "android.permission.MANAGE_DOCUMENTS"

    iget-object v13, v2, Landroid/content/pm/ProviderInfo;->readPermission:Ljava/lang/String;

    invoke-virtual {v6, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1b

    .line 1448
    new-instance v6, Ljava/lang/SecurityException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "UID "

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, " does not have permission to "

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v15, "; you could obtain access using ACTION_OPEN_DOCUMENT or related APIs"

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v6, v13}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1453
    :cond_1b
    new-instance v6, Ljava/lang/SecurityException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "UID "

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, " does not have permission to "

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v6, v13}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1445
    .end local v0    # "res":Z
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 1459
    :cond_1c
    return v10
.end method

.method private checkHoldingPermissionsInternalUnlocked(Landroid/content/pm/ProviderInfo;Lcom/android/server/uri/GrantUri;IIZ)Z
    .locals 17
    .param p1, "pi"    # Landroid/content/pm/ProviderInfo;
    .param p2, "grantUri"    # Lcom/android/server/uri/GrantUri;
    .param p3, "uid"    # I
    .param p4, "modeFlags"    # I
    .param p5, "considerUidPermissions"    # Z

    .line 1131
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    iget-object v5, v0, Lcom/android/server/uri/UriGrantsManagerService;->mLock:Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_14

    .line 1135
    iget-object v5, v1, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    const/4 v6, 0x1

    if-ne v5, v3, :cond_0

    .line 1136
    return v6

    .line 1137
    :cond_0
    iget-boolean v5, v1, Landroid/content/pm/ProviderInfo;->exported:Z

    const/4 v7, 0x0

    if-nez v5, :cond_1

    .line 1138
    return v7

    .line 1141
    :cond_1
    and-int/lit8 v5, v4, 0x1

    if-nez v5, :cond_2

    move v5, v6

    goto :goto_0

    :cond_2
    move v5, v7

    .line 1142
    .local v5, "readMet":Z
    :goto_0
    and-int/lit8 v8, v4, 0x2

    if-nez v8, :cond_3

    move v8, v6

    goto :goto_1

    :cond_3
    move v8, v7

    .line 1145
    .local v8, "writeMet":Z
    :goto_1
    if-nez v5, :cond_4

    iget-object v9, v1, Landroid/content/pm/ProviderInfo;->readPermission:Ljava/lang/String;

    if-eqz v9, :cond_4

    if-eqz p5, :cond_4

    iget-object v9, v1, Landroid/content/pm/ProviderInfo;->readPermission:Ljava/lang/String;

    .line 1146
    invoke-virtual {v0, v9, v3}, Lcom/android/server/uri/UriGrantsManagerService;->checkUidPermission(Ljava/lang/String;I)I

    move-result v9

    if-nez v9, :cond_4

    .line 1147
    const/4 v5, 0x1

    .line 1149
    :cond_4
    if-nez v8, :cond_5

    iget-object v9, v1, Landroid/content/pm/ProviderInfo;->writePermission:Ljava/lang/String;

    if-eqz v9, :cond_5

    if-eqz p5, :cond_5

    iget-object v9, v1, Landroid/content/pm/ProviderInfo;->writePermission:Ljava/lang/String;

    .line 1150
    invoke-virtual {v0, v9, v3}, Lcom/android/server/uri/UriGrantsManagerService;->checkUidPermission(Ljava/lang/String;I)I

    move-result v9

    if-nez v9, :cond_5

    .line 1151
    const/4 v8, 0x1

    .line 1156
    :cond_5
    iget-object v9, v1, Landroid/content/pm/ProviderInfo;->readPermission:Ljava/lang/String;

    if-nez v9, :cond_6

    move v9, v6

    goto :goto_2

    :cond_6
    move v9, v7

    .line 1157
    .local v9, "allowDefaultRead":Z
    :goto_2
    iget-object v10, v1, Landroid/content/pm/ProviderInfo;->writePermission:Ljava/lang/String;

    if-nez v10, :cond_7

    move v10, v6

    goto :goto_3

    :cond_7
    move v10, v7

    .line 1160
    .local v10, "allowDefaultWrite":Z
    :goto_3
    iget-object v11, v1, Landroid/content/pm/ProviderInfo;->pathPermissions:[Landroid/content/pm/PathPermission;

    .line 1161
    .local v11, "pps":[Landroid/content/pm/PathPermission;
    if-eqz v11, :cond_d

    .line 1162
    iget-object v12, v2, Lcom/android/server/uri/GrantUri;->uri:Landroid/net/Uri;

    invoke-virtual {v12}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v12

    .line 1163
    .local v12, "path":Ljava/lang/String;
    array-length v13, v11

    .line 1164
    .local v13, "i":I
    :goto_4
    if-lez v13, :cond_d

    if-eqz v5, :cond_8

    if-nez v8, :cond_d

    .line 1165
    :cond_8
    add-int/lit8 v13, v13, -0x1

    .line 1166
    aget-object v14, v11, v13

    .line 1167
    .local v14, "pp":Landroid/content/pm/PathPermission;
    invoke-virtual {v14, v12}, Landroid/content/pm/PathPermission;->match(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_c

    .line 1168
    if-nez v5, :cond_a

    .line 1169
    invoke-virtual {v14}, Landroid/content/pm/PathPermission;->getReadPermission()Ljava/lang/String;

    move-result-object v15

    .line 1174
    .local v15, "pprperm":Ljava/lang/String;
    if-eqz v15, :cond_a

    .line 1175
    if-eqz p5, :cond_9

    invoke-virtual {v0, v15, v3}, Lcom/android/server/uri/UriGrantsManagerService;->checkUidPermission(Ljava/lang/String;I)I

    move-result v16

    if-nez v16, :cond_9

    .line 1177
    const/4 v5, 0x1

    goto :goto_5

    .line 1179
    :cond_9
    const/4 v9, 0x0

    .line 1183
    .end local v15    # "pprperm":Ljava/lang/String;
    :cond_a
    :goto_5
    if-nez v8, :cond_c

    .line 1184
    invoke-virtual {v14}, Landroid/content/pm/PathPermission;->getWritePermission()Ljava/lang/String;

    move-result-object v15

    .line 1189
    .local v15, "ppwperm":Ljava/lang/String;
    if-eqz v15, :cond_c

    .line 1190
    if-eqz p5, :cond_b

    invoke-virtual {v0, v15, v3}, Lcom/android/server/uri/UriGrantsManagerService;->checkUidPermission(Ljava/lang/String;I)I

    move-result v16

    if-nez v16, :cond_b

    .line 1192
    const/4 v8, 0x1

    goto :goto_6

    .line 1194
    :cond_b
    const/4 v10, 0x0

    .line 1199
    .end local v14    # "pp":Landroid/content/pm/PathPermission;
    .end local v15    # "ppwperm":Ljava/lang/String;
    :cond_c
    :goto_6
    goto :goto_4

    .line 1204
    .end local v12    # "path":Ljava/lang/String;
    .end local v13    # "i":I
    :cond_d
    if-eqz v9, :cond_e

    const/4 v5, 0x1

    .line 1205
    :cond_e
    if-eqz v10, :cond_f

    const/4 v8, 0x1

    .line 1210
    :cond_f
    iget-boolean v12, v1, Landroid/content/pm/ProviderInfo;->forceUriPermissions:Z

    if-eqz v12, :cond_12

    .line 1211
    iget-object v12, v1, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v12, v12, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v12}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v12

    .line 1212
    .local v12, "providerUserId":I
    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v13

    .line 1213
    .local v13, "clientUserId":I
    if-ne v12, v13, :cond_11

    .line 1214
    iget-object v14, v0, Lcom/android/server/uri/UriGrantsManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    iget-object v15, v2, Lcom/android/server/uri/GrantUri;->uri:Landroid/net/Uri;

    invoke-virtual {v14, v15, v12, v3, v4}, Landroid/app/ActivityManagerInternal;->checkContentProviderUriPermission(Landroid/net/Uri;III)I

    move-result v14

    if-nez v14, :cond_10

    move v14, v6

    goto :goto_7

    :cond_10
    move v14, v7

    .local v14, "forceMet":Z
    :goto_7
    goto :goto_8

    .line 1219
    .end local v14    # "forceMet":Z
    :cond_11
    const/4 v14, 0x0

    .line 1221
    .end local v12    # "providerUserId":I
    .end local v13    # "clientUserId":I
    .restart local v14    # "forceMet":Z
    :goto_8
    goto :goto_9

    .line 1222
    .end local v14    # "forceMet":Z
    :cond_12
    const/4 v14, 0x1

    .line 1225
    .restart local v14    # "forceMet":Z
    :goto_9
    if-eqz v5, :cond_13

    if-eqz v8, :cond_13

    if-eqz v14, :cond_13

    goto :goto_a

    :cond_13
    move v6, v7

    :goto_a
    return v6

    .line 1132
    .end local v5    # "readMet":Z
    .end local v8    # "writeMet":Z
    .end local v9    # "allowDefaultRead":Z
    .end local v10    # "allowDefaultWrite":Z
    .end local v11    # "pps":[Landroid/content/pm/PathPermission;
    .end local v14    # "forceMet":Z
    :cond_14
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "Must never hold local mLock"

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method private checkHoldingPermissionsUnlocked(Landroid/content/pm/ProviderInfo;Lcom/android/server/uri/GrantUri;II)Z
    .locals 7
    .param p1, "pi"    # Landroid/content/pm/ProviderInfo;
    .param p2, "grantUri"    # Lcom/android/server/uri/GrantUri;
    .param p3, "uid"    # I
    .param p4, "modeFlags"    # I

    .line 1118
    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    iget v1, p2, Lcom/android/server/uri/GrantUri;->sourceUserId:I

    if-eq v0, v1, :cond_0

    .line 1119
    const/4 v0, -0x1

    const/4 v1, 0x1

    const-string v2, "android.permission.INTERACT_ACROSS_USERS"

    invoke-virtual {p0, v2, p3, v0, v1}, Lcom/android/server/uri/UriGrantsManagerService;->checkComponentPermission(Ljava/lang/String;IIZ)I

    move-result v0

    if-eqz v0, :cond_0

    .line 1121
    const/4 v0, 0x0

    return v0

    .line 1124
    :cond_0
    const/4 v6, 0x1

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    .end local p1    # "pi":Landroid/content/pm/ProviderInfo;
    .end local p2    # "grantUri":Lcom/android/server/uri/GrantUri;
    .end local p3    # "uid":I
    .end local p4    # "modeFlags":I
    .local v2, "pi":Landroid/content/pm/ProviderInfo;
    .local v3, "grantUri":Lcom/android/server/uri/GrantUri;
    .local v4, "uid":I
    .local v5, "modeFlags":I
    invoke-direct/range {v1 .. v6}, Lcom/android/server/uri/UriGrantsManagerService;->checkHoldingPermissionsInternalUnlocked(Landroid/content/pm/ProviderInfo;Lcom/android/server/uri/GrantUri;IIZ)Z

    move-result p1

    return p1
.end method

.method private checkUriPermissionLocked(Lcom/android/server/uri/GrantUri;II)Z
    .locals 11
    .param p1, "grantUri"    # Lcom/android/server/uri/GrantUri;
    .param p2, "uid"    # I
    .param p3, "modeFlags"    # I

    .line 1532
    and-int/lit8 v0, p3, 0x40

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 1533
    .local v0, "persistable":Z
    :goto_0
    if-eqz v0, :cond_1

    const/4 v3, 0x3

    goto :goto_1

    .line 1534
    :cond_1
    move v3, v2

    :goto_1
    nop

    .line 1537
    .local v3, "minStrength":I
    if-nez p2, :cond_2

    .line 1538
    return v2

    .line 1541
    :cond_2
    iget-object v4, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantedUriPermissions:Landroid/util/SparseArray;

    invoke-virtual {v4, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/ArrayMap;

    .line 1542
    .local v4, "perms":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/uri/GrantUri;Lcom/android/server/uri/UriPermission;>;"
    if-nez v4, :cond_3

    return v1

    .line 1545
    :cond_3
    invoke-virtual {v4, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/uri/UriPermission;

    .line 1546
    .local v5, "exactPerm":Lcom/android/server/uri/UriPermission;
    if-eqz v5, :cond_4

    invoke-virtual {v5, p3}, Lcom/android/server/uri/UriPermission;->getStrength(I)I

    move-result v6

    if-lt v6, v3, :cond_4

    .line 1547
    return v2

    .line 1551
    :cond_4
    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v6

    .line 1552
    .local v6, "N":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_2
    if-ge v7, v6, :cond_6

    .line 1553
    invoke-virtual {v4, v7}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/uri/UriPermission;

    .line 1554
    .local v8, "perm":Lcom/android/server/uri/UriPermission;
    iget-object v9, v8, Lcom/android/server/uri/UriPermission;->uri:Lcom/android/server/uri/GrantUri;

    iget-boolean v9, v9, Lcom/android/server/uri/GrantUri;->prefix:Z

    if-eqz v9, :cond_5

    iget-object v9, p1, Lcom/android/server/uri/GrantUri;->uri:Landroid/net/Uri;

    iget-object v10, v8, Lcom/android/server/uri/UriPermission;->uri:Lcom/android/server/uri/GrantUri;

    iget-object v10, v10, Lcom/android/server/uri/GrantUri;->uri:Landroid/net/Uri;

    invoke-virtual {v9, v10}, Landroid/net/Uri;->isPathPrefixMatch(Landroid/net/Uri;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 1555
    invoke-virtual {v8, p3}, Lcom/android/server/uri/UriPermission;->getStrength(I)I

    move-result v9

    if-lt v9, v3, :cond_5

    .line 1556
    return v2

    .line 1552
    .end local v8    # "perm":Lcom/android/server/uri/UriPermission;
    :cond_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_6
    nop

    .line 1560
    .end local v7    # "i":I
    return v1
.end method

.method static createForTest(Ljava/io/File;)Lcom/android/server/uri/UriGrantsManagerService;
    .locals 2
    .param p0, "systemDir"    # Ljava/io/File;

    .line 189
    new-instance v0, Lcom/android/server/uri/UriGrantsManagerService$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/uri/UriGrantsManagerService$1;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 203
    .local v0, "service":Lcom/android/server/uri/UriGrantsManagerService;
    const-class v1, Landroid/app/ActivityManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManagerInternal;

    iput-object v1, v0, Lcom/android/server/uri/UriGrantsManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    .line 204
    const-class v1, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageManagerInternal;

    iput-object v1, v0, Lcom/android/server/uri/UriGrantsManagerService;->mPmInternal:Landroid/content/pm/PackageManagerInternal;

    .line 205
    return-object v0
.end method

.method private enforceNotIsolatedCaller(Ljava/lang/String;)V
    .locals 3
    .param p1, "caller"    # Ljava/lang/String;

    .line 1263
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->isIsolated(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1266
    return-void

    .line 1264
    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Isolated process not allowed to call "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private enforceRequireContentUriPermissionFromCallerOnIntentExtraStreamUnlocked(Landroid/content/Intent;IIILjava/lang/Integer;Ljava/lang/Integer;)V
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "contentUserHint"    # I
    .param p3, "mode"    # I
    .param p4, "callingUid"    # I
    .param p5, "requireContentUriPermissionFromCaller"    # Ljava/lang/Integer;
    .param p6, "requestHashCode"    # Ljava/lang/Integer;

    .line 806
    const-string v0, "UriGrantsManagerService"

    const-string v1, "android.intent.extra.STREAM"

    :try_start_0
    const-class v2, Landroid/net/Uri;

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    .line 807
    .local v2, "uri":Landroid/net/Uri;
    if-eqz v2, :cond_0

    .line 808
    invoke-static {p2, v2, p3}, Lcom/android/server/uri/GrantUri;->resolve(ILandroid/net/Uri;I)Lcom/android/server/uri/GrantUri;

    move-result-object v3

    .line 809
    .local v3, "grantUri":Lcom/android/server/uri/GrantUri;
    invoke-direct {p0, p5, v3, p4, p6}, Lcom/android/server/uri/UriGrantsManagerService;->enforceRequireContentUriPermissionFromCallerUnlocked(Ljava/lang/Integer;Lcom/android/server/uri/GrantUri;ILjava/lang/Integer;)V
    :try_end_0
    .catch Landroid/os/BadParcelableException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 813
    .end local v2    # "uri":Landroid/net/Uri;
    .end local v3    # "grantUri":Lcom/android/server/uri/GrantUri;
    :catch_0
    move-exception v2

    goto :goto_1

    .line 816
    :cond_0
    :goto_0
    goto :goto_2

    .line 813
    :goto_1
    nop

    .line 814
    .local v2, "e":Landroid/os/BadParcelableException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to unparcel an URI in EXTRA_STREAM, skipping requireContentUriPermissionFromCaller: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 819
    .end local v2    # "e":Landroid/os/BadParcelableException;
    :goto_2
    :try_start_1
    const-class v2, Landroid/net/Uri;

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object v1

    .line 821
    .local v1, "uris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    if-eqz v1, :cond_1

    .line 822
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_3
    if-ltz v2, :cond_1

    .line 823
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    invoke-static {p2, v3, p3}, Lcom/android/server/uri/GrantUri;->resolve(ILandroid/net/Uri;I)Lcom/android/server/uri/GrantUri;

    move-result-object v3

    .line 824
    .restart local v3    # "grantUri":Lcom/android/server/uri/GrantUri;
    invoke-direct {p0, p5, v3, p4, p6}, Lcom/android/server/uri/UriGrantsManagerService;->enforceRequireContentUriPermissionFromCallerUnlocked(Ljava/lang/Integer;Lcom/android/server/uri/GrantUri;ILjava/lang/Integer;)V
    :try_end_1
    .catch Landroid/os/BadParcelableException; {:try_start_1 .. :try_end_1} :catch_1

    .line 822
    .end local v3    # "grantUri":Lcom/android/server/uri/GrantUri;
    add-int/lit8 v2, v2, -0x1

    goto :goto_3

    .line 829
    .end local v1    # "uris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    .end local v2    # "i":I
    :catch_1
    move-exception v1

    goto :goto_4

    .line 832
    :cond_1
    goto :goto_5

    .line 829
    :goto_4
    nop

    .line 830
    .local v1, "e":Landroid/os/BadParcelableException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to unparcel an ArrayList of URIs in EXTRA_STREAM, skipping requireContentUriPermissionFromCaller: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 833
    .end local v1    # "e":Landroid/os/BadParcelableException;
    :goto_5
    return-void
.end method

.method private enforceRequireContentUriPermissionFromCallerUnlocked(Ljava/lang/Integer;Lcom/android/server/uri/GrantUri;ILjava/lang/Integer;)V
    .locals 4
    .param p1, "requireContentUriPermissionFromCaller"    # Ljava/lang/Integer;
    .param p2, "grantUri"    # Lcom/android/server/uri/GrantUri;
    .param p3, "callingUid"    # I
    .param p4, "requestHashCode"    # Ljava/lang/Integer;

    .line 739
    if-eqz p1, :cond_2

    .line 740
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    nop

    if-eqz v0, :cond_2

    iget-object v0, p2, Lcom/android/server/uri/GrantUri;->uri:Landroid/net/Uri;

    .line 741
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "content"

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 747
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/uri/UriGrantsManagerService;->hasRequireContentUriPermissionFromCallerUnlocked(Ljava/lang/Integer;Lcom/android/server/uri/GrantUri;I)Z

    move-result v0

    .line 750
    .local v0, "hasPermission":Z
    if-eqz v0, :cond_1

    .line 755
    return-void

    .line 751
    :cond_1
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "You can\'t launch this activity because you don\'t have the required "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 753
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 752
    invoke-static {v3}, Landroid/content/pm/ActivityInfo;->requiredContentUriPermissionToShortString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " access to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p2, Lcom/android/server/uri/GrantUri;->uri:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 742
    .end local v0    # "hasPermission":Z
    :cond_2
    :goto_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/uri/UriGrantsManagerService;->tryAddingContentUriWithoutCallerReadPermissionWhenAttributeIsNoneUnlocked(Ljava/lang/Integer;Lcom/android/server/uri/GrantUri;ILjava/lang/Integer;)V

    .line 744
    return-void
.end method

.method private findOrCreateUriPermissionLocked(Ljava/lang/String;Ljava/lang/String;ILcom/android/server/uri/GrantUri;)Lcom/android/server/uri/UriPermission;
    .locals 3
    .param p1, "sourcePkg"    # Ljava/lang/String;
    .param p2, "targetPkg"    # Ljava/lang/String;
    .param p3, "targetUid"    # I
    .param p4, "grantUri"    # Lcom/android/server/uri/GrantUri;

    .line 942
    iget-object v0, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantedUriPermissions:Landroid/util/SparseArray;

    invoke-virtual {v0, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    .line 943
    .local v0, "targetUris":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/uri/GrantUri;Lcom/android/server/uri/UriPermission;>;"
    if-nez v0, :cond_0

    .line 944
    invoke-static {}, Lcom/google/android/collect/Maps;->newArrayMap()Landroid/util/ArrayMap;

    move-result-object v0

    .line 945
    iget-object v1, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantedUriPermissions:Landroid/util/SparseArray;

    invoke-virtual {v1, p3, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 948
    :cond_0
    invoke-virtual {v0, p4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/uri/UriPermission;

    .line 949
    .local v1, "perm":Lcom/android/server/uri/UriPermission;
    if-nez v1, :cond_1

    .line 950
    new-instance v2, Lcom/android/server/uri/UriPermission;

    invoke-direct {v2, p1, p2, p3, p4}, Lcom/android/server/uri/UriPermission;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/android/server/uri/GrantUri;)V

    move-object v1, v2

    .line 951
    invoke-virtual {v0, p4, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 954
    :cond_1
    return-object v1
.end method

.method private findUriPermissionLocked(ILcom/android/server/uri/GrantUri;)Lcom/android/server/uri/UriPermission;
    .locals 2
    .param p1, "targetUid"    # I
    .param p2, "grantUri"    # Lcom/android/server/uri/GrantUri;

    .line 1248
    iget-object v0, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantedUriPermissions:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    .line 1249
    .local v0, "targetUris":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/uri/GrantUri;Lcom/android/server/uri/UriPermission;>;"
    if-eqz v0, :cond_0

    .line 1250
    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/uri/UriPermission;

    return-object v1

    .line 1252
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method private getProviderInfo(Ljava/lang/String;III)Landroid/content/pm/ProviderInfo;
    .locals 6
    .param p1, "authority"    # Ljava/lang/String;
    .param p2, "userHandle"    # I
    .param p3, "pmFlags"    # I
    .param p4, "callingUid"    # I

    .line 1270
    iget-object v0, p0, Lcom/android/server/uri/UriGrantsManagerService;->mPmInternal:Landroid/content/pm/PackageManagerInternal;

    or-int/lit16 v1, p3, 0x800

    int-to-long v2, v1

    move-object v1, p1

    move v4, p2

    move v5, p4

    .end local p1    # "authority":Ljava/lang/String;
    .end local p2    # "userHandle":I
    .end local p4    # "callingUid":I
    .local v1, "authority":Ljava/lang/String;
    .local v4, "userHandle":I
    .local v5, "callingUid":I
    invoke-virtual/range {v0 .. v5}, Landroid/content/pm/PackageManagerInternal;->resolveContentProvider(Ljava/lang/String;JII)Landroid/content/pm/ProviderInfo;

    move-result-object p1

    return-object p1
.end method

.method private grantUriPermissionFromOwnerUnlocked(Landroid/os/IBinder;ILjava/lang/String;Landroid/net/Uri;III)V
    .locals 9
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "fromUid"    # I
    .param p3, "targetPkg"    # Ljava/lang/String;
    .param p4, "uri"    # Landroid/net/Uri;
    .param p5, "modeFlags"    # I
    .param p6, "sourceUserId"    # I
    .param p7, "targetUserId"    # I

    .line 287
    iget-object v1, p0, Lcom/android/server/uri/UriGrantsManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    .line 288
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 287
    const/4 v5, 0x0

    const/4 v6, 0x2

    const-string v7, "grantUriPermissionFromOwner"

    const/4 v8, 0x0

    move/from16 v4, p7

    invoke-virtual/range {v1 .. v8}, Landroid/app/ActivityManagerInternal;->handleIncomingUser(IIIZILjava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 291
    .end local p7    # "targetUserId":I
    .local v6, "targetUserId":I
    invoke-static {p1}, Lcom/android/server/uri/UriPermissionOwner;->fromExternalToken(Landroid/os/IBinder;)Lcom/android/server/uri/UriPermissionOwner;

    move-result-object v5

    .line 292
    .local v5, "owner":Lcom/android/server/uri/UriPermissionOwner;
    if-eqz v5, :cond_4

    .line 295
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    if-eq p2, v1, :cond_1

    .line 296
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v3

    if-ne v1, v3, :cond_0

    goto :goto_0

    .line 299
    :cond_0
    new-instance v1, Ljava/lang/SecurityException;

    const-string v3, "nice try"

    invoke-direct {v1, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 302
    :cond_1
    :goto_0
    if-eqz p3, :cond_3

    .line 305
    if-eqz p4, :cond_2

    .line 309
    new-instance v3, Lcom/android/server/uri/GrantUri;

    move v7, p6

    invoke-direct {v3, p6, p4, p5}, Lcom/android/server/uri/GrantUri;-><init>(ILandroid/net/Uri;I)V

    move-object v0, p0

    move v1, p2

    move-object v2, p3

    move v4, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/server/uri/UriGrantsManagerService;->grantUriPermissionUnlocked(ILjava/lang/String;Lcom/android/server/uri/GrantUri;ILcom/android/server/uri/UriPermissionOwner;I)V

    .line 311
    return-void

    .line 306
    :cond_2
    move v7, p6

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "null uri"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 303
    :cond_3
    move v7, p6

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "null target"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 293
    :cond_4
    move v7, p6

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown owner: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private grantUriPermissionUnchecked(ILjava/lang/String;Lcom/android/server/uri/GrantUri;ILcom/android/server/uri/UriPermissionOwner;)V
    .locals 17
    .param p1, "targetUid"    # I
    .param p2, "targetPkg"    # Ljava/lang/String;
    .param p3, "grantUri"    # Lcom/android/server/uri/GrantUri;
    .param p4, "modeFlags"    # I
    .param p5, "owner"    # Lcom/android/server/uri/UriPermissionOwner;

    .line 959
    move-object/from16 v1, p0

    move-object/from16 v2, p3

    move/from16 v3, p4

    invoke-static {v3}, Landroid/content/Intent;->isAccessUriMode(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 960
    return-void

    .line 970
    :cond_0
    iget-object v0, v2, Lcom/android/server/uri/GrantUri;->uri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v4

    .line 971
    .local v4, "authority":Ljava/lang/String;
    iget v0, v2, Lcom/android/server/uri/GrantUri;->sourceUserId:I

    const/high16 v5, 0x10000000

    const/16 v6, 0x3e8

    invoke-direct {v1, v4, v0, v5, v6}, Lcom/android/server/uri/UriGrantsManagerService;->getProviderInfo(Ljava/lang/String;III)Landroid/content/pm/ProviderInfo;

    move-result-object v5

    .line 973
    .local v5, "pi":Landroid/content/pm/ProviderInfo;
    if-nez v5, :cond_1

    .line 974
    const-string v0, "UriGrantsManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "No content provider found for grant: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/android/server/uri/GrantUri;->toSafeString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 975
    return-void

    .line 979
    :cond_1
    iget-object v6, v1, Lcom/android/server/uri/UriGrantsManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 980
    :try_start_0
    iget-object v0, v5, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move/from16 v7, p1

    move-object/from16 v8, p2

    :try_start_1
    invoke-direct {v1, v0, v8, v7, v2}, Lcom/android/server/uri/UriGrantsManagerService;->findOrCreateUriPermissionLocked(Ljava/lang/String;Ljava/lang/String;ILcom/android/server/uri/GrantUri;)Lcom/android/server/uri/UriPermission;

    move-result-object v0

    .line 981
    .local v0, "perm":Lcom/android/server/uri/UriPermission;
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 982
    move-object/from16 v9, p5

    invoke-virtual {v0, v3, v9}, Lcom/android/server/uri/UriPermission;->grantModes(ILcom/android/server/uri/UriPermissionOwner;)Z

    .line 983
    iget-object v10, v1, Lcom/android/server/uri/UriGrantsManagerService;->mPmInternal:Landroid/content/pm/PackageManagerInternal;

    invoke-static {v7}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v11

    .line 984
    invoke-static {v7}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v13

    iget-object v6, v5, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v14, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    and-int/lit8 v6, v3, 0x40

    if-eqz v6, :cond_2

    const/4 v6, 0x1

    :goto_0
    move/from16 v16, v6

    goto :goto_1

    :cond_2
    const/4 v6, 0x0

    goto :goto_0

    .line 983
    :goto_1
    const/4 v12, 0x0

    const/4 v15, 0x0

    invoke-virtual/range {v10 .. v16}, Landroid/content/pm/PackageManagerInternal;->grantImplicitAccess(ILandroid/content/Intent;IIZZ)V

    .line 986
    return-void

    .line 981
    .end local v0    # "perm":Lcom/android/server/uri/UriPermission;
    :catchall_0
    move-exception v0

    :goto_2
    move-object/from16 v9, p5

    goto :goto_3

    :catchall_1
    move-exception v0

    move/from16 v7, p1

    move-object/from16 v8, p2

    goto :goto_2

    :goto_3
    :try_start_2
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw v0

    :catchall_2
    move-exception v0

    goto :goto_3
.end method

.method private grantUriPermissionUncheckedFromIntent(Lcom/android/server/uri/NeededUriGrants;Lcom/android/server/uri/UriPermissionOwner;)V
    .locals 8
    .param p1, "needed"    # Lcom/android/server/uri/NeededUriGrants;
    .param p2, "owner"    # Lcom/android/server/uri/UriPermissionOwner;

    .line 991
    if-nez p1, :cond_0

    .line 992
    return-void

    .line 994
    :cond_0
    iget-object v0, p1, Lcom/android/server/uri/NeededUriGrants;->uris:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    .line 995
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 996
    iget v3, p1, Lcom/android/server/uri/NeededUriGrants;->targetUid:I

    iget-object v4, p1, Lcom/android/server/uri/NeededUriGrants;->targetPkg:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/server/uri/NeededUriGrants;->uris:Landroid/util/ArraySet;

    .line 997
    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Lcom/android/server/uri/GrantUri;

    iget v6, p1, Lcom/android/server/uri/NeededUriGrants;->flags:I

    .line 996
    move-object v2, p0

    move-object v7, p2

    .end local p2    # "owner":Lcom/android/server/uri/UriPermissionOwner;
    .local v7, "owner":Lcom/android/server/uri/UriPermissionOwner;
    invoke-direct/range {v2 .. v7}, Lcom/android/server/uri/UriGrantsManagerService;->grantUriPermissionUnchecked(ILjava/lang/String;Lcom/android/server/uri/GrantUri;ILcom/android/server/uri/UriPermissionOwner;)V

    .line 995
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v7    # "owner":Lcom/android/server/uri/UriPermissionOwner;
    .restart local p2    # "owner":Lcom/android/server/uri/UriPermissionOwner;
    :cond_1
    nop

    .line 999
    .end local v1    # "i":I
    return-void
.end method

.method private grantUriPermissionUnlocked(ILjava/lang/String;Lcom/android/server/uri/GrantUri;ILcom/android/server/uri/UriPermissionOwner;I)V
    .locals 9
    .param p1, "callingUid"    # I
    .param p2, "targetPkg"    # Ljava/lang/String;
    .param p3, "grantUri"    # Lcom/android/server/uri/GrantUri;
    .param p4, "modeFlags"    # I
    .param p5, "owner"    # Lcom/android/server/uri/UriPermissionOwner;
    .param p6, "targetUserId"    # I

    .line 1003
    if-eqz p2, :cond_1

    .line 1006
    iget-object v0, p0, Lcom/android/server/uri/UriGrantsManagerService;->mPmInternal:Landroid/content/pm/PackageManagerInternal;

    const-wide/32 v1, 0x10000000

    invoke-virtual {v0, p2, v1, v2, p6}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;JI)I

    move-result v8

    .line 1009
    .local v8, "targetUid":I
    move-object v3, p0

    move v4, p1

    move-object v5, p2

    move-object v6, p3

    move v7, p4

    .end local p1    # "callingUid":I
    .end local p2    # "targetPkg":Ljava/lang/String;
    .end local p3    # "grantUri":Lcom/android/server/uri/GrantUri;
    .end local p4    # "modeFlags":I
    .local v4, "callingUid":I
    .local v5, "targetPkg":Ljava/lang/String;
    .local v6, "grantUri":Lcom/android/server/uri/GrantUri;
    .local v7, "modeFlags":I
    invoke-direct/range {v3 .. v8}, Lcom/android/server/uri/UriGrantsManagerService;->checkGrantUriPermissionUnlocked(ILjava/lang/String;Lcom/android/server/uri/GrantUri;II)I

    move-result v1

    .line 1011
    move-object v2, v5

    move-object v3, v6

    move v4, v7

    .end local v5    # "targetPkg":Ljava/lang/String;
    .end local v6    # "grantUri":Lcom/android/server/uri/GrantUri;
    .end local v7    # "modeFlags":I
    .end local v8    # "targetUid":I
    .local v1, "targetUid":I
    .local v2, "targetPkg":Ljava/lang/String;
    .local v3, "grantUri":Lcom/android/server/uri/GrantUri;
    .local v4, "modeFlags":I
    .restart local p1    # "callingUid":I
    if-gez v1, :cond_0

    .line 1012
    return-void

    .line 1015
    :cond_0
    move-object v0, p0

    move-object v5, p5

    .end local p5    # "owner":Lcom/android/server/uri/UriPermissionOwner;
    .local v5, "owner":Lcom/android/server/uri/UriPermissionOwner;
    invoke-direct/range {v0 .. v5}, Lcom/android/server/uri/UriGrantsManagerService;->grantUriPermissionUnchecked(ILjava/lang/String;Lcom/android/server/uri/GrantUri;ILcom/android/server/uri/UriPermissionOwner;)V

    .line 1016
    return-void

    .line 1004
    .end local v1    # "targetUid":I
    .end local v2    # "targetPkg":Ljava/lang/String;
    .end local v3    # "grantUri":Lcom/android/server/uri/GrantUri;
    .end local v4    # "modeFlags":I
    .end local v5    # "owner":Lcom/android/server/uri/UriPermissionOwner;
    .restart local p2    # "targetPkg":Ljava/lang/String;
    .restart local p3    # "grantUri":Lcom/android/server/uri/GrantUri;
    .restart local p4    # "modeFlags":I
    .restart local p5    # "owner":Lcom/android/server/uri/UriPermissionOwner;
    :cond_1
    move-object v2, p2

    move-object v3, p3

    .end local p2    # "targetPkg":Ljava/lang/String;
    .end local p3    # "grantUri":Lcom/android/server/uri/GrantUri;
    .restart local v2    # "targetPkg":Ljava/lang/String;
    .restart local v3    # "grantUri":Lcom/android/server/uri/GrantUri;
    new-instance p2, Ljava/lang/NullPointerException;

    const-string p3, "targetPkg"

    invoke-direct {p2, p3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method private hasRequireContentUriPermissionFromCallerUnlocked(Ljava/lang/Integer;Lcom/android/server/uri/GrantUri;I)Z
    .locals 6
    .param p1, "requireContentUriPermissionFromCaller"    # Ljava/lang/Integer;
    .param p2, "grantUri"    # Lcom/android/server/uri/GrantUri;
    .param p3, "uid"    # I

    .line 760
    nop

    .line 761
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 760
    invoke-static {v0}, Landroid/content/pm/ActivityInfo;->isRequiredContentUriPermissionRead(I)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    nop

    if-eqz v0, :cond_1

    .line 762
    invoke-direct {p0, p2, p3, v2}, Lcom/android/server/uri/UriGrantsManagerService;->checkContentUriPermissionFullUnlocked(Lcom/android/server/uri/GrantUri;II)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v2

    :goto_1
    nop

    .line 765
    .local v0, "readMet":Z
    nop

    .line 766
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 765
    invoke-static {v3}, Landroid/content/pm/ActivityInfo;->isRequiredContentUriPermissionWrite(I)Z

    move-result v3

    nop

    if-eqz v3, :cond_3

    .line 767
    const/4 v3, 0x2

    invoke-direct {p0, p2, p3, v3}, Lcom/android/server/uri/UriGrantsManagerService;->checkContentUriPermissionFullUnlocked(Lcom/android/server/uri/GrantUri;II)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_2

    :cond_2
    move v3, v1

    goto :goto_3

    :cond_3
    :goto_2
    move v3, v2

    :goto_3
    nop

    .line 770
    .local v3, "writeMet":Z
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_5

    .line 771
    if-nez v0, :cond_4

    if-eqz v3, :cond_6

    :cond_4
    :goto_4
    move v1, v2

    goto :goto_5

    :cond_5
    if-eqz v0, :cond_6

    if-eqz v3, :cond_6

    goto :goto_4

    .line 770
    :cond_6
    :goto_5
    return v1
.end method

.method private isCallerIsSystemOrPrivileged()Z
    .locals 4

    .line 1593
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1594
    .local v0, "uid":I
    const/16 v1, 0x3e8

    const/4 v2, 0x1

    if-eq v0, v1, :cond_0

    if-nez v0, :cond_1

    :cond_0
    goto :goto_1

    .line 1597
    :cond_1
    const-string v1, "android.permission.INTERACT_ACROSS_USERS_FULL"

    const/4 v3, -0x1

    invoke-virtual {p0, v1, v0, v3, v2}, Lcom/android/server/uri/UriGrantsManagerService;->checkComponentPermission(Ljava/lang/String;IIZ)I

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    return v2

    .line 1595
    :goto_1
    return v2
.end method

.method private isContentUriWithAccessModeFlags(Lcom/android/server/uri/GrantUri;ILjava/lang/String;)Z
    .locals 3
    .param p1, "grantUri"    # Lcom/android/server/uri/GrantUri;
    .param p2, "modeFlags"    # I
    .param p3, "logAction"    # Ljava/lang/String;

    .line 1464
    invoke-static {p2}, Landroid/content/Intent;->isAccessUriMode(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1466
    return v1

    .line 1469
    :cond_0
    iget-object v0, p1, Lcom/android/server/uri/GrantUri;->uri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v2, "content"

    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1473
    return v1

    .line 1476
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method private matchesProvider(Landroid/net/Uri;Landroid/content/pm/ProviderInfo;)Z
    .locals 6
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "cpi"    # Landroid/content/pm/ProviderInfo;

    .line 586
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    .line 587
    .local v0, "uriAuth":Ljava/lang/String;
    iget-object v1, p2, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    .line 588
    .local v1, "cpiAuth":Ljava/lang/String;
    const/16 v2, 0x3b

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 589
    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    return v2

    .line 591
    :cond_0
    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 592
    .local v2, "cpiAuths":[Ljava/lang/String;
    array-length v3, v2

    .line 593
    .local v3, "length":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v3, :cond_2

    .line 594
    aget-object v5, v2, v4

    invoke-virtual {v5, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v5, 0x1

    return v5

    .line 593
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    nop

    .line 596
    .end local v4    # "i":I
    const/4 v4, 0x0

    return v4
.end method

.method private maybePrunePersistedUriGrantsLocked(I)Z
    .locals 7
    .param p1, "uid"    # I

    .line 607
    iget-object v0, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantedUriPermissions:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    .line 608
    .local v0, "perms":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/uri/GrantUri;Lcom/android/server/uri/UriPermission;>;"
    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 609
    :cond_0
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v2

    const/16 v3, 0x200

    if-ge v2, v3, :cond_1

    return v1

    .line 611
    :cond_1
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 612
    .local v2, "persisted":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/uri/UriPermission;>;"
    invoke-virtual {v0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/uri/UriPermission;

    .line 613
    .local v5, "perm":Lcom/android/server/uri/UriPermission;
    iget v6, v5, Lcom/android/server/uri/UriPermission;->persistedModeFlags:I

    if-eqz v6, :cond_2

    .line 614
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 616
    .end local v5    # "perm":Lcom/android/server/uri/UriPermission;
    :cond_2
    goto :goto_0

    .line 618
    :cond_3
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int/2addr v4, v3

    .line 619
    .local v4, "trimCount":I
    if-gtz v4, :cond_4

    return v1

    .line 621
    :cond_4
    new-instance v1, Lcom/android/server/uri/UriPermission$PersistedTimeComparator;

    invoke-direct {v1}, Lcom/android/server/uri/UriPermission$PersistedTimeComparator;-><init>()V

    invoke-static {v2, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 622
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v4, :cond_5

    .line 623
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/uri/UriPermission;

    .line 627
    .local v3, "perm":Lcom/android/server/uri/UriPermission;
    const/4 v5, -0x1

    invoke-virtual {v3, v5}, Lcom/android/server/uri/UriPermission;->releasePersistableModes(I)Z

    .line 628
    invoke-direct {p0, v3}, Lcom/android/server/uri/UriGrantsManagerService;->removeUriPermissionIfNeededLocked(Lcom/android/server/uri/UriPermission;)V

    .line 622
    .end local v3    # "perm":Lcom/android/server/uri/UriPermission;
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_5
    nop

    .line 631
    .end local v1    # "i":I
    const/4 v1, 0x1

    return v1
.end method

.method private notifyActivityLaunchRequestCompletedUnlocked(Ljava/lang/Integer;ZLjava/lang/String;ILjava/lang/String;ILjava/lang/String;Z)V
    .locals 16
    .param p1, "requestHashCode"    # Ljava/lang/Integer;
    .param p2, "isSuccessfulLaunch"    # Z
    .param p3, "intentAction"    # Ljava/lang/String;
    .param p4, "callingUid"    # I
    .param p5, "callingActivityName"    # Ljava/lang/String;
    .param p6, "calleeUid"    # I
    .param p7, "calleeActivityName"    # Ljava/lang/String;
    .param p8, "isStartActivityForResult"    # Z

    .line 840
    move-object/from16 v1, p0

    iget-object v2, v1, Lcom/android/server/uri/UriGrantsManagerService;->mLaunchToContentUrisWithoutCallerReadPermission:Landroid/util/SparseArray;

    monitor-enter v2

    .line 841
    :try_start_0
    iget-object v0, v1, Lcom/android/server/uri/UriGrantsManagerService;->mLaunchToContentUrisWithoutCallerReadPermission:Landroid/util/SparseArray;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArraySet;

    .line 842
    .local v0, "contentUris":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/net/Uri;>;"
    iget-object v3, v1, Lcom/android/server/uri/UriGrantsManagerService;->mLaunchToContentUrisWithoutCallerReadPermission:Landroid/util/SparseArray;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->remove(I)V

    .line 843
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 844
    if-eqz p2, :cond_0

    if-nez v0, :cond_1

    :cond_0
    goto :goto_1

    .line 846
    :cond_1
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    .line 847
    .local v2, "authorities":[Ljava/lang/String;
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    .line 848
    .local v3, "schemes":[Ljava/lang/String;
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    .local v4, "i":I
    :goto_0
    if-ltz v4, :cond_2

    .line 849
    invoke-virtual {v0, v4}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/Uri;

    .line 850
    .local v5, "uri":Landroid/net/Uri;
    invoke-virtual {v5}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v4

    .line 851
    invoke-virtual {v5}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v4

    .line 848
    .end local v5    # "uri":Landroid/net/Uri;
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    :cond_2
    nop

    .line 853
    .end local v4    # "i":I
    const-string v4, ","

    .line 861
    invoke-static {v4, v2}, Ljava/lang/String;->join(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v13

    const-string v4, ","

    .line 862
    invoke-static {v4, v3}, Ljava/lang/String;->join(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v14

    .line 853
    const/16 v5, 0x3a5

    const/4 v6, 0x1

    const/4 v15, 0x0

    move-object/from16 v7, p3

    move/from16 v8, p4

    move-object/from16 v9, p5

    move/from16 v10, p6

    move-object/from16 v11, p7

    move/from16 v12, p8

    invoke-static/range {v5 .. v15}, Lcom/android/internal/util/FrameworkStatsLog;->write(IILjava/lang/String;ILjava/lang/String;ILjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 864
    return-void

    .line 844
    .end local v2    # "authorities":[Ljava/lang/String;
    .end local v3    # "schemes":[Ljava/lang/String;
    :goto_1
    return-void

    .line 843
    .end local v0    # "contentUris":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/net/Uri;>;"
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private readGrantedUriPermissionsLocked()V
    .locals 29

    .line 870
    move-object/from16 v1, p0

    const-string v2, "Failed reading Uri grants"

    const-string v3, "UriGrantsManagerService"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 872
    .local v4, "now":J
    const/4 v6, 0x0

    .line 874
    .local v6, "fis":Ljava/io/FileInputStream;
    :try_start_0
    iget-object v0, v1, Lcom/android/server/uri/UriGrantsManagerService;->mGrantFile:Landroid/util/AtomicFile;

    invoke-virtual {v0}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_13
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_12
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_11
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    move-object v6, v0

    .line 875
    :try_start_1
    invoke-static {v6}, Landroid/util/Xml;->resolvePullParser(Ljava/io/InputStream;)Lcom/android/modules/utils/TypedXmlPullParser;

    move-result-object v0

    .line 878
    .local v0, "in":Lcom/android/modules/utils/TypedXmlPullParser;
    :goto_0
    invoke-interface {v0}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v7

    move v8, v7

    .local v8, "type":I
    const/4 v9, 0x1

    if-eq v7, v9, :cond_6

    .line 879
    invoke-interface {v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    .line 880
    .local v7, "tag":Ljava/lang/String;
    const/4 v9, 0x2

    if-ne v8, v9, :cond_5

    .line 881
    const-string v9, "uri-grant"

    invoke-virtual {v9, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 884
    const-string v9, "userHandle"

    const/16 v10, -0x2710

    const/4 v11, 0x0

    invoke-interface {v0, v11, v9, v10}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v9

    .line 886
    .local v9, "userHandle":I
    if-eq v9, v10, :cond_0

    .line 888
    move v10, v9

    .line 889
    .local v10, "sourceUserId":I
    move v12, v9

    move v13, v12

    .local v12, "targetUserId":I
    goto :goto_1

    .line 891
    .end local v10    # "sourceUserId":I
    .end local v12    # "targetUserId":I
    :cond_0
    const-string v10, "sourceUserId"

    invoke-interface {v0, v11, v10}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v10

    .line 892
    .restart local v10    # "sourceUserId":I
    const-string v12, "targetUserId"

    invoke-interface {v0, v11, v12}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v12

    move v13, v12

    .line 894
    .local v13, "targetUserId":I
    :goto_1
    const-string v12, "sourcePkg"

    invoke-interface {v0, v11, v12}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 895
    .local v12, "sourcePkg":Ljava/lang/String;
    const-string v14, "targetPkg"

    invoke-interface {v0, v11, v14}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 896
    .local v14, "targetPkg":Ljava/lang/String;
    const-string v15, "uri"

    invoke-interface {v0, v11, v15}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v15

    .line 897
    .local v15, "uri":Landroid/net/Uri;
    const-string v11, "prefix"
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_10
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_f
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_e
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-object/from16 v19, v6

    .end local v6    # "fis":Ljava/io/FileInputStream;
    .local v19, "fis":Ljava/io/FileInputStream;
    const/4 v6, 0x0

    move-object/from16 v20, v7

    const/4 v7, 0x0

    .end local v7    # "tag":Ljava/lang/String;
    .local v20, "tag":Ljava/lang/String;
    :try_start_2
    invoke-interface {v0, v7, v11, v6}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v11

    .line 898
    .local v11, "prefix":Z
    const-string v6, "modeFlags"

    invoke-interface {v0, v7, v6}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 899
    .local v6, "modeFlags":I
    const-string v7, "createdTime"

    move/from16 v21, v8

    const/4 v8, 0x0

    .end local v8    # "type":I
    .local v21, "type":I
    invoke-interface {v0, v8, v7, v4, v5}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v7

    .line 904
    .local v7, "createdTime":J
    move-object/from16 v22, v0

    .end local v0    # "in":Lcom/android/modules/utils/TypedXmlPullParser;
    .local v22, "in":Lcom/android/modules/utils/TypedXmlPullParser;
    invoke-virtual {v15}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_d
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_c
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_b
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-wide/from16 v23, v4

    .end local v4    # "now":J
    .local v23, "now":J
    const/high16 v4, 0xc0000

    const/16 v5, 0x3e8

    :try_start_3
    invoke-direct {v1, v0, v10, v4, v5}, Lcom/android/server/uri/UriGrantsManagerService;->getProviderInfo(Ljava/lang/String;III)Landroid/content/pm/ProviderInfo;

    move-result-object v0
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_a
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_9
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 906
    .local v0, "pi":Landroid/content/pm/ProviderInfo;
    if-eqz v0, :cond_3

    :try_start_4
    iget-object v4, v0, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v12, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 907
    iget-object v4, v1, Lcom/android/server/uri/UriGrantsManagerService;->mPmInternal:Landroid/content/pm/PackageManagerInternal;
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-object v5, v2

    move-object/from16 v25, v3

    const-wide/16 v2, 0x2000

    :try_start_5
    invoke-virtual {v4, v14, v2, v3, v13}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;JI)I

    move-result v2

    .line 909
    .local v2, "targetUid":I
    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    .line 910
    new-instance v3, Lcom/android/server/uri/GrantUri;

    .line 911
    if-eqz v11, :cond_1

    const/16 v4, 0x80

    goto :goto_2

    :cond_1
    const/4 v4, 0x0

    :goto_2
    invoke-direct {v3, v10, v15, v4}, Lcom/android/server/uri/GrantUri;-><init>(ILandroid/net/Uri;I)V

    .line 912
    .local v3, "grantUri":Lcom/android/server/uri/GrantUri;
    invoke-direct {v1, v12, v14, v2, v3}, Lcom/android/server/uri/UriGrantsManagerService;->findOrCreateUriPermissionLocked(Ljava/lang/String;Ljava/lang/String;ILcom/android/server/uri/GrantUri;)Lcom/android/server/uri/UriPermission;

    move-result-object v4

    .line 914
    .local v4, "perm":Lcom/android/server/uri/UriPermission;
    invoke-virtual {v4, v6, v7, v8}, Lcom/android/server/uri/UriPermission;->initPersistedModes(IJ)V

    .line 915
    move-object/from16 v16, v12

    .end local v12    # "sourcePkg":Ljava/lang/String;
    .local v16, "sourcePkg":Ljava/lang/String;
    iget-object v12, v1, Lcom/android/server/uri/UriGrantsManagerService;->mPmInternal:Landroid/content/pm/PackageManagerInternal;

    .line 917
    move-object/from16 v17, v15

    .end local v15    # "uri":Landroid/net/Uri;
    .local v17, "uri":Landroid/net/Uri;
    invoke-static {v2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v15

    iget-object v1, v0, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 915
    move-object/from16 v18, v14

    .end local v14    # "targetPkg":Ljava/lang/String;
    .local v18, "targetPkg":Ljava/lang/String;
    const/4 v14, 0x0

    move-object/from16 v26, v17

    .end local v17    # "uri":Landroid/net/Uri;
    .local v26, "uri":Landroid/net/Uri;
    const/16 v17, 0x0

    move-object/from16 v27, v18

    .end local v18    # "targetPkg":Ljava/lang/String;
    .local v27, "targetPkg":Ljava/lang/String;
    const/16 v18, 0x1

    move-object/from16 v28, v16

    move/from16 v16, v1

    move-object/from16 v1, v28

    move-object/from16 v28, v26

    move/from16 v26, v2

    move-object/from16 v2, v28

    .end local v16    # "sourcePkg":Ljava/lang/String;
    .local v1, "sourcePkg":Ljava/lang/String;
    .local v2, "uri":Landroid/net/Uri;
    .local v26, "targetUid":I
    invoke-virtual/range {v12 .. v18}, Landroid/content/pm/PackageManagerInternal;->grantImplicitAccess(ILandroid/content/Intent;IIZZ)V
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_5

    .line 935
    .end local v0    # "pi":Landroid/content/pm/ProviderInfo;
    .end local v1    # "sourcePkg":Ljava/lang/String;
    .end local v2    # "uri":Landroid/net/Uri;
    .end local v3    # "grantUri":Lcom/android/server/uri/GrantUri;
    .end local v4    # "perm":Lcom/android/server/uri/UriPermission;
    .end local v6    # "modeFlags":I
    .end local v7    # "createdTime":J
    .end local v9    # "userHandle":I
    .end local v10    # "sourceUserId":I
    .end local v11    # "prefix":Z
    .end local v13    # "targetUserId":I
    .end local v20    # "tag":Ljava/lang/String;
    .end local v21    # "type":I
    .end local v22    # "in":Lcom/android/modules/utils/TypedXmlPullParser;
    .end local v26    # "targetUid":I
    .end local v27    # "targetPkg":Ljava/lang/String;
    :catchall_0
    move-exception v0

    move-object/from16 v6, v19

    goto/16 :goto_b

    .line 932
    :catch_0
    move-exception v0

    :goto_3
    move-object/from16 v6, v19

    move-object/from16 v4, v25

    goto/16 :goto_9

    .line 930
    :catch_1
    move-exception v0

    :goto_4
    move-object/from16 v6, v19

    move-object/from16 v4, v25

    goto/16 :goto_a

    .line 928
    :catch_2
    move-exception v0

    move-object/from16 v6, v19

    goto/16 :goto_c

    .line 909
    .restart local v0    # "pi":Landroid/content/pm/ProviderInfo;
    .local v2, "targetUid":I
    .restart local v6    # "modeFlags":I
    .restart local v7    # "createdTime":J
    .restart local v9    # "userHandle":I
    .restart local v10    # "sourceUserId":I
    .restart local v11    # "prefix":Z
    .restart local v12    # "sourcePkg":Ljava/lang/String;
    .restart local v13    # "targetUserId":I
    .restart local v14    # "targetPkg":Ljava/lang/String;
    .restart local v15    # "uri":Landroid/net/Uri;
    .restart local v20    # "tag":Ljava/lang/String;
    .restart local v21    # "type":I
    .restart local v22    # "in":Lcom/android/modules/utils/TypedXmlPullParser;
    :cond_2
    move/from16 v26, v2

    move-object v1, v12

    move-object/from16 v27, v14

    move-object v2, v15

    .line 921
    .end local v12    # "sourcePkg":Ljava/lang/String;
    .end local v14    # "targetPkg":Ljava/lang/String;
    .end local v15    # "uri":Landroid/net/Uri;
    .restart local v1    # "sourcePkg":Ljava/lang/String;
    .local v2, "uri":Landroid/net/Uri;
    .restart local v27    # "targetPkg":Ljava/lang/String;
    :goto_5
    move-object/from16 v4, v25

    goto/16 :goto_8

    .line 932
    .end local v0    # "pi":Landroid/content/pm/ProviderInfo;
    .end local v1    # "sourcePkg":Ljava/lang/String;
    .end local v2    # "uri":Landroid/net/Uri;
    .end local v6    # "modeFlags":I
    .end local v7    # "createdTime":J
    .end local v9    # "userHandle":I
    .end local v10    # "sourceUserId":I
    .end local v11    # "prefix":Z
    .end local v13    # "targetUserId":I
    .end local v20    # "tag":Ljava/lang/String;
    .end local v21    # "type":I
    .end local v22    # "in":Lcom/android/modules/utils/TypedXmlPullParser;
    .end local v27    # "targetPkg":Ljava/lang/String;
    :catch_3
    move-exception v0

    move-object v5, v2

    move-object/from16 v25, v3

    goto :goto_3

    .line 930
    :catch_4
    move-exception v0

    move-object v5, v2

    move-object/from16 v25, v3

    goto :goto_4

    .line 906
    .restart local v0    # "pi":Landroid/content/pm/ProviderInfo;
    .restart local v6    # "modeFlags":I
    .restart local v7    # "createdTime":J
    .restart local v9    # "userHandle":I
    .restart local v10    # "sourceUserId":I
    .restart local v11    # "prefix":Z
    .restart local v12    # "sourcePkg":Ljava/lang/String;
    .restart local v13    # "targetUserId":I
    .restart local v14    # "targetPkg":Ljava/lang/String;
    .restart local v15    # "uri":Landroid/net/Uri;
    .restart local v20    # "tag":Ljava/lang/String;
    .restart local v21    # "type":I
    .restart local v22    # "in":Lcom/android/modules/utils/TypedXmlPullParser;
    :cond_3
    move-object v5, v2

    move-object/from16 v25, v3

    move-object v1, v12

    move-object/from16 v27, v14

    move-object v2, v15

    .line 922
    .end local v12    # "sourcePkg":Ljava/lang/String;
    .end local v14    # "targetPkg":Ljava/lang/String;
    .end local v15    # "uri":Landroid/net/Uri;
    .restart local v1    # "sourcePkg":Ljava/lang/String;
    .restart local v2    # "uri":Landroid/net/Uri;
    .restart local v27    # "targetPkg":Ljava/lang/String;
    :try_start_6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Persisted grant for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " had source "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " but instead found "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_8
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_6} :catch_7
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-object/from16 v4, v25

    :try_start_7
    invoke-static {v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_7 .. :try_end_7} :catch_5
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_8

    .line 932
    .end local v0    # "pi":Landroid/content/pm/ProviderInfo;
    .end local v1    # "sourcePkg":Ljava/lang/String;
    .end local v2    # "uri":Landroid/net/Uri;
    .end local v6    # "modeFlags":I
    .end local v7    # "createdTime":J
    .end local v9    # "userHandle":I
    .end local v10    # "sourceUserId":I
    .end local v11    # "prefix":Z
    .end local v13    # "targetUserId":I
    .end local v20    # "tag":Ljava/lang/String;
    .end local v21    # "type":I
    .end local v22    # "in":Lcom/android/modules/utils/TypedXmlPullParser;
    .end local v27    # "targetPkg":Ljava/lang/String;
    :catch_5
    move-exception v0

    :goto_6
    move-object/from16 v6, v19

    goto/16 :goto_9

    .line 930
    :catch_6
    move-exception v0

    :goto_7
    move-object/from16 v6, v19

    goto/16 :goto_a

    .line 932
    :catch_7
    move-exception v0

    move-object/from16 v4, v25

    goto :goto_6

    .line 930
    :catch_8
    move-exception v0

    move-object/from16 v4, v25

    goto :goto_7

    .line 932
    :catch_9
    move-exception v0

    move-object v5, v2

    move-object v4, v3

    goto :goto_6

    .line 930
    :catch_a
    move-exception v0

    move-object v5, v2

    move-object v4, v3

    goto :goto_7

    .line 935
    .end local v23    # "now":J
    .local v4, "now":J
    :catchall_1
    move-exception v0

    move-wide/from16 v23, v4

    move-object/from16 v6, v19

    .end local v4    # "now":J
    .restart local v23    # "now":J
    goto/16 :goto_b

    .line 932
    .end local v23    # "now":J
    .restart local v4    # "now":J
    :catch_b
    move-exception v0

    move-wide/from16 v23, v4

    move-object v5, v2

    move-object v4, v3

    move-object/from16 v6, v19

    .end local v4    # "now":J
    .restart local v23    # "now":J
    goto/16 :goto_9

    .line 930
    .end local v23    # "now":J
    .restart local v4    # "now":J
    :catch_c
    move-exception v0

    move-wide/from16 v23, v4

    move-object v5, v2

    move-object v4, v3

    move-object/from16 v6, v19

    .end local v4    # "now":J
    .restart local v23    # "now":J
    goto/16 :goto_a

    .line 928
    .end local v23    # "now":J
    .restart local v4    # "now":J
    :catch_d
    move-exception v0

    move-wide/from16 v23, v4

    move-object/from16 v6, v19

    .end local v4    # "now":J
    .restart local v23    # "now":J
    goto/16 :goto_c

    .line 935
    .end local v19    # "fis":Ljava/io/FileInputStream;
    .end local v23    # "now":J
    .restart local v4    # "now":J
    .local v6, "fis":Ljava/io/FileInputStream;
    :catchall_2
    move-exception v0

    move-wide/from16 v23, v4

    move-object/from16 v19, v6

    .end local v4    # "now":J
    .end local v6    # "fis":Ljava/io/FileInputStream;
    .restart local v19    # "fis":Ljava/io/FileInputStream;
    .restart local v23    # "now":J
    goto/16 :goto_b

    .line 932
    .end local v19    # "fis":Ljava/io/FileInputStream;
    .end local v23    # "now":J
    .restart local v4    # "now":J
    .restart local v6    # "fis":Ljava/io/FileInputStream;
    :catch_e
    move-exception v0

    move-wide/from16 v23, v4

    move-object/from16 v19, v6

    move-object v5, v2

    move-object v4, v3

    .end local v4    # "now":J
    .end local v6    # "fis":Ljava/io/FileInputStream;
    .restart local v19    # "fis":Ljava/io/FileInputStream;
    .restart local v23    # "now":J
    goto/16 :goto_9

    .line 930
    .end local v19    # "fis":Ljava/io/FileInputStream;
    .end local v23    # "now":J
    .restart local v4    # "now":J
    .restart local v6    # "fis":Ljava/io/FileInputStream;
    :catch_f
    move-exception v0

    move-wide/from16 v23, v4

    move-object/from16 v19, v6

    move-object v5, v2

    move-object v4, v3

    .end local v4    # "now":J
    .end local v6    # "fis":Ljava/io/FileInputStream;
    .restart local v19    # "fis":Ljava/io/FileInputStream;
    .restart local v23    # "now":J
    goto/16 :goto_a

    .line 928
    .end local v19    # "fis":Ljava/io/FileInputStream;
    .end local v23    # "now":J
    .restart local v4    # "now":J
    .restart local v6    # "fis":Ljava/io/FileInputStream;
    :catch_10
    move-exception v0

    move-wide/from16 v23, v4

    move-object/from16 v19, v6

    .end local v4    # "now":J
    .end local v6    # "fis":Ljava/io/FileInputStream;
    .restart local v19    # "fis":Ljava/io/FileInputStream;
    .restart local v23    # "now":J
    goto/16 :goto_c

    .line 881
    .end local v19    # "fis":Ljava/io/FileInputStream;
    .end local v23    # "now":J
    .local v0, "in":Lcom/android/modules/utils/TypedXmlPullParser;
    .restart local v4    # "now":J
    .restart local v6    # "fis":Ljava/io/FileInputStream;
    .local v7, "tag":Ljava/lang/String;
    .restart local v8    # "type":I
    :cond_4
    move-object/from16 v22, v0

    move-wide/from16 v23, v4

    move-object/from16 v19, v6

    move-object/from16 v20, v7

    move/from16 v21, v8

    move-object v5, v2

    move-object v4, v3

    .end local v0    # "in":Lcom/android/modules/utils/TypedXmlPullParser;
    .end local v4    # "now":J
    .end local v6    # "fis":Ljava/io/FileInputStream;
    .end local v7    # "tag":Ljava/lang/String;
    .end local v8    # "type":I
    .restart local v19    # "fis":Ljava/io/FileInputStream;
    .restart local v20    # "tag":Ljava/lang/String;
    .restart local v21    # "type":I
    .restart local v22    # "in":Lcom/android/modules/utils/TypedXmlPullParser;
    .restart local v23    # "now":J
    goto :goto_8

    .line 880
    .end local v19    # "fis":Ljava/io/FileInputStream;
    .end local v20    # "tag":Ljava/lang/String;
    .end local v21    # "type":I
    .end local v22    # "in":Lcom/android/modules/utils/TypedXmlPullParser;
    .end local v23    # "now":J
    .restart local v0    # "in":Lcom/android/modules/utils/TypedXmlPullParser;
    .restart local v4    # "now":J
    .restart local v6    # "fis":Ljava/io/FileInputStream;
    .restart local v7    # "tag":Ljava/lang/String;
    .restart local v8    # "type":I
    :cond_5
    move-object/from16 v22, v0

    move-wide/from16 v23, v4

    move-object/from16 v19, v6

    move-object/from16 v20, v7

    move/from16 v21, v8

    move-object v5, v2

    move-object v4, v3

    .line 927
    .end local v0    # "in":Lcom/android/modules/utils/TypedXmlPullParser;
    .end local v4    # "now":J
    .end local v6    # "fis":Ljava/io/FileInputStream;
    .end local v7    # "tag":Ljava/lang/String;
    .end local v8    # "type":I
    .restart local v19    # "fis":Ljava/io/FileInputStream;
    .restart local v21    # "type":I
    .restart local v22    # "in":Lcom/android/modules/utils/TypedXmlPullParser;
    .restart local v23    # "now":J
    :goto_8
    move-object/from16 v1, p0

    move-object v3, v4

    move-object v2, v5

    move-object/from16 v6, v19

    move-object/from16 v0, v22

    move-wide/from16 v4, v23

    goto/16 :goto_0

    .line 878
    .end local v19    # "fis":Ljava/io/FileInputStream;
    .end local v21    # "type":I
    .end local v22    # "in":Lcom/android/modules/utils/TypedXmlPullParser;
    .end local v23    # "now":J
    .restart local v0    # "in":Lcom/android/modules/utils/TypedXmlPullParser;
    .restart local v4    # "now":J
    .restart local v6    # "fis":Ljava/io/FileInputStream;
    .restart local v8    # "type":I
    :cond_6
    move-object/from16 v22, v0

    move-wide/from16 v23, v4

    move-object/from16 v19, v6

    move/from16 v21, v8

    .line 935
    .end local v0    # "in":Lcom/android/modules/utils/TypedXmlPullParser;
    .end local v4    # "now":J
    .end local v6    # "fis":Ljava/io/FileInputStream;
    .end local v8    # "type":I
    .restart local v19    # "fis":Ljava/io/FileInputStream;
    .restart local v23    # "now":J
    invoke-static/range {v19 .. v19}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 936
    goto :goto_d

    .line 935
    .end local v19    # "fis":Ljava/io/FileInputStream;
    .end local v23    # "now":J
    .restart local v4    # "now":J
    .restart local v6    # "fis":Ljava/io/FileInputStream;
    :catchall_3
    move-exception v0

    move-wide/from16 v23, v4

    .end local v4    # "now":J
    .restart local v23    # "now":J
    goto :goto_b

    .line 932
    .end local v23    # "now":J
    .restart local v4    # "now":J
    :catch_11
    move-exception v0

    move-wide/from16 v23, v4

    move-object v5, v2

    move-object v4, v3

    .end local v4    # "now":J
    .restart local v23    # "now":J
    goto :goto_9

    .line 930
    .end local v23    # "now":J
    .restart local v4    # "now":J
    :catch_12
    move-exception v0

    move-wide/from16 v23, v4

    move-object v5, v2

    move-object v4, v3

    .end local v4    # "now":J
    .restart local v23    # "now":J
    goto :goto_a

    .line 928
    .end local v23    # "now":J
    .restart local v4    # "now":J
    :catch_13
    move-exception v0

    move-wide/from16 v23, v4

    .end local v4    # "now":J
    .restart local v23    # "now":J
    goto :goto_c

    .line 932
    :goto_9
    nop

    .line 933
    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_8
    invoke-static {v4, v5, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 935
    nop

    .end local v0    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    invoke-static {v6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 936
    goto :goto_d

    .line 935
    :catchall_4
    move-exception v0

    goto :goto_b

    .line 930
    :goto_a
    nop

    .line 931
    .local v0, "e":Ljava/io/IOException;
    :try_start_9
    invoke-static {v4, v5, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    .line 935
    nop

    .end local v0    # "e":Ljava/io/IOException;
    invoke-static {v6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 936
    goto :goto_d

    .line 935
    :goto_b
    invoke-static {v6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 936
    throw v0

    .line 928
    :goto_c
    nop

    .line 935
    invoke-static {v6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 936
    nop

    .line 937
    :goto_d
    return-void
.end method

.method private removeUriPermissionIfNeededLocked(Lcom/android/server/uri/UriPermission;)V
    .locals 3
    .param p1, "perm"    # Lcom/android/server/uri/UriPermission;

    .line 1230
    iget v0, p1, Lcom/android/server/uri/UriPermission;->modeFlags:I

    if-eqz v0, :cond_0

    .line 1231
    return-void

    .line 1233
    :cond_0
    iget-object v0, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantedUriPermissions:Landroid/util/SparseArray;

    iget v1, p1, Lcom/android/server/uri/UriPermission;->targetUid:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    .line 1235
    .local v0, "perms":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/uri/GrantUri;Lcom/android/server/uri/UriPermission;>;"
    if-nez v0, :cond_1

    .line 1236
    return-void

    .line 1240
    :cond_1
    iget-object v1, p1, Lcom/android/server/uri/UriPermission;->uri:Lcom/android/server/uri/GrantUri;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1241
    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1242
    iget-object v1, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantedUriPermissions:Landroid/util/SparseArray;

    iget v2, p1, Lcom/android/server/uri/UriPermission;->targetUid:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->remove(I)V

    .line 1244
    :cond_2
    return-void
.end method

.method private removeUriPermissionsForPackageLocked(Ljava/lang/String;IZZ)V
    .locals 11
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userHandle"    # I
    .param p3, "persistable"    # Z
    .param p4, "targetOnly"    # Z

    .line 516
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    if-eqz p1, :cond_1

    :cond_0
    goto :goto_0

    .line 517
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must narrow by either package or user"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 520
    :goto_0
    const/4 v1, 0x0

    .line 522
    .local v1, "persistChanged":Z
    iget-object v2, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantedUriPermissions:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 523
    .local v2, "N":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v2, :cond_a

    .line 524
    iget-object v4, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantedUriPermissions:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    .line 525
    .local v4, "targetUid":I
    iget-object v5, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantedUriPermissions:Landroid/util/SparseArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/ArrayMap;

    .line 528
    .local v5, "perms":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/uri/GrantUri;Lcom/android/server/uri/UriPermission;>;"
    const/4 v6, 0x1

    if-eq p2, v0, :cond_2

    .line 529
    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7

    if-ne p2, v7, :cond_9

    .line 530
    :cond_2
    invoke-virtual {v5}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/uri/UriPermission;>;"
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_8

    .line 531
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/uri/UriPermission;

    .line 534
    .local v8, "perm":Lcom/android/server/uri/UriPermission;
    if-eqz p1, :cond_4

    if-nez p4, :cond_3

    iget-object v9, v8, Lcom/android/server/uri/UriPermission;->sourcePkg:Ljava/lang/String;

    invoke-virtual {v9, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_4

    :cond_3
    iget-object v9, v8, Lcom/android/server/uri/UriPermission;->targetPkg:Ljava/lang/String;

    .line 535
    invoke-virtual {v9, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 539
    :cond_4
    iget-object v9, v8, Lcom/android/server/uri/UriPermission;->uri:Lcom/android/server/uri/GrantUri;

    iget-object v9, v9, Lcom/android/server/uri/GrantUri;->uri:Landroid/net/Uri;

    invoke-virtual {v9}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v9

    const-string v10, "downloads"

    invoke-virtual {v10, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    if-nez p3, :cond_5

    .line 540
    goto :goto_2

    .line 542
    :cond_5
    if-eqz p3, :cond_6

    .line 543
    move v9, v0

    goto :goto_3

    :cond_6
    const/16 v9, -0x41

    .line 542
    :goto_3
    invoke-virtual {v8, v9, v6}, Lcom/android/server/uri/UriPermission;->revokeModes(IZ)Z

    move-result v9

    or-int/2addr v1, v9

    .line 547
    iget v9, v8, Lcom/android/server/uri/UriPermission;->modeFlags:I

    if-nez v9, :cond_7

    .line 548
    invoke-interface {v7}, Ljava/util/Iterator;->remove()V

    .line 551
    .end local v8    # "perm":Lcom/android/server/uri/UriPermission;
    :cond_7
    goto :goto_2

    .line 530
    :cond_8
    nop

    .line 553
    .end local v7    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/uri/UriPermission;>;"
    invoke-virtual {v5}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_9

    .line 554
    iget-object v7, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantedUriPermissions:Landroid/util/SparseArray;

    invoke-virtual {v7, v4}, Landroid/util/SparseArray;->remove(I)V

    .line 555
    add-int/lit8 v2, v2, -0x1

    .line 556
    add-int/lit8 v3, v3, -0x1

    .line 523
    .end local v4    # "targetUid":I
    .end local v5    # "perms":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/uri/GrantUri;Lcom/android/server/uri/UriPermission;>;"
    :cond_9
    add-int/2addr v3, v6

    goto :goto_1

    :cond_a
    nop

    .line 561
    .end local v3    # "i":I
    if-eqz v1, :cond_b

    .line 562
    invoke-direct {p0}, Lcom/android/server/uri/UriGrantsManagerService;->schedulePersistUriGrants()V

    .line 564
    :cond_b
    return-void
.end method

.method private revokeUriPermission(Ljava/lang/String;ILcom/android/server/uri/GrantUri;I)V
    .locals 10
    .param p1, "targetPackage"    # Ljava/lang/String;
    .param p2, "callingUid"    # I
    .param p3, "grantUri"    # Lcom/android/server/uri/GrantUri;
    .param p4, "modeFlags"    # I

    .line 1022
    iget-object v0, p3, Lcom/android/server/uri/GrantUri;->uri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    .line 1023
    .local v1, "authority":Ljava/lang/String;
    iget v0, p3, Lcom/android/server/uri/GrantUri;->sourceUserId:I

    const/high16 v2, 0xc0000

    invoke-direct {p0, v1, v0, v2, p2}, Lcom/android/server/uri/UriGrantsManagerService;->getProviderInfo(Ljava/lang/String;III)Landroid/content/pm/ProviderInfo;

    move-result-object v2

    .line 1025
    .local v2, "pi":Landroid/content/pm/ProviderInfo;
    if-nez v2, :cond_0

    .line 1026
    const-string v0, "UriGrantsManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No content provider found for permission revoke: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1027
    invoke-virtual {p3}, Lcom/android/server/uri/GrantUri;->toSafeString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1026
    invoke-static {v0, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1028
    return-void

    .line 1031
    :cond_0
    invoke-direct {p0, v2, p3, p2, p4}, Lcom/android/server/uri/UriGrantsManagerService;->checkHoldingPermissionsUnlocked(Landroid/content/pm/ProviderInfo;Lcom/android/server/uri/GrantUri;II)Z

    move-result v9

    .line 1033
    .local v9, "callerHoldsPermissions":Z
    iget-object v3, p0, Lcom/android/server/uri/UriGrantsManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1034
    move-object v4, p0

    move-object v5, p1

    move v6, p2

    move-object v7, p3

    move v8, p4

    .end local p1    # "targetPackage":Ljava/lang/String;
    .end local p2    # "callingUid":I
    .end local p3    # "grantUri":Lcom/android/server/uri/GrantUri;
    .end local p4    # "modeFlags":I
    .local v5, "targetPackage":Ljava/lang/String;
    .local v6, "callingUid":I
    .local v7, "grantUri":Lcom/android/server/uri/GrantUri;
    .local v8, "modeFlags":I
    :try_start_0
    invoke-direct/range {v4 .. v9}, Lcom/android/server/uri/UriGrantsManagerService;->revokeUriPermissionLocked(Ljava/lang/String;ILcom/android/server/uri/GrantUri;IZ)V

    .line 1036
    monitor-exit v3

    .line 1037
    return-void

    .line 1036
    :catchall_0
    move-exception v0

    move-object p1, v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private revokeUriPermissionLocked(Ljava/lang/String;ILcom/android/server/uri/GrantUri;IZ)V
    .locals 10
    .param p1, "targetPackage"    # Ljava/lang/String;
    .param p2, "callingUid"    # I
    .param p3, "grantUri"    # Lcom/android/server/uri/GrantUri;
    .param p4, "modeFlags"    # I
    .param p5, "callerHoldsPermissions"    # Z

    .line 1043
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p5, :cond_5

    .line 1046
    iget-object v2, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantedUriPermissions:Landroid/util/SparseArray;

    invoke-virtual {v2, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/ArrayMap;

    .line 1047
    .local v2, "perms":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/uri/GrantUri;Lcom/android/server/uri/UriPermission;>;"
    if-eqz v2, :cond_4

    .line 1048
    const/4 v3, 0x0

    .line 1049
    .local v3, "persistChanged":Z
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v4

    sub-int/2addr v4, v1

    .local v4, "i":I
    :goto_0
    if-ltz v4, :cond_2

    .line 1050
    invoke-virtual {v2, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/uri/UriPermission;

    .line 1051
    .local v1, "perm":Lcom/android/server/uri/UriPermission;
    if-eqz p1, :cond_0

    iget-object v5, v1, Lcom/android/server/uri/UriPermission;->targetPkg:Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1052
    goto :goto_1

    .line 1054
    :cond_0
    iget-object v5, v1, Lcom/android/server/uri/UriPermission;->uri:Lcom/android/server/uri/GrantUri;

    iget v5, v5, Lcom/android/server/uri/GrantUri;->sourceUserId:I

    iget v6, p3, Lcom/android/server/uri/GrantUri;->sourceUserId:I

    nop

    if-ne v5, v6, :cond_1

    iget-object v5, v1, Lcom/android/server/uri/UriPermission;->uri:Lcom/android/server/uri/GrantUri;

    iget-object v5, v5, Lcom/android/server/uri/GrantUri;->uri:Landroid/net/Uri;

    iget-object v6, p3, Lcom/android/server/uri/GrantUri;->uri:Landroid/net/Uri;

    .line 1055
    invoke-virtual {v5, v6}, Landroid/net/Uri;->isPathPrefixMatch(Landroid/net/Uri;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1058
    or-int/lit8 v5, p4, 0x40

    invoke-virtual {v1, v5, v0}, Lcom/android/server/uri/UriPermission;->revokeModes(IZ)Z

    move-result v5

    or-int/2addr v3, v5

    .line 1060
    iget v5, v1, Lcom/android/server/uri/UriPermission;->modeFlags:I

    if-nez v5, :cond_1

    .line 1061
    invoke-virtual {v2, v4}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 1049
    .end local v1    # "perm":Lcom/android/server/uri/UriPermission;
    :cond_1
    :goto_1
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    :cond_2
    nop

    .line 1065
    .end local v4    # "i":I
    invoke-virtual {v2}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1066
    iget-object v0, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantedUriPermissions:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->remove(I)V

    .line 1068
    :cond_3
    if-eqz v3, :cond_4

    .line 1069
    invoke-direct {p0}, Lcom/android/server/uri/UriGrantsManagerService;->schedulePersistUriGrants()V

    .line 1072
    .end local v3    # "persistChanged":Z
    :cond_4
    return-void

    .line 1075
    .end local v2    # "perms":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/uri/GrantUri;Lcom/android/server/uri/UriPermission;>;"
    :cond_5
    const/4 v2, 0x0

    .line 1078
    .local v2, "persistChanged":Z
    iget-object v3, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantedUriPermissions:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    sub-int/2addr v3, v1

    .local v3, "i":I
    :goto_2
    if-ltz v3, :cond_b

    .line 1079
    iget-object v4, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantedUriPermissions:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    .line 1080
    .local v4, "targetUid":I
    iget-object v5, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantedUriPermissions:Landroid/util/SparseArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/ArrayMap;

    .line 1082
    .local v5, "perms":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/uri/GrantUri;Lcom/android/server/uri/UriPermission;>;"
    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v6

    sub-int/2addr v6, v1

    .local v6, "j":I
    :goto_3
    if-ltz v6, :cond_9

    .line 1083
    invoke-virtual {v5, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/uri/UriPermission;

    .line 1084
    .local v7, "perm":Lcom/android/server/uri/UriPermission;
    if-eqz p1, :cond_6

    iget-object v8, v7, Lcom/android/server/uri/UriPermission;->targetPkg:Ljava/lang/String;

    invoke-virtual {p1, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_6

    .line 1085
    goto :goto_5

    .line 1087
    :cond_6
    iget-object v8, v7, Lcom/android/server/uri/UriPermission;->uri:Lcom/android/server/uri/GrantUri;

    iget v8, v8, Lcom/android/server/uri/GrantUri;->sourceUserId:I

    iget v9, p3, Lcom/android/server/uri/GrantUri;->sourceUserId:I

    nop

    if-ne v8, v9, :cond_8

    iget-object v8, v7, Lcom/android/server/uri/UriPermission;->uri:Lcom/android/server/uri/GrantUri;

    iget-object v8, v8, Lcom/android/server/uri/GrantUri;->uri:Landroid/net/Uri;

    iget-object v9, p3, Lcom/android/server/uri/GrantUri;->uri:Landroid/net/Uri;

    .line 1088
    invoke-virtual {v8, v9}, Landroid/net/Uri;->isPathPrefixMatch(Landroid/net/Uri;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 1091
    or-int/lit8 v8, p4, 0x40

    if-nez p1, :cond_7

    move v9, v1

    goto :goto_4

    :cond_7
    move v9, v0

    :goto_4
    invoke-virtual {v7, v8, v9}, Lcom/android/server/uri/UriPermission;->revokeModes(IZ)Z

    move-result v8

    or-int/2addr v2, v8

    .line 1094
    iget v8, v7, Lcom/android/server/uri/UriPermission;->modeFlags:I

    if-nez v8, :cond_8

    .line 1095
    invoke-virtual {v5, v6}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 1082
    .end local v7    # "perm":Lcom/android/server/uri/UriPermission;
    :cond_8
    :goto_5
    add-int/lit8 v6, v6, -0x1

    goto :goto_3

    :cond_9
    nop

    .line 1100
    .end local v6    # "j":I
    invoke-virtual {v5}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_a

    .line 1101
    iget-object v6, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantedUriPermissions:Landroid/util/SparseArray;

    invoke-virtual {v6, v3}, Landroid/util/SparseArray;->removeAt(I)V

    .line 1078
    .end local v4    # "targetUid":I
    .end local v5    # "perms":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/uri/GrantUri;Lcom/android/server/uri/UriPermission;>;"
    :cond_a
    add-int/lit8 v3, v3, -0x1

    goto :goto_2

    :cond_b
    nop

    .line 1105
    .end local v3    # "i":I
    if-eqz v2, :cond_c

    .line 1106
    invoke-direct {p0}, Lcom/android/server/uri/UriGrantsManagerService;->schedulePersistUriGrants()V

    .line 1108
    :cond_c
    return-void
.end method

.method private schedulePersistUriGrants()V
    .locals 4

    .line 1256
    iget-object v0, p0, Lcom/android/server/uri/UriGrantsManagerService;->mH:Lcom/android/server/uri/UriGrantsManagerService$H;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1257
    iget-object v0, p0, Lcom/android/server/uri/UriGrantsManagerService;->mH:Lcom/android/server/uri/UriGrantsManagerService$H;

    iget-object v2, p0, Lcom/android/server/uri/UriGrantsManagerService;->mH:Lcom/android/server/uri/UriGrantsManagerService$H;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1260
    :cond_0
    return-void
.end method

.method private start()V
    .locals 2

    .line 214
    new-instance v0, Lcom/android/server/uri/UriGrantsManagerService$LocalService;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/uri/UriGrantsManagerService$LocalService;-><init>(Lcom/android/server/uri/UriGrantsManagerService;Lcom/android/server/uri/UriGrantsManagerService-IA;)V

    const-class v1, Lcom/android/server/uri/UriGrantsManagerInternal;

    invoke-static {v1, v0}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 215
    return-void
.end method

.method private tryAddingContentUriWithoutCallerReadPermissionWhenAttributeIsNoneUnlocked(Ljava/lang/Integer;Lcom/android/server/uri/GrantUri;ILjava/lang/Integer;)V
    .locals 4
    .param p1, "requireContentUriPermissionFromCaller"    # Ljava/lang/Integer;
    .param p2, "grantUri"    # Lcom/android/server/uri/GrantUri;
    .param p3, "callingUid"    # I
    .param p4, "requestHashCode"    # Ljava/lang/Integer;

    .line 781
    if-eqz p1, :cond_4

    .line 782
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    nop

    if-nez v0, :cond_4

    const-string v0, "content"

    iget-object v1, p2, Lcom/android/server/uri/GrantUri;->uri:Landroid/net/Uri;

    .line 783
    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p4, :cond_1

    :cond_0
    goto :goto_3

    .line 788
    :cond_1
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Lcom/android/server/uri/UriGrantsManagerService;->hasRequireContentUriPermissionFromCallerUnlocked(Ljava/lang/Integer;Lcom/android/server/uri/GrantUri;I)Z

    move-result v0

    if-nez v0, :cond_3

    .line 790
    iget-object v0, p0, Lcom/android/server/uri/UriGrantsManagerService;->mLaunchToContentUrisWithoutCallerReadPermission:Landroid/util/SparseArray;

    monitor-enter v0

    .line 791
    :try_start_0
    iget-object v1, p0, Lcom/android/server/uri/UriGrantsManagerService;->mLaunchToContentUrisWithoutCallerReadPermission:Landroid/util/SparseArray;

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_2

    .line 792
    iget-object v1, p0, Lcom/android/server/uri/UriGrantsManagerService;->mLaunchToContentUrisWithoutCallerReadPermission:Landroid/util/SparseArray;

    .line 793
    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    .line 797
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 795
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/android/server/uri/UriGrantsManagerService;->mLaunchToContentUrisWithoutCallerReadPermission:Landroid/util/SparseArray;

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArraySet;

    iget-object v2, p2, Lcom/android/server/uri/GrantUri;->uri:Landroid/net/Uri;

    .line 796
    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 797
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 799
    :cond_3
    :goto_2
    return-void

    .line 785
    :cond_4
    :goto_3
    return-void
.end method

.method private writeGrantedUriPermissions()V
    .locals 12

    .line 1629
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 1631
    .local v0, "startTime":J
    const/4 v2, 0x0

    .line 1634
    .local v2, "persistentUriPermissionsCount":I
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v3

    .line 1635
    .local v3, "persist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/uri/UriPermission$Snapshot;>;"
    iget-object v4, p0, Lcom/android/server/uri/UriGrantsManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 1636
    :try_start_0
    iget-object v5, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantedUriPermissions:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    .line 1637
    .local v5, "size":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v6, v5, :cond_2

    .line 1638
    iget-object v7, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantedUriPermissions:Landroid/util/SparseArray;

    invoke-virtual {v7, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/util/ArrayMap;

    .line 1640
    .local v7, "perms":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/uri/GrantUri;Lcom/android/server/uri/UriPermission;>;"
    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    move-result v8

    .line 1641
    .local v8, "permissionsForPackageSize":I
    const/4 v9, 0x0

    .local v9, "j":I
    :goto_1
    if-ge v9, v8, :cond_1

    .line 1642
    invoke-virtual {v7, v9}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/uri/UriPermission;

    .line 1644
    .local v10, "permission":Lcom/android/server/uri/UriPermission;
    iget v11, v10, Lcom/android/server/uri/UriPermission;->persistedModeFlags:I

    if-eqz v11, :cond_0

    .line 1645
    add-int/lit8 v2, v2, 0x1

    .line 1646
    invoke-virtual {v10}, Lcom/android/server/uri/UriPermission;->snapshot()Lcom/android/server/uri/UriPermission$Snapshot;

    move-result-object v11

    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1650
    .end local v5    # "size":I
    .end local v6    # "i":I
    .end local v7    # "perms":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/uri/GrantUri;Lcom/android/server/uri/UriPermission;>;"
    .end local v8    # "permissionsForPackageSize":I
    .end local v9    # "j":I
    .end local v10    # "permission":Lcom/android/server/uri/UriPermission;
    :catchall_0
    move-exception v5

    goto/16 :goto_6

    .line 1641
    .restart local v5    # "size":I
    .restart local v6    # "i":I
    .restart local v7    # "perms":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/uri/GrantUri;Lcom/android/server/uri/UriPermission;>;"
    .restart local v8    # "permissionsForPackageSize":I
    .restart local v9    # "j":I
    :cond_0
    :goto_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_1
    nop

    .line 1637
    .end local v7    # "perms":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/uri/GrantUri;Lcom/android/server/uri/UriPermission;>;"
    .end local v8    # "permissionsForPackageSize":I
    .end local v9    # "j":I
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_2
    nop

    .line 1650
    .end local v5    # "size":I
    .end local v6    # "i":I
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1652
    const/4 v4, 0x0

    .line 1654
    .local v4, "fos":Ljava/io/FileOutputStream;
    :try_start_1
    iget-object v5, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantFile:Landroid/util/AtomicFile;

    invoke-virtual {v5, v0, v1}, Landroid/util/AtomicFile;->startWrite(J)Ljava/io/FileOutputStream;

    move-result-object v5

    move-object v4, v5

    .line 1656
    invoke-static {v4}, Landroid/util/Xml;->resolveSerializer(Ljava/io/OutputStream;)Lcom/android/modules/utils/TypedXmlSerializer;

    move-result-object v5

    .line 1657
    .local v5, "out":Lcom/android/modules/utils/TypedXmlSerializer;
    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const/4 v7, 0x0

    invoke-interface {v5, v7, v6}, Lcom/android/modules/utils/TypedXmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1658
    const-string v6, "uri-grants"

    invoke-interface {v5, v7, v6}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1659
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/uri/UriPermission$Snapshot;

    .line 1660
    .local v8, "perm":Lcom/android/server/uri/UriPermission$Snapshot;
    const-string v9, "uri-grant"

    invoke-interface {v5, v7, v9}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1661
    const-string v9, "sourceUserId"

    iget-object v10, v8, Lcom/android/server/uri/UriPermission$Snapshot;->uri:Lcom/android/server/uri/GrantUri;

    iget v10, v10, Lcom/android/server/uri/GrantUri;->sourceUserId:I

    invoke-interface {v5, v7, v9, v10}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 1662
    const-string v9, "targetUserId"

    iget v10, v8, Lcom/android/server/uri/UriPermission$Snapshot;->targetUserId:I

    invoke-interface {v5, v7, v9, v10}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 1663
    const-string v9, "sourcePkg"

    iget-object v10, v8, Lcom/android/server/uri/UriPermission$Snapshot;->sourcePkg:Ljava/lang/String;

    invoke-interface {v5, v7, v9, v10}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInterned(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1664
    const-string v9, "targetPkg"

    iget-object v10, v8, Lcom/android/server/uri/UriPermission$Snapshot;->targetPkg:Ljava/lang/String;

    invoke-interface {v5, v7, v9, v10}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInterned(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1665
    const-string v9, "uri"

    iget-object v10, v8, Lcom/android/server/uri/UriPermission$Snapshot;->uri:Lcom/android/server/uri/GrantUri;

    iget-object v10, v10, Lcom/android/server/uri/GrantUri;->uri:Landroid/net/Uri;

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v5, v7, v9, v10}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1666
    const-string v9, "prefix"

    iget-object v10, v8, Lcom/android/server/uri/UriPermission$Snapshot;->uri:Lcom/android/server/uri/GrantUri;

    iget-boolean v10, v10, Lcom/android/server/uri/GrantUri;->prefix:Z

    invoke-static {v5, v9, v10}, Lcom/android/internal/util/XmlUtils;->writeBooleanAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Z)V

    .line 1667
    const-string v9, "modeFlags"

    iget v10, v8, Lcom/android/server/uri/UriPermission$Snapshot;->persistedModeFlags:I

    invoke-interface {v5, v7, v9, v10}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 1668
    const-string v9, "createdTime"

    iget-wide v10, v8, Lcom/android/server/uri/UriPermission$Snapshot;->persistedCreateTime:J

    invoke-interface {v5, v7, v9, v10, v11}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    .line 1669
    const-string v9, "uri-grant"

    invoke-interface {v5, v7, v9}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1670
    nop

    .end local v8    # "perm":Lcom/android/server/uri/UriPermission$Snapshot;
    goto :goto_3

    .line 1675
    .end local v5    # "out":Lcom/android/modules/utils/TypedXmlSerializer;
    :catch_0
    move-exception v5

    goto :goto_4

    .line 1671
    .restart local v5    # "out":Lcom/android/modules/utils/TypedXmlSerializer;
    :cond_3
    const-string v6, "uri-grants"

    invoke-interface {v5, v7, v6}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1672
    invoke-interface {v5}, Lcom/android/modules/utils/TypedXmlSerializer;->endDocument()V

    .line 1674
    iget-object v6, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantFile:Landroid/util/AtomicFile;

    invoke-virtual {v6, v4}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1679
    .end local v5    # "out":Lcom/android/modules/utils/TypedXmlSerializer;
    goto :goto_5

    .line 1675
    :goto_4
    nop

    .line 1676
    .local v5, "e":Ljava/io/IOException;
    if-eqz v4, :cond_4

    .line 1677
    iget-object v6, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantFile:Landroid/util/AtomicFile;

    invoke-virtual {v6, v4}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 1681
    .end local v5    # "e":Ljava/io/IOException;
    :cond_4
    :goto_5
    iget-object v5, p0, Lcom/android/server/uri/UriGrantsManagerService;->mMetricsHelper:Lcom/android/server/uri/UriMetricsHelper;

    invoke-virtual {v5, v2}, Lcom/android/server/uri/UriMetricsHelper;->reportPersistentUriFlushed(I)V

    .line 1682
    return-void

    .line 1650
    .end local v4    # "fos":Ljava/io/FileOutputStream;
    :goto_6
    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v5
.end method


# virtual methods
.method protected checkComponentPermission(Ljava/lang/String;IIZ)I
    .locals 1
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "owningUid"    # I
    .param p4, "exported"    # Z

    .line 256
    invoke-static {p1, p2, p3, p4}, Landroid/app/ActivityManager;->checkComponentPermission(Ljava/lang/String;IIZ)I

    move-result v0

    return v0
.end method

.method public checkGrantUriPermission_ignoreNonSystem(ILjava/lang/String;Landroid/net/Uri;II)I
    .locals 3
    .param p1, "callingUid"    # I
    .param p2, "targetPkg"    # Ljava/lang/String;
    .param p3, "uri"    # Landroid/net/Uri;
    .param p4, "modeFlags"    # I
    .param p5, "userId"    # I

    .line 1580
    invoke-direct {p0}, Lcom/android/server/uri/UriGrantsManagerService;->isCallerIsSystemOrPrivileged()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1581
    const/4 v0, -0x1

    return v0

    .line 1583
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1585
    .local v1, "origId":J
    :try_start_0
    invoke-direct/range {p0 .. p5}, Lcom/android/server/uri/UriGrantsManagerService;->checkGrantUriPermissionUnlocked(ILjava/lang/String;Landroid/net/Uri;II)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1588
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1585
    return v0

    .line 1588
    :catchall_0
    move-exception v0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1589
    throw v0
.end method

.method protected checkUidPermission(Ljava/lang/String;I)I
    .locals 2
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 247
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/pm/IPackageManager;->checkUidPermission(Ljava/lang/String;I)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 248
    :catch_0
    move-exception v0

    .line 249
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public clearGrantedUriPermissions(Ljava/lang/String;I)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 444
    iget-object v0, p0, Lcom/android/server/uri/UriGrantsManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    const-string v1, "android.permission.CLEAR_APP_GRANTED_URI_PERMISSIONS"

    const-string v2, "clearGrantedUriPermissions"

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerInternal;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 446
    iget-object v0, p0, Lcom/android/server/uri/UriGrantsManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 447
    const/4 v1, 0x1

    :try_start_0
    invoke-direct {p0, p1, p2, v1, v1}, Lcom/android/server/uri/UriGrantsManagerService;->removeUriPermissionsForPackageLocked(Ljava/lang/String;IZZ)V

    .line 448
    monitor-exit v0

    .line 449
    return-void

    .line 448
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getGrantedUriPermissions(Ljava/lang/String;I)Landroid/content/pm/ParceledListSlice;
    .locals 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/app/GrantedUriPermission;",
            ">;"
        }
    .end annotation

    .line 366
    iget-object v0, p0, Lcom/android/server/uri/UriGrantsManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    const-string v1, "android.permission.GET_APP_GRANTED_URI_PERMISSIONS"

    const-string v2, "getGrantedUriPermissions"

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerInternal;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 370
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Landroid/app/GrantedUriPermission;>;"
    iget-object v1, p0, Lcom/android/server/uri/UriGrantsManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 371
    :try_start_0
    iget-object v2, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantedUriPermissions:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 372
    .local v2, "size":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_3

    .line 373
    iget-object v4, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantedUriPermissions:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/ArrayMap;

    .line 374
    .local v4, "perms":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/uri/GrantUri;Lcom/android/server/uri/UriPermission;>;"
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_1
    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v6

    if-ge v5, v6, :cond_2

    .line 375
    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/uri/UriPermission;

    .line 376
    .local v6, "perm":Lcom/android/server/uri/UriPermission;
    if-eqz p1, :cond_0

    iget-object v7, v6, Lcom/android/server/uri/UriPermission;->targetPkg:Ljava/lang/String;

    invoke-virtual {p1, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    :cond_0
    goto :goto_2

    .line 383
    .end local v2    # "size":I
    .end local v3    # "i":I
    .end local v4    # "perms":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/uri/GrantUri;Lcom/android/server/uri/UriPermission;>;"
    .end local v5    # "j":I
    .end local v6    # "perm":Lcom/android/server/uri/UriPermission;
    :catchall_0
    move-exception v2

    goto :goto_3

    .line 376
    .restart local v2    # "size":I
    .restart local v3    # "i":I
    .restart local v4    # "perms":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/uri/GrantUri;Lcom/android/server/uri/UriPermission;>;"
    .restart local v5    # "j":I
    .restart local v6    # "perm":Lcom/android/server/uri/UriPermission;
    :goto_2
    iget v7, v6, Lcom/android/server/uri/UriPermission;->targetUserId:I

    if-ne v7, p2, :cond_1

    iget v7, v6, Lcom/android/server/uri/UriPermission;->persistedModeFlags:I

    if-eqz v7, :cond_1

    .line 379
    invoke-virtual {v6}, Lcom/android/server/uri/UriPermission;->buildGrantedUriPermission()Landroid/app/GrantedUriPermission;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 374
    .end local v6    # "perm":Lcom/android/server/uri/UriPermission;
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    nop

    .line 372
    .end local v4    # "perms":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/uri/GrantUri;Lcom/android/server/uri/UriPermission;>;"
    .end local v5    # "j":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    nop

    .line 383
    .end local v2    # "size":I
    .end local v3    # "i":I
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 384
    new-instance v1, Landroid/content/pm/ParceledListSlice;

    invoke-direct {v1, v0}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    return-object v1

    .line 383
    :goto_3
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method getLocalService()Lcom/android/server/uri/UriGrantsManagerInternal;
    .locals 2

    .line 210
    new-instance v0, Lcom/android/server/uri/UriGrantsManagerService$LocalService;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/uri/UriGrantsManagerService$LocalService;-><init>(Lcom/android/server/uri/UriGrantsManagerService;Lcom/android/server/uri/UriGrantsManagerService-IA;)V

    return-object v0
.end method

.method public getUriPermissions(Ljava/lang/String;ZZ)Landroid/content/pm/ParceledListSlice;
    .locals 12
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "incoming"    # Z
    .param p3, "persistedOnly"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "ZZ)",
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/content/UriPermission;",
            ">;"
        }
    .end annotation

    .line 316
    const-string v0, "getUriPermissions"

    invoke-direct {p0, v0}, Lcom/android/server/uri/UriGrantsManagerService;->enforceNotIsolatedCaller(Ljava/lang/String;)V

    .line 317
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 319
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 320
    .local v0, "callingUid":I
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 321
    .local v1, "callingUserId":I
    const-class v2, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageManagerInternal;

    .line 322
    .local v2, "pm":Landroid/content/pm/PackageManagerInternal;
    const-wide/32 v3, 0xc0000

    invoke-virtual {v2, p1, v3, v4, v1}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;JI)I

    move-result v3

    .line 324
    .local v3, "packageUid":I
    if-ne v3, v0, :cond_9

    .line 329
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v4

    .line 330
    .local v4, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/UriPermission;>;"
    iget-object v5, p0, Lcom/android/server/uri/UriGrantsManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 331
    if-eqz p2, :cond_4

    .line 332
    :try_start_0
    iget-object v6, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantedUriPermissions:Landroid/util/SparseArray;

    invoke-virtual {v6, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/ArrayMap;

    .line 334
    .local v6, "perms":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/uri/GrantUri;Lcom/android/server/uri/UriPermission;>;"
    if-nez v6, :cond_0

    .line 335
    const-string v7, "UriGrantsManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "No permission grants found for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 359
    .end local v6    # "perms":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/uri/GrantUri;Lcom/android/server/uri/UriPermission;>;"
    :catchall_0
    move-exception v6

    goto :goto_5

    .line 337
    .restart local v6    # "perms":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/uri/GrantUri;Lcom/android/server/uri/UriPermission;>;"
    :cond_0
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_0
    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v8

    if-ge v7, v8, :cond_3

    .line 338
    invoke-virtual {v6, v7}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/uri/UriPermission;

    .line 339
    .local v8, "perm":Lcom/android/server/uri/UriPermission;
    iget-object v9, v8, Lcom/android/server/uri/UriPermission;->targetPkg:Ljava/lang/String;

    invoke-virtual {p1, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    if-eqz p3, :cond_1

    iget v9, v8, Lcom/android/server/uri/UriPermission;->persistedModeFlags:I

    if-eqz v9, :cond_2

    .line 341
    :cond_1
    invoke-virtual {v8}, Lcom/android/server/uri/UriPermission;->buildPersistedPublicApiObject()Landroid/content/UriPermission;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 337
    .end local v8    # "perm":Lcom/android/server/uri/UriPermission;
    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 345
    .end local v6    # "perms":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/uri/GrantUri;Lcom/android/server/uri/UriPermission;>;"
    .end local v7    # "j":I
    :cond_3
    :goto_1
    goto :goto_4

    .line 346
    :cond_4
    iget-object v6, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantedUriPermissions:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6

    .line 347
    .local v6, "size":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_2
    if-ge v7, v6, :cond_8

    .line 348
    iget-object v8, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantedUriPermissions:Landroid/util/SparseArray;

    .line 349
    invoke-virtual {v8, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/util/ArrayMap;

    .line 350
    .local v8, "perms":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/uri/GrantUri;Lcom/android/server/uri/UriPermission;>;"
    const/4 v9, 0x0

    .local v9, "j":I
    :goto_3
    invoke-virtual {v8}, Landroid/util/ArrayMap;->size()I

    move-result v10

    if-ge v9, v10, :cond_7

    .line 351
    invoke-virtual {v8, v9}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/uri/UriPermission;

    .line 352
    .local v10, "perm":Lcom/android/server/uri/UriPermission;
    iget-object v11, v10, Lcom/android/server/uri/UriPermission;->sourcePkg:Ljava/lang/String;

    invoke-virtual {p1, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    if-eqz p3, :cond_5

    iget v11, v10, Lcom/android/server/uri/UriPermission;->persistedModeFlags:I

    if-eqz v11, :cond_6

    .line 354
    :cond_5
    invoke-virtual {v10}, Lcom/android/server/uri/UriPermission;->buildPersistedPublicApiObject()Landroid/content/UriPermission;

    move-result-object v11

    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 350
    .end local v10    # "perm":Lcom/android/server/uri/UriPermission;
    :cond_6
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    :cond_7
    nop

    .line 347
    .end local v8    # "perms":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/uri/GrantUri;Lcom/android/server/uri/UriPermission;>;"
    .end local v9    # "j":I
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 359
    .end local v6    # "size":I
    .end local v7    # "i":I
    :cond_8
    :goto_4
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 360
    new-instance v5, Landroid/content/pm/ParceledListSlice;

    invoke-direct {v5, v4}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    return-object v5

    .line 359
    :goto_5
    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v6

    .line 325
    .end local v4    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/UriPermission;>;"
    :cond_9
    new-instance v4, Ljava/lang/SecurityException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Package "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " does not belong to calling UID "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public grantUriPermissionFromOwner(Landroid/os/IBinder;ILjava/lang/String;Landroid/net/Uri;III)V
    .locals 0
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "fromUid"    # I
    .param p3, "targetPkg"    # Ljava/lang/String;
    .param p4, "uri"    # Landroid/net/Uri;
    .param p5, "modeFlags"    # I
    .param p6, "sourceUserId"    # I
    .param p7, "targetUserId"    # I

    .line 277
    invoke-direct/range {p0 .. p7}, Lcom/android/server/uri/UriGrantsManagerService;->grantUriPermissionFromOwnerUnlocked(Landroid/os/IBinder;ILjava/lang/String;Landroid/net/Uri;III)V

    .line 279
    return-void
.end method

.method public providePersistentUriGrants()Ljava/util/ArrayList;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/uri/UriPermission;",
            ">;"
        }
    .end annotation

    .line 1605
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1607
    .local v0, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/uri/UriPermission;>;"
    iget-object v1, p0, Lcom/android/server/uri/UriGrantsManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1608
    :try_start_0
    iget-object v2, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantedUriPermissions:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 1609
    .local v2, "size":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_2

    .line 1610
    iget-object v4, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantedUriPermissions:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/ArrayMap;

    .line 1612
    .local v4, "perms":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/uri/GrantUri;Lcom/android/server/uri/UriPermission;>;"
    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v5

    .line 1613
    .local v5, "permissionsForPackageSize":I
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_1
    if-ge v6, v5, :cond_1

    .line 1614
    invoke-virtual {v4, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/uri/UriPermission;

    .line 1616
    .local v7, "permission":Lcom/android/server/uri/UriPermission;
    iget v8, v7, Lcom/android/server/uri/UriPermission;->persistedModeFlags:I

    if-eqz v8, :cond_0

    .line 1617
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1621
    .end local v2    # "size":I
    .end local v3    # "i":I
    .end local v4    # "perms":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/uri/GrantUri;Lcom/android/server/uri/UriPermission;>;"
    .end local v5    # "permissionsForPackageSize":I
    .end local v6    # "j":I
    .end local v7    # "permission":Lcom/android/server/uri/UriPermission;
    :catchall_0
    move-exception v2

    goto :goto_3

    .line 1613
    .restart local v2    # "size":I
    .restart local v3    # "i":I
    .restart local v4    # "perms":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/uri/GrantUri;Lcom/android/server/uri/UriPermission;>;"
    .restart local v5    # "permissionsForPackageSize":I
    .restart local v6    # "j":I
    :cond_0
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_1
    nop

    .line 1609
    .end local v4    # "perms":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/uri/GrantUri;Lcom/android/server/uri/UriPermission;>;"
    .end local v5    # "permissionsForPackageSize":I
    .end local v6    # "j":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    nop

    .line 1621
    .end local v2    # "size":I
    .end local v3    # "i":I
    monitor-exit v1

    .line 1623
    return-object v0

    .line 1621
    :goto_3
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public releasePersistableUriPermission(Landroid/net/Uri;ILjava/lang/String;I)V
    .locals 8
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "modeFlags"    # I
    .param p3, "toPackage"    # Ljava/lang/String;
    .param p4, "userId"    # I

    .line 462
    if-eqz p3, :cond_0

    .line 463
    iget-object v0, p0, Lcom/android/server/uri/UriGrantsManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    const-string v1, "android.permission.FORCE_PERSISTABLE_URI_PERMISSIONS"

    const-string v2, "releasePersistableUriPermission"

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerInternal;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 465
    iget-object v0, p0, Lcom/android/server/uri/UriGrantsManagerService;->mPmInternal:Landroid/content/pm/PackageManagerInternal;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, p3, v1, v2, p4}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;JI)I

    move-result v0

    .local v0, "uid":I
    goto :goto_0

    .line 467
    .end local v0    # "uid":I
    :cond_0
    const-string v0, "releasePersistableUriPermission"

    invoke-direct {p0, v0}, Lcom/android/server/uri/UriGrantsManagerService;->enforceNotIsolatedCaller(Ljava/lang/String;)V

    .line 468
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 471
    .restart local v0    # "uid":I
    :goto_0
    const/4 v1, 0x3

    invoke-static {p2, v1}, Lcom/android/internal/util/Preconditions;->checkFlagsArgument(II)I

    .line 474
    iget-object v1, p0, Lcom/android/server/uri/UriGrantsManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 475
    const/4 v2, 0x0

    .line 477
    .local v2, "persistChanged":Z
    :try_start_0
    new-instance v3, Lcom/android/server/uri/GrantUri;

    const/4 v4, 0x0

    invoke-direct {v3, p4, p1, v4}, Lcom/android/server/uri/GrantUri;-><init>(ILandroid/net/Uri;I)V

    invoke-direct {p0, v0, v3}, Lcom/android/server/uri/UriGrantsManagerService;->findUriPermissionLocked(ILcom/android/server/uri/GrantUri;)Lcom/android/server/uri/UriPermission;

    move-result-object v3

    .line 479
    .local v3, "exactPerm":Lcom/android/server/uri/UriPermission;
    new-instance v4, Lcom/android/server/uri/GrantUri;

    const/16 v5, 0x80

    invoke-direct {v4, p4, p1, v5}, Lcom/android/server/uri/GrantUri;-><init>(ILandroid/net/Uri;I)V

    invoke-direct {p0, v0, v4}, Lcom/android/server/uri/UriGrantsManagerService;->findUriPermissionLocked(ILcom/android/server/uri/GrantUri;)Lcom/android/server/uri/UriPermission;

    move-result-object v4

    .line 481
    .local v4, "prefixPerm":Lcom/android/server/uri/UriPermission;
    if-nez v3, :cond_1

    if-nez v4, :cond_1

    if-eqz p3, :cond_2

    :cond_1
    goto :goto_1

    .line 482
    :cond_2
    new-instance v5, Ljava/lang/SecurityException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "No permission grants found for UID "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " and Uri "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 483
    invoke-virtual {p1}, Landroid/net/Uri;->toSafeString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local v0    # "uid":I
    .end local p0    # "this":Lcom/android/server/uri/UriGrantsManagerService;
    .end local p1    # "uri":Landroid/net/Uri;
    .end local p2    # "modeFlags":I
    .end local p3    # "toPackage":Ljava/lang/String;
    .end local p4    # "userId":I
    throw v5

    .line 498
    .end local v2    # "persistChanged":Z
    .end local v3    # "exactPerm":Lcom/android/server/uri/UriPermission;
    .end local v4    # "prefixPerm":Lcom/android/server/uri/UriPermission;
    .restart local v0    # "uid":I
    .restart local p0    # "this":Lcom/android/server/uri/UriGrantsManagerService;
    .restart local p1    # "uri":Landroid/net/Uri;
    .restart local p2    # "modeFlags":I
    .restart local p3    # "toPackage":Ljava/lang/String;
    .restart local p4    # "userId":I
    :catchall_0
    move-exception v2

    goto :goto_2

    .line 486
    .restart local v2    # "persistChanged":Z
    .restart local v3    # "exactPerm":Lcom/android/server/uri/UriPermission;
    .restart local v4    # "prefixPerm":Lcom/android/server/uri/UriPermission;
    :goto_1
    if-eqz v3, :cond_3

    .line 487
    invoke-virtual {v3, p2}, Lcom/android/server/uri/UriPermission;->releasePersistableModes(I)Z

    move-result v5

    or-int/2addr v2, v5

    .line 488
    invoke-direct {p0, v3}, Lcom/android/server/uri/UriGrantsManagerService;->removeUriPermissionIfNeededLocked(Lcom/android/server/uri/UriPermission;)V

    .line 490
    :cond_3
    if-eqz v4, :cond_4

    .line 491
    invoke-virtual {v4, p2}, Lcom/android/server/uri/UriPermission;->releasePersistableModes(I)Z

    move-result v5

    or-int/2addr v2, v5

    .line 492
    invoke-direct {p0, v4}, Lcom/android/server/uri/UriGrantsManagerService;->removeUriPermissionIfNeededLocked(Lcom/android/server/uri/UriPermission;)V

    .line 495
    :cond_4
    if-eqz v2, :cond_5

    .line 496
    invoke-direct {p0}, Lcom/android/server/uri/UriGrantsManagerService;->schedulePersistUriGrants()V

    .line 498
    .end local v2    # "persistChanged":Z
    .end local v3    # "exactPerm":Lcom/android/server/uri/UriPermission;
    .end local v4    # "prefixPerm":Lcom/android/server/uri/UriPermission;
    :cond_5
    monitor-exit v1

    .line 499
    return-void

    .line 498
    :goto_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public takePersistableUriPermission(Landroid/net/Uri;ILjava/lang/String;I)V
    .locals 10
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "modeFlags"    # I
    .param p3, "toPackage"    # Ljava/lang/String;
    .param p4, "userId"    # I

    .line 397
    if-eqz p3, :cond_0

    .line 398
    iget-object v0, p0, Lcom/android/server/uri/UriGrantsManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    const-string v1, "android.permission.FORCE_PERSISTABLE_URI_PERMISSIONS"

    const-string v2, "takePersistableUriPermission"

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerInternal;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 400
    iget-object v0, p0, Lcom/android/server/uri/UriGrantsManagerService;->mPmInternal:Landroid/content/pm/PackageManagerInternal;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, p3, v1, v2, p4}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;JI)I

    move-result v0

    .local v0, "uid":I
    goto :goto_0

    .line 402
    .end local v0    # "uid":I
    :cond_0
    const-string v0, "takePersistableUriPermission"

    invoke-direct {p0, v0}, Lcom/android/server/uri/UriGrantsManagerService;->enforceNotIsolatedCaller(Ljava/lang/String;)V

    .line 403
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 406
    .restart local v0    # "uid":I
    :goto_0
    const/4 v1, 0x3

    invoke-static {p2, v1}, Lcom/android/internal/util/Preconditions;->checkFlagsArgument(II)I

    .line 409
    iget-object v1, p0, Lcom/android/server/uri/UriGrantsManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 410
    const/4 v2, 0x0

    .line 412
    .local v2, "persistChanged":Z
    :try_start_0
    new-instance v3, Lcom/android/server/uri/GrantUri;

    const/4 v4, 0x0

    invoke-direct {v3, p4, p1, v4}, Lcom/android/server/uri/GrantUri;-><init>(ILandroid/net/Uri;I)V

    invoke-direct {p0, v0, v3}, Lcom/android/server/uri/UriGrantsManagerService;->findUriPermissionLocked(ILcom/android/server/uri/GrantUri;)Lcom/android/server/uri/UriPermission;

    move-result-object v3

    .line 414
    .local v3, "exactPerm":Lcom/android/server/uri/UriPermission;
    new-instance v5, Lcom/android/server/uri/GrantUri;

    const/16 v6, 0x80

    invoke-direct {v5, p4, p1, v6}, Lcom/android/server/uri/GrantUri;-><init>(ILandroid/net/Uri;I)V

    invoke-direct {p0, v0, v5}, Lcom/android/server/uri/UriGrantsManagerService;->findUriPermissionLocked(ILcom/android/server/uri/GrantUri;)Lcom/android/server/uri/UriPermission;

    move-result-object v5

    .line 417
    .local v5, "prefixPerm":Lcom/android/server/uri/UriPermission;
    const/4 v6, 0x1

    if-eqz v3, :cond_1

    iget v7, v3, Lcom/android/server/uri/UriPermission;->persistableModeFlags:I

    and-int/2addr v7, p2

    if-ne v7, p2, :cond_1

    move v7, v6

    goto :goto_1

    .line 439
    .end local v2    # "persistChanged":Z
    .end local v3    # "exactPerm":Lcom/android/server/uri/UriPermission;
    .end local v5    # "prefixPerm":Lcom/android/server/uri/UriPermission;
    :catchall_0
    move-exception v2

    goto :goto_3

    .line 417
    .restart local v2    # "persistChanged":Z
    .restart local v3    # "exactPerm":Lcom/android/server/uri/UriPermission;
    .restart local v5    # "prefixPerm":Lcom/android/server/uri/UriPermission;
    :cond_1
    move v7, v4

    :goto_1
    nop

    .line 419
    .local v7, "exactValid":Z
    if-eqz v5, :cond_2

    iget v8, v5, Lcom/android/server/uri/UriPermission;->persistableModeFlags:I

    and-int/2addr v8, p2

    if-ne v8, p2, :cond_2

    move v4, v6

    :cond_2
    nop

    .line 422
    .local v4, "prefixValid":Z
    if-nez v7, :cond_3

    if-eqz v4, :cond_4

    :cond_3
    goto :goto_2

    .line 423
    :cond_4
    new-instance v6, Ljava/lang/SecurityException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "No persistable permission grants found for UID "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " and Uri "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 424
    invoke-virtual {p1}, Landroid/net/Uri;->toSafeString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v8}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local v0    # "uid":I
    .end local p0    # "this":Lcom/android/server/uri/UriGrantsManagerService;
    .end local p1    # "uri":Landroid/net/Uri;
    .end local p2    # "modeFlags":I
    .end local p3    # "toPackage":Ljava/lang/String;
    .end local p4    # "userId":I
    throw v6

    .line 427
    .restart local v0    # "uid":I
    .restart local p0    # "this":Lcom/android/server/uri/UriGrantsManagerService;
    .restart local p1    # "uri":Landroid/net/Uri;
    .restart local p2    # "modeFlags":I
    .restart local p3    # "toPackage":Ljava/lang/String;
    .restart local p4    # "userId":I
    :goto_2
    if-eqz v7, :cond_5

    .line 428
    invoke-virtual {v3, p2}, Lcom/android/server/uri/UriPermission;->takePersistableModes(I)Z

    move-result v6

    or-int/2addr v2, v6

    .line 430
    :cond_5
    if-eqz v4, :cond_6

    .line 431
    invoke-virtual {v5, p2}, Lcom/android/server/uri/UriPermission;->takePersistableModes(I)Z

    move-result v6

    or-int/2addr v2, v6

    .line 434
    :cond_6
    invoke-direct {p0, v0}, Lcom/android/server/uri/UriGrantsManagerService;->maybePrunePersistedUriGrantsLocked(I)Z

    move-result v6

    or-int/2addr v2, v6

    .line 436
    if-eqz v2, :cond_7

    .line 437
    invoke-direct {p0}, Lcom/android/server/uri/UriGrantsManagerService;->schedulePersistUriGrants()V

    .line 439
    .end local v2    # "persistChanged":Z
    .end local v3    # "exactPerm":Lcom/android/server/uri/UriPermission;
    .end local v4    # "prefixValid":Z
    .end local v5    # "prefixPerm":Lcom/android/server/uri/UriPermission;
    .end local v7    # "exactValid":Z
    :cond_7
    monitor-exit v1

    .line 440
    return-void

    .line 439
    :goto_3
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method
