.class final Lcom/android/server/pm/InstallRequest;
.super Ljava/lang/Object;
.source "InstallRequest.java"


# instance fields
.field private mApexInfo:Landroid/apex/ApexInfo;

.field private mApexModuleName:Ljava/lang/String;

.field private mAppId:I

.field private mArchivedPackage:Landroid/content/pm/ArchivedPackageParcel;

.field private mClearCodeCache:Z

.field private final mDependencyInstallerEnabled:Z

.field private mDexoptStatus:I

.field private mDisabledPs:Lcom/android/server/pm/PackageSetting;

.field private mExistingPackageName:Ljava/lang/String;

.field private mFirstTimeBroadcastInstantUserIds:[I

.field private mFirstTimeBroadcastUserIds:[I

.field private mFreezer:Lcom/android/server/pm/PackageFreezer;

.field private final mHasAppMetadataFileFromInstaller:Z

.field private final mInstallArgs:Lcom/android/server/pm/InstallArgs;

.field private mInstallerUidForInstallExisting:I

.field private mInternalErrorCode:I

.field private mIsInstallForUsers:Z

.field private mIsInstallInherit:Z

.field private mKeepArtProfile:Z

.field private mLibraryConsumers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/pm/pkg/AndroidPackage;",
            ">;"
        }
    .end annotation
.end field

.field private final mMissingSharedLibraryCount:I

.field private mName:Ljava/lang/String;

.field private mNewUsers:[I

.field private mOrigPackage:Ljava/lang/String;

.field private mOrigPermission:Ljava/lang/String;

.field private mOrigUsers:[I

.field private mOriginalPs:Lcom/android/server/pm/PackageSetting;

.field private mPackageLite:Landroid/content/pm/parsing/PackageLite;

.field private final mPackageMetrics:Lcom/android/server/pm/PackageMetrics;

.field private mParseFlags:I

.field private mParsedPackage:Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

.field private mPkg:Lcom/android/server/pm/pkg/AndroidPackage;

.field private mPostInstallRunnable:Ljava/lang/Runnable;

.field private mPreVerifiedDomains:Landroid/content/pm/verify/domain/DomainSet;

.field private mRemovedInfo:Lcom/android/server/pm/PackageRemovedInfo;

.field private mReplace:Z

.field private final mRequireUserAction:I

.field private mResponsibleInstallerTitles:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mReturnCode:I

.field private mReturnMsg:Ljava/lang/String;

.field private mScanFlags:I

.field private mScanResult:Lcom/android/server/pm/ScanResult;

.field private final mSessionId:I

.field private mSystem:Z

.field private mUpdateBroadcastInstantUserIds:[I

.field private mUpdateBroadcastUserIds:[I

.field private final mUserId:I

.field private final mWarnings:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(IILcom/android/server/pm/pkg/AndroidPackage;[ILjava/lang/Runnable;IIZ)V
    .locals 3
    .param p1, "userId"    # I
    .param p2, "returnCode"    # I
    .param p3, "pkg"    # Lcom/android/server/pm/pkg/AndroidPackage;
    .param p4, "newUsers"    # [I
    .param p5, "runnable"    # Ljava/lang/Runnable;
    .param p6, "appId"    # I
    .param p7, "installerUid"    # I
    .param p8, "isSystem"    # Z

    .line 201
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/pm/InstallRequest;->mAppId:I

    .line 153
    sget-object v1, Lcom/android/server/pm/PackageManagerService;->EMPTY_INT_ARRAY:[I

    iput-object v1, p0, Lcom/android/server/pm/InstallRequest;->mFirstTimeBroadcastUserIds:[I

    .line 155
    sget-object v1, Lcom/android/server/pm/PackageManagerService;->EMPTY_INT_ARRAY:[I

    iput-object v1, p0, Lcom/android/server/pm/InstallRequest;->mFirstTimeBroadcastInstantUserIds:[I

    .line 157
    sget-object v1, Lcom/android/server/pm/PackageManagerService;->EMPTY_INT_ARRAY:[I

    iput-object v1, p0, Lcom/android/server/pm/InstallRequest;->mUpdateBroadcastUserIds:[I

    .line 159
    sget-object v1, Lcom/android/server/pm/PackageManagerService;->EMPTY_INT_ARRAY:[I

    iput-object v1, p0, Lcom/android/server/pm/InstallRequest;->mUpdateBroadcastInstantUserIds:[I

    .line 162
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/pm/InstallRequest;->mWarnings:Ljava/util/ArrayList;

    .line 168
    iput v0, p0, Lcom/android/server/pm/InstallRequest;->mInstallerUidForInstallExisting:I

    .line 172
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/pm/InstallRequest;->mKeepArtProfile:Z

    .line 202
    iput p1, p0, Lcom/android/server/pm/InstallRequest;->mUserId:I

    .line 203
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/pm/InstallRequest;->mInstallArgs:Lcom/android/server/pm/InstallArgs;

    .line 204
    iput p2, p0, Lcom/android/server/pm/InstallRequest;->mReturnCode:I

    .line 205
    iput-object p3, p0, Lcom/android/server/pm/InstallRequest;->mPkg:Lcom/android/server/pm/pkg/AndroidPackage;

    .line 206
    iput-object p4, p0, Lcom/android/server/pm/InstallRequest;->mNewUsers:[I

    .line 207
    iput-object p5, p0, Lcom/android/server/pm/InstallRequest;->mPostInstallRunnable:Ljava/lang/Runnable;

    .line 208
    new-instance v2, Lcom/android/server/pm/PackageMetrics;

    invoke-direct {v2, p0}, Lcom/android/server/pm/PackageMetrics;-><init>(Lcom/android/server/pm/InstallRequest;)V

    iput-object v2, p0, Lcom/android/server/pm/InstallRequest;->mPackageMetrics:Lcom/android/server/pm/PackageMetrics;

    .line 209
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/pm/InstallRequest;->mIsInstallForUsers:Z

    .line 210
    iput v0, p0, Lcom/android/server/pm/InstallRequest;->mSessionId:I

    .line 211
    iput v1, p0, Lcom/android/server/pm/InstallRequest;->mRequireUserAction:I

    .line 212
    iput p6, p0, Lcom/android/server/pm/InstallRequest;->mAppId:I

    .line 213
    iput p7, p0, Lcom/android/server/pm/InstallRequest;->mInstallerUidForInstallExisting:I

    .line 214
    iput-boolean p8, p0, Lcom/android/server/pm/InstallRequest;->mSystem:Z

    .line 215
    iput-boolean v1, p0, Lcom/android/server/pm/InstallRequest;->mHasAppMetadataFileFromInstaller:Z

    .line 216
    iput-boolean v1, p0, Lcom/android/server/pm/InstallRequest;->mDependencyInstallerEnabled:Z

    .line 217
    iput v1, p0, Lcom/android/server/pm/InstallRequest;->mMissingSharedLibraryCount:I

    .line 218
    return-void
.end method

.method constructor <init>(Lcom/android/internal/pm/parsing/pkg/ParsedPackage;IILandroid/os/UserHandle;Lcom/android/server/pm/ScanResult;Lcom/android/server/pm/PackageSetting;)V
    .locals 3
    .param p1, "parsedPackage"    # Lcom/android/internal/pm/parsing/pkg/ParsedPackage;
    .param p2, "parseFlags"    # I
    .param p3, "scanFlags"    # I
    .param p4, "user"    # Landroid/os/UserHandle;
    .param p5, "scanResult"    # Lcom/android/server/pm/ScanResult;
    .param p6, "disabledPs"    # Lcom/android/server/pm/PackageSetting;

    .line 222
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/pm/InstallRequest;->mAppId:I

    .line 153
    sget-object v1, Lcom/android/server/pm/PackageManagerService;->EMPTY_INT_ARRAY:[I

    iput-object v1, p0, Lcom/android/server/pm/InstallRequest;->mFirstTimeBroadcastUserIds:[I

    .line 155
    sget-object v1, Lcom/android/server/pm/PackageManagerService;->EMPTY_INT_ARRAY:[I

    iput-object v1, p0, Lcom/android/server/pm/InstallRequest;->mFirstTimeBroadcastInstantUserIds:[I

    .line 157
    sget-object v1, Lcom/android/server/pm/PackageManagerService;->EMPTY_INT_ARRAY:[I

    iput-object v1, p0, Lcom/android/server/pm/InstallRequest;->mUpdateBroadcastUserIds:[I

    .line 159
    sget-object v1, Lcom/android/server/pm/PackageManagerService;->EMPTY_INT_ARRAY:[I

    iput-object v1, p0, Lcom/android/server/pm/InstallRequest;->mUpdateBroadcastInstantUserIds:[I

    .line 162
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/pm/InstallRequest;->mWarnings:Ljava/util/ArrayList;

    .line 168
    iput v0, p0, Lcom/android/server/pm/InstallRequest;->mInstallerUidForInstallExisting:I

    .line 172
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/pm/InstallRequest;->mKeepArtProfile:Z

    .line 223
    if-eqz p4, :cond_0

    .line 224
    invoke-virtual {p4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    iput v2, p0, Lcom/android/server/pm/InstallRequest;->mUserId:I

    goto :goto_0

    .line 227
    :cond_0
    iput v1, p0, Lcom/android/server/pm/InstallRequest;->mUserId:I

    .line 229
    :goto_0
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/pm/InstallRequest;->mInstallArgs:Lcom/android/server/pm/InstallArgs;

    .line 230
    iput-object p1, p0, Lcom/android/server/pm/InstallRequest;->mParsedPackage:Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    .line 231
    iput-object v2, p0, Lcom/android/server/pm/InstallRequest;->mArchivedPackage:Landroid/content/pm/ArchivedPackageParcel;

    .line 232
    iput p2, p0, Lcom/android/server/pm/InstallRequest;->mParseFlags:I

    .line 233
    iput p3, p0, Lcom/android/server/pm/InstallRequest;->mScanFlags:I

    .line 234
    iput-object p5, p0, Lcom/android/server/pm/InstallRequest;->mScanResult:Lcom/android/server/pm/ScanResult;

    .line 235
    iput-object v2, p0, Lcom/android/server/pm/InstallRequest;->mPackageMetrics:Lcom/android/server/pm/PackageMetrics;

    .line 236
    iput v0, p0, Lcom/android/server/pm/InstallRequest;->mSessionId:I

    .line 237
    iput v1, p0, Lcom/android/server/pm/InstallRequest;->mRequireUserAction:I

    .line 238
    iput-object p6, p0, Lcom/android/server/pm/InstallRequest;->mDisabledPs:Lcom/android/server/pm/PackageSetting;

    .line 239
    iput-boolean v1, p0, Lcom/android/server/pm/InstallRequest;->mHasAppMetadataFileFromInstaller:Z

    .line 240
    iput-boolean v1, p0, Lcom/android/server/pm/InstallRequest;->mDependencyInstallerEnabled:Z

    .line 241
    iput v1, p0, Lcom/android/server/pm/InstallRequest;->mMissingSharedLibraryCount:I

    .line 242
    return-void
.end method

.method constructor <init>(Lcom/android/server/pm/InstallingSession;)V
    .locals 27
    .param p1, "params"    # Lcom/android/server/pm/InstallingSession;

    .line 177
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 99
    const/4 v2, -0x1

    iput v2, v0, Lcom/android/server/pm/InstallRequest;->mAppId:I

    .line 153
    sget-object v3, Lcom/android/server/pm/PackageManagerService;->EMPTY_INT_ARRAY:[I

    iput-object v3, v0, Lcom/android/server/pm/InstallRequest;->mFirstTimeBroadcastUserIds:[I

    .line 155
    sget-object v3, Lcom/android/server/pm/PackageManagerService;->EMPTY_INT_ARRAY:[I

    iput-object v3, v0, Lcom/android/server/pm/InstallRequest;->mFirstTimeBroadcastInstantUserIds:[I

    .line 157
    sget-object v3, Lcom/android/server/pm/PackageManagerService;->EMPTY_INT_ARRAY:[I

    iput-object v3, v0, Lcom/android/server/pm/InstallRequest;->mUpdateBroadcastUserIds:[I

    .line 159
    sget-object v3, Lcom/android/server/pm/PackageManagerService;->EMPTY_INT_ARRAY:[I

    iput-object v3, v0, Lcom/android/server/pm/InstallRequest;->mUpdateBroadcastInstantUserIds:[I

    .line 162
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v0, Lcom/android/server/pm/InstallRequest;->mWarnings:Ljava/util/ArrayList;

    .line 168
    iput v2, v0, Lcom/android/server/pm/InstallRequest;->mInstallerUidForInstallExisting:I

    .line 172
    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/android/server/pm/InstallRequest;->mKeepArtProfile:Z

    .line 178
    invoke-virtual {v1}, Lcom/android/server/pm/InstallingSession;->getUser()Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    iput v2, v0, Lcom/android/server/pm/InstallRequest;->mUserId:I

    .line 179
    new-instance v3, Lcom/android/server/pm/InstallArgs;

    iget-object v4, v1, Lcom/android/server/pm/InstallingSession;->mOriginInfo:Lcom/android/server/pm/OriginInfo;

    iget-object v5, v1, Lcom/android/server/pm/InstallingSession;->mMoveInfo:Lcom/android/server/pm/MoveInfo;

    iget-object v6, v1, Lcom/android/server/pm/InstallingSession;->mObserver:Landroid/content/pm/IPackageInstallObserver2;

    iget v7, v1, Lcom/android/server/pm/InstallingSession;->mInstallFlags:I

    iget v8, v1, Lcom/android/server/pm/InstallingSession;->mDevelopmentInstallFlags:I

    iget-object v9, v1, Lcom/android/server/pm/InstallingSession;->mInstallSource:Lcom/android/server/pm/InstallSource;

    iget-object v10, v1, Lcom/android/server/pm/InstallingSession;->mVolumeUuid:Ljava/lang/String;

    .line 181
    invoke-virtual {v1}, Lcom/android/server/pm/InstallingSession;->getUser()Landroid/os/UserHandle;

    move-result-object v11

    iget-object v13, v1, Lcom/android/server/pm/InstallingSession;->mPackageAbiOverride:Ljava/lang/String;

    iget-object v14, v1, Lcom/android/server/pm/InstallingSession;->mPermissionStates:Landroid/util/ArrayMap;

    iget-object v15, v1, Lcom/android/server/pm/InstallingSession;->mAllowlistedRestrictedPermissions:Ljava/util/List;

    iget v2, v1, Lcom/android/server/pm/InstallingSession;->mAutoRevokePermissionsMode:I

    iget-object v12, v1, Lcom/android/server/pm/InstallingSession;->mTraceMethod:Ljava/lang/String;

    move/from16 v16, v2

    iget v2, v1, Lcom/android/server/pm/InstallingSession;->mTraceCookie:I

    move/from16 v18, v2

    iget-object v2, v1, Lcom/android/server/pm/InstallingSession;->mSigningDetails:Landroid/content/pm/SigningDetails;

    move-object/from16 v19, v2

    iget v2, v1, Lcom/android/server/pm/InstallingSession;->mInstallReason:I

    move/from16 v20, v2

    iget v2, v1, Lcom/android/server/pm/InstallingSession;->mInstallScenario:I

    move/from16 v21, v2

    iget-boolean v2, v1, Lcom/android/server/pm/InstallingSession;->mForceQueryableOverride:Z

    move/from16 v22, v2

    iget v2, v1, Lcom/android/server/pm/InstallingSession;->mDataLoaderType:I

    move/from16 v23, v2

    iget v2, v1, Lcom/android/server/pm/InstallingSession;->mPackageSource:I

    move/from16 v24, v2

    iget-boolean v2, v1, Lcom/android/server/pm/InstallingSession;->mApplicationEnabledSettingPersistent:Z

    move/from16 v25, v2

    iget-object v2, v1, Lcom/android/server/pm/InstallingSession;->mDexoptCompilerFilter:Ljava/lang/String;

    move-object/from16 v17, v12

    const/4 v12, 0x0

    move-object/from16 v26, v2

    invoke-direct/range {v3 .. v26}, Lcom/android/server/pm/InstallArgs;-><init>(Lcom/android/server/pm/OriginInfo;Lcom/android/server/pm/MoveInfo;Landroid/content/pm/IPackageInstallObserver2;IILcom/android/server/pm/InstallSource;Ljava/lang/String;Landroid/os/UserHandle;[Ljava/lang/String;Ljava/lang/String;Landroid/util/ArrayMap;Ljava/util/List;ILjava/lang/String;ILandroid/content/pm/SigningDetails;IIZIIZLjava/lang/String;)V

    iput-object v3, v0, Lcom/android/server/pm/InstallRequest;->mInstallArgs:Lcom/android/server/pm/InstallArgs;

    .line 188
    iget-object v2, v1, Lcom/android/server/pm/InstallingSession;->mPackageLite:Landroid/content/pm/parsing/PackageLite;

    iput-object v2, v0, Lcom/android/server/pm/InstallRequest;->mPackageLite:Landroid/content/pm/parsing/PackageLite;

    .line 189
    new-instance v2, Lcom/android/server/pm/PackageMetrics;

    invoke-direct {v2, v0}, Lcom/android/server/pm/PackageMetrics;-><init>(Lcom/android/server/pm/InstallRequest;)V

    iput-object v2, v0, Lcom/android/server/pm/InstallRequest;->mPackageMetrics:Lcom/android/server/pm/PackageMetrics;

    .line 190
    iget-boolean v2, v1, Lcom/android/server/pm/InstallingSession;->mIsInherit:Z

    iput-boolean v2, v0, Lcom/android/server/pm/InstallRequest;->mIsInstallInherit:Z

    .line 191
    iget v2, v1, Lcom/android/server/pm/InstallingSession;->mSessionId:I

    iput v2, v0, Lcom/android/server/pm/InstallRequest;->mSessionId:I

    .line 192
    iget v2, v1, Lcom/android/server/pm/InstallingSession;->mRequireUserAction:I

    iput v2, v0, Lcom/android/server/pm/InstallRequest;->mRequireUserAction:I

    .line 193
    iget-object v2, v1, Lcom/android/server/pm/InstallingSession;->mPreVerifiedDomains:Landroid/content/pm/verify/domain/DomainSet;

    iput-object v2, v0, Lcom/android/server/pm/InstallRequest;->mPreVerifiedDomains:Landroid/content/pm/verify/domain/DomainSet;

    .line 194
    iget-boolean v2, v1, Lcom/android/server/pm/InstallingSession;->mHasAppMetadataFile:Z

    iput-boolean v2, v0, Lcom/android/server/pm/InstallRequest;->mHasAppMetadataFileFromInstaller:Z

    .line 195
    iget-boolean v2, v1, Lcom/android/server/pm/InstallingSession;->mDependencyInstallerEnabled:Z

    iput-boolean v2, v0, Lcom/android/server/pm/InstallRequest;->mDependencyInstallerEnabled:Z

    .line 196
    iget v2, v1, Lcom/android/server/pm/InstallingSession;->mMissingSharedLibraryCount:I

    iput v2, v0, Lcom/android/server/pm/InstallRequest;->mMissingSharedLibraryCount:I

    .line 197
    return-void
.end method

.method private populateBroadcastUsers()V
    .locals 8

    .line 904
    invoke-virtual {p0}, Lcom/android/server/pm/InstallRequest;->assertScanResultExists()V

    .line 905
    sget-object v0, Lcom/android/server/pm/PackageManagerService;->EMPTY_INT_ARRAY:[I

    iput-object v0, p0, Lcom/android/server/pm/InstallRequest;->mFirstTimeBroadcastUserIds:[I

    .line 906
    sget-object v0, Lcom/android/server/pm/PackageManagerService;->EMPTY_INT_ARRAY:[I

    iput-object v0, p0, Lcom/android/server/pm/InstallRequest;->mFirstTimeBroadcastInstantUserIds:[I

    .line 907
    sget-object v0, Lcom/android/server/pm/PackageManagerService;->EMPTY_INT_ARRAY:[I

    iput-object v0, p0, Lcom/android/server/pm/InstallRequest;->mUpdateBroadcastUserIds:[I

    .line 908
    sget-object v0, Lcom/android/server/pm/PackageManagerService;->EMPTY_INT_ARRAY:[I

    iput-object v0, p0, Lcom/android/server/pm/InstallRequest;->mUpdateBroadcastInstantUserIds:[I

    .line 910
    invoke-virtual {p0}, Lcom/android/server/pm/InstallRequest;->isAllNewUsers()Z

    move-result v0

    .line 911
    .local v0, "allNewUsers":Z
    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 913
    iget-object v2, p0, Lcom/android/server/pm/InstallRequest;->mNewUsers:[I

    array-length v3, v2

    :goto_0
    if-ge v1, v3, :cond_1

    aget v4, v2, v1

    .line 914
    .local v4, "newUser":I
    iget-object v5, p0, Lcom/android/server/pm/InstallRequest;->mScanResult:Lcom/android/server/pm/ScanResult;

    iget-object v5, v5, Lcom/android/server/pm/ScanResult;->mPkgSetting:Lcom/android/server/pm/PackageSetting;

    .line 915
    invoke-interface {v5, v4}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/server/pm/pkg/PackageUserState;->isInstantApp()Z

    move-result v5

    .line 916
    .local v5, "isInstantApp":Z
    if-eqz v5, :cond_0

    .line 917
    iget-object v6, p0, Lcom/android/server/pm/InstallRequest;->mFirstTimeBroadcastInstantUserIds:[I

    .line 918
    invoke-static {v6, v4}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/pm/InstallRequest;->mFirstTimeBroadcastInstantUserIds:[I

    goto :goto_1

    .line 920
    :cond_0
    iget-object v6, p0, Lcom/android/server/pm/InstallRequest;->mFirstTimeBroadcastUserIds:[I

    .line 921
    invoke-static {v6, v4}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/pm/InstallRequest;->mFirstTimeBroadcastUserIds:[I

    .line 913
    .end local v4    # "newUser":I
    .end local v5    # "isInstantApp":Z
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 924
    :cond_1
    return-void

    .line 927
    :cond_2
    iget-object v2, p0, Lcom/android/server/pm/InstallRequest;->mNewUsers:[I

    array-length v3, v2

    :goto_2
    if-ge v1, v3, :cond_6

    aget v4, v2, v1

    .line 928
    .restart local v4    # "newUser":I
    iget-object v5, p0, Lcom/android/server/pm/InstallRequest;->mOrigUsers:[I

    invoke-static {v5, v4}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    .line 929
    .local v5, "isFirstTimeUser":Z
    iget-object v6, p0, Lcom/android/server/pm/InstallRequest;->mScanResult:Lcom/android/server/pm/ScanResult;

    iget-object v6, v6, Lcom/android/server/pm/ScanResult;->mPkgSetting:Lcom/android/server/pm/PackageSetting;

    .line 930
    invoke-interface {v6, v4}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/server/pm/pkg/PackageUserState;->isInstantApp()Z

    move-result v6

    .line 931
    .local v6, "isInstantApp":Z
    if-eqz v5, :cond_4

    .line 932
    if-eqz v6, :cond_3

    .line 933
    iget-object v7, p0, Lcom/android/server/pm/InstallRequest;->mFirstTimeBroadcastInstantUserIds:[I

    .line 934
    invoke-static {v7, v4}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    move-result-object v7

    iput-object v7, p0, Lcom/android/server/pm/InstallRequest;->mFirstTimeBroadcastInstantUserIds:[I

    goto :goto_3

    .line 936
    :cond_3
    iget-object v7, p0, Lcom/android/server/pm/InstallRequest;->mFirstTimeBroadcastUserIds:[I

    .line 937
    invoke-static {v7, v4}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    move-result-object v7

    iput-object v7, p0, Lcom/android/server/pm/InstallRequest;->mFirstTimeBroadcastUserIds:[I

    goto :goto_3

    .line 940
    :cond_4
    if-eqz v6, :cond_5

    .line 941
    iget-object v7, p0, Lcom/android/server/pm/InstallRequest;->mUpdateBroadcastInstantUserIds:[I

    .line 942
    invoke-static {v7, v4}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    move-result-object v7

    iput-object v7, p0, Lcom/android/server/pm/InstallRequest;->mUpdateBroadcastInstantUserIds:[I

    goto :goto_3

    .line 944
    :cond_5
    iget-object v7, p0, Lcom/android/server/pm/InstallRequest;->mUpdateBroadcastUserIds:[I

    .line 945
    invoke-static {v7, v4}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    move-result-object v7

    iput-object v7, p0, Lcom/android/server/pm/InstallRequest;->mUpdateBroadcastUserIds:[I

    .line 927
    .end local v4    # "newUser":I
    .end local v5    # "isFirstTimeUser":Z
    .end local v6    # "isInstantApp":Z
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 949
    :cond_6
    return-void
.end method


# virtual methods
.method public addWarning(Ljava/lang/String;)V
    .locals 1
    .param p1, "warning"    # Ljava/lang/String;

    .line 957
    iget-object v0, p0, Lcom/android/server/pm/InstallRequest;->mWarnings:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 958
    return-void
.end method

.method public assertScanResultExists()V
    .locals 2

    .line 676
    iget-object v0, p0, Lcom/android/server/pm/InstallRequest;->mScanResult:Lcom/android/server/pm/ScanResult;

    if-nez v0, :cond_1

    .line 678
    sget-boolean v0, Landroid/os/Build;->IS_USERDEBUG:Z

    if-nez v0, :cond_0

    sget-boolean v0, Landroid/os/Build;->IS_ENG:Z

    if-nez v0, :cond_0

    .line 681
    const-string v0, "PackageManager"

    const-string v1, "ScanResult is null and it should not happen"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 679
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ScanResult cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 684
    :cond_1
    :goto_0
    return-void
.end method

.method public closeFreezer()V
    .locals 1

    .line 732
    iget-object v0, p0, Lcom/android/server/pm/InstallRequest;->mFreezer:Lcom/android/server/pm/PackageFreezer;

    if-eqz v0, :cond_0

    .line 733
    iget-object v0, p0, Lcom/android/server/pm/InstallRequest;->mFreezer:Lcom/android/server/pm/PackageFreezer;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageFreezer;->close()V

    .line 735
    :cond_0
    return-void
.end method

.method public getAbiOverride()Ljava/lang/String;
    .locals 1

    .line 287
    iget-object v0, p0, Lcom/android/server/pm/InstallRequest;->mInstallArgs:Lcom/android/server/pm/InstallArgs;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/InstallRequest;->mInstallArgs:Lcom/android/server/pm/InstallArgs;

    iget-object v0, v0, Lcom/android/server/pm/InstallArgs;->mAbiOverride:Ljava/lang/String;

    :goto_0
    return-object v0
.end method

.method public getAllowlistedRestrictedPermissions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 484
    iget-object v0, p0, Lcom/android/server/pm/InstallRequest;->mInstallArgs:Lcom/android/server/pm/InstallArgs;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/InstallRequest;->mInstallArgs:Lcom/android/server/pm/InstallArgs;

    iget-object v0, v0, Lcom/android/server/pm/InstallArgs;->mAllowlistedRestrictedPermissions:Ljava/util/List;

    :goto_0
    return-object v0
.end method

.method public getApexInfo()Landroid/apex/ApexInfo;
    .locals 1

    .line 440
    iget-object v0, p0, Lcom/android/server/pm/InstallRequest;->mApexInfo:Landroid/apex/ApexInfo;

    return-object v0
.end method

.method public getApexModuleName()Ljava/lang/String;
    .locals 1

    .line 445
    iget-object v0, p0, Lcom/android/server/pm/InstallRequest;->mApexModuleName:Ljava/lang/String;

    return-object v0
.end method

.method public getAppId()I
    .locals 1

    .line 469
    iget v0, p0, Lcom/android/server/pm/InstallRequest;->mAppId:I

    return v0
.end method

.method public getArchivedPackage()Landroid/content/pm/ArchivedPackageParcel;
    .locals 1

    .line 507
    iget-object v0, p0, Lcom/android/server/pm/InstallRequest;->mArchivedPackage:Landroid/content/pm/ArchivedPackageParcel;

    return-object v0
.end method

.method public getAutoRevokePermissionsMode()I
    .locals 1

    .line 488
    iget-object v0, p0, Lcom/android/server/pm/InstallRequest;->mInstallArgs:Lcom/android/server/pm/InstallArgs;

    if-nez v0, :cond_0

    .line 489
    const/4 v0, 0x3

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/InstallRequest;->mInstallArgs:Lcom/android/server/pm/InstallArgs;

    iget v0, v0, Lcom/android/server/pm/InstallArgs;->mAutoRevokePermissionsMode:I

    .line 488
    :goto_0
    return v0
.end method

.method public getChangedAbiCodePath()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 597
    invoke-virtual {p0}, Lcom/android/server/pm/InstallRequest;->assertScanResultExists()V

    .line 598
    iget-object v0, p0, Lcom/android/server/pm/InstallRequest;->mScanResult:Lcom/android/server/pm/ScanResult;

    iget-object v0, v0, Lcom/android/server/pm/ScanResult;->mChangedAbiCodePath:Ljava/util/List;

    return-object v0
.end method

.method public getCodeFile()Ljava/io/File;
    .locals 1

    .line 276
    iget-object v0, p0, Lcom/android/server/pm/InstallRequest;->mInstallArgs:Lcom/android/server/pm/InstallArgs;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/InstallRequest;->mInstallArgs:Lcom/android/server/pm/InstallArgs;

    iget-object v0, v0, Lcom/android/server/pm/InstallArgs;->mCodeFile:Ljava/io/File;

    :goto_0
    return-object v0
.end method

.method public getCodePath()Ljava/lang/String;
    .locals 1

    .line 281
    iget-object v0, p0, Lcom/android/server/pm/InstallRequest;->mInstallArgs:Lcom/android/server/pm/InstallArgs;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/pm/InstallRequest;->mInstallArgs:Lcom/android/server/pm/InstallArgs;

    iget-object v0, v0, Lcom/android/server/pm/InstallArgs;->mCodeFile:Ljava/io/File;

    if-eqz v0, :cond_0

    .line 282
    iget-object v0, p0, Lcom/android/server/pm/InstallRequest;->mInstallArgs:Lcom/android/server/pm/InstallArgs;

    iget-object v0, v0, Lcom/android/server/pm/InstallArgs;->mCodeFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 281
    :goto_0
    return-object v0
.end method

.method public getDataLoaderType()I
    .locals 1

    .line 420
    iget-object v0, p0, Lcom/android/server/pm/InstallRequest;->mInstallArgs:Lcom/android/server/pm/InstallArgs;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/InstallRequest;->mInstallArgs:Lcom/android/server/pm/InstallArgs;

    iget v0, v0, Lcom/android/server/pm/InstallArgs;->mDataLoaderType:I

    :goto_0
    return v0
.end method

.method public getDevelopmentInstallFlags()I
    .locals 1

    .line 350
    iget-object v0, p0, Lcom/android/server/pm/InstallRequest;->mInstallArgs:Lcom/android/server/pm/InstallArgs;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/InstallRequest;->mInstallArgs:Lcom/android/server/pm/InstallArgs;

    iget v0, v0, Lcom/android/server/pm/InstallArgs;->mDevelopmentInstallFlags:I

    :goto_0
    return v0
.end method

.method public getDexoptCompilerFilter()Ljava/lang/String;
    .locals 1

    .line 724
    iget-object v0, p0, Lcom/android/server/pm/InstallRequest;->mInstallArgs:Lcom/android/server/pm/InstallArgs;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/pm/InstallRequest;->mInstallArgs:Lcom/android/server/pm/InstallArgs;

    iget-object v0, v0, Lcom/android/server/pm/InstallArgs;->mDexoptCompilerFilter:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getDexoptStatus()I
    .locals 1

    .line 695
    iget v0, p0, Lcom/android/server/pm/InstallRequest;->mDexoptStatus:I

    return v0
.end method

.method public getDisabledPackageSetting()Lcom/android/server/pm/PackageSetting;
    .locals 1

    .line 562
    iget-object v0, p0, Lcom/android/server/pm/InstallRequest;->mDisabledPs:Lcom/android/server/pm/PackageSetting;

    return-object v0
.end method

.method public getDynamicSharedLibraryInfos()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/pm/SharedLibraryInfo;",
            ">;"
        }
    .end annotation

    .line 623
    invoke-virtual {p0}, Lcom/android/server/pm/InstallRequest;->assertScanResultExists()V

    .line 624
    iget-object v0, p0, Lcom/android/server/pm/InstallRequest;->mScanResult:Lcom/android/server/pm/ScanResult;

    iget-object v0, v0, Lcom/android/server/pm/ScanResult;->mDynamicSharedLibraryInfos:Ljava/util/List;

    return-object v0
.end method

.method public getExistingPackageName()Ljava/lang/String;
    .locals 1

    .line 521
    iget-object v0, p0, Lcom/android/server/pm/InstallRequest;->mExistingPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getFirstTimeBroadcastInstantUserIds()[I
    .locals 1

    .line 706
    iget-object v0, p0, Lcom/android/server/pm/InstallRequest;->mFirstTimeBroadcastInstantUserIds:[I

    return-object v0
.end method

.method public getFirstTimeBroadcastUserIds()[I
    .locals 1

    .line 702
    iget-object v0, p0, Lcom/android/server/pm/InstallRequest;->mFirstTimeBroadcastUserIds:[I

    return-object v0
.end method

.method public getInstallFlags()I
    .locals 1

    .line 346
    iget-object v0, p0, Lcom/android/server/pm/InstallRequest;->mInstallArgs:Lcom/android/server/pm/InstallArgs;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/InstallRequest;->mInstallArgs:Lcom/android/server/pm/InstallArgs;

    iget v0, v0, Lcom/android/server/pm/InstallArgs;->mInstallFlags:I

    :goto_0
    return v0
.end method

.method public getInstallReason()I
    .locals 1

    .line 354
    iget-object v0, p0, Lcom/android/server/pm/InstallRequest;->mInstallArgs:Lcom/android/server/pm/InstallArgs;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/InstallRequest;->mInstallArgs:Lcom/android/server/pm/InstallArgs;

    iget v0, v0, Lcom/android/server/pm/InstallArgs;->mInstallReason:I

    :goto_0
    return v0
.end method

.method public getInstallScenario()I
    .locals 1

    .line 498
    iget-object v0, p0, Lcom/android/server/pm/InstallRequest;->mInstallArgs:Lcom/android/server/pm/InstallArgs;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/InstallRequest;->mInstallArgs:Lcom/android/server/pm/InstallArgs;

    iget v0, v0, Lcom/android/server/pm/InstallArgs;->mInstallScenario:I

    :goto_0
    return v0
.end method

.method public getInstallSource()Lcom/android/server/pm/InstallSource;
    .locals 1

    .line 404
    iget-object v0, p0, Lcom/android/server/pm/InstallRequest;->mInstallArgs:Lcom/android/server/pm/InstallArgs;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/InstallRequest;->mInstallArgs:Lcom/android/server/pm/InstallArgs;

    iget-object v0, v0, Lcom/android/server/pm/InstallArgs;->mInstallSource:Lcom/android/server/pm/InstallSource;

    :goto_0
    return-object v0
.end method

.method public getInstallerPackageName()Ljava/lang/String;
    .locals 1

    .line 409
    iget-object v0, p0, Lcom/android/server/pm/InstallRequest;->mInstallArgs:Lcom/android/server/pm/InstallArgs;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/pm/InstallRequest;->mInstallArgs:Lcom/android/server/pm/InstallArgs;

    iget-object v0, v0, Lcom/android/server/pm/InstallArgs;->mInstallSource:Lcom/android/server/pm/InstallSource;

    if-eqz v0, :cond_0

    .line 410
    iget-object v0, p0, Lcom/android/server/pm/InstallRequest;->mInstallArgs:Lcom/android/server/pm/InstallArgs;

    iget-object v0, v0, Lcom/android/server/pm/InstallArgs;->mInstallSource:Lcom/android/server/pm/InstallSource;

    iget-object v0, v0, Lcom/android/server/pm/InstallSource;->mInstallerPackageName:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 409
    :goto_0
    return-object v0
.end method

.method public getInstallerPackageUid()I
    .locals 1

    .line 414
    iget-object v0, p0, Lcom/android/server/pm/InstallRequest;->mInstallArgs:Lcom/android/server/pm/InstallArgs;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/pm/InstallRequest;->mInstallArgs:Lcom/android/server/pm/InstallArgs;

    iget-object v0, v0, Lcom/android/server/pm/InstallArgs;->mInstallSource:Lcom/android/server/pm/InstallSource;

    if-eqz v0, :cond_0

    .line 415
    iget-object v0, p0, Lcom/android/server/pm/InstallRequest;->mInstallArgs:Lcom/android/server/pm/InstallArgs;

    iget-object v0, v0, Lcom/android/server/pm/InstallArgs;->mInstallSource:Lcom/android/server/pm/InstallSource;

    iget v0, v0, Lcom/android/server/pm/InstallSource;->mInstallerPackageUid:I

    goto :goto_0

    .line 416
    :cond_0
    iget v0, p0, Lcom/android/server/pm/InstallRequest;->mInstallerUidForInstallExisting:I

    .line 414
    :goto_0
    return v0
.end method

.method public getInternalErrorCode()I
    .locals 1

    .line 295
    iget v0, p0, Lcom/android/server/pm/InstallRequest;->mInternalErrorCode:I

    return v0
.end method

.method public getLibraryConsumers()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/pm/pkg/AndroidPackage;",
            ">;"
        }
    .end annotation

    .line 479
    iget-object v0, p0, Lcom/android/server/pm/InstallRequest;->mLibraryConsumers:Ljava/util/ArrayList;

    return-object v0
.end method

.method getMissingSharedLibraryCount()I
    .locals 1

    .line 1095
    iget v0, p0, Lcom/android/server/pm/InstallRequest;->mMissingSharedLibraryCount:I

    return v0
.end method

.method public getMoveFromCodePath()Ljava/lang/String;
    .locals 1

    .line 321
    iget-object v0, p0, Lcom/android/server/pm/InstallRequest;->mInstallArgs:Lcom/android/server/pm/InstallArgs;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/pm/InstallRequest;->mInstallArgs:Lcom/android/server/pm/InstallArgs;

    iget-object v0, v0, Lcom/android/server/pm/InstallArgs;->mMoveInfo:Lcom/android/server/pm/MoveInfo;

    if-eqz v0, :cond_0

    .line 322
    iget-object v0, p0, Lcom/android/server/pm/InstallRequest;->mInstallArgs:Lcom/android/server/pm/InstallArgs;

    iget-object v0, v0, Lcom/android/server/pm/InstallArgs;->mMoveInfo:Lcom/android/server/pm/MoveInfo;

    iget-object v0, v0, Lcom/android/server/pm/MoveInfo;->mFromCodePath:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 321
    :goto_0
    return-object v0
.end method

.method public getMovePackageName()Ljava/lang/String;
    .locals 1

    .line 315
    iget-object v0, p0, Lcom/android/server/pm/InstallRequest;->mInstallArgs:Lcom/android/server/pm/InstallArgs;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/pm/InstallRequest;->mInstallArgs:Lcom/android/server/pm/InstallArgs;

    iget-object v0, v0, Lcom/android/server/pm/InstallArgs;->mMoveInfo:Lcom/android/server/pm/MoveInfo;

    if-eqz v0, :cond_0

    .line 316
    iget-object v0, p0, Lcom/android/server/pm/InstallRequest;->mInstallArgs:Lcom/android/server/pm/InstallArgs;

    iget-object v0, v0, Lcom/android/server/pm/InstallArgs;->mMoveInfo:Lcom/android/server/pm/MoveInfo;

    iget-object v0, v0, Lcom/android/server/pm/MoveInfo;->mPackageName:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 315
    :goto_0
    return-object v0
.end method

.method public getMoveToUuid()Ljava/lang/String;
    .locals 1

    .line 309
    iget-object v0, p0, Lcom/android/server/pm/InstallRequest;->mInstallArgs:Lcom/android/server/pm/InstallArgs;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/pm/InstallRequest;->mInstallArgs:Lcom/android/server/pm/InstallArgs;

    iget-object v0, v0, Lcom/android/server/pm/InstallArgs;->mMoveInfo:Lcom/android/server/pm/MoveInfo;

    if-eqz v0, :cond_0

    .line 310
    iget-object v0, p0, Lcom/android/server/pm/InstallRequest;->mInstallArgs:Lcom/android/server/pm/InstallArgs;

    iget-object v0, v0, Lcom/android/server/pm/InstallArgs;->mMoveInfo:Lcom/android/server/pm/MoveInfo;

    iget-object v0, v0, Lcom/android/server/pm/MoveInfo;->mToUuid:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 309
    :goto_0
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 246
    iget-object v0, p0, Lcom/android/server/pm/InstallRequest;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getNewUsers()[I
    .locals 1

    .line 460
    iget-object v0, p0, Lcom/android/server/pm/InstallRequest;->mNewUsers:[I

    return-object v0
.end method

.method public getObserver()Landroid/content/pm/IPackageInstallObserver2;
    .locals 1

    .line 300
    iget-object v0, p0, Lcom/android/server/pm/InstallRequest;->mInstallArgs:Lcom/android/server/pm/InstallArgs;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/InstallRequest;->mInstallArgs:Lcom/android/server/pm/InstallArgs;

    iget-object v0, v0, Lcom/android/server/pm/InstallArgs;->mObserver:Landroid/content/pm/IPackageInstallObserver2;

    :goto_0
    return-object v0
.end method

.method public getOldCodeFile()Ljava/io/File;
    .locals 1

    .line 327
    iget-object v0, p0, Lcom/android/server/pm/InstallRequest;->mRemovedInfo:Lcom/android/server/pm/PackageRemovedInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/pm/InstallRequest;->mRemovedInfo:Lcom/android/server/pm/PackageRemovedInfo;

    iget-object v0, v0, Lcom/android/server/pm/PackageRemovedInfo;->mArgs:Lcom/android/server/pm/CleanUpArgs;

    if-eqz v0, :cond_0

    .line 328
    iget-object v0, p0, Lcom/android/server/pm/InstallRequest;->mRemovedInfo:Lcom/android/server/pm/PackageRemovedInfo;

    iget-object v0, v0, Lcom/android/server/pm/PackageRemovedInfo;->mArgs:Lcom/android/server/pm/CleanUpArgs;

    invoke-virtual {v0}, Lcom/android/server/pm/CleanUpArgs;->getCodeFile()Ljava/io/File;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 327
    :goto_0
    return-object v0
.end method

.method public getOldInstructionSet()[Ljava/lang/String;
    .locals 1

    .line 333
    iget-object v0, p0, Lcom/android/server/pm/InstallRequest;->mRemovedInfo:Lcom/android/server/pm/PackageRemovedInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/pm/InstallRequest;->mRemovedInfo:Lcom/android/server/pm/PackageRemovedInfo;

    iget-object v0, v0, Lcom/android/server/pm/PackageRemovedInfo;->mArgs:Lcom/android/server/pm/CleanUpArgs;

    if-eqz v0, :cond_0

    .line 334
    iget-object v0, p0, Lcom/android/server/pm/InstallRequest;->mRemovedInfo:Lcom/android/server/pm/PackageRemovedInfo;

    iget-object v0, v0, Lcom/android/server/pm/PackageRemovedInfo;->mArgs:Lcom/android/server/pm/CleanUpArgs;

    invoke-virtual {v0}, Lcom/android/server/pm/CleanUpArgs;->getInstructionSets()[Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 333
    :goto_0
    return-object v0
.end method

.method public getOrigPackage()Ljava/lang/String;
    .locals 1

    .line 266
    iget-object v0, p0, Lcom/android/server/pm/InstallRequest;->mOrigPackage:Ljava/lang/String;

    return-object v0
.end method

.method public getOrigPermission()Ljava/lang/String;
    .locals 1

    .line 271
    iget-object v0, p0, Lcom/android/server/pm/InstallRequest;->mOrigPermission:Ljava/lang/String;

    return-object v0
.end method

.method public getOriginInfo()Lcom/android/server/pm/OriginInfo;
    .locals 1

    .line 256
    iget-object v0, p0, Lcom/android/server/pm/InstallRequest;->mInstallArgs:Lcom/android/server/pm/InstallArgs;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/InstallRequest;->mInstallArgs:Lcom/android/server/pm/InstallArgs;

    iget-object v0, v0, Lcom/android/server/pm/InstallArgs;->mOriginInfo:Lcom/android/server/pm/OriginInfo;

    :goto_0
    return-object v0
.end method

.method public getOriginUri()Landroid/net/Uri;
    .locals 1

    .line 435
    iget-object v0, p0, Lcom/android/server/pm/InstallRequest;->mInstallArgs:Lcom/android/server/pm/InstallArgs;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/InstallRequest;->mInstallArgs:Lcom/android/server/pm/InstallArgs;

    iget-object v0, v0, Lcom/android/server/pm/InstallArgs;->mOriginInfo:Lcom/android/server/pm/OriginInfo;

    iget-object v0, v0, Lcom/android/server/pm/OriginInfo;->mResolvedFile:Ljava/io/File;

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getOriginUsers()[I
    .locals 1

    .line 465
    iget-object v0, p0, Lcom/android/server/pm/InstallRequest;->mOrigUsers:[I

    return-object v0
.end method

.method public getOriginalPackageSetting()Lcom/android/server/pm/PackageSetting;
    .locals 1

    .line 557
    iget-object v0, p0, Lcom/android/server/pm/InstallRequest;->mOriginalPs:Lcom/android/server/pm/PackageSetting;

    return-object v0
.end method

.method public getPackageLite()Landroid/content/pm/parsing/PackageLite;
    .locals 1

    .line 369
    iget-object v0, p0, Lcom/android/server/pm/InstallRequest;->mPackageLite:Landroid/content/pm/parsing/PackageLite;

    return-object v0
.end method

.method public getPackageSource()I
    .locals 1

    .line 493
    iget-object v0, p0, Lcom/android/server/pm/InstallRequest;->mInstallArgs:Lcom/android/server/pm/InstallArgs;

    if-nez v0, :cond_0

    .line 494
    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/InstallRequest;->mInstallArgs:Lcom/android/server/pm/InstallArgs;

    iget v0, v0, Lcom/android/server/pm/InstallArgs;->mPackageSource:I

    .line 493
    :goto_0
    return v0
.end method

.method public getParseFlags()I
    .locals 1

    .line 511
    iget v0, p0, Lcom/android/server/pm/InstallRequest;->mParseFlags:I

    return v0
.end method

.method public getParsedPackage()Lcom/android/internal/pm/parsing/pkg/ParsedPackage;
    .locals 1

    .line 503
    iget-object v0, p0, Lcom/android/server/pm/InstallRequest;->mParsedPackage:Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    return-object v0
.end method

.method public getPermissionStates()Landroid/util/ArrayMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 474
    iget-object v0, p0, Lcom/android/server/pm/InstallRequest;->mInstallArgs:Lcom/android/server/pm/InstallArgs;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/InstallRequest;->mInstallArgs:Lcom/android/server/pm/InstallArgs;

    iget-object v0, v0, Lcom/android/server/pm/InstallArgs;->mPermissionStates:Landroid/util/ArrayMap;

    :goto_0
    return-object v0
.end method

.method public getPkg()Lcom/android/server/pm/pkg/AndroidPackage;
    .locals 1

    .line 364
    iget-object v0, p0, Lcom/android/server/pm/InstallRequest;->mPkg:Lcom/android/server/pm/pkg/AndroidPackage;

    return-object v0
.end method

.method public getPreVerifiedDomains()Landroid/content/pm/verify/domain/DomainSet;
    .locals 1

    .line 953
    iget-object v0, p0, Lcom/android/server/pm/InstallRequest;->mPreVerifiedDomains:Landroid/content/pm/verify/domain/DomainSet;

    return-object v0
.end method

.method public getPreviousAppId()I
    .locals 1

    .line 662
    invoke-virtual {p0}, Lcom/android/server/pm/InstallRequest;->assertScanResultExists()V

    .line 663
    iget-object v0, p0, Lcom/android/server/pm/InstallRequest;->mScanResult:Lcom/android/server/pm/ScanResult;

    iget v0, v0, Lcom/android/server/pm/ScanResult;->mPreviousAppId:I

    return v0
.end method

.method public getRealPackageName()Ljava/lang/String;
    .locals 1

    .line 591
    invoke-virtual {p0}, Lcom/android/server/pm/InstallRequest;->assertScanResultExists()V

    .line 592
    iget-object v0, p0, Lcom/android/server/pm/InstallRequest;->mScanResult:Lcom/android/server/pm/ScanResult;

    iget-object v0, v0, Lcom/android/server/pm/ScanResult;->mRequest:Lcom/android/server/pm/ScanRequest;

    iget-object v0, v0, Lcom/android/server/pm/ScanRequest;->mRealPkgName:Ljava/lang/String;

    return-object v0
.end method

.method public getRemovedInfo()Lcom/android/server/pm/PackageRemovedInfo;
    .locals 1

    .line 261
    iget-object v0, p0, Lcom/android/server/pm/InstallRequest;->mRemovedInfo:Lcom/android/server/pm/PackageRemovedInfo;

    return-object v0
.end method

.method public getRemovedPackage()Ljava/lang/String;
    .locals 1

    .line 395
    iget-object v0, p0, Lcom/android/server/pm/InstallRequest;->mRemovedInfo:Lcom/android/server/pm/PackageRemovedInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/pm/InstallRequest;->mRemovedInfo:Lcom/android/server/pm/PackageRemovedInfo;

    iget-object v0, v0, Lcom/android/server/pm/PackageRemovedInfo;->mRemovedPackage:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getRequireUserAction()I
    .locals 1

    .line 691
    iget v0, p0, Lcom/android/server/pm/InstallRequest;->mRequireUserAction:I

    return v0
.end method

.method public getResponsibleInstallerTitles()Landroid/util/SparseArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 450
    iget-object v0, p0, Lcom/android/server/pm/InstallRequest;->mResponsibleInstallerTitles:Landroid/util/SparseArray;

    return-object v0
.end method

.method public getReturnCode()I
    .locals 1

    .line 291
    iget v0, p0, Lcom/android/server/pm/InstallRequest;->mReturnCode:I

    return v0
.end method

.method public getReturnMsg()Ljava/lang/String;
    .locals 1

    .line 251
    iget-object v0, p0, Lcom/android/server/pm/InstallRequest;->mReturnMsg:Ljava/lang/String;

    return-object v0
.end method

.method public getScanFlags()I
    .locals 1

    .line 516
    iget v0, p0, Lcom/android/server/pm/InstallRequest;->mScanFlags:I

    return v0
.end method

.method public getScanRequestDisabledPackageSetting()Lcom/android/server/pm/PackageSetting;
    .locals 1

    .line 585
    invoke-virtual {p0}, Lcom/android/server/pm/InstallRequest;->assertScanResultExists()V

    .line 586
    iget-object v0, p0, Lcom/android/server/pm/InstallRequest;->mScanResult:Lcom/android/server/pm/ScanResult;

    iget-object v0, v0, Lcom/android/server/pm/ScanResult;->mRequest:Lcom/android/server/pm/ScanRequest;

    iget-object v0, v0, Lcom/android/server/pm/ScanRequest;->mDisabledPkgSetting:Lcom/android/server/pm/PackageSetting;

    return-object v0
.end method

.method public getScanRequestOldPackage()Lcom/android/server/pm/pkg/AndroidPackage;
    .locals 1

    .line 526
    invoke-virtual {p0}, Lcom/android/server/pm/InstallRequest;->assertScanResultExists()V

    .line 527
    iget-object v0, p0, Lcom/android/server/pm/InstallRequest;->mScanResult:Lcom/android/server/pm/ScanResult;

    iget-object v0, v0, Lcom/android/server/pm/ScanResult;->mRequest:Lcom/android/server/pm/ScanRequest;

    iget-object v0, v0, Lcom/android/server/pm/ScanRequest;->mOldPkg:Lcom/android/server/pm/pkg/AndroidPackage;

    return-object v0
.end method

.method public getScanRequestOldPackageSetting()Lcom/android/server/pm/PackageSetting;
    .locals 1

    .line 567
    invoke-virtual {p0}, Lcom/android/server/pm/InstallRequest;->assertScanResultExists()V

    .line 568
    iget-object v0, p0, Lcom/android/server/pm/InstallRequest;->mScanResult:Lcom/android/server/pm/ScanResult;

    iget-object v0, v0, Lcom/android/server/pm/ScanResult;->mRequest:Lcom/android/server/pm/ScanRequest;

    iget-object v0, v0, Lcom/android/server/pm/ScanRequest;->mOldPkgSetting:Lcom/android/server/pm/PackageSetting;

    return-object v0
.end method

.method public getScanRequestOriginalPackageSetting()Lcom/android/server/pm/PackageSetting;
    .locals 1

    .line 573
    invoke-virtual {p0}, Lcom/android/server/pm/InstallRequest;->assertScanResultExists()V

    .line 574
    iget-object v0, p0, Lcom/android/server/pm/InstallRequest;->mScanResult:Lcom/android/server/pm/ScanResult;

    iget-object v0, v0, Lcom/android/server/pm/ScanResult;->mRequest:Lcom/android/server/pm/ScanRequest;

    iget-object v0, v0, Lcom/android/server/pm/ScanRequest;->mOriginalPkgSetting:Lcom/android/server/pm/PackageSetting;

    return-object v0
.end method

.method public getScanRequestPackageSetting()Lcom/android/server/pm/PackageSetting;
    .locals 1

    .line 579
    invoke-virtual {p0}, Lcom/android/server/pm/InstallRequest;->assertScanResultExists()V

    .line 580
    iget-object v0, p0, Lcom/android/server/pm/InstallRequest;->mScanResult:Lcom/android/server/pm/ScanResult;

    iget-object v0, v0, Lcom/android/server/pm/ScanResult;->mRequest:Lcom/android/server/pm/ScanRequest;

    iget-object v0, v0, Lcom/android/server/pm/ScanRequest;->mPkgSetting:Lcom/android/server/pm/PackageSetting;

    return-object v0
.end method

.method public getScannedPackageSetting()Lcom/android/server/pm/PackageSetting;
    .locals 1

    .line 643
    invoke-virtual {p0}, Lcom/android/server/pm/InstallRequest;->assertScanResultExists()V

    .line 644
    iget-object v0, p0, Lcom/android/server/pm/InstallRequest;->mScanResult:Lcom/android/server/pm/ScanResult;

    iget-object v0, v0, Lcom/android/server/pm/ScanResult;->mPkgSetting:Lcom/android/server/pm/PackageSetting;

    return-object v0
.end method

.method public getSdkSharedLibraryInfo()Landroid/content/pm/SharedLibraryInfo;
    .locals 1

    .line 611
    invoke-virtual {p0}, Lcom/android/server/pm/InstallRequest;->assertScanResultExists()V

    .line 612
    iget-object v0, p0, Lcom/android/server/pm/InstallRequest;->mScanResult:Lcom/android/server/pm/ScanResult;

    iget-object v0, v0, Lcom/android/server/pm/ScanResult;->mSdkSharedLibraryInfo:Landroid/content/pm/SharedLibraryInfo;

    return-object v0
.end method

.method public getSessionId()I
    .locals 1

    .line 687
    iget v0, p0, Lcom/android/server/pm/InstallRequest;->mSessionId:I

    return v0
.end method

.method public getSignatureSchemeVersion()I
    .locals 1

    .line 424
    iget-object v0, p0, Lcom/android/server/pm/InstallRequest;->mInstallArgs:Lcom/android/server/pm/InstallArgs;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 425
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/InstallRequest;->mInstallArgs:Lcom/android/server/pm/InstallArgs;

    iget-object v0, v0, Lcom/android/server/pm/InstallArgs;->mSigningDetails:Landroid/content/pm/SigningDetails;

    invoke-virtual {v0}, Landroid/content/pm/SigningDetails;->getSignatureSchemeVersion()I

    move-result v0

    .line 424
    :goto_0
    return v0
.end method

.method public getSigningDetails()Landroid/content/pm/SigningDetails;
    .locals 1

    .line 430
    iget-object v0, p0, Lcom/android/server/pm/InstallRequest;->mInstallArgs:Lcom/android/server/pm/InstallArgs;

    if-nez v0, :cond_0

    sget-object v0, Landroid/content/pm/SigningDetails;->UNKNOWN:Landroid/content/pm/SigningDetails;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/InstallRequest;->mInstallArgs:Lcom/android/server/pm/InstallArgs;

    iget-object v0, v0, Lcom/android/server/pm/InstallArgs;->mSigningDetails:Landroid/content/pm/SigningDetails;

    :goto_0
    return-object v0
.end method

.method public getStaticSharedLibraryInfo()Landroid/content/pm/SharedLibraryInfo;
    .locals 1

    .line 617
    invoke-virtual {p0}, Lcom/android/server/pm/InstallRequest;->assertScanResultExists()V

    .line 618
    iget-object v0, p0, Lcom/android/server/pm/InstallRequest;->mScanResult:Lcom/android/server/pm/ScanResult;

    iget-object v0, v0, Lcom/android/server/pm/ScanResult;->mStaticSharedLibraryInfo:Landroid/content/pm/SharedLibraryInfo;

    return-object v0
.end method

.method public getTraceCookie()I
    .locals 1

    .line 378
    iget-object v0, p0, Lcom/android/server/pm/InstallRequest;->mInstallArgs:Lcom/android/server/pm/InstallArgs;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/InstallRequest;->mInstallArgs:Lcom/android/server/pm/InstallArgs;

    iget v0, v0, Lcom/android/server/pm/InstallArgs;->mTraceCookie:I

    :goto_0
    return v0
.end method

.method public getTraceMethod()Ljava/lang/String;
    .locals 1

    .line 374
    iget-object v0, p0, Lcom/android/server/pm/InstallRequest;->mInstallArgs:Lcom/android/server/pm/InstallArgs;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/InstallRequest;->mInstallArgs:Lcom/android/server/pm/InstallArgs;

    iget-object v0, v0, Lcom/android/server/pm/InstallArgs;->mTraceMethod:Ljava/lang/String;

    :goto_0
    return-object v0
.end method

.method public getUpdateBroadcastInstantUserIds()[I
    .locals 1

    .line 714
    iget-object v0, p0, Lcom/android/server/pm/InstallRequest;->mUpdateBroadcastInstantUserIds:[I

    return-object v0
.end method

.method public getUpdateBroadcastUserIds()[I
    .locals 1

    .line 710
    iget-object v0, p0, Lcom/android/server/pm/InstallRequest;->mUpdateBroadcastUserIds:[I

    return-object v0
.end method

.method public getUser()Landroid/os/UserHandle;
    .locals 2

    .line 338
    new-instance v0, Landroid/os/UserHandle;

    iget v1, p0, Lcom/android/server/pm/InstallRequest;->mUserId:I

    invoke-direct {v0, v1}, Landroid/os/UserHandle;-><init>(I)V

    return-object v0
.end method

.method public getUserId()I
    .locals 1

    .line 342
    iget v0, p0, Lcom/android/server/pm/InstallRequest;->mUserId:I

    return v0
.end method

.method public getVolumeUuid()Ljava/lang/String;
    .locals 1

    .line 359
    iget-object v0, p0, Lcom/android/server/pm/InstallRequest;->mInstallArgs:Lcom/android/server/pm/InstallArgs;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/InstallRequest;->mInstallArgs:Lcom/android/server/pm/InstallArgs;

    iget-object v0, v0, Lcom/android/server/pm/InstallArgs;->mVolumeUuid:Ljava/lang/String;

    :goto_0
    return-object v0
.end method

.method public getWarnings()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 719
    iget-object v0, p0, Lcom/android/server/pm/InstallRequest;->mWarnings:Ljava/util/ArrayList;

    return-object v0
.end method

.method public hasAppMetadataFile()Z
    .locals 1

    .line 390
    iget-boolean v0, p0, Lcom/android/server/pm/InstallRequest;->mHasAppMetadataFileFromInstaller:Z

    return v0
.end method

.method public hasPostInstallRunnable()Z
    .locals 1

    .line 742
    iget-object v0, p0, Lcom/android/server/pm/InstallRequest;->mPostInstallRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isAllNewUsers()Z
    .locals 1

    .line 699
    iget-object v0, p0, Lcom/android/server/pm/InstallRequest;->mOrigUsers:[I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/pm/InstallRequest;->mOrigUsers:[I

    array-length v0, v0

    if-nez v0, :cond_1

    :cond_0
    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isApplicationEnabledSettingPersistent()Z
    .locals 1

    .line 602
    iget-object v0, p0, Lcom/android/server/pm/InstallRequest;->mInstallArgs:Lcom/android/server/pm/InstallArgs;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/InstallRequest;->mInstallArgs:Lcom/android/server/pm/InstallArgs;

    iget-boolean v0, v0, Lcom/android/server/pm/InstallArgs;->mApplicationEnabledSettingPersistent:Z

    :goto_0
    return v0
.end method

.method public isArchived()Z
    .locals 1

    .line 386
    invoke-virtual {p0}, Lcom/android/server/pm/InstallRequest;->getInstallFlags()I

    move-result v0

    invoke-static {v0}, Lcom/android/server/pm/PackageInstallerSession;->isArchivedInstallation(I)Z

    move-result v0

    return v0
.end method

.method public isClearCodeCache()Z
    .locals 1

    .line 531
    iget-boolean v0, p0, Lcom/android/server/pm/InstallRequest;->mClearCodeCache:Z

    return v0
.end method

.method isDependencyInstallerEnabled()Z
    .locals 1

    .line 1099
    iget-boolean v0, p0, Lcom/android/server/pm/InstallRequest;->mDependencyInstallerEnabled:Z

    return v0
.end method

.method public isExistingSettingCopied()Z
    .locals 1

    .line 648
    invoke-virtual {p0}, Lcom/android/server/pm/InstallRequest;->assertScanResultExists()V

    .line 649
    iget-object v0, p0, Lcom/android/server/pm/InstallRequest;->mScanResult:Lcom/android/server/pm/ScanResult;

    iget-boolean v0, v0, Lcom/android/server/pm/ScanResult;->mExistingSettingCopied:Z

    return v0
.end method

.method public isForceQueryableOverride()Z
    .locals 1

    .line 606
    iget-object v0, p0, Lcom/android/server/pm/InstallRequest;->mInstallArgs:Lcom/android/server/pm/InstallArgs;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/pm/InstallRequest;->mInstallArgs:Lcom/android/server/pm/InstallArgs;

    iget-boolean v0, v0, Lcom/android/server/pm/InstallArgs;->mForceQueryableOverride:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isInstallExistingForUser()Z
    .locals 1

    .line 399
    iget-object v0, p0, Lcom/android/server/pm/InstallRequest;->mInstallArgs:Lcom/android/server/pm/InstallArgs;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isInstallForUsers()Z
    .locals 1

    .line 547
    iget-boolean v0, p0, Lcom/android/server/pm/InstallRequest;->mIsInstallForUsers:Z

    return v0
.end method

.method public isInstallFromAdb()Z
    .locals 1

    .line 551
    iget-object v0, p0, Lcom/android/server/pm/InstallRequest;->mInstallArgs:Lcom/android/server/pm/InstallArgs;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/pm/InstallRequest;->mInstallArgs:Lcom/android/server/pm/InstallArgs;

    iget v0, v0, Lcom/android/server/pm/InstallArgs;->mInstallFlags:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isInstallInherit()Z
    .locals 1

    .line 543
    iget-boolean v0, p0, Lcom/android/server/pm/InstallRequest;->mIsInstallInherit:Z

    return v0
.end method

.method public isInstallMove()Z
    .locals 1

    .line 304
    iget-object v0, p0, Lcom/android/server/pm/InstallRequest;->mInstallArgs:Lcom/android/server/pm/InstallArgs;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/pm/InstallRequest;->mInstallArgs:Lcom/android/server/pm/InstallArgs;

    iget-object v0, v0, Lcom/android/server/pm/InstallArgs;->mMoveInfo:Lcom/android/server/pm/MoveInfo;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isInstallReplace()Z
    .locals 1

    .line 535
    iget-boolean v0, p0, Lcom/android/server/pm/InstallRequest;->mReplace:Z

    return v0
.end method

.method public isInstallSystem()Z
    .locals 1

    .line 539
    iget-boolean v0, p0, Lcom/android/server/pm/InstallRequest;->mSystem:Z

    return v0
.end method

.method public isInstantInstall()Z
    .locals 1

    .line 672
    iget v0, p0, Lcom/android/server/pm/InstallRequest;->mScanFlags:I

    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isKeepArtProfile()Z
    .locals 1

    .line 1091
    iget-boolean v0, p0, Lcom/android/server/pm/InstallRequest;->mKeepArtProfile:Z

    return v0
.end method

.method public isPlatformPackage()Z
    .locals 1

    .line 667
    invoke-virtual {p0}, Lcom/android/server/pm/InstallRequest;->assertScanResultExists()V

    .line 668
    iget-object v0, p0, Lcom/android/server/pm/InstallRequest;->mScanResult:Lcom/android/server/pm/ScanResult;

    iget-object v0, v0, Lcom/android/server/pm/ScanResult;->mRequest:Lcom/android/server/pm/ScanRequest;

    iget-boolean v0, v0, Lcom/android/server/pm/ScanRequest;->mIsPlatformPackage:Z

    return v0
.end method

.method public isRollback()Z
    .locals 2

    .line 454
    iget-object v0, p0, Lcom/android/server/pm/InstallRequest;->mInstallArgs:Lcom/android/server/pm/InstallArgs;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/pm/InstallRequest;->mInstallArgs:Lcom/android/server/pm/InstallArgs;

    iget v0, v0, Lcom/android/server/pm/InstallArgs;->mInstallReason:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isUpdate()Z
    .locals 1

    .line 382
    iget-object v0, p0, Lcom/android/server/pm/InstallRequest;->mRemovedInfo:Lcom/android/server/pm/PackageRemovedInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/pm/InstallRequest;->mRemovedInfo:Lcom/android/server/pm/PackageRemovedInfo;

    iget-object v0, v0, Lcom/android/server/pm/PackageRemovedInfo;->mRemovedPackage:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public needsNewAppId()Z
    .locals 2

    .line 657
    invoke-virtual {p0}, Lcom/android/server/pm/InstallRequest;->assertScanResultExists()V

    .line 658
    iget-object v0, p0, Lcom/android/server/pm/InstallRequest;->mScanResult:Lcom/android/server/pm/ScanResult;

    iget v0, v0, Lcom/android/server/pm/ScanResult;->mPreviousAppId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onCommitFinished()V
    .locals 2

    .line 1003
    iget-object v0, p0, Lcom/android/server/pm/InstallRequest;->mPackageMetrics:Lcom/android/server/pm/PackageMetrics;

    if-eqz v0, :cond_0

    .line 1004
    iget-object v0, p0, Lcom/android/server/pm/InstallRequest;->mPackageMetrics:Lcom/android/server/pm/PackageMetrics;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/server/pm/PackageMetrics;->onStepFinished(I)V

    .line 1006
    :cond_0
    return-void
.end method

.method public onCommitStarted()V
    .locals 2

    .line 997
    iget-object v0, p0, Lcom/android/server/pm/InstallRequest;->mPackageMetrics:Lcom/android/server/pm/PackageMetrics;

    if-eqz v0, :cond_0

    .line 998
    iget-object v0, p0, Lcom/android/server/pm/InstallRequest;->mPackageMetrics:Lcom/android/server/pm/PackageMetrics;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/server/pm/PackageMetrics;->onStepStarted(I)V

    .line 1000
    :cond_0
    return-void
.end method

.method public onDexoptFinished(Lcom/android/server/art/model/DexoptResult;)V
    .locals 8
    .param p1, "dexoptResult"    # Lcom/android/server/art/model/DexoptResult;

    .line 1036
    invoke-virtual {p0}, Lcom/android/server/pm/InstallRequest;->isInstallFromAdb()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1037
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 1038
    .local v0, "externalProfileErrors":Ljava/util/LinkedHashSet;, "Ljava/util/LinkedHashSet<Ljava/lang/String;>;"
    invoke-virtual {p1}, Lcom/android/server/art/model/DexoptResult;->getPackageDexoptResults()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/art/model/DexoptResult$PackageDexoptResult;

    .line 1040
    .local v2, "packageResult":Lcom/android/server/art/model/DexoptResult$PackageDexoptResult;
    invoke-virtual {v2}, Lcom/android/server/art/model/DexoptResult$PackageDexoptResult;->getDexContainerFileDexoptResults()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    nop

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/art/model/DexoptResult$DexContainerFileDexoptResult;

    .line 1041
    .local v4, "fileResult":Lcom/android/server/art/model/DexoptResult$DexContainerFileDexoptResult;
    invoke-virtual {v4}, Lcom/android/server/art/model/DexoptResult$DexContainerFileDexoptResult;->getExternalProfileErrors()Ljava/util/List;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/LinkedHashSet;->addAll(Ljava/util/Collection;)Z

    .line 1042
    .end local v4    # "fileResult":Lcom/android/server/art/model/DexoptResult$DexContainerFileDexoptResult;
    goto :goto_1

    .line 1043
    .end local v2    # "packageResult":Lcom/android/server/art/model/DexoptResult$PackageDexoptResult;
    :cond_0
    goto :goto_0

    .line 1044
    :cond_1
    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1045
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error occurred during dexopt when processing external profiles:\n  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1046
    const-string v2, "\n  "

    invoke-static {v2, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1045
    invoke-virtual {p0, v1}, Lcom/android/server/pm/InstallRequest;->addWarning(Ljava/lang/String;)V

    .line 1051
    .end local v0    # "externalProfileErrors":Ljava/util/LinkedHashSet;, "Ljava/util/LinkedHashSet<Ljava/lang/String;>;"
    :cond_2
    iget-object v0, p0, Lcom/android/server/pm/InstallRequest;->mPackageMetrics:Lcom/android/server/pm/PackageMetrics;

    if-eqz v0, :cond_5

    .line 1052
    invoke-virtual {p1}, Lcom/android/server/art/model/DexoptResult;->getFinalStatus()I

    move-result v0

    iput v0, p0, Lcom/android/server/pm/InstallRequest;->mDexoptStatus:I

    .line 1053
    iget v0, p0, Lcom/android/server/pm/InstallRequest;->mDexoptStatus:I

    const/16 v1, 0x14

    if-ne v0, v1, :cond_5

    .line 1054
    const-wide/16 v0, 0x0

    .line 1055
    .local v0, "durationMillis":J
    invoke-virtual {p1}, Lcom/android/server/art/model/DexoptResult;->getPackageDexoptResults()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/art/model/DexoptResult$PackageDexoptResult;

    .line 1057
    .local v3, "packageResult":Lcom/android/server/art/model/DexoptResult$PackageDexoptResult;
    invoke-virtual {v3}, Lcom/android/server/art/model/DexoptResult$PackageDexoptResult;->getDexContainerFileDexoptResults()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    nop

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/art/model/DexoptResult$DexContainerFileDexoptResult;

    .line 1058
    .local v5, "fileResult":Lcom/android/server/art/model/DexoptResult$DexContainerFileDexoptResult;
    invoke-virtual {v5}, Lcom/android/server/art/model/DexoptResult$DexContainerFileDexoptResult;->getDex2oatWallTimeMillis()J

    move-result-wide v6

    add-long/2addr v0, v6

    .line 1059
    .end local v5    # "fileResult":Lcom/android/server/art/model/DexoptResult$DexContainerFileDexoptResult;
    goto :goto_3

    .line 1060
    .end local v3    # "packageResult":Lcom/android/server/art/model/DexoptResult$PackageDexoptResult;
    :cond_3
    goto :goto_2

    .line 1061
    :cond_4
    iget-object v2, p0, Lcom/android/server/pm/InstallRequest;->mPackageMetrics:Lcom/android/server/pm/PackageMetrics;

    const/4 v3, 0x5

    invoke-virtual {v2, v3, v0, v1}, Lcom/android/server/pm/PackageMetrics;->onStepFinished(IJ)V

    .line 1064
    .end local v0    # "durationMillis":J
    :cond_5
    return-void
.end method

.method public onFreezeCompleted()V
    .locals 2

    .line 1081
    iget-object v0, p0, Lcom/android/server/pm/InstallRequest;->mPackageMetrics:Lcom/android/server/pm/PackageMetrics;

    if-eqz v0, :cond_0

    .line 1082
    iget-object v0, p0, Lcom/android/server/pm/InstallRequest;->mPackageMetrics:Lcom/android/server/pm/PackageMetrics;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/android/server/pm/PackageMetrics;->onStepFinished(I)V

    .line 1084
    :cond_0
    return-void
.end method

.method public onFreezeStarted()V
    .locals 2

    .line 1075
    iget-object v0, p0, Lcom/android/server/pm/InstallRequest;->mPackageMetrics:Lcom/android/server/pm/PackageMetrics;

    if-eqz v0, :cond_0

    .line 1076
    iget-object v0, p0, Lcom/android/server/pm/InstallRequest;->mPackageMetrics:Lcom/android/server/pm/PackageMetrics;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/android/server/pm/PackageMetrics;->onStepStarted(I)V

    .line 1078
    :cond_0
    return-void
.end method

.method public onInstallCompleted()V
    .locals 2

    .line 1067
    invoke-virtual {p0}, Lcom/android/server/pm/InstallRequest;->getReturnCode()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1068
    iget-object v0, p0, Lcom/android/server/pm/InstallRequest;->mPackageMetrics:Lcom/android/server/pm/PackageMetrics;

    if-eqz v0, :cond_0

    .line 1069
    iget-object v0, p0, Lcom/android/server/pm/InstallRequest;->mPackageMetrics:Lcom/android/server/pm/PackageMetrics;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageMetrics;->onInstallSucceed()V

    .line 1072
    :cond_0
    return-void
.end method

.method public onPrepareFinished()V
    .locals 2

    .line 967
    iget-object v0, p0, Lcom/android/server/pm/InstallRequest;->mPackageMetrics:Lcom/android/server/pm/PackageMetrics;

    if-eqz v0, :cond_0

    .line 968
    iget-object v0, p0, Lcom/android/server/pm/InstallRequest;->mPackageMetrics:Lcom/android/server/pm/PackageMetrics;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/pm/PackageMetrics;->onStepFinished(I)V

    .line 970
    :cond_0
    return-void
.end method

.method public onPrepareStarted()V
    .locals 2

    .line 961
    iget-object v0, p0, Lcom/android/server/pm/InstallRequest;->mPackageMetrics:Lcom/android/server/pm/PackageMetrics;

    if-eqz v0, :cond_0

    .line 962
    iget-object v0, p0, Lcom/android/server/pm/InstallRequest;->mPackageMetrics:Lcom/android/server/pm/PackageMetrics;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/pm/PackageMetrics;->onStepStarted(I)V

    .line 964
    :cond_0
    return-void
.end method

.method public onReconcileFinished()V
    .locals 2

    .line 991
    iget-object v0, p0, Lcom/android/server/pm/InstallRequest;->mPackageMetrics:Lcom/android/server/pm/PackageMetrics;

    if-eqz v0, :cond_0

    .line 992
    iget-object v0, p0, Lcom/android/server/pm/InstallRequest;->mPackageMetrics:Lcom/android/server/pm/PackageMetrics;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/server/pm/PackageMetrics;->onStepFinished(I)V

    .line 994
    :cond_0
    return-void
.end method

.method public onReconcileStarted()V
    .locals 2

    .line 985
    iget-object v0, p0, Lcom/android/server/pm/InstallRequest;->mPackageMetrics:Lcom/android/server/pm/PackageMetrics;

    if-eqz v0, :cond_0

    .line 986
    iget-object v0, p0, Lcom/android/server/pm/InstallRequest;->mPackageMetrics:Lcom/android/server/pm/PackageMetrics;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/server/pm/PackageMetrics;->onStepStarted(I)V

    .line 988
    :cond_0
    return-void
.end method

.method public onRestoreFinished()V
    .locals 2

    .line 1015
    iget-object v0, p0, Lcom/android/server/pm/InstallRequest;->mPackageMetrics:Lcom/android/server/pm/PackageMetrics;

    if-eqz v0, :cond_0

    .line 1016
    iget-object v0, p0, Lcom/android/server/pm/InstallRequest;->mPackageMetrics:Lcom/android/server/pm/PackageMetrics;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/android/server/pm/PackageMetrics;->onStepFinished(I)V

    .line 1018
    :cond_0
    return-void
.end method

.method public onRestoreStarted()V
    .locals 2

    .line 1009
    iget-object v0, p0, Lcom/android/server/pm/InstallRequest;->mPackageMetrics:Lcom/android/server/pm/PackageMetrics;

    if-eqz v0, :cond_0

    .line 1010
    iget-object v0, p0, Lcom/android/server/pm/InstallRequest;->mPackageMetrics:Lcom/android/server/pm/PackageMetrics;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/android/server/pm/PackageMetrics;->onStepStarted(I)V

    .line 1012
    :cond_0
    return-void
.end method

.method public onScanFinished()V
    .locals 2

    .line 979
    iget-object v0, p0, Lcom/android/server/pm/InstallRequest;->mPackageMetrics:Lcom/android/server/pm/PackageMetrics;

    if-eqz v0, :cond_0

    .line 980
    iget-object v0, p0, Lcom/android/server/pm/InstallRequest;->mPackageMetrics:Lcom/android/server/pm/PackageMetrics;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/server/pm/PackageMetrics;->onStepFinished(I)V

    .line 982
    :cond_0
    return-void
.end method

.method public onScanStarted()V
    .locals 2

    .line 973
    iget-object v0, p0, Lcom/android/server/pm/InstallRequest;->mPackageMetrics:Lcom/android/server/pm/PackageMetrics;

    if-eqz v0, :cond_0

    .line 974
    iget-object v0, p0, Lcom/android/server/pm/InstallRequest;->mPackageMetrics:Lcom/android/server/pm/PackageMetrics;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/server/pm/PackageMetrics;->onStepStarted(I)V

    .line 976
    :cond_0
    return-void
.end method

.method public onWaitDexoptFinished()V
    .locals 2

    .line 1027
    iget-object v0, p0, Lcom/android/server/pm/InstallRequest;->mPackageMetrics:Lcom/android/server/pm/PackageMetrics;

    if-eqz v0, :cond_0

    .line 1028
    iget-object v0, p0, Lcom/android/server/pm/InstallRequest;->mPackageMetrics:Lcom/android/server/pm/PackageMetrics;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/server/pm/PackageMetrics;->onStepFinished(I)V

    .line 1030
    :cond_0
    return-void
.end method

.method public onWaitDexoptStarted()V
    .locals 2

    .line 1021
    iget-object v0, p0, Lcom/android/server/pm/InstallRequest;->mPackageMetrics:Lcom/android/server/pm/PackageMetrics;

    if-eqz v0, :cond_0

    .line 1022
    iget-object v0, p0, Lcom/android/server/pm/InstallRequest;->mPackageMetrics:Lcom/android/server/pm/PackageMetrics;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/server/pm/PackageMetrics;->onStepStarted(I)V

    .line 1024
    :cond_0
    return-void
.end method

.method public runPostInstallRunnable()V
    .locals 1

    .line 746
    iget-object v0, p0, Lcom/android/server/pm/InstallRequest;->mPostInstallRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 747
    iget-object v0, p0, Lcom/android/server/pm/InstallRequest;->mPostInstallRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 749
    :cond_0
    return-void
.end method

.method public setApexInfo(Landroid/apex/ApexInfo;)V
    .locals 0
    .param p1, "apexInfo"    # Landroid/apex/ApexInfo;

    .line 789
    iput-object p1, p0, Lcom/android/server/pm/InstallRequest;->mApexInfo:Landroid/apex/ApexInfo;

    .line 790
    return-void
.end method

.method public setApexModuleName(Ljava/lang/String;)V
    .locals 0
    .param p1, "apexModuleName"    # Ljava/lang/String;

    .line 793
    iput-object p1, p0, Lcom/android/server/pm/InstallRequest;->mApexModuleName:Ljava/lang/String;

    .line 794
    return-void
.end method

.method public setAppId(I)V
    .locals 0
    .param p1, "appId"    # I

    .line 806
    iput p1, p0, Lcom/android/server/pm/InstallRequest;->mAppId:I

    .line 807
    return-void
.end method

.method public setCodeFile(Ljava/io/File;)V
    .locals 1
    .param p1, "codeFile"    # Ljava/io/File;

    .line 752
    iget-object v0, p0, Lcom/android/server/pm/InstallRequest;->mInstallArgs:Lcom/android/server/pm/InstallArgs;

    if-eqz v0, :cond_0

    .line 753
    iget-object v0, p0, Lcom/android/server/pm/InstallRequest;->mInstallArgs:Lcom/android/server/pm/InstallArgs;

    iput-object p1, v0, Lcom/android/server/pm/InstallArgs;->mCodeFile:Ljava/io/File;

    .line 755
    :cond_0
    return-void
.end method

.method public setError(ILjava/lang/String;)V
    .locals 1
    .param p1, "code"    # I
    .param p2, "msg"    # Ljava/lang/String;

    .line 758
    invoke-virtual {p0, p1}, Lcom/android/server/pm/InstallRequest;->setReturnCode(I)V

    .line 759
    invoke-virtual {p0, p2}, Lcom/android/server/pm/InstallRequest;->setReturnMessage(Ljava/lang/String;)V

    .line 760
    const-string v0, "PackageManager"

    invoke-static {v0, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 761
    iget-object v0, p0, Lcom/android/server/pm/InstallRequest;->mPackageMetrics:Lcom/android/server/pm/PackageMetrics;

    if-eqz v0, :cond_0

    .line 762
    iget-object v0, p0, Lcom/android/server/pm/InstallRequest;->mPackageMetrics:Lcom/android/server/pm/PackageMetrics;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageMetrics;->onInstallFailed()V

    .line 764
    :cond_0
    return-void
.end method

.method public setError(Lcom/android/server/pm/PackageManagerException;)V
    .locals 1
    .param p1, "e"    # Lcom/android/server/pm/PackageManagerException;

    .line 767
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/android/server/pm/InstallRequest;->setError(Ljava/lang/String;Lcom/android/server/pm/PackageManagerException;)V

    .line 768
    return-void
.end method

.method public setError(Ljava/lang/String;Lcom/android/server/pm/PackageManagerException;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "e"    # Lcom/android/server/pm/PackageManagerException;

    .line 771
    iget v0, p2, Lcom/android/server/pm/PackageManagerException;->internalErrorCode:I

    iput v0, p0, Lcom/android/server/pm/InstallRequest;->mInternalErrorCode:I

    .line 772
    iget v0, p2, Lcom/android/server/pm/PackageManagerException;->error:I

    iput v0, p0, Lcom/android/server/pm/InstallRequest;->mReturnCode:I

    .line 773
    invoke-static {p1, p2}, Landroid/util/ExceptionUtils;->getCompleteMessage(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/pm/InstallRequest;->setReturnMessage(Ljava/lang/String;)V

    .line 774
    const-string v0, "PackageManager"

    invoke-static {v0, p1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 775
    iget-object v0, p0, Lcom/android/server/pm/InstallRequest;->mPackageMetrics:Lcom/android/server/pm/PackageMetrics;

    if-eqz v0, :cond_0

    .line 776
    iget-object v0, p0, Lcom/android/server/pm/InstallRequest;->mPackageMetrics:Lcom/android/server/pm/PackageMetrics;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageMetrics;->onInstallFailed()V

    .line 778
    :cond_0
    return-void
.end method

.method public setFreezer(Lcom/android/server/pm/PackageFreezer;)V
    .locals 0
    .param p1, "freezer"    # Lcom/android/server/pm/PackageFreezer;

    .line 831
    iput-object p1, p0, Lcom/android/server/pm/InstallRequest;->mFreezer:Lcom/android/server/pm/PackageFreezer;

    .line 832
    return-void
.end method

.method setKeepArtProfile(Z)V
    .locals 0
    .param p1, "keepArtProfile"    # Z

    .line 1087
    iput-boolean p1, p0, Lcom/android/server/pm/InstallRequest;->mKeepArtProfile:Z

    .line 1088
    return-void
.end method

.method public setLibraryConsumers(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/pm/pkg/AndroidPackage;",
            ">;)V"
        }
    .end annotation

    .line 839
    .local p1, "libraryConsumers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/pm/pkg/AndroidPackage;>;"
    iput-object p1, p0, Lcom/android/server/pm/InstallRequest;->mLibraryConsumers:Ljava/util/ArrayList;

    .line 840
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;

    .line 823
    iput-object p1, p0, Lcom/android/server/pm/InstallRequest;->mName:Ljava/lang/String;

    .line 824
    return-void
.end method

.method public setNewUsers([I)V
    .locals 0
    .param p1, "newUsers"    # [I

    .line 810
    iput-object p1, p0, Lcom/android/server/pm/InstallRequest;->mNewUsers:[I

    .line 811
    invoke-direct {p0}, Lcom/android/server/pm/InstallRequest;->populateBroadcastUsers()V

    .line 812
    return-void
.end method

.method public setOriginPackage(Ljava/lang/String;)V
    .locals 0
    .param p1, "originPackage"    # Ljava/lang/String;

    .line 815
    iput-object p1, p0, Lcom/android/server/pm/InstallRequest;->mOrigPackage:Ljava/lang/String;

    .line 816
    return-void
.end method

.method public setOriginPermission(Ljava/lang/String;)V
    .locals 0
    .param p1, "originPermission"    # Ljava/lang/String;

    .line 819
    iput-object p1, p0, Lcom/android/server/pm/InstallRequest;->mOrigPermission:Ljava/lang/String;

    .line 820
    return-void
.end method

.method public setOriginUsers([I)V
    .locals 0
    .param p1, "userIds"    # [I

    .line 827
    iput-object p1, p0, Lcom/android/server/pm/InstallRequest;->mOrigUsers:[I

    .line 828
    return-void
.end method

.method public setPkg(Lcom/android/server/pm/pkg/AndroidPackage;)V
    .locals 0
    .param p1, "pkg"    # Lcom/android/server/pm/pkg/AndroidPackage;

    .line 802
    iput-object p1, p0, Lcom/android/server/pm/InstallRequest;->mPkg:Lcom/android/server/pm/pkg/AndroidPackage;

    .line 803
    return-void
.end method

.method public setPostInstallRunnable(Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .line 738
    iput-object p1, p0, Lcom/android/server/pm/InstallRequest;->mPostInstallRunnable:Ljava/lang/Runnable;

    .line 739
    return-void
.end method

.method public setPrepareResult(ZIILcom/android/server/pm/pkg/PackageState;Lcom/android/internal/pm/parsing/pkg/ParsedPackage;Landroid/content/pm/ArchivedPackageParcel;ZZLcom/android/server/pm/PackageSetting;Lcom/android/server/pm/PackageSetting;)V
    .locals 1
    .param p1, "replace"    # Z
    .param p2, "scanFlags"    # I
    .param p3, "parseFlags"    # I
    .param p4, "existingPackageState"    # Lcom/android/server/pm/pkg/PackageState;
    .param p5, "packageToScan"    # Lcom/android/internal/pm/parsing/pkg/ParsedPackage;
    .param p6, "archivedPackage"    # Landroid/content/pm/ArchivedPackageParcel;
    .param p7, "clearCodeCache"    # Z
    .param p8, "system"    # Z
    .param p9, "originalPs"    # Lcom/android/server/pm/PackageSetting;
    .param p10, "disabledPs"    # Lcom/android/server/pm/PackageSetting;

    .line 847
    iput-boolean p1, p0, Lcom/android/server/pm/InstallRequest;->mReplace:Z

    .line 848
    iput p2, p0, Lcom/android/server/pm/InstallRequest;->mScanFlags:I

    .line 849
    iput p3, p0, Lcom/android/server/pm/InstallRequest;->mParseFlags:I

    .line 850
    nop

    .line 851
    if-eqz p4, :cond_0

    invoke-interface {p4}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/android/server/pm/InstallRequest;->mExistingPackageName:Ljava/lang/String;

    .line 852
    iput-object p5, p0, Lcom/android/server/pm/InstallRequest;->mParsedPackage:Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    .line 853
    iput-object p6, p0, Lcom/android/server/pm/InstallRequest;->mArchivedPackage:Landroid/content/pm/ArchivedPackageParcel;

    .line 854
    iput-boolean p7, p0, Lcom/android/server/pm/InstallRequest;->mClearCodeCache:Z

    .line 855
    iput-boolean p8, p0, Lcom/android/server/pm/InstallRequest;->mSystem:Z

    .line 856
    iput-object p9, p0, Lcom/android/server/pm/InstallRequest;->mOriginalPs:Lcom/android/server/pm/PackageSetting;

    .line 857
    iput-object p10, p0, Lcom/android/server/pm/InstallRequest;->mDisabledPs:Lcom/android/server/pm/PackageSetting;

    .line 858
    return-void
.end method

.method public setRemovedAppId(I)V
    .locals 2
    .param p1, "appId"    # I

    .line 892
    iget-object v0, p0, Lcom/android/server/pm/InstallRequest;->mRemovedInfo:Lcom/android/server/pm/PackageRemovedInfo;

    if-eqz v0, :cond_0

    .line 893
    iget-object v0, p0, Lcom/android/server/pm/InstallRequest;->mRemovedInfo:Lcom/android/server/pm/PackageRemovedInfo;

    iput p1, v0, Lcom/android/server/pm/PackageRemovedInfo;->mUid:I

    .line 894
    iget-object v0, p0, Lcom/android/server/pm/InstallRequest;->mRemovedInfo:Lcom/android/server/pm/PackageRemovedInfo;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/server/pm/PackageRemovedInfo;->mIsAppIdRemoved:Z

    .line 896
    :cond_0
    return-void
.end method

.method public setRemovedInfo(Lcom/android/server/pm/PackageRemovedInfo;)V
    .locals 0
    .param p1, "removedInfo"    # Lcom/android/server/pm/PackageRemovedInfo;

    .line 835
    iput-object p1, p0, Lcom/android/server/pm/InstallRequest;->mRemovedInfo:Lcom/android/server/pm/PackageRemovedInfo;

    .line 836
    return-void
.end method

.method public setResponsibleInstallerTitles(Landroid/util/SparseArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 798
    .local p1, "responsibleInstallerTitles":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/android/server/pm/InstallRequest;->mResponsibleInstallerTitles:Landroid/util/SparseArray;

    .line 799
    return-void
.end method

.method public setReturnCode(I)V
    .locals 0
    .param p1, "returnCode"    # I

    .line 781
    iput p1, p0, Lcom/android/server/pm/InstallRequest;->mReturnCode:I

    .line 782
    return-void
.end method

.method public setReturnMessage(Ljava/lang/String;)V
    .locals 0
    .param p1, "returnMsg"    # Ljava/lang/String;

    .line 785
    iput-object p1, p0, Lcom/android/server/pm/InstallRequest;->mReturnMsg:Ljava/lang/String;

    .line 786
    return-void
.end method

.method public setScanFlags(I)V
    .locals 0
    .param p1, "scanFlags"    # I

    .line 728
    iput p1, p0, Lcom/android/server/pm/InstallRequest;->mScanFlags:I

    .line 729
    return-void
.end method

.method public setScanResult(Lcom/android/server/pm/ScanResult;)V
    .locals 0
    .param p1, "scanResult"    # Lcom/android/server/pm/ScanResult;

    .line 861
    iput-object p1, p0, Lcom/android/server/pm/InstallRequest;->mScanResult:Lcom/android/server/pm/ScanResult;

    .line 862
    return-void
.end method

.method public setScannedPackageSettingAppId(I)V
    .locals 1
    .param p1, "appId"    # I

    .line 865
    invoke-virtual {p0}, Lcom/android/server/pm/InstallRequest;->assertScanResultExists()V

    .line 866
    iget-object v0, p0, Lcom/android/server/pm/InstallRequest;->mScanResult:Lcom/android/server/pm/ScanResult;

    iget-object v0, v0, Lcom/android/server/pm/ScanResult;->mPkgSetting:Lcom/android/server/pm/PackageSetting;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/PackageSetting;->setAppId(I)Lcom/android/server/pm/PackageSetting;

    .line 867
    return-void
.end method

.method public setScannedPackageSettingFirstInstallTime(J)V
    .locals 5
    .param p1, "firstInstallTime"    # J

    .line 884
    invoke-virtual {p0}, Lcom/android/server/pm/InstallRequest;->assertScanResultExists()V

    .line 885
    iget-object v0, p0, Lcom/android/server/pm/InstallRequest;->mScanResult:Lcom/android/server/pm/ScanResult;

    iget-object v0, v0, Lcom/android/server/pm/ScanResult;->mPkgSetting:Lcom/android/server/pm/PackageSetting;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageSetting;->getUserStates()Landroid/util/SparseArray;

    move-result-object v0

    iget v1, p0, Lcom/android/server/pm/InstallRequest;->mUserId:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/pkg/PackageUserStateInternal;

    .line 886
    .local v0, "userState":Lcom/android/server/pm/pkg/PackageUserStateInternal;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/server/pm/pkg/PackageUserState;->getFirstInstallTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    .line 887
    iget-object v1, p0, Lcom/android/server/pm/InstallRequest;->mScanResult:Lcom/android/server/pm/ScanResult;

    iget-object v1, v1, Lcom/android/server/pm/ScanResult;->mPkgSetting:Lcom/android/server/pm/PackageSetting;

    iget v2, p0, Lcom/android/server/pm/InstallRequest;->mUserId:I

    invoke-virtual {v1, p1, p2, v2}, Lcom/android/server/pm/PackageSetting;->setFirstInstallTime(JI)Lcom/android/server/pm/PackageSetting;

    .line 889
    :cond_0
    return-void
.end method

.method public setScannedPackageSettingFirstInstallTimeFromReplaced(Lcom/android/server/pm/pkg/PackageStateInternal;[I)V
    .locals 1
    .param p1, "replacedPkgSetting"    # Lcom/android/server/pm/pkg/PackageStateInternal;
    .param p2, "userId"    # [I

    .line 871
    invoke-virtual {p0}, Lcom/android/server/pm/InstallRequest;->assertScanResultExists()V

    .line 872
    if-nez p1, :cond_0

    .line 873
    return-void

    .line 875
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/InstallRequest;->mScanResult:Lcom/android/server/pm/ScanResult;

    iget-object v0, v0, Lcom/android/server/pm/ScanResult;->mPkgSetting:Lcom/android/server/pm/PackageSetting;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/pm/PackageSetting;->setFirstInstallTimeFromReplaced(Lcom/android/server/pm/pkg/PackageStateInternal;[I)Lcom/android/server/pm/PackageSetting;

    .line 876
    return-void
.end method

.method public setScannedPackageSettingLastUpdateTime(J)V
    .locals 1
    .param p1, "lastUpdateTim"    # J

    .line 879
    invoke-virtual {p0}, Lcom/android/server/pm/InstallRequest;->assertScanResultExists()V

    .line 880
    iget-object v0, p0, Lcom/android/server/pm/InstallRequest;->mScanResult:Lcom/android/server/pm/ScanResult;

    iget-object v0, v0, Lcom/android/server/pm/ScanResult;->mPkgSetting:Lcom/android/server/pm/PackageSetting;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/pm/PackageSetting;->setLastUpdateTime(J)Lcom/android/server/pm/PackageSetting;

    .line 881
    return-void
.end method

.method public updateAllCodePaths(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 628
    .local p1, "paths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/server/pm/InstallRequest;->mScanResult:Lcom/android/server/pm/ScanResult;

    iget-object v0, v0, Lcom/android/server/pm/ScanResult;->mSdkSharedLibraryInfo:Landroid/content/pm/SharedLibraryInfo;

    if-eqz v0, :cond_0

    .line 629
    iget-object v0, p0, Lcom/android/server/pm/InstallRequest;->mScanResult:Lcom/android/server/pm/ScanResult;

    iget-object v0, v0, Lcom/android/server/pm/ScanResult;->mSdkSharedLibraryInfo:Landroid/content/pm/SharedLibraryInfo;

    invoke-virtual {v0, p1}, Landroid/content/pm/SharedLibraryInfo;->setAllCodePaths(Ljava/util/List;)V

    .line 631
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/InstallRequest;->mScanResult:Lcom/android/server/pm/ScanResult;

    iget-object v0, v0, Lcom/android/server/pm/ScanResult;->mStaticSharedLibraryInfo:Landroid/content/pm/SharedLibraryInfo;

    if-eqz v0, :cond_1

    .line 632
    iget-object v0, p0, Lcom/android/server/pm/InstallRequest;->mScanResult:Lcom/android/server/pm/ScanResult;

    iget-object v0, v0, Lcom/android/server/pm/ScanResult;->mStaticSharedLibraryInfo:Landroid/content/pm/SharedLibraryInfo;

    invoke-virtual {v0, p1}, Landroid/content/pm/SharedLibraryInfo;->setAllCodePaths(Ljava/util/List;)V

    .line 634
    :cond_1
    iget-object v0, p0, Lcom/android/server/pm/InstallRequest;->mScanResult:Lcom/android/server/pm/ScanResult;

    iget-object v0, v0, Lcom/android/server/pm/ScanResult;->mDynamicSharedLibraryInfos:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 635
    iget-object v0, p0, Lcom/android/server/pm/InstallRequest;->mScanResult:Lcom/android/server/pm/ScanResult;

    iget-object v0, v0, Lcom/android/server/pm/ScanResult;->mDynamicSharedLibraryInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    nop

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/SharedLibraryInfo;

    .line 636
    .local v1, "info":Landroid/content/pm/SharedLibraryInfo;
    invoke-virtual {v1, p1}, Landroid/content/pm/SharedLibraryInfo;->setAllCodePaths(Ljava/util/List;)V

    .line 637
    .end local v1    # "info":Landroid/content/pm/SharedLibraryInfo;
    goto :goto_0

    .line 639
    :cond_2
    return-void
.end method
