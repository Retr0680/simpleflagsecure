.class Lcom/android/server/pm/InstallingSession;
.super Ljava/lang/Object;
.source "InstallingSession.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/InstallingSession$MultiPackageInstallingSession;
    }
.end annotation


# instance fields
.field final mAllowlistedRestrictedPermissions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final mApplicationEnabledSettingPersistent:Z

.field final mAutoRevokePermissionsMode:I

.field final mDataLoaderType:I

.field final mDependencyInstallerEnabled:Z

.field final mDevelopmentInstallFlags:I

.field final mDexoptCompilerFilter:Ljava/lang/String;

.field final mForceQueryableOverride:Z

.field final mHasAppMetadataFile:Z

.field mInstallFlags:I

.field final mInstallReason:I

.field final mInstallScenario:I

.field final mInstallSource:Lcom/android/server/pm/InstallSource;

.field final mIsInherit:Z

.field final mMissingSharedLibraryCount:I

.field final mMoveInfo:Lcom/android/server/pm/MoveInfo;

.field final mObserver:Landroid/content/pm/IPackageInstallObserver2;

.field final mOriginInfo:Lcom/android/server/pm/OriginInfo;

.field final mPackageAbiOverride:Ljava/lang/String;

.field final mPackageLite:Landroid/content/pm/parsing/PackageLite;

.field final mPackageSource:I

.field mParentInstallingSession:Lcom/android/server/pm/InstallingSession$MultiPackageInstallingSession;

.field final mPermissionStates:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final mPm:Lcom/android/server/pm/PackageManagerService;

.field final mPreVerifiedDomains:Landroid/content/pm/verify/domain/DomainSet;

.field final mRequireUserAction:I

.field final mRequiredInstalledVersionCode:J

.field mRet:I

.field final mSessionId:I

.field final mSigningDetails:Landroid/content/pm/SigningDetails;

.field mTraceCookie:I

.field mTraceMethod:Ljava/lang/String;

.field private final mUser:Landroid/os/UserHandle;

