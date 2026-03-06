.class public Lcom/android/server/pm/permission/PermissionManagerServiceTestingShim;
.super Ljava/lang/Object;
.source "PermissionManagerServiceTestingShim.java"

# interfaces
.implements Lcom/android/server/pm/permission/PermissionManagerServiceInterface;


# instance fields
.field private mNewImplementation:Lcom/android/server/pm/permission/PermissionManagerServiceInterface;

.field private mOldImplementation:Lcom/android/server/pm/permission/PermissionManagerServiceInterface;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/permission/PermissionManagerServiceInterface;Lcom/android/server/pm/permission/PermissionManagerServiceInterface;)V
    .locals 0
    .param p1, "oldImpl"    # Lcom/android/server/pm/permission/PermissionManagerServiceInterface;
    .param p2, "newImpl"    # Lcom/android/server/pm/permission/PermissionManagerServiceInterface;

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/android/server/pm/permission/PermissionManagerServiceTestingShim;->mOldImplementation:Lcom/android/server/pm/permission/PermissionManagerServiceInterface;

    .line 52
    iput-object p2, p0, Lcom/android/server/pm/permission/PermissionManagerServiceTestingShim;->mNewImplementation:Lcom/android/server/pm/permission/PermissionManagerServiceInterface;

    .line 53
    return-void
.end method

