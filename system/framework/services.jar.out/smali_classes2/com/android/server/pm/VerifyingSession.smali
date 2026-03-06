.class final Lcom/android/server/pm/VerifyingSession;
.super Ljava/lang/Object;
.source "VerifyingSession.java"


# static fields
.field private static final DEFAULT_ENABLE_ROLLBACK_TIMEOUT_MILLIS:J = 0x2710L

.field private static final DEFAULT_INTEGRITY_VERIFICATION_TIMEOUT:J = 0x7530L

.field private static final DEFAULT_VERIFY_ENABLE:Z = true

.field private static final PROPERTY_ENABLE_ROLLBACK_TIMEOUT_MILLIS:Ljava/lang/String; = "enable_rollback_timeout"


# instance fields
.field private final mDataLoaderType:I

.field private mErrorMessage:Ljava/lang/String;

.field private final mInstallFlags:I

.field private final mInstallReason:I

.field private final mInstallSource:Lcom/android/server/pm/InstallSource;

.field private final mIsInherit:Z

.field private final mIsStaged:Z

.field final mObserver:Landroid/content/pm/IPackageInstallObserver2;

.field final mOriginInfo:Lcom/android/server/pm/OriginInfo;

.field private final mPackageAbiOverride:Ljava/lang/String;

.field private final mPackageLite:Landroid/content/pm/parsing/PackageLite;

.field mParentVerifyingSession:Lcom/android/server/pm/MultiPackageVerifyingSession;

.field private final mPm:Lcom/android/server/pm/PackageManagerService;

.field private final mRequiredInstalledVersionCode:J

.field private mRet:I

.field private final mSessionId:I

.field private final mSigningDetails:Landroid/content/pm/SigningDetails;

.field private final mUser:Landroid/os/UserHandle;

.field private final mUserActionRequired:Z

.field private final mUserActionRequiredType:I

.field private final mVerificationInfo:Lcom/android/server/pm/VerificationInfo;

.field private mWaitForEnableRollbackToComplete:Z

.field private mWaitForVerificationToComplete:Z


