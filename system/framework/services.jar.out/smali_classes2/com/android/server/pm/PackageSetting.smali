.class public Lcom/android/server/pm/PackageSetting;
.super Lcom/android/server/pm/SettingBase;
.source "PackageSetting.java"

# interfaces
.implements Lcom/android/server/pm/pkg/PackageStateInternal;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/PackageSetting$Booleans;
    }
.end annotation


# instance fields
.field private categoryOverride:I

.field private forceFull:Z

.field private installSource:Lcom/android/server/pm/InstallSource;

.field private keySetData:Lcom/android/server/pm/PackageKeySetData;

.field private lastUpdateTime:J

.field private legacyNativeLibraryPath:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private mAppId:I

.field private mAppMetadataFilePath:Ljava/lang/String;

.field private mAppMetadataSource:I

.field private mBaseRevisionCode:I

.field private mBooleans:I

.field private mCpuAbiOverride:Ljava/lang/String;

.field private mDomainSetId:Ljava/util/UUID;

.field private mLastModifiedTime:J

.field private mLoadingCompletedTime:J

.field private mLoadingProgress:F

.field private mName:Ljava/lang/String;

.field private mOldPaths:Ljava/util/LinkedHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashSet<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private mPageSizeAppCompatFlags:I

.field private mPath:Ljava/io/File;

.field private mPathString:Ljava/lang/String;

.field private mPrimaryCpuAbi:Ljava/lang/String;

.field private mRealName:Ljava/lang/String;

.field private mRestrictUpdateHash:[B

.field private mSecondaryCpuAbi:Ljava/lang/String;

.field private mSharedUserAppId:I

.field private final mSnapshot:Lcom/android/server/utils/SnapshotCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/utils/SnapshotCache<",
            "Lcom/android/server/pm/PackageSetting;",
            ">;"
        }
    .end annotation
.end field