.method private signalImplDifference(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .line 57
    return-void
.end method


# virtual methods
.method public addAllowlistedRestrictedPermission(Ljava/lang/String;Ljava/lang/String;II)Z
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "permName"    # Ljava/lang/String;
    .param p3, "flags"    # I
    .param p4, "userId"    # I

    .line 199
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceTestingShim;->mOldImplementation:Lcom/android/server/pm/permission/PermissionManagerServiceInterface;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/server/pm/permission/PermissionManagerServiceInterface;->addAllowlistedRestrictedPermission(Ljava/lang/String;Ljava/lang/String;II)Z

    move-result v0

    .line 202
    .local v0, "oldVal":Z
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerServiceTestingShim;->mNewImplementation:Lcom/android/server/pm/permission/PermissionManagerServiceInterface;

    invoke-interface {v1, p1, p2, p3, p4}, Lcom/android/server/pm/permission/PermissionManagerServiceInterface;->addAllowlistedRestrictedPermission(Ljava/lang/String;Ljava/lang/String;II)Z

    move-result v1

    .line 205
    .local v1, "newVal":Z
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 206
    const-string v2, "addAllowlistedRestrictedPermission"

    invoke-direct {p0, v2}, Lcom/android/server/pm/permission/PermissionManagerServiceTestingShim;->signalImplDifference(Ljava/lang/String;)V

    .line 208
    :cond_0
    return v1
.end method

.method public addOnPermissionsChangeListener(Landroid/permission/IOnPermissionsChangeListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/permission/IOnPermissionsChangeListener;

    .line 186
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceTestingShim;->mOldImplementation:Lcom/android/server/pm/permission/PermissionManagerServiceInterface;

    invoke-interface {v0, p1}, Lcom/android/server/pm/permission/PermissionManagerServiceInterface;->addOnPermissionsChangeListener(Landroid/permission/IOnPermissionsChangeListener;)V

    .line 187
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceTestingShim;->mNewImplementation:Lcom/android/server/pm/permission/PermissionManagerServiceInterface;

    invoke-interface {v0, p1}, Lcom/android/server/pm/permission/PermissionManagerServiceInterface;->addOnPermissionsChangeListener(Landroid/permission/IOnPermissionsChangeListener;)V

    .line 188
    return-void
.end method

.method public addPermission(Landroid/content/pm/PermissionInfo;Z)Z
    .locals 4
    .param p1, "info"    # Landroid/content/pm/PermissionInfo;
    .param p2, "async"    # Z

    .line 141
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceTestingShim;->mOldImplementation:Lcom/android/server/pm/permission/PermissionManagerServiceInterface;

    invoke-interface {v0, p1, p2}, Lcom/android/server/pm/permission/PermissionManagerServiceInterface;->addPermission(Landroid/content/pm/PermissionInfo;Z)Z

    move-result v0

    .line 142
    .local v0, "oldVal":Z
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerServiceTestingShim;->mNewImplementation:Lcom/android/server/pm/permission/PermissionManagerServiceInterface;

    invoke-interface {v1, p1, p2}, Lcom/android/server/pm/permission/PermissionManagerServiceInterface;->addPermission(Landroid/content/pm/PermissionInfo;Z)Z

    move-result v1

    .line 144
    .local v1, "newVal":Z
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 145
    const-string v2, "addPermission"

    invoke-direct {p0, v2}, Lcom/android/server/pm/permission/PermissionManagerServiceTestingShim;->signalImplDifference(Ljava/lang/String;)V

    .line 147
    :cond_0
    return v1
.end method

.method public backupRuntimePermissions(I)[B
    .locals 3
    .param p1, "userId"    # I

    .line 63
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceTestingShim;->mOldImplementation:Lcom/android/server/pm/permission/PermissionManagerServiceInterface;

    invoke-interface {v0, p1}, Landroid/permission/PermissionManagerInternal;->backupRuntimePermissions(I)[B

    move-result-object v0

    .line 64
    .local v0, "oldVal":[B
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerServiceTestingShim;->mNewImplementation:Lcom/android/server/pm/permission/PermissionManagerServiceInterface;

    invoke-interface {v1, p1}, Landroid/permission/PermissionManagerInternal;->backupRuntimePermissions(I)[B

    move-result-object v1

    .line 65
    .local v1, "newVal":[B
    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-nez v2, :cond_0

    .line 66
    const-string v2, "backupRuntimePermissions"

    invoke-direct {p0, v2}, Lcom/android/server/pm/permission/PermissionManagerServiceTestingShim;->signalImplDifference(Ljava/lang/String;)V

    .line 69
    :cond_0
    return-object v1
.end method

.method public checkPermission(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I
    .locals 4
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "permName"    # Ljava/lang/String;
    .param p3, "deviceId"    # Ljava/lang/String;
    .param p4, "userId"    # I

    .line 301
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceTestingShim;->mOldImplementation:Lcom/android/server/pm/permission/PermissionManagerServiceInterface;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/server/pm/permission/PermissionManagerServiceInterface;->checkPermission(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    .line 302
    .local v0, "oldVal":I
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerServiceTestingShim;->mNewImplementation:Lcom/android/server/pm/permission/PermissionManagerServiceInterface;

    invoke-interface {v1, p1, p2, p3, p4}, Lcom/android/server/pm/permission/PermissionManagerServiceInterface;->checkPermission(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    .line 304
    .local v1, "newVal":I
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 305
    const-string v2, "checkPermission"

    invoke-direct {p0, v2}, Lcom/android/server/pm/permission/PermissionManagerServiceTestingShim;->signalImplDifference(Ljava/lang/String;)V

    .line 307
    :cond_0
    return v1
.end method

.method public checkUidPermission(ILjava/lang/String;Ljava/lang/String;)I
    .locals 4
    .param p1, "uid"    # I
    .param p2, "permName"    # Ljava/lang/String;
    .param p3, "deviceId"    # Ljava/lang/String;

    .line 312
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceTestingShim;->mOldImplementation:Lcom/android/server/pm/permission/PermissionManagerServiceInterface;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/server/pm/permission/PermissionManagerServiceInterface;->checkUidPermission(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 313
    .local v0, "oldVal":I
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerServiceTestingShim;->mNewImplementation:Lcom/android/server/pm/permission/PermissionManagerServiceInterface;

    invoke-interface {v1, p1, p2, p3}, Lcom/android/server/pm/permission/PermissionManagerServiceInterface;->checkUidPermission(ILjava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 315
    .local v1, "newVal":I
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 316
    const-string v2, "checkUidPermission"

    invoke-direct {p0, v2}, Lcom/android/server/pm/permission/PermissionManagerServiceTestingShim;->signalImplDifference(Ljava/lang/String;)V

    .line 318
    :cond_0
    return v1
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 87
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceTestingShim;->mOldImplementation:Lcom/android/server/pm/permission/PermissionManagerServiceInterface;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/server/pm/permission/PermissionManagerServiceInterface;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 88
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceTestingShim;->mNewImplementation:Lcom/android/server/pm/permission/PermissionManagerServiceInterface;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/server/pm/permission/PermissionManagerServiceInterface;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 89
    return-void
.end method

.method public getAllAppOpPermissionPackages()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 336
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceTestingShim;->mOldImplementation:Lcom/android/server/pm/permission/PermissionManagerServiceInterface;

    invoke-interface {v0}, Lcom/android/server/pm/permission/PermissionManagerServiceInterface;->getAllAppOpPermissionPackages()Ljava/util/Map;

    move-result-object v0

    .line 337
    .local v0, "oldVal":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerServiceTestingShim;->mNewImplementation:Lcom/android/server/pm/permission/PermissionManagerServiceInterface;

    invoke-interface {v1}, Lcom/android/server/pm/permission/PermissionManagerServiceInterface;->getAllAppOpPermissionPackages()Ljava/util/Map;

    move-result-object v1

    .line 339
    .local v1, "newVal":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 340
    const-string v2, "getAllAppOpPermissionPackages"

    invoke-direct {p0, v2}, Lcom/android/server/pm/permission/PermissionManagerServiceTestingShim;->signalImplDifference(Ljava/lang/String;)V

    .line 342
    :cond_0
    return-object v1
.end method

.method public getAllPermissionGroups(I)Ljava/util/List;
    .locals 3
    .param p1, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/content/pm/PermissionGroupInfo;",
            ">;"
        }
    .end annotation

    .line 93
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceTestingShim;->mOldImplementation:Lcom/android/server/pm/permission/PermissionManagerServiceInterface;

    invoke-interface {v0, p1}, Lcom/android/server/pm/permission/PermissionManagerServiceInterface;->getAllPermissionGroups(I)Ljava/util/List;

    move-result-object v0

    .line 94
    .local v0, "oldVal":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PermissionGroupInfo;>;"
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerServiceTestingShim;->mNewImplementation:Lcom/android/server/pm/permission/PermissionManagerServiceInterface;

    invoke-interface {v1, p1}, Lcom/android/server/pm/permission/PermissionManagerServiceInterface;->getAllPermissionGroups(I)Ljava/util/List;

    move-result-object v1

    .line 96
    .local v1, "newVal":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PermissionGroupInfo;>;"
    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 97
    const-string v2, "getAllPermissionGroups"

    invoke-direct {p0, v2}, Lcom/android/server/pm/permission/PermissionManagerServiceTestingShim;->signalImplDifference(Ljava/lang/String;)V

    .line 99
    :cond_0
    return-object v1
.end method

.method public getAllPermissionStates(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/Map;
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "deviceId"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/permission/PermissionManager$PermissionState;",
            ">;"
        }
    .end annotation

    .line 331
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceTestingShim;->mNewImplementation:Lcom/android/server/pm/permission/PermissionManagerServiceInterface;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/server/pm/permission/PermissionManagerServiceInterface;->getAllPermissionStates(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getAllPermissionsWithProtection(I)Ljava/util/List;
    .locals 3
    .param p1, "protection"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/content/pm/PermissionInfo;",
            ">;"
        }
    .end annotation

    .line 443
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceTestingShim;->mOldImplementation:Lcom/android/server/pm/permission/PermissionManagerServiceInterface;

    invoke-interface {v0, p1}, Lcom/android/server/pm/permission/PermissionManagerServiceInterface;->getAllPermissionsWithProtection(I)Ljava/util/List;

    move-result-object v0

    .line 445
    .local v0, "oldVal":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PermissionInfo;>;"
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerServiceTestingShim;->mNewImplementation:Lcom/android/server/pm/permission/PermissionManagerServiceInterface;

    invoke-interface {v1, p1}, Lcom/android/server/pm/permission/PermissionManagerServiceInterface;->getAllPermissionsWithProtection(I)Ljava/util/List;

    move-result-object v1

    .line 448
    .local v1, "newVal":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PermissionInfo;>;"
    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 449
    const-string v2, "getAllPermissionsWithProtection"

    invoke-direct {p0, v2}, Lcom/android/server/pm/permission/PermissionManagerServiceTestingShim;->signalImplDifference(Ljava/lang/String;)V

    .line 451
    :cond_0
    return-object v1
.end method

.method public getAllPermissionsWithProtectionFlags(I)Ljava/util/List;
    .locals 3
    .param p1, "protectionFlags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/content/pm/PermissionInfo;",
            ">;"
        }
    .end annotation

    .line 457
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceTestingShim;->mOldImplementation:Lcom/android/server/pm/permission/PermissionManagerServiceInterface;

    .line 458
    invoke-interface {v0, p1}, Lcom/android/server/pm/permission/PermissionManagerServiceInterface;->getAllPermissionsWithProtectionFlags(I)Ljava/util/List;

    move-result-object v0

    .line 459
    .local v0, "oldVal":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PermissionInfo;>;"
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerServiceTestingShim;->mNewImplementation:Lcom/android/server/pm/permission/PermissionManagerServiceInterface;

    invoke-interface {v1, p1}, Lcom/android/server/pm/permission/PermissionManagerServiceInterface;->getAllPermissionsWithProtectionFlags(I)Ljava/util/List;

    move-result-object v1

    .line 462
    .local v1, "newVal":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PermissionInfo;>;"
    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 463
    const-string v2, "getAllPermissionsWithProtectionFlags"

    invoke-direct {p0, v2}, Lcom/android/server/pm/permission/PermissionManagerServiceTestingShim;->signalImplDifference(Ljava/lang/String;)V

    .line 465
    :cond_0
    return-object v1
.end method

.method public getAllowlistedRestrictedPermissions(Ljava/lang/String;II)Ljava/util/List;
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "flags"    # I
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 214
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceTestingShim;->mOldImplementation:Lcom/android/server/pm/permission/PermissionManagerServiceInterface;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/server/pm/permission/PermissionManagerServiceInterface;->getAllowlistedRestrictedPermissions(Ljava/lang/String;II)Ljava/util/List;

    move-result-object v0

    .line 216
    .local v0, "oldVal":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerServiceTestingShim;->mNewImplementation:Lcom/android/server/pm/permission/PermissionManagerServiceInterface;

    invoke-interface {v1, p1, p2, p3}, Lcom/android/server/pm/permission/PermissionManagerServiceInterface;->getAllowlistedRestrictedPermissions(Ljava/lang/String;II)Ljava/util/List;

    move-result-object v1

    .line 219
    .local v1, "newVal":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 220
    const-string v2, "getAllowlistedRestrictedPermissions"

    invoke-direct {p0, v2}, Lcom/android/server/pm/permission/PermissionManagerServiceTestingShim;->signalImplDifference(Ljava/lang/String;)V

    .line 222
    :cond_0
    return-object v1
.end method

.method public getAppOpPermissionPackages(Ljava/lang/String;)[Ljava/lang/String;
    .locals 3
    .param p1, "permissionName"    # Ljava/lang/String;

    .line 419
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceTestingShim;->mOldImplementation:Lcom/android/server/pm/permission/PermissionManagerServiceInterface;

    invoke-interface {v0, p1}, Lcom/android/server/pm/permission/PermissionManagerServiceInterface;->getAppOpPermissionPackages(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 420
    .local v0, "oldVal":[Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerServiceTestingShim;->mNewImplementation:Lcom/android/server/pm/permission/PermissionManagerServiceInterface;

    invoke-interface {v1, p1}, Lcom/android/server/pm/permission/PermissionManagerServiceInterface;->getAppOpPermissionPackages(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 422
    .local v1, "newVal":[Ljava/lang/String;
    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 423
    const-string v2, "getAppOpPermissionPackages"

    invoke-direct {p0, v2}, Lcom/android/server/pm/permission/PermissionManagerServiceTestingShim;->signalImplDifference(Ljava/lang/String;)V

    .line 425
    :cond_0
    return-object v1
.end method

.method public getDefaultPermissionGrantFingerprint(I)Ljava/lang/String;
    .locals 4
    .param p1, "userId"    # I

    .line 509
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceTestingShim;->mOldImplementation:Lcom/android/server/pm/permission/PermissionManagerServiceInterface;

    invoke-interface {v0, p1}, Lcom/android/server/pm/permission/PermissionManagerServiceInterface;->getDefaultPermissionGrantFingerprint(I)Ljava/lang/String;

    move-result-object v0

    .line 510
    .local v0, "oldVal":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerServiceTestingShim;->mNewImplementation:Lcom/android/server/pm/permission/PermissionManagerServiceInterface;

    invoke-interface {v1, p1}, Lcom/android/server/pm/permission/PermissionManagerServiceInterface;->getDefaultPermissionGrantFingerprint(I)Ljava/lang/String;

    move-result-object v1

    .line 512
    .local v1, "newVal":Ljava/lang/String;
    sget-object v2, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    sget-object v3, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    .line 513
    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eq v2, v3, :cond_0

    .line 514
    const-string v2, "getDefaultPermissionGrantFingerprint"

    invoke-direct {p0, v2}, Lcom/android/server/pm/permission/PermissionManagerServiceTestingShim;->signalImplDifference(Ljava/lang/String;)V

    .line 516
    :cond_0
    return-object v1
.end method

.method public getGidsForUid(I)[I
    .locals 3
    .param p1, "uid"    # I

    .line 541
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceTestingShim;->mOldImplementation:Lcom/android/server/pm/permission/PermissionManagerServiceInterface;

    invoke-interface {v0, p1}, Lcom/android/server/pm/permission/PermissionManagerServiceInterface;->getGidsForUid(I)[I

    move-result-object v0

    .line 542
    .local v0, "oldVal":[I
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerServiceTestingShim;->mNewImplementation:Lcom/android/server/pm/permission/PermissionManagerServiceInterface;

    invoke-interface {v1, p1}, Lcom/android/server/pm/permission/PermissionManagerServiceInterface;->getGidsForUid(I)[I

    move-result-object v1

    .line 544
    .local v1, "newVal":[I
    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 545
    const-string v2, "getGidsForUid"

    invoke-direct {p0, v2}, Lcom/android/server/pm/permission/PermissionManagerServiceTestingShim;->signalImplDifference(Ljava/lang/String;)V

    .line 547
    :cond_0
    return-object v1
.end method

.method public getGrantedPermissions(Ljava/lang/String;I)Ljava/util/Set;
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 395
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceTestingShim;->mOldImplementation:Lcom/android/server/pm/permission/PermissionManagerServiceInterface;

    invoke-interface {v0, p1, p2}, Lcom/android/server/pm/permission/PermissionManagerServiceInterface;->getGrantedPermissions(Ljava/lang/String;I)Ljava/util/Set;

    move-result-object v0

    .line 396
    .local v0, "oldVal":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerServiceTestingShim;->mNewImplementation:Lcom/android/server/pm/permission/PermissionManagerServiceInterface;

    invoke-interface {v1, p1, p2}, Lcom/android/server/pm/permission/PermissionManagerServiceInterface;->getGrantedPermissions(Ljava/lang/String;I)Ljava/util/Set;

    move-result-object v1

    .line 398
    .local v1, "newVal":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 399
    const-string v2, "getGrantedPermissions"

    invoke-direct {p0, v2}, Lcom/android/server/pm/permission/PermissionManagerServiceTestingShim;->signalImplDifference(Ljava/lang/String;)V

    .line 401
    :cond_0
    return-object v1
.end method

.method public getInstalledPermissions(Ljava/lang/String;)Ljava/util/Set;
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 383
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceTestingShim;->mOldImplementation:Lcom/android/server/pm/permission/PermissionManagerServiceInterface;

    invoke-interface {v0, p1}, Lcom/android/server/pm/permission/PermissionManagerServiceInterface;->getInstalledPermissions(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    .line 384
    .local v0, "oldVal":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerServiceTestingShim;->mNewImplementation:Lcom/android/server/pm/permission/PermissionManagerServiceInterface;

    invoke-interface {v1, p1}, Lcom/android/server/pm/permission/PermissionManagerServiceInterface;->getInstalledPermissions(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v1

    .line 386
    .local v1, "newVal":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 387
    const-string v2, "getInstalledPermissions"

    invoke-direct {p0, v2}, Lcom/android/server/pm/permission/PermissionManagerServiceTestingShim;->signalImplDifference(Ljava/lang/String;)V

    .line 389
    :cond_0
    return-object v1
.end method

.method public getLegacyPermissionState(I)Lcom/android/server/pm/permission/LegacyPermissionState;
    .locals 3
    .param p1, "appId"    # I

    .line 483
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceTestingShim;->mOldImplementation:Lcom/android/server/pm/permission/PermissionManagerServiceInterface;

    invoke-interface {v0, p1}, Lcom/android/server/pm/permission/PermissionManagerServiceInterface;->getLegacyPermissionState(I)Lcom/android/server/pm/permission/LegacyPermissionState;

    move-result-object v0

    .line 484
    .local v0, "oldVal":Lcom/android/server/pm/permission/LegacyPermissionState;
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerServiceTestingShim;->mNewImplementation:Lcom/android/server/pm/permission/PermissionManagerServiceInterface;

    invoke-interface {v1, p1}, Lcom/android/server/pm/permission/PermissionManagerServiceInterface;->getLegacyPermissionState(I)Lcom/android/server/pm/permission/LegacyPermissionState;

    move-result-object v1

    .line 486
    .local v1, "newVal":Lcom/android/server/pm/permission/LegacyPermissionState;
    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 487
    const-string v2, "getLegacyPermissionState"

    invoke-direct {p0, v2}, Lcom/android/server/pm/permission/PermissionManagerServiceTestingShim;->signalImplDifference(Ljava/lang/String;)V

    .line 489
    :cond_0
    return-object v1
.end method

.method public getLegacyPermissions()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/server/pm/permission/LegacyPermission;",
            ">;"
        }
    .end annotation

    .line 471
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceTestingShim;->mOldImplementation:Lcom/android/server/pm/permission/PermissionManagerServiceInterface;

    invoke-interface {v0}, Lcom/android/server/pm/permission/PermissionManagerServiceInterface;->getLegacyPermissions()Ljava/util/List;

    move-result-object v0

    .line 472
    .local v0, "oldVal":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/permission/LegacyPermission;>;"
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerServiceTestingShim;->mNewImplementation:Lcom/android/server/pm/permission/PermissionManagerServiceInterface;

    invoke-interface {v1}, Lcom/android/server/pm/permission/PermissionManagerServiceInterface;->getLegacyPermissions()Ljava/util/List;

    move-result-object v1

    .line 474
    .local v1, "newVal":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/permission/LegacyPermission;>;"
    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 475
    const-string v2, "getLegacyPermissions"

    invoke-direct {p0, v2}, Lcom/android/server/pm/permission/PermissionManagerServiceTestingShim;->signalImplDifference(Ljava/lang/String;)V

    .line 477
    :cond_0
    return-object v1
.end method

.method public getPermissionFlags(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "permName"    # Ljava/lang/String;
    .param p3, "deviceId"    # Ljava/lang/String;
    .param p4, "userId"    # I

    .line 159
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceTestingShim;->mOldImplementation:Lcom/android/server/pm/permission/PermissionManagerServiceInterface;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/server/pm/permission/PermissionManagerServiceInterface;->getPermissionFlags(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    .line 160
    .local v0, "oldVal":I
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerServiceTestingShim;->mNewImplementation:Lcom/android/server/pm/permission/PermissionManagerServiceInterface;

    invoke-interface {v1, p1, p2, p3, p4}, Lcom/android/server/pm/permission/PermissionManagerServiceInterface;->getPermissionFlags(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    .line 162
    .local v1, "newVal":I
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 163
    const-string v2, "getPermissionFlags"

    invoke-direct {p0, v2}, Lcom/android/server/pm/permission/PermissionManagerServiceTestingShim;->signalImplDifference(Ljava/lang/String;)V

    .line 165
    :cond_0
    return v1
.end method

.method public getPermissionGids(Ljava/lang/String;I)[I
    .locals 3
    .param p1, "permissionName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 407
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceTestingShim;->mOldImplementation:Lcom/android/server/pm/permission/PermissionManagerServiceInterface;

    invoke-interface {v0, p1, p2}, Lcom/android/server/pm/permission/PermissionManagerServiceInterface;->getPermissionGids(Ljava/lang/String;I)[I

    move-result-object v0

    .line 408
    .local v0, "oldVal":[I
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerServiceTestingShim;->mNewImplementation:Lcom/android/server/pm/permission/PermissionManagerServiceInterface;

    invoke-interface {v1, p1, p2}, Lcom/android/server/pm/permission/PermissionManagerServiceInterface;->getPermissionGids(Ljava/lang/String;I)[I

    move-result-object v1

    .line 410
    .local v1, "newVal":[I
    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 411
    const-string v2, "getPermissionGids"

    invoke-direct {p0, v2}, Lcom/android/server/pm/permission/PermissionManagerServiceTestingShim;->signalImplDifference(Ljava/lang/String;)V

    .line 413
    :cond_0
    return-object v1
.end method

.method public getPermissionGroupInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionGroupInfo;
    .locals 3
    .param p1, "groupName"    # Ljava/lang/String;
    .param p2, "flags"    # I

    .line 104
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceTestingShim;->mOldImplementation:Lcom/android/server/pm/permission/PermissionManagerServiceInterface;

    invoke-interface {v0, p1, p2}, Lcom/android/server/pm/permission/PermissionManagerServiceInterface;->getPermissionGroupInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionGroupInfo;

    move-result-object v0

    .line 105
    .local v0, "oldVal":Landroid/content/pm/PermissionGroupInfo;
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerServiceTestingShim;->mNewImplementation:Lcom/android/server/pm/permission/PermissionManagerServiceInterface;

    invoke-interface {v1, p1, p2}, Lcom/android/server/pm/permission/PermissionManagerServiceInterface;->getPermissionGroupInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionGroupInfo;

    move-result-object v1

    .line 107
    .local v1, "newVal":Landroid/content/pm/PermissionGroupInfo;
    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 108
    const-string v2, "getPermissionGroupInfo"

    invoke-direct {p0, v2}, Lcom/android/server/pm/permission/PermissionManagerServiceTestingShim;->signalImplDifference(Ljava/lang/String;)V

    .line 110
    :cond_0
    return-object v1
.end method

.method public getPermissionInfo(Ljava/lang/String;ILjava/lang/String;)Landroid/content/pm/PermissionInfo;
    .locals 3
    .param p1, "permName"    # Ljava/lang/String;
    .param p2, "flags"    # I
    .param p3, "opPackageName"    # Ljava/lang/String;

    .line 116
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceTestingShim;->mOldImplementation:Lcom/android/server/pm/permission/PermissionManagerServiceInterface;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/server/pm/permission/PermissionManagerServiceInterface;->getPermissionInfo(Ljava/lang/String;ILjava/lang/String;)Landroid/content/pm/PermissionInfo;

    move-result-object v0

    .line 118
    .local v0, "oldVal":Landroid/content/pm/PermissionInfo;
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerServiceTestingShim;->mNewImplementation:Lcom/android/server/pm/permission/PermissionManagerServiceInterface;

    invoke-interface {v1, p1, p2, p3}, Lcom/android/server/pm/permission/PermissionManagerServiceInterface;->getPermissionInfo(Ljava/lang/String;ILjava/lang/String;)Landroid/content/pm/PermissionInfo;

    move-result-object v1

    .line 121
    .local v1, "newVal":Landroid/content/pm/PermissionInfo;
    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 122
    const-string v2, "getPermissionInfo"

    invoke-direct {p0, v2}, Lcom/android/server/pm/permission/PermissionManagerServiceTestingShim;->signalImplDifference(Ljava/lang/String;)V

    .line 124
    :cond_0
    return-object v1
.end method

.method public getPermissionRequestState(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)I
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "permName"    # Ljava/lang/String;
    .param p3, "deviceId"    # I
    .param p4, "persistentDeviceId"    # Ljava/lang/String;

    .line 324
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceTestingShim;->mNewImplementation:Lcom/android/server/pm/permission/PermissionManagerServiceInterface;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/server/pm/permission/PermissionManagerServiceInterface;->getPermissionRequestState(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getPermissionTEMP(Ljava/lang/String;)Lcom/android/server/pm/permission/Permission;
    .locals 3
    .param p1, "permName"    # Ljava/lang/String;

    .line 431
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceTestingShim;->mOldImplementation:Lcom/android/server/pm/permission/PermissionManagerServiceInterface;

    invoke-interface {v0, p1}, Lcom/android/server/pm/permission/PermissionManagerServiceInterface;->getPermissionTEMP(Ljava/lang/String;)Lcom/android/server/pm/permission/Permission;

    move-result-object v0

    .line 432
    .local v0, "oldVal":Lcom/android/server/pm/permission/Permission;
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerServiceTestingShim;->mNewImplementation:Lcom/android/server/pm/permission/PermissionManagerServiceInterface;

    invoke-interface {v1, p1}, Lcom/android/server/pm/permission/PermissionManagerServiceInterface;->getPermissionTEMP(Ljava/lang/String;)Lcom/android/server/pm/permission/Permission;

    move-result-object v1

    .line 434
    .local v1, "newVal":Lcom/android/server/pm/permission/Permission;
    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 435
    const-string v2, "getPermissionTEMP"

    invoke-direct {p0, v2}, Lcom/android/server/pm/permission/PermissionManagerServiceTestingShim;->signalImplDifference(Ljava/lang/String;)V

    .line 437
    :cond_0
    return-object v1
.end method

.method public getSplitPermissions()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/pm/permission/SplitPermissionInfoParcelable;",
            ">;"
        }
    .end annotation

    .line 290
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceTestingShim;->mOldImplementation:Lcom/android/server/pm/permission/PermissionManagerServiceInterface;

    invoke-interface {v0}, Lcom/android/server/pm/permission/PermissionManagerServiceInterface;->getSplitPermissions()Ljava/util/List;

    move-result-object v0

    .line 291
    .local v0, "oldVal":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/permission/SplitPermissionInfoParcelable;>;"
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerServiceTestingShim;->mNewImplementation:Lcom/android/server/pm/permission/PermissionManagerServiceInterface;

    invoke-interface {v1}, Lcom/android/server/pm/permission/PermissionManagerServiceInterface;->getSplitPermissions()Ljava/util/List;

    move-result-object v1

    .line 293
    .local v1, "newVal":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/permission/SplitPermissionInfoParcelable;>;"
    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 294
    const-string v2, "getSplitPermissions"

    invoke-direct {p0, v2}, Lcom/android/server/pm/permission/PermissionManagerServiceTestingShim;->signalImplDifference(Ljava/lang/String;)V

    .line 296
    :cond_0
    return-object v1
.end method

.method public grantRuntimePermission(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "permName"    # Ljava/lang/String;
    .param p3, "deviceId"    # Ljava/lang/String;
    .param p4, "userId"    # I

    .line 242
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceTestingShim;->mOldImplementation:Lcom/android/server/pm/permission/PermissionManagerServiceInterface;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/server/pm/permission/PermissionManagerServiceInterface;->grantRuntimePermission(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 243
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceTestingShim;->mNewImplementation:Lcom/android/server/pm/permission/PermissionManagerServiceInterface;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/server/pm/permission/PermissionManagerServiceInterface;->grantRuntimePermission(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 244
    return-void
.end method

.method public isPermissionRevokedByPolicy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "permName"    # Ljava/lang/String;
    .param p3, "deviceId"    # Ljava/lang/String;
    .param p4, "userId"    # I

    .line 277
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceTestingShim;->mOldImplementation:Lcom/android/server/pm/permission/PermissionManagerServiceInterface;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/server/pm/permission/PermissionManagerServiceInterface;->isPermissionRevokedByPolicy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    .line 279
    .local v0, "oldVal":Z
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerServiceTestingShim;->mNewImplementation:Lcom/android/server/pm/permission/PermissionManagerServiceInterface;

    invoke-interface {v1, p1, p2, p3, p4}, Lcom/android/server/pm/permission/PermissionManagerServiceInterface;->isPermissionRevokedByPolicy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v1

    .line 282
    .local v1, "newVal":Z
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 283
    const-string/jumbo v2, "isPermissionRevokedByPolicy"

    invoke-direct {p0, v2}, Lcom/android/server/pm/permission/PermissionManagerServiceTestingShim;->signalImplDifference(Ljava/lang/String;)V

    .line 285
    :cond_0
    return v1
.end method

.method public isPermissionsReviewRequired(Ljava/lang/String;I)Z
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 347
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceTestingShim;->mOldImplementation:Lcom/android/server/pm/permission/PermissionManagerServiceInterface;

    invoke-interface {v0, p1, p2}, Lcom/android/server/pm/permission/PermissionManagerServiceInterface;->isPermissionsReviewRequired(Ljava/lang/String;I)Z

    move-result v0

    .line 348
    .local v0, "oldVal":Z
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerServiceTestingShim;->mNewImplementation:Lcom/android/server/pm/permission/PermissionManagerServiceInterface;

    invoke-interface {v1, p1, p2}, Lcom/android/server/pm/permission/PermissionManagerServiceInterface;->isPermissionsReviewRequired(Ljava/lang/String;I)Z

    move-result v1

    .line 350
    .local v1, "newVal":Z
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 351
    const-string/jumbo v2, "isPermissionsReviewRequired"

    invoke-direct {p0, v2}, Lcom/android/server/pm/permission/PermissionManagerServiceTestingShim;->signalImplDifference(Ljava/lang/String;)V

    .line 353
    :cond_0
    return v1
.end method

.method public onPackageAdded(Lcom/android/server/pm/pkg/PackageState;ZLcom/android/server/pm/pkg/AndroidPackage;)V
    .locals 1
    .param p1, "pkg"    # Lcom/android/server/pm/pkg/PackageState;
    .param p2, "isInstantApp"    # Z
    .param p3, "oldPkg"    # Lcom/android/server/pm/pkg/AndroidPackage;

    .line 565
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceTestingShim;->mOldImplementation:Lcom/android/server/pm/permission/PermissionManagerServiceInterface;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/server/pm/permission/PermissionManagerServiceInterface;->onPackageAdded(Lcom/android/server/pm/pkg/PackageState;ZLcom/android/server/pm/pkg/AndroidPackage;)V

    .line 566
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceTestingShim;->mNewImplementation:Lcom/android/server/pm/permission/PermissionManagerServiceInterface;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/server/pm/permission/PermissionManagerServiceInterface;->onPackageAdded(Lcom/android/server/pm/pkg/PackageState;ZLcom/android/server/pm/pkg/AndroidPackage;)V

    .line 567
    return-void
.end method

.method public onPackageInstalled(Lcom/android/server/pm/pkg/AndroidPackage;ILcom/android/server/pm/permission/PermissionManagerServiceInternal$PackageInstalledParams;I)V
    .locals 1
    .param p1, "pkg"    # Lcom/android/server/pm/pkg/AndroidPackage;
    .param p2, "previousAppId"    # I
    .param p3, "params"    # Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PackageInstalledParams;
    .param p4, "userId"    # I

    .line 572
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceTestingShim;->mOldImplementation:Lcom/android/server/pm/permission/PermissionManagerServiceInterface;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/server/pm/permission/PermissionManagerServiceInterface;->onPackageInstalled(Lcom/android/server/pm/pkg/AndroidPackage;ILcom/android/server/pm/permission/PermissionManagerServiceInternal$PackageInstalledParams;I)V

    .line 573
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceTestingShim;->mNewImplementation:Lcom/android/server/pm/permission/PermissionManagerServiceInterface;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/server/pm/permission/PermissionManagerServiceInterface;->onPackageInstalled(Lcom/android/server/pm/pkg/AndroidPackage;ILcom/android/server/pm/permission/PermissionManagerServiceInternal$PackageInstalledParams;I)V

    .line 574
    return-void
.end method

.method public onPackageRemoved(Lcom/android/server/pm/pkg/AndroidPackage;)V
    .locals 1
    .param p1, "pkg"    # Lcom/android/server/pm/pkg/AndroidPackage;

    .line 578
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceTestingShim;->mOldImplementation:Lcom/android/server/pm/permission/PermissionManagerServiceInterface;

    invoke-interface {v0, p1}, Lcom/android/server/pm/permission/PermissionManagerServiceInterface;->onPackageRemoved(Lcom/android/server/pm/pkg/AndroidPackage;)V

    .line 579
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceTestingShim;->mNewImplementation:Lcom/android/server/pm/permission/PermissionManagerServiceInterface;

    invoke-interface {v0, p1}, Lcom/android/server/pm/permission/PermissionManagerServiceInterface;->onPackageRemoved(Lcom/android/server/pm/pkg/AndroidPackage;)V

    .line 580
    return-void
.end method

.method public onPackageUninstalled(Ljava/lang/String;ILcom/android/server/pm/pkg/PackageState;Lcom/android/server/pm/pkg/AndroidPackage;Ljava/util/List;I)V
    .locals 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "appId"    # I
    .param p3, "packageState"    # Lcom/android/server/pm/pkg/PackageState;
    .param p4, "pkg"    # Lcom/android/server/pm/pkg/AndroidPackage;
    .param p6, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Lcom/android/server/pm/pkg/PackageState;",
            "Lcom/android/server/pm/pkg/AndroidPackage;",
            "Ljava/util/List<",
            "Lcom/android/server/pm/pkg/AndroidPackage;",
            ">;I)V"
        }
    .end annotation

    .line 586
    .local p5, "sharedUserPkgs":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/pkg/AndroidPackage;>;"
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceTestingShim;->mOldImplementation:Lcom/android/server/pm/permission/PermissionManagerServiceInterface;

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "appId":I
    .end local p3    # "packageState":Lcom/android/server/pm/pkg/PackageState;
    .end local p4    # "pkg":Lcom/android/server/pm/pkg/AndroidPackage;
    .end local p5    # "sharedUserPkgs":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/pkg/AndroidPackage;>;"
    .end local p6    # "userId":I
    .local v1, "packageName":Ljava/lang/String;
    .local v2, "appId":I
    .local v3, "packageState":Lcom/android/server/pm/pkg/PackageState;
    .local v4, "pkg":Lcom/android/server/pm/pkg/AndroidPackage;
    .local v5, "sharedUserPkgs":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/pkg/AndroidPackage;>;"
    .local v6, "userId":I
    invoke-interface/range {v0 .. v6}, Lcom/android/server/pm/permission/PermissionManagerServiceInterface;->onPackageUninstalled(Ljava/lang/String;ILcom/android/server/pm/pkg/PackageState;Lcom/android/server/pm/pkg/AndroidPackage;Ljava/util/List;I)V

    .line 588
    move v7, v6

    move-object v6, v5

    move-object v5, v4

    move-object v4, v3

    move v3, v2

    move-object v2, v1

    .end local v1    # "packageName":Ljava/lang/String;
    .local v2, "packageName":Ljava/lang/String;
    .local v3, "appId":I
    .local v4, "packageState":Lcom/android/server/pm/pkg/PackageState;
    .local v5, "pkg":Lcom/android/server/pm/pkg/AndroidPackage;
    .local v6, "sharedUserPkgs":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/pkg/AndroidPackage;>;"
    .local v7, "userId":I
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerServiceTestingShim;->mNewImplementation:Lcom/android/server/pm/permission/PermissionManagerServiceInterface;

    invoke-interface/range {v1 .. v7}, Lcom/android/server/pm/permission/PermissionManagerServiceInterface;->onPackageUninstalled(Ljava/lang/String;ILcom/android/server/pm/pkg/PackageState;Lcom/android/server/pm/pkg/AndroidPackage;Ljava/util/List;I)V

    .line 590
    move-object v1, v2

    move v2, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move v6, v7

    .end local v7    # "userId":I
    .restart local v1    # "packageName":Ljava/lang/String;
    .local v2, "appId":I
    .local v3, "packageState":Lcom/android/server/pm/pkg/PackageState;
    .local v4, "pkg":Lcom/android/server/pm/pkg/AndroidPackage;
    .local v5, "sharedUserPkgs":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/pkg/AndroidPackage;>;"
    .local v6, "userId":I
    return-void
.end method

.method public onStorageVolumeMounted(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "volumeUuid"    # Ljava/lang/String;
    .param p2, "fingerprintChanged"    # Z

    .line 534
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceTestingShim;->mOldImplementation:Lcom/android/server/pm/permission/PermissionManagerServiceInterface;

    invoke-interface {v0, p1, p2}, Lcom/android/server/pm/permission/PermissionManagerServiceInterface;->onStorageVolumeMounted(Ljava/lang/String;Z)V

    .line 535
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceTestingShim;->mNewImplementation:Lcom/android/server/pm/permission/PermissionManagerServiceInterface;

    invoke-interface {v0, p1, p2}, Lcom/android/server/pm/permission/PermissionManagerServiceInterface;->onStorageVolumeMounted(Ljava/lang/String;Z)V

    .line 536
    return-void
.end method

.method public onSystemReady()V
    .locals 1

    .line 528
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceTestingShim;->mOldImplementation:Lcom/android/server/pm/permission/PermissionManagerServiceInterface;

    invoke-interface {v0}, Lcom/android/server/pm/permission/PermissionManagerServiceInterface;->onSystemReady()V

    .line 529
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceTestingShim;->mNewImplementation:Lcom/android/server/pm/permission/PermissionManagerServiceInterface;

    invoke-interface {v0}, Lcom/android/server/pm/permission/PermissionManagerServiceInterface;->onSystemReady()V

    .line 530
    return-void
.end method

.method public onUserCreated(I)V
    .locals 1
    .param p1, "userId"    # I

    .line 552
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceTestingShim;->mOldImplementation:Lcom/android/server/pm/permission/PermissionManagerServiceInterface;

    invoke-interface {v0, p1}, Lcom/android/server/pm/permission/PermissionManagerServiceInterface;->onUserCreated(I)V

    .line 553
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceTestingShim;->mNewImplementation:Lcom/android/server/pm/permission/PermissionManagerServiceInterface;

    invoke-interface {v0, p1}, Lcom/android/server/pm/permission/PermissionManagerServiceInterface;->onUserCreated(I)V

    .line 554
    return-void
.end method

.method public onUserRemoved(I)V
    .locals 1
    .param p1, "userId"    # I

    .line 558
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceTestingShim;->mOldImplementation:Lcom/android/server/pm/permission/PermissionManagerServiceInterface;

    invoke-interface {v0, p1}, Lcom/android/server/pm/permission/PermissionManagerServiceInterface;->onUserRemoved(I)V

    .line 559
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceTestingShim;->mNewImplementation:Lcom/android/server/pm/permission/PermissionManagerServiceInterface;

    invoke-interface {v0, p1}, Lcom/android/server/pm/permission/PermissionManagerServiceInterface;->onUserRemoved(I)V

    .line 560
    return-void
.end method

.method public queryPermissionsByGroup(Ljava/lang/String;I)Ljava/util/List;
    .locals 3
    .param p1, "groupName"    # Ljava/lang/String;
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Landroid/content/pm/PermissionInfo;",
            ">;"
        }
    .end annotation

    .line 129
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceTestingShim;->mOldImplementation:Lcom/android/server/pm/permission/PermissionManagerServiceInterface;

    invoke-interface {v0, p1, p2}, Lcom/android/server/pm/permission/PermissionManagerServiceInterface;->queryPermissionsByGroup(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    .line 131
    .local v0, "oldVal":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PermissionInfo;>;"
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerServiceTestingShim;->mNewImplementation:Lcom/android/server/pm/permission/PermissionManagerServiceInterface;

    invoke-interface {v1, p1, p2}, Lcom/android/server/pm/permission/PermissionManagerServiceInterface;->queryPermissionsByGroup(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v1

    .line 133
    .local v1, "newVal":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PermissionInfo;>;"
    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 134
    const-string/jumbo v2, "queryPermissionsByGroup"

    invoke-direct {p0, v2}, Lcom/android/server/pm/permission/PermissionManagerServiceTestingShim;->signalImplDifference(Ljava/lang/String;)V

    .line 136
    :cond_0
    return-object v1
.end method

.method public readLegacyPermissionStateTEMP()V
    .locals 1

    .line 371
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceTestingShim;->mOldImplementation:Lcom/android/server/pm/permission/PermissionManagerServiceInterface;

    invoke-interface {v0}, Lcom/android/server/pm/permission/PermissionManagerServiceInterface;->readLegacyPermissionStateTEMP()V

    .line 372
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceTestingShim;->mNewImplementation:Lcom/android/server/pm/permission/PermissionManagerServiceInterface;

    invoke-interface {v0}, Lcom/android/server/pm/permission/PermissionManagerServiceInterface;->readLegacyPermissionStateTEMP()V

    .line 373
    return-void
.end method

.method public readLegacyPermissionsTEMP(Lcom/android/server/pm/permission/LegacyPermissionSettings;)V
    .locals 1
    .param p1, "legacyPermissionSettings"    # Lcom/android/server/pm/permission/LegacyPermissionSettings;

    .line 495
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceTestingShim;->mOldImplementation:Lcom/android/server/pm/permission/PermissionManagerServiceInterface;

    invoke-interface {v0, p1}, Lcom/android/server/pm/permission/PermissionManagerServiceInterface;->readLegacyPermissionsTEMP(Lcom/android/server/pm/permission/LegacyPermissionSettings;)V

    .line 496
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceTestingShim;->mNewImplementation:Lcom/android/server/pm/permission/PermissionManagerServiceInterface;

    invoke-interface {v0, p1}, Lcom/android/server/pm/permission/PermissionManagerServiceInterface;->readLegacyPermissionsTEMP(Lcom/android/server/pm/permission/LegacyPermissionSettings;)V

    .line 497
    return-void
.end method

.method public removeAllowlistedRestrictedPermission(Ljava/lang/String;Ljava/lang/String;II)Z
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "permName"    # Ljava/lang/String;
    .param p3, "flags"    # I
    .param p4, "userId"    # I

    .line 228
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceTestingShim;->mOldImplementation:Lcom/android/server/pm/permission/PermissionManagerServiceInterface;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/server/pm/permission/PermissionManagerServiceInterface;->removeAllowlistedRestrictedPermission(Ljava/lang/String;Ljava/lang/String;II)Z

    move-result v0

    .line 230
    .local v0, "oldVal":Z
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerServiceTestingShim;->mNewImplementation:Lcom/android/server/pm/permission/PermissionManagerServiceInterface;

    invoke-interface {v1, p1, p2, p3, p4}, Lcom/android/server/pm/permission/PermissionManagerServiceInterface;->removeAllowlistedRestrictedPermission(Ljava/lang/String;Ljava/lang/String;II)Z

    move-result v1

    .line 233
    .local v1, "newVal":Z
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 234
    const-string/jumbo v2, "removeAllowlistedRestrictedPermission"

    invoke-direct {p0, v2}, Lcom/android/server/pm/permission/PermissionManagerServiceTestingShim;->signalImplDifference(Ljava/lang/String;)V

    .line 236
    :cond_0
    return v1
.end method

.method public removeOnPermissionsChangeListener(Landroid/permission/IOnPermissionsChangeListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/permission/IOnPermissionsChangeListener;

    .line 192
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceTestingShim;->mOldImplementation:Lcom/android/server/pm/permission/PermissionManagerServiceInterface;

    invoke-interface {v0, p1}, Lcom/android/server/pm/permission/PermissionManagerServiceInterface;->removeOnPermissionsChangeListener(Landroid/permission/IOnPermissionsChangeListener;)V

    .line 193
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceTestingShim;->mNewImplementation:Lcom/android/server/pm/permission/PermissionManagerServiceInterface;

    invoke-interface {v0, p1}, Lcom/android/server/pm/permission/PermissionManagerServiceInterface;->removeOnPermissionsChangeListener(Landroid/permission/IOnPermissionsChangeListener;)V

    .line 194
    return-void
.end method

.method public removePermission(Ljava/lang/String;)V
    .locals 1
    .param p1, "permName"    # Ljava/lang/String;

    .line 152
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceTestingShim;->mOldImplementation:Lcom/android/server/pm/permission/PermissionManagerServiceInterface;

    invoke-interface {v0, p1}, Lcom/android/server/pm/permission/PermissionManagerServiceInterface;->removePermission(Ljava/lang/String;)V

    .line 153
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceTestingShim;->mNewImplementation:Lcom/android/server/pm/permission/PermissionManagerServiceInterface;

    invoke-interface {v0, p1}, Lcom/android/server/pm/permission/PermissionManagerServiceInterface;->removePermission(Ljava/lang/String;)V

    .line 154
    return-void
.end method

.method public resetRuntimePermissions(Lcom/android/server/pm/pkg/AndroidPackage;IZ)V
    .locals 1
    .param p1, "pkg"    # Lcom/android/server/pm/pkg/AndroidPackage;
    .param p2, "userId"    # I
    .param p3, "restoreRuntimePermissions"    # Z

    .line 359
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceTestingShim;->mOldImplementation:Lcom/android/server/pm/permission/PermissionManagerServiceInterface;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/server/pm/permission/PermissionManagerServiceInterface;->resetRuntimePermissions(Lcom/android/server/pm/pkg/AndroidPackage;IZ)V

    .line 360
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceTestingShim;->mNewImplementation:Lcom/android/server/pm/permission/PermissionManagerServiceInterface;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/server/pm/permission/PermissionManagerServiceInterface;->resetRuntimePermissions(Lcom/android/server/pm/pkg/AndroidPackage;IZ)V

    .line 361
    return-void
.end method

.method public resetRuntimePermissionsForUser(I)V
    .locals 1
    .param p1, "userId"    # I

    .line 365
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceTestingShim;->mOldImplementation:Lcom/android/server/pm/permission/PermissionManagerServiceInterface;

    invoke-interface {v0, p1}, Lcom/android/server/pm/permission/PermissionManagerServiceInterface;->resetRuntimePermissionsForUser(I)V

    .line 366
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceTestingShim;->mNewImplementation:Lcom/android/server/pm/permission/PermissionManagerServiceInterface;

    invoke-interface {v0, p1}, Lcom/android/server/pm/permission/PermissionManagerServiceInterface;->resetRuntimePermissionsForUser(I)V

    .line 367
    return-void
.end method

.method public restoreDelayedRuntimePermissions(Ljava/lang/String;I)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 80
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceTestingShim;->mOldImplementation:Lcom/android/server/pm/permission/PermissionManagerServiceInterface;

    invoke-interface {v0, p1, p2}, Landroid/permission/PermissionManagerInternal;->restoreDelayedRuntimePermissions(Ljava/lang/String;I)V

    .line 81
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceTestingShim;->mNewImplementation:Lcom/android/server/pm/permission/PermissionManagerServiceInterface;

    invoke-interface {v0, p1, p2}, Landroid/permission/PermissionManagerInternal;->restoreDelayedRuntimePermissions(Ljava/lang/String;I)V

    .line 83
    return-void
.end method

.method public restoreRuntimePermissions([BI)V
    .locals 1
    .param p1, "backup"    # [B
    .param p2, "userId"    # I

    .line 74
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceTestingShim;->mOldImplementation:Lcom/android/server/pm/permission/PermissionManagerServiceInterface;

    invoke-interface {v0, p2}, Landroid/permission/PermissionManagerInternal;->backupRuntimePermissions(I)[B

    .line 75
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceTestingShim;->mNewImplementation:Lcom/android/server/pm/permission/PermissionManagerServiceInterface;

    invoke-interface {v0, p2}, Landroid/permission/PermissionManagerInternal;->backupRuntimePermissions(I)[B

    .line 76
    return-void
.end method

.method public revokePostNotificationPermissionWithoutKillForTest(Ljava/lang/String;I)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 255
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceTestingShim;->mOldImplementation:Lcom/android/server/pm/permission/PermissionManagerServiceInterface;

    invoke-interface {v0, p1, p2}, Lcom/android/server/pm/permission/PermissionManagerServiceInterface;->revokePostNotificationPermissionWithoutKillForTest(Ljava/lang/String;I)V

    .line 257
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceTestingShim;->mNewImplementation:Lcom/android/server/pm/permission/PermissionManagerServiceInterface;

    invoke-interface {v0, p1, p2}, Lcom/android/server/pm/permission/PermissionManagerServiceInterface;->revokePostNotificationPermissionWithoutKillForTest(Ljava/lang/String;I)V

    .line 258
    return-void
.end method

.method public revokeRuntimePermission(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "permName"    # Ljava/lang/String;
    .param p3, "deviceId"    # Ljava/lang/String;
    .param p4, "userId"    # I
    .param p5, "reason"    # Ljava/lang/String;

    .line 249
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceTestingShim;->mOldImplementation:Lcom/android/server/pm/permission/PermissionManagerServiceInterface;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "permName":Ljava/lang/String;
    .end local p3    # "deviceId":Ljava/lang/String;
    .end local p4    # "userId":I
    .end local p5    # "reason":Ljava/lang/String;
    .local v1, "packageName":Ljava/lang/String;
    .local v2, "permName":Ljava/lang/String;
    .local v3, "deviceId":Ljava/lang/String;
    .local v4, "userId":I
    .local v5, "reason":Ljava/lang/String;
    invoke-interface/range {v0 .. v5}, Lcom/android/server/pm/permission/PermissionManagerServiceInterface;->revokeRuntimePermission(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 250
    move-object v6, v5

    move v5, v4

    move-object v4, v3

    move-object v3, v2

    move-object v2, v1

    .end local v1    # "packageName":Ljava/lang/String;
    .local v2, "packageName":Ljava/lang/String;
    .local v3, "permName":Ljava/lang/String;
    .local v4, "deviceId":Ljava/lang/String;
    .local v5, "userId":I
    .local v6, "reason":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerServiceTestingShim;->mNewImplementation:Lcom/android/server/pm/permission/PermissionManagerServiceInterface;

    invoke-interface/range {v1 .. v6}, Lcom/android/server/pm/permission/PermissionManagerServiceInterface;->revokeRuntimePermission(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 251
    move-object v1, v2

    move-object v2, v3

    move-object v3, v4

    move v4, v5

    move-object v5, v6

    .end local v6    # "reason":Ljava/lang/String;
    .restart local v1    # "packageName":Ljava/lang/String;
    .local v2, "permName":Ljava/lang/String;
    .local v3, "deviceId":Ljava/lang/String;
    .local v4, "userId":I
    .local v5, "reason":Ljava/lang/String;
    return-void
.end method

.method public setDefaultPermissionGrantFingerprint(Ljava/lang/String;I)V
    .locals 1
    .param p1, "fingerprint"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 522
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceTestingShim;->mOldImplementation:Lcom/android/server/pm/permission/PermissionManagerServiceInterface;

    invoke-interface {v0, p1, p2}, Lcom/android/server/pm/permission/PermissionManagerServiceInterface;->setDefaultPermissionGrantFingerprint(Ljava/lang/String;I)V

    .line 523
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceTestingShim;->mNewImplementation:Lcom/android/server/pm/permission/PermissionManagerServiceInterface;

    invoke-interface {v0, p1, p2}, Lcom/android/server/pm/permission/PermissionManagerServiceInterface;->setDefaultPermissionGrantFingerprint(Ljava/lang/String;I)V

    .line 524
    return-void
.end method

.method public shouldShowRequestPermissionRationale(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "permName"    # Ljava/lang/String;
    .param p3, "deviceId"    # Ljava/lang/String;
    .param p4, "userId"    # I

    .line 263
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceTestingShim;->mOldImplementation:Lcom/android/server/pm/permission/PermissionManagerServiceInterface;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/server/pm/permission/PermissionManagerServiceInterface;->shouldShowRequestPermissionRationale(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    .line 265
    .local v0, "oldVal":Z
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerServiceTestingShim;->mNewImplementation:Lcom/android/server/pm/permission/PermissionManagerServiceInterface;

    invoke-interface {v1, p1, p2, p3, p4}, Lcom/android/server/pm/permission/PermissionManagerServiceInterface;->shouldShowRequestPermissionRationale(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v1

    .line 268
    .local v1, "newVal":Z
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 269
    const-string/jumbo v2, "shouldShowRequestPermissionRationale"

    invoke-direct {p0, v2}, Lcom/android/server/pm/permission/PermissionManagerServiceTestingShim;->signalImplDifference(Ljava/lang/String;)V

    .line 271
    :cond_0
    return v1
.end method

.method public updatePermissionFlags(Ljava/lang/String;Ljava/lang/String;IIZLjava/lang/String;I)V
    .locals 9
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "permName"    # Ljava/lang/String;
    .param p3, "flagMask"    # I
    .param p4, "flagValues"    # I
    .param p5, "checkAdjustPolicyFlagPermission"    # Z
    .param p6, "deviceId"    # Ljava/lang/String;
    .param p7, "userId"    # I

    .line 172
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceTestingShim;->mOldImplementation:Lcom/android/server/pm/permission/PermissionManagerServiceInterface;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    move/from16 v7, p7

    invoke-interface/range {v0 .. v7}, Lcom/android/server/pm/permission/PermissionManagerServiceInterface;->updatePermissionFlags(Ljava/lang/String;Ljava/lang/String;IIZLjava/lang/String;I)V

    .line 174
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerServiceTestingShim;->mNewImplementation:Lcom/android/server/pm/permission/PermissionManagerServiceInterface;

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move-object v7, p6

    move/from16 v8, p7

    invoke-interface/range {v1 .. v8}, Lcom/android/server/pm/permission/PermissionManagerServiceInterface;->updatePermissionFlags(Ljava/lang/String;Ljava/lang/String;IIZLjava/lang/String;I)V

    .line 176
    return-void
.end method

.method public updatePermissionFlagsForAllApps(III)V
    .locals 1
    .param p1, "flagMask"    # I
    .param p2, "flagValues"    # I
    .param p3, "userId"    # I

    .line 180
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceTestingShim;->mOldImplementation:Lcom/android/server/pm/permission/PermissionManagerServiceInterface;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/server/pm/permission/PermissionManagerServiceInterface;->updatePermissionFlagsForAllApps(III)V

    .line 181
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceTestingShim;->mNewImplementation:Lcom/android/server/pm/permission/PermissionManagerServiceInterface;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/server/pm/permission/PermissionManagerServiceInterface;->updatePermissionFlagsForAllApps(III)V

    .line 182
    return-void
.end method

.method public writeLegacyPermissionStateTEMP()V
    .locals 1

    .line 377
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceTestingShim;->mOldImplementation:Lcom/android/server/pm/permission/PermissionManagerServiceInterface;

    invoke-interface {v0}, Lcom/android/server/pm/permission/PermissionManagerServiceInterface;->writeLegacyPermissionStateTEMP()V

    .line 378
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceTestingShim;->mNewImplementation:Lcom/android/server/pm/permission/PermissionManagerServiceInterface;

    invoke-interface {v0}, Lcom/android/server/pm/permission/PermissionManagerServiceInterface;->writeLegacyPermissionStateTEMP()V

    .line 379
    return-void
.end method

.method public writeLegacyPermissionsTEMP(Lcom/android/server/pm/permission/LegacyPermissionSettings;)V
    .locals 1
    .param p1, "legacyPermissionSettings"    # Lcom/android/server/pm/permission/LegacyPermissionSettings;

    .line 502
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceTestingShim;->mOldImplementation:Lcom/android/server/pm/permission/PermissionManagerServiceInterface;

    invoke-interface {v0, p1}, Lcom/android/server/pm/permission/PermissionManagerServiceInterface;->writeLegacyPermissionsTEMP(Lcom/android/server/pm/permission/LegacyPermissionSettings;)V

    .line 503
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceTestingShim;->mNewImplementation:Lcom/android/server/pm/permission/PermissionManagerServiceInterface;

    invoke-interface {v0, p1}, Lcom/android/server/pm/permission/PermissionManagerServiceInterface;->writeLegacyPermissionsTEMP(Lcom/android/server/pm/permission/LegacyPermissionSettings;)V

    .line 504
    return-void
.end method
