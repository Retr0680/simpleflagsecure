.class public Lcom/android/server/pm/local/PackageManagerLocalImpl;
.super Ljava/lang/Object;
.source "PackageManagerLocalImpl.java"

# interfaces
.implements Lcom/android/server/pm/PackageManagerLocal;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/local/PackageManagerLocalImpl$UnfilteredSnapshotImpl;,
        Lcom/android/server/pm/local/PackageManagerLocalImpl$FilteredSnapshotImpl;,
        Lcom/android/server/pm/local/PackageManagerLocalImpl$BaseSnapshotImpl;
    }
.end annotation


# instance fields
.field private final mService:Lcom/android/server/pm/PackageManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/PackageManagerService;)V
    .locals 0
    .param p1, "service"    # Lcom/android/server/pm/PackageManagerService;

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/android/server/pm/local/PackageManagerLocalImpl;->mService:Lcom/android/server/pm/PackageManagerService;

    .line 50
    return-void
.end method

.method private withFilteredSnapshot(ILandroid/os/UserHandle;Lcom/android/server/pm/pkg/PackageState;)Lcom/android/server/pm/local/PackageManagerLocalImpl$FilteredSnapshotImpl;
    .locals 7
    .param p1, "callingUid"    # I
    .param p2, "user"    # Landroid/os/UserHandle;
    .param p3, "uncommittedPs"    # Lcom/android/server/pm/pkg/PackageState;

    .line 92
    new-instance v0, Lcom/android/server/pm/local/PackageManagerLocalImpl$FilteredSnapshotImpl;

    iget-object v1, p0, Lcom/android/server/pm/local/PackageManagerLocalImpl;->mService:Lcom/android/server/pm/PackageManagerService;

    .line 93
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer(Z)Lcom/android/server/pm/Computer;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v6, 0x0

    move v1, p1

    move-object v2, p2

    move-object v5, p3

    .end local p1    # "callingUid":I
    .end local p2    # "user":Landroid/os/UserHandle;
    .end local p3    # "uncommittedPs":Lcom/android/server/pm/pkg/PackageState;
    .local v1, "callingUid":I
    .local v2, "user":Landroid/os/UserHandle;
    .local v5, "uncommittedPs":Lcom/android/server/pm/pkg/PackageState;
    invoke-direct/range {v0 .. v6}, Lcom/android/server/pm/local/PackageManagerLocalImpl$FilteredSnapshotImpl;-><init>(ILandroid/os/UserHandle;Lcom/android/server/pm/snapshot/PackageDataSnapshot;Lcom/android/server/pm/local/PackageManagerLocalImpl$UnfilteredSnapshotImpl;Lcom/android/server/pm/pkg/PackageState;Lcom/android/server/pm/local/PackageManagerLocalImpl-IA;)V

    .line 92
    return-object v0
.end method

.method public static withFilteredSnapshot(Lcom/android/server/pm/PackageManagerLocal;Lcom/android/server/pm/pkg/PackageState;)Lcom/android/server/pm/local/PackageManagerLocalImpl$FilteredSnapshotImpl;
    .locals 3
    .param p0, "pm"    # Lcom/android/server/pm/PackageManagerLocal;
    .param p1, "uncommittedPs"    # Lcom/android/server/pm/pkg/PackageState;

    .line 85
    move-object v0, p0

    check-cast v0, Lcom/android/server/pm/local/PackageManagerLocalImpl;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 86
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v2

    .line 85
    invoke-direct {v0, v1, v2, p1}, Lcom/android/server/pm/local/PackageManagerLocalImpl;->withFilteredSnapshot(ILandroid/os/UserHandle;Lcom/android/server/pm/pkg/PackageState;)Lcom/android/server/pm/local/PackageManagerLocalImpl$FilteredSnapshotImpl;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public addOverrideSigningDetails(Landroid/content/pm/SigningDetails;Landroid/content/pm/SigningDetails;)V
    .locals 2
    .param p1, "oldSigningDetails"    # Landroid/content/pm/SigningDetails;
    .param p2, "newSigningDetails"    # Landroid/content/pm/SigningDetails;

    .line 100
    invoke-static {}, Landroid/os/Build;->isDebuggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 103
    invoke-static {p1, p2}, Landroid/util/apk/ApkSignatureVerifier;->addOverrideSigningDetails(Landroid/content/pm/SigningDetails;Landroid/content/pm/SigningDetails;)V

    .line 104
    return-void

    .line 101
    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "This test API is only available on debuggable builds"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public clearOverrideSigningDetails()V
    .locals 2

    .line 116
    invoke-static {}, Landroid/os/Build;->isDebuggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 119
    invoke-static {}, Landroid/util/apk/ApkSignatureVerifier;->clearOverrideSigningDetails()V

    .line 120
    return-void

    .line 117
    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "This test API is only available on debuggable builds"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public reconcileSdkData(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;IIILjava/lang/String;I)V
    .locals 9
    .param p1, "volumeUuid"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p4, "userId"    # I
    .param p5, "appId"    # I
    .param p6, "previousAppId"    # I
    .param p7, "seInfo"    # Ljava/lang/String;
    .param p8, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;III",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 56
    .local p3, "subDirNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/server/pm/local/PackageManagerLocalImpl;->mService:Lcom/android/server/pm/PackageManagerService;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    invoke-virtual/range {v0 .. v8}, Lcom/android/server/pm/PackageManagerService;->reconcileSdkData(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;IIILjava/lang/String;I)V

    .line 58
    return-void