.field private mSplitNames:[Ljava/lang/String;

.field private mSplitRevisionCodes:[I

.field private mTargetSdkVersion:I

.field private final mUserStates:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/pm/pkg/PackageUserStateImpl;",
            ">;"
        }
    .end annotation
.end field

.field private mimeGroups:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private pkg:Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

.field private final pkgState:Lcom/android/server/pm/pkg/PackageStateUnserialized;

.field private signatures:Lcom/android/server/pm/PackageSignatures;

.field private usesSdkLibraries:[Ljava/lang/String;

.field private usesSdkLibrariesOptional:[Z

.field private usesSdkLibrariesVersionsMajor:[J

.field private usesStaticLibraries:[Ljava/lang/String;

.field private usesStaticLibrariesVersions:[J

.field private versionCode:J

.field private volumeUuid:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageSetting;)V
    .locals 1
    .param p1, "orig"    # Lcom/android/server/pm/PackageSetting;

    .line 308
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/pm/PackageSetting;-><init>(Lcom/android/server/pm/PackageSetting;Z)V

    .line 309
    return-void
.end method

.method constructor <init>(Lcom/android/server/pm/PackageSetting;Ljava/lang/String;)V
    .locals 1
    .param p1, "base"    # Lcom/android/server/pm/PackageSetting;
    .param p2, "realPkgName"    # Ljava/lang/String;

    .line 319
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/pm/PackageSetting;-><init>(Lcom/android/server/pm/PackageSetting;Z)V

    .line 320
    iput-object p2, p0, Lcom/android/server/pm/PackageSetting;->mRealName:Ljava/lang/String;

    .line 321
    return-void
.end method

.method public constructor <init>(Lcom/android/server/pm/PackageSetting;Z)V
    .locals 2
    .param p1, "original"    # Lcom/android/server/pm/PackageSetting;
    .param p2, "sealedSnapshot"    # Z

    .line 325
    invoke-direct {p0, p1}, Lcom/android/server/pm/SettingBase;-><init>(Lcom/android/server/pm/SettingBase;)V

    .line 208
    new-instance v0, Lcom/android/server/pm/PackageKeySetData;

    invoke-direct {v0}, Lcom/android/server/pm/PackageKeySetData;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/PackageSetting;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    .line 212
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/PackageSetting;->mUserStates:Landroid/util/SparseArray;

    .line 223
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/pm/PackageSetting;->categoryOverride:I

    .line 225
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/pm/PackageSetting;->mPageSizeAppCompatFlags:I

    .line 227
    new-instance v1, Lcom/android/server/pm/pkg/PackageStateUnserialized;

    invoke-direct {v1, p0}, Lcom/android/server/pm/pkg/PackageStateUnserialized;-><init>(Lcom/android/server/pm/PackageSetting;)V

    iput-object v1, p0, Lcom/android/server/pm/PackageSetting;->pkgState:Lcom/android/server/pm/pkg/PackageStateUnserialized;

    .line 236
    iput v0, p0, Lcom/android/server/pm/PackageSetting;->mAppMetadataSource:I

    .line 326
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/PackageSetting;->copyPackageSetting(Lcom/android/server/pm/PackageSetting;Z)V

    .line 327
    if-eqz p2, :cond_0

    .line 328
    new-instance v0, Lcom/android/server/utils/SnapshotCache$Sealed;

    invoke-direct {v0}, Lcom/android/server/utils/SnapshotCache$Sealed;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/PackageSetting;->mSnapshot:Lcom/android/server/utils/SnapshotCache;

    goto :goto_0

    .line 330
    :cond_0
    invoke-direct {p0}, Lcom/android/server/pm/PackageSetting;->makeCache()Lcom/android/server/utils/SnapshotCache;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/PackageSetting;->mSnapshot:Lcom/android/server/utils/SnapshotCache;

    .line 332
    :goto_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;IILjava/util/UUID;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "realName"    # Ljava/lang/String;
    .param p3, "path"    # Ljava/io/File;
    .param p4, "pkgFlags"    # I
    .param p5, "pkgPrivateFlags"    # I
    .param p6, "domainSetId"    # Ljava/util/UUID;

    .line 288
    invoke-direct {p0, p4, p5}, Lcom/android/server/pm/SettingBase;-><init>(II)V

    .line 208
    new-instance v0, Lcom/android/server/pm/PackageKeySetData;

    invoke-direct {v0}, Lcom/android/server/pm/PackageKeySetData;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/PackageSetting;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    .line 212
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/PackageSetting;->mUserStates:Landroid/util/SparseArray;

    .line 223
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/pm/PackageSetting;->categoryOverride:I

    .line 225
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/pm/PackageSetting;->mPageSizeAppCompatFlags:I

    .line 227
    new-instance v1, Lcom/android/server/pm/pkg/PackageStateUnserialized;

    invoke-direct {v1, p0}, Lcom/android/server/pm/pkg/PackageStateUnserialized;-><init>(Lcom/android/server/pm/PackageSetting;)V

    iput-object v1, p0, Lcom/android/server/pm/PackageSetting;->pkgState:Lcom/android/server/pm/pkg/PackageStateUnserialized;

    .line 236
    iput v0, p0, Lcom/android/server/pm/PackageSetting;->mAppMetadataSource:I

    .line 289
    iput-object p1, p0, Lcom/android/server/pm/PackageSetting;->mName:Ljava/lang/String;

    .line 290
    iput-object p2, p0, Lcom/android/server/pm/PackageSetting;->mRealName:Ljava/lang/String;

    .line 291
    iput-object p3, p0, Lcom/android/server/pm/PackageSetting;->mPath:Ljava/io/File;

    .line 292
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/pm/PackageSetting;->mPathString:Ljava/lang/String;

    .line 293
    new-instance v1, Lcom/android/server/pm/PackageSignatures;

    invoke-direct {v1}, Lcom/android/server/pm/PackageSignatures;-><init>()V

    iput-object v1, p0, Lcom/android/server/pm/PackageSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    .line 294
    sget-object v1, Lcom/android/server/pm/InstallSource;->EMPTY:Lcom/android/server/pm/InstallSource;

    iput-object v1, p0, Lcom/android/server/pm/PackageSetting;->installSource:Lcom/android/server/pm/InstallSource;

    .line 295
    iput-object p6, p0, Lcom/android/server/pm/PackageSetting;->mDomainSetId:Ljava/util/UUID;

    .line 298
    iput-boolean v0, p0, Lcom/android/server/pm/PackageSetting;->forceFull:Z

    .line 300
    invoke-direct {p0}, Lcom/android/server/pm/PackageSetting;->makeCache()Lcom/android/server/utils/SnapshotCache;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/PackageSetting;->mSnapshot:Lcom/android/server/utils/SnapshotCache;

    .line 301
    return-void
.end method

.method private __metadata()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2103
    return-void
.end method

.method private copyMimeGroups(Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 697
    .local p1, "newMimeGroups":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    if-nez p1, :cond_0

    .line 698
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/pm/PackageSetting;->mimeGroups:Ljava/util/Map;

    .line 699
    return-void

    .line 702
    :cond_0
    new-instance v0, Landroid/util/ArrayMap;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/util/ArrayMap;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/pm/PackageSetting;->mimeGroups:Ljava/util/Map;

    .line 703
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 704
    .local v1, "mimeGroup":Ljava/lang/String;
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    .line 706
    .local v2, "mimeTypes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v2, :cond_1

    .line 707
    iget-object v3, p0, Lcom/android/server/pm/PackageSetting;->mimeGroups:Ljava/util/Map;

    new-instance v4, Landroid/util/ArraySet;

    invoke-direct {v4, v2}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    invoke-interface {v3, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 709
    :cond_1
    iget-object v3, p0, Lcom/android/server/pm/PackageSetting;->mimeGroups:Ljava/util/Map;

    new-instance v4, Landroid/util/ArraySet;

    invoke-direct {v4}, Landroid/util/ArraySet;-><init>()V

    invoke-interface {v3, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 711
    .end local v1    # "mimeGroup":Ljava/lang/String;
    .end local v2    # "mimeTypes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :goto_1
    goto :goto_0

    .line 712
    :cond_2
    return-void
.end method

.method private getBoolean(I)Z
    .locals 1
    .param p1, "flag"    # I

    .line 126
    iget v0, p0, Lcom/android/server/pm/PackageSetting;->mBooleans:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private makeCache()Lcom/android/server/utils/SnapshotCache;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/server/utils/SnapshotCache<",
            "Lcom/android/server/pm/PackageSetting;",
            ">;"
        }
    .end annotation

    .line 278
    new-instance v0, Lcom/android/server/pm/PackageSetting$1;

    invoke-direct {v0, p0, p0, p0}, Lcom/android/server/pm/PackageSetting$1;-><init>(Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/PackageSetting;Lcom/android/server/utils/Watchable;)V

    return-object v0
.end method

.method private setBoolean(IZ)V
    .locals 2
    .param p1, "flag"    # I
    .param p2, "value"    # Z

    .line 118
    if-eqz p2, :cond_0

    .line 119
    iget v0, p0, Lcom/android/server/pm/PackageSetting;->mBooleans:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/android/server/pm/PackageSetting;->mBooleans:I

    goto :goto_0

    .line 121
    :cond_0
    iget v0, p0, Lcom/android/server/pm/PackageSetting;->mBooleans:I

    not-int v1, p1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/pm/PackageSetting;->mBooleans:I

    .line 123
    :goto_0
    return-void
.end method

.method private static writeArchiveState(Landroid/util/proto/ProtoOutputStream;Lcom/android/server/pm/pkg/ArchiveState;)V
    .locals 11
    .param p0, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p1, "archiveState"    # Lcom/android/server/pm/pkg/ArchiveState;

    .line 1422
    if-nez p1, :cond_0

    .line 1423
    return-void

    .line 1425
    :cond_0
    const-wide v0, 0x10b0000000cL

    invoke-virtual {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 1426
    .local v0, "archiveStateToken":J
    invoke-virtual {p1}, Lcom/android/server/pm/pkg/ArchiveState;->getActivityInfos()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const-wide v4, 0x10900000002L

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/pkg/ArchiveState$ArchiveActivityInfo;

    .line 1427
    .local v3, "activityInfo":Lcom/android/server/pm/pkg/ArchiveState$ArchiveActivityInfo;
    const-wide v6, 0x20b00000001L

    invoke-virtual {p0, v6, v7}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v6

    .line 1429
    .local v6, "activityInfoToken":J
    invoke-virtual {v3}, Lcom/android/server/pm/pkg/ArchiveState$ArchiveActivityInfo;->getTitle()Ljava/lang/String;

    move-result-object v8

    const-wide v9, 0x10900000001L

    invoke-virtual {p0, v9, v10, v8}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 1430
    nop

    .line 1432
    invoke-virtual {v3}, Lcom/android/server/pm/pkg/ArchiveState$ArchiveActivityInfo;->getOriginalComponentName()Landroid/content/ComponentName;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v8

    .line 1430
    const-wide v9, 0x10900000004L

    invoke-virtual {p0, v9, v10, v8}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 1433
    invoke-virtual {v3}, Lcom/android/server/pm/pkg/ArchiveState$ArchiveActivityInfo;->getIconBitmap()Ljava/nio/file/Path;

    move-result-object v8

    if-eqz v8, :cond_1

    .line 1434
    nop

    .line 1435
    invoke-virtual {v3}, Lcom/android/server/pm/pkg/ArchiveState$ArchiveActivityInfo;->getIconBitmap()Ljava/nio/file/Path;

    move-result-object v8

    invoke-interface {v8}, Ljava/nio/file/Path;->toAbsolutePath()Ljava/nio/file/Path;

    move-result-object v8

    invoke-interface {v8}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1434
    invoke-virtual {p0, v4, v5, v8}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 1437
    :cond_1
    invoke-virtual {v3}, Lcom/android/server/pm/pkg/ArchiveState$ArchiveActivityInfo;->getMonochromeIconBitmap()Ljava/nio/file/Path;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 1438
    nop

    .line 1439
    invoke-virtual {v3}, Lcom/android/server/pm/pkg/ArchiveState$ArchiveActivityInfo;->getMonochromeIconBitmap()Ljava/nio/file/Path;

    move-result-object v4

    invoke-interface {v4}, Ljava/nio/file/Path;->toAbsolutePath()Ljava/nio/file/Path;

    move-result-object v4

    invoke-interface {v4}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1438
    const-wide v8, 0x10900000003L

    invoke-virtual {p0, v8, v9, v4}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 1441
    :cond_2
    invoke-virtual {p0, v6, v7}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 1442
    .end local v3    # "activityInfo":Lcom/android/server/pm/pkg/ArchiveState$ArchiveActivityInfo;
    .end local v6    # "activityInfoToken":J
    goto :goto_0

    .line 1444
    :cond_3
    nop

    .line 1445
    invoke-virtual {p1}, Lcom/android/server/pm/pkg/ArchiveState;->getInstallerTitle()Ljava/lang/String;

    move-result-object v2

    .line 1444
    invoke-virtual {p0, v4, v5, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 1446
    invoke-virtual {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 1447
    return-void
.end method


# virtual methods
.method addDisabledComponent(Ljava/lang/String;I)V
    .locals 2
    .param p1, "componentClassName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 1259
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, p2, v0, v1}, Lcom/android/server/pm/PackageSetting;->modifyUserStateComponents(IZZ)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    move-result-object v0

    .line 1260
    invoke-virtual {v0}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->getDisabledComponentsNoCopy()Lcom/android/server/utils/WatchedArraySet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/utils/WatchedArraySet;->add(Ljava/lang/Object;)Z

    .line 1261
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged()V

    .line 1262
    return-void
.end method

.method addEnabledComponent(Ljava/lang/String;I)V
    .locals 2
    .param p1, "componentClassName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 1265
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p2, v0, v1}, Lcom/android/server/pm/PackageSetting;->modifyUserStateComponents(IZZ)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    move-result-object v0

    .line 1266
    invoke-virtual {v0}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->getEnabledComponentsNoCopy()Lcom/android/server/utils/WatchedArraySet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/utils/WatchedArraySet;->add(Ljava/lang/Object;)Z

    .line 1267
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged()V

    .line 1268
    return-void
.end method

.method public addMimeTypes(Ljava/lang/String;Ljava/util/Set;)Lcom/android/server/pm/PackageSetting;
    .locals 2
    .param p1, "mimeGroup"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/android/server/pm/PackageSetting;"
        }
    .end annotation

    .line 1773
    .local p2, "mimeTypes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/server/pm/PackageSetting;->mimeGroups:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 1774
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/PackageSetting;->mimeGroups:Ljava/util/Map;

    .line 1777
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/PackageSetting;->mimeGroups:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 1778
    .local v0, "existingMimeTypes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-nez v0, :cond_1

    .line 1779
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    move-object v0, v1

    .line 1780
    iget-object v1, p0, Lcom/android/server/pm/PackageSetting;->mimeGroups:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1782
    :cond_1
    invoke-interface {v0, p2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 1783
    return-object p0
.end method

.method public addOldPath(Ljava/io/File;)Lcom/android/server/pm/PackageSetting;
    .locals 1
    .param p1, "path"    # Ljava/io/File;

    .line 1462
    iget-object v0, p0, Lcom/android/server/pm/PackageSetting;->mOldPaths:Ljava/util/LinkedHashSet;

    if-nez v0, :cond_0

    .line 1463
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/PackageSetting;->mOldPaths:Ljava/util/LinkedHashSet;

    .line 1465
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/PackageSetting;->mOldPaths:Ljava/util/LinkedHashSet;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 1466
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged()V

    .line 1467
    return-object p0
.end method

.method public addUsesLibraryFile(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 1640
    iget-object v0, p0, Lcom/android/server/pm/PackageSetting;->pkgState:Lcom/android/server/pm/pkg/PackageStateUnserialized;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/pkg/PackageStateUnserialized;->addUsesLibraryFile(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateUnserialized;

    .line 1641
    return-object p0
.end method

.method public addUsesLibraryInfo(Landroid/content/pm/SharedLibraryInfo;)Lcom/android/server/pm/PackageSetting;
    .locals 2
    .param p1, "value"    # Landroid/content/pm/SharedLibraryInfo;

    .line 1628
    iget-object v0, p0, Lcom/android/server/pm/PackageSetting;->pkgState:Lcom/android/server/pm/pkg/PackageStateUnserialized;

    new-instance v1, Lcom/android/server/pm/pkg/SharedLibraryWrapper;

    invoke-direct {v1, p1}, Lcom/android/server/pm/pkg/SharedLibraryWrapper;-><init>(Landroid/content/pm/SharedLibraryInfo;)V

    invoke-virtual {v0, v1}, Lcom/android/server/pm/pkg/PackageStateUnserialized;->addUsesLibraryInfo(Lcom/android/server/pm/pkg/SharedLibraryWrapper;)Lcom/android/server/pm/pkg/PackageStateUnserialized;

    .line 1629
    return-object p0
.end method

.method public copyPackageSetting(Lcom/android/server/pm/PackageSetting;Z)V
    .locals 4
    .param p1, "other"    # Lcom/android/server/pm/PackageSetting;
    .param p2, "sealedSnapshot"    # Z

    .line 820
    invoke-super {p0, p1}, Lcom/android/server/pm/SettingBase;->copySettingBase(Lcom/android/server/pm/SettingBase;)V

    .line 821
    iget v0, p1, Lcom/android/server/pm/PackageSetting;->mBooleans:I

    iput v0, p0, Lcom/android/server/pm/PackageSetting;->mBooleans:I

    .line 822
    iget v0, p1, Lcom/android/server/pm/PackageSetting;->mSharedUserAppId:I

    iput v0, p0, Lcom/android/server/pm/PackageSetting;->mSharedUserAppId:I

    .line 823
    iget v0, p1, Lcom/android/server/pm/PackageSetting;->mLoadingProgress:F

    iput v0, p0, Lcom/android/server/pm/PackageSetting;->mLoadingProgress:F

    .line 824
    iget-wide v0, p1, Lcom/android/server/pm/PackageSetting;->mLoadingCompletedTime:J

    iput-wide v0, p0, Lcom/android/server/pm/PackageSetting;->mLoadingCompletedTime:J

    .line 825
    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->legacyNativeLibraryPath:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/pm/PackageSetting;->legacyNativeLibraryPath:Ljava/lang/String;

    .line 826
    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->mName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/pm/PackageSetting;->mName:Ljava/lang/String;

    .line 827
    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->mRealName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/pm/PackageSetting;->mRealName:Ljava/lang/String;

    .line 828
    iget v0, p1, Lcom/android/server/pm/PackageSetting;->mAppId:I

    iput v0, p0, Lcom/android/server/pm/PackageSetting;->mAppId:I

    .line 829
    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    iput-object v0, p0, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    .line 830
    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->mPath:Ljava/io/File;

    iput-object v0, p0, Lcom/android/server/pm/PackageSetting;->mPath:Ljava/io/File;

    .line 831
    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->mPathString:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/pm/PackageSetting;->mPathString:Ljava/lang/String;

    .line 832
    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->mOldPaths:Ljava/util/LinkedHashSet;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/LinkedHashSet;

    iget-object v2, p1, Lcom/android/server/pm/PackageSetting;->mOldPaths:Ljava/util/LinkedHashSet;

    invoke-direct {v0, v2}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    :goto_0
    iput-object v0, p0, Lcom/android/server/pm/PackageSetting;->mOldPaths:Ljava/util/LinkedHashSet;

    .line 833
    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->mPrimaryCpuAbi:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/pm/PackageSetting;->mPrimaryCpuAbi:Ljava/lang/String;

    .line 834
    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->mSecondaryCpuAbi:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/pm/PackageSetting;->mSecondaryCpuAbi:Ljava/lang/String;

    .line 835
    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->mCpuAbiOverride:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/pm/PackageSetting;->mCpuAbiOverride:Ljava/lang/String;

    .line 836
    iget-wide v2, p1, Lcom/android/server/pm/PackageSetting;->mLastModifiedTime:J

    iput-wide v2, p0, Lcom/android/server/pm/PackageSetting;->mLastModifiedTime:J

    .line 837
    iget-wide v2, p1, Lcom/android/server/pm/PackageSetting;->lastUpdateTime:J

    iput-wide v2, p0, Lcom/android/server/pm/PackageSetting;->lastUpdateTime:J

    .line 838
    iget-wide v2, p1, Lcom/android/server/pm/PackageSetting;->versionCode:J

    iput-wide v2, p0, Lcom/android/server/pm/PackageSetting;->versionCode:J

    .line 839
    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    iput-object v0, p0, Lcom/android/server/pm/PackageSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    .line 840
    new-instance v0, Lcom/android/server/pm/PackageKeySetData;

    iget-object v2, p1, Lcom/android/server/pm/PackageSetting;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    invoke-direct {v0, v2}, Lcom/android/server/pm/PackageKeySetData;-><init>(Lcom/android/server/pm/PackageKeySetData;)V

    iput-object v0, p0, Lcom/android/server/pm/PackageSetting;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    .line 841
    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->installSource:Lcom/android/server/pm/InstallSource;

    iput-object v0, p0, Lcom/android/server/pm/PackageSetting;->installSource:Lcom/android/server/pm/InstallSource;

    .line 842
    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->volumeUuid:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/pm/PackageSetting;->volumeUuid:Ljava/lang/String;

    .line 843
    iget v0, p1, Lcom/android/server/pm/PackageSetting;->categoryOverride:I

    iput v0, p0, Lcom/android/server/pm/PackageSetting;->categoryOverride:I

    .line 844
    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->mDomainSetId:Ljava/util/UUID;

    iput-object v0, p0, Lcom/android/server/pm/PackageSetting;->mDomainSetId:Ljava/util/UUID;

    .line 847
    iget-boolean v0, p1, Lcom/android/server/pm/PackageSetting;->forceFull:Z

    iput-boolean v0, p0, Lcom/android/server/pm/PackageSetting;->forceFull:Z

    .line 849
    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->mAppMetadataFilePath:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/pm/PackageSetting;->mAppMetadataFilePath:Ljava/lang/String;

    .line 850
    iget v0, p1, Lcom/android/server/pm/PackageSetting;->mAppMetadataSource:I

    iput v0, p0, Lcom/android/server/pm/PackageSetting;->mAppMetadataSource:I

    .line 851
    iget v0, p1, Lcom/android/server/pm/PackageSetting;->mTargetSdkVersion:I

    iput v0, p0, Lcom/android/server/pm/PackageSetting;->mTargetSdkVersion:I

    .line 852
    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->mRestrictUpdateHash:[B

    if-nez v0, :cond_1

    .line 853
    move-object v0, v1

    goto :goto_1

    :cond_1
    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->mRestrictUpdateHash:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    :goto_1
    iput-object v0, p0, Lcom/android/server/pm/PackageSetting;->mRestrictUpdateHash:[B

    .line 854
    iget v0, p1, Lcom/android/server/pm/PackageSetting;->mBaseRevisionCode:I

    iput v0, p0, Lcom/android/server/pm/PackageSetting;->mBaseRevisionCode:I

    .line 855
    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->mSplitNames:[Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 856
    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->mSplitNames:[Ljava/lang/String;

    iget-object v2, p1, Lcom/android/server/pm/PackageSetting;->mSplitNames:[Ljava/lang/String;

    array-length v2, v2

    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    goto :goto_2

    :cond_2
    move-object v0, v1

    :goto_2
    iput-object v0, p0, Lcom/android/server/pm/PackageSetting;->mSplitNames:[Ljava/lang/String;

    .line 857
    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->mSplitRevisionCodes:[I

    if-eqz v0, :cond_3

    .line 858
    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->mSplitRevisionCodes:[I

    iget-object v2, p1, Lcom/android/server/pm/PackageSetting;->mSplitRevisionCodes:[I

    array-length v2, v2

    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    goto :goto_3

    :cond_3
    move-object v0, v1

    :goto_3
    iput-object v0, p0, Lcom/android/server/pm/PackageSetting;->mSplitRevisionCodes:[I

    .line 860
    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->usesSdkLibraries:[Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 861
    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->usesSdkLibraries:[Ljava/lang/String;

    iget-object v2, p1, Lcom/android/server/pm/PackageSetting;->usesSdkLibraries:[Ljava/lang/String;

    array-length v2, v2

    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    goto :goto_4

    .line 862
    :cond_4
    move-object v0, v1

    :goto_4
    iput-object v0, p0, Lcom/android/server/pm/PackageSetting;->usesSdkLibraries:[Ljava/lang/String;

    .line 863
    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->usesSdkLibrariesVersionsMajor:[J

    if-eqz v0, :cond_5

    .line 864
    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->usesSdkLibrariesVersionsMajor:[J

    iget-object v2, p1, Lcom/android/server/pm/PackageSetting;->usesSdkLibrariesVersionsMajor:[J

    array-length v2, v2

    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v0

    goto :goto_5

    .line 865
    :cond_5
    move-object v0, v1

    :goto_5
    iput-object v0, p0, Lcom/android/server/pm/PackageSetting;->usesSdkLibrariesVersionsMajor:[J

    .line 866
    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->usesSdkLibrariesOptional:[Z

    if-eqz v0, :cond_6

    .line 867
    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->usesSdkLibrariesOptional:[Z

    iget-object v2, p1, Lcom/android/server/pm/PackageSetting;->usesSdkLibrariesOptional:[Z

    array-length v2, v2

    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([ZI)[Z

    move-result-object v0

    goto :goto_6

    .line 868
    :cond_6
    move-object v0, v1

    :goto_6
    iput-object v0, p0, Lcom/android/server/pm/PackageSetting;->usesSdkLibrariesOptional:[Z

    .line 870
    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->usesStaticLibraries:[Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 871
    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->usesStaticLibraries:[Ljava/lang/String;

    iget-object v2, p1, Lcom/android/server/pm/PackageSetting;->usesStaticLibraries:[Ljava/lang/String;

    array-length v2, v2

    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    goto :goto_7

    .line 872
    :cond_7
    move-object v0, v1

    :goto_7
    iput-object v0, p0, Lcom/android/server/pm/PackageSetting;->usesStaticLibraries:[Ljava/lang/String;

    .line 873
    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->usesStaticLibrariesVersions:[J

    if-eqz v0, :cond_8

    .line 874
    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->usesStaticLibrariesVersions:[J

    iget-object v1, p1, Lcom/android/server/pm/PackageSetting;->usesStaticLibrariesVersions:[J

    array-length v1, v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v1

    goto :goto_8

    .line 875
    :cond_8
    nop

    :goto_8
    iput-object v1, p0, Lcom/android/server/pm/PackageSetting;->usesStaticLibrariesVersions:[J

    .line 876
    iget-object v0, p0, Lcom/android/server/pm/PackageSetting;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 877
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_9
    iget-object v1, p1, Lcom/android/server/pm/PackageSetting;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_a

    .line 878
    if-eqz p2, :cond_9

    .line 879
    iget-object v1, p0, Lcom/android/server/pm/PackageSetting;->mUserStates:Landroid/util/SparseArray;

    iget-object v2, p1, Lcom/android/server/pm/PackageSetting;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    iget-object v3, p1, Lcom/android/server/pm/PackageSetting;->mUserStates:Landroid/util/SparseArray;

    .line 880
    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/pkg/PackageUserStateImpl;

    invoke-virtual {v3}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->snapshot()Lcom/android/server/pm/pkg/PackageUserStateImpl;

    move-result-object v3

    .line 879
    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_a

    .line 882
    :cond_9
    iget-object v1, p1, Lcom/android/server/pm/PackageSetting;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/pkg/PackageUserStateImpl;

    .line 883
    .local v1, "userState":Lcom/android/server/pm/pkg/PackageUserStateImpl;
    invoke-virtual {v1, p0}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->setWatchable(Lcom/android/server/utils/Watchable;)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    .line 884
    iget-object v2, p0, Lcom/android/server/pm/PackageSetting;->mUserStates:Landroid/util/SparseArray;

    iget-object v3, p1, Lcom/android/server/pm/PackageSetting;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-virtual {v2, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 877
    .end local v1    # "userState":Lcom/android/server/pm/pkg/PackageUserStateImpl;
    :goto_a
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :cond_a
    nop

    .line 888
    .end local v0    # "i":I
    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->mimeGroups:Ljava/util/Map;

    invoke-direct {p0, v0}, Lcom/android/server/pm/PackageSetting;->copyMimeGroups(Ljava/util/Map;)V

    .line 889
    iget v0, p1, Lcom/android/server/pm/PackageSetting;->mPageSizeAppCompatFlags:I

    iput v0, p0, Lcom/android/server/pm/PackageSetting;->mPageSizeAppCompatFlags:I

    .line 891
    iget-object v0, p0, Lcom/android/server/pm/PackageSetting;->pkgState:Lcom/android/server/pm/pkg/PackageStateUnserialized;

    iget-object v1, p1, Lcom/android/server/pm/PackageSetting;->pkgState:Lcom/android/server/pm/pkg/PackageStateUnserialized;

    invoke-virtual {v0, v1}, Lcom/android/server/pm/pkg/PackageStateUnserialized;->updateFrom(Lcom/android/server/pm/pkg/PackageStateUnserialized;)V

    .line 892
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged()V

    .line 893
    return-void
.end method

.method disableComponentLPw(Ljava/lang/String;I)Z
    .locals 3
    .param p1, "componentClassName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 1282
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, p2, v0, v1}, Lcom/android/server/pm/PackageSetting;->modifyUserStateComponents(IZZ)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    move-result-object v0

    .line 1283
    .local v0, "state":Lcom/android/server/pm/pkg/PackageUserStateImpl;
    invoke-virtual {v0}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->getEnabledComponentsNoCopy()Lcom/android/server/utils/WatchedArraySet;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1284
    invoke-virtual {v0}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->getEnabledComponentsNoCopy()Lcom/android/server/utils/WatchedArraySet;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/utils/WatchedArraySet;->remove(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0

    :cond_0
    nop

    .line 1285
    .local v1, "changed":Z
    :goto_0
    invoke-virtual {v0}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->getDisabledComponentsNoCopy()Lcom/android/server/utils/WatchedArraySet;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/server/utils/WatchedArraySet;->add(Ljava/lang/Object;)Z

    move-result v2

    or-int/2addr v1, v2

    .line 1286
    if-eqz v1, :cond_1

    .line 1287
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged()V

    .line 1289
    :cond_1
    return v1
.end method

.method public dumpDebug(Landroid/util/proto/ProtoOutputStream;JLjava/util/List;Lcom/android/server/pm/permission/LegacyPermissionDataProvider;)V
    .locals 12
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J
    .param p5, "dataProvider"    # Lcom/android/server/pm/permission/LegacyPermissionDataProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/proto/ProtoOutputStream;",
            "J",
            "Ljava/util/List<",
            "Landroid/content/pm/UserInfo;",
            ">;",
            "Lcom/android/server/pm/permission/LegacyPermissionDataProvider;",
            ")V"
        }
    .end annotation

    .line 343
    .local p4, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-virtual/range {p1 .. p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 344
    .local v0, "packageToken":J
    iget-object v2, p0, Lcom/android/server/pm/PackageSetting;->mRealName:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/pm/PackageSetting;->mRealName:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/android/server/pm/PackageSetting;->mName:Ljava/lang/String;

    :goto_0
    const-wide v3, 0x10900000001L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 345
    iget v2, p0, Lcom/android/server/pm/PackageSetting;->mAppId:I

    const-wide v5, 0x10500000002L

    invoke-virtual {p1, v5, v6, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 346
    const-wide v7, 0x10500000003L

    iget-wide v9, p0, Lcom/android/server/pm/PackageSetting;->versionCode:J

    invoke-virtual {p1, v7, v8, v9, v10}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 347
    const-wide v7, 0x10300000006L

    iget-wide v9, p0, Lcom/android/server/pm/PackageSetting;->lastUpdateTime:J

    invoke-virtual {p1, v7, v8, v9, v10}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 348
    iget-object v2, p0, Lcom/android/server/pm/PackageSetting;->installSource:Lcom/android/server/pm/InstallSource;

    iget-object v2, v2, Lcom/android/server/pm/InstallSource;->mInstallerPackageName:Ljava/lang/String;

    const-wide v7, 0x10900000007L

    invoke-virtual {p1, v7, v8, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 350
    iget-object v2, p0, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    if-eqz v2, :cond_2

    .line 351
    iget-object v2, p0, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    invoke-interface {v2}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;->getVersionName()Ljava/lang/String;

    move-result-object v2

    const-wide v7, 0x10900000004L

    invoke-virtual {p1, v7, v8, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 353
    const-wide v7, 0x20b00000008L

    invoke-virtual {p1, v7, v8}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v9

    .line 354
    .local v9, "splitToken":J
    const-string v2, "base"

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 355
    iget-object v2, p0, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    invoke-interface {v2}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;->getBaseRevisionCode()I

    move-result v2

    invoke-virtual {p1, v5, v6, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 356
    invoke-virtual {p1, v9, v10}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 358
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    iget-object v11, p0, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    invoke-interface {v11}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;->getSplitNames()[Ljava/lang/String;

    move-result-object v11

    array-length v11, v11

    if-ge v2, v11, :cond_1

    .line 359
    invoke-virtual {p1, v7, v8}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v9

    .line 360
    iget-object v11, p0, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    invoke-interface {v11}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;->getSplitNames()[Ljava/lang/String;

    move-result-object v11

    aget-object v11, v11, v2

    invoke-virtual {p1, v3, v4, v11}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 361
    iget-object v11, p0, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    .line 362
    invoke-interface {v11}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;->getSplitRevisionCodes()[I

    move-result-object v11

    aget v11, v11, v2

    .line 361
    invoke-virtual {p1, v5, v6, v11}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 363
    invoke-virtual {p1, v9, v10}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 358
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    nop

    .line 366
    .end local v2    # "i":I
    const-wide v5, 0x10b0000000aL

    invoke-virtual {p1, v5, v6}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v5

    .line 367
    .local v5, "sourceToken":J
    iget-object v2, p0, Lcom/android/server/pm/PackageSetting;->installSource:Lcom/android/server/pm/InstallSource;

    iget-object v2, v2, Lcom/android/server/pm/InstallSource;->mInitiatingPackageName:Ljava/lang/String;

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 369
    iget-object v2, p0, Lcom/android/server/pm/PackageSetting;->installSource:Lcom/android/server/pm/InstallSource;

    iget-object v2, v2, Lcom/android/server/pm/InstallSource;->mOriginatingPackageName:Ljava/lang/String;

    const-wide v3, 0x10900000002L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 371
    iget-object v2, p0, Lcom/android/server/pm/PackageSetting;->installSource:Lcom/android/server/pm/InstallSource;

    iget-object v2, v2, Lcom/android/server/pm/InstallSource;->mUpdateOwnerPackageName:Ljava/lang/String;

    const-wide v3, 0x10900000003L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 373
    invoke-virtual {p1, v5, v6}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 375
    .end local v5    # "sourceToken":J
    .end local v9    # "splitToken":J
    :cond_2
    const-wide v2, 0x10800000002L

    invoke-virtual {p0}, Lcom/android/server/pm/PackageSetting;->isLoading()Z

    move-result v4

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 376
    const-wide v2, 0x20b00000009L

    invoke-virtual {p0, p1, v2, v3}, Lcom/android/server/pm/PackageSetting;->writeUsersInfoToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 377
    const-wide v6, 0x20b0000000cL

    move-object v4, p0

    move-object v5, p1

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/pm/PackageSetting;->writePackageUserPermissionsProto(Landroid/util/proto/ProtoOutputStream;JLjava/util/List;Lcom/android/server/pm/permission/LegacyPermissionDataProvider;)V

    .line 378
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 379
    return-void
.end method

.method enableComponentLPw(Ljava/lang/String;I)Z
    .locals 3
    .param p1, "componentClassName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 1271
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, p2, v1, v0}, Lcom/android/server/pm/PackageSetting;->modifyUserStateComponents(IZZ)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    move-result-object v0

    .line 1272
    .local v0, "state":Lcom/android/server/pm/pkg/PackageUserStateImpl;
    invoke-virtual {v0}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->getDisabledComponentsNoCopy()Lcom/android/server/utils/WatchedArraySet;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1273
    invoke-virtual {v0}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->getDisabledComponentsNoCopy()Lcom/android/server/utils/WatchedArraySet;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/utils/WatchedArraySet;->remove(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0

    :cond_0
    nop

    .line 1274
    .local v1, "changed":Z
    :goto_0
    invoke-virtual {v0}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->getEnabledComponentsNoCopy()Lcom/android/server/utils/WatchedArraySet;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/server/utils/WatchedArraySet;->add(Ljava/lang/Object;)Z

    move-result v2

    or-int/2addr v1, v2

    .line 1275
    if-eqz v1, :cond_1

    .line 1276
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged()V

    .line 1278
    :cond_1
    return v1
.end method

.method public getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;
    .locals 1

    .line 1581
    invoke-virtual {p0}, Lcom/android/server/pm/PackageSetting;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v0

    return-object v0
.end method

.method public getApexModuleName()Ljava/lang/String;
    .locals 1

    .line 1668
    iget-object v0, p0, Lcom/android/server/pm/PackageSetting;->pkgState:Lcom/android/server/pm/pkg/PackageStateUnserialized;

    invoke-virtual {v0}, Lcom/android/server/pm/pkg/PackageStateUnserialized;->getApexModuleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAppId()I
    .locals 1

    .line 1977
    iget v0, p0, Lcom/android/server/pm/PackageSetting;->mAppId:I

    return v0
.end method

.method public getAppMetadataFilePath()Ljava/lang/String;
    .locals 1

    .line 2079
    iget-object v0, p0, Lcom/android/server/pm/PackageSetting;->mAppMetadataFilePath:Ljava/lang/String;

    return-object v0
.end method

.method public getAppMetadataSource()I
    .locals 1

    .line 2084
    iget v0, p0, Lcom/android/server/pm/PackageSetting;->mAppMetadataSource:I

    return v0
.end method

.method public getBaseRevisionCode()I
    .locals 1

    .line 646
    iget v0, p0, Lcom/android/server/pm/PackageSetting;->mBaseRevisionCode:I

    return v0
.end method

.method public getCategoryOverride()I
    .locals 1

    .line 2064
    iget v0, p0, Lcom/android/server/pm/PackageSetting;->categoryOverride:I

    return v0
.end method

.method getCeDataInode(I)J
    .locals 2
    .param p1, "userId"    # I

    .line 1042
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageSetting;->readUserState(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/pm/pkg/PackageUserState;->getCeDataInode()J

    move-result-wide v0

    return-wide v0
.end method

.method public getCpuAbiOverride()Ljava/lang/String;
    .locals 1

    .line 2023
    iget-object v0, p0, Lcom/android/server/pm/PackageSetting;->mCpuAbiOverride:Ljava/lang/String;

    return-object v0
.end method

.method getCurrentEnabledStateLPr(Ljava/lang/String;I)I
    .locals 2
    .param p1, "componentName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 1328
    invoke-virtual {p0, p2}, Lcom/android/server/pm/PackageSetting;->readUserState(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v0

    .line 1329
    .local v0, "state":Lcom/android/server/pm/pkg/PackageUserStateInternal;
    invoke-interface {v0}, Lcom/android/server/pm/pkg/PackageUserStateInternal;->getEnabledComponentsNoCopy()Lcom/android/server/utils/WatchedArraySet;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1330
    invoke-interface {v0}, Lcom/android/server/pm/pkg/PackageUserStateInternal;->getEnabledComponentsNoCopy()Lcom/android/server/utils/WatchedArraySet;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/utils/WatchedArraySet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1331
    const/4 v1, 0x1

    return v1

    .line 1332
    :cond_0
    invoke-interface {v0}, Lcom/android/server/pm/pkg/PackageUserStateInternal;->getDisabledComponentsNoCopy()Lcom/android/server/utils/WatchedArraySet;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1333
    invoke-interface {v0}, Lcom/android/server/pm/pkg/PackageUserStateInternal;->getDisabledComponentsNoCopy()Lcom/android/server/utils/WatchedArraySet;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/utils/WatchedArraySet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1334
    const/4 v1, 0x2

    return v1

    .line 1336
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method getDeDataInode(I)J
    .locals 2
    .param p1, "userId"    # I

    .line 1046
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageSetting;->readUserState(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/pm/pkg/PackageUserState;->getDeDataInode()J

    move-result-wide v0

    return-wide v0
.end method

.method getDisabledComponents(I)Lcom/android/server/utils/WatchedArraySet;
    .locals 1
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/android/server/utils/WatchedArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1213
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageSetting;->readUserState(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/pm/pkg/PackageUserStateInternal;->getDisabledComponentsNoCopy()Lcom/android/server/utils/WatchedArraySet;

    move-result-object v0

    return-object v0
.end method

.method getDistractionFlags(I)I
    .locals 1
    .param p1, "userId"    # I

    .line 1093
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageSetting;->readUserState(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/pm/pkg/PackageUserState;->getDistractionFlags()I

    move-result v0

    return v0
.end method

.method public getDomainSetId()Ljava/util/UUID;
    .locals 1

    .line 2074
    iget-object v0, p0, Lcom/android/server/pm/PackageSetting;->mDomainSetId:Ljava/util/UUID;

    return-object v0
.end method

.method getEnabled(I)I
    .locals 1
    .param p1, "userId"    # I

    .line 932
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageSetting;->readUserState(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/pm/pkg/PackageUserState;->getEnabledState()I

    move-result v0

    return v0
.end method

.method getEnabledComponents(I)Lcom/android/server/utils/WatchedArraySet;
    .locals 1
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/android/server/utils/WatchedArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1209
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageSetting;->readUserState(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/pm/pkg/PackageUserStateInternal;->getEnabledComponentsNoCopy()Lcom/android/server/utils/WatchedArraySet;

    move-result-object v0

    return-object v0
.end method

.method getHidden(I)Z
    .locals 1
    .param p1, "userId"    # I

    .line 1084
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageSetting;->readUserState(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/pm/pkg/PackageUserState;->isHidden()Z

    move-result v0

    return v0
.end method

.method public getHiddenApiEnforcementPolicy()I
    .locals 1

    .line 1835
    invoke-virtual {p0}, Lcom/android/server/pm/PackageSetting;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->getHiddenApiEnforcementPolicy(Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/pm/pkg/PackageStateInternal;)I

    move-result v0

    return v0
.end method

.method getInstallReason(I)I
    .locals 1
    .param p1, "userId"    # I

    .line 966
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageSetting;->readUserState(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/pm/pkg/PackageUserState;->getInstallReason()I

    move-result v0

    return v0
.end method

.method public getInstallSource()Lcom/android/server/pm/InstallSource;
    .locals 1

    .line 2048
    iget-object v0, p0, Lcom/android/server/pm/PackageSetting;->installSource:Lcom/android/server/pm/InstallSource;

    return-object v0
.end method

.method getInstalled(I)Z
    .locals 1
    .param p1, "userId"    # I

    .line 946
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageSetting;->readUserState(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/pm/pkg/PackageUserState;->isInstalled()Z

    move-result v0

    return v0
.end method

.method public getInstantApp(I)Z
    .locals 1
    .param p1, "userId"    # I

    .line 1102
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageSetting;->readUserState(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/pm/pkg/PackageUserState;->isInstantApp()Z

    move-result v0

    return v0
.end method

.method public getKeySetData()Lcom/android/server/pm/PackageKeySetData;
    .locals 1

    .line 2043
    iget-object v0, p0, Lcom/android/server/pm/PackageSetting;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    return-object v0
.end method

.method public getLastModifiedTime()J
    .locals 2

    .line 2028
    iget-wide v0, p0, Lcom/android/server/pm/PackageSetting;->mLastModifiedTime:J

    return-wide v0
.end method

.method public getLastPackageUsageTime()[J
    .locals 1

    .line 1652
    iget-object v0, p0, Lcom/android/server/pm/PackageSetting;->pkgState:Lcom/android/server/pm/pkg/PackageStateUnserialized;

    invoke-virtual {v0}, Lcom/android/server/pm/pkg/PackageStateUnserialized;->getLastPackageUsageTimeInMills()[J

    move-result-object v0

    return-object v0
.end method

.method public getLastUpdateTime()J
    .locals 2

    .line 2033
    iget-wide v0, p0, Lcom/android/server/pm/PackageSetting;->lastUpdateTime:J

    return-wide v0
.end method

.method public getLegacyNativeLibraryPath()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1962
    iget-object v0, p0, Lcom/android/server/pm/PackageSetting;->legacyNativeLibraryPath:Ljava/lang/String;

    return-object v0
.end method

.method public getLegacyPermissionState()Lcom/android/server/pm/permission/LegacyPermissionState;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 757
    invoke-super {p0}, Lcom/android/server/pm/SettingBase;->getLegacyPermissionState()Lcom/android/server/pm/permission/LegacyPermissionState;

    move-result-object v0

    return-object v0
.end method

.method public getLoadingCompletedTime()J
    .locals 2

    .line 2018
    iget-wide v0, p0, Lcom/android/server/pm/PackageSetting;->mLoadingCompletedTime:J

    return-wide v0
.end method

.method public getLoadingProgress()F
    .locals 1

    .line 2013
    iget v0, p0, Lcom/android/server/pm/PackageSetting;->mLoadingProgress:F

    return v0
.end method

.method public getMimeGroups()Ljava/util/Map;
    .locals 1
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

    .line 1568
    iget-object v0, p0, Lcom/android/server/pm/PackageSetting;->mimeGroups:Ljava/util/Map;

    invoke-static {v0}, Lcom/android/internal/util/CollectionUtils;->isEmpty(Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    goto :goto_0

    .line 1569
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/PackageSetting;->mimeGroups:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    .line 1568
    :goto_0
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1967
    iget-object v0, p0, Lcom/android/server/pm/PackageSetting;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getNotInstalledUserIds()[I
    .locals 4

    .line 1346
    iget-object v0, p0, Lcom/android/server/pm/PackageSetting;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 1347
    .local v0, "userStateCount":I
    new-instance v1, Landroid/util/IntArray;

    invoke-direct {v1, v0}, Landroid/util/IntArray;-><init>(I)V

    .line 1348
    .local v1, "notInstalledUsers":Landroid/util/IntArray;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 1349
    iget-object v3, p0, Lcom/android/server/pm/PackageSetting;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/pkg/PackageUserStateImpl;

    invoke-virtual {v3}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->isInstalled()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1350
    iget-object v3, p0, Lcom/android/server/pm/PackageSetting;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/util/IntArray;->add(I)V

    .line 1348
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    nop

    .line 1353
    .end local v2    # "i":I
    invoke-virtual {v1}, Landroid/util/IntArray;->toArray()[I

    move-result-object v2

    return-object v2
.end method

.method getNotLaunched(I)Z
    .locals 1
    .param p1, "userId"    # I

    .line 1075
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageSetting;->readUserState(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/pm/pkg/PackageUserState;->isNotLaunched()Z

    move-result v0

    return v0
.end method

.method public getOldPaths()Ljava/util/LinkedHashSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedHashSet<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 2008
    iget-object v0, p0, Lcom/android/server/pm/PackageSetting;->mOldPaths:Ljava/util/LinkedHashSet;

    return-object v0
.end method

.method public bridge synthetic getOldPaths()Ljava/util/Set;
    .locals 1

    .line 90
    invoke-virtual {p0}, Lcom/android/server/pm/PackageSetting;->getOldPaths()Ljava/util/LinkedHashSet;

    move-result-object v0

    return-object v0
.end method

.method public getOrCreateUserState(I)Lcom/android/server/pm/pkg/PackageUserStateImpl;
    .locals 2
    .param p1, "userId"    # I

    .line 907
    iget-object v0, p0, Lcom/android/server/pm/PackageSetting;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/pkg/PackageUserStateImpl;

    .line 908
    .local v0, "state":Lcom/android/server/pm/pkg/PackageUserStateImpl;
    if-nez v0, :cond_0

    .line 909
    new-instance v1, Lcom/android/server/pm/pkg/PackageUserStateImpl;

    invoke-direct {v1, p0}, Lcom/android/server/pm/pkg/PackageUserStateImpl;-><init>(Lcom/android/server/utils/Watchable;)V

    move-object v0, v1

    .line 910
    iget-object v1, p0, Lcom/android/server/pm/PackageSetting;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 912
    :cond_0
    return-object v0
.end method

.method getOverlayPaths(I)Landroid/content/pm/overlay/OverlayPaths;
    .locals 1
    .param p1, "userId"    # I

    .line 985
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageSetting;->readUserState(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/pm/pkg/PackageUserState;->getOverlayPaths()Landroid/content/pm/overlay/OverlayPaths;

    move-result-object v0

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .line 1575
    iget-object v0, p0, Lcom/android/server/pm/PackageSetting;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getPageSizeAppCompatFlags()I
    .locals 1

    .line 1708
    iget v0, p0, Lcom/android/server/pm/PackageSetting;->mPageSizeAppCompatFlags:I

    return v0
.end method

.method public getPageSizeCompatWarningMessage(Landroid/content/Context;)Ljava/lang/String;
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .line 1906
    iget v0, p0, Lcom/android/server/pm/PackageSetting;->mPageSizeAppCompatFlags:I

    and-int/lit8 v0, v0, 0x20

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 1908
    .local v0, "manifestOverrideEnabled":Z
    :goto_0
    iget v3, p0, Lcom/android/server/pm/PackageSetting;->mPageSizeAppCompatFlags:I

    and-int/lit8 v3, v3, 0x8

    if-eqz v3, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    move v3, v1

    .line 1910
    .local v3, "settingsOverrideEnabled":Z
    :goto_1
    iget v4, p0, Lcom/android/server/pm/PackageSetting;->mPageSizeAppCompatFlags:I

    and-int/lit8 v4, v4, 0x10

    if-eqz v4, :cond_2

    move v4, v2

    goto :goto_2

    :cond_2
    move v4, v1

    .line 1912
    .local v4, "settingsOverrideDisabled":Z
    :goto_2
    const/4 v5, 0x0

    if-nez v0, :cond_3

    if-nez v3, :cond_3

    if-eqz v4, :cond_4

    :cond_3
    goto :goto_4

    .line 1916
    :cond_4
    iget v6, p0, Lcom/android/server/pm/PackageSetting;->mPageSizeAppCompatFlags:I

    and-int/lit8 v6, v6, 0x2

    if-eqz v6, :cond_5

    move v6, v2

    goto :goto_3

    :cond_5
    move v6, v1

    .line 1918
    .local v6, "uncompressedLibsNotAligned":Z
    :goto_3
    iget v7, p0, Lcom/android/server/pm/PackageSetting;->mPageSizeAppCompatFlags:I

    and-int/lit8 v7, v7, 0x4

    if-eqz v7, :cond_6

    move v1, v2

    .line 1921
    .local v1, "elfNotAligned":Z
    :cond_6
    if-eqz v6, :cond_7

    if-eqz v1, :cond_7

    .line 1922
    const v2, 0x1040706

    invoke-virtual {p1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 1924
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1922
    return-object v2

    .line 1927
    :cond_7
    if-eqz v6, :cond_8

    .line 1928
    const v2, 0x1040707

    invoke-virtual {p1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 1929
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1928
    return-object v2

    .line 1932
    :cond_8
    if-eqz v1, :cond_9

    .line 1933
    const v2, 0x1040708

    invoke-virtual {p1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 1934
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1933
    return-object v2

    .line 1937
    :cond_9
    return-object v5

    .line 1913
    .end local v1    # "elfNotAligned":Z
    .end local v6    # "uncompressedLibsNotAligned":Z
    :goto_4
    return-object v5
.end method

.method public getPath()Ljava/io/File;
    .locals 1

    .line 1998
    iget-object v0, p0, Lcom/android/server/pm/PackageSetting;->mPath:Ljava/io/File;

    return-object v0
.end method

.method public getPathString()Ljava/lang/String;
    .locals 1

    .line 2003
    iget-object v0, p0, Lcom/android/server/pm/PackageSetting;->mPathString:Ljava/lang/String;

    return-object v0
.end method

.method public getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;
    .locals 1

    .line 1990
    iget-object v0, p0, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    return-object v0
.end method

.method public getPkgState()Lcom/android/server/pm/pkg/PackageStateUnserialized;
    .locals 1

    .line 2069
    iget-object v0, p0, Lcom/android/server/pm/PackageSetting;->pkgState:Lcom/android/server/pm/pkg/PackageStateUnserialized;

    return-object v0
.end method

.method public getPrimaryCpuAbi()Ljava/lang/String;
    .locals 1

    .line 1795
    iget-object v0, p0, Lcom/android/server/pm/PackageSetting;->mPrimaryCpuAbi:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    if-eqz v0, :cond_0

    .line 1796
    iget-object v0, p0, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    invoke-static {v0}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->getRawPrimaryCpuAbi(Lcom/android/server/pm/pkg/AndroidPackage;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1799
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/PackageSetting;->mPrimaryCpuAbi:Ljava/lang/String;

    return-object v0
.end method

.method public getPrimaryCpuAbiLegacy()Ljava/lang/String;
    .locals 1

    .line 1824
    iget-object v0, p0, Lcom/android/server/pm/PackageSetting;->mPrimaryCpuAbi:Ljava/lang/String;

    return-object v0
.end method

.method getPrivacyHidden(I)Z
    .locals 1
    .param p1, "userId"    # I

    .line 1122
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageSetting;->readUserState(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/pm/pkg/PackageUserStateInternal;->isPrivacyHidden()Z

    move-result v0

    return v0
.end method

.method public getRealName()Ljava/lang/String;
    .locals 1

    .line 1972
    iget-object v0, p0, Lcom/android/server/pm/PackageSetting;->mRealName:Ljava/lang/String;

    return-object v0
.end method

.method public getRestrictUpdateHash()[B
    .locals 1

    .line 2094
    iget-object v0, p0, Lcom/android/server/pm/PackageSetting;->mRestrictUpdateHash:[B

    return-object v0
.end method

.method public getSeInfo()Ljava/lang/String;
    .locals 2

    .line 1814
    invoke-virtual {p0}, Lcom/android/server/pm/PackageSetting;->getTransientState()Lcom/android/server/pm/pkg/PackageStateUnserialized;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/pm/pkg/PackageStateUnserialized;->getOverrideSeInfo()Ljava/lang/String;

    move-result-object v0

    .line 1815
    .local v0, "overrideSeInfo":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1816
    return-object v0

    .line 1819
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/pm/PackageSetting;->getTransientState()Lcom/android/server/pm/pkg/PackageStateUnserialized;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/pm/pkg/PackageStateUnserialized;->getSeInfo()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getSecondaryCpuAbi()Ljava/lang/String;
    .locals 1

    .line 1804
    iget-object v0, p0, Lcom/android/server/pm/PackageSetting;->mSecondaryCpuAbi:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    if-eqz v0, :cond_0

    .line 1805
    iget-object v0, p0, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    invoke-static {v0}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->getRawSecondaryCpuAbi(Lcom/android/server/pm/pkg/AndroidPackage;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1808
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/PackageSetting;->mSecondaryCpuAbi:Ljava/lang/String;

    return-object v0
.end method

.method public getSecondaryCpuAbiLegacy()Ljava/lang/String;
    .locals 1

    .line 1829
    iget-object v0, p0, Lcom/android/server/pm/PackageSetting;->mSecondaryCpuAbi:Ljava/lang/String;

    return-object v0
.end method

.method public getSharedLibraryDependencies()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/server/pm/pkg/SharedLibrary;",
            ">;"
        }
    .end annotation

    .line 1623
    iget-object v0, p0, Lcom/android/server/pm/PackageSetting;->pkgState:Lcom/android/server/pm/pkg/PackageStateUnserialized;

    invoke-virtual {v0}, Lcom/android/server/pm/pkg/PackageStateUnserialized;->getUsesLibraryInfos()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSharedUserAppId()I
    .locals 1

    .line 583
    iget v0, p0, Lcom/android/server/pm/PackageSetting;->mSharedUserAppId:I

    return v0
.end method

.method public getSignatures()Lcom/android/server/pm/PackageSignatures;
    .locals 1

    .line 2038
    iget-object v0, p0, Lcom/android/server/pm/PackageSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    return-object v0
.end method

.method public getSigningDetails()Landroid/content/pm/SigningDetails;
    .locals 1

    .line 809
    iget-object v0, p0, Lcom/android/server/pm/PackageSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    iget-object v0, v0, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/SigningDetails;

    return-object v0
.end method

.method public getSigningInfo()Landroid/content/pm/SigningInfo;
    .locals 2

    .line 1586
    new-instance v0, Landroid/content/pm/SigningInfo;

    iget-object v1, p0, Lcom/android/server/pm/PackageSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    iget-object v1, v1, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/SigningDetails;

    invoke-direct {v0, v1}, Landroid/content/pm/SigningInfo;-><init>(Landroid/content/pm/SigningDetails;)V

    return-object v0
.end method

.method public getSplashScreenTheme(I)Ljava/lang/String;
    .locals 1
    .param p1, "userId"    # I

    .line 1510
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageSetting;->readUserState(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/pm/pkg/PackageUserState;->getSplashScreenTheme()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSplitNames()[Ljava/lang/String;
    .locals 1

    .line 663
    iget-object v0, p0, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    if-eqz v0, :cond_0

    .line 664
    iget-object v0, p0, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    invoke-interface {v0}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;->getSplitNames()[Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 666
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/PackageSetting;->mSplitNames:[Ljava/lang/String;

    if-nez v0, :cond_1

    sget-object v0, Llibcore/util/EmptyArray;->STRING:[Ljava/lang/String;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/server/pm/PackageSetting;->mSplitNames:[Ljava/lang/String;

    :goto_0
    return-object v0
.end method

.method public getSplitRevisionCodes()[I
    .locals 1

    .line 683
    iget-object v0, p0, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    if-eqz v0, :cond_0

    .line 684
    iget-object v0, p0, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    invoke-interface {v0}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;->getSplitRevisionCodes()[I

    move-result-object v0

    return-object v0

    .line 686
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/PackageSetting;->mSplitRevisionCodes:[I

    if-nez v0, :cond_1

    sget-object v0, Llibcore/util/EmptyArray;->INT:[I

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/server/pm/PackageSetting;->mSplitRevisionCodes:[I

    :goto_0
    return-object v0
.end method

.method public getStateForUser(Landroid/os/UserHandle;)Lcom/android/server/pm/pkg/PackageUserState;
    .locals 2
    .param p1, "user"    # Landroid/os/UserHandle;

    .line 1789
    invoke-virtual {p0}, Lcom/android/server/pm/PackageSetting;->getUserStates()Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/pkg/PackageUserState;

    .line 1790
    .local v0, "userState":Lcom/android/server/pm/pkg/PackageUserState;
    if-nez v0, :cond_0

    sget-object v1, Lcom/android/server/pm/pkg/PackageUserState;->DEFAULT:Lcom/android/server/pm/pkg/PackageUserState;

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    return-object v1
.end method

.method getStopped(I)Z
    .locals 1
    .param p1, "userId"    # I

    .line 1060
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageSetting;->readUserState(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/pm/pkg/PackageUserState;->isStopped()Z

    move-result v0

    return v0
.end method

.method public getTargetSdkVersion()I
    .locals 1

    .line 2089
    iget v0, p0, Lcom/android/server/pm/PackageSetting;->mTargetSdkVersion:I

    return v0
.end method

.method public getTransientState()Lcom/android/server/pm/pkg/PackageStateUnserialized;
    .locals 1

    .line 1764
    iget-object v0, p0, Lcom/android/server/pm/PackageSetting;->pkgState:Lcom/android/server/pm/pkg/PackageStateUnserialized;

    return-object v0
.end method

.method getUninstallReason(I)I
    .locals 1
    .param p1, "userId"    # I

    .line 975
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageSetting;->readUserState(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/pm/pkg/PackageUserState;->getUninstallReason()I

    move-result v0

    return v0
.end method

.method public getUserStates()Landroid/util/SparseArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "+",
            "Lcom/android/server/pm/pkg/PackageUserStateInternal;",
            ">;"
        }
    .end annotation

    .line 1769
    iget-object v0, p0, Lcom/android/server/pm/PackageSetting;->mUserStates:Landroid/util/SparseArray;

    return-object v0
.end method

.method public getUsesLibraryFiles()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1635
    iget-object v0, p0, Lcom/android/server/pm/PackageSetting;->pkgState:Lcom/android/server/pm/pkg/PackageStateUnserialized;

    invoke-virtual {v0}, Lcom/android/server/pm/pkg/PackageStateUnserialized;->getUsesLibraryFiles()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getUsesSdkLibraries()[Ljava/lang/String;
    .locals 1

    .line 1592
    iget-object v0, p0, Lcom/android/server/pm/PackageSetting;->usesSdkLibraries:[Ljava/lang/String;

    if-nez v0, :cond_0

    sget-object v0, Llibcore/util/EmptyArray;->STRING:[Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/PackageSetting;->usesSdkLibraries:[Ljava/lang/String;

    :goto_0
    return-object v0
.end method

.method public getUsesSdkLibrariesOptional()[Z
    .locals 1

    .line 1605
    iget-object v0, p0, Lcom/android/server/pm/PackageSetting;->usesSdkLibrariesOptional:[Z

    if-nez v0, :cond_0

    sget-object v0, Llibcore/util/EmptyArray;->BOOLEAN:[Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/PackageSetting;->usesSdkLibrariesOptional:[Z

    :goto_0
    return-object v0
.end method

.method public getUsesSdkLibrariesVersionsMajor()[J
    .locals 1

    .line 1598
    iget-object v0, p0, Lcom/android/server/pm/PackageSetting;->usesSdkLibrariesVersionsMajor:[J

    if-nez v0, :cond_0

    sget-object v0, Llibcore/util/EmptyArray;->LONG:[J

    goto :goto_0

    .line 1599
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/PackageSetting;->usesSdkLibrariesVersionsMajor:[J

    .line 1598
    :goto_0
    return-object v0
.end method

.method public getUsesStaticLibraries()[Ljava/lang/String;
    .locals 1

    .line 1611
    iget-object v0, p0, Lcom/android/server/pm/PackageSetting;->usesStaticLibraries:[Ljava/lang/String;

    if-nez v0, :cond_0

    sget-object v0, Llibcore/util/EmptyArray;->STRING:[Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/PackageSetting;->usesStaticLibraries:[Ljava/lang/String;

    :goto_0
    return-object v0
.end method

.method public getUsesStaticLibrariesVersions()[J
    .locals 1

    .line 1617
    iget-object v0, p0, Lcom/android/server/pm/PackageSetting;->usesStaticLibrariesVersions:[J

    if-nez v0, :cond_0

    sget-object v0, Llibcore/util/EmptyArray;->LONG:[J

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/PackageSetting;->usesStaticLibrariesVersions:[J

    :goto_0
    return-object v0
.end method

.method public getVersionCode()J
    .locals 2

    .line 1559
    iget-wide v0, p0, Lcom/android/server/pm/PackageSetting;->versionCode:J

    return-wide v0
.end method

.method getVirtualPreload(I)Z
    .locals 1
    .param p1, "userId"    # I

    .line 1111
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageSetting;->readUserState(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/pm/pkg/PackageUserState;->isVirtualPreload()Z

    move-result v0

    return v0
.end method

.method public getVolumeUuid()Ljava/lang/String;
    .locals 1

    .line 2056
    iget-object v0, p0, Lcom/android/server/pm/PackageSetting;->volumeUuid:Ljava/lang/String;

    return-object v0
.end method

.method hasDataOnAnyOtherUser([II)Z
    .locals 6
    .param p1, "allUsers"    # [I
    .param p2, "currentUser"    # I

    .line 1009
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    aget v3, p1, v2

    .line 1010
    .local v3, "user":I
    if-ne v3, p2, :cond_0

    .line 1011
    goto :goto_1

    .line 1013
    :cond_0
    invoke-virtual {p0, v3}, Lcom/android/server/pm/PackageSetting;->readUserState(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v4

    .line 1014
    .local v4, "userState":Lcom/android/server/pm/pkg/PackageUserStateInternal;
    invoke-interface {v4}, Lcom/android/server/pm/pkg/PackageUserState;->dataExists()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1015
    const/4 v0, 0x1

    return v0

    .line 1009
    .end local v3    # "user":I
    .end local v4    # "userState":Lcom/android/server/pm/pkg/PackageUserStateInternal;
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1018
    :cond_2
    return v1
.end method

.method public hasSharedUser()Z
    .locals 1

    .line 588
    iget v0, p0, Lcom/android/server/pm/PackageSetting;->mSharedUserAppId:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isApex()Z
    .locals 1

    .line 1842
    invoke-virtual {p0}, Lcom/android/server/pm/PackageSetting;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/pm/PackageSetting;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->isApex()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isApkInUpdatedApex()Z
    .locals 1

    .line 1662
    iget-object v0, p0, Lcom/android/server/pm/PackageSetting;->pkgState:Lcom/android/server/pm/pkg/PackageStateUnserialized;

    invoke-virtual {v0}, Lcom/android/server/pm/pkg/PackageStateUnserialized;->isApkInUpdatedApex()Z

    move-result v0

    return v0
.end method

.method isArchived(I)Z
    .locals 1
    .param p1, "userId"    # I

    .line 950
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageSetting;->readUserState(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/pm/PackageArchiver;->isArchived(Lcom/android/server/pm/pkg/PackageUserState;)Z

    move-result v0

    return v0
.end method

.method isArchivedOnAnyUser([I)Z
    .locals 5
    .param p1, "userIds"    # [I

    .line 957
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget v3, p1, v2

    .line 958
    .local v3, "user":I
    invoke-virtual {p0, v3}, Lcom/android/server/pm/PackageSetting;->isArchived(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 959
    const/4 v0, 0x1

    return v0

    .line 958
    :cond_0
    nop

    .line 957
    .end local v3    # "user":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 962
    :cond_1
    return v1
.end method

.method public isDebuggable()Z
    .locals 1

    .line 616
    const/16 v0, 0x20

    invoke-direct {p0, v0}, Lcom/android/server/pm/PackageSetting;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method public isDefaultToDeviceProtectedStorage()Z
    .locals 1

    .line 1868
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->getPrivateFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isExternalStorage()Z
    .locals 2

    .line 554
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->getFlags()I

    move-result v0

    const/high16 v1, 0x40000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isForceFull()Z
    .locals 1

    .line 273
    iget-boolean v0, p0, Lcom/android/server/pm/PackageSetting;->forceFull:Z

    return v0
.end method

.method public isForceQueryableOverride()Z
    .locals 1

    .line 1847
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/android/server/pm/PackageSetting;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method public isHiddenUntilInstalled()Z
    .locals 1

    .line 1646
    iget-object v0, p0, Lcom/android/server/pm/PackageSetting;->pkgState:Lcom/android/server/pm/pkg/PackageStateUnserialized;

    invoke-virtual {v0}, Lcom/android/server/pm/pkg/PackageStateUnserialized;->isHiddenUntilInstalled()Z

    move-result v0

    return v0
.end method

.method public isIncremental()Z
    .locals 1

    .line 1514
    iget-object v0, p0, Lcom/android/server/pm/PackageSetting;->mPathString:Ljava/lang/String;

    invoke-static {v0}, Landroid/os/incremental/IncrementalManager;->isIncrementalPath(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isInstallPermissionsFixed()Z
    .locals 1

    .line 1860
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/pm/PackageSetting;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method isInstalledOnAnyOtherUser([II)Z
    .locals 6
    .param p1, "allUsers"    # [I
    .param p2, "currentUser"    # I

    .line 996
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    aget v3, p1, v2

    .line 997
    .local v3, "user":I
    if-ne v3, p2, :cond_0

    .line 998
    goto :goto_1

    .line 1000
    :cond_0
    invoke-virtual {p0, v3}, Lcom/android/server/pm/PackageSetting;->readUserState(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v4

    .line 1001
    .local v4, "userState":Lcom/android/server/pm/pkg/PackageUserStateInternal;
    invoke-interface {v4}, Lcom/android/server/pm/pkg/PackageUserState;->isInstalled()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1002
    const/4 v0, 0x1

    return v0

    .line 996
    .end local v3    # "user":I
    .end local v4    # "userState":Lcom/android/server/pm/pkg/PackageUserStateInternal;
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1005
    :cond_2
    return v1
.end method

.method public isLeavingSharedUser()Z
    .locals 1

    .line 630
    const/16 v0, 0x40

    invoke-direct {p0, v0}, Lcom/android/server/pm/PackageSetting;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method public isLoading()Z
    .locals 2

    .line 1520
    const/high16 v0, 0x3f800000    # 1.0f

    iget v1, p0, Lcom/android/server/pm/PackageSetting;->mLoadingProgress:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v1, 0x322bcc77    # 1.0E-8f

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isOdm()Z
    .locals 2

    .line 791
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->getPrivateFlags()I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isOem()Z
    .locals 2

    .line 770
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->getPrivateFlags()I

    move-result v0

    const/high16 v1, 0x20000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isPageSizeAppCompatEnabled()Z
    .locals 6

    .line 1885
    iget v0, p0, Lcom/android/server/pm/PackageSetting;->mPageSizeAppCompatFlags:I

    and-int/lit8 v0, v0, 0x40

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 1887
    .local v0, "manifestOverrideDisabled":Z
    :goto_0
    iget v3, p0, Lcom/android/server/pm/PackageSetting;->mPageSizeAppCompatFlags:I

    and-int/lit8 v3, v3, 0x10

    if-eqz v3, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    move v3, v2

    .line 1889
    .local v3, "settingsOverrideDisabled":Z
    :goto_1
    if-nez v0, :cond_2

    if-eqz v3, :cond_3

    :cond_2
    goto :goto_3

    .line 1893
    :cond_3
    const/16 v4, 0x2c

    .line 1897
    .local v4, "mask":I
    iget v5, p0, Lcom/android/server/pm/PackageSetting;->mPageSizeAppCompatFlags:I

    and-int/2addr v5, v4

    if-eqz v5, :cond_4

    goto :goto_2

    :cond_4
    move v1, v2

    :goto_2
    return v1

    .line 1890
    .end local v4    # "mask":I
    :goto_3
    return v2
.end method

.method public isPendingRestore()Z
    .locals 1

    .line 602
    const/16 v0, 0x10

    invoke-direct {p0, v0}, Lcom/android/server/pm/PackageSetting;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method public isPersistent()Z
    .locals 1

    .line 1873
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->getFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isPrivileged()Z
    .locals 1

    .line 766
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->getPrivateFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isProduct()Z
    .locals 2

    .line 778
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->getPrivateFlags()I

    move-result v0

    const/high16 v1, 0x80000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isRequestLegacyExternalStorage()Z
    .locals 2

    .line 799
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->getPrivateFlags()I

    move-result v0

    const/high16 v1, 0x20000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isRequiredForSystemUser()Z
    .locals 1

    .line 783
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->getPrivateFlags()I

    move-result v0

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isScannedAsStoppedSystemApp()Z
    .locals 1

    .line 1878
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/android/server/pm/PackageSetting;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method public isSystem()Z
    .locals 2

    .line 795
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->getFlags()I

    move-result v0

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isSystemExt()Z
    .locals 2

    .line 787
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->getPrivateFlags()I

    move-result v0

    const/high16 v1, 0x200000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isUpdateAvailable()Z
    .locals 1

    .line 1855
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/server/pm/PackageSetting;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method public isUpdatedSystemApp()Z
    .locals 1

    .line 1657
    iget-object v0, p0, Lcom/android/server/pm/PackageSetting;->pkgState:Lcom/android/server/pm/pkg/PackageStateUnserialized;

    invoke-virtual {v0}, Lcom/android/server/pm/pkg/PackageStateUnserialized;->isUpdatedSystemApp()Z

    move-result v0

    return v0
.end method

.method public isUserDataFragile()Z
    .locals 2

    .line 804
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->getPrivateFlags()I

    move-result v0

    const/high16 v1, 0x1000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isVendor()Z
    .locals 2

    .line 774
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->getPrivateFlags()I

    move-result v0

    const/high16 v1, 0x40000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method modifyUserState(I)Lcom/android/server/pm/pkg/PackageUserStateImpl;
    .locals 2
    .param p1, "userId"    # I

    .line 897
    iget-object v0, p0, Lcom/android/server/pm/PackageSetting;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/pkg/PackageUserStateImpl;

    .line 898
    .local v0, "state":Lcom/android/server/pm/pkg/PackageUserStateImpl;
    if-nez v0, :cond_0

    .line 899
    new-instance v1, Lcom/android/server/pm/pkg/PackageUserStateImpl;

    invoke-direct {v1, p0}, Lcom/android/server/pm/pkg/PackageUserStateImpl;-><init>(Lcom/android/server/utils/Watchable;)V

    move-object v0, v1

    .line 900
    iget-object v1, p0, Lcom/android/server/pm/PackageSetting;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 901
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged()V

    .line 903
    :cond_0
    return-object v0
.end method

.method modifyUserStateComponents(IZZ)Lcom/android/server/pm/pkg/PackageUserStateImpl;
    .locals 4
    .param p1, "userId"    # I
    .param p2, "disabled"    # Z
    .param p3, "enabled"    # Z

    .line 1242
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageSetting;->modifyUserState(I)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    move-result-object v0

    .line 1243
    .local v0, "state":Lcom/android/server/pm/pkg/PackageUserStateImpl;
    const/4 v1, 0x0

    .line 1244
    .local v1, "changed":Z
    const/4 v2, 0x1

    if-eqz p2, :cond_0

    invoke-virtual {v0}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->getDisabledComponentsNoCopy()Lcom/android/server/utils/WatchedArraySet;

    move-result-object v3

    if-nez v3, :cond_0

    .line 1245
    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3, v2}, Landroid/util/ArraySet;-><init>(I)V

    invoke-virtual {v0, v3}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->setDisabledComponents(Landroid/util/ArraySet;)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    .line 1246
    const/4 v1, 0x1

    .line 1248
    :cond_0
    if-eqz p3, :cond_1

    invoke-virtual {v0}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->getEnabledComponentsNoCopy()Lcom/android/server/utils/WatchedArraySet;

    move-result-object v3

    if-nez v3, :cond_1

    .line 1249
    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3, v2}, Landroid/util/ArraySet;-><init>(I)V

    invoke-virtual {v0, v3}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->setEnabledComponents(Landroid/util/ArraySet;)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    .line 1250
    const/4 v1, 0x1

    .line 1252
    :cond_1
    if-eqz v1, :cond_2

    .line 1253
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged()V

    .line 1255
    :cond_2
    return-object v0
.end method

.method public overrideNonLocalizedLabelAndIcon(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/Integer;I)Z
    .locals 1
    .param p1, "component"    # Landroid/content/ComponentName;
    .param p2, "label"    # Ljava/lang/String;
    .param p3, "icon"    # Ljava/lang/Integer;
    .param p4, "userId"    # I

    .line 1488
    invoke-virtual {p0, p4}, Lcom/android/server/pm/PackageSetting;->modifyUserState(I)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->overrideLabelAndIcon(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/Integer;)Z

    move-result v0

    .line 1489
    .local v0, "changed":Z
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged()V

    .line 1490
    return v0
.end method

.method queryInstalledUsers([IZ)[I
    .locals 5
    .param p1, "users"    # [I
    .param p2, "installed"    # Z

    .line 1022
    new-instance v0, Landroid/util/IntArray;

    array-length v1, p1

    invoke-direct {v0, v1}, Landroid/util/IntArray;-><init>(I)V

    .line 1023
    .local v0, "installedUsers":Landroid/util/IntArray;
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget v3, p1, v2

    .line 1024
    .local v3, "user":I
    invoke-virtual {p0, v3}, Lcom/android/server/pm/PackageSetting;->getInstalled(I)Z

    move-result v4

    if-ne v4, p2, :cond_0

    .line 1025
    invoke-virtual {v0, v3}, Landroid/util/IntArray;->add(I)V

    .line 1023
    .end local v3    # "user":I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1028
    :cond_1
    invoke-virtual {v0}, Landroid/util/IntArray;->toArray()[I

    move-result-object v1

    return-object v1
.end method

.method queryUsersInstalledOrHasData([I)[I
    .locals 5
    .param p1, "users"    # [I

    .line 1032
    new-instance v0, Landroid/util/IntArray;

    array-length v1, p1

    invoke-direct {v0, v1}, Landroid/util/IntArray;-><init>(I)V

    .line 1033
    .local v0, "usersInstalledOrHasData":Landroid/util/IntArray;
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget v3, p1, v2

    .line 1034
    .local v3, "user":I
    invoke-virtual {p0, v3}, Lcom/android/server/pm/PackageSetting;->getInstalled(I)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {p0, v3}, Lcom/android/server/pm/PackageSetting;->readUserState(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/server/pm/pkg/PackageUserState;->dataExists()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1035
    :cond_0
    invoke-virtual {v0, v3}, Landroid/util/IntArray;->add(I)V

    .line 1033
    .end local v3    # "user":I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1038
    :cond_2
    invoke-virtual {v0}, Landroid/util/IntArray;->toArray()[I

    move-result-object v1

    return-object v1
.end method

.method public readUserState(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;
    .locals 2
    .param p1, "userId"    # I

    .line 917
    iget-object v0, p0, Lcom/android/server/pm/PackageSetting;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/pkg/PackageUserStateInternal;

    .line 918
    .local v0, "state":Lcom/android/server/pm/pkg/PackageUserStateInternal;
    if-nez v0, :cond_0

    .line 919
    sget-object v1, Lcom/android/server/pm/pkg/PackageUserStateInternal;->DEFAULT:Lcom/android/server/pm/pkg/PackageUserStateInternal;

    return-object v1

    .line 921
    :cond_0
    return-object v0
.end method

.method removeInstallerPackage(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .line 454
    iget-object v0, p0, Lcom/android/server/pm/PackageSetting;->installSource:Lcom/android/server/pm/InstallSource;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/InstallSource;->removeInstallerPackage(Ljava/lang/String;)Lcom/android/server/pm/InstallSource;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/PackageSetting;->installSource:Lcom/android/server/pm/InstallSource;

    .line 455
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged()V

    .line 456
    return-object p0
.end method

.method public removeOldPath(Ljava/io/File;)Lcom/android/server/pm/PackageSetting;
    .locals 1
    .param p1, "path"    # Ljava/io/File;

    .line 1472
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/server/pm/PackageSetting;->mOldPaths:Ljava/util/LinkedHashSet;

    if-nez v0, :cond_1

    :cond_0
    goto :goto_0

    .line 1475
    :cond_1
    iget-object v0, p0, Lcom/android/server/pm/PackageSetting;->mOldPaths:Ljava/util/LinkedHashSet;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashSet;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1476
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged()V

    .line 1478
    :cond_2
    return-object p0

    .line 1473
    :goto_0
    return-object p0
.end method

.method removeUser(I)V
    .locals 1
    .param p1, "userId"    # I

    .line 1341
    iget-object v0, p0, Lcom/android/server/pm/PackageSetting;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->delete(I)V

    .line 1342
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged()V

    .line 1343
    return-void
.end method

.method public resetOverrideComponentLabelIcon(I)V
    .locals 1
    .param p1, "userId"    # I

    .line 1498
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageSetting;->modifyUserState(I)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->resetOverrideComponentLabelIcon()V

    .line 1499
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged()V

    .line 1500
    return-void
.end method

.method restoreComponentLPw(Ljava/lang/String;I)Z
    .locals 4
    .param p1, "componentClassName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 1293
    const/4 v0, 0x1

    invoke-virtual {p0, p2, v0, v0}, Lcom/android/server/pm/PackageSetting;->modifyUserStateComponents(IZZ)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    move-result-object v0

    .line 1294
    .local v0, "state":Lcom/android/server/pm/pkg/PackageUserStateImpl;
    invoke-virtual {v0}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->getDisabledComponentsNoCopy()Lcom/android/server/utils/WatchedArraySet;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 1295
    invoke-virtual {v0}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->getDisabledComponentsNoCopy()Lcom/android/server/utils/WatchedArraySet;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/utils/WatchedArraySet;->remove(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v2

    .line 1296
    .local v1, "changed":Z
    :goto_0
    invoke-virtual {v0}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->getEnabledComponentsNoCopy()Lcom/android/server/utils/WatchedArraySet;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 1297
    invoke-virtual {v0}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->getEnabledComponentsNoCopy()Lcom/android/server/utils/WatchedArraySet;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/server/utils/WatchedArraySet;->remove(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_1

    :cond_1
    nop

    :goto_1
    or-int/2addr v1, v2

    .line 1298
    if-eqz v1, :cond_2

    .line 1299
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged()V

    .line 1301
    :cond_2
    return v1
.end method

.method restoreComponentSettings(I)V
    .locals 8
    .param p1, "userId"    # I

    .line 1305
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0, v0}, Lcom/android/server/pm/PackageSetting;->modifyUserStateComponents(IZZ)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    move-result-object v1

    .line 1306
    .local v1, "state":Lcom/android/server/pm/pkg/PackageUserStateImpl;
    invoke-virtual {v1}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->getEnabledComponentsNoCopy()Lcom/android/server/utils/WatchedArraySet;

    move-result-object v2

    .line 1307
    .local v2, "enabledComponents":Lcom/android/server/utils/WatchedArraySet;, "Lcom/android/server/utils/WatchedArraySet<Ljava/lang/String;>;"
    invoke-virtual {v1}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->getDisabledComponentsNoCopy()Lcom/android/server/utils/WatchedArraySet;

    move-result-object v3

    .line 1309
    .local v3, "disabledComponents":Lcom/android/server/utils/WatchedArraySet;, "Lcom/android/server/utils/WatchedArraySet<Ljava/lang/String;>;"
    const/4 v4, 0x0

    .line 1310
    .local v4, "changed":Z
    invoke-virtual {v2}, Lcom/android/server/utils/WatchedArraySet;->size()I

    move-result v5

    sub-int/2addr v5, v0

    .local v5, "i":I
    :goto_0
    if-ltz v5, :cond_1

    .line 1311
    iget-object v6, p0, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    invoke-virtual {v2, v5}, Lcom/android/server/utils/WatchedArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->hasComponentClassName(Lcom/android/server/pm/pkg/AndroidPackage;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 1312
    invoke-virtual {v2, v5}, Lcom/android/server/utils/WatchedArraySet;->removeAt(I)Ljava/lang/Object;

    .line 1313
    const/4 v4, 0x1

    .line 1310
    :cond_0
    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    :cond_1
    nop

    .line 1316
    .end local v5    # "i":I
    invoke-virtual {v3}, Lcom/android/server/utils/WatchedArraySet;->size()I

    move-result v5

    sub-int/2addr v5, v0

    .restart local v5    # "i":I
    :goto_1
    if-ltz v5, :cond_3

    .line 1317
    iget-object v0, p0, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    invoke-virtual {v3, v5}, Lcom/android/server/utils/WatchedArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v0, v6}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->hasComponentClassName(Lcom/android/server/pm/pkg/AndroidPackage;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1318
    invoke-virtual {v3, v5}, Lcom/android/server/utils/WatchedArraySet;->removeAt(I)Ljava/lang/Object;

    .line 1319
    const/4 v0, 0x1

    move v4, v0

    .line 1316
    :cond_2
    add-int/lit8 v5, v5, -0x1

    goto :goto_1

    :cond_3
    nop

    .line 1322
    .end local v5    # "i":I
    if-eqz v4, :cond_4

    .line 1323
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged()V

    .line 1325
    :cond_4
    return-void
.end method

.method public setApexModuleName(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;
    .locals 1
    .param p1, "apexModuleName"    # Ljava/lang/String;

    .line 1757
    iget-object v0, p0, Lcom/android/server/pm/PackageSetting;->pkgState:Lcom/android/server/pm/pkg/PackageStateUnserialized;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/pkg/PackageStateUnserialized;->setApexModuleName(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateUnserialized;

    .line 1758
    return-object p0
.end method

.method public setAppId(I)Lcom/android/server/pm/PackageSetting;
    .locals 0
    .param p1, "appId"    # I

    .line 382
    iput p1, p0, Lcom/android/server/pm/PackageSetting;->mAppId:I

    .line 383
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged()V

    .line 384
    return-object p0
.end method

.method public setAppMetadataFilePath(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;
    .locals 0
    .param p1, "path"    # Ljava/lang/String;

    .line 1542
    iput-object p1, p0, Lcom/android/server/pm/PackageSetting;->mAppMetadataFilePath:Ljava/lang/String;

    .line 1543
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged()V

    .line 1544
    return-object p0
.end method

.method public setAppMetadataSource(I)Lcom/android/server/pm/PackageSetting;
    .locals 0
    .param p1, "source"    # I

    .line 1551
    iput p1, p0, Lcom/android/server/pm/PackageSetting;->mAppMetadataSource:I

    .line 1552
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged()V

    .line 1553
    return-object p0
.end method

.method setArchiveState(Lcom/android/server/pm/pkg/ArchiveState;I)V
    .locals 1
    .param p1, "archiveState"    # Lcom/android/server/pm/pkg/ArchiveState;
    .param p2, "userId"    # I

    .line 941
    invoke-virtual {p0, p2}, Lcom/android/server/pm/PackageSetting;->modifyUserState(I)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->setArchiveState(Lcom/android/server/pm/pkg/ArchiveState;)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    .line 942
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged()V

    .line 943
    return-void
.end method

.method public setBaseRevisionCode(I)Lcom/android/server/pm/PackageSetting;
    .locals 0
    .param p1, "value"    # I

    .line 637
    iput p1, p0, Lcom/android/server/pm/PackageSetting;->mBaseRevisionCode:I

    .line 638
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged()V

    .line 639
    return-object p0
.end method

.method public setCategoryOverride(I)Lcom/android/server/pm/PackageSetting;
    .locals 0
    .param p1, "categoryHint"    # I

    .line 1678
    iput p1, p0, Lcom/android/server/pm/PackageSetting;->categoryOverride:I

    .line 1679
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged()V

    .line 1680
    return-object p0
.end method

.method setCeDataInode(JI)V
    .locals 1
    .param p1, "ceDataInode"    # J
    .param p3, "userId"    # I

    .line 1050
    invoke-virtual {p0, p3}, Lcom/android/server/pm/PackageSetting;->modifyUserState(I)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->setCeDataInode(J)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    .line 1051
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged()V

    .line 1052
    return-void
.end method

.method public setCpuAbiOverride(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;
    .locals 0
    .param p1, "cpuAbiOverrideString"    # Ljava/lang/String;

    .line 388
    iput-object p1, p0, Lcom/android/server/pm/PackageSetting;->mCpuAbiOverride:Ljava/lang/String;

    .line 389
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged()V

    .line 390
    return-object p0
.end method

.method setDeDataInode(JI)V
    .locals 1
    .param p1, "deDataInode"    # J
    .param p3, "userId"    # I

    .line 1055
    invoke-virtual {p0, p3}, Lcom/android/server/pm/PackageSetting;->modifyUserState(I)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->setDeDataInode(J)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    .line 1056
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged()V

    .line 1057
    return-void
.end method

.method public setDebuggable(Z)Lcom/android/server/pm/PackageSetting;
    .locals 1
    .param p1, "value"    # Z

    .line 609
    const/16 v0, 0x20

    invoke-direct {p0, v0, p1}, Lcom/android/server/pm/PackageSetting;->setBoolean(IZ)V

    .line 610
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged()V

    .line 611
    return-object p0
.end method

.method setDisabledComponents(Lcom/android/server/utils/WatchedArraySet;I)V
    .locals 1
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/utils/WatchedArraySet<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .line 1224
    .local p1, "components":Lcom/android/server/utils/WatchedArraySet;, "Lcom/android/server/utils/WatchedArraySet<Ljava/lang/String;>;"
    invoke-virtual {p0, p2}, Lcom/android/server/pm/PackageSetting;->modifyUserState(I)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->setDisabledComponents(Lcom/android/server/utils/WatchedArraySet;)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    .line 1225
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged()V

    .line 1226
    return-void
.end method

.method setDisabledComponentsCopy(Lcom/android/server/utils/WatchedArraySet;I)V
    .locals 2
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/utils/WatchedArraySet<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .line 1235
    .local p1, "components":Lcom/android/server/utils/WatchedArraySet;, "Lcom/android/server/utils/WatchedArraySet<Ljava/lang/String;>;"
    invoke-virtual {p0, p2}, Lcom/android/server/pm/PackageSetting;->modifyUserState(I)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    move-result-object v0

    if-eqz p1, :cond_0

    .line 1236
    invoke-virtual {p1}, Lcom/android/server/utils/WatchedArraySet;->untrackedStorage()Landroid/util/ArraySet;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 1235
    :goto_0
    invoke-virtual {v0, v1}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->setDisabledComponents(Landroid/util/ArraySet;)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    .line 1237
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged()V

    .line 1238
    return-void
.end method

.method setDistractionFlags(II)V
    .locals 1
    .param p1, "distractionFlags"    # I
    .param p2, "userId"    # I

    .line 1097
    invoke-virtual {p0, p2}, Lcom/android/server/pm/PackageSetting;->modifyUserState(I)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->setDistractionFlags(I)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    .line 1098
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged()V

    .line 1099
    return-void
.end method

.method public setDomainSetId(Ljava/util/UUID;)Lcom/android/server/pm/PackageSetting;
    .locals 0
    .param p1, "domainSetId"    # Ljava/util/UUID;

    .line 1672
    iput-object p1, p0, Lcom/android/server/pm/PackageSetting;->mDomainSetId:Ljava/util/UUID;

    .line 1673
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged()V

    .line 1674
    return-object p0
.end method

.method setEnabled(IILjava/lang/String;)V
    .locals 1
    .param p1, "state"    # I
    .param p2, "userId"    # I
    .param p3, "callingPackage"    # Ljava/lang/String;

    .line 925
    invoke-virtual {p0, p2}, Lcom/android/server/pm/PackageSetting;->modifyUserState(I)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    move-result-object v0

    .line 926
    invoke-virtual {v0, p1}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->setEnabledState(I)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    move-result-object v0

    .line 927
    invoke-virtual {v0, p3}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->setLastDisableAppCaller(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    .line 928
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged()V

    .line 929
    return-void
.end method

.method setEnabledComponents(Lcom/android/server/utils/WatchedArraySet;I)V
    .locals 1
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/utils/WatchedArraySet<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .line 1218
    .local p1, "components":Lcom/android/server/utils/WatchedArraySet;, "Lcom/android/server/utils/WatchedArraySet<Ljava/lang/String;>;"
    invoke-virtual {p0, p2}, Lcom/android/server/pm/PackageSetting;->modifyUserState(I)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->setEnabledComponents(Lcom/android/server/utils/WatchedArraySet;)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    .line 1219
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged()V

    .line 1220
    return-void
.end method

.method setEnabledComponentsCopy(Lcom/android/server/utils/WatchedArraySet;I)V
    .locals 2
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/utils/WatchedArraySet<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .line 1229
    .local p1, "components":Lcom/android/server/utils/WatchedArraySet;, "Lcom/android/server/utils/WatchedArraySet<Ljava/lang/String;>;"
    invoke-virtual {p0, p2}, Lcom/android/server/pm/PackageSetting;->modifyUserState(I)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    move-result-object v0

    if-eqz p1, :cond_0

    .line 1230
    invoke-virtual {p1}, Lcom/android/server/utils/WatchedArraySet;->untrackedStorage()Landroid/util/ArraySet;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 1229
    :goto_0
    invoke-virtual {v0, v1}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->setEnabledComponents(Landroid/util/ArraySet;)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    .line 1231
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged()V

    .line 1232
    return-void
.end method

.method public setFirstInstallTime(JI)Lcom/android/server/pm/PackageSetting;
    .locals 3
    .param p1, "firstInstallTime"    # J
    .param p3, "userId"    # I

    .line 415
    const/4 v0, -0x1

    if-ne p3, v0, :cond_1

    .line 416
    iget-object v0, p0, Lcom/android/server/pm/PackageSetting;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 417
    .local v0, "userStateCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 418
    iget-object v2, p0, Lcom/android/server/pm/PackageSetting;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/pkg/PackageUserStateImpl;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->setFirstInstallTimeMillis(J)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    .line 417
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    nop

    .line 420
    .end local v0    # "userStateCount":I
    .end local v1    # "i":I
    goto :goto_1

    .line 421
    :cond_1
    invoke-virtual {p0, p3}, Lcom/android/server/pm/PackageSetting;->modifyUserState(I)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->setFirstInstallTimeMillis(J)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    .line 423
    :goto_1
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged()V

    .line 424
    return-object p0
.end method

.method public setFirstInstallTimeFromReplaced(Lcom/android/server/pm/pkg/PackageStateInternal;[I)Lcom/android/server/pm/PackageSetting;
    .locals 5
    .param p1, "replacedPkgSetting"    # Lcom/android/server/pm/pkg/PackageStateInternal;
    .param p2, "userIds"    # [I

    .line 399
    const/4 v0, 0x0

    .local v0, "userId":I
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_1

    .line 400
    nop

    .line 401
    invoke-interface {p1, v0}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/server/pm/pkg/PackageUserState;->getFirstInstallTimeMillis()J

    move-result-wide v1

    .line 402
    .local v1, "previousFirstInstallTime":J
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-eqz v3, :cond_0

    .line 403
    invoke-virtual {p0, v0}, Lcom/android/server/pm/PackageSetting;->modifyUserState(I)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->setFirstInstallTimeMillis(J)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    .line 399
    .end local v1    # "previousFirstInstallTime":J
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    nop

    .line 406
    .end local v0    # "userId":I
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged()V

    .line 407
    return-object p0
.end method

.method public setForceFull(Z)V
    .locals 0
    .param p1, "forceFull"    # Z

    .line 269
    iput-boolean p1, p0, Lcom/android/server/pm/PackageSetting;->forceFull:Z

    .line 270
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged()V

    .line 271
    return-void
.end method

.method public setForceQueryableOverride(Z)Lcom/android/server/pm/PackageSetting;
    .locals 1
    .param p1, "forceQueryableOverride"    # Z

    .line 428
    const/4 v0, 0x4

    invoke-direct {p0, v0, p1}, Lcom/android/server/pm/PackageSetting;->setBoolean(IZ)V

    .line 429
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged()V

    .line 430
    return-object p0
.end method

.method setHidden(ZI)V
    .locals 1
    .param p1, "hidden"    # Z
    .param p2, "userId"    # I

    .line 1088
    invoke-virtual {p0, p2}, Lcom/android/server/pm/PackageSetting;->modifyUserState(I)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->setHidden(Z)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    .line 1089
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged()V

    .line 1090
    return-void
.end method

.method public setInstallPermissionsFixed(Z)Lcom/android/server/pm/PackageSetting;
    .locals 1
    .param p1, "installPermissionsFixed"    # Z

    .line 761
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/android/server/pm/PackageSetting;->setBoolean(IZ)V

    .line 762
    return-object p0
.end method

.method setInstallReason(II)V
    .locals 1
    .param p1, "installReason"    # I
    .param p2, "userId"    # I

    .line 970
    invoke-virtual {p0, p2}, Lcom/android/server/pm/PackageSetting;->modifyUserState(I)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->setInstallReason(I)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    .line 971
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged()V

    .line 972
    return-void
.end method

.method public setInstallSource(Lcom/android/server/pm/InstallSource;)Lcom/android/server/pm/PackageSetting;
    .locals 0
    .param p1, "installSource"    # Lcom/android/server/pm/InstallSource;

    .line 448
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/android/server/pm/PackageSetting;->installSource:Lcom/android/server/pm/InstallSource;

    .line 449
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged()V

    .line 450
    return-object p0
.end method

.method setInstalled(ZI)V
    .locals 1
    .param p1, "inst"    # Z
    .param p2, "userId"    # I

    .line 936
    invoke-virtual {p0, p2}, Lcom/android/server/pm/PackageSetting;->modifyUserState(I)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->setInstalled(Z)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    .line 937
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged()V

    .line 938
    return-void
.end method

.method public setInstallerPackage(Ljava/lang/String;I)Lcom/android/server/pm/PackageSetting;
    .locals 1
    .param p1, "installerPackageName"    # Ljava/lang/String;
    .param p2, "installerPackageUid"    # I

    .line 435
    iget-object v0, p0, Lcom/android/server/pm/PackageSetting;->installSource:Lcom/android/server/pm/InstallSource;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/pm/InstallSource;->setInstallerPackage(Ljava/lang/String;I)Lcom/android/server/pm/InstallSource;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/PackageSetting;->installSource:Lcom/android/server/pm/InstallSource;

    .line 437
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged()V

    .line 438
    return-object p0
.end method

.method setInstantApp(ZI)V
    .locals 1
    .param p1, "instantApp"    # Z
    .param p2, "userId"    # I

    .line 1106
    invoke-virtual {p0, p2}, Lcom/android/server/pm/PackageSetting;->modifyUserState(I)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->setInstantApp(Z)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    .line 1107
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged()V

    .line 1108
    return-void
.end method

.method public setIsOrphaned(Z)Lcom/android/server/pm/PackageSetting;
    .locals 1
    .param p1, "isOrphaned"    # Z

    .line 460
    iget-object v0, p0, Lcom/android/server/pm/PackageSetting;->installSource:Lcom/android/server/pm/InstallSource;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/InstallSource;->setIsOrphaned(Z)Lcom/android/server/pm/InstallSource;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/PackageSetting;->installSource:Lcom/android/server/pm/InstallSource;

    .line 461
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged()V

    .line 462
    return-object p0
.end method

.method public setKeySetData(Lcom/android/server/pm/PackageKeySetData;)Lcom/android/server/pm/PackageSetting;
    .locals 0
    .param p1, "keySetData"    # Lcom/android/server/pm/PackageKeySetData;

    .line 466
    iput-object p1, p0, Lcom/android/server/pm/PackageSetting;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    .line 467
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged()V

    .line 468
    return-object p0
.end method

.method public setLastModifiedTime(J)Lcom/android/server/pm/PackageSetting;
    .locals 0
    .param p1, "timeStamp"    # J

    .line 472
    iput-wide p1, p0, Lcom/android/server/pm/PackageSetting;->mLastModifiedTime:J

    .line 473
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged()V

    .line 474
    return-object p0
.end method

.method public setLastUpdateTime(J)Lcom/android/server/pm/PackageSetting;
    .locals 0
    .param p1, "lastUpdateTime"    # J

    .line 478
    iput-wide p1, p0, Lcom/android/server/pm/PackageSetting;->lastUpdateTime:J

    .line 479
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged()V

    .line 480
    return-object p0
.end method

.method public setLeavingSharedUser(Z)Lcom/android/server/pm/PackageSetting;
    .locals 1
    .param p1, "value"    # Z

    .line 623
    const/16 v0, 0x40

    invoke-direct {p0, v0, p1}, Lcom/android/server/pm/PackageSetting;->setBoolean(IZ)V

    .line 624
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged()V

    .line 625
    return-object p0
.end method

.method public setLegacyNativeLibraryPath(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;
    .locals 0
    .param p1, "legacyNativeLibraryPathString"    # Ljava/lang/String;

    .line 1713
    iput-object p1, p0, Lcom/android/server/pm/PackageSetting;->legacyNativeLibraryPath:Ljava/lang/String;

    .line 1714
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged()V

    .line 1715
    return-object p0
.end method

.method public setLoadingCompletedTime(J)Lcom/android/server/pm/PackageSetting;
    .locals 0
    .param p1, "loadingCompletedTime"    # J

    .line 1533
    iput-wide p1, p0, Lcom/android/server/pm/PackageSetting;->mLoadingCompletedTime:J

    .line 1534
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged()V

    .line 1535
    return-object p0
.end method

.method public setLoadingProgress(F)Lcom/android/server/pm/PackageSetting;
    .locals 1
    .param p1, "progress"    # F

    .line 1525
    iget v0, p0, Lcom/android/server/pm/PackageSetting;->mLoadingProgress:F

    cmpg-float v0, v0, p1

    if-gez v0, :cond_0

    .line 1526
    iput p1, p0, Lcom/android/server/pm/PackageSetting;->mLoadingProgress:F

    .line 1527
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged()V

    .line 1529
    :cond_0
    return-object p0
.end method

.method public setLongVersionCode(J)Lcom/android/server/pm/PackageSetting;
    .locals 0
    .param p1, "versionCode"    # J

    .line 484
    iput-wide p1, p0, Lcom/android/server/pm/PackageSetting;->versionCode:J

    .line 485
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged()V

    .line 486
    return-object p0
.end method

.method public setMimeGroup(Ljava/lang/String;Landroid/util/ArraySet;)Z
    .locals 4
    .param p1, "mimeGroup"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 490
    .local p2, "newMimeTypes":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/server/pm/PackageSetting;->mimeGroups:Ljava/util/Map;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/PackageSetting;->mimeGroups:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 491
    .local v0, "oldMimeTypes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :goto_0
    if-eqz v0, :cond_2

    .line 496
    invoke-virtual {p2, v0}, Landroid/util/ArraySet;->equals(Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    .line 497
    .local v1, "hasChanges":Z
    iget-object v2, p0, Lcom/android/server/pm/PackageSetting;->mimeGroups:Ljava/util/Map;

    invoke-interface {v2, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 498
    if-eqz v1, :cond_1

    .line 499
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged()V

    .line 501
    :cond_1
    return v1

    .line 492
    .end local v1    # "hasChanges":Z
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown MIME group "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " for package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/pm/PackageSetting;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public setMimeGroups(Ljava/util/Map;)Lcom/android/server/pm/PackageSetting;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;)",
            "Lcom/android/server/pm/PackageSetting;"
        }
    .end annotation

    .line 1719
    .local p1, "mimeGroups":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    if-eqz p1, :cond_0

    .line 1720
    invoke-direct {p0, p1}, Lcom/android/server/pm/PackageSetting;->copyMimeGroups(Ljava/util/Map;)V

    .line 1721
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged()V

    .line 1723
    :cond_0
    return-object p0
.end method

.method setNotLaunched(ZI)V
    .locals 1
    .param p1, "stop"    # Z
    .param p2, "userId"    # I

    .line 1079
    invoke-virtual {p0, p2}, Lcom/android/server/pm/PackageSetting;->modifyUserState(I)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->setNotLaunched(Z)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    .line 1080
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged()V

    .line 1081
    return-void
.end method

.method setOverlayPathsForLibrary(Ljava/lang/String;Landroid/content/pm/overlay/OverlayPaths;I)Z
    .locals 1
    .param p1, "libName"    # Ljava/lang/String;
    .param p2, "overlayPaths"    # Landroid/content/pm/overlay/OverlayPaths;
    .param p3, "userId"    # I

    .line 989
    invoke-virtual {p0, p3}, Lcom/android/server/pm/PackageSetting;->modifyUserState(I)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    move-result-object v0

    .line 990
    invoke-virtual {v0, p1, p2}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->setSharedLibraryOverlayPaths(Ljava/lang/String;Landroid/content/pm/overlay/OverlayPaths;)Z

    move-result v0

    .line 991
    .local v0, "changed":Z
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged()V

    .line 992
    return v0
.end method

.method public setPageSizeAppCompatFlags(I)Lcom/android/server/pm/PackageSetting;
    .locals 2
    .param p1, "mode"    # I

    .line 1687
    if-ltz p1, :cond_2

    const/16 v0, 0x80

    if-ge p1, v0, :cond_2

    .line 1692
    iget v0, p0, Lcom/android/server/pm/PackageSetting;->mPageSizeAppCompatFlags:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/android/server/pm/PackageSetting;->mPageSizeAppCompatFlags:I

    .line 1696
    const/16 v0, 0x8

    if-ne v0, p1, :cond_0

    .line 1697
    iget v0, p0, Lcom/android/server/pm/PackageSetting;->mPageSizeAppCompatFlags:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/android/server/pm/PackageSetting;->mPageSizeAppCompatFlags:I

    goto :goto_0

    .line 1699
    :cond_0
    const/16 v0, 0x10

    if-ne v0, p1, :cond_1

    .line 1700
    iget v0, p0, Lcom/android/server/pm/PackageSetting;->mPageSizeAppCompatFlags:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/android/server/pm/PackageSetting;->mPageSizeAppCompatFlags:I

    .line 1703
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged()V

    .line 1704
    return-object p0

    .line 1688
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid page size compat mode specified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setPath(Ljava/io/File;)Lcom/android/server/pm/PackageSetting;
    .locals 1
    .param p1, "path"    # Ljava/io/File;

    .line 1454
    iput-object p1, p0, Lcom/android/server/pm/PackageSetting;->mPath:Ljava/io/File;

    .line 1455
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/PackageSetting;->mPathString:Ljava/lang/String;

    .line 1456
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged()V

    .line 1457
    return-object p0
.end method

.method public setPendingRestore(Z)Lcom/android/server/pm/PackageSetting;
    .locals 1
    .param p1, "value"    # Z

    .line 595
    const/16 v0, 0x10

    invoke-direct {p0, v0, p1}, Lcom/android/server/pm/PackageSetting;->setBoolean(IZ)V

    .line 596
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged()V

    .line 597
    return-object p0
.end method

.method public setPkg(Lcom/android/server/pm/pkg/AndroidPackage;)Lcom/android/server/pm/PackageSetting;
    .locals 1
    .param p1, "pkg"    # Lcom/android/server/pm/pkg/AndroidPackage;

    .line 506
    move-object v0, p1

    check-cast v0, Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    iput-object v0, p0, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    .line 507
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged()V

    .line 508
    return-object p0
.end method

.method public setPkgStateLibraryFiles(Ljava/util/Collection;)Lcom/android/server/pm/PackageSetting;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/android/server/pm/PackageSetting;"
        }
    .end annotation

    .line 519
    .local p1, "usesLibraryFiles":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/android/server/pm/PackageSetting;->getUsesLibraryFiles()Ljava/util/List;

    move-result-object v0

    .line 520
    .local v0, "oldUsesLibraryFiles":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 521
    invoke-interface {v0, p1}, Ljava/util/Collection;->containsAll(Ljava/util/Collection;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 522
    :cond_0
    iget-object v1, p0, Lcom/android/server/pm/PackageSetting;->pkgState:Lcom/android/server/pm/pkg/PackageStateUnserialized;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1, v2}, Lcom/android/server/pm/pkg/PackageStateUnserialized;->setUsesLibraryFiles(Ljava/util/List;)Lcom/android/server/pm/pkg/PackageStateUnserialized;

    .line 523
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged()V

    .line 525
    :cond_1
    return-object p0
.end method

.method public setPrimaryCpuAbi(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;
    .locals 0
    .param p1, "primaryCpuAbiString"    # Ljava/lang/String;

    .line 529
    iput-object p1, p0, Lcom/android/server/pm/PackageSetting;->mPrimaryCpuAbi:Ljava/lang/String;

    .line 530
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged()V

    .line 531
    return-object p0
.end method

.method setPrivacyHidden(ZI)V
    .locals 1
    .param p1, "isPrivacyHidden"    # Z
    .param p2, "userId"    # I

    .line 1126
    invoke-virtual {p0, p2}, Lcom/android/server/pm/PackageSetting;->modifyUserState(I)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->setPrivacyHidden(Z)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    .line 1127
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged()V

    .line 1128
    return-void
.end method

.method public setRestrictUpdateHash([B)Lcom/android/server/pm/PackageSetting;
    .locals 0
    .param p1, "restrictUpdateHash"    # [B

    .line 576
    iput-object p1, p0, Lcom/android/server/pm/PackageSetting;->mRestrictUpdateHash:[B

    .line 577
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged()V

    .line 578
    return-object p0
.end method

.method public setScannedAsStoppedSystemApp(Z)Lcom/android/server/pm/PackageSetting;
    .locals 1
    .param p1, "stop"    # Z

    .line 1069
    const/16 v0, 0x8

    invoke-direct {p0, v0, p1}, Lcom/android/server/pm/PackageSetting;->setBoolean(IZ)V

    .line 1070
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged()V

    .line 1071
    return-object p0
.end method

.method public setSecondaryCpuAbi(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;
    .locals 0
    .param p1, "secondaryCpuAbiString"    # Ljava/lang/String;

    .line 535
    iput-object p1, p0, Lcom/android/server/pm/PackageSetting;->mSecondaryCpuAbi:Ljava/lang/String;

    .line 536
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged()V

    .line 537
    return-object p0
.end method

.method public setSharedUserAppId(I)Lcom/android/server/pm/PackageSetting;
    .locals 0
    .param p1, "sharedUserAppId"    # I

    .line 564
    iput p1, p0, Lcom/android/server/pm/PackageSetting;->mSharedUserAppId:I

    .line 565
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged()V

    .line 566
    return-object p0
.end method

.method public setSignatures(Lcom/android/server/pm/PackageSignatures;)Lcom/android/server/pm/PackageSetting;
    .locals 0
    .param p1, "signatures"    # Lcom/android/server/pm/PackageSignatures;

    .line 541
    iput-object p1, p0, Lcom/android/server/pm/PackageSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    .line 542
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged()V

    .line 543
    return-object p0
.end method

.method public setSigningDetails(Landroid/content/pm/SigningDetails;)Lcom/android/server/pm/PackageSetting;
    .locals 1
    .param p1, "signingDetails"    # Landroid/content/pm/SigningDetails;

    .line 814
    iget-object v0, p0, Lcom/android/server/pm/PackageSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    iput-object p1, v0, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/SigningDetails;

    .line 815
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged()V

    .line 816
    return-object p0
.end method

.method public setSplitNames([Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;
    .locals 0
    .param p1, "value"    # [Ljava/lang/String;

    .line 653
    iput-object p1, p0, Lcom/android/server/pm/PackageSetting;->mSplitNames:[Ljava/lang/String;

    .line 654
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged()V

    .line 655
    return-object p0
.end method

.method public setSplitRevisionCodes([I)Lcom/android/server/pm/PackageSetting;
    .locals 0
    .param p1, "value"    # [I

    .line 673
    iput-object p1, p0, Lcom/android/server/pm/PackageSetting;->mSplitRevisionCodes:[I

    .line 674
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged()V

    .line 675
    return-object p0
.end method

.method setStopped(ZI)V
    .locals 1
    .param p1, "stop"    # Z
    .param p2, "userId"    # I

    .line 1064
    invoke-virtual {p0, p2}, Lcom/android/server/pm/PackageSetting;->modifyUserState(I)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->setStopped(Z)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    .line 1065
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged()V

    .line 1066
    return-void
.end method

.method public setTargetSdkVersion(I)Lcom/android/server/pm/PackageSetting;
    .locals 0
    .param p1, "targetSdkVersion"    # I

    .line 570
    iput p1, p0, Lcom/android/server/pm/PackageSetting;->mTargetSdkVersion:I

    .line 571
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged()V

    .line 572
    return-object p0
.end method

.method setUninstallReason(II)V
    .locals 1
    .param p1, "uninstallReason"    # I
    .param p2, "userId"    # I

    .line 979
    invoke-virtual {p0, p2}, Lcom/android/server/pm/PackageSetting;->modifyUserState(I)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->setUninstallReason(I)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    .line 980
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged()V

    .line 981
    return-void
.end method

.method public setUpdateAvailable(Z)Lcom/android/server/pm/PackageSetting;
    .locals 1
    .param p1, "updateAvailable"    # Z

    .line 558
    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Lcom/android/server/pm/PackageSetting;->setBoolean(IZ)V

    .line 559
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged()V

    .line 560
    return-object p0
.end method

.method public setUpdateOwnerPackage(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;
    .locals 1
    .param p1, "updateOwnerPackageName"    # Ljava/lang/String;

    .line 442
    iget-object v0, p0, Lcom/android/server/pm/PackageSetting;->installSource:Lcom/android/server/pm/InstallSource;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/InstallSource;->setUpdateOwnerPackageName(Ljava/lang/String;)Lcom/android/server/pm/InstallSource;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/PackageSetting;->installSource:Lcom/android/server/pm/InstallSource;

    .line 443
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged()V

    .line 444
    return-object p0
.end method

.method setUserState(IJJIZZZZILandroid/util/ArrayMap;ZZLjava/lang/String;Landroid/util/ArraySet;Landroid/util/ArraySet;IILjava/lang/String;Ljava/lang/String;JILcom/android/server/pm/pkg/ArchiveState;)V
    .locals 27
    .param p1, "userId"    # I
    .param p2, "ceDataInode"    # J
    .param p4, "deDataInode"    # J
    .param p6, "enabled"    # I
    .param p7, "installed"    # Z
    .param p8, "stopped"    # Z
    .param p9, "notLaunched"    # Z
    .param p10, "hidden"    # Z
    .param p11, "distractionFlags"    # I
    .param p13, "instantApp"    # Z
    .param p14, "virtualPreload"    # Z
    .param p15, "lastDisableAppCaller"    # Ljava/lang/String;
    .param p18, "installReason"    # I
    .param p19, "uninstallReason"    # I
    .param p20, "harmfulAppWarning"    # Ljava/lang/String;
    .param p21, "splashScreenTheme"    # Ljava/lang/String;
    .param p22, "firstInstallTime"    # J
    .param p24, "aspectRatio"    # I
    .param p25, "archiveState"    # Lcom/android/server/pm/pkg/ArchiveState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJJIZZZZI",
            "Landroid/util/ArrayMap<",
            "Landroid/content/pm/UserPackage;",
            "Lcom/android/server/pm/pkg/SuspendParams;",
            ">;ZZ",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;II",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "JI",
            "Lcom/android/server/pm/pkg/ArchiveState;",
            ")V"
        }
    .end annotation

    .line 1141
    .local p12, "suspendParams":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/pm/UserPackage;Lcom/android/server/pm/pkg/SuspendParams;>;"
    .local p16, "enabledComponents":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .local p17, "disabledComponents":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    const/16 v26, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-wide/from16 v2, p2

    move-wide/from16 v4, p4

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p11

    move-object/from16 v12, p12

    move/from16 v13, p13

    move/from16 v14, p14

    move-object/from16 v15, p15

    move-object/from16 v16, p16

    move-object/from16 v17, p17

    move/from16 v18, p18

    move/from16 v19, p19

    move-object/from16 v20, p20

    move-object/from16 v21, p21

    move-wide/from16 v22, p22

    move/from16 v24, p24

    move-object/from16 v25, p25

    invoke-virtual/range {v0 .. v26}, Lcom/android/server/pm/PackageSetting;->setUserState(IJJIZZZZILandroid/util/ArrayMap;ZZLjava/lang/String;Landroid/util/ArraySet;Landroid/util/ArraySet;IILjava/lang/String;Ljava/lang/String;JILcom/android/server/pm/pkg/ArchiveState;Z)V

    .line 1145
    return-void
.end method

.method setUserState(IJJIZZZZILandroid/util/ArrayMap;ZZLjava/lang/String;Landroid/util/ArraySet;Landroid/util/ArraySet;IILjava/lang/String;Ljava/lang/String;JILcom/android/server/pm/pkg/ArchiveState;Z)V
    .locals 16
    .param p1, "userId"    # I
    .param p2, "ceDataInode"    # J
    .param p4, "deDataInode"    # J
    .param p6, "enabled"    # I
    .param p7, "installed"    # Z
    .param p8, "stopped"    # Z
    .param p9, "notLaunched"    # Z
    .param p10, "hidden"    # Z
    .param p11, "distractionFlags"    # I
    .param p13, "instantApp"    # Z
    .param p14, "virtualPreload"    # Z
    .param p15, "lastDisableAppCaller"    # Ljava/lang/String;
    .param p18, "installReason"    # I
    .param p19, "uninstallReason"    # I
    .param p20, "harmfulAppWarning"    # Ljava/lang/String;
    .param p21, "splashScreenTheme"    # Ljava/lang/String;
    .param p22, "firstInstallTime"    # J
    .param p24, "aspectRatio"    # I
    .param p25, "archiveState"    # Lcom/android/server/pm/pkg/ArchiveState;
    .param p26, "isPrivacyHidden"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJJIZZZZI",
            "Landroid/util/ArrayMap<",
            "Landroid/content/pm/UserPackage;",
            "Lcom/android/server/pm/pkg/SuspendParams;",
            ">;ZZ",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;II",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "JI",
            "Lcom/android/server/pm/pkg/ArchiveState;",
            "Z)V"
        }
    .end annotation

    .line 1157
    .local p12, "suspendParams":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/pm/UserPackage;Lcom/android/server/pm/pkg/SuspendParams;>;"
    .local p16, "enabledComponents":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .local p17, "disabledComponents":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/pm/PackageSetting;->modifyUserState(I)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    move-result-object v0

    .line 1158
    move-object/from16 v1, p12

    invoke-virtual {v0, v1}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->setSuspendParams(Landroid/util/ArrayMap;)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    move-result-object v0

    .line 1159
    move-wide/from16 v2, p2

    invoke-virtual {v0, v2, v3}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->setCeDataInode(J)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    move-result-object v0

    .line 1160
    move-wide/from16 v4, p4

    invoke-virtual {v0, v4, v5}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->setDeDataInode(J)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    move-result-object v0

    .line 1161
    move/from16 v6, p6

    invoke-virtual {v0, v6}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->setEnabledState(I)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    move-result-object v0

    .line 1162
    move/from16 v7, p7

    invoke-virtual {v0, v7}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->setInstalled(Z)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    move-result-object v0

    .line 1163
    move/from16 v8, p8

    invoke-virtual {v0, v8}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->setStopped(Z)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    move-result-object v0

    .line 1164
    move/from16 v9, p9

    invoke-virtual {v0, v9}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->setNotLaunched(Z)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    move-result-object v0

    .line 1165
    move/from16 v10, p10

    invoke-virtual {v0, v10}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->setHidden(Z)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    move-result-object v0

    .line 1166
    move/from16 v11, p11

    invoke-virtual {v0, v11}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->setDistractionFlags(I)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    move-result-object v0

    .line 1167
    move-object/from16 v12, p15

    invoke-virtual {v0, v12}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->setLastDisableAppCaller(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    move-result-object v0

    .line 1168
    move-object/from16 v13, p16

    invoke-virtual {v0, v13}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->setEnabledComponents(Landroid/util/ArraySet;)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    move-result-object v0

    .line 1169
    move-object/from16 v14, p17

    invoke-virtual {v0, v14}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->setDisabledComponents(Landroid/util/ArraySet;)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    move-result-object v0

    .line 1170
    move/from16 v15, p18

    invoke-virtual {v0, v15}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->setInstallReason(I)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    move-result-object v0

    .line 1171
    move/from16 v1, p19

    invoke-virtual {v0, v1}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->setUninstallReason(I)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    move-result-object v0

    .line 1172
    move/from16 v1, p13

    invoke-virtual {v0, v1}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->setInstantApp(Z)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    move-result-object v0

    .line 1173
    move/from16 v1, p14

    invoke-virtual {v0, v1}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->setVirtualPreload(Z)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    move-result-object v0

    .line 1174
    move-object/from16 v1, p20

    invoke-virtual {v0, v1}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->setHarmfulAppWarning(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    move-result-object v0

    .line 1175
    move-object/from16 v1, p21

    invoke-virtual {v0, v1}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->setSplashScreenTheme(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    move-result-object v0

    .line 1176
    move-wide/from16 v1, p22

    invoke-virtual {v0, v1, v2}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->setFirstInstallTimeMillis(J)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    move-result-object v0

    .line 1177
    move/from16 v3, p24

    invoke-virtual {v0, v3}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->setMinAspectRatio(I)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    move-result-object v0

    .line 1178
    move-object/from16 v1, p25

    invoke-virtual {v0, v1}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->setArchiveState(Lcom/android/server/pm/pkg/ArchiveState;)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    move-result-object v0

    .line 1181
    move/from16 v2, p26

    invoke-virtual {v0, v2}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->setPrivacyHidden(Z)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    .line 1183
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/SettingBase;->onChanged()V

    .line 1184
    return-void
.end method

.method setUserState(ILcom/android/server/pm/pkg/PackageUserStateInternal;)V
    .locals 27
    .param p1, "userId"    # I
    .param p2, "otherState"    # Lcom/android/server/pm/pkg/PackageUserStateInternal;

    .line 1187
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/pkg/PackageUserState;->getCeDataInode()J

    move-result-wide v2

    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/pkg/PackageUserState;->getDeDataInode()J

    move-result-wide v4

    .line 1188
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/pkg/PackageUserState;->getEnabledState()I

    move-result v6

    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/pkg/PackageUserState;->isInstalled()Z

    move-result v7

    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/pkg/PackageUserState;->isStopped()Z

    move-result v8

    .line 1189
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/pkg/PackageUserState;->isNotLaunched()Z

    move-result v9

    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/pkg/PackageUserState;->isHidden()Z

    move-result v10

    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/pkg/PackageUserState;->getDistractionFlags()I

    move-result v11

    .line 1190
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/pkg/PackageUserStateInternal;->getSuspendParams()Lcom/android/server/utils/WatchedArrayMap;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1191
    move-object v12, v1

    goto :goto_0

    :cond_0
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/pkg/PackageUserStateInternal;->getSuspendParams()Lcom/android/server/utils/WatchedArrayMap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/utils/WatchedArrayMap;->untrackedStorage()Landroid/util/ArrayMap;

    move-result-object v0

    move-object v12, v0

    .line 1192
    :goto_0
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/pkg/PackageUserState;->isInstantApp()Z

    move-result v13

    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/pkg/PackageUserState;->isVirtualPreload()Z

    move-result v14

    .line 1193
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/pkg/PackageUserState;->getLastDisableAppCaller()Ljava/lang/String;

    move-result-object v15

    .line 1194
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/pkg/PackageUserStateInternal;->getEnabledComponentsNoCopy()Lcom/android/server/utils/WatchedArraySet;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1195
    move-object/from16 v16, v1

    goto :goto_1

    :cond_1
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/pkg/PackageUserStateInternal;->getEnabledComponentsNoCopy()Lcom/android/server/utils/WatchedArraySet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/utils/WatchedArraySet;->untrackedStorage()Landroid/util/ArraySet;

    move-result-object v0

    move-object/from16 v16, v0

    .line 1196
    :goto_1
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/pkg/PackageUserStateInternal;->getDisabledComponentsNoCopy()Lcom/android/server/utils/WatchedArraySet;

    move-result-object v0

    if-nez v0, :cond_2

    .line 1197
    nop

    :goto_2
    move-object/from16 v17, v1

    goto :goto_3

    :cond_2
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/pkg/PackageUserStateInternal;->getDisabledComponentsNoCopy()Lcom/android/server/utils/WatchedArraySet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/utils/WatchedArraySet;->untrackedStorage()Landroid/util/ArraySet;

    move-result-object v1

    goto :goto_2

    .line 1198
    :goto_3
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/pkg/PackageUserState;->getInstallReason()I

    move-result v18

    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/pkg/PackageUserState;->getUninstallReason()I

    move-result v19

    .line 1199
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/pkg/PackageUserState;->getHarmfulAppWarning()Ljava/lang/String;

    move-result-object v20

    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/pkg/PackageUserState;->getSplashScreenTheme()Ljava/lang/String;

    move-result-object v21

    .line 1200
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/pkg/PackageUserState;->getFirstInstallTimeMillis()J

    move-result-wide v22

    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/pkg/PackageUserState;->getMinAspectRatio()I

    move-result v24

    .line 1201
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/pkg/PackageUserState;->getArchiveState()Lcom/android/server/pm/pkg/ArchiveState;

    move-result-object v25

    .line 1204
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/pkg/PackageUserStateInternal;->isPrivacyHidden()Z

    move-result v26

    .line 1187
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual/range {v0 .. v26}, Lcom/android/server/pm/PackageSetting;->setUserState(IJJIZZZZILandroid/util/ArrayMap;ZZLjava/lang/String;Landroid/util/ArraySet;Landroid/util/ArraySet;IILjava/lang/String;Ljava/lang/String;JILcom/android/server/pm/pkg/ArchiveState;Z)V

    .line 1206
    return-void
.end method

.method public setUsesSdkLibraries([Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;
    .locals 0
    .param p1, "usesSdkLibraries"    # [Ljava/lang/String;

    .line 1727
    iput-object p1, p0, Lcom/android/server/pm/PackageSetting;->usesSdkLibraries:[Ljava/lang/String;

    .line 1728
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged()V

    .line 1729
    return-object p0
.end method

.method public setUsesSdkLibrariesOptional([Z)Lcom/android/server/pm/PackageSetting;
    .locals 0
    .param p1, "usesSdkLibrariesOptional"    # [Z

    .line 1739
    iput-object p1, p0, Lcom/android/server/pm/PackageSetting;->usesSdkLibrariesOptional:[Z

    .line 1740
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged()V

    .line 1741
    return-object p0
.end method

.method public setUsesSdkLibrariesVersionsMajor([J)Lcom/android/server/pm/PackageSetting;
    .locals 0
    .param p1, "usesSdkLibrariesVersions"    # [J

    .line 1733
    iput-object p1, p0, Lcom/android/server/pm/PackageSetting;->usesSdkLibrariesVersionsMajor:[J

    .line 1734
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged()V

    .line 1735
    return-object p0
.end method

.method public setUsesStaticLibraries([Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;
    .locals 0
    .param p1, "usesStaticLibraries"    # [Ljava/lang/String;

    .line 1745
    iput-object p1, p0, Lcom/android/server/pm/PackageSetting;->usesStaticLibraries:[Ljava/lang/String;

    .line 1746
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged()V

    .line 1747
    return-object p0
.end method

.method public setUsesStaticLibrariesVersions([J)Lcom/android/server/pm/PackageSetting;
    .locals 0
    .param p1, "usesStaticLibrariesVersions"    # [J

    .line 1751
    iput-object p1, p0, Lcom/android/server/pm/PackageSetting;->usesStaticLibrariesVersions:[J

    .line 1752
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged()V

    .line 1753
    return-object p0
.end method

.method setVirtualPreload(ZI)V
    .locals 1
    .param p1, "virtualPreload"    # Z
    .param p2, "userId"    # I

    .line 1115
    invoke-virtual {p0, p2}, Lcom/android/server/pm/PackageSetting;->modifyUserState(I)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->setVirtualPreload(Z)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    .line 1116
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged()V

    .line 1117
    return-void
.end method

.method public setVolumeUuid(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;
    .locals 0
    .param p1, "volumeUuid"    # Ljava/lang/String;

    .line 547
    iput-object p1, p0, Lcom/android/server/pm/PackageSetting;->volumeUuid:Ljava/lang/String;

    .line 548
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged()V

    .line 549
    return-object p0
.end method

.method public snapshot()Lcom/android/server/pm/PackageSetting;
    .locals 1

    .line 338
    iget-object v0, p0, Lcom/android/server/pm/PackageSetting;->mSnapshot:Lcom/android/server/utils/SnapshotCache;

    invoke-virtual {v0}, Lcom/android/server/utils/SnapshotCache;->snapshot()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageSetting;

    return-object v0
.end method

.method public bridge synthetic snapshot()Ljava/lang/Object;
    .locals 1

    .line 90
    invoke-virtual {p0}, Lcom/android/server/pm/PackageSetting;->snapshot()Lcom/android/server/pm/PackageSetting;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 691
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PackageSetting{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 692
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/pm/PackageSetting;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/pm/PackageSetting;->mAppId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 691
    return-object v0
.end method

.method public updateFrom(Lcom/android/server/pm/PackageSetting;)V
    .locals 1
    .param p1, "other"    # Lcom/android/server/pm/PackageSetting;

    .line 716
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/PackageSetting;->copyPackageSetting(Lcom/android/server/pm/PackageSetting;Z)V

    .line 718
    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->mimeGroups:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->mimeGroups:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 719
    .local v0, "mimeGroupNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/server/pm/PackageSetting;->updateMimeGroups(Ljava/util/Set;)Lcom/android/server/pm/PackageSetting;

    .line 721
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged()V

    .line 722
    return-void
.end method

.method updateMimeGroups(Ljava/util/Set;)Lcom/android/server/pm/PackageSetting;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/android/server/pm/PackageSetting;"
        }
    .end annotation

    .line 729
    .local p1, "newMimeGroupNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-nez p1, :cond_0

    .line 730
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/pm/PackageSetting;->mimeGroups:Ljava/util/Map;

    .line 731
    return-object p0

    .line 734
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/PackageSetting;->mimeGroups:Ljava/util/Map;

    if-nez v0, :cond_1

    .line 736
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/PackageSetting;->mimeGroups:Ljava/util/Map;

    .line 739
    :cond_1
    new-instance v0, Landroid/util/ArrayMap;

    .line 740
    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/util/ArrayMap;-><init>(I)V

    .line 742
    .local v0, "updatedMimeGroups":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 743
    .local v2, "mimeGroup":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/pm/PackageSetting;->mimeGroups:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 744
    iget-object v3, p0, Lcom/android/server/pm/PackageSetting;->mimeGroups:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    invoke-virtual {v0, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 746
    :cond_2
    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    invoke-virtual {v0, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 748
    .end local v2    # "mimeGroup":Ljava/lang/String;
    :goto_1
    goto :goto_0

    .line 749
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged()V

    .line 750
    iput-object v0, p0, Lcom/android/server/pm/PackageSetting;->mimeGroups:Ljava/util/Map;

    .line 751
    return-object p0
.end method

.method writePackageUserPermissionsProto(Landroid/util/proto/ProtoOutputStream;JLjava/util/List;Lcom/android/server/pm/permission/LegacyPermissionDataProvider;)V
    .locals 10
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J
    .param p5, "dataProvider"    # Lcom/android/server/pm/permission/LegacyPermissionDataProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/proto/ProtoOutputStream;",
            "J",
            "Ljava/util/List<",
            "Landroid/content/pm/UserInfo;",
            ">;",
            "Lcom/android/server/pm/permission/LegacyPermissionDataProvider;",
            ")V"
        }
    .end annotation

    .line 1363
    .local p4, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/UserInfo;

    .line 1364
    .local v1, "user":Landroid/content/pm/UserInfo;
    const-wide v2, 0x20b0000000cL

    invoke-virtual {p1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v2

    .line 1365
    .local v2, "permissionsToken":J
    iget v4, v1, Landroid/content/pm/UserInfo;->id:I

    const-wide v5, 0x10500000001L

    invoke-virtual {p1, v5, v6, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1367
    iget v4, p0, Lcom/android/server/pm/PackageSetting;->mAppId:I

    invoke-interface {p5, v4}, Lcom/android/server/pm/permission/LegacyPermissionDataProvider;->getLegacyPermissionState(I)Lcom/android/server/pm/permission/LegacyPermissionState;

    move-result-object v4

    iget v5, v1, Landroid/content/pm/UserInfo;->id:I

    .line 1368
    invoke-virtual {v4, v5}, Lcom/android/server/pm/permission/LegacyPermissionState;->getPermissionStates(I)Ljava/util/Collection;

    move-result-object v4

    .line 1369
    .local v4, "runtimePermissionStates":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;>;"
    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;

    .line 1370
    .local v6, "permission":Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;
    invoke-virtual {v6}, Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;->isGranted()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1371
    nop

    .line 1372
    invoke-virtual {v6}, Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;->getName()Ljava/lang/String;

    move-result-object v7

    .line 1371
    const-wide v8, 0x20900000002L

    invoke-virtual {p1, v8, v9, v7}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 1374
    .end local v6    # "permission":Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;
    :cond_0
    goto :goto_1

    .line 1375
    :cond_1
    invoke-virtual {p1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 1376
    .end local v1    # "user":Landroid/content/pm/UserInfo;
    .end local v2    # "permissionsToken":J
    goto :goto_0

    .line 1377
    .end local v4    # "runtimePermissionStates":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;>;"
    :cond_2
    return-void
.end method

.method protected writeUsersInfoToProto(Landroid/util/proto/ProtoOutputStream;J)V
    .locals 11
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J

    .line 1380
    iget-object v0, p0, Lcom/android/server/pm/PackageSetting;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 1381
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_3

    .line 1382
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v2

    .line 1383
    .local v2, "userToken":J
    iget-object v4, p0, Lcom/android/server/pm/PackageSetting;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    .line 1384
    .local v4, "userId":I
    iget-object v5, p0, Lcom/android/server/pm/PackageSetting;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v5, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/pkg/PackageUserStateInternal;

    .line 1385
    .local v5, "state":Lcom/android/server/pm/pkg/PackageUserStateInternal;
    const-wide v6, 0x10500000001L

    invoke-virtual {p1, v6, v7, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1387
    invoke-interface {v5}, Lcom/android/server/pm/pkg/PackageUserState;->isInstantApp()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1388
    const/4 v6, 0x2

    .local v6, "installType":I
    goto :goto_1

    .line 1389
    .end local v6    # "installType":I
    :cond_0
    invoke-interface {v5}, Lcom/android/server/pm/pkg/PackageUserState;->isInstalled()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1390
    const/4 v6, 0x1

    .restart local v6    # "installType":I
    goto :goto_1

    .line 1392
    .end local v6    # "installType":I
    :cond_1
    const/4 v6, 0x0

    .line 1394
    .restart local v6    # "installType":I
    :goto_1
    const-wide v7, 0x10e00000002L

    invoke-virtual {p1, v7, v8, v6}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1395
    const-wide v7, 0x10800000003L

    invoke-interface {v5}, Lcom/android/server/pm/pkg/PackageUserState;->isHidden()Z

    move-result v9

    invoke-virtual {p1, v7, v8, v9}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 1396
    const-wide v7, 0x1050000000aL

    invoke-interface {v5}, Lcom/android/server/pm/pkg/PackageUserState;->getDistractionFlags()I

    move-result v9

    invoke-virtual {p1, v7, v8, v9}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1397
    const-wide v7, 0x10800000004L

    invoke-interface {v5}, Lcom/android/server/pm/pkg/PackageUserState;->isSuspended()Z

    move-result v9

    invoke-virtual {p1, v7, v8, v9}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 1398
    invoke-interface {v5}, Lcom/android/server/pm/pkg/PackageUserState;->isSuspended()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1399
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_2
    invoke-interface {v5}, Lcom/android/server/pm/pkg/PackageUserStateInternal;->getSuspendParams()Lcom/android/server/utils/WatchedArrayMap;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/server/utils/WatchedArrayMap;->size()I

    move-result v8

    if-ge v7, v8, :cond_2

    .line 1400
    nop

    .line 1401
    invoke-interface {v5}, Lcom/android/server/pm/pkg/PackageUserStateInternal;->getSuspendParams()Lcom/android/server/utils/WatchedArrayMap;

    move-result-object v8

    invoke-virtual {v8, v7}, Lcom/android/server/utils/WatchedArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/UserPackage;

    iget-object v8, v8, Landroid/content/pm/UserPackage;->packageName:Ljava/lang/String;

    .line 1400
    const-wide v9, 0x20900000009L

    invoke-virtual {p1, v9, v10, v8}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 1402
    nop

    .line 1399
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 1408
    .end local v7    # "j":I
    :cond_2
    const-wide v7, 0x10800000005L

    invoke-interface {v5}, Lcom/android/server/pm/pkg/PackageUserState;->isStopped()Z

    move-result v9

    invoke-virtual {p1, v7, v8, v9}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 1409
    invoke-interface {v5}, Lcom/android/server/pm/pkg/PackageUserState;->isNotLaunched()Z

    move-result v7

    xor-int/lit8 v7, v7, 0x1

    const-wide v8, 0x10800000006L

    invoke-virtual {p1, v8, v9, v7}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 1410
    const-wide v7, 0x10e00000007L

    invoke-interface {v5}, Lcom/android/server/pm/pkg/PackageUserState;->getEnabledState()I

    move-result v9

    invoke-virtual {p1, v7, v8, v9}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1411
    nop

    .line 1413
    invoke-interface {v5}, Lcom/android/server/pm/pkg/PackageUserState;->getLastDisableAppCaller()Ljava/lang/String;

    move-result-object v7

    .line 1411
    const-wide v8, 0x10900000008L

    invoke-virtual {p1, v8, v9, v7}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 1414
    nop

    .line 1415
    invoke-interface {v5}, Lcom/android/server/pm/pkg/PackageUserState;->getFirstInstallTimeMillis()J

    move-result-wide v7

    .line 1414
    const-wide v9, 0x1050000000bL

    invoke-virtual {p1, v9, v10, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 1416
    invoke-interface {v5}, Lcom/android/server/pm/pkg/PackageUserState;->getArchiveState()Lcom/android/server/pm/pkg/ArchiveState;

    move-result-object v7

    invoke-static {p1, v7}, Lcom/android/server/pm/PackageSetting;->writeArchiveState(Landroid/util/proto/ProtoOutputStream;Lcom/android/server/pm/pkg/ArchiveState;)V

    .line 1417
    invoke-virtual {p1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 1381
    .end local v2    # "userToken":J
    .end local v4    # "userId":I
    .end local v5    # "state":Lcom/android/server/pm/pkg/PackageUserStateInternal;
    .end local v6    # "installType":I
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_3
    nop

    .line 1419
    .end local v1    # "i":I
    return-void
.end method