.field final mVolumeUuid:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$3YxEVU-qWs8li-YcaWhP_DprQyQ(Lcom/android/server/pm/InstallingSession;Lcom/android/server/pm/InstallRequest;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/pm/InstallingSession;->lambda$processPendingInstall$0(Lcom/android/server/pm/InstallRequest;)V

    return-void
.end method

.method public static synthetic $r8$lambda$W6cR9Ys08-5335--4Z-HKpTJitw(Lcom/android/server/pm/InstallingSession;Ljava/util/List;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/pm/InstallingSession;->lambda$installApexPackages$2(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic $r8$lambda$gEcdI8cK9dzFagC4AcY_lMc7VaM(Lcom/android/server/pm/InstallingSession;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/pm/InstallingSession;->start()V

    return-void
.end method

.method public static synthetic $r8$lambda$zYUVT-RGxbD5-C2bJNfd8Hvzf3M(Lcom/android/server/pm/InstallingSession;Ljava/util/List;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/pm/InstallingSession;->lambda$processInstallRequests$1(Ljava/util/List;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleReturnCode(Lcom/android/server/pm/InstallingSession;Lcom/android/server/pm/InstallRequest;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/pm/InstallingSession;->handleReturnCode(Lcom/android/server/pm/InstallRequest;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleStartCopy(Lcom/android/server/pm/InstallingSession;Lcom/android/server/pm/InstallRequest;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/pm/InstallingSession;->handleStartCopy(Lcom/android/server/pm/InstallRequest;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mprocessInstallRequests(Lcom/android/server/pm/InstallingSession;ZLjava/util/List;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/InstallingSession;->processInstallRequests(ZLjava/util/List;)V

    return-void
.end method

.method constructor <init>(ILjava/io/File;Landroid/content/pm/IPackageInstallObserver2;Landroid/content/pm/PackageInstaller$SessionParams;Lcom/android/server/pm/InstallSource;Landroid/os/UserHandle;Landroid/content/pm/SigningDetails;ILandroid/content/pm/parsing/PackageLite;Landroid/content/pm/verify/domain/DomainSet;Lcom/android/server/pm/PackageManagerService;ZZI)V
    .locals 12
    .param p1, "sessionId"    # I
    .param p2, "stagedDir"    # Ljava/io/File;
    .param p3, "observer"    # Landroid/content/pm/IPackageInstallObserver2;
    .param p4, "sessionParams"    # Landroid/content/pm/PackageInstaller$SessionParams;
    .param p5, "installSource"    # Lcom/android/server/pm/InstallSource;
    .param p6, "user"    # Landroid/os/UserHandle;
    .param p7, "signingDetails"    # Landroid/content/pm/SigningDetails;
    .param p8, "installerUid"    # I
    .param p9, "packageLite"    # Landroid/content/pm/parsing/PackageLite;
    .param p10, "preVerifiedDomains"    # Landroid/content/pm/verify/domain/DomainSet;
    .param p11, "pm"    # Lcom/android/server/pm/PackageManagerService;
    .param p12, "hasAppMetadatafile"    # Z
    .param p13, "dependencyInstallerEnabled"    # Z
    .param p14, "missingSharedLibraryCount"    # I

    .line 152
    move-object/from16 v0, p4

    move-object/from16 v1, p5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 153
    move-object/from16 v2, p11

    iput-object v2, p0, Lcom/android/server/pm/InstallingSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 154
    move-object/from16 v3, p6

    iput-object v3, p0, Lcom/android/server/pm/InstallingSession;->mUser:Landroid/os/UserHandle;

    .line 155
    invoke-static {p2}, Lcom/android/server/pm/OriginInfo;->fromStagedFile(Ljava/io/File;)Lcom/android/server/pm/OriginInfo;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/pm/InstallingSession;->mOriginInfo:Lcom/android/server/pm/OriginInfo;

    .line 156
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/server/pm/InstallingSession;->mMoveInfo:Lcom/android/server/pm/MoveInfo;

    .line 157
    iget-object v4, v1, Lcom/android/server/pm/InstallSource;->mInstallerPackageName:Ljava/lang/String;

    iget v5, v0, Landroid/content/pm/PackageInstaller$SessionParams;->installReason:I

    move/from16 v6, p8

    invoke-direct {p0, v4, v6, v5}, Lcom/android/server/pm/InstallingSession;->fixUpInstallReason(Ljava/lang/String;II)I

    move-result v4

    iput v4, p0, Lcom/android/server/pm/InstallingSession;->mInstallReason:I

    .line 159
    iget v4, v0, Landroid/content/pm/PackageInstaller$SessionParams;->installScenario:I

    iput v4, p0, Lcom/android/server/pm/InstallingSession;->mInstallScenario:I

    .line 160
    iput-object p3, p0, Lcom/android/server/pm/InstallingSession;->mObserver:Landroid/content/pm/IPackageInstallObserver2;

    .line 161
    iget v5, v0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    iput v5, p0, Lcom/android/server/pm/InstallingSession;->mInstallFlags:I

    .line 162
    iget v5, v0, Landroid/content/pm/PackageInstaller$SessionParams;->developmentInstallFlags:I

    iput v5, p0, Lcom/android/server/pm/InstallingSession;->mDevelopmentInstallFlags:I

    .line 163
    iput-object v1, p0, Lcom/android/server/pm/InstallingSession;->mInstallSource:Lcom/android/server/pm/InstallSource;

    .line 164
    iget-object v5, v0, Landroid/content/pm/PackageInstaller$SessionParams;->volumeUuid:Ljava/lang/String;

    iput-object v5, p0, Lcom/android/server/pm/InstallingSession;->mVolumeUuid:Ljava/lang/String;

    .line 165
    iget-object v5, v0, Landroid/content/pm/PackageInstaller$SessionParams;->abiOverride:Ljava/lang/String;

    iput-object v5, p0, Lcom/android/server/pm/InstallingSession;->mPackageAbiOverride:Ljava/lang/String;

    .line 166
    invoke-virtual {v0}, Landroid/content/pm/PackageInstaller$SessionParams;->getPermissionStates()Landroid/util/ArrayMap;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/pm/InstallingSession;->mPermissionStates:Landroid/util/ArrayMap;

    .line 167
    iget-object v5, v0, Landroid/content/pm/PackageInstaller$SessionParams;->whitelistedRestrictedPermissions:Ljava/util/List;

    iput-object v5, p0, Lcom/android/server/pm/InstallingSession;->mAllowlistedRestrictedPermissions:Ljava/util/List;

    .line 168
    iget v5, v0, Landroid/content/pm/PackageInstaller$SessionParams;->autoRevokePermissionsMode:I

    iput v5, p0, Lcom/android/server/pm/InstallingSession;->mAutoRevokePermissionsMode:I

    .line 169
    move-object/from16 v5, p7

    iput-object v5, p0, Lcom/android/server/pm/InstallingSession;->mSigningDetails:Landroid/content/pm/SigningDetails;

    .line 170
    iget-boolean v7, v0, Landroid/content/pm/PackageInstaller$SessionParams;->forceQueryableOverride:Z

    iput-boolean v7, p0, Lcom/android/server/pm/InstallingSession;->mForceQueryableOverride:Z

    .line 171
    iget-object v7, v0, Landroid/content/pm/PackageInstaller$SessionParams;->dataLoaderParams:Landroid/content/pm/DataLoaderParams;

    const/4 v8, 0x0

    if-eqz v7, :cond_0

    .line 172
    iget-object v7, v0, Landroid/content/pm/PackageInstaller$SessionParams;->dataLoaderParams:Landroid/content/pm/DataLoaderParams;

    invoke-virtual {v7}, Landroid/content/pm/DataLoaderParams;->getType()I

    move-result v7

    goto :goto_0

    :cond_0
    move v7, v8

    :goto_0
    iput v7, p0, Lcom/android/server/pm/InstallingSession;->mDataLoaderType:I

    .line 173
    iget-wide v9, v0, Landroid/content/pm/PackageInstaller$SessionParams;->requiredInstalledVersionCode:J

    iput-wide v9, p0, Lcom/android/server/pm/InstallingSession;->mRequiredInstalledVersionCode:J

    .line 174
    iget v7, v0, Landroid/content/pm/PackageInstaller$SessionParams;->packageSource:I

    iput v7, p0, Lcom/android/server/pm/InstallingSession;->mPackageSource:I

    .line 175
    move-object/from16 v7, p9

    iput-object v7, p0, Lcom/android/server/pm/InstallingSession;->mPackageLite:Landroid/content/pm/parsing/PackageLite;

    .line 176
    iget v9, v0, Landroid/content/pm/PackageInstaller$SessionParams;->mode:I

    const/4 v10, 0x2

    if-ne v9, v10, :cond_1

    const/4 v8, 0x1

    :cond_1
    iput-boolean v8, p0, Lcom/android/server/pm/InstallingSession;->mIsInherit:Z

    .line 177
    iput p1, p0, Lcom/android/server/pm/InstallingSession;->mSessionId:I

    .line 178
    iget v8, v0, Landroid/content/pm/PackageInstaller$SessionParams;->requireUserAction:I

    iput v8, p0, Lcom/android/server/pm/InstallingSession;->mRequireUserAction:I

    .line 179
    iget-boolean v8, v0, Landroid/content/pm/PackageInstaller$SessionParams;->applicationEnabledSettingPersistent:Z

    iput-boolean v8, p0, Lcom/android/server/pm/InstallingSession;->mApplicationEnabledSettingPersistent:Z

    .line 180
    move-object/from16 v8, p10

    iput-object v8, p0, Lcom/android/server/pm/InstallingSession;->mPreVerifiedDomains:Landroid/content/pm/verify/domain/DomainSet;

    .line 181
    move/from16 v9, p12

    iput-boolean v9, p0, Lcom/android/server/pm/InstallingSession;->mHasAppMetadataFile:Z

    .line 182
    iget-object v10, v0, Landroid/content/pm/PackageInstaller$SessionParams;->dexoptCompilerFilter:Ljava/lang/String;

    iput-object v10, p0, Lcom/android/server/pm/InstallingSession;->mDexoptCompilerFilter:Ljava/lang/String;

    .line 183
    move/from16 v10, p13

    iput-boolean v10, p0, Lcom/android/server/pm/InstallingSession;->mDependencyInstallerEnabled:Z

    .line 184
    move/from16 v11, p14

    iput v11, p0, Lcom/android/server/pm/InstallingSession;->mMissingSharedLibraryCount:I

    .line 185
    return-void
.end method

.method constructor <init>(Lcom/android/server/pm/OriginInfo;Lcom/android/server/pm/MoveInfo;Landroid/content/pm/IPackageInstallObserver2;IILcom/android/server/pm/InstallSource;Ljava/lang/String;Landroid/os/UserHandle;Ljava/lang/String;ILandroid/content/pm/parsing/PackageLite;Lcom/android/server/pm/PackageManagerService;)V
    .locals 12
    .param p1, "originInfo"    # Lcom/android/server/pm/OriginInfo;
    .param p2, "moveInfo"    # Lcom/android/server/pm/MoveInfo;
    .param p3, "observer"    # Landroid/content/pm/IPackageInstallObserver2;
    .param p4, "installFlags"    # I
    .param p5, "developmentInstallFlags"    # I
    .param p6, "installSource"    # Lcom/android/server/pm/InstallSource;
    .param p7, "volumeUuid"    # Ljava/lang/String;
    .param p8, "user"    # Landroid/os/UserHandle;
    .param p9, "packageAbiOverride"    # Ljava/lang/String;
    .param p10, "packageSource"    # I
    .param p11, "packageLite"    # Landroid/content/pm/parsing/PackageLite;
    .param p12, "pm"    # Lcom/android/server/pm/PackageManagerService;

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    move-object/from16 v0, p12

    iput-object v0, p0, Lcom/android/server/pm/InstallingSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 115
    move-object/from16 v1, p8

    iput-object v1, p0, Lcom/android/server/pm/InstallingSession;->mUser:Landroid/os/UserHandle;

    .line 116
    iput-object p1, p0, Lcom/android/server/pm/InstallingSession;->mOriginInfo:Lcom/android/server/pm/OriginInfo;

    .line 117
    iput-object p2, p0, Lcom/android/server/pm/InstallingSession;->mMoveInfo:Lcom/android/server/pm/MoveInfo;

    .line 118
    move-object v2, p3

    iput-object v2, p0, Lcom/android/server/pm/InstallingSession;->mObserver:Landroid/content/pm/IPackageInstallObserver2;

    .line 119
    move/from16 v3, p4

    iput v3, p0, Lcom/android/server/pm/InstallingSession;->mInstallFlags:I

    .line 120
    move/from16 v4, p5

    iput v4, p0, Lcom/android/server/pm/InstallingSession;->mDevelopmentInstallFlags:I

    .line 121
    invoke-static/range {p6 .. p6}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/InstallSource;

    iput-object v5, p0, Lcom/android/server/pm/InstallingSession;->mInstallSource:Lcom/android/server/pm/InstallSource;

    .line 122
    move-object/from16 v5, p7

    iput-object v5, p0, Lcom/android/server/pm/InstallingSession;->mVolumeUuid:Ljava/lang/String;

    .line 123
    move-object/from16 v6, p9

    iput-object v6, p0, Lcom/android/server/pm/InstallingSession;->mPackageAbiOverride:Ljava/lang/String;

    .line 125
    new-instance v7, Landroid/util/ArrayMap;

    invoke-direct {v7}, Landroid/util/ArrayMap;-><init>()V

    iput-object v7, p0, Lcom/android/server/pm/InstallingSession;->mPermissionStates:Landroid/util/ArrayMap;

    .line 126
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/android/server/pm/InstallingSession;->mAllowlistedRestrictedPermissions:Ljava/util/List;

    .line 127
    const/4 v8, 0x3

    iput v8, p0, Lcom/android/server/pm/InstallingSession;->mAutoRevokePermissionsMode:I

    .line 128
    sget-object v8, Landroid/content/pm/SigningDetails;->UNKNOWN:Landroid/content/pm/SigningDetails;

    iput-object v8, p0, Lcom/android/server/pm/InstallingSession;->mSigningDetails:Landroid/content/pm/SigningDetails;

    .line 129
    const/4 v8, 0x0

    iput v8, p0, Lcom/android/server/pm/InstallingSession;->mInstallReason:I

    .line 130
    iput v8, p0, Lcom/android/server/pm/InstallingSession;->mInstallScenario:I

    .line 131
    iput-boolean v8, p0, Lcom/android/server/pm/InstallingSession;->mForceQueryableOverride:Z

    .line 132
    iput v8, p0, Lcom/android/server/pm/InstallingSession;->mDataLoaderType:I

    .line 133
    const-wide/16 v9, -0x1

    iput-wide v9, p0, Lcom/android/server/pm/InstallingSession;->mRequiredInstalledVersionCode:J

    .line 134
    move/from16 v9, p10

    iput v9, p0, Lcom/android/server/pm/InstallingSession;->mPackageSource:I

    .line 135
    move-object/from16 v10, p11

    iput-object v10, p0, Lcom/android/server/pm/InstallingSession;->mPackageLite:Landroid/content/pm/parsing/PackageLite;

    .line 136
    iput-boolean v8, p0, Lcom/android/server/pm/InstallingSession;->mIsInherit:Z

    .line 137
    const/4 v11, -0x1

    iput v11, p0, Lcom/android/server/pm/InstallingSession;->mSessionId:I

    .line 138
    iput v8, p0, Lcom/android/server/pm/InstallingSession;->mRequireUserAction:I

    .line 139
    iput-boolean v8, p0, Lcom/android/server/pm/InstallingSession;->mApplicationEnabledSettingPersistent:Z

    .line 140
    iput-object v7, p0, Lcom/android/server/pm/InstallingSession;->mPreVerifiedDomains:Landroid/content/pm/verify/domain/DomainSet;

    .line 141
    iput-boolean v8, p0, Lcom/android/server/pm/InstallingSession;->mHasAppMetadataFile:Z

    .line 142
    iput-object v7, p0, Lcom/android/server/pm/InstallingSession;->mDexoptCompilerFilter:Ljava/lang/String;

    .line 143
    iput-boolean v8, p0, Lcom/android/server/pm/InstallingSession;->mDependencyInstallerEnabled:Z

    .line 144
    iput v8, p0, Lcom/android/server/pm/InstallingSession;->mMissingSharedLibraryCount:I

    .line 145
    return-void
.end method

.method private cleanUpForFailedInstall(Lcom/android/server/pm/InstallRequest;)V
    .locals 4
    .param p1, "request"    # Lcom/android/server/pm/InstallRequest;

    .line 562
    invoke-virtual {p1}, Lcom/android/server/pm/InstallRequest;->isInstallMove()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 563
    iget-object v0, p0, Lcom/android/server/pm/InstallingSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {p1}, Lcom/android/server/pm/InstallRequest;->getMoveToUuid()Ljava/lang/String;

    move-result-object v1

    .line 564
    invoke-virtual {p1}, Lcom/android/server/pm/InstallRequest;->getMovePackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/server/pm/InstallRequest;->getMoveFromCodePath()Ljava/lang/String;

    move-result-object v3

    .line 563
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/pm/PackageManagerService;->cleanUpForMoveInstall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 566
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/InstallingSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {p1}, Lcom/android/server/pm/InstallRequest;->getCodeFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/pm/PackageManagerService;->removeCodePath(Ljava/io/File;)V

    .line 568
    :goto_0
    return-void
.end method

.method private copyApk(Lcom/android/server/pm/InstallRequest;)I
    .locals 1
    .param p1, "request"    # Lcom/android/server/pm/InstallRequest;

    .line 311
    iget-object v0, p0, Lcom/android/server/pm/InstallingSession;->mMoveInfo:Lcom/android/server/pm/MoveInfo;

    if-nez v0, :cond_0

    .line 312
    invoke-direct {p0, p1}, Lcom/android/server/pm/InstallingSession;->copyApkForFileInstall(Lcom/android/server/pm/InstallRequest;)I

    move-result v0

    return v0

    .line 314
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/pm/InstallingSession;->copyApkForMoveInstall(Lcom/android/server/pm/InstallRequest;)I

    move-result v0

    return v0
.end method

.method private copyApkForFileInstall(Lcom/android/server/pm/InstallRequest;)I
    .locals 11
    .param p1, "request"    # Lcom/android/server/pm/InstallRequest;

    .line 319
    const-string v0, "Failed to create copy file"

    const-string v1, "Failed to copy native libraries"

    const-string v2, "Copying native libraries failed"

    const-string v3, "PackageManager"

    const-string v4, "Failed to copy package"

    const-string v5, "copyApk"

    const-wide/32 v6, 0x40000

    invoke-static {v6, v7, v5}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 321
    :try_start_0
    iget-object v5, p0, Lcom/android/server/pm/InstallingSession;->mOriginInfo:Lcom/android/server/pm/OriginInfo;

    iget-boolean v5, v5, Lcom/android/server/pm/OriginInfo;->mStaged:Z

    const/4 v8, 0x1

    if-eqz v5, :cond_0

    .line 325
    iget-object v0, p0, Lcom/android/server/pm/InstallingSession;->mOriginInfo:Lcom/android/server/pm/OriginInfo;

    iget-object v0, v0, Lcom/android/server/pm/OriginInfo;->mFile:Ljava/io/File;

    invoke-virtual {p1, v0}, Lcom/android/server/pm/InstallRequest;->setCodeFile(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 326
    nop

    .line 374
    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    .line 326
    return v8

    .line 374
    :catchall_0
    move-exception v0

    goto/16 :goto_6

    .line 330
    :cond_0
    :try_start_1
    iget v5, p0, Lcom/android/server/pm/InstallingSession;->mInstallFlags:I

    and-int/lit16 v5, v5, 0x800

    if-eqz v5, :cond_1

    move v5, v8

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    .line 332
    .local v5, "isEphemeral":Z
    :goto_0
    iget-object v9, p0, Lcom/android/server/pm/InstallingSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v9, v9, Lcom/android/server/pm/PackageManagerService;->mInstallerService:Lcom/android/server/pm/PackageInstallerService;

    iget-object v10, p0, Lcom/android/server/pm/InstallingSession;->mVolumeUuid:Ljava/lang/String;

    .line 333
    invoke-virtual {v9, v10, v5}, Lcom/android/server/pm/PackageInstallerService;->allocateStageDirLegacy(Ljava/lang/String;Z)Ljava/io/File;

    move-result-object v9

    .line 332
    invoke-virtual {p1, v9}, Lcom/android/server/pm/InstallRequest;->setCodeFile(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 340
    .end local v5    # "isEphemeral":Z
    nop

    .line 342
    :try_start_2
    iget-object v0, p0, Lcom/android/server/pm/InstallingSession;->mOriginInfo:Lcom/android/server/pm/OriginInfo;

    iget-object v0, v0, Lcom/android/server/pm/OriginInfo;->mFile:Ljava/io/File;

    .line 343
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/server/pm/InstallRequest;->getCodeFile()Ljava/io/File;

    move-result-object v5

    .line 342
    invoke-static {v0, v5}, Lcom/android/server/pm/PackageManagerServiceUtils;->copyPackage(Ljava/lang/String;Ljava/io/File;)I

    move-result v0

    .line 344
    .local v0, "ret":I
    if-eq v0, v8, :cond_2

    .line 345
    move-object v1, v4

    .line 346
    .local v1, "errorMessage":Ljava/lang/String;
    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    invoke-virtual {p1, v0, v4}, Lcom/android/server/pm/InstallRequest;->setError(ILjava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 348
    nop

    .line 374
    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    .line 348
    return v0

    .line 351
    .end local v1    # "errorMessage":Ljava/lang/String;
    :cond_2
    nop

    .line 352
    :try_start_3
    invoke-virtual {p1}, Lcom/android/server/pm/InstallRequest;->getCodeFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    .line 351
    invoke-static {v4}, Landroid/os/incremental/IncrementalManager;->isIncrementalPath(Ljava/lang/String;)Z

    move-result v4

    .line 353
    .local v4, "isIncremental":Z
    new-instance v5, Ljava/io/File;

    invoke-virtual {p1}, Lcom/android/server/pm/InstallRequest;->getCodeFile()Ljava/io/File;

    move-result-object v9

    const-string/jumbo v10, "lib"

    invoke-direct {v5, v9, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 354
    .local v5, "libraryRoot":Ljava/io/File;
    const/4 v9, 0x0

    .line 356
    .local v9, "handle":Lcom/android/internal/content/NativeLibraryHelper$Handle;
    :try_start_4
    invoke-virtual {p1}, Lcom/android/server/pm/InstallRequest;->getCodeFile()Ljava/io/File;

    move-result-object v10

    invoke-static {v10}, Lcom/android/internal/content/NativeLibraryHelper$Handle;->create(Ljava/io/File;)Lcom/android/internal/content/NativeLibraryHelper$Handle;

    move-result-object v10

    move-object v9, v10

    .line 357
    nop

    .line 358
    invoke-virtual {p1}, Lcom/android/server/pm/InstallRequest;->getAbiOverride()Ljava/lang/String;

    move-result-object v10

    .line 357
    invoke-static {v9, v5, v10, v4}, Lcom/android/internal/content/NativeLibraryHelper;->copyNativeBinariesWithOverride(Lcom/android/internal/content/NativeLibraryHelper$Handle;Ljava/io/File;Ljava/lang/String;Z)I

    move-result v10

    move v0, v10

    .line 359
    if-eq v0, v8, :cond_3

    .line 360
    move-object v8, v1

    .line 361
    .local v8, "errorMessage":Ljava/lang/String;
    invoke-virtual {p1, v0, v1}, Lcom/android/server/pm/InstallRequest;->setError(ILjava/lang/String;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_1

    .line 369
    .end local v8    # "errorMessage":Ljava/lang/String;
    :catchall_1
    move-exception v1

    goto :goto_5

    .line 363
    :catch_0
    move-exception v1

    goto :goto_3

    .line 369
    :cond_3
    :goto_1
    :try_start_5
    invoke-static {v9}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 370
    :goto_2
    goto :goto_4

    .line 363
    :goto_3
    nop

    .line 364
    .local v1, "e":Ljava/io/IOException;
    move-object v8, v2

    .line 365
    .restart local v8    # "errorMessage":Ljava/lang/String;
    :try_start_6
    invoke-static {v3, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 366
    const/4 v3, -0x1

    invoke-static {v2, v3}, Lcom/android/server/pm/PackageManagerException;->ofInternalError(Ljava/lang/String;I)Lcom/android/server/pm/PackageManagerException;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/android/server/pm/InstallRequest;->setError(Lcom/android/server/pm/PackageManagerException;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 369
    .end local v1    # "e":Ljava/io/IOException;
    .end local v8    # "errorMessage":Ljava/lang/String;
    :try_start_7
    invoke-static {v9}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_2

    .line 372
    :goto_4
    nop

    .line 374
    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    .line 372
    return v0

    .line 369
    :goto_5
    :try_start_8
    invoke-static {v9}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 370
    nop

    .end local p0    # "this":Lcom/android/server/pm/InstallingSession;
    .end local p1    # "request":Lcom/android/server/pm/InstallRequest;
    throw v1

    .line 334
    .end local v0    # "ret":I
    .end local v4    # "isIncremental":Z
    .end local v5    # "libraryRoot":Ljava/io/File;
    .end local v9    # "handle":Lcom/android/internal/content/NativeLibraryHelper$Handle;
    .restart local p0    # "this":Lcom/android/server/pm/InstallingSession;
    .restart local p1    # "request":Lcom/android/server/pm/InstallRequest;
    :catch_1
    move-exception v1

    nop

    .line 335
    .restart local v1    # "e":Ljava/io/IOException;
    move-object v2, v0

    .line 336
    .local v2, "errorMessage":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to create copy file: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    const/4 v3, -0x4

    .line 338
    .local v3, "ret":I
    invoke-virtual {p1, v3, v0}, Lcom/android/server/pm/InstallRequest;->setError(ILjava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 339
    nop

    .line 374
    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    .line 339
    return v3

    .line 374
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "errorMessage":Ljava/lang/String;
    .end local v3    # "ret":I
    :goto_6
    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    .line 375
    throw v0
.end method

.method private copyApkForMoveInstall(Lcom/android/server/pm/InstallRequest;)I
    .locals 10
    .param p1, "request"    # Lcom/android/server/pm/InstallRequest;

    .line 383
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/InstallingSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mInstallLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerTracedLock;->acquireLock()Lcom/android/server/pm/PackageManagerTracedLock;

    move-result-object v0
    :try_end_0
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v0

    .line 384
    .local v1, "installLock":Lcom/android/server/pm/PackageManagerTracedLock;
    :try_start_1
    iget-object v0, p0, Lcom/android/server/pm/InstallingSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService;->mInstaller:Lcom/android/server/pm/Installer;

    iget-object v0, p0, Lcom/android/server/pm/InstallingSession;->mMoveInfo:Lcom/android/server/pm/MoveInfo;

    iget-object v3, v0, Lcom/android/server/pm/MoveInfo;->mFromUuid:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/server/pm/InstallingSession;->mMoveInfo:Lcom/android/server/pm/MoveInfo;

    iget-object v4, v0, Lcom/android/server/pm/MoveInfo;->mToUuid:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/server/pm/InstallingSession;->mMoveInfo:Lcom/android/server/pm/MoveInfo;

    iget-object v5, v0, Lcom/android/server/pm/MoveInfo;->mPackageName:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/server/pm/InstallingSession;->mMoveInfo:Lcom/android/server/pm/MoveInfo;

    iget v6, v0, Lcom/android/server/pm/MoveInfo;->mAppId:I

    iget-object v0, p0, Lcom/android/server/pm/InstallingSession;->mMoveInfo:Lcom/android/server/pm/MoveInfo;

    iget-object v7, v0, Lcom/android/server/pm/MoveInfo;->mSeInfo:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/server/pm/InstallingSession;->mMoveInfo:Lcom/android/server/pm/MoveInfo;

    iget v8, v0, Lcom/android/server/pm/MoveInfo;->mTargetSdkVersion:I

    iget-object v0, p0, Lcom/android/server/pm/InstallingSession;->mMoveInfo:Lcom/android/server/pm/MoveInfo;

    iget-object v9, v0, Lcom/android/server/pm/MoveInfo;->mFromCodePath:Ljava/lang/String;

    invoke-virtual/range {v2 .. v9}, Lcom/android/server/pm/Installer;->moveCompleteApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 387
    if-eqz v1, :cond_0

    :try_start_2
    invoke-virtual {v1}, Lcom/android/server/pm/PackageManagerTracedLock;->close()V
    :try_end_2
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .end local v1    # "installLock":Lcom/android/server/pm/PackageManagerTracedLock;
    :catch_0
    move-exception v0

    goto :goto_2

    .line 393
    :cond_0
    :goto_0
    nop

    .line 395
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/pm/InstallingSession;->mMoveInfo:Lcom/android/server/pm/MoveInfo;

    iget-object v1, v1, Lcom/android/server/pm/MoveInfo;->mFromCodePath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    .line 396
    .local v0, "toPathName":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/android/server/pm/InstallingSession;->mMoveInfo:Lcom/android/server/pm/MoveInfo;

    iget-object v2, v2, Lcom/android/server/pm/MoveInfo;->mToUuid:Ljava/lang/String;

    .line 397
    invoke-static {v2}, Landroid/os/Environment;->getDataAppDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 396
    invoke-virtual {p1, v1}, Lcom/android/server/pm/InstallRequest;->setCodeFile(Ljava/io/File;)V

    .line 400
    const/4 v1, 0x1

    return v1

    .line 383
    .end local v0    # "toPathName":Ljava/lang/String;
    .restart local v1    # "installLock":Lcom/android/server/pm/PackageManagerTracedLock;
    :catchall_0
    move-exception v0

    move-object v2, v0

    if-eqz v1, :cond_1

    :try_start_3
    invoke-virtual {v1}, Lcom/android/server/pm/PackageManagerTracedLock;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    :try_start_4
    invoke-virtual {v2, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    nop

    .end local p0    # "this":Lcom/android/server/pm/InstallingSession;
    .end local p1    # "request":Lcom/android/server/pm/InstallRequest;
    throw v2
    :try_end_4
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_4 .. :try_end_4} :catch_0

    .line 387
    .end local v1    # "installLock":Lcom/android/server/pm/PackageManagerTracedLock;
    .restart local p0    # "this":Lcom/android/server/pm/InstallingSession;
    .restart local p1    # "request":Lcom/android/server/pm/InstallRequest;
    :goto_2
    nop

    .line 388
    .local v0, "e":Lcom/android/server/pm/Installer$InstallerException;
    const-string v1, "Failed to move app"

    .line 389
    .local v1, "errorMessage":Ljava/lang/String;
    const/4 v2, -0x2

    const-string v3, "Failed to move app"

    invoke-static {v3, v2}, Lcom/android/server/pm/PackageManagerException;->ofInternalError(Ljava/lang/String;I)Lcom/android/server/pm/PackageManagerException;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/android/server/pm/InstallRequest;->setError(Lcom/android/server/pm/PackageManagerException;)V

    .line 391
    const-string v2, "PackageManager"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 392
    const/16 v2, -0x6e

    return v2
.end method

.method private fixUpInstallReason(Ljava/lang/String;II)I
    .locals 3
    .param p1, "installerPackageName"    # Ljava/lang/String;
    .param p2, "installerUid"    # I
    .param p3, "installReason"    # I

    .line 425
    iget-object v0, p0, Lcom/android/server/pm/InstallingSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v0

    const-string v1, "android.permission.INSTALL_PACKAGES"

    invoke-interface {v0, v1, p2}, Lcom/android/server/pm/Computer;->checkUidPermission(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    .line 429
    return p3

    .line 431
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/InstallingSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mProtectedPackages:Lcom/android/server/pm/ProtectedPackages;

    .line 432
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 431
    invoke-virtual {v0, v1}, Lcom/android/server/pm/ProtectedPackages;->getDeviceOwnerOrProfileOwnerPackage(I)Ljava/lang/String;

    move-result-object v0

    .line 433
    .local v0, "ownerPackage":Ljava/lang/String;
    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 436
    return v1

    .line 440
    :cond_1
    if-ne p3, v1, :cond_2

    .line 445
    const/4 v1, 0x0

    return v1

    .line 450
    :cond_2
    return p3
.end method

.method private handleReturnCode(Lcom/android/server/pm/InstallRequest;)V
    .locals 0
    .param p1, "installRequest"    # Lcom/android/server/pm/InstallRequest;

    .line 288
    invoke-direct {p0, p1}, Lcom/android/server/pm/InstallingSession;->processPendingInstall(Lcom/android/server/pm/InstallRequest;)V

    .line 289
    return-void
.end method

.method private handleStartCopy(Lcom/android/server/pm/InstallRequest;)V
    .locals 12
    .param p1, "request"    # Lcom/android/server/pm/InstallRequest;

    .line 247
    iget v0, p0, Lcom/android/server/pm/InstallingSession;->mInstallFlags:I

    const/high16 v1, 0x20000

    and-int/2addr v0, v1

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 248
    iput v1, p0, Lcom/android/server/pm/InstallingSession;->mRet:I

    .line 249
    return-void

    .line 251
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/InstallingSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/pm/InstallingSession;->mPackageLite:Landroid/content/pm/parsing/PackageLite;

    iget-object v3, p0, Lcom/android/server/pm/InstallingSession;->mOriginInfo:Lcom/android/server/pm/OriginInfo;

    iget-object v3, v3, Lcom/android/server/pm/OriginInfo;->mResolvedPath:Ljava/lang/String;

    iget v4, p0, Lcom/android/server/pm/InstallingSession;->mInstallFlags:I

    iget-object v5, p0, Lcom/android/server/pm/InstallingSession;->mPackageAbiOverride:Ljava/lang/String;

    invoke-static {v0, v2, v3, v4, v5}, Lcom/android/server/pm/PackageManagerServiceUtils;->getMinimalPackageInfo(Landroid/content/Context;Landroid/content/pm/parsing/PackageLite;Ljava/lang/String;ILjava/lang/String;)Landroid/content/pm/PackageInfoLite;

    move-result-object v0

    .line 256
    .local v0, "pkgLite":Landroid/content/pm/PackageInfoLite;
    iget v2, p0, Lcom/android/server/pm/InstallingSession;->mInstallFlags:I

    const/high16 v3, 0x200000

    and-int/2addr v2, v3

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    move v2, v1

    goto :goto_0

    :cond_1
    move v2, v3

    .line 257
    .local v2, "isStaged":Z
    :goto_0
    if-eqz v2, :cond_2

    .line 258
    iget-object v4, p0, Lcom/android/server/pm/InstallingSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-wide v5, p0, Lcom/android/server/pm/InstallingSession;->mRequiredInstalledVersionCode:J

    iget v7, p0, Lcom/android/server/pm/InstallingSession;->mInstallFlags:I

    invoke-virtual {v4, v0, v5, v6, v7}, Lcom/android/server/pm/PackageManagerService;->verifyReplacingVersionCode(Landroid/content/pm/PackageInfoLite;JI)Landroid/util/Pair;

    move-result-object v4

    .line 260
    .local v4, "ret":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;"
    iget-object v5, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iput v5, p0, Lcom/android/server/pm/InstallingSession;->mRet:I

    .line 261
    iget v5, p0, Lcom/android/server/pm/InstallingSession;->mRet:I

    if-eq v5, v1, :cond_2

    .line 262
    iget v1, p0, Lcom/android/server/pm/InstallingSession;->mRet:I

    const-string v3, "Failed to verify version code"

    invoke-virtual {p1, v1, v3}, Lcom/android/server/pm/InstallRequest;->setError(ILjava/lang/String;)V

    .line 263
    return-void

    .line 267
    .end local v4    # "ret":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;"
    :cond_2
    iget v4, p0, Lcom/android/server/pm/InstallingSession;->mInstallFlags:I

    and-int/lit16 v4, v4, 0x800

    if-eqz v4, :cond_3

    move v3, v1

    .line 268
    .local v3, "ephemeral":Z
    :cond_3
    sget-boolean v4, Lcom/android/server/pm/PackageManagerService;->DEBUG_INSTANT:Z

    if-eqz v4, :cond_4

    if-eqz v3, :cond_4

    .line 269
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "pkgLite for install: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "PackageManager"

    invoke-static {v5, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    :cond_4
    iget-object v4, p0, Lcom/android/server/pm/InstallingSession;->mOriginInfo:Lcom/android/server/pm/OriginInfo;

    iget-boolean v4, v4, Lcom/android/server/pm/OriginInfo;->mStaged:Z

    if-nez v4, :cond_5

    iget v4, v0, Landroid/content/pm/PackageInfoLite;->recommendedInstallLocation:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_5

    .line 276
    iget-object v6, p0, Lcom/android/server/pm/InstallingSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget v7, v0, Landroid/content/pm/PackageInfoLite;->recommendedInstallLocation:I

    iget-object v8, p0, Lcom/android/server/pm/InstallingSession;->mPackageLite:Landroid/content/pm/parsing/PackageLite;

    iget-object v4, p0, Lcom/android/server/pm/InstallingSession;->mOriginInfo:Lcom/android/server/pm/OriginInfo;

    iget-object v9, v4, Lcom/android/server/pm/OriginInfo;->mResolvedPath:Ljava/lang/String;

    iget-object v10, p0, Lcom/android/server/pm/InstallingSession;->mPackageAbiOverride:Ljava/lang/String;

    iget v11, p0, Lcom/android/server/pm/InstallingSession;->mInstallFlags:I

    invoke-virtual/range {v6 .. v11}, Lcom/android/server/pm/PackageManagerService;->freeCacheForInstallation(ILandroid/content/pm/parsing/PackageLite;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v4

    iput v4, v0, Landroid/content/pm/PackageInfoLite;->recommendedInstallLocation:I

    .line 280
    :cond_5
    iget-object v4, v0, Landroid/content/pm/PackageInfoLite;->packageName:Ljava/lang/String;

    iget v5, v0, Landroid/content/pm/PackageInfoLite;->recommendedInstallLocation:I

    iget v6, v0, Landroid/content/pm/PackageInfoLite;->installLocation:I

    invoke-direct {p0, v4, v5, v6}, Lcom/android/server/pm/InstallingSession;->overrideInstallLocation(Ljava/lang/String;II)I

    move-result v4

    iput v4, p0, Lcom/android/server/pm/InstallingSession;->mRet:I

    .line 282
    iget v4, p0, Lcom/android/server/pm/InstallingSession;->mRet:I

    if-eq v4, v1, :cond_6

    .line 283
    iget v1, p0, Lcom/android/server/pm/InstallingSession;->mRet:I

    const-string v4, "Failed to override installation location"

    invoke-virtual {p1, v1, v4}, Lcom/android/server/pm/InstallRequest;->setError(ILjava/lang/String;)V

    .line 285
    :cond_6
    return-void
.end method

.method private installApexPackages(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/pm/InstallRequest;",
            ">;)V"
        }
    .end annotation

    .line 580
    .local p1, "requests":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/InstallRequest;>;"
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 581
    return-void

    .line 583
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    .line 587
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/InstallRequest;

    .line 588
    .local v2, "request":Lcom/android/server/pm/InstallRequest;
    nop

    .line 589
    invoke-virtual {v2}, Lcom/android/server/pm/InstallRequest;->getDevelopmentInstallFlags()I

    move-result v3

    and-int/2addr v3, v1

    if-eqz v3, :cond_1

    move v3, v1

    goto :goto_0

    :cond_1
    move v3, v0

    .line 594
    .local v3, "force":Z
    :goto_0
    :try_start_0
    invoke-virtual {v2}, Lcom/android/server/pm/InstallRequest;->getOriginInfo()Lcom/android/server/pm/OriginInfo;

    move-result-object v4

    iget-object v4, v4, Lcom/android/server/pm/OriginInfo;->mResolvedFile:Ljava/io/File;

    .line 595
    .local v4, "dir":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v5

    .line 596
    .local v5, "apexes":[Ljava/io/File;
    if-eqz v5, :cond_5

    .line 601
    array-length v6, v5

    if-ne v6, v1, :cond_4

    .line 607
    iget-object v1, p0, Lcom/android/server/pm/InstallingSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    invoke-virtual {v1}, Lcom/android/server/pm/PackageManagerServiceInjector;->getScanningPackageParser()Lcom/android/internal/pm/parsing/PackageParser2;

    move-result-object v1
    :try_end_0
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 608
    .local v1, "packageParser":Lcom/android/internal/pm/parsing/PackageParser2;
    :try_start_1
    iget-object v6, p0, Lcom/android/server/pm/InstallingSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v6, v6, Lcom/android/server/pm/PackageManagerService;->mApexManager:Lcom/android/server/pm/ApexManager;

    aget-object v0, v5, v0

    invoke-virtual {v6, v0, v3}, Lcom/android/server/pm/ApexManager;->installPackage(Ljava/io/File;Z)Landroid/apex/ApexInfo;

    move-result-object v0

    .line 615
    .local v0, "apexInfo":Landroid/apex/ApexInfo;
    invoke-virtual {v2, v0}, Lcom/android/server/pm/InstallRequest;->setApexInfo(Landroid/apex/ApexInfo;)V

    .line 616
    iget-object v6, v0, Landroid/apex/ApexInfo;->moduleName:Ljava/lang/String;

    invoke-virtual {v2, v6}, Lcom/android/server/pm/InstallRequest;->setApexModuleName(Ljava/lang/String;)V

    .line 617
    iget-object v6, p0, Lcom/android/server/pm/InstallingSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v6, v6, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    new-instance v7, Lcom/android/server/pm/InstallingSession$$ExternalSyntheticLambda0;

    invoke-direct {v7, p0, p1}, Lcom/android/server/pm/InstallingSession$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/pm/InstallingSession;Ljava/util/List;)V

    invoke-virtual {v6, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 619
    if-eqz v1, :cond_2

    :try_start_2
    invoke-virtual {v1}, Lcom/android/internal/pm/parsing/PackageParser2;->close()V
    :try_end_2
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 620
    .end local v0    # "apexInfo":Landroid/apex/ApexInfo;
    .end local v1    # "packageParser":Lcom/android/internal/pm/parsing/PackageParser2;
    .end local v4    # "dir":Ljava/io/File;
    .end local v5    # "apexes":[Ljava/io/File;
    :catch_0
    move-exception v0

    goto :goto_3

    .line 618
    .restart local v0    # "apexInfo":Landroid/apex/ApexInfo;
    .restart local v1    # "packageParser":Lcom/android/internal/pm/parsing/PackageParser2;
    .restart local v4    # "dir":Ljava/io/File;
    .restart local v5    # "apexes":[Ljava/io/File;
    :cond_2
    :goto_1
    return-void

    .line 607
    .end local v0    # "apexInfo":Landroid/apex/ApexInfo;
    :catchall_0
    move-exception v0

    if-eqz v1, :cond_3

    :try_start_3
    invoke-virtual {v1}, Lcom/android/internal/pm/parsing/PackageParser2;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v6

    :try_start_4
    invoke-virtual {v0, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_2
    nop

    .end local v2    # "request":Lcom/android/server/pm/InstallRequest;
    .end local v3    # "force":Z
    .end local p0    # "this":Lcom/android/server/pm/InstallingSession;
    .end local p1    # "requests":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/InstallRequest;>;"
    throw v0

    .line 602
    .end local v1    # "packageParser":Lcom/android/internal/pm/parsing/PackageParser2;
    .restart local v2    # "request":Lcom/android/server/pm/InstallRequest;
    .restart local v3    # "force":Z
    .restart local p0    # "this":Lcom/android/server/pm/InstallingSession;
    .restart local p1    # "requests":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/InstallRequest;>;"
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Expected exactly one .apex file under "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 603
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " got: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 602
    const/16 v1, -0x25

    invoke-static {v0, v1}, Lcom/android/server/pm/PackageManagerException;->ofInternalError(Ljava/lang/String;I)Lcom/android/server/pm/PackageManagerException;

    move-result-object v0

    .end local v2    # "request":Lcom/android/server/pm/InstallRequest;
    .end local v3    # "force":Z
    .end local p0    # "this":Lcom/android/server/pm/InstallingSession;
    .end local p1    # "requests":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/InstallRequest;>;"
    throw v0

    .line 597
    .restart local v2    # "request":Lcom/android/server/pm/InstallRequest;
    .restart local v3    # "force":Z
    .restart local p0    # "this":Lcom/android/server/pm/InstallingSession;
    .restart local p1    # "requests":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/InstallRequest;>;"
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 598
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " is not a directory"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 597
    const/16 v1, -0x24

    invoke-static {v0, v1}, Lcom/android/server/pm/PackageManagerException;->ofInternalError(Ljava/lang/String;I)Lcom/android/server/pm/PackageManagerException;

    move-result-object v0

    .end local v2    # "request":Lcom/android/server/pm/InstallRequest;
    .end local v3    # "force":Z
    .end local p0    # "this":Lcom/android/server/pm/InstallingSession;
    .end local p1    # "requests":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/InstallRequest;>;"
    throw v0
    :try_end_4
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_4 .. :try_end_4} :catch_0

    .line 620
    .end local v4    # "dir":Ljava/io/File;
    .end local v5    # "apexes":[Ljava/io/File;
    .restart local v2    # "request":Lcom/android/server/pm/InstallRequest;
    .restart local v3    # "force":Z
    .restart local p0    # "this":Lcom/android/server/pm/InstallingSession;
    .restart local p1    # "requests":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/InstallRequest;>;"
    :goto_3
    nop

    .line 621
    .local v0, "e":Lcom/android/server/pm/PackageManagerException;
    const-string v1, "APEX installation failed"

    invoke-virtual {v2, v1, v0}, Lcom/android/server/pm/InstallRequest;->setError(Ljava/lang/String;Lcom/android/server/pm/PackageManagerException;)V

    .line 623
    .end local v0    # "e":Lcom/android/server/pm/PackageManagerException;
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->invalidatePackageInfoCache()V

    .line 624
    iget-object v0, p0, Lcom/android/server/pm/InstallingSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0, v2}, Lcom/android/server/pm/PackageManagerService;->notifyInstallObserver(Lcom/android/server/pm/InstallRequest;)V

    .line 625
    return-void

    .line 584
    .end local v2    # "request":Lcom/android/server/pm/InstallRequest;
    .end local v3    # "force":Z
    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Only a non-staged install of a single APEX is supported"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private installApexPackagesTraced(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/pm/InstallRequest;",
            ">;)V"
        }
    .end annotation

    .line 572
    .local p1, "requests":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/InstallRequest;>;"
    const-wide/32 v0, 0x40000

    :try_start_0
    const-string/jumbo v2, "installApexPackages"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 573
    invoke-direct {p0, p1}, Lcom/android/server/pm/InstallingSession;->installApexPackages(Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 575
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 576
    nop

    .line 577
    return-void

    .line 575
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 576
    throw v2
.end method

.method private synthetic lambda$installApexPackages$2(Ljava/util/List;)V
    .locals 1
    .param p1, "requests"    # Ljava/util/List;

    .line 617
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/android/server/pm/InstallingSession;->processApkInstallRequests(ZLjava/util/List;)V

    return-void
.end method

.method private synthetic lambda$processInstallRequests$1(Ljava/util/List;)V
    .locals 0
    .param p1, "apexInstallRequests"    # Ljava/util/List;

    .line 530
    invoke-direct {p0, p1}, Lcom/android/server/pm/InstallingSession;->installApexPackagesTraced(Ljava/util/List;)V

    return-void
.end method

.method private synthetic lambda$processPendingInstall$0(Lcom/android/server/pm/InstallRequest;)V
    .locals 2
    .param p1, "installRequest"    # Lcom/android/server/pm/InstallRequest;

    .line 304
    iget v0, p0, Lcom/android/server/pm/InstallingSession;->mRet:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 306
    :goto_0
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 304
    invoke-direct {p0, v1, v0}, Lcom/android/server/pm/InstallingSession;->processInstallRequests(ZLjava/util/List;)V

    return-void
.end method

.method private overrideInstallLocation(Ljava/lang/String;II)I
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "recommendedInstallLocation"    # I
    .param p3, "installLocation"    # I

    .line 203
    iget-object v0, p0, Lcom/android/server/pm/InstallingSession;->mOriginInfo:Lcom/android/server/pm/OriginInfo;

    iget-boolean v0, v0, Lcom/android/server/pm/OriginInfo;->mStaged:Z

    if-eqz v0, :cond_1

    .line 205
    iget-object v0, p0, Lcom/android/server/pm/InstallingSession;->mOriginInfo:Lcom/android/server/pm/OriginInfo;

    iget-object v0, v0, Lcom/android/server/pm/OriginInfo;->mFile:Ljava/io/File;

    if-eqz v0, :cond_0

    .line 206
    iget v0, p0, Lcom/android/server/pm/InstallingSession;->mInstallFlags:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/android/server/pm/InstallingSession;->mInstallFlags:I

    goto :goto_0

    .line 208
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Invalid stage location"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 211
    :cond_1
    :goto_0
    if-gez p2, :cond_2

    .line 212
    invoke-static {p2}, Lcom/android/internal/content/InstallLocationUtils;->getInstallationErrorCode(I)I

    move-result v0

    return v0

    .line 215
    :cond_2
    iget-object v0, p0, Lcom/android/server/pm/InstallingSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v0

    .line 216
    .local v0, "snapshot":Lcom/android/server/pm/Computer;
    invoke-interface {v0, p1}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v1

    .line 217
    .local v1, "installedPkgState":Lcom/android/server/pm/pkg/PackageStateInternal;
    if-nez v1, :cond_3

    const/4 v2, 0x0

    goto :goto_1

    :cond_3
    invoke-interface {v1}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v2

    .line 218
    .local v2, "installedPkg":Lcom/android/server/pm/pkg/AndroidPackage;
    :goto_1
    if-eqz v2, :cond_4

    .line 220
    iget v3, p0, Lcom/android/server/pm/InstallingSession;->mInstallFlags:I

    .line 222
    invoke-interface {v1}, Lcom/android/server/pm/pkg/PackageState;->isSystem()Z

    move-result v4

    invoke-interface {v2}, Lcom/android/server/pm/pkg/AndroidPackage;->isExternalStorage()Z

    move-result v5

    .line 220
    invoke-static {p3, p2, v3, v4, v5}, Lcom/android/internal/content/InstallLocationUtils;->installLocationPolicy(IIIZZ)I

    move-result p2

    .line 225
    :cond_4
    iget v3, p0, Lcom/android/server/pm/InstallingSession;->mInstallFlags:I

    and-int/lit8 v3, v3, 0x10

    const/4 v4, 0x1

    if-eqz v3, :cond_5

    move v3, v4

    goto :goto_2

    :cond_5
    const/4 v3, 0x0

    .line 227
    .local v3, "onInt":Z
    :goto_2
    if-nez v3, :cond_7

    .line 229
    const/4 v5, 0x2

    if-ne p2, v5, :cond_6

    .line 231
    iget v5, p0, Lcom/android/server/pm/InstallingSession;->mInstallFlags:I

    and-int/lit8 v5, v5, -0x11

    iput v5, p0, Lcom/android/server/pm/InstallingSession;->mInstallFlags:I

    goto :goto_3

    .line 234
    :cond_6
    iget v5, p0, Lcom/android/server/pm/InstallingSession;->mInstallFlags:I

    or-int/lit8 v5, v5, 0x10

    iput v5, p0, Lcom/android/server/pm/InstallingSession;->mInstallFlags:I

    .line 237
    :cond_7
    :goto_3
    return v4
.end method

.method private processApkInstallRequests(ZLjava/util/List;)V
    .locals 4
    .param p1, "success"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List<",
            "Lcom/android/server/pm/InstallRequest;",
            ">;)V"
        }
    .end annotation

    .line 547
    .local p2, "installRequests":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/InstallRequest;>;"
    if-nez p1, :cond_3

    .line 548
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/InstallRequest;

    .line 549
    .local v1, "request":Lcom/android/server/pm/InstallRequest;
    invoke-virtual {v1}, Lcom/android/server/pm/InstallRequest;->getReturnCode()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    .line 550
    invoke-direct {p0, v1}, Lcom/android/server/pm/InstallingSession;->cleanUpForFailedInstall(Lcom/android/server/pm/InstallRequest;)V

    .line 552
    .end local v1    # "request":Lcom/android/server/pm/InstallRequest;
    :cond_0
    goto :goto_0

    .line 553
    :cond_1
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/InstallRequest;

    .line 554
    .restart local v1    # "request":Lcom/android/server/pm/InstallRequest;
    iget-object v2, p0, Lcom/android/server/pm/InstallingSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v2, v1}, Lcom/android/server/pm/PackageManagerService;->restoreAndPostInstall(Lcom/android/server/pm/InstallRequest;)V

    .line 555
    .end local v1    # "request":Lcom/android/server/pm/InstallRequest;
    goto :goto_1

    :cond_2
    goto :goto_2

    .line 557
    :cond_3
    iget-object v0, p0, Lcom/android/server/pm/InstallingSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, p0, Lcom/android/server/pm/InstallingSession;->mMoveInfo:Lcom/android/server/pm/MoveInfo;

    invoke-virtual {v0, p2, v1}, Lcom/android/server/pm/PackageManagerService;->installPackagesTraced(Ljava/util/List;Lcom/android/server/pm/MoveInfo;)V

    .line 559
    :goto_2
    return-void
.end method

.method private processInstallRequests(ZLjava/util/List;)V
    .locals 6
    .param p1, "success"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List<",
            "Lcom/android/server/pm/InstallRequest;",
            ">;)V"
        }
    .end annotation

    .line 510
    .local p2, "installRequests":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/InstallRequest;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 511
    .local v0, "apexInstallRequests":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/InstallRequest;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 512
    .local v1, "apkInstallRequests":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/InstallRequest;>;"
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/InstallRequest;

    .line 513
    .local v3, "request":Lcom/android/server/pm/InstallRequest;
    invoke-virtual {v3}, Lcom/android/server/pm/InstallRequest;->getInstallFlags()I

    move-result v4

    const/high16 v5, 0x20000

    and-int/2addr v4, v5

    if-eqz v4, :cond_0

    .line 514
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 516
    :cond_0
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 518
    .end local v3    # "request":Lcom/android/server/pm/InstallRequest;
    :goto_1
    goto :goto_0

    .line 521
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    goto :goto_2

    .line 523
    :cond_3
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Attempted to do a multi package install of both APEXes and APKs"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 526
    :goto_2
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_5

    .line 527
    if-eqz p1, :cond_4

    .line 530
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/android/server/pm/InstallingSession$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0, v0}, Lcom/android/server/pm/InstallingSession$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/pm/InstallingSession;Ljava/util/List;)V

    const-string/jumbo v4, "installApexPackages"

    invoke-direct {v2, v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 532
    .local v2, "t":Ljava/lang/Thread;
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 533
    .end local v2    # "t":Ljava/lang/Thread;
    goto :goto_3

    .line 537
    :cond_4
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/InstallRequest;

    .line 538
    .local v2, "request":Lcom/android/server/pm/InstallRequest;
    iget-object v3, p0, Lcom/android/server/pm/InstallingSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v3, v2}, Lcom/android/server/pm/PackageManagerService;->notifyInstallObserver(Lcom/android/server/pm/InstallRequest;)V

    .line 540
    .end local v2    # "request":Lcom/android/server/pm/InstallRequest;
    :goto_3
    return-void

    .line 543
    :cond_5
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/InstallingSession;->processApkInstallRequests(ZLjava/util/List;)V

    .line 544
    return-void
.end method

.method private processPendingInstall(Lcom/android/server/pm/InstallRequest;)V
    .locals 3
    .param p1, "installRequest"    # Lcom/android/server/pm/InstallRequest;

    .line 292
    iget v0, p0, Lcom/android/server/pm/InstallingSession;->mRet:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 293
    invoke-direct {p0, p1}, Lcom/android/server/pm/InstallingSession;->copyApk(Lcom/android/server/pm/InstallRequest;)I

    move-result v0

    iput v0, p0, Lcom/android/server/pm/InstallingSession;->mRet:I

    .line 295
    :cond_0
    iget v0, p0, Lcom/android/server/pm/InstallingSession;->mRet:I

    if-ne v0, v1, :cond_1

    .line 296
    iget-object v0, p0, Lcom/android/server/pm/InstallingSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    .line 297
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-virtual {p1}, Lcom/android/server/pm/InstallRequest;->getCodePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 296
    invoke-static {v0, v1}, Lcom/android/internal/content/F2fsUtils;->releaseCompressedBlocks(Landroid/content/ContentResolver;Ljava/io/File;)V

    .line 299
    :cond_1
    iget v0, p0, Lcom/android/server/pm/InstallingSession;->mRet:I

    invoke-virtual {p1, v0}, Lcom/android/server/pm/InstallRequest;->setReturnCode(I)V

    .line 300
    iget-object v0, p0, Lcom/android/server/pm/InstallingSession;->mParentInstallingSession:Lcom/android/server/pm/InstallingSession$MultiPackageInstallingSession;

    if-eqz v0, :cond_2

    .line 301
    iget-object v0, p0, Lcom/android/server/pm/InstallingSession;->mParentInstallingSession:Lcom/android/server/pm/InstallingSession$MultiPackageInstallingSession;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/InstallingSession$MultiPackageInstallingSession;->tryProcessInstallRequest(Lcom/android/server/pm/InstallRequest;)V

    goto :goto_0

    .line 304
    :cond_2
    iget-object v0, p0, Lcom/android/server/pm/InstallingSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/pm/InstallingSession$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1}, Lcom/android/server/pm/InstallingSession$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/pm/InstallingSession;Lcom/android/server/pm/InstallRequest;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 308
    :goto_0
    return-void
.end method

.method private setTraceCookie(I)V
    .locals 0
    .param p1, "traceCookie"    # I

    .line 506
    iput p1, p0, Lcom/android/server/pm/InstallingSession;->mTraceCookie:I

    .line 507
    return-void
.end method

.method private setTraceMethod(Ljava/lang/String;)Lcom/android/server/pm/InstallingSession;
    .locals 0
    .param p1, "traceMethod"    # Ljava/lang/String;

    .line 501
    iput-object p1, p0, Lcom/android/server/pm/InstallingSession;->mTraceMethod:Ljava/lang/String;

    .line 502
    return-object p0
.end method

.method private start()V
    .locals 4

    .line 491
    nop

    .line 492
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    .line 491
    const-wide/32 v1, 0x40000

    const-string/jumbo v3, "queueInstall"

    invoke-static {v1, v2, v3, v0}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    .line 493
    const-string/jumbo v0, "startInstall"

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 494
    new-instance v0, Lcom/android/server/pm/InstallRequest;

    invoke-direct {v0, p0}, Lcom/android/server/pm/InstallRequest;-><init>(Lcom/android/server/pm/InstallingSession;)V

    .line 495
    .local v0, "installRequest":Lcom/android/server/pm/InstallRequest;
    invoke-direct {p0, v0}, Lcom/android/server/pm/InstallingSession;->handleStartCopy(Lcom/android/server/pm/InstallRequest;)V

    .line 496
    invoke-direct {p0, v0}, Lcom/android/server/pm/InstallingSession;->handleReturnCode(Lcom/android/server/pm/InstallRequest;)V

    .line 497
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 498
    return-void
.end method


# virtual methods
.method public getUser()Landroid/os/UserHandle;
    .locals 1

    .line 486
    iget-object v0, p0, Lcom/android/server/pm/InstallingSession;->mUser:Landroid/os/UserHandle;

    return-object v0
.end method

.method public installStage()V
    .locals 4

    .line 454
    const-string/jumbo v0, "installStage"

    invoke-direct {p0, v0}, Lcom/android/server/pm/InstallingSession;->setTraceMethod(Ljava/lang/String;)Lcom/android/server/pm/InstallingSession;

    move-result-object v1

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-direct {v1, v2}, Lcom/android/server/pm/InstallingSession;->setTraceCookie(I)V

    .line 455
    nop

    .line 456
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    .line 455
    const-wide/32 v2, 0x40000

    invoke-static {v2, v3, v0, v1}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    .line 457
    nop

    .line 458
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    .line 457
    const-string/jumbo v1, "queueInstall"

    invoke-static {v2, v3, v1, v0}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    .line 459
    iget-object v0, p0, Lcom/android/server/pm/InstallingSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/pm/InstallingSession$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/android/server/pm/InstallingSession$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/pm/InstallingSession;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 460
    return-void
.end method

.method public installStage(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/pm/InstallingSession;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    .line 464
    .local p1, "children":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/InstallingSession;>;"
    new-instance v0, Lcom/android/server/pm/InstallingSession$MultiPackageInstallingSession;

    .line 465
    invoke-virtual {p0}, Lcom/android/server/pm/InstallingSession;->getUser()Landroid/os/UserHandle;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/pm/InstallingSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-direct {v0, p0, v1, p1, v2}, Lcom/android/server/pm/InstallingSession$MultiPackageInstallingSession;-><init>(Lcom/android/server/pm/InstallingSession;Landroid/os/UserHandle;Ljava/util/List;Lcom/android/server/pm/PackageManagerService;)V

    .line 466
    .local v0, "installingSession":Lcom/android/server/pm/InstallingSession$MultiPackageInstallingSession;
    const-string/jumbo v1, "installStageMultiPackage"

    invoke-direct {p0, v1}, Lcom/android/server/pm/InstallingSession;->setTraceMethod(Ljava/lang/String;)Lcom/android/server/pm/InstallingSession;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    invoke-direct {v2, v3}, Lcom/android/server/pm/InstallingSession;->setTraceCookie(I)V

    .line 469
    nop

    .line 470
    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    .line 469
    const-wide/32 v3, 0x40000

    invoke-static {v3, v4, v1, v2}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    .line 471
    nop

    .line 472
    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    .line 471
    const-string/jumbo v2, "queueInstall"

    invoke-static {v3, v4, v2, v1}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    .line 473
    iget-object v1, p0, Lcom/android/server/pm/InstallingSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/pm/InstallingSession$$ExternalSyntheticLambda4;

    invoke-direct {v2, v0}, Lcom/android/server/pm/InstallingSession$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/pm/InstallingSession$MultiPackageInstallingSession;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 474
    return-void
.end method

.method public movePackage()V
    .locals 4

    .line 477
    const-string/jumbo v0, "movePackage"

    invoke-direct {p0, v0}, Lcom/android/server/pm/InstallingSession;->setTraceMethod(Ljava/lang/String;)Lcom/android/server/pm/InstallingSession;

    move-result-object v1

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-direct {v1, v2}, Lcom/android/server/pm/InstallingSession;->setTraceCookie(I)V

    .line 478
    nop

    .line 479
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    .line 478
    const-wide/32 v2, 0x40000

    invoke-static {v2, v3, v0, v1}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    .line 480
    nop

    .line 481
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    .line 480
    const-string/jumbo v1, "queueInstall"

    invoke-static {v2, v3, v1, v0}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    .line 482
    iget-object v0, p0, Lcom/android/server/pm/InstallingSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/pm/InstallingSession$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/android/server/pm/InstallingSession$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/pm/InstallingSession;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 483
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 189
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "InstallingSession{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " file="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/pm/InstallingSession;->mOriginInfo:Lcom/android/server/pm/OriginInfo;

    iget-object v1, v1, Lcom/android/server/pm/OriginInfo;->mFile:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