.end method

.method public removeOverrideSigningDetails(Landroid/content/pm/SigningDetails;)V
    .locals 2
    .param p1, "oldSigningDetails"    # Landroid/content/pm/SigningDetails;

    .line 108
    invoke-static {}, Landroid/os/Build;->isDebuggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 111
    invoke-static {p1}, Landroid/util/apk/ApkSignatureVerifier;->removeOverrideSigningDetails(Landroid/content/pm/SigningDetails;)V

    .line 112
    return-void

    .line 109
    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "This test API is only available on debuggable builds"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic withFilteredSnapshot()Lcom/android/server/pm/PackageManagerLocal$FilteredSnapshot;
    .locals 1

    .line 44
    invoke-virtual {p0}, Lcom/android/server/pm/local/PackageManagerLocalImpl;->withFilteredSnapshot()Lcom/android/server/pm/local/PackageManagerLocalImpl$FilteredSnapshotImpl;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic withFilteredSnapshot(ILandroid/os/UserHandle;)Lcom/android/server/pm/PackageManagerLocal$FilteredSnapshot;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 44
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/local/PackageManagerLocalImpl;->withFilteredSnapshot(ILandroid/os/UserHandle;)Lcom/android/server/pm/local/PackageManagerLocalImpl$FilteredSnapshotImpl;

    move-result-object p1

    return-object p1
.end method

.method public withFilteredSnapshot()Lcom/android/server/pm/local/PackageManagerLocalImpl$FilteredSnapshotImpl;
    .locals 2

    .line 69
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/local/PackageManagerLocalImpl;->withFilteredSnapshot(ILandroid/os/UserHandle;)Lcom/android/server/pm/local/PackageManagerLocalImpl$FilteredSnapshotImpl;

    move-result-object v0

    return-object v0
.end method

.method public withFilteredSnapshot(ILandroid/os/UserHandle;)Lcom/android/server/pm/local/PackageManagerLocalImpl$FilteredSnapshotImpl;
    .locals 1
    .param p1, "callingUid"    # I
    .param p2, "user"    # Landroid/os/UserHandle;

    .line 75
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/pm/local/PackageManagerLocalImpl;->withFilteredSnapshot(ILandroid/os/UserHandle;Lcom/android/server/pm/pkg/PackageState;)Lcom/android/server/pm/local/PackageManagerLocalImpl$FilteredSnapshotImpl;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic withUnfilteredSnapshot()Lcom/android/server/pm/PackageManagerLocal$UnfilteredSnapshot;
    .locals 1

    .line 44
    invoke-virtual {p0}, Lcom/android/server/pm/local/PackageManagerLocalImpl;->withUnfilteredSnapshot()Lcom/android/server/pm/local/PackageManagerLocalImpl$UnfilteredSnapshotImpl;

    move-result-object v0

    return-object v0
.end method

.method public withUnfilteredSnapshot()Lcom/android/server/pm/local/PackageManagerLocalImpl$UnfilteredSnapshotImpl;
    .locals 3

    .line 63
    new-instance v0, Lcom/android/server/pm/local/PackageManagerLocalImpl$UnfilteredSnapshotImpl;

    iget-object v1, p0, Lcom/android/server/pm/local/PackageManagerLocalImpl;->mService:Lcom/android/server/pm/PackageManagerService;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer(Z)Lcom/android/server/pm/Computer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/server/pm/local/PackageManagerLocalImpl$UnfilteredSnapshotImpl;-><init>(Lcom/android/server/pm/snapshot/PackageDataSnapshot;Lcom/android/server/pm/local/PackageManagerLocalImpl-IA;)V

    return-object v0
.end method