# direct methods
.method public static synthetic $r8$lambda$xNyXQ1No_dHYiE45ZanZzyDqER8(Lcom/android/server/pm/VerifyingSession;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/pm/VerifyingSession;->start()V

    return-void
.end method

.method constructor <init>(Landroid/os/UserHandle;Ljava/io/File;Landroid/content/pm/IPackageInstallObserver2;Landroid/content/pm/PackageInstaller$SessionParams;Lcom/android/server/pm/InstallSource;ILandroid/content/pm/SigningDetails;ILandroid/content/pm/parsing/PackageLite;ZLcom/android/server/pm/PackageManagerService;)V
    .locals 13
    .param p1, "user"    # Landroid/os/UserHandle;
    .param p2, "stagedDir"    # Ljava/io/File;
    .param p3, "observer"    # Landroid/content/pm/IPackageInstallObserver2;
    .param p4, "sessionParams"    # Landroid/content/pm/PackageInstaller$SessionParams;
    .param p5, "installSource"    # Lcom/android/server/pm/InstallSource;
    .param p6, "installerUid"    # I
    .param p7, "signingDetails"    # Landroid/content/pm/SigningDetails;
    .param p8, "sessionId"    # I
    .param p9, "lite"    # Landroid/content/pm/parsing/PackageLite;
    .param p10, "userActionRequired"    # Z
    .param p11, "pm"    # Lcom/android/server/pm/PackageManagerService;

    .line 135
    move-object/from16 v0, p4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/server/pm/VerifyingSession;->mRet:I

    .line 121
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/pm/VerifyingSession;->mErrorMessage:Ljava/lang/String;

    .line 136
    move-object/from16 v2, p11

    iput-object v2, p0, Lcom/android/server/pm/VerifyingSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 137
    iput-object p1, p0, Lcom/android/server/pm/VerifyingSession;->mUser:Landroid/os/UserHandle;

    .line 138
    invoke-static {p2}, Lcom/android/server/pm/OriginInfo;->fromStagedFile(Ljava/io/File;)Lcom/android/server/pm/OriginInfo;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/pm/VerifyingSession;->mOriginInfo:Lcom/android/server/pm/OriginInfo;

    .line 139
    move-object/from16 v3, p3

    iput-object v3, p0, Lcom/android/server/pm/VerifyingSession;->mObserver:Landroid/content/pm/IPackageInstallObserver2;

    .line 140
    iget v4, v0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    iput v4, p0, Lcom/android/server/pm/VerifyingSession;->mInstallFlags:I

    .line 141
    move-object/from16 v4, p5

    iput-object v4, p0, Lcom/android/server/pm/VerifyingSession;->mInstallSource:Lcom/android/server/pm/InstallSource;

    .line 142
    iget-object v5, v0, Landroid/content/pm/PackageInstaller$SessionParams;->abiOverride:Ljava/lang/String;

    iput-object v5, p0, Lcom/android/server/pm/VerifyingSession;->mPackageAbiOverride:Ljava/lang/String;

    .line 143
    new-instance v5, Lcom/android/server/pm/VerificationInfo;

    iget-object v6, v0, Landroid/content/pm/PackageInstaller$SessionParams;->originatingUri:Landroid/net/Uri;

    iget-object v7, v0, Landroid/content/pm/PackageInstaller$SessionParams;->referrerUri:Landroid/net/Uri;

    iget v8, v0, Landroid/content/pm/PackageInstaller$SessionParams;->originatingUid:I

    move/from16 v9, p6

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/android/server/pm/VerificationInfo;-><init>(Landroid/net/Uri;Landroid/net/Uri;II)V

    iput-object v5, p0, Lcom/android/server/pm/VerifyingSession;->mVerificationInfo:Lcom/android/server/pm/VerificationInfo;

    .line 149
    move-object/from16 v5, p7

    iput-object v5, p0, Lcom/android/server/pm/VerifyingSession;->mSigningDetails:Landroid/content/pm/SigningDetails;

    .line 150
    iget-wide v6, v0, Landroid/content/pm/PackageInstaller$SessionParams;->requiredInstalledVersionCode:J

    iput-wide v6, p0, Lcom/android/server/pm/VerifyingSession;->mRequiredInstalledVersionCode:J

    .line 151
    iget-object v6, v0, Landroid/content/pm/PackageInstaller$SessionParams;->dataLoaderParams:Landroid/content/pm/DataLoaderParams;

    const/4 v7, 0x0

    if-eqz v6, :cond_0

    .line 152
    iget-object v6, v0, Landroid/content/pm/PackageInstaller$SessionParams;->dataLoaderParams:Landroid/content/pm/DataLoaderParams;

    invoke-virtual {v6}, Landroid/content/pm/DataLoaderParams;->getType()I

    move-result v6

    goto :goto_0

    :cond_0
    move v6, v7

    :goto_0
    iput v6, p0, Lcom/android/server/pm/VerifyingSession;->mDataLoaderType:I

    .line 153
    move/from16 v6, p8

    iput v6, p0, Lcom/android/server/pm/VerifyingSession;->mSessionId:I

    .line 154
    move-object/from16 v8, p9

    iput-object v8, p0, Lcom/android/server/pm/VerifyingSession;->mPackageLite:Landroid/content/pm/parsing/PackageLite;

    .line 155
    move/from16 v10, p10

    iput-boolean v10, p0, Lcom/android/server/pm/VerifyingSession;->mUserActionRequired:Z

    .line 156
    iget v11, v0, Landroid/content/pm/PackageInstaller$SessionParams;->requireUserAction:I

    iput v11, p0, Lcom/android/server/pm/VerifyingSession;->mUserActionRequiredType:I

    .line 157
    iget v11, v0, Landroid/content/pm/PackageInstaller$SessionParams;->mode:I

    const/4 v12, 0x2

    if-ne v11, v12, :cond_1

    goto :goto_1

    :cond_1
    move v1, v7

    :goto_1
    iput-boolean v1, p0, Lcom/android/server/pm/VerifyingSession;->mIsInherit:Z

    .line 158
    iget-boolean v1, v0, Landroid/content/pm/PackageInstaller$SessionParams;->isStaged:Z

    iput-boolean v1, p0, Lcom/android/server/pm/VerifyingSession;->mIsStaged:Z

    .line 159
    iget v1, v0, Landroid/content/pm/PackageInstaller$SessionParams;->installReason:I

    iput v1, p0, Lcom/android/server/pm/VerifyingSession;->mInstallReason:I

    .line 160
    return-void
.end method

.method private isARollback()Z
    .locals 2

    .line 194
    iget v0, p0, Lcom/android/server/pm/VerifyingSession;->mInstallReason:I

    const/4 v1, 0x5

    nop

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/pm/VerifyingSession;->mInstallSource:Lcom/android/server/pm/InstallSource;

    iget-object v0, v0, Lcom/android/server/pm/InstallSource;->mInitiatingPackageName:Ljava/lang/String;

    .line 195
    const-string v1, "android"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 194
    :goto_0
    return v0
.end method

.method private isAdbVerificationEnabled(Landroid/content/pm/PackageInfoLite;IZ)Z
    .locals 5
    .param p1, "pkgInfoLite"    # Landroid/content/pm/PackageInfoLite;
    .param p2, "userId"    # I
    .param p3, "requestedDisableVerification"    # Z

    .line 563
    iget-object v0, p0, Lcom/android/server/pm/VerifyingSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    .line 564
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 563
    const-string/jumbo v1, "verifier_verify_adb_installs"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 567
    .local v0, "verifierIncludeAdb":Z
    :goto_0
    iget-object v3, p0, Lcom/android/server/pm/VerifyingSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    const-string v4, "ensure_verify_apps"

    invoke-virtual {v3, p2, v4}, Lcom/android/server/pm/PackageManagerService;->isUserRestricted(ILjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 568
    if-nez v0, :cond_1

    .line 569
    const-string v1, "PackageManager"

    const-string v3, "Force verification of ADB install because of user restriction."

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 571
    :cond_1
    return v2

    .line 575
    :cond_2
    if-nez v0, :cond_3

    .line 576
    return v1

    .line 580
    :cond_3
    if-eqz p3, :cond_5

    .line 581
    iget-object v1, p1, Landroid/content/pm/PackageInfoLite;->packageName:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/server/pm/VerifyingSession;->packageExists(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 583
    return v2

    .line 586
    :cond_4
    iget-boolean v1, p1, Landroid/content/pm/PackageInfoLite;->debuggable:Z

    xor-int/2addr v1, v2

    return v1

    .line 589
    :cond_5
    return v2
.end method

.method private isVerificationEnabled(Landroid/content/pm/PackageInfoLite;ILjava/util/List;)Z
    .locals 9
    .param p1, "pkgInfoLite"    # Landroid/content/pm/PackageInfoLite;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageInfoLite;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 603
    .local p3, "requiredVerifierPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/server/pm/VerifyingSession;->mVerificationInfo:Lcom/android/server/pm/VerificationInfo;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/VerifyingSession;->mVerificationInfo:Lcom/android/server/pm/VerificationInfo;

    iget v0, v0, Lcom/android/server/pm/VerificationInfo;->mInstallerUid:I

    .line 604
    .local v0, "installerUid":I
    :goto_0
    iget v1, p0, Lcom/android/server/pm/VerifyingSession;->mInstallFlags:I

    const/high16 v2, 0x80000

    and-int/2addr v1, v2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    move v1, v2

    goto :goto_1

    :cond_1
    move v1, v3

    .line 608
    .local v1, "requestedDisableVerification":Z
    :goto_1
    iget v4, p0, Lcom/android/server/pm/VerifyingSession;->mInstallFlags:I

    and-int/lit8 v4, v4, 0x20

    if-eqz v4, :cond_2

    .line 609
    invoke-direct {p0, p1, p2, v1}, Lcom/android/server/pm/VerifyingSession;->isAdbVerificationEnabled(Landroid/content/pm/PackageInfoLite;IZ)Z

    move-result v2

    return v2

    .line 610
    :cond_2
    if-eqz v1, :cond_3

    .line 612
    return v3

    .line 617
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/pm/VerifyingSession;->isInstant()Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/android/server/pm/VerifyingSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mInstantAppInstallerActivity:Landroid/content/pm/ActivityInfo;

    if-eqz v4, :cond_5

    .line 618
    iget-object v4, p0, Lcom/android/server/pm/VerifyingSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mInstantAppInstallerActivity:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 619
    .local v4, "installerPackage":Ljava/lang/String;
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    nop

    if-eqz v6, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 620
    .local v6, "requiredVerifierPackage":Ljava/lang/String;
    invoke-virtual {v4, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 622
    :try_start_0
    iget-object v7, p0, Lcom/android/server/pm/VerifyingSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v7, v7, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    const-class v8, Landroid/app/AppOpsManager;

    invoke-virtual {v7, v8}, Lcom/android/server/pm/PackageManagerServiceInjector;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/AppOpsManager;

    .line 623
    invoke-virtual {v7, v0, v6}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 627
    return v3

    .line 628
    :catch_0
    move-exception v7

    .line 631
    .end local v6    # "requiredVerifierPackage":Ljava/lang/String;
    :cond_4
    goto :goto_2

    .line 633
    .end local v4    # "installerPackage":Ljava/lang/String;
    :cond_5
    return v2
.end method

.method private static matchComponentForVerifier(Ljava/lang/String;Ljava/util/List;)Landroid/content/ComponentName;
    .locals 5
    .param p0, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)",
            "Landroid/content/ComponentName;"
        }
    .end annotation

    .line 671
    .local p1, "receivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v0, 0x0

    .line 673
    .local v0, "targetReceiver":Landroid/content/pm/ActivityInfo;
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    .line 674
    .local v1, "nr":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 675
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 676
    .local v3, "info":Landroid/content/pm/ResolveInfo;
    iget-object v4, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-nez v4, :cond_0

    .line 677
    goto :goto_1

    .line 680
    :cond_0
    iget-object v4, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 681
    iget-object v0, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 682
    goto :goto_2

    .line 674
    .end local v3    # "info":Landroid/content/pm/ResolveInfo;
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 686
    .end local v2    # "i":I
    :cond_2
    :goto_2
    if-nez v0, :cond_3

    .line 687
    const/4 v2, 0x0

    return-object v2

    .line 690
    :cond_3
    new-instance v2, Landroid/content/ComponentName;

    iget-object v3, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v4, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2
.end method

.method private matchVerifiers(Landroid/content/pm/PackageInfoLite;Ljava/util/List;Lcom/android/server/pm/PackageVerificationState;)Ljava/util/List;
    .locals 7
    .param p1, "pkgInfo"    # Landroid/content/pm/PackageInfoLite;
    .param p3, "verificationState"    # Lcom/android/server/pm/PackageVerificationState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageInfoLite;",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;",
            "Lcom/android/server/pm/PackageVerificationState;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    .line 638
    .local p2, "receivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    iget-object v0, p1, Landroid/content/pm/PackageInfoLite;->verifiers:[Landroid/content/pm/VerifierInfo;

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/content/pm/PackageInfoLite;->verifiers:[Landroid/content/pm/VerifierInfo;

    array-length v0, v0

    if-nez v0, :cond_1

    :cond_0
    goto :goto_2

    .line 642
    :cond_1
    iget-object v0, p1, Landroid/content/pm/PackageInfoLite;->verifiers:[Landroid/content/pm/VerifierInfo;

    array-length v0, v0

    .line 643
    .local v0, "n":I
    new-instance v1, Ljava/util/ArrayList;

    add-int/lit8 v2, v0, 0x1

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 644
    .local v1, "sufficientVerifiers":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_4

    .line 645
    iget-object v3, p1, Landroid/content/pm/PackageInfoLite;->verifiers:[Landroid/content/pm/VerifierInfo;

    aget-object v3, v3, v2

    .line 647
    .local v3, "verifierInfo":Landroid/content/pm/VerifierInfo;
    iget-object v4, v3, Landroid/content/pm/VerifierInfo;->packageName:Ljava/lang/String;

    invoke-static {v4, p2}, Lcom/android/server/pm/VerifyingSession;->matchComponentForVerifier(Ljava/lang/String;Ljava/util/List;)Landroid/content/ComponentName;

    move-result-object v4

    .line 649
    .local v4, "comp":Landroid/content/ComponentName;
    if-nez v4, :cond_2

    .line 650
    goto :goto_1

    .line 653
    :cond_2
    iget-object v5, p0, Lcom/android/server/pm/VerifyingSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v5, v3}, Lcom/android/server/pm/PackageManagerService;->getUidForVerifier(Landroid/content/pm/VerifierInfo;)I

    move-result v5

    .line 654
    .local v5, "verifierUid":I
    const/4 v6, -0x1

    if-ne v5, v6, :cond_3

    .line 655
    goto :goto_1

    .line 662
    :cond_3
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 663
    invoke-virtual {p3, v5}, Lcom/android/server/pm/PackageVerificationState;->addSufficientVerifier(I)V

    .line 644
    .end local v3    # "verifierInfo":Landroid/content/pm/VerifierInfo;
    .end local v4    # "comp":Landroid/content/ComponentName;
    .end local v5    # "verifierUid":I
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    nop

    .line 666
    .end local v2    # "i":I
    return-object v1

    .line 639
    .end local v0    # "n":I
    .end local v1    # "sufficientVerifiers":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    :goto_2
    const/4 v0, 0x0

    return-object v0
.end method

.method private packageExists(Ljava/lang/String;)Z
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .line 557
    iget-object v0, p0, Lcom/android/server/pm/VerifyingSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v0

    .line 558
    .local v0, "snapshot":Lcom/android/server/pm/Computer;
    invoke-interface {v0, p1}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private sendApkVerificationRequest(Landroid/content/pm/PackageInfoLite;)V
    .locals 3
    .param p1, "pkgLite"    # Landroid/content/pm/PackageInfoLite;

    .line 199
    iget-object v0, p0, Lcom/android/server/pm/VerifyingSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget v1, v0, Lcom/android/server/pm/PackageManagerService;->mPendingVerificationToken:I

    add-int/lit8 v2, v1, 0x1

    iput v2, v0, Lcom/android/server/pm/PackageManagerService;->mPendingVerificationToken:I

    .line 201
    .local v1, "verificationId":I
    new-instance v0, Lcom/android/server/pm/PackageVerificationState;

    invoke-direct {v0, p0}, Lcom/android/server/pm/PackageVerificationState;-><init>(Lcom/android/server/pm/VerifyingSession;)V

    .line 203
    .local v0, "verificationState":Lcom/android/server/pm/PackageVerificationState;
    iget-object v2, p0, Lcom/android/server/pm/VerifyingSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mPendingVerification:Landroid/util/SparseArray;

    invoke-virtual {v2, v1, v0}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 205
    invoke-direct {p0, v1, p1, v0}, Lcom/android/server/pm/VerifyingSession;->sendPackageVerificationRequest(ILandroid/content/pm/PackageInfoLite;Lcom/android/server/pm/PackageVerificationState;)V

    .line 209
    invoke-virtual {v0}, Lcom/android/server/pm/PackageVerificationState;->areAllVerificationsComplete()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 210
    iget-object v2, p0, Lcom/android/server/pm/VerifyingSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mPendingVerification:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 212
    :cond_0
    return-void
.end method

.method private sendPackageVerificationRequest(ILandroid/content/pm/PackageInfoLite;Lcom/android/server/pm/PackageVerificationState;)V
    .locals 47
    .param p1, "verificationId"    # I
    .param p2, "pkgLite"    # Landroid/content/pm/PackageInfoLite;
    .param p3, "verificationState"    # Lcom/android/server/pm/PackageVerificationState;

    .line 267
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    invoke-virtual {v0}, Lcom/android/server/pm/VerifyingSession;->getUser()Landroid/os/UserHandle;

    move-result-object v2

    .line 268
    .local v2, "verifierUser":Landroid/os/UserHandle;
    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    if-ne v2, v3, :cond_0

    .line 269
    iget-object v3, v0, Lcom/android/server/pm/VerifyingSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v3}, Lcom/android/server/pm/UserManagerService;->getCurrentUserId()I

    move-result v3

    invoke-static {v3}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v2

    .line 274
    :cond_0
    iget-boolean v3, v6, Landroid/content/pm/PackageInfoLite;->isSdkLibrary:Z

    if-eqz v3, :cond_1

    .line 275
    sget-object v2, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    move-object v10, v2

    goto :goto_0

    .line 274
    :cond_1
    move-object v10, v2

    .line 277
    .end local v2    # "verifierUser":Landroid/os/UserHandle;
    .local v10, "verifierUser":Landroid/os/UserHandle;
    :goto_0
    invoke-virtual {v10}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    .line 279
    .local v2, "verifierUserId":I
    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, v0, Lcom/android/server/pm/VerifyingSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mRequiredVerifierPackages:[Ljava/lang/String;

    .line 280
    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 281
    .local v3, "requiredVerifierPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v4, 0x0

    .line 285
    .local v4, "requiredVerifierPackagesOverridden":Z
    iget v5, v0, Lcom/android/server/pm/VerifyingSession;->mInstallFlags:I

    const/16 v8, 0x20

    and-int/2addr v5, v8

    if-eqz v5, :cond_4

    iget v5, v0, Lcom/android/server/pm/VerifyingSession;->mInstallFlags:I

    const/high16 v11, 0x80000

    and-int/2addr v5, v11

    if-nez v5, :cond_4

    .line 287
    const-string v5, "debug.pm.adb_verifier_override_packages"

    const-string v11, ""

    invoke-static {v5, v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 288
    .local v5, "property":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_4

    .line 289
    const-string v11, ";"

    invoke-virtual {v5, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 290
    .local v11, "verifierPackages":[Ljava/lang/String;
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 291
    .local v12, "adbVerifierOverridePackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    array-length v13, v11

    const/4 v14, 0x0

    :goto_1
    if-ge v14, v13, :cond_3

    aget-object v15, v11, v14

    .line 292
    .local v15, "verifierPackage":Ljava/lang/String;
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-nez v16, :cond_2

    invoke-direct {v0, v15}, Lcom/android/server/pm/VerifyingSession;->packageExists(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_2

    .line 293
    invoke-interface {v12, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 291
    .end local v15    # "verifierPackage":Ljava/lang/String;
    :cond_2
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 297
    :cond_3
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v13

    if-lez v13, :cond_4

    .line 299
    const/4 v13, 0x1

    .line 302
    .local v13, "requestedDisableVerification":Z
    invoke-direct {v0, v6, v2, v13}, Lcom/android/server/pm/VerifyingSession;->isAdbVerificationEnabled(Landroid/content/pm/PackageInfoLite;IZ)Z

    move-result v14

    if-nez v14, :cond_4

    .line 304
    move-object v3, v12

    .line 305
    const/4 v4, 0x1

    move/from16 v20, v4

    goto :goto_2

    .line 311
    .end local v5    # "property":Ljava/lang/String;
    .end local v11    # "verifierPackages":[Ljava/lang/String;
    .end local v12    # "adbVerifierOverridePackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v13    # "requestedDisableVerification":Z
    :cond_4
    move/from16 v20, v4

    .end local v4    # "requiredVerifierPackagesOverridden":Z
    .local v20, "requiredVerifierPackagesOverridden":Z
    :goto_2
    iget-object v4, v0, Lcom/android/server/pm/VerifyingSession;->mOriginInfo:Lcom/android/server/pm/OriginInfo;

    iget-boolean v4, v4, Lcom/android/server/pm/OriginInfo;->mExisting:Z

    if-nez v4, :cond_18

    invoke-direct {v0, v6, v2, v3}, Lcom/android/server/pm/VerifyingSession;->isVerificationEnabled(Landroid/content/pm/PackageInfoLite;ILjava/util/List;)Z

    move-result v4

    if-nez v4, :cond_5

    move/from16 v19, v2

    move-object/from16 v26, v3

    goto/16 :goto_10

    .line 321
    :cond_5
    iget-object v4, v0, Lcom/android/server/pm/VerifyingSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v4}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v12

    .line 323
    .local v12, "snapshot":Lcom/android/server/pm/Computer;
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v21

    .line 324
    .local v21, "numRequiredVerifierPackages":I
    add-int/lit8 v4, v21, -0x1

    .local v4, "i":I
    :goto_3
    const-string v5, "PackageManager"

    if-ltz v4, :cond_7

    .line 325
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-interface {v12, v11, v10}, Lcom/android/server/pm/Computer;->isApplicationEffectivelyEnabled(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v11

    if-nez v11, :cond_6

    .line 327
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Required verifier: "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 328
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, " is disabled"

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 327
    invoke-static {v5, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    invoke-interface {v3, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 324
    :cond_6
    add-int/lit8 v4, v4, -0x1

    goto :goto_3

    :cond_7
    nop

    .line 333
    .end local v4    # "i":I
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    const-wide/32 v13, 0x10000000

    if-eqz v11, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 334
    .local v11, "requiredVerifierPackage":Ljava/lang/String;
    invoke-interface {v12, v11, v13, v14, v2}, Lcom/android/server/pm/Computer;->getPackageUid(Ljava/lang/String;JI)I

    move-result v13

    .line 336
    .local v13, "requiredUid":I
    invoke-virtual {v7, v13}, Lcom/android/server/pm/PackageVerificationState;->addRequiredVerifierUid(I)V

    .line 337
    .end local v11    # "requiredVerifierPackage":Ljava/lang/String;
    .end local v13    # "requiredUid":I
    goto :goto_4

    .line 339
    :cond_8
    new-instance v4, Landroid/content/Intent;

    const-string v11, "android.intent.action.PACKAGE_NEEDS_VERIFICATION"

    invoke-direct {v4, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 340
    .local v4, "verification":Landroid/content/Intent;
    const/high16 v15, 0x10000000

    invoke-virtual {v4, v15}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 341
    new-instance v9, Ljava/io/File;

    iget-object v13, v0, Lcom/android/server/pm/VerifyingSession;->mOriginInfo:Lcom/android/server/pm/OriginInfo;

    iget-object v13, v13, Lcom/android/server/pm/OriginInfo;->mResolvedPath:Ljava/lang/String;

    invoke-direct {v9, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v9}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v9

    const-string v13, "application/vnd.android.package-archive"

    invoke-virtual {v4, v9, v13}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 343
    const/4 v9, 0x1

    invoke-virtual {v4, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 346
    move-object v14, v11

    iget-object v11, v0, Lcom/android/server/pm/VerifyingSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v19, v14

    const-string v14, "application/vnd.android.package-archive"

    move/from16 v17, v15

    const-wide/32 v22, 0x10000000

    const-wide/16 v15, 0x0

    move-object/from16 v26, v13

    move-object v13, v4

    move/from16 v4, v17

    move/from16 v17, v2

    move-object/from16 v2, v19

    .end local v2    # "verifierUserId":I
    .end local v4    # "verification":Landroid/content/Intent;
    .local v13, "verification":Landroid/content/Intent;
    .local v17, "verifierUserId":I
    invoke-virtual/range {v11 .. v17}, Lcom/android/server/pm/PackageManagerService;->queryIntentReceivers(Lcom/android/server/pm/Computer;Landroid/content/Intent;Ljava/lang/String;JI)Landroid/content/pm/ParceledListSlice;

    move-result-object v22

    .line 355
    move-object v11, v13

    move/from16 v16, v17

    .end local v13    # "verification":Landroid/content/Intent;
    .end local v17    # "verifierUserId":I
    .local v11, "verification":Landroid/content/Intent;
    .local v16, "verifierUserId":I
    .local v22, "receivers":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/content/pm/ResolveInfo;>;"
    const-string v13, "android.content.pm.extra.VERIFICATION_ID"

    invoke-virtual {v11, v13, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 357
    const-string v14, "android.content.pm.extra.VERIFICATION_INSTALL_FLAGS"

    iget v15, v0, Lcom/android/server/pm/VerifyingSession;->mInstallFlags:I

    invoke-virtual {v11, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 360
    const-string v14, "android.content.pm.extra.VERIFICATION_PACKAGE_NAME"

    iget-object v15, v6, Landroid/content/pm/PackageInfoLite;->packageName:Ljava/lang/String;

    invoke-virtual {v11, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 363
    const-string v14, "android.content.pm.extra.VERIFICATION_VERSION_CODE"

    iget v15, v6, Landroid/content/pm/PackageInfoLite;->versionCode:I

    invoke-virtual {v11, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 366
    nop

    .line 368
    invoke-virtual {v6}, Landroid/content/pm/PackageInfoLite;->getLongVersionCode()J

    move-result-wide v14

    .line 366
    const-string v8, "android.content.pm.extra.VERIFICATION_LONG_VERSION_CODE"

    invoke-virtual {v11, v8, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 370
    iget-object v8, v0, Lcom/android/server/pm/VerifyingSession;->mPackageLite:Landroid/content/pm/parsing/PackageLite;

    invoke-virtual {v8}, Landroid/content/pm/parsing/PackageLite;->getBaseApkPath()Ljava/lang/String;

    move-result-object v8

    .line 371
    .local v8, "baseCodePath":Ljava/lang/String;
    iget-object v14, v0, Lcom/android/server/pm/VerifyingSession;->mPackageLite:Landroid/content/pm/parsing/PackageLite;

    invoke-virtual {v14}, Landroid/content/pm/parsing/PackageLite;->getSplitApkPaths()[Ljava/lang/String;

    move-result-object v14

    .line 374
    .local v14, "splitCodePaths":[Ljava/lang/String;
    invoke-static {v8}, Landroid/os/incremental/IncrementalManager;->isIncrementalPath(Ljava/lang/String;)Z

    move-result v15

    const-string v4, "android.content.pm.extra.VERIFICATION_ROOT_HASH"

    if-eqz v15, :cond_9

    .line 375
    invoke-static {v8, v14}, Lcom/android/server/pm/PackageManagerServiceUtils;->buildVerificationRootHashString(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 377
    .local v15, "rootHashString":Ljava/lang/String;
    invoke-virtual {v11, v4, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_5

    .line 379
    .end local v15    # "rootHashString":Ljava/lang/String;
    :cond_9
    const/4 v15, 0x0

    .line 382
    .restart local v15    # "rootHashString":Ljava/lang/String;
    :goto_5
    iget v9, v0, Lcom/android/server/pm/VerifyingSession;->mDataLoaderType:I

    move-object/from16 v29, v8

    .end local v8    # "baseCodePath":Ljava/lang/String;
    .local v29, "baseCodePath":Ljava/lang/String;
    const-string v8, "android.content.pm.extra.DATA_LOADER_TYPE"

    invoke-virtual {v11, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 384
    iget v9, v0, Lcom/android/server/pm/VerifyingSession;->mSessionId:I

    const-string v1, "android.content.pm.extra.SESSION_ID"

    invoke-virtual {v11, v1, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 386
    const-string v9, "android.content.pm.extra.USER_ACTION_REQUIRED"

    move-object/from16 v17, v12

    .end local v12    # "snapshot":Lcom/android/server/pm/Computer;
    .local v17, "snapshot":Lcom/android/server/pm/Computer;
    iget-boolean v12, v0, Lcom/android/server/pm/VerifyingSession;->mUserActionRequired:Z

    invoke-virtual {v11, v9, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 388
    invoke-virtual {v0, v11}, Lcom/android/server/pm/VerifyingSession;->populateInstallerExtras(Landroid/content/Intent;)V

    .line 393
    iget v9, v0, Lcom/android/server/pm/VerifyingSession;->mDataLoaderType:I

    const/4 v12, 0x2

    nop

    if-ne v9, v12, :cond_a

    iget-object v9, v0, Lcom/android/server/pm/VerifyingSession;->mSigningDetails:Landroid/content/pm/SigningDetails;

    .line 394
    invoke-virtual {v9}, Landroid/content/pm/SigningDetails;->getSignatureSchemeVersion()I

    move-result v9

    const/4 v12, 0x4

    if-ne v9, v12, :cond_a

    .line 395
    invoke-virtual {v0}, Lcom/android/server/pm/VerifyingSession;->getDefaultVerificationResponse()I

    move-result v9

    const/4 v12, 0x1

    if-ne v9, v12, :cond_a

    const/4 v9, 0x1

    goto :goto_6

    :cond_a
    const/4 v9, 0x0

    :goto_6
    nop

    .line 397
    .local v9, "streaming":Z
    iget-object v12, v0, Lcom/android/server/pm/VerifyingSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v12, v12, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    invoke-static {v12, v9}, Lcom/android/server/pm/VerificationUtils;->getVerificationTimeout(Landroid/content/Context;Z)J

    move-result-wide v31

    .line 400
    .local v31, "verificationTimeout":J
    nop

    .line 401
    invoke-virtual/range {v22 .. v22}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v12

    .line 400
    invoke-direct {v0, v6, v12, v7}, Lcom/android/server/pm/VerifyingSession;->matchVerifiers(Landroid/content/pm/PackageInfoLite;Ljava/util/List;Lcom/android/server/pm/PackageVerificationState;)Ljava/util/List;

    move-result-object v12

    .line 404
    .local v12, "sufficientVerifiers":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    move/from16 v36, v9

    .end local v9    # "streaming":Z
    .local v36, "streaming":Z
    iget-boolean v9, v6, Landroid/content/pm/PackageInfoLite;->isSdkLibrary:Z

    if-eqz v9, :cond_c

    .line 405
    if-nez v12, :cond_b

    .line 406
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    move-object v12, v9

    .line 408
    :cond_b
    new-instance v9, Landroid/content/ComponentName;

    move-object/from16 v18, v11

    .end local v11    # "verification":Landroid/content/Intent;
    .local v18, "verification":Landroid/content/Intent;
    const-string v11, "android"

    move-object/from16 v19, v13

    const-string v13, "com.android.server.sdksandbox.SdkSandboxVerifierReceiver"

    invoke-direct {v9, v11, v13}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 410
    .local v9, "sdkSandboxComponentName":Landroid/content/ComponentName;
    invoke-interface {v12, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 413
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v11

    invoke-virtual {v7, v11}, Lcom/android/server/pm/PackageVerificationState;->addSufficientVerifier(I)V

    move-object v9, v12

    goto :goto_7

    .line 404
    .end local v9    # "sdkSandboxComponentName":Landroid/content/ComponentName;
    .end local v18    # "verification":Landroid/content/Intent;
    .restart local v11    # "verification":Landroid/content/Intent;
    :cond_c
    move-object/from16 v18, v11

    move-object/from16 v19, v13

    .end local v11    # "verification":Landroid/content/Intent;
    .restart local v18    # "verification":Landroid/content/Intent;
    move-object v9, v12

    .line 416
    .end local v12    # "sufficientVerifiers":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    .local v9, "sufficientVerifiers":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    :goto_7
    iget-object v11, v0, Lcom/android/server/pm/VerifyingSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v11, v11, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    const-class v12, Lcom/android/server/DeviceIdleInternal;

    .line 417
    invoke-virtual {v11, v12}, Lcom/android/server/pm/PackageManagerServiceInjector;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/DeviceIdleInternal;

    .line 418
    .local v11, "idleController":Lcom/android/server/DeviceIdleInternal;
    invoke-static {}, Landroid/app/BroadcastOptions;->makeBasic()Landroid/app/BroadcastOptions;

    move-result-object v30

    .line 419
    .local v30, "options":Landroid/app/BroadcastOptions;
    const/16 v34, 0x131

    const-string v35, ""

    const/16 v33, 0x0

    invoke-virtual/range {v30 .. v35}, Landroid/app/BroadcastOptions;->setTemporaryAppAllowlist(JIILjava/lang/String;)V

    .line 427
    if-eqz v9, :cond_f

    .line 428
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v12

    .line 429
    .local v12, "n":I
    if-nez v12, :cond_d

    .line 430
    const-string v13, "Additional verifiers required, but none installed."

    .line 431
    .local v13, "errorMsg":Ljava/lang/String;
    invoke-static {v5, v13}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    const/16 v7, -0x16

    invoke-virtual {v0, v7, v13}, Lcom/android/server/pm/VerifyingSession;->setReturnCode(ILjava/lang/String;)V

    .line 433
    .end local v13    # "errorMsg":Ljava/lang/String;
    move-object/from16 v33, v4

    move-object/from16 v35, v15

    move-object/from16 v7, v17

    move-object/from16 v40, v19

    move-object/from16 v17, v11

    move/from16 v11, v16

    move-wide/from16 v45, v31

    move-object/from16 v31, v9

    move-object/from16 v32, v14

    move-object/from16 v9, v18

    move-wide/from16 v18, v45

    goto/16 :goto_9

    .line 434
    :cond_d
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_8
    if-ge v7, v12, :cond_e

    .line 435
    invoke-interface {v9, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/content/ComponentName;

    .line 436
    .local v13, "verifierComponent":Landroid/content/ComponentName;
    move/from16 v33, v12

    .end local v12    # "n":I
    .local v33, "n":I
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v12

    .line 437
    move-object/from16 v34, v13

    .end local v13    # "verifierComponent":Landroid/content/ComponentName;
    .local v34, "verifierComponent":Landroid/content/ComponentName;
    invoke-virtual/range {v34 .. v34}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v13

    .line 436
    move-object/from16 v35, v17

    .end local v17    # "snapshot":Lcom/android/server/pm/Computer;
    .local v35, "snapshot":Lcom/android/server/pm/Computer;
    const/16 v17, 0x0

    move-object/from16 v37, v18

    .end local v18    # "verification":Landroid/content/Intent;
    .local v37, "verification":Landroid/content/Intent;
    const/16 v18, 0x131

    move-object/from16 v38, v19

    const-string/jumbo v19, "package verifier"

    move/from16 v39, v33

    move-object/from16 v33, v4

    move-object/from16 v4, v34

    move/from16 v34, v39

    move/from16 v39, v7

    move-object/from16 v7, v35

    move-object/from16 v40, v38

    move-object/from16 v35, v15

    move-wide/from16 v45, v31

    move-object/from16 v31, v9

    move-object/from16 v32, v14

    move-wide/from16 v14, v45

    move-object/from16 v9, v37

    .end local v15    # "rootHashString":Ljava/lang/String;
    .end local v33    # "n":I
    .end local v37    # "verification":Landroid/content/Intent;
    .local v4, "verifierComponent":Landroid/content/ComponentName;
    .local v7, "snapshot":Lcom/android/server/pm/Computer;
    .local v9, "verification":Landroid/content/Intent;
    .local v14, "verificationTimeout":J
    .local v31, "sufficientVerifiers":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    .local v32, "splitCodePaths":[Ljava/lang/String;
    .local v34, "n":I
    .local v35, "rootHashString":Ljava/lang/String;
    .local v39, "i":I
    invoke-interface/range {v11 .. v19}, Lcom/android/server/DeviceIdleInternal;->addPowerSaveTempWhitelistApp(ILjava/lang/String;JIZILjava/lang/String;)V

    .line 441
    move-object v12, v11

    move/from16 v11, v16

    .end local v16    # "verifierUserId":I
    .local v11, "verifierUserId":I
    .local v12, "idleController":Lcom/android/server/DeviceIdleInternal;
    new-instance v13, Landroid/content/Intent;

    invoke-direct {v13, v9}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 442
    .local v13, "sufficientIntent":Landroid/content/Intent;
    invoke-virtual {v13, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 443
    move-object/from16 v16, v4

    .end local v4    # "verifierComponent":Landroid/content/ComponentName;
    .local v16, "verifierComponent":Landroid/content/ComponentName;
    iget-object v4, v0, Lcom/android/server/pm/VerifyingSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    .line 445
    move-object/from16 v17, v12

    .end local v12    # "idleController":Lcom/android/server/DeviceIdleInternal;
    .local v17, "idleController":Lcom/android/server/DeviceIdleInternal;
    invoke-virtual/range {v30 .. v30}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v12

    .line 443
    move-wide/from16 v18, v14

    .end local v14    # "verificationTimeout":J
    .local v18, "verificationTimeout":J
    const/4 v14, 0x0

    invoke-virtual {v4, v13, v10, v14, v12}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 434
    .end local v13    # "sufficientIntent":Landroid/content/Intent;
    .end local v16    # "verifierComponent":Landroid/content/ComponentName;
    add-int/lit8 v4, v39, 0x1

    move/from16 v16, v11

    move-object/from16 v11, v17

    move-object/from16 v14, v32

    move/from16 v12, v34

    move-object/from16 v15, v35

    move-object/from16 v17, v7

    move v7, v4

    move-object/from16 v4, v33

    move-wide/from16 v45, v18

    move-object/from16 v18, v9

    move-object/from16 v9, v31

    move-object/from16 v19, v40

    move-wide/from16 v31, v45

    .end local v39    # "i":I
    .local v4, "i":I
    goto :goto_8

    .end local v4    # "i":I
    .end local v32    # "splitCodePaths":[Ljava/lang/String;
    .end local v34    # "n":I
    .end local v35    # "rootHashString":Ljava/lang/String;
    .local v7, "i":I
    .local v9, "sufficientVerifiers":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    .local v11, "idleController":Lcom/android/server/DeviceIdleInternal;
    .local v12, "n":I
    .local v14, "splitCodePaths":[Ljava/lang/String;
    .restart local v15    # "rootHashString":Ljava/lang/String;
    .local v16, "verifierUserId":I
    .local v17, "snapshot":Lcom/android/server/pm/Computer;
    .local v18, "verification":Landroid/content/Intent;
    .local v31, "verificationTimeout":J
    :cond_e
    move-object/from16 v33, v4

    move/from16 v39, v7

    move/from16 v34, v12

    move-object/from16 v35, v15

    move-object/from16 v7, v17

    move-object/from16 v40, v19

    move-object/from16 v17, v11

    move/from16 v11, v16

    move-wide/from16 v45, v31

    move-object/from16 v31, v9

    move-object/from16 v32, v14

    move-object/from16 v9, v18

    move-wide/from16 v18, v45

    .end local v12    # "n":I
    .end local v14    # "splitCodePaths":[Ljava/lang/String;
    .end local v15    # "rootHashString":Ljava/lang/String;
    .end local v16    # "verifierUserId":I
    .local v7, "snapshot":Lcom/android/server/pm/Computer;
    .local v9, "verification":Landroid/content/Intent;
    .local v11, "verifierUserId":I
    .local v17, "idleController":Lcom/android/server/DeviceIdleInternal;
    .local v18, "verificationTimeout":J
    .local v31, "sufficientVerifiers":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    .restart local v32    # "splitCodePaths":[Ljava/lang/String;
    .restart local v34    # "n":I
    .restart local v35    # "rootHashString":Ljava/lang/String;
    .restart local v39    # "i":I
    goto :goto_9

    .line 427
    .end local v7    # "snapshot":Lcom/android/server/pm/Computer;
    .end local v32    # "splitCodePaths":[Ljava/lang/String;
    .end local v34    # "n":I
    .end local v35    # "rootHashString":Ljava/lang/String;
    .end local v39    # "i":I
    .local v9, "sufficientVerifiers":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    .local v11, "idleController":Lcom/android/server/DeviceIdleInternal;
    .restart local v14    # "splitCodePaths":[Ljava/lang/String;
    .restart local v15    # "rootHashString":Ljava/lang/String;
    .restart local v16    # "verifierUserId":I
    .local v17, "snapshot":Lcom/android/server/pm/Computer;
    .local v18, "verification":Landroid/content/Intent;
    .local v31, "verificationTimeout":J
    :cond_f
    move-object/from16 v33, v4

    move-object/from16 v35, v15

    move-object/from16 v7, v17

    move-object/from16 v40, v19

    move-object/from16 v17, v11

    move/from16 v11, v16

    move-wide/from16 v45, v31

    move-object/from16 v31, v9

    move-object/from16 v32, v14

    move-object/from16 v9, v18

    move-wide/from16 v18, v45

    .line 450
    .end local v14    # "splitCodePaths":[Ljava/lang/String;
    .end local v15    # "rootHashString":Ljava/lang/String;
    .end local v16    # "verifierUserId":I
    .restart local v7    # "snapshot":Lcom/android/server/pm/Computer;
    .local v9, "verification":Landroid/content/Intent;
    .local v11, "verifierUserId":I
    .local v17, "idleController":Lcom/android/server/DeviceIdleInternal;
    .local v18, "verificationTimeout":J
    .local v31, "sufficientVerifiers":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    .restart local v32    # "splitCodePaths":[Ljava/lang/String;
    .restart local v35    # "rootHashString":Ljava/lang/String;
    :goto_9
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_10

    .line 451
    const-string v1, "No required verifiers"

    invoke-static {v5, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    return-void

    .line 458
    :cond_10
    iget-object v4, v6, Landroid/content/pm/PackageInfoLite;->packageName:Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 460
    const/4 v4, 0x2

    .local v4, "verificationCodeAtTimeout":I
    goto :goto_a

    .line 461
    .end local v4    # "verificationCodeAtTimeout":I
    :cond_11
    invoke-virtual {v0}, Lcom/android/server/pm/VerifyingSession;->getDefaultVerificationResponse()I

    move-result v4

    const/4 v12, 0x1

    if-ne v4, v12, :cond_12

    .line 462
    const/4 v4, 0x2

    .restart local v4    # "verificationCodeAtTimeout":I
    goto :goto_a

    .line 464
    .end local v4    # "verificationCodeAtTimeout":I
    :cond_12
    const/4 v4, -0x1

    .line 467
    .restart local v4    # "verificationCodeAtTimeout":I
    :goto_a
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v34

    :goto_b
    invoke-interface/range {v34 .. v34}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_17

    invoke-interface/range {v34 .. v34}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v13, v5

    check-cast v13, Ljava/lang/String;

    .line 468
    .local v13, "requiredVerifierPackage":Ljava/lang/String;
    const-wide/32 v14, 0x10000000

    invoke-interface {v7, v13, v14, v15, v11}, Lcom/android/server/pm/Computer;->getPackageUid(Ljava/lang/String;JI)I

    move-result v5

    .line 473
    .local v5, "requiredUid":I
    if-eqz v20, :cond_15

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v12

    const/4 v6, 0x1

    if-ne v12, v6, :cond_13

    move/from16 v0, p1

    move-object/from16 v14, v26

    move-object/from16 v15, v35

    move-object/from16 v6, v40

    move-object/from16 v26, v1

    goto :goto_d

    .line 487
    :cond_13
    new-instance v12, Landroid/content/Intent;

    invoke-direct {v12, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 488
    .local v12, "requiredIntent":Landroid/content/Intent;
    invoke-virtual {v12, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 489
    const/high16 v6, 0x10000000

    invoke-virtual {v12, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 490
    const/16 v6, 0x20

    invoke-virtual {v12, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 491
    new-instance v6, Ljava/io/File;

    iget-object v14, v0, Lcom/android/server/pm/VerifyingSession;->mOriginInfo:Lcom/android/server/pm/OriginInfo;

    iget-object v14, v14, Lcom/android/server/pm/OriginInfo;->mResolvedPath:Ljava/lang/String;

    invoke-direct {v6, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v6}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v6

    move-object/from16 v14, v26

    invoke-virtual {v12, v6, v14}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 493
    iget v6, v0, Lcom/android/server/pm/VerifyingSession;->mSessionId:I

    invoke-virtual {v12, v1, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 494
    iget v6, v0, Lcom/android/server/pm/VerifyingSession;->mDataLoaderType:I

    invoke-virtual {v12, v8, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 495
    if-eqz v35, :cond_14

    .line 496
    move-object/from16 v6, v33

    move-object/from16 v15, v35

    .end local v35    # "rootHashString":Ljava/lang/String;
    .restart local v15    # "rootHashString":Ljava/lang/String;
    invoke-virtual {v12, v6, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_c

    .line 495
    .end local v15    # "rootHashString":Ljava/lang/String;
    .restart local v35    # "rootHashString":Ljava/lang/String;
    :cond_14
    move-object/from16 v6, v33

    move-object/from16 v15, v35

    .line 499
    .end local v35    # "rootHashString":Ljava/lang/String;
    .restart local v15    # "rootHashString":Ljava/lang/String;
    :goto_c
    invoke-virtual {v12, v13}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 501
    move/from16 v0, p1

    move-object/from16 v26, v1

    neg-int v1, v0

    move-object/from16 v33, v6

    move-object/from16 v6, v40

    invoke-virtual {v12, v6, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 503
    const/4 v1, 0x0

    move-object/from16 v35, v1

    move-object/from16 v37, v9

    move-object v9, v12

    .local v1, "receiverPermission":Ljava/lang/String;
    goto :goto_f

    .line 473
    .end local v1    # "receiverPermission":Ljava/lang/String;
    .end local v12    # "requiredIntent":Landroid/content/Intent;
    .end local v15    # "rootHashString":Ljava/lang/String;
    .restart local v35    # "rootHashString":Ljava/lang/String;
    :cond_15
    move/from16 v0, p1

    move-object/from16 v14, v26

    move-object/from16 v15, v35

    move-object/from16 v6, v40

    move-object/from16 v26, v1

    .line 475
    .end local v35    # "rootHashString":Ljava/lang/String;
    .restart local v15    # "rootHashString":Ljava/lang/String;
    :goto_d
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v9}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    move-object v12, v1

    .line 476
    .restart local v12    # "requiredIntent":Landroid/content/Intent;
    if-nez v20, :cond_16

    .line 477
    nop

    .line 478
    invoke-virtual/range {v22 .. v22}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v1

    .line 477
    invoke-static {v13, v1}, Lcom/android/server/pm/VerifyingSession;->matchComponentForVerifier(Ljava/lang/String;Ljava/util/List;)Landroid/content/ComponentName;

    move-result-object v1

    .line 479
    .local v1, "requiredVerifierComponent":Landroid/content/ComponentName;
    invoke-virtual {v12, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 480
    .end local v1    # "requiredVerifierComponent":Landroid/content/ComponentName;
    goto :goto_e

    .line 481
    :cond_16
    invoke-virtual {v12, v13}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 483
    :goto_e
    const-string v1, "android.permission.PACKAGE_VERIFICATION_AGENT"

    move-object/from16 v35, v1

    move-object/from16 v37, v9

    move-object v9, v12

    .line 506
    .end local v12    # "requiredIntent":Landroid/content/Intent;
    .local v9, "requiredIntent":Landroid/content/Intent;
    .local v35, "receiverPermission":Ljava/lang/String;
    .restart local v37    # "verification":Landroid/content/Intent;
    :goto_f
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v12

    move-object v1, v14

    move-object/from16 v16, v15

    move-wide/from16 v14, v18

    .end local v15    # "rootHashString":Ljava/lang/String;
    .end local v18    # "verificationTimeout":J
    .local v14, "verificationTimeout":J
    .local v16, "rootHashString":Ljava/lang/String;
    const/16 v18, 0x131

    const-string/jumbo v19, "package verifier"

    move-object/from16 v38, v16

    move/from16 v16, v11

    move-object/from16 v11, v17

    .end local v17    # "idleController":Lcom/android/server/DeviceIdleInternal;
    .local v11, "idleController":Lcom/android/server/DeviceIdleInternal;
    .local v16, "verifierUserId":I
    .local v38, "rootHashString":Ljava/lang/String;
    const/16 v17, 0x0

    move-object/from16 v24, v38

    move-object/from16 v38, v1

    move-object/from16 v1, v24

    const-wide/32 v24, 0x10000000

    .end local v38    # "rootHashString":Ljava/lang/String;
    .local v1, "rootHashString":Ljava/lang/String;
    invoke-interface/range {v11 .. v19}, Lcom/android/server/DeviceIdleInternal;->addPowerSaveTempWhitelistApp(ILjava/lang/String;JIZILjava/lang/String;)V

    .line 510
    move-object/from16 v39, v11

    move-object/from16 v40, v13

    move/from16 v19, v16

    .end local v11    # "idleController":Lcom/android/server/DeviceIdleInternal;
    .end local v13    # "requiredVerifierPackage":Ljava/lang/String;
    .end local v16    # "verifierUserId":I
    .local v19, "verifierUserId":I
    .local v39, "idleController":Lcom/android/server/DeviceIdleInternal;
    .local v40, "requiredVerifierPackage":Ljava/lang/String;
    new-instance v11, Lcom/android/server/pm/PackageVerificationResponse;

    invoke-direct {v11, v4, v5}, Lcom/android/server/pm/PackageVerificationResponse;-><init>(II)V

    .line 513
    .local v11, "response":Lcom/android/server/pm/PackageVerificationResponse;
    move-object/from16 v41, v1

    move-object/from16 v27, v2

    move/from16 v43, v4

    move/from16 v44, v5

    move-wide v4, v14

    move-object/from16 v42, v26

    move/from16 v2, v36

    move v1, v0

    move-object/from16 v26, v3

    move-object v3, v11

    move-object/from16 v36, v33

    const/high16 v33, 0x10000000

    move-object/from16 v0, p0

    .end local v1    # "rootHashString":Ljava/lang/String;
    .end local v5    # "requiredUid":I
    .end local v11    # "response":Lcom/android/server/pm/PackageVerificationResponse;
    .end local v14    # "verificationTimeout":J
    .end local v36    # "streaming":Z
    .local v2, "streaming":Z
    .local v3, "response":Lcom/android/server/pm/PackageVerificationResponse;
    .local v4, "verificationTimeout":J
    .local v26, "requiredVerifierPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v41, "rootHashString":Ljava/lang/String;
    .local v43, "verificationCodeAtTimeout":I
    .local v44, "requiredUid":I
    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/VerifyingSession;->startVerificationTimeoutCountdown(IZLcom/android/server/pm/PackageVerificationResponse;J)V

    .line 518
    iget-object v11, v0, Lcom/android/server/pm/VerifyingSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v11, v11, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    .line 519
    invoke-virtual/range {v30 .. v30}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v13

    .line 518
    const/4 v12, -0x1

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v23, v31

    move-object/from16 v31, v8

    move-object v8, v11

    move-object/from16 v11, v35

    move-object/from16 v35, v23

    move/from16 v28, v2

    const/4 v2, 0x1

    const/16 v23, 0x20

    .end local v2    # "streaming":Z
    .end local v31    # "sufficientVerifiers":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    .local v11, "receiverPermission":Ljava/lang/String;
    .local v28, "streaming":Z
    .local v35, "sufficientVerifiers":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    invoke-virtual/range {v8 .. v18}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;ILandroid/os/Bundle;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 521
    .end local v3    # "response":Lcom/android/server/pm/PackageVerificationResponse;
    .end local v9    # "requiredIntent":Landroid/content/Intent;
    .end local v11    # "receiverPermission":Ljava/lang/String;
    .end local v40    # "requiredVerifierPackage":Ljava/lang/String;
    .end local v44    # "requiredUid":I
    move-object/from16 v40, v6

    move/from16 v11, v19

    move-object/from16 v3, v26

    move-object/from16 v2, v27

    move-object/from16 v8, v31

    move-object/from16 v31, v35

    move-object/from16 v33, v36

    move-object/from16 v9, v37

    move-object/from16 v26, v38

    move-object/from16 v17, v39

    move-object/from16 v35, v41

    move-object/from16 v1, v42

    move-object/from16 v6, p2

    move-wide/from16 v18, v4

    move/from16 v36, v28

    move/from16 v4, v43

    goto/16 :goto_b

    .line 523
    .end local v19    # "verifierUserId":I
    .end local v26    # "requiredVerifierPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v28    # "streaming":Z
    .end local v37    # "verification":Landroid/content/Intent;
    .end local v39    # "idleController":Lcom/android/server/DeviceIdleInternal;
    .end local v41    # "rootHashString":Ljava/lang/String;
    .end local v43    # "verificationCodeAtTimeout":I
    .local v3, "requiredVerifierPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v4, "verificationCodeAtTimeout":I
    .local v9, "verification":Landroid/content/Intent;
    .local v11, "verifierUserId":I
    .restart local v17    # "idleController":Lcom/android/server/DeviceIdleInternal;
    .restart local v18    # "verificationTimeout":J
    .restart local v31    # "sufficientVerifiers":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    .local v35, "rootHashString":Ljava/lang/String;
    .restart local v36    # "streaming":Z
    :cond_17
    move/from16 v1, p1

    move-object/from16 v26, v3

    const/4 v2, 0x1

    .end local v3    # "requiredVerifierPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v26    # "requiredVerifierPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-wide/32 v8, 0x40000

    const-string/jumbo v3, "verification"

    invoke-static {v8, v9, v3, v1}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    .line 529
    iput-boolean v2, v0, Lcom/android/server/pm/VerifyingSession;->mWaitForVerificationToComplete:Z

    .line 530
    return-void

    .line 311
    .end local v4    # "verificationCodeAtTimeout":I
    .end local v7    # "snapshot":Lcom/android/server/pm/Computer;
    .end local v9    # "verification":Landroid/content/Intent;
    .end local v11    # "verifierUserId":I
    .end local v17    # "idleController":Lcom/android/server/DeviceIdleInternal;
    .end local v18    # "verificationTimeout":J
    .end local v21    # "numRequiredVerifierPackages":I
    .end local v22    # "receivers":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/content/pm/ResolveInfo;>;"
    .end local v26    # "requiredVerifierPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v29    # "baseCodePath":Ljava/lang/String;
    .end local v30    # "options":Landroid/app/BroadcastOptions;
    .end local v31    # "sufficientVerifiers":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    .end local v32    # "splitCodePaths":[Ljava/lang/String;
    .end local v35    # "rootHashString":Ljava/lang/String;
    .end local v36    # "streaming":Z
    .local v2, "verifierUserId":I
    .restart local v3    # "requiredVerifierPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_18
    move/from16 v19, v2

    move-object/from16 v26, v3

    .line 313
    .end local v2    # "verifierUserId":I
    .end local v3    # "requiredVerifierPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v19    # "verifierUserId":I
    .restart local v26    # "requiredVerifierPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_10
    invoke-virtual/range {p3 .. p3}, Lcom/android/server/pm/PackageVerificationState;->passRequiredVerification()V

    .line 314
    return-void
.end method

.method private sendVerificationCompleteNotification()V
    .locals 5

    .line 750
    iget-object v0, p0, Lcom/android/server/pm/VerifyingSession;->mParentVerifyingSession:Lcom/android/server/pm/MultiPackageVerifyingSession;

    if-eqz v0, :cond_0

    .line 751
    iget-object v0, p0, Lcom/android/server/pm/VerifyingSession;->mParentVerifyingSession:Lcom/android/server/pm/MultiPackageVerifyingSession;

    invoke-virtual {v0, p0}, Lcom/android/server/pm/MultiPackageVerifyingSession;->trySendVerificationCompleteNotification(Lcom/android/server/pm/VerifyingSession;)V

    goto :goto_0

    .line 754
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/VerifyingSession;->mObserver:Landroid/content/pm/IPackageInstallObserver2;

    iget v1, p0, Lcom/android/server/pm/VerifyingSession;->mRet:I

    iget-object v2, p0, Lcom/android/server/pm/VerifyingSession;->mErrorMessage:Ljava/lang/String;

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const/4 v4, 0x0

    invoke-interface {v0, v4, v1, v2, v3}, Landroid/content/pm/IPackageInstallObserver2;->onPackageInstalled(Ljava/lang/String;ILjava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 758
    goto :goto_0

    .line 756
    :catch_0
    move-exception v0

    .line 757
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "PackageManager"

    const-string v2, "Observer no longer exists."

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 760
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method private start()V
    .locals 4

    .line 764
    nop

    .line 765
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    .line 764
    const-wide/32 v1, 0x40000

    const-string/jumbo v3, "queueVerify"

    invoke-static {v1, v2, v3, v0}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    .line 766
    const-string/jumbo v0, "start"

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 767
    invoke-virtual {p0}, Lcom/android/server/pm/VerifyingSession;->handleStartVerify()V

    .line 768
    invoke-virtual {p0}, Lcom/android/server/pm/VerifyingSession;->handleReturnCode()V

    .line 769
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 770
    return-void
.end method

.method private startVerificationTimeoutCountdown(IZLcom/android/server/pm/PackageVerificationResponse;J)V
    .locals 2
    .param p1, "verificationId"    # I
    .param p2, "streaming"    # Z
    .param p3, "response"    # Lcom/android/server/pm/PackageVerificationResponse;
    .param p4, "verificationTimeout"    # J

    .line 534
    iget-object v0, p0, Lcom/android/server/pm/VerifyingSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 535
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 536
    iput p2, v0, Landroid/os/Message;->arg2:I

    .line 537
    iput-object p3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 538
    iget-object v1, p0, Lcom/android/server/pm/VerifyingSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0, p4, p5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 539
    return-void
.end method


# virtual methods
.method public getDataLoaderType()I
    .locals 1

    .line 798
    iget v0, p0, Lcom/android/server/pm/VerifyingSession;->mDataLoaderType:I

    return v0
.end method

.method getDefaultVerificationResponse()I
    .locals 3

    .line 547
    iget-object v0, p0, Lcom/android/server/pm/VerifyingSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mUserManager:Lcom/android/server/pm/UserManagerService;

    .line 548
    invoke-virtual {p0}, Lcom/android/server/pm/VerifyingSession;->getUser()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    .line 547
    const-string v2, "ensure_verify_apps"

    invoke-virtual {v0, v2, v1}, Lcom/android/server/pm/UserManagerService;->hasUserRestriction(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 549
    const/4 v0, -0x1

    return v0

    .line 551
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/VerifyingSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "verifier_default_response"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getErrorMessage()Ljava/lang/String;
    .locals 1

    .line 789
    iget-object v0, p0, Lcom/android/server/pm/VerifyingSession;->mErrorMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getInstallerPackageUid()I
    .locals 1

    .line 810
    iget-object v0, p0, Lcom/android/server/pm/VerifyingSession;->mInstallSource:Lcom/android/server/pm/InstallSource;

    iget v0, v0, Lcom/android/server/pm/InstallSource;->mInstallerPackageUid:I

    return v0
.end method

.method public getRet()I
    .locals 1

    .line 786
    iget v0, p0, Lcom/android/server/pm/VerifyingSession;->mRet:I

    return v0
.end method

.method public getSessionId()I
    .locals 1

    .line 795
    iget v0, p0, Lcom/android/server/pm/VerifyingSession;->mSessionId:I

    return v0
.end method

.method public getUser()Landroid/os/UserHandle;
    .locals 1

    .line 792
    iget-object v0, p0, Lcom/android/server/pm/VerifyingSession;->mUser:Landroid/os/UserHandle;

    return-object v0
.end method

.method public getUserActionRequiredType()I
    .locals 1

    .line 801
    iget v0, p0, Lcom/android/server/pm/VerifyingSession;->mUserActionRequiredType:I

    return v0
.end method

.method handleReturnCode()V
    .locals 2

    .line 739
    iget-boolean v0, p0, Lcom/android/server/pm/VerifyingSession;->mWaitForVerificationToComplete:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/pm/VerifyingSession;->mWaitForEnableRollbackToComplete:Z

    if-eqz v0, :cond_1

    :cond_0
    goto :goto_0

    .line 743
    :cond_1
    invoke-direct {p0}, Lcom/android/server/pm/VerifyingSession;->sendVerificationCompleteNotification()V

    .line 744
    iget v0, p0, Lcom/android/server/pm/VerifyingSession;->mRet:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    .line 745
    invoke-static {p0}, Lcom/android/server/pm/PackageMetrics;->onVerificationFailed(Lcom/android/server/pm/VerifyingSession;)V

    .line 747
    :cond_2
    return-void

    .line 741
    :goto_0
    return-void
.end method

.method handleRollbackEnabled()V
    .locals 1

    .line 734
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/pm/VerifyingSession;->mWaitForEnableRollbackToComplete:Z

    .line 735
    invoke-virtual {p0}, Lcom/android/server/pm/VerifyingSession;->handleReturnCode()V

    .line 736
    return-void
.end method

.method public handleStartVerify()V
    .locals 5

    .line 169
    iget-object v0, p0, Lcom/android/server/pm/VerifyingSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/pm/VerifyingSession;->mPackageLite:Landroid/content/pm/parsing/PackageLite;

    iget-object v2, p0, Lcom/android/server/pm/VerifyingSession;->mOriginInfo:Lcom/android/server/pm/OriginInfo;

    iget-object v2, v2, Lcom/android/server/pm/OriginInfo;->mResolvedPath:Ljava/lang/String;

    iget v3, p0, Lcom/android/server/pm/VerifyingSession;->mInstallFlags:I

    iget-object v4, p0, Lcom/android/server/pm/VerifyingSession;->mPackageAbiOverride:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/server/pm/PackageManagerServiceUtils;->getMinimalPackageInfo(Landroid/content/Context;Landroid/content/pm/parsing/PackageLite;Ljava/lang/String;ILjava/lang/String;)Landroid/content/pm/PackageInfoLite;

    move-result-object v0

    .line 172
    .local v0, "pkgLite":Landroid/content/pm/PackageInfoLite;
    iget-object v1, p0, Lcom/android/server/pm/VerifyingSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-wide v2, p0, Lcom/android/server/pm/VerifyingSession;->mRequiredInstalledVersionCode:J

    iget v4, p0, Lcom/android/server/pm/VerifyingSession;->mInstallFlags:I

    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/android/server/pm/PackageManagerService;->verifyReplacingVersionCode(Landroid/content/pm/PackageInfoLite;JI)Landroid/util/Pair;

    move-result-object v1

    .line 174
    .local v1, "ret":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;"
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/android/server/pm/VerifyingSession;->setReturnCode(ILjava/lang/String;)V

    .line 175
    iget v2, p0, Lcom/android/server/pm/VerifyingSession;->mRet:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    .line 176
    return-void

    .line 181
    :cond_0
    iget-object v2, p0, Lcom/android/server/pm/VerifyingSession;->mOriginInfo:Lcom/android/server/pm/OriginInfo;

    iget-boolean v2, v2, Lcom/android/server/pm/OriginInfo;->mExisting:Z

    if-nez v2, :cond_2

    .line 182
    invoke-direct {p0}, Lcom/android/server/pm/VerifyingSession;->isARollback()Z

    move-result v2

    xor-int/2addr v2, v3

    .line 183
    .local v2, "verifyForRollback":Z
    invoke-virtual {p0}, Lcom/android/server/pm/VerifyingSession;->isApex()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {p0}, Lcom/android/server/pm/VerifyingSession;->isArchivedInstallation()Z

    move-result v3

    if-nez v3, :cond_1

    if-eqz v2, :cond_1

    .line 185
    invoke-direct {p0, v0}, Lcom/android/server/pm/VerifyingSession;->sendApkVerificationRequest(Landroid/content/pm/PackageInfoLite;)V

    .line 187
    :cond_1
    iget v3, p0, Lcom/android/server/pm/VerifyingSession;->mInstallFlags:I

    const/high16 v4, 0x40000

    and-int/2addr v3, v4

    if-eqz v3, :cond_2

    .line 188
    invoke-virtual {p0}, Lcom/android/server/pm/VerifyingSession;->sendEnableRollbackRequest()V

    .line 191
    .end local v2    # "verifyForRollback":Z
    :cond_2
    return-void
.end method

.method handleVerificationFinished()V
    .locals 1

    .line 727
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/pm/VerifyingSession;->mWaitForVerificationToComplete:Z

    .line 728
    invoke-virtual {p0}, Lcom/android/server/pm/VerifyingSession;->handleReturnCode()V

    .line 729
    return-void
.end method

.method public isApex()Z
    .locals 2

    .line 813
    iget v0, p0, Lcom/android/server/pm/VerifyingSession;->mInstallFlags:I

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

.method public isArchivedInstallation()Z
    .locals 2

    .line 816
    iget v0, p0, Lcom/android/server/pm/VerifyingSession;->mInstallFlags:I

    const/high16 v1, 0x8000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isInherit()Z
    .locals 1

    .line 807
    iget-boolean v0, p0, Lcom/android/server/pm/VerifyingSession;->mIsInherit:Z

    return v0
.end method

.method public isInstant()Z
    .locals 1

    .line 804
    iget v0, p0, Lcom/android/server/pm/VerifyingSession;->mInstallFlags:I

    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isStaged()Z
    .locals 1

    .line 819
    iget-boolean v0, p0, Lcom/android/server/pm/VerifyingSession;->mIsStaged:Z

    return v0
.end method

.method populateInstallerExtras(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .line 694
    iget-object v0, p0, Lcom/android/server/pm/VerifyingSession;->mInstallSource:Lcom/android/server/pm/InstallSource;

    iget-object v0, v0, Lcom/android/server/pm/InstallSource;->mInitiatingPackageName:Ljava/lang/String;

    const-string v1, "android.content.pm.extra.VERIFICATION_INSTALLER_PACKAGE"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 697
    iget-object v0, p0, Lcom/android/server/pm/VerifyingSession;->mVerificationInfo:Lcom/android/server/pm/VerificationInfo;

    if-eqz v0, :cond_3

    .line 698
    iget-object v0, p0, Lcom/android/server/pm/VerifyingSession;->mVerificationInfo:Lcom/android/server/pm/VerificationInfo;

    iget-object v0, v0, Lcom/android/server/pm/VerificationInfo;->mOriginatingUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    .line 699
    iget-object v0, p0, Lcom/android/server/pm/VerifyingSession;->mVerificationInfo:Lcom/android/server/pm/VerificationInfo;

    iget-object v0, v0, Lcom/android/server/pm/VerificationInfo;->mOriginatingUri:Landroid/net/Uri;

    const-string v1, "android.intent.extra.ORIGINATING_URI"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 702
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/VerifyingSession;->mVerificationInfo:Lcom/android/server/pm/VerificationInfo;

    iget-object v0, v0, Lcom/android/server/pm/VerificationInfo;->mReferrer:Landroid/net/Uri;

    if-eqz v0, :cond_1

    .line 703
    iget-object v0, p0, Lcom/android/server/pm/VerifyingSession;->mVerificationInfo:Lcom/android/server/pm/VerificationInfo;

    iget-object v0, v0, Lcom/android/server/pm/VerificationInfo;->mReferrer:Landroid/net/Uri;

    const-string v1, "android.intent.extra.REFERRER"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 706
    :cond_1
    iget-object v0, p0, Lcom/android/server/pm/VerifyingSession;->mVerificationInfo:Lcom/android/server/pm/VerificationInfo;

    iget v0, v0, Lcom/android/server/pm/VerificationInfo;->mOriginatingUid:I

    if-ltz v0, :cond_2

    .line 707
    iget-object v0, p0, Lcom/android/server/pm/VerifyingSession;->mVerificationInfo:Lcom/android/server/pm/VerificationInfo;

    iget v0, v0, Lcom/android/server/pm/VerificationInfo;->mOriginatingUid:I

    const-string v1, "android.intent.extra.ORIGINATING_UID"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 710
    :cond_2
    iget-object v0, p0, Lcom/android/server/pm/VerifyingSession;->mVerificationInfo:Lcom/android/server/pm/VerificationInfo;

    iget v0, v0, Lcom/android/server/pm/VerificationInfo;->mInstallerUid:I

    if-ltz v0, :cond_3

    .line 711
    iget-object v0, p0, Lcom/android/server/pm/VerifyingSession;->mVerificationInfo:Lcom/android/server/pm/VerificationInfo;

    iget v0, v0, Lcom/android/server/pm/VerificationInfo;->mInstallerUid:I

    const-string v1, "android.content.pm.extra.VERIFICATION_INSTALLER_UID"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 715
    :cond_3
    return-void
.end method

.method sendEnableRollbackRequest()V
    .locals 6

    .line 215
    iget-object v0, p0, Lcom/android/server/pm/VerifyingSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget v1, v0, Lcom/android/server/pm/PackageManagerService;->mPendingEnableRollbackToken:I

    add-int/lit8 v2, v1, 0x1

    iput v2, v0, Lcom/android/server/pm/PackageManagerService;->mPendingEnableRollbackToken:I

    .line 216
    .local v1, "enableRollbackToken":I
    const-wide/32 v2, 0x40000

    const-string v0, "enable_rollback"

    invoke-static {v2, v3, v0, v1}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    .line 218
    iget-object v0, p0, Lcom/android/server/pm/VerifyingSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mPendingEnableRollback:Landroid/util/SparseArray;

    invoke-virtual {v0, v1, p0}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 220
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.PACKAGE_ENABLE_ROLLBACK"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 221
    .local v0, "enableRollbackIntent":Landroid/content/Intent;
    const-string v2, "android.content.pm.extra.ENABLE_ROLLBACK_TOKEN"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 224
    const-string v2, "android.content.pm.extra.ENABLE_ROLLBACK_SESSION_ID"

    iget v3, p0, Lcom/android/server/pm/VerifyingSession;->mSessionId:I

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 227
    const-string v2, "application/vnd.android.package-archive"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 228
    const v2, 0x10000001

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 236
    const/high16 v2, 0x4000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 238
    iget-object v2, p0, Lcom/android/server/pm/VerifyingSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    const-string v4, "android.permission.PACKAGE_ROLLBACK_AGENT"

    invoke-virtual {v2, v0, v3, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 241
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/pm/VerifyingSession;->mWaitForEnableRollbackToComplete:Z

    .line 244
    const-string v2, "enable_rollback_timeout"

    const-wide/16 v3, 0x2710

    const-string/jumbo v5, "rollback"

    invoke-static {v5, v2, v3, v4}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v2

    .line 248
    .local v2, "rollbackTimeout":J
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-gez v4, :cond_0

    .line 249
    const-wide/16 v2, 0x2710

    .line 251
    :cond_0
    iget-object v4, p0, Lcom/android/server/pm/VerifyingSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    const/16 v5, 0x16

    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    .line 252
    .local v4, "msg":Landroid/os/Message;
    iput v1, v4, Landroid/os/Message;->arg1:I

    .line 253
    iget v5, p0, Lcom/android/server/pm/VerifyingSession;->mSessionId:I

    iput v5, v4, Landroid/os/Message;->arg2:I

    .line 254
    iget-object v5, p0, Lcom/android/server/pm/VerifyingSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v5, v5, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v4, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 255
    return-void
.end method

.method setReturnCode(ILjava/lang/String;)V
    .locals 2
    .param p1, "ret"    # I
    .param p2, "message"    # Ljava/lang/String;

    .line 718
    iget v0, p0, Lcom/android/server/pm/VerifyingSession;->mRet:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 721
    iput p1, p0, Lcom/android/server/pm/VerifyingSession;->mRet:I

    .line 722
    iput-object p2, p0, Lcom/android/server/pm/VerifyingSession;->mErrorMessage:Ljava/lang/String;

    .line 724
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 164
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VerifyingSession{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " file="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/pm/VerifyingSession;->mOriginInfo:Lcom/android/server/pm/OriginInfo;

    iget-object v1, v1, Lcom/android/server/pm/OriginInfo;->mFile:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public verifyStage()V
    .locals 4

    .line 773
    nop

    .line 774
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    .line 773
    const-wide/32 v1, 0x40000

    const-string/jumbo v3, "queueVerify"

    invoke-static {v1, v2, v3, v0}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    .line 775
    iget-object v0, p0, Lcom/android/server/pm/VerifyingSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/pm/VerifyingSession$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/server/pm/VerifyingSession$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/pm/VerifyingSession;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 776
    return-void
.end method

.method public verifyStage(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/pm/VerifyingSession;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    .line 780
    .local p1, "children":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/VerifyingSession;>;"
    new-instance v0, Lcom/android/server/pm/MultiPackageVerifyingSession;

    invoke-direct {v0, p0, p1}, Lcom/android/server/pm/MultiPackageVerifyingSession;-><init>(Lcom/android/server/pm/VerifyingSession;Ljava/util/List;)V

    .line 782
    .local v0, "multiPackageVerifyingSession":Lcom/android/server/pm/MultiPackageVerifyingSession;
    iget-object v1, p0, Lcom/android/server/pm/VerifyingSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/pm/VerifyingSession$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0}, Lcom/android/server/pm/VerifyingSession$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/pm/MultiPackageVerifyingSession;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 783
    return-void
.end method
