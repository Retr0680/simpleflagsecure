.class final Lcom/android/server/pm/ScanPackageUtils;
.super Ljava/lang/Object;
.source "ScanPackageUtils.java"


# static fields
.field public static final PAGE_SIZE_16KB:I = 0x4000


# direct methods
.method constructor <init>()V
    .locals 0

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static adjustScanFlagsWithPackageSetting(ILcom/android/server/pm/PackageSetting;Lcom/android/server/pm/PackageSetting;Landroid/os/UserHandle;)I
    .locals 3
    .param p0, "scanFlags"    # I
    .param p1, "pkgSetting"    # Lcom/android/server/pm/PackageSetting;
    .param p2, "disabledPkgSetting"    # Lcom/android/server/pm/PackageSetting;
    .param p3, "user"    # Landroid/os/UserHandle;

    .line 582
    and-int/lit8 v0, p0, 0x4

    if-eqz v0, :cond_0

    if-nez p2, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/server/pm/PackageSetting;->isSystem()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 583
    move-object v0, p1

    goto :goto_0

    .line 584
    :cond_0
    move-object v0, p2

    :goto_0
    nop

    .line 585
    .local v0, "systemPkgSetting":Lcom/android/server/pm/PackageSetting;
    if-eqz v0, :cond_6

    .line 587
    const/high16 v1, 0x10000

    or-int/2addr p0, v1

    .line 588
    invoke-virtual {v0}, Lcom/android/server/pm/SettingBase;->getPrivateFlags()I

    move-result v1

    and-int/lit8 v1, v1, 0x8

    const/high16 v2, 0x20000

    if-eqz v1, :cond_1

    .line 590
    or-int/2addr p0, v2

    .line 592
    :cond_1
    invoke-virtual {v0}, Lcom/android/server/pm/SettingBase;->getPrivateFlags()I

    move-result v1

    and-int/2addr v1, v2

    const/high16 v2, 0x40000

    if-eqz v1, :cond_2

    .line 594
    or-int/2addr p0, v2

    .line 596
    :cond_2
    invoke-virtual {v0}, Lcom/android/server/pm/SettingBase;->getPrivateFlags()I

    move-result v1

    and-int/2addr v1, v2

    const/high16 v2, 0x80000

    if-eqz v1, :cond_3

    .line 598
    or-int/2addr p0, v2

    .line 600
    :cond_3
    invoke-virtual {v0}, Lcom/android/server/pm/SettingBase;->getPrivateFlags()I

    move-result v1

    and-int/2addr v1, v2

    if-eqz v1, :cond_4

    .line 602
    const/high16 v1, 0x100000

    or-int/2addr p0, v1

    .line 604
    :cond_4
    invoke-virtual {v0}, Lcom/android/server/pm/SettingBase;->getPrivateFlags()I

    move-result v1

    const/high16 v2, 0x200000

    and-int/2addr v1, v2

    if-eqz v1, :cond_5

    .line 606
    or-int/2addr p0, v2

    .line 608
    :cond_5
    invoke-virtual {v0}, Lcom/android/server/pm/SettingBase;->getPrivateFlags()I

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    and-int/2addr v1, v2

    if-eqz v1, :cond_6

    .line 610
    const/high16 v1, 0x400000

    or-int/2addr p0, v1

    .line 613
    :cond_6
    if-eqz p1, :cond_9

    .line 614
    if-nez p3, :cond_7

    const/4 v1, 0x0

    goto :goto_1

    :cond_7
    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    .line 615
    .local v1, "userId":I
    :goto_1
    invoke-virtual {p1, v1}, Lcom/android/server/pm/PackageSetting;->getInstantApp(I)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 616
    or-int/lit16 p0, p0, 0x2000

    .line 618
    :cond_8
    invoke-virtual {p1, v1}, Lcom/android/server/pm/PackageSetting;->getVirtualPreload(I)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 619
    const v2, 0x8000

    or-int/2addr p0, v2

    .line 623
    .end local v1    # "userId":I
    :cond_9
    return p0
.end method

.method public static apkHasCode(Ljava/lang/String;)Z
    .locals 3
    .param p0, "fileName"    # Ljava/lang/String;

    .line 842
    const/4 v0, 0x0

    .line 844
    .local v0, "jarFile":Landroid/util/jar/StrictJarFile;
    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Landroid/util/jar/StrictJarFile;

    invoke-direct {v2, p0, v1, v1}, Landroid/util/jar/StrictJarFile;-><init>(Ljava/lang/String;ZZ)V

    move-object v0, v2

    .line 846
    const-string v2, "classes.dex"

    invoke-virtual {v0, v2}, Landroid/util/jar/StrictJarFile;->findEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    .line 850
    :cond_0
    nop

    .line 851
    :try_start_1
    invoke-virtual {v0}, Landroid/util/jar/StrictJarFile;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 854
    goto :goto_0

    .line 853
    :catch_0
    move-exception v2

    .line 846
    :goto_0
    return v1

    .line 849
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 847
    :catch_1
    move-exception v2

    goto :goto_4

    .line 850
    :goto_1
    if-eqz v0, :cond_1

    .line 851
    :try_start_2
    invoke-virtual {v0}, Landroid/util/jar/StrictJarFile;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    .line 853
    :catch_2
    move-exception v2

    goto :goto_3

    .line 854
    :cond_1
    :goto_2
    nop

    .line 855
    :goto_3
    throw v1

    .line 850
    :goto_4
    if-eqz v0, :cond_2

    .line 851
    :try_start_3
    invoke-virtual {v0}, Landroid/util/jar/StrictJarFile;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_5

    .line 853
    :catch_3
    move-exception v2

    .line 855
    goto :goto_6

    .line 854
    :cond_2
    :goto_5
    nop

    .line 856
    :goto_6
    return v1
.end method

.method public static applyAdjustedAbiToSharedUser(Lcom/android/server/pm/SharedUserSetting;Lcom/android/internal/pm/parsing/pkg/ParsedPackage;Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .param p0, "sharedUserSetting"    # Lcom/android/server/pm/SharedUserSetting;
    .param p1, "scannedPackage"    # Lcom/android/internal/pm/parsing/pkg/ParsedPackage;
    .param p2, "adjustedAbi"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/SharedUserSetting;",
            "Lcom/android/internal/pm/parsing/pkg/ParsedPackage;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1006
    if-eqz p1, :cond_0

    .line 1007
    invoke-interface {p1, p2}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->setPrimaryCpuAbi(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    .line 1009
    :cond_0
    const/4 v0, 0x0

    .line 1010
    .local v0, "changedAbiCodePath":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    nop

    .line 1011
    invoke-virtual {p0}, Lcom/android/server/pm/SharedUserSetting;->getPackageSettings()Lcom/android/server/utils/WatchedArraySet;

    move-result-object v1

    .line 1012
    .local v1, "sharedUserPackageSettings":Lcom/android/server/utils/WatchedArraySet;, "Lcom/android/server/utils/WatchedArraySet<Lcom/android/server/pm/PackageSetting;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v1}, Lcom/android/server/utils/WatchedArraySet;->size()I

    move-result v3

    if-ge v2, v3, :cond_5

    .line 1013
    invoke-virtual {v1, v2}, Lcom/android/server/utils/WatchedArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/PackageSetting;

    .line 1014
    .local v3, "ps":Lcom/android/server/pm/PackageSetting;
    if-eqz p1, :cond_1

    .line 1015
    invoke-interface {p1}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lcom/android/server/pm/PackageSetting;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 1016
    :cond_1
    invoke-virtual {v3}, Lcom/android/server/pm/PackageSetting;->getPrimaryCpuAbiLegacy()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 1017
    goto :goto_1

    .line 1020
    :cond_2
    invoke-virtual {v3, p2}, Lcom/android/server/pm/PackageSetting;->setPrimaryCpuAbi(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    .line 1021
    invoke-virtual {v3}, Lcom/android/server/pm/SettingBase;->onChanged()V

    .line 1022
    invoke-virtual {v3}, Lcom/android/server/pm/PackageSetting;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 1023
    nop

    .line 1024
    invoke-virtual {v3}, Lcom/android/server/pm/PackageSetting;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->getRawPrimaryCpuAbi(Lcom/android/server/pm/pkg/AndroidPackage;)Ljava/lang/String;

    move-result-object v4

    .line 1023
    invoke-static {p2, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 1032
    if-nez v0, :cond_3

    .line 1033
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v4

    .line 1035
    :cond_3
    invoke-virtual {v3}, Lcom/android/server/pm/PackageSetting;->getPathString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1012
    .end local v3    # "ps":Lcom/android/server/pm/PackageSetting;
    :cond_4
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    nop

    .line 1040
    .end local v2    # "i":I
    return-object v0
.end method

.method public static applyPolicy(Lcom/android/internal/pm/parsing/pkg/ParsedPackage;ILcom/android/server/pm/pkg/AndroidPackage;Z)V
    .locals 5
    .param p0, "parsedPackage"    # Lcom/android/internal/pm/parsing/pkg/ParsedPackage;
    .param p1, "scanFlags"    # I
    .param p2, "platformPkg"    # Lcom/android/server/pm/pkg/AndroidPackage;
    .param p3, "isUpdatedSystemApp"    # Z

    .line 937
    move v0, p3

    .line 938
    .local v0, "isSystemApp":Z
    const/high16 v1, 0x10000

    and-int/2addr v1, p1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    .line 939
    const/4 v0, 0x1

    .line 940
    invoke-interface {p0, v2}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->setSystem(Z)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    .line 943
    invoke-interface {p0}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->isDirectBootAware()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 944
    invoke-interface {p0, v2}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->setAllComponentsDirectBootAware(Z)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    .line 946
    :cond_0
    invoke-interface {p0}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/pm/PackageManagerServiceUtils;->compressedFileExists(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 947
    invoke-interface {p0, v2}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->setStub(Z)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    goto :goto_0

    .line 950
    :cond_1
    nop

    .line 952
    invoke-interface {p0}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->clearProtectedBroadcasts()Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    move-result-object v1

    .line 954
    invoke-interface {v1, v3}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->setCoreApp(Z)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    move-result-object v1

    .line 956
    invoke-interface {v1, v3}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->setPersistent(Z)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    move-result-object v1

    .line 957
    invoke-interface {v1, v3}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->setDefaultToDeviceProtectedStorage(Z)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    move-result-object v1

    .line 958
    invoke-interface {v1, v3}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->setDirectBootAware(Z)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    move-result-object v1

    .line 960
    invoke-interface {v1}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->capPermissionPriorities()Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    .line 962
    :cond_2
    :goto_0
    const/high16 v1, 0x20000

    and-int v4, p1, v1

    if-nez v4, :cond_3

    .line 963
    nop

    .line 964
    invoke-interface {p0}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->markNotActivitiesAsNotExportedIfSingleUser()Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    .line 967
    :cond_3
    const/high16 v4, 0x4000000

    and-int/2addr v4, p1

    if-eqz v4, :cond_4

    move v4, v2

    goto :goto_1

    :cond_4
    move v4, v3

    :goto_1
    invoke-interface {p0, v4}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->setApex(Z)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    .line 969
    and-int/2addr v1, p1

    if-eqz v1, :cond_5

    move v1, v2

    goto :goto_2

    :cond_5
    move v1, v3

    :goto_2
    invoke-interface {p0, v1}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->setPrivileged(Z)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    move-result-object v1

    const/high16 v4, 0x40000

    and-int/2addr v4, p1

    if-eqz v4, :cond_6

    move v4, v2

    goto :goto_3

    :cond_6
    move v4, v3

    .line 970
    :goto_3
    invoke-interface {v1, v4}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->setOem(Z)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    move-result-object v1

    const/high16 v4, 0x80000

    and-int/2addr v4, p1

    if-eqz v4, :cond_7

    move v4, v2

    goto :goto_4

    :cond_7
    move v4, v3

    .line 971
    :goto_4
    invoke-interface {v1, v4}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->setVendor(Z)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    move-result-object v1

    const/high16 v4, 0x100000

    and-int/2addr v4, p1

    if-eqz v4, :cond_8

    move v4, v2

    goto :goto_5

    :cond_8
    move v4, v3

    .line 972
    :goto_5
    invoke-interface {v1, v4}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->setProduct(Z)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    move-result-object v1

    const/high16 v4, 0x200000

    and-int/2addr v4, p1

    if-eqz v4, :cond_9

    move v4, v2

    goto :goto_6

    :cond_9
    move v4, v3

    .line 973
    :goto_6
    invoke-interface {v1, v4}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->setSystemExt(Z)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    move-result-object v1

    const/high16 v4, 0x400000

    and-int/2addr v4, p1

    if-eqz v4, :cond_a

    move v4, v2

    goto :goto_7

    :cond_a
    move v4, v3

    .line 974
    :goto_7
    invoke-interface {v1, v4}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->setOdm(Z)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    .line 977
    nop

    .line 978
    invoke-interface {p0}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v4, "android"

    invoke-virtual {v4, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    nop

    if-nez v1, :cond_c

    if-eqz p2, :cond_b

    .line 980
    invoke-interface {p2}, Lcom/android/server/pm/pkg/AndroidPackage;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object v1

    .line 981
    invoke-interface {p0}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object v4

    .line 979
    invoke-static {v1, v4}, Lcom/android/server/pm/PackageManagerServiceUtils;->compareSignatures(Landroid/content/pm/SigningDetails;Landroid/content/pm/SigningDetails;)I

    move-result v1

    if-nez v1, :cond_b

    goto :goto_8

    :cond_b
    move v2, v3

    goto :goto_9

    :cond_c
    :goto_8
    nop

    .line 977
    :goto_9
    invoke-interface {p0, v2}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->setSignedWithPlatformKey(Z)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    .line 985
    if-nez v0, :cond_d

    .line 987
    invoke-interface {p0}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->clearOriginalPackages()Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    move-result-object v1

    .line 988
    invoke-interface {v1}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->clearAdoptPermissions()Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    .line 991
    :cond_d
    invoke-static {p0, v0, p3}, Lcom/android/server/pm/parsing/library/PackageBackwardCompatibility;->modifySharedLibraries(Lcom/android/internal/pm/parsing/pkg/ParsedPackage;ZZ)V

    .line 993
    return-void
.end method

.method public static assertCodePolicy(Lcom/android/server/pm/pkg/AndroidPackage;)V
    .locals 8
    .param p0, "pkg"    # Lcom/android/server/pm/pkg/AndroidPackage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    .line 635
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->isDeclaredHavingCode()Z

    move-result v0

    .line 636
    .local v0, "shouldHaveCode":Z
    const-string v1, " code is missing"

    const-string v2, "Package "

    const/4 v3, -0x2

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getBaseApkPath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/pm/ScanPackageUtils;->apkHasCode(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    goto :goto_0

    .line 637
    :cond_1
    new-instance v4, Lcom/android/server/pm/PackageManagerException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 638
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getBaseApkPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v3, v1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v4

    .line 641
    :goto_0
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getSplitCodePaths()[Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 642
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getSplitCodePaths()[Ljava/lang/String;

    move-result-object v5

    array-length v5, v5

    if-ge v4, v5, :cond_5

    .line 643
    nop

    .line 644
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getSplitFlags()[I

    move-result-object v5

    aget v5, v5, v4

    and-int/lit8 v5, v5, 0x4

    if-eqz v5, :cond_2

    const/4 v5, 0x1

    goto :goto_2

    :cond_2
    const/4 v5, 0x0

    .line 645
    .local v5, "splitShouldHaveCode":Z
    :goto_2
    if-eqz v5, :cond_3

    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getSplitCodePaths()[Ljava/lang/String;

    move-result-object v6

    aget-object v6, v6, v4

    invoke-static {v6}, Lcom/android/server/pm/ScanPackageUtils;->apkHasCode(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    :cond_3
    goto :goto_3

    .line 646
    :cond_4
    new-instance v6, Lcom/android/server/pm/PackageManagerException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 647
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getSplitCodePaths()[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v4

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v6, v3, v1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v6

    .line 642
    .end local v5    # "splitShouldHaveCode":Z
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 651
    .end local v4    # "i":I
    :cond_5
    return-void
.end method

.method public static assertMinSignatureSchemeIsValid(Lcom/android/server/pm/pkg/AndroidPackage;I)V
    .locals 4
    .param p0, "pkg"    # Lcom/android/server/pm/pkg/AndroidPackage;
    .param p1, "parseFlags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    .line 794
    nop

    .line 796
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getTargetSdkVersion()I

    move-result v0

    .line 795
    invoke-static {v0}, Landroid/util/apk/ApkSignatureVerifier;->getMinimumSignatureSchemeVersionForTargetSdk(I)I

    move-result v0

    .line 797
    .local v0, "minSignatureSchemeVersion":I
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/pm/SigningDetails;->getSignatureSchemeVersion()I

    move-result v1

    if-lt v1, v0, :cond_0

    .line 803
    return-void

    .line 799
    :cond_0
    new-instance v1, Lcom/android/server/pm/PackageManagerException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No signature found in package of version "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " or newer for package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 801
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v3, -0x67

    invoke-direct {v1, v3, v2}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v1
.end method

.method private static assertPackageProcesses(Lcom/android/server/pm/pkg/AndroidPackage;Ljava/util/List;Ljava/util/Map;Ljava/lang/String;)V
    .locals 5
    .param p0, "pkg"    # Lcom/android/server/pm/pkg/AndroidPackage;
    .param p3, "compName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/android/internal/pm/pkg/component/ParsedMainComponent;",
            ">(",
            "Lcom/android/server/pm/pkg/AndroidPackage;",
            "Ljava/util/List<",
            "TT;>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/internal/pm/pkg/component/ParsedProcess;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    .line 776
    .local p1, "components":Ljava/util/List;, "Ljava/util/List<TT;>;"
    .local p2, "procs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/internal/pm/pkg/component/ParsedProcess;>;"
    if-nez p1, :cond_0

    .line 777
    return-void

    .line 779
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_2

    .line 780
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/pm/pkg/component/ParsedMainComponent;

    .line 781
    .local v1, "component":Lcom/android/internal/pm/pkg/component/ParsedMainComponent;
    invoke-interface {v1}, Lcom/android/internal/pm/pkg/component/ParsedMainComponent;->getProcessName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 779
    .end local v1    # "component":Lcom/android/internal/pm/pkg/component/ParsedMainComponent;
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 782
    .restart local v1    # "component":Lcom/android/internal/pm/pkg/component/ParsedMainComponent;
    :cond_1
    new-instance v2, Lcom/android/server/pm/PackageManagerException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t install because "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 784
    invoke-interface {v1}, Lcom/android/internal/pm/pkg/component/ParsedMainComponent;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\'s process attribute "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 785
    invoke-interface {v1}, Lcom/android/internal/pm/pkg/component/ParsedMainComponent;->getProcessName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " (in package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 786
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ") is not included in the <processes> list"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v4, -0x7a

    invoke-direct {v2, v4, v3}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v2

    .line 779
    .end local v1    # "component":Lcom/android/internal/pm/pkg/component/ParsedMainComponent;
    :cond_2
    nop

    .line 790
    .end local v0    # "i":I
    return-void
.end method

.method public static assertProcessesAreValid(Lcom/android/server/pm/pkg/AndroidPackage;)V
    .locals 4
    .param p0, "pkg"    # Lcom/android/server/pm/pkg/AndroidPackage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    .line 756
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getProcesses()Ljava/util/Map;

    move-result-object v0

    .line 757
    .local v0, "procs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/internal/pm/pkg/component/ParsedProcess;>;"
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 758
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getProcessName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 766
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getActivities()Ljava/util/List;

    move-result-object v1

    const-string v2, "activity"

    invoke-static {p0, v1, v0, v2}, Lcom/android/server/pm/ScanPackageUtils;->assertPackageProcesses(Lcom/android/server/pm/pkg/AndroidPackage;Ljava/util/List;Ljava/util/Map;Ljava/lang/String;)V

    .line 767
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getServices()Ljava/util/List;

    move-result-object v1

    const-string/jumbo v2, "service"

    invoke-static {p0, v1, v0, v2}, Lcom/android/server/pm/ScanPackageUtils;->assertPackageProcesses(Lcom/android/server/pm/pkg/AndroidPackage;Ljava/util/List;Ljava/util/Map;Ljava/lang/String;)V

    .line 768
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getReceivers()Ljava/util/List;

    move-result-object v1

    const-string/jumbo v2, "receiver"

    invoke-static {p0, v1, v0, v2}, Lcom/android/server/pm/ScanPackageUtils;->assertPackageProcesses(Lcom/android/server/pm/pkg/AndroidPackage;Ljava/util/List;Ljava/util/Map;Ljava/lang/String;)V

    .line 769
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getProviders()Ljava/util/List;

    move-result-object v1

    const-string/jumbo v2, "provider"

    invoke-static {p0, v1, v0, v2}, Lcom/android/server/pm/ScanPackageUtils;->assertPackageProcesses(Lcom/android/server/pm/pkg/AndroidPackage;Ljava/util/List;Ljava/util/Map;Ljava/lang/String;)V

    goto :goto_0

    .line 759
    :cond_0
    new-instance v1, Lcom/android/server/pm/PackageManagerException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t install because application tag\'s process attribute "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 762
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getProcessName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " (in package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 763
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ") is not included in the <processes> list"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v3, -0x7a

    invoke-direct {v1, v3, v2}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v1

    .line 771
    :cond_1
    :goto_0
    return-void
.end method

.method public static assertStaticSharedLibraryIsValid(Lcom/android/server/pm/pkg/AndroidPackage;I)V
    .locals 2
    .param p0, "pkg"    # Lcom/android/server/pm/pkg/AndroidPackage;
    .param p1, "scanFlags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    .line 656
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getTargetSdkVersion()I

    move-result v0

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_d

    .line 663
    and-int/lit16 v0, p1, 0x2000

    if-nez v0, :cond_c

    .line 671
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getOriginalPackages()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 678
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getLibraryNames()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 685
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getSharedUserId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_9

    .line 692
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getActivities()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 699
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getServices()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 706
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getProviders()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 713
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getReceivers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 720
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getPermissionGroups()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 727
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getAttributions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 734
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getPermissions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 741
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getProtectedBroadcasts()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 748
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getOverlayTarget()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 753
    return-void

    .line 749
    :cond_0
    const-string v0, "Static shared libs cannot be overlay targets"

    const/16 v1, -0x23

    invoke-static {v0, v1}, Lcom/android/server/pm/PackageManagerException;->ofInternalError(Ljava/lang/String;I)Lcom/android/server/pm/PackageManagerException;

    move-result-object v0

    throw v0

    .line 742
    :cond_1
    const-string v0, "Static shared libs cannot declare protected broadcasts"

    const/16 v1, -0x22

    invoke-static {v0, v1}, Lcom/android/server/pm/PackageManagerException;->ofInternalError(Ljava/lang/String;I)Lcom/android/server/pm/PackageManagerException;

    move-result-object v0

    throw v0

    .line 735
    :cond_2
    const-string v0, "Static shared libs cannot declare permissions"

    const/16 v1, -0x21

    invoke-static {v0, v1}, Lcom/android/server/pm/PackageManagerException;->ofInternalError(Ljava/lang/String;I)Lcom/android/server/pm/PackageManagerException;

    move-result-object v0

    throw v0

    .line 728
    :cond_3
    const-string v0, "Static shared libs cannot declare features"

    const/16 v1, -0x20

    invoke-static {v0, v1}, Lcom/android/server/pm/PackageManagerException;->ofInternalError(Ljava/lang/String;I)Lcom/android/server/pm/PackageManagerException;

    move-result-object v0

    throw v0

    .line 721
    :cond_4
    const-string v0, "Static shared libs cannot declare permission groups"

    const/16 v1, -0x1f

    invoke-static {v0, v1}, Lcom/android/server/pm/PackageManagerException;->ofInternalError(Ljava/lang/String;I)Lcom/android/server/pm/PackageManagerException;

    move-result-object v0

    throw v0

    .line 714
    :cond_5
    const-string v0, "Static shared libs cannot declare broadcast receivers"

    const/16 v1, -0x1e

    invoke-static {v0, v1}, Lcom/android/server/pm/PackageManagerException;->ofInternalError(Ljava/lang/String;I)Lcom/android/server/pm/PackageManagerException;

    move-result-object v0

    throw v0

    .line 707
    :cond_6
    const-string v0, "Static shared libs cannot declare content providers"

    const/16 v1, -0x1d

    invoke-static {v0, v1}, Lcom/android/server/pm/PackageManagerException;->ofInternalError(Ljava/lang/String;I)Lcom/android/server/pm/PackageManagerException;

    move-result-object v0

    throw v0

    .line 700
    :cond_7
    const-string v0, "Static shared libs cannot declare services"

    const/16 v1, -0x1c

    invoke-static {v0, v1}, Lcom/android/server/pm/PackageManagerException;->ofInternalError(Ljava/lang/String;I)Lcom/android/server/pm/PackageManagerException;

    move-result-object v0

    throw v0

    .line 693
    :cond_8
    const-string v0, "Static shared libs cannot declare activities"

    const/16 v1, -0x1b

    invoke-static {v0, v1}, Lcom/android/server/pm/PackageManagerException;->ofInternalError(Ljava/lang/String;I)Lcom/android/server/pm/PackageManagerException;

    move-result-object v0

    throw v0

    .line 686
    :cond_9
    const-string v0, "Packages declaring static-shared libs cannot declare shared users"

    const/16 v1, -0x1a

    invoke-static {v0, v1}, Lcom/android/server/pm/PackageManagerException;->ofInternalError(Ljava/lang/String;I)Lcom/android/server/pm/PackageManagerException;

    move-result-object v0

    throw v0

    .line 679
    :cond_a
    const-string v0, "Packages declaring static-shared libs cannot declare dynamic libs"

    const/16 v1, -0x19

    invoke-static {v0, v1}, Lcom/android/server/pm/PackageManagerException;->ofInternalError(Ljava/lang/String;I)Lcom/android/server/pm/PackageManagerException;

    move-result-object v0

    throw v0

    .line 672
    :cond_b
    const-string v0, "Packages declaring static-shared libs cannot be renamed"

    const/16 v1, -0x18

    invoke-static {v0, v1}, Lcom/android/server/pm/PackageManagerException;->ofInternalError(Ljava/lang/String;I)Lcom/android/server/pm/PackageManagerException;

    move-result-object v0

    throw v0

    .line 664
    :cond_c
    const-string v0, "Packages declaring static-shared libs cannot be instant apps"

    const/16 v1, -0x17

    invoke-static {v0, v1}, Lcom/android/server/pm/PackageManagerException;->ofInternalError(Ljava/lang/String;I)Lcom/android/server/pm/PackageManagerException;

    move-result-object v0

    throw v0

    .line 657
    :cond_d
    const-string v0, "Packages declaring static-shared libs must target O SDK or higher"

    const/16 v1, -0x16

    invoke-static {v0, v1}, Lcom/android/server/pm/PackageManagerException;->ofInternalError(Ljava/lang/String;I)Lcom/android/server/pm/PackageManagerException;

    move-result-object v0

    throw v0
.end method

.method public static collectCertificatesLI(Lcom/android/server/pm/PackageSetting;Lcom/android/internal/pm/parsing/pkg/ParsedPackage;Lcom/android/server/pm/Settings$VersionInfo;ZZZ)V
    .locals 10
    .param p0, "ps"    # Lcom/android/server/pm/PackageSetting;
    .param p1, "parsedPackage"    # Lcom/android/internal/pm/parsing/pkg/ParsedPackage;
    .param p2, "settingsVersionForPackage"    # Lcom/android/server/pm/Settings$VersionInfo;
    .param p3, "forceCollect"    # Z
    .param p4, "skipVerify"    # Z
    .param p5, "isPreNMR1Upgrade"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    .line 1049
    if-eqz p5, :cond_0

    .line 1050
    new-instance v0, Ljava/io/File;

    invoke-interface {p1}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    goto :goto_0

    .line 1051
    :cond_0
    invoke-static {p1}, Lcom/android/server/pm/PackageManagerServiceUtils;->getLastModifiedTime(Lcom/android/server/pm/pkg/AndroidPackage;)J

    move-result-wide v0

    :goto_0
    nop

    .line 1052
    .local v0, "lastModifiedTime":J
    const-string v2, "PackageManager"

    if-eqz p0, :cond_2

    if-nez p3, :cond_2

    .line 1053
    invoke-virtual {p0}, Lcom/android/server/pm/PackageSetting;->getPathString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1054
    invoke-virtual {p0}, Lcom/android/server/pm/PackageSetting;->getLastModifiedTime()J

    move-result-wide v3

    cmp-long v3, v3, v0

    if-nez v3, :cond_2

    .line 1055
    invoke-static {p2}, Lcom/android/server/pm/ReconcilePackageUtils;->isCompatSignatureUpdateNeeded(Lcom/android/server/pm/Settings$VersionInfo;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 1056
    invoke-static {p2}, Lcom/android/server/pm/ReconcilePackageUtils;->isRecoverSignatureUpdateNeeded(Lcom/android/server/pm/Settings$VersionInfo;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 1058
    invoke-virtual {p0}, Lcom/android/server/pm/PackageSetting;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/pm/SigningDetails;->getSignatures()[Landroid/content/pm/Signature;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 1059
    invoke-virtual {p0}, Lcom/android/server/pm/PackageSetting;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/pm/SigningDetails;->getSignatures()[Landroid/content/pm/Signature;

    move-result-object v3

    array-length v3, v3

    if-eqz v3, :cond_1

    .line 1060
    invoke-virtual {p0}, Lcom/android/server/pm/PackageSetting;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/pm/SigningDetails;->getSignatureSchemeVersion()I

    move-result v3

    if-eqz v3, :cond_1

    .line 1064
    new-instance v2, Landroid/content/pm/SigningDetails;

    .line 1065
    invoke-virtual {p0}, Lcom/android/server/pm/PackageSetting;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/pm/SigningDetails;-><init>(Landroid/content/pm/SigningDetails;)V

    .line 1064
    invoke-interface {p1, v2}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->setSigningDetails(Landroid/content/pm/SigningDetails;)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    .line 1066
    return-void

    .line 1069
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PackageSetting for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/pm/PackageSetting;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " is missing signatures.  Collecting certs again to recover them."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1072
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " changed; collecting certs"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1073
    if-eqz p3, :cond_3

    const-string v4, " (forced)"

    goto :goto_1

    :cond_3
    const-string v4, ""

    :goto_1
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1072
    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1077
    :goto_2
    const-wide/32 v2, 0x40000

    :try_start_0
    const-string v4, "collectCertificates"

    invoke-static {v2, v3, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1078
    invoke-static {}, Landroid/content/pm/parsing/result/ParseTypeImpl;->forDefaultParsing()Landroid/content/pm/parsing/result/ParseTypeImpl;

    move-result-object v4

    .line 1079
    .local v4, "input":Landroid/content/pm/parsing/result/ParseTypeImpl;
    invoke-static {v4, p1, p4}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->getSigningDetails(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/internal/pm/parsing/pkg/ParsedPackage;Z)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v5

    .line 1081
    .local v5, "result":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Landroid/content/pm/SigningDetails;>;"
    invoke-interface {v5}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v6

    if-nez v6, :cond_4

    .line 1085
    invoke-interface {v5}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/SigningDetails;

    invoke-interface {p1, v6}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->setSigningDetails(Landroid/content/pm/SigningDetails;)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1087
    nop

    .end local v4    # "input":Landroid/content/pm/parsing/result/ParseTypeImpl;
    .end local v5    # "result":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Landroid/content/pm/SigningDetails;>;"
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 1088
    nop

    .line 1089
    return-void

    .line 1087
    :catchall_0
    move-exception v4

    goto :goto_3

    .line 1082
    .restart local v4    # "input":Landroid/content/pm/parsing/result/ParseTypeImpl;
    .restart local v5    # "result":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Landroid/content/pm/SigningDetails;>;"
    :cond_4
    :try_start_1
    new-instance v6, Lcom/android/server/pm/PackageManagerException;

    .line 1083
    invoke-interface {v5}, Landroid/content/pm/parsing/result/ParseResult;->getErrorCode()I

    move-result v7

    invoke-interface {v5}, Landroid/content/pm/parsing/result/ParseResult;->getErrorMessage()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v5}, Landroid/content/pm/parsing/result/ParseResult;->getException()Ljava/lang/Exception;

    move-result-object v9

    invoke-direct {v6, v7, v8, v9}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    .end local v0    # "lastModifiedTime":J
    .end local p0    # "ps":Lcom/android/server/pm/PackageSetting;
    .end local p1    # "parsedPackage":Lcom/android/internal/pm/parsing/pkg/ParsedPackage;
    .end local p2    # "settingsVersionForPackage":Lcom/android/server/pm/Settings$VersionInfo;
    .end local p3    # "forceCollect":Z
    .end local p4    # "skipVerify":Z
    .end local p5    # "isPreNMR1Upgrade":Z
    throw v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1087
    .end local v4    # "input":Landroid/content/pm/parsing/result/ParseTypeImpl;
    .end local v5    # "result":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Landroid/content/pm/SigningDetails;>;"
    .restart local v0    # "lastModifiedTime":J
    .restart local p0    # "ps":Lcom/android/server/pm/PackageSetting;
    .restart local p1    # "parsedPackage":Lcom/android/internal/pm/parsing/pkg/ParsedPackage;
    .restart local p2    # "settingsVersionForPackage":Lcom/android/server/pm/Settings$VersionInfo;
    .restart local p3    # "forceCollect":Z
    .restart local p4    # "skipVerify":Z
    .restart local p5    # "isPreNMR1Upgrade":Z
    :goto_3
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 1088
    throw v4
.end method

.method public static configurePackageComponents(Lcom/android/server/pm/pkg/AndroidPackage;)V
    .locals 5
    .param p0, "pkg"    # Lcom/android/server/pm/pkg/AndroidPackage;

    .line 866
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object v0

    .line 867
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/SystemConfig;->getComponentsEnabledStates(Ljava/lang/String;)Landroid/util/ArrayMap;

    move-result-object v0

    .line 868
    .local v0, "componentsEnabledStates":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    if-nez v0, :cond_0

    .line 869
    return-void

    .line 872
    :cond_0
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getActivities()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->size(Ljava/util/Collection;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_2

    .line 873
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getActivities()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/pm/pkg/component/ParsedActivity;

    .line 874
    .local v2, "component":Lcom/android/internal/pm/pkg/component/ParsedActivity;
    invoke-interface {v2}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    .line 875
    .local v3, "enabled":Ljava/lang/Boolean;
    if-eqz v3, :cond_1

    .line 876
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-static {v2, v4}, Lcom/android/internal/pm/pkg/component/ComponentMutateUtils;->setEnabled(Lcom/android/internal/pm/pkg/component/ParsedMainComponent;Z)V

    .line 872
    .end local v2    # "component":Lcom/android/internal/pm/pkg/component/ParsedActivity;
    .end local v3    # "enabled":Ljava/lang/Boolean;
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_2
    nop

    .line 880
    .end local v1    # "i":I
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getReceivers()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->size(Ljava/util/Collection;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .restart local v1    # "i":I
    :goto_1
    if-ltz v1, :cond_4

    .line 881
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getReceivers()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/pm/pkg/component/ParsedActivity;

    .line 882
    .restart local v2    # "component":Lcom/android/internal/pm/pkg/component/ParsedActivity;
    invoke-interface {v2}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    .line 883
    .restart local v3    # "enabled":Ljava/lang/Boolean;
    if-eqz v3, :cond_3

    .line 884
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-static {v2, v4}, Lcom/android/internal/pm/pkg/component/ComponentMutateUtils;->setEnabled(Lcom/android/internal/pm/pkg/component/ParsedMainComponent;Z)V

    .line 880
    .end local v2    # "component":Lcom/android/internal/pm/pkg/component/ParsedActivity;
    .end local v3    # "enabled":Ljava/lang/Boolean;
    :cond_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_4
    nop

    .line 888
    .end local v1    # "i":I
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getProviders()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->size(Ljava/util/Collection;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .restart local v1    # "i":I
    :goto_2
    if-ltz v1, :cond_6

    .line 889
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getProviders()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/pm/pkg/component/ParsedProvider;

    .line 890
    .local v2, "component":Lcom/android/internal/pm/pkg/component/ParsedProvider;
    invoke-interface {v2}, Lcom/android/internal/pm/pkg/component/ParsedProvider;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    .line 891
    .restart local v3    # "enabled":Ljava/lang/Boolean;
    if-eqz v3, :cond_5

    .line 892
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-static {v2, v4}, Lcom/android/internal/pm/pkg/component/ComponentMutateUtils;->setEnabled(Lcom/android/internal/pm/pkg/component/ParsedMainComponent;Z)V

    .line 888
    .end local v2    # "component":Lcom/android/internal/pm/pkg/component/ParsedProvider;
    .end local v3    # "enabled":Ljava/lang/Boolean;
    :cond_5
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    :cond_6
    nop

    .line 896
    .end local v1    # "i":I
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getServices()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->size(Ljava/util/Collection;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .restart local v1    # "i":I
    :goto_3
    if-ltz v1, :cond_8

    .line 897
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getServices()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/pm/pkg/component/ParsedService;

    .line 898
    .local v2, "component":Lcom/android/internal/pm/pkg/component/ParsedService;
    invoke-interface {v2}, Lcom/android/internal/pm/pkg/component/ParsedService;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    .line 899
    .restart local v3    # "enabled":Ljava/lang/Boolean;
    if-eqz v3, :cond_7

    .line 900
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-static {v2, v4}, Lcom/android/internal/pm/pkg/component/ComponentMutateUtils;->setEnabled(Lcom/android/internal/pm/pkg/component/ParsedMainComponent;Z)V

    .line 896
    .end local v2    # "component":Lcom/android/internal/pm/pkg/component/ParsedService;
    .end local v3    # "enabled":Ljava/lang/Boolean;
    :cond_7
    add-int/lit8 v1, v1, -0x1

    goto :goto_3

    :cond_8
    nop

    .line 903
    .end local v1    # "i":I
    return-void
.end method

.method public static ensurePackageRenamed(Lcom/android/internal/pm/parsing/pkg/ParsedPackage;Ljava/lang/String;)V
    .locals 1
    .param p0, "parsedPackage"    # Lcom/android/internal/pm/parsing/pkg/ParsedPackage;
    .param p1, "renamedPackageName"    # Ljava/lang/String;

    .line 831
    invoke-interface {p0}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getOriginalPackages()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 832
    invoke-interface {p0}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 835
    :cond_0
    invoke-interface {p0, p1}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->setPackageName(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    .line 836
    return-void

    .line 833
    :cond_1
    :goto_0
    return-void
.end method

.method public static getAppLib32InstallDir()Ljava/io/File;
    .locals 3

    .line 1116
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "app-lib"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getRealPackageName(Lcom/android/server/pm/pkg/AndroidPackage;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 1
    .param p0, "pkg"    # Lcom/android/server/pm/pkg/AndroidPackage;
    .param p1, "renamedPkgName"    # Ljava/lang/String;
    .param p2, "isSystemApp"    # Z

    .line 812
    invoke-static {p0, p1}, Lcom/android/server/pm/ScanPackageUtils;->isPackageRenamed(Lcom/android/server/pm/pkg/AndroidPackage;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 813
    invoke-static {p0, p2}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->getRealPackageOrNull(Lcom/android/server/pm/pkg/AndroidPackage;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 815
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getVendorPartitionVersion()I
    .locals 3

    .line 906
    const-string/jumbo v0, "ro.vndk.version"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 907
    .local v0, "version":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 909
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 910
    :catch_0
    move-exception v1

    .line 911
    .local v1, "ignore":Ljava/lang/NumberFormatException;
    sget-object v2, Landroid/os/Build$VERSION;->ACTIVE_CODENAMES:[Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 912
    const/16 v2, 0x2710

    return v2

    .line 916
    .end local v1    # "ignore":Ljava/lang/NumberFormatException;
    :cond_0
    const/16 v1, 0x1c

    return v1
.end method

.method public static isPackageRenamed(Lcom/android/server/pm/pkg/AndroidPackage;Ljava/lang/String;)Z
    .locals 1
    .param p0, "pkg"    # Lcom/android/server/pm/pkg/AndroidPackage;
    .param p1, "renamedPkgName"    # Ljava/lang/String;

    .line 821
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getOriginalPackages()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static scanPackageOnly(Lcom/android/server/pm/ScanRequest;Lcom/android/server/pm/PackageManagerServiceInjector;ZJ)Lcom/android/server/pm/ScanResult;
    .locals 48
    .param p0, "request"    # Lcom/android/server/pm/ScanRequest;
    .param p1, "injector"    # Lcom/android/server/pm/PackageManagerServiceInjector;
    .param p2, "isUnderFactoryTest"    # Z
    .param p3, "currentTime"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    .line 136
    move-object/from16 v1, p0

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/pm/PackageManagerServiceInjector;->getAbiHelper()Lcom/android/server/pm/PackageAbiHelper;

    move-result-object v2

    .line 137
    .local v2, "packageAbiHelper":Lcom/android/server/pm/PackageAbiHelper;
    iget-object v3, v1, Lcom/android/server/pm/ScanRequest;->mParsedPackage:Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    .line 138
    .local v3, "parsedPackage":Lcom/android/internal/pm/parsing/pkg/ParsedPackage;
    iget-object v0, v1, Lcom/android/server/pm/ScanRequest;->mPkgSetting:Lcom/android/server/pm/PackageSetting;

    .line 139
    .local v0, "pkgSetting":Lcom/android/server/pm/PackageSetting;
    iget-object v12, v1, Lcom/android/server/pm/ScanRequest;->mDisabledPkgSetting:Lcom/android/server/pm/PackageSetting;

    .line 140
    .local v12, "disabledPkgSetting":Lcom/android/server/pm/PackageSetting;
    move-object v13, v12

    .end local v12    # "disabledPkgSetting":Lcom/android/server/pm/PackageSetting;
    .local v13, "disabledPkgSetting":Lcom/android/server/pm/PackageSetting;
    iget-object v12, v1, Lcom/android/server/pm/ScanRequest;->mOriginalPkgSetting:Lcom/android/server/pm/PackageSetting;

    .line 141
    .local v12, "originalPkgSetting":Lcom/android/server/pm/PackageSetting;
    iget v8, v1, Lcom/android/server/pm/ScanRequest;->mParseFlags:I

    .line 142
    .local v8, "parseFlags":I
    iget v4, v1, Lcom/android/server/pm/ScanRequest;->mScanFlags:I

    .line 143
    .local v4, "scanFlags":I
    iget-object v14, v1, Lcom/android/server/pm/ScanRequest;->mRealPkgName:Ljava/lang/String;

    .line 144
    .local v14, "realPkgName":Ljava/lang/String;
    iget-object v5, v1, Lcom/android/server/pm/ScanRequest;->mOldSharedUserSetting:Lcom/android/server/pm/SharedUserSetting;

    .line 145
    .local v5, "oldSharedUserSetting":Lcom/android/server/pm/SharedUserSetting;
    iget-object v15, v1, Lcom/android/server/pm/ScanRequest;->mSharedUserSetting:Lcom/android/server/pm/SharedUserSetting;

    .line 146
    .local v15, "sharedUserSetting":Lcom/android/server/pm/SharedUserSetting;
    iget-object v6, v1, Lcom/android/server/pm/ScanRequest;->mUser:Landroid/os/UserHandle;

    .line 147
    .local v6, "user":Landroid/os/UserHandle;
    iget-boolean v7, v1, Lcom/android/server/pm/ScanRequest;->mIsPlatformPackage:Z

    .line 149
    .local v7, "isPlatformPackage":Z
    const/16 v39, 0x0

    .line 158
    .local v39, "changedAbiCodePath":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v11, Ljava/io/File;

    move-object/from16 v16, v0

    .end local v0    # "pkgSetting":Lcom/android/server/pm/PackageSetting;
    .local v16, "pkgSetting":Lcom/android/server/pm/PackageSetting;
    invoke-interface {v3}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v11, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 162
    .local v11, "destCodeFile":Ljava/io/File;
    const/4 v0, 0x0

    .line 163
    .local v0, "primaryCpuAbiFromSettings":Ljava/lang/String;
    const/16 v17, 0x0

    .line 164
    .local v17, "secondaryCpuAbiFromSettings":Ljava/lang/String;
    move-object/from16 v18, v0

    .end local v0    # "primaryCpuAbiFromSettings":Ljava/lang/String;
    .local v18, "primaryCpuAbiFromSettings":Ljava/lang/String;
    and-int/lit16 v0, v4, 0x1000

    const/16 v40, 0x0

    move/from16 v19, v0

    if-eqz v19, :cond_0

    const/16 v19, 0x1

    goto :goto_0

    :cond_0
    move/from16 v19, v40

    .line 165
    .local v19, "needToDeriveAbi":Z
    :goto_0
    const/high16 v20, 0x4000000

    and-int v20, v4, v20

    if-eqz v20, :cond_1

    const/16 v20, 0x1

    goto :goto_1

    :cond_1
    move/from16 v20, v40

    :goto_1
    move/from16 v41, v20

    .line 167
    .local v41, "isApex":Z
    if-nez v19, :cond_4

    .line 168
    if-eqz v16, :cond_3

    .line 173
    invoke-virtual/range {v16 .. v16}, Lcom/android/server/pm/PackageSetting;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v20

    if-eqz v20, :cond_2

    invoke-virtual/range {v16 .. v16}, Lcom/android/server/pm/PackageSetting;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;->isStub()Z

    move-result v20

    if-eqz v20, :cond_2

    .line 174
    const/16 v19, 0x1

    move/from16 v42, v8

    move-object/from16 v9, v17

    move-object/from16 v8, v18

    move/from16 v10, v19

    goto :goto_2

    .line 176
    :cond_2
    invoke-virtual/range {v16 .. v16}, Lcom/android/server/pm/PackageSetting;->getPrimaryCpuAbiLegacy()Ljava/lang/String;

    move-result-object v18

    .line 177
    invoke-virtual/range {v16 .. v16}, Lcom/android/server/pm/PackageSetting;->getSecondaryCpuAbiLegacy()Ljava/lang/String;

    move-result-object v17

    move/from16 v42, v8

    move-object/from16 v9, v17

    move-object/from16 v8, v18

    move/from16 v10, v19

    goto :goto_2

    .line 181
    :cond_3
    const/16 v19, 0x1

    move/from16 v42, v8

    move-object/from16 v9, v17

    move-object/from16 v8, v18

    move/from16 v10, v19

    goto :goto_2

    .line 167
    :cond_4
    move/from16 v42, v8

    move-object/from16 v9, v17

    move-object/from16 v8, v18

    move/from16 v10, v19

    .line 185
    .end local v17    # "secondaryCpuAbiFromSettings":Ljava/lang/String;
    .end local v18    # "primaryCpuAbiFromSettings":Ljava/lang/String;
    .end local v19    # "needToDeriveAbi":Z
    .local v8, "primaryCpuAbiFromSettings":Ljava/lang/String;
    .local v9, "secondaryCpuAbiFromSettings":Ljava/lang/String;
    .local v10, "needToDeriveAbi":Z
    .local v42, "parseFlags":I
    :goto_2
    const/16 v17, 0x0

    .line 186
    .local v17, "isPendingRestoreBefore":Z
    const-string v0, " to "

    move-object/from16 v43, v2

    .end local v2    # "packageAbiHelper":Lcom/android/server/pm/PackageAbiHelper;
    .local v43, "packageAbiHelper":Lcom/android/server/pm/PackageAbiHelper;
    if-eqz v16, :cond_7

    if-eq v5, v15, :cond_7

    .line 187
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v24, v6

    .end local v6    # "user":Landroid/os/UserHandle;
    .local v24, "user":Landroid/os/UserHandle;
    const-string v6, "Package "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    invoke-interface {v3}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " shared user changed from "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    const-string v6, "<nothing>"

    if-eqz v5, :cond_5

    .line 190
    move-object/from16 v18, v6

    iget-object v6, v5, Lcom/android/server/pm/SharedUserSetting;->name:Ljava/lang/String;

    goto :goto_3

    :cond_5
    move-object/from16 v18, v6

    :goto_3
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    if-eqz v15, :cond_6

    iget-object v6, v15, Lcom/android/server/pm/SharedUserSetting;->name:Ljava/lang/String;

    goto :goto_4

    :cond_6
    move-object/from16 v6, v18

    :goto_4
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "; replacing with new"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 187
    const/4 v6, 0x5

    invoke-static {v6, v2}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 196
    invoke-virtual/range {v16 .. v16}, Lcom/android/server/pm/PackageSetting;->isPendingRestore()Z

    move-result v17

    .line 197
    const/4 v2, 0x0

    move/from16 v44, v17

    .end local v16    # "pkgSetting":Lcom/android/server/pm/PackageSetting;
    .local v2, "pkgSetting":Lcom/android/server/pm/PackageSetting;
    goto :goto_5

    .line 186
    .end local v2    # "pkgSetting":Lcom/android/server/pm/PackageSetting;
    .end local v24    # "user":Landroid/os/UserHandle;
    .restart local v6    # "user":Landroid/os/UserHandle;
    .restart local v16    # "pkgSetting":Lcom/android/server/pm/PackageSetting;
    :cond_7
    move-object/from16 v24, v6

    .line 200
    .end local v6    # "user":Landroid/os/UserHandle;
    .restart local v24    # "user":Landroid/os/UserHandle;
    move-object/from16 v2, v16

    move/from16 v44, v17

    .end local v16    # "pkgSetting":Lcom/android/server/pm/PackageSetting;
    .end local v17    # "isPendingRestoreBefore":Z
    .restart local v2    # "pkgSetting":Lcom/android/server/pm/PackageSetting;
    .local v44, "isPendingRestoreBefore":Z
    :goto_5
    const/4 v6, 0x0

    .line 201
    .local v6, "usesSdkLibraries":[Ljava/lang/String;
    invoke-interface {v3}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getUsesSdkLibraries()Ljava/util/List;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->isEmpty()Z

    move-result v16

    if-nez v16, :cond_8

    .line 202
    invoke-interface {v3}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getUsesSdkLibraries()Ljava/util/List;

    move-result-object v16

    move-object/from16 v45, v5

    .end local v5    # "oldSharedUserSetting":Lcom/android/server/pm/SharedUserSetting;
    .local v45, "oldSharedUserSetting":Lcom/android/server/pm/SharedUserSetting;
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v5

    new-array v6, v5, [Ljava/lang/String;

    .line 203
    invoke-interface {v3}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getUsesSdkLibraries()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v6}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-object/from16 v30, v6

    goto :goto_6

    .line 201
    .end local v45    # "oldSharedUserSetting":Lcom/android/server/pm/SharedUserSetting;
    .restart local v5    # "oldSharedUserSetting":Lcom/android/server/pm/SharedUserSetting;
    :cond_8
    move-object/from16 v45, v5

    .end local v5    # "oldSharedUserSetting":Lcom/android/server/pm/SharedUserSetting;
    .restart local v45    # "oldSharedUserSetting":Lcom/android/server/pm/SharedUserSetting;
    move-object/from16 v30, v6

    .line 206
    .end local v6    # "usesSdkLibraries":[Ljava/lang/String;
    .local v30, "usesSdkLibraries":[Ljava/lang/String;
    :goto_6
    const/4 v5, 0x0

    .line 207
    .local v5, "usesStaticLibraries":[Ljava/lang/String;
    invoke-interface {v3}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getUsesStaticLibraries()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_9

    .line 208
    invoke-interface {v3}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getUsesStaticLibraries()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    new-array v5, v6, [Ljava/lang/String;

    .line 209
    invoke-interface {v3}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getUsesStaticLibraries()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-object/from16 v33, v5

    goto :goto_7

    .line 207
    :cond_9
    move-object/from16 v33, v5

    .line 212
    .end local v5    # "usesStaticLibraries":[Ljava/lang/String;
    .local v33, "usesStaticLibraries":[Ljava/lang/String;
    :goto_7
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/pm/PackageManagerServiceInjector;->getDomainVerificationManagerInternal()Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;->generateNewId()Ljava/util/UUID;

    move-result-object v28

    .line 217
    .local v28, "newDomainSetId":Ljava/util/UUID;
    if-nez v2, :cond_a

    const/4 v5, 0x1

    goto :goto_8

    :cond_a
    move/from16 v5, v40

    :goto_8
    move/from16 v46, v5

    .line 218
    .local v46, "createNewPackage":Z
    if-eqz v46, :cond_f

    .line 219
    and-int/lit16 v5, v4, 0x2000

    if-eqz v5, :cond_b

    const/16 v26, 0x1

    goto :goto_9

    :cond_b
    move/from16 v26, v40

    .line 220
    .local v26, "instantApp":Z
    :goto_9
    const v5, 0x8000

    and-int/2addr v5, v4

    if-eqz v5, :cond_c

    const/16 v27, 0x1

    goto :goto_a

    :cond_c
    move/from16 v27, v40

    .line 221
    .local v27, "virtualPreload":Z
    :goto_a
    const/high16 v5, 0x8000000

    and-int/2addr v5, v4

    if-eqz v5, :cond_d

    const/4 v5, 0x1

    goto :goto_b

    :cond_d
    move/from16 v5, v40

    .line 226
    .local v5, "isStoppedSystemApp":Z
    :goto_b
    const/4 v6, 0x0

    invoke-static {v3, v6}, Lcom/android/server/pm/parsing/PackageInfoUtils;->appInfoFlags(Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/pm/pkg/PackageStateInternal;)I

    move-result v22

    .line 227
    .local v22, "pkgFlags":I
    invoke-static {v3, v6}, Lcom/android/server/pm/parsing/PackageInfoUtils;->appInfoPrivateFlags(Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/pm/pkg/PackageStateInternal;)I

    move-result v23

    .line 230
    .local v23, "pkgPrivateFlags":I
    move-object/from16 v16, v11

    .end local v11    # "destCodeFile":Ljava/io/File;
    .local v16, "destCodeFile":Ljava/io/File;
    invoke-interface {v3}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v11

    .line 232
    invoke-interface {v3}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getNativeLibraryRootDir()Ljava/lang/String;

    move-result-object v17

    .line 233
    invoke-static {v3}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->getRawPrimaryCpuAbi(Lcom/android/server/pm/pkg/AndroidPackage;)Ljava/lang/String;

    move-result-object v18

    .line 234
    invoke-static {v3}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->getRawSecondaryCpuAbi(Lcom/android/server/pm/pkg/AndroidPackage;)Ljava/lang/String;

    move-result-object v19

    .line 235
    invoke-interface {v3}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getLongVersionCode()J

    move-result-wide v20

    .line 237
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v29

    .line 238
    invoke-interface {v3}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getUsesSdkLibrariesVersionsMajor()[J

    move-result-object v31

    .line 239
    invoke-interface {v3}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getUsesSdkLibrariesOptional()[Z

    move-result-object v32

    .line 240
    invoke-interface {v3}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getUsesStaticLibrariesVersions()[J

    move-result-object v34

    invoke-interface {v3}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getMimeGroups()Ljava/util/Set;

    move-result-object v35

    .line 242
    invoke-interface {v3}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getTargetSdkVersion()I

    move-result v37

    invoke-interface {v3}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getRestrictUpdateHash()[B

    move-result-object v38

    .line 230
    const/16 v25, 0x1

    move-object/from16 v36, v28

    move/from16 v28, v5

    .end local v5    # "isStoppedSystemApp":Z
    .local v28, "isStoppedSystemApp":Z
    .local v36, "newDomainSetId":Ljava/util/UUID;
    invoke-static/range {v11 .. v38}, Lcom/android/server/pm/Settings;->createNewSetting(Ljava/lang/String;Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/PackageSetting;Ljava/lang/String;Lcom/android/server/pm/SharedUserSetting;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JIILandroid/os/UserHandle;ZZZZLcom/android/server/pm/UserManagerService;[Ljava/lang/String;[J[Z[Ljava/lang/String;[JLjava/util/Set;Ljava/util/UUID;I[B)Lcom/android/server/pm/PackageSetting;

    move-result-object v2

    .line 245
    move-object/from16 v32, v12

    move-object/from16 v34, v24

    move-object/from16 v25, v33

    move-object/from16 v28, v36

    move-object/from16 v33, v14

    move-object v14, v15

    .end local v12    # "originalPkgSetting":Lcom/android/server/pm/PackageSetting;
    .end local v15    # "sharedUserSetting":Lcom/android/server/pm/SharedUserSetting;
    .end local v24    # "user":Landroid/os/UserHandle;
    .end local v36    # "newDomainSetId":Ljava/util/UUID;
    .restart local v5    # "isStoppedSystemApp":Z
    .local v14, "sharedUserSetting":Lcom/android/server/pm/SharedUserSetting;
    .local v25, "usesStaticLibraries":[Ljava/lang/String;
    .local v28, "newDomainSetId":Ljava/util/UUID;
    .local v32, "originalPkgSetting":Lcom/android/server/pm/PackageSetting;
    .local v33, "realPkgName":Ljava/lang/String;
    .local v34, "user":Landroid/os/UserHandle;
    if-eqz v44, :cond_e

    .line 246
    const/4 v6, 0x1

    invoke-virtual {v2, v6}, Lcom/android/server/pm/PackageSetting;->setPendingRestore(Z)Lcom/android/server/pm/PackageSetting;

    .line 248
    .end local v5    # "isStoppedSystemApp":Z
    .end local v22    # "pkgFlags":I
    .end local v23    # "pkgPrivateFlags":I
    .end local v26    # "instantApp":Z
    .end local v27    # "virtualPreload":Z
    :cond_e
    move-object v11, v2

    move-object/from16 v12, v45

    goto/16 :goto_d

    .line 250
    .end local v16    # "destCodeFile":Ljava/io/File;
    .end local v25    # "usesStaticLibraries":[Ljava/lang/String;
    .end local v32    # "originalPkgSetting":Lcom/android/server/pm/PackageSetting;
    .end local v34    # "user":Landroid/os/UserHandle;
    .restart local v11    # "destCodeFile":Ljava/io/File;
    .restart local v12    # "originalPkgSetting":Lcom/android/server/pm/PackageSetting;
    .local v14, "realPkgName":Ljava/lang/String;
    .restart local v15    # "sharedUserSetting":Lcom/android/server/pm/SharedUserSetting;
    .restart local v24    # "user":Landroid/os/UserHandle;
    .local v33, "usesStaticLibraries":[Ljava/lang/String;
    :cond_f
    move-object/from16 v16, v11

    move-object/from16 v32, v12

    move-object/from16 v34, v24

    move-object/from16 v25, v33

    move-object/from16 v33, v14

    move-object v14, v15

    .end local v11    # "destCodeFile":Ljava/io/File;
    .end local v12    # "originalPkgSetting":Lcom/android/server/pm/PackageSetting;
    .end local v15    # "sharedUserSetting":Lcom/android/server/pm/SharedUserSetting;
    .end local v24    # "user":Landroid/os/UserHandle;
    .local v14, "sharedUserSetting":Lcom/android/server/pm/SharedUserSetting;
    .restart local v16    # "destCodeFile":Ljava/io/File;
    .restart local v25    # "usesStaticLibraries":[Ljava/lang/String;
    .restart local v32    # "originalPkgSetting":Lcom/android/server/pm/PackageSetting;
    .local v33, "realPkgName":Ljava/lang/String;
    .restart local v34    # "user":Landroid/os/UserHandle;
    new-instance v11, Lcom/android/server/pm/PackageSetting;

    invoke-direct {v11, v2}, Lcom/android/server/pm/PackageSetting;-><init>(Lcom/android/server/pm/PackageSetting;)V

    .line 253
    .end local v2    # "pkgSetting":Lcom/android/server/pm/PackageSetting;
    .local v11, "pkgSetting":Lcom/android/server/pm/PackageSetting;
    sget-object v2, Lcom/nothing/server/INtExtServiceFactory$ExtType;->NT_FORCE_FULL:Lcom/nothing/server/INtExtServiceFactory$ExtType;

    invoke-static {v2}, Lcom/nothing/server/NtExtServiceFactory;->getOrCreate(Lcom/nothing/server/INtExtServiceFactory$ExtType;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/INtForceFull;

    .line 254
    invoke-virtual {v11}, Lcom/android/server/pm/PackageSetting;->isForceFull()Z

    move-result v5

    invoke-interface {v2, v3, v5}, Lcom/android/server/pm/INtForceFull;->setMaxAspectRatio(Lcom/android/internal/pm/parsing/pkg/ParsedPackage;Z)V

    .line 256
    invoke-virtual {v11, v3}, Lcom/android/server/pm/PackageSetting;->setPkg(Lcom/android/server/pm/pkg/AndroidPackage;)Lcom/android/server/pm/PackageSetting;

    .line 257
    and-int/lit16 v2, v4, 0x400

    if-eqz v2, :cond_10

    const/16 v31, 0x1

    goto :goto_c

    :cond_10
    move/from16 v31, v40

    .line 264
    .local v31, "isDontKill":Z
    :goto_c
    nop

    .line 265
    move-object/from16 v15, v16

    .end local v16    # "destCodeFile":Ljava/io/File;
    .local v15, "destCodeFile":Ljava/io/File;
    invoke-interface {v3}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getNativeLibraryDir()Ljava/lang/String;

    move-result-object v16

    .line 266
    invoke-virtual {v11}, Lcom/android/server/pm/PackageSetting;->getPrimaryCpuAbi()Ljava/lang/String;

    move-result-object v17

    .line 267
    invoke-virtual {v11}, Lcom/android/server/pm/PackageSetting;->getSecondaryCpuAbi()Ljava/lang/String;

    move-result-object v18

    .line 268
    invoke-static {v3, v11}, Lcom/android/server/pm/parsing/PackageInfoUtils;->appInfoFlags(Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/pm/pkg/PackageStateInternal;)I

    move-result v19

    .line 269
    invoke-static {v3, v11}, Lcom/android/server/pm/parsing/PackageInfoUtils;->appInfoPrivateFlags(Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/pm/pkg/PackageStateInternal;)I

    move-result v20

    .line 270
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v21

    .line 271
    invoke-interface {v3}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getUsesSdkLibrariesVersionsMajor()[J

    move-result-object v23

    .line 272
    invoke-interface {v3}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getUsesSdkLibrariesOptional()[Z

    move-result-object v24

    .line 273
    invoke-interface {v3}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getUsesStaticLibrariesVersions()[J

    move-result-object v26

    .line 274
    invoke-interface {v3}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getMimeGroups()Ljava/util/Set;

    move-result-object v27

    .line 275
    invoke-interface {v3}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getTargetSdkVersion()I

    move-result v29

    move-object/from16 v22, v30

    .end local v30    # "usesSdkLibraries":[Ljava/lang/String;
    .local v22, "usesSdkLibraries":[Ljava/lang/String;
    invoke-interface {v3}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getRestrictUpdateHash()[B

    move-result-object v30

    .line 264
    move-object v12, v13

    move-object/from16 v13, v45

    .end local v45    # "oldSharedUserSetting":Lcom/android/server/pm/SharedUserSetting;
    .local v12, "disabledPkgSetting":Lcom/android/server/pm/PackageSetting;
    .local v13, "oldSharedUserSetting":Lcom/android/server/pm/SharedUserSetting;
    invoke-static/range {v11 .. v31}, Lcom/android/server/pm/Settings;->updatePackageSetting(Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/SharedUserSetting;Lcom/android/server/pm/SharedUserSetting;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILcom/android/server/pm/UserManagerService;[Ljava/lang/String;[J[Z[Ljava/lang/String;[JLjava/util/Set;Ljava/util/UUID;I[BZ)V

    move-object/from16 v16, v13

    move-object v13, v12

    move-object/from16 v12, v16

    move-object/from16 v16, v15

    move-object/from16 v30, v22

    .line 279
    .end local v15    # "destCodeFile":Ljava/io/File;
    .end local v22    # "usesSdkLibraries":[Ljava/lang/String;
    .end local v31    # "isDontKill":Z
    .local v12, "oldSharedUserSetting":Lcom/android/server/pm/SharedUserSetting;
    .local v13, "disabledPkgSetting":Lcom/android/server/pm/PackageSetting;
    .restart local v16    # "destCodeFile":Ljava/io/File;
    .restart local v30    # "usesSdkLibraries":[Ljava/lang/String;
    :goto_d
    if-eqz v46, :cond_11

    if-eqz v32, :cond_11

    .line 284
    invoke-virtual/range {v32 .. v32}, Lcom/android/server/pm/PackageSetting;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->setPackageName(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    .line 287
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "New package "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Lcom/android/server/pm/PackageSetting;->getRealName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " renamed to replace old package "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 288
    invoke-virtual {v11}, Lcom/android/server/pm/PackageSetting;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 289
    .local v2, "msg":Ljava/lang/String;
    const/4 v6, 0x5

    invoke-static {v6, v2}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 292
    .end local v2    # "msg":Ljava/lang/String;
    :cond_11
    if-nez v34, :cond_12

    move/from16 v2, v40

    goto :goto_e

    :cond_12
    invoke-virtual/range {v34 .. v34}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    :goto_e
    move v15, v2

    .line 294
    .local v15, "userId":I
    if-nez v46, :cond_15

    .line 295
    and-int/lit16 v2, v4, 0x2000

    if-eqz v2, :cond_13

    const/4 v2, 0x1

    goto :goto_f

    :cond_13
    move/from16 v2, v40

    .line 296
    .local v2, "instantApp":Z
    :goto_f
    and-int/lit16 v5, v4, 0x4000

    if-eqz v5, :cond_14

    const/4 v5, 0x1

    goto :goto_10

    :cond_14
    move/from16 v5, v40

    .line 297
    .local v5, "fullApp":Z
    :goto_10
    move-object/from16 v6, p1

    invoke-static {v6, v11, v15, v2, v5}, Lcom/android/server/pm/ScanPackageUtils;->setInstantAppForUser(Lcom/android/server/pm/PackageManagerServiceInjector;Lcom/android/server/pm/PackageSetting;IZZ)V

    goto :goto_11

    .line 294
    .end local v2    # "instantApp":Z
    .end local v5    # "fullApp":Z
    :cond_15
    move-object/from16 v6, p1

    .line 300
    :goto_11
    nop

    nop

    if-nez v13, :cond_16

    and-int/lit8 v2, v4, 0x4

    if-eqz v2, :cond_17

    if-eqz v11, :cond_17

    .line 302
    invoke-virtual {v11}, Lcom/android/server/pm/PackageSetting;->isSystem()Z

    move-result v2

    if-eqz v2, :cond_17

    .line 303
    :cond_16
    invoke-virtual {v11}, Lcom/android/server/pm/PackageSetting;->getPkgState()Lcom/android/server/pm/pkg/PackageStateUnserialized;

    move-result-object v2

    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Lcom/android/server/pm/pkg/PackageStateUnserialized;->setUpdatedSystemApp(Z)Lcom/android/server/pm/pkg/PackageStateUnserialized;

    .line 306
    :cond_17
    invoke-virtual {v11}, Lcom/android/server/pm/PackageSetting;->getTransientState()Lcom/android/server/pm/pkg/PackageStateUnserialized;

    move-result-object v2

    .line 307
    invoke-virtual {v6}, Lcom/android/server/pm/PackageManagerServiceInjector;->getCompatibility()Lcom/android/server/compat/PlatformCompat;

    move-result-object v5

    .line 306
    invoke-static {v11, v3, v14, v5}, Lcom/android/server/pm/SELinuxMMAC;->getSeInfo(Lcom/android/server/pm/pkg/PackageState;Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/pm/pkg/SharedUserApi;Lcom/android/server/compat/PlatformCompat;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/android/server/pm/pkg/PackageStateUnserialized;->setSeInfo(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateUnserialized;

    .line 309
    invoke-virtual {v11}, Lcom/android/server/pm/PackageSetting;->isSystem()Z

    move-result v2

    if-eqz v2, :cond_18

    .line 310
    invoke-static {v3}, Lcom/android/server/pm/ScanPackageUtils;->configurePackageComponents(Lcom/android/server/pm/pkg/AndroidPackage;)V

    .line 313
    :cond_18
    iget-object v2, v1, Lcom/android/server/pm/ScanRequest;->mCpuAbiOverride:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/server/pm/PackageManagerServiceUtils;->deriveAbiOverride(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 314
    .local v2, "cpuAbiOverride":Ljava/lang/String;
    move v5, v4

    .end local v4    # "scanFlags":I
    .local v5, "scanFlags":I
    invoke-virtual {v11}, Lcom/android/server/pm/PackageSetting;->isSystem()Z

    move-result v4

    .line 315
    .local v4, "isSystemApp":Z
    move/from16 v17, v5

    .end local v5    # "scanFlags":I
    .local v17, "scanFlags":I
    invoke-virtual {v11}, Lcom/android/server/pm/PackageSetting;->isUpdatedSystemApp()Z

    move-result v5

    .line 317
    .local v5, "isUpdatedSystemApp":Z
    move/from16 v18, v7

    .end local v7    # "isPlatformPackage":Z
    .local v18, "isPlatformPackage":Z
    invoke-static {}, Lcom/android/server/pm/ScanPackageUtils;->getAppLib32InstallDir()Ljava/io/File;

    move-result-object v7

    .line 320
    .local v7, "appLib32InstallDir":Ljava/io/File;
    if-nez v41, :cond_1e

    .line 321
    and-int/lit8 v19, v17, 0x4

    if-nez v19, :cond_1b

    .line 322
    if-eqz v10, :cond_1a

    .line 323
    const-string v1, "derivePackageAbi"

    move-object/from16 v19, v13

    move-object/from16 v20, v14

    .end local v13    # "disabledPkgSetting":Lcom/android/server/pm/PackageSetting;
    .end local v14    # "sharedUserSetting":Lcom/android/server/pm/SharedUserSetting;
    .local v19, "disabledPkgSetting":Lcom/android/server/pm/PackageSetting;
    .local v20, "sharedUserSetting":Lcom/android/server/pm/SharedUserSetting;
    const-wide/32 v13, 0x40000

    invoke-static {v13, v14, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 326
    nop

    .line 327
    move-object v6, v2

    move/from16 v1, v17

    move-object/from16 v2, v43

    .end local v17    # "scanFlags":I
    .end local v43    # "packageAbiHelper":Lcom/android/server/pm/PackageAbiHelper;
    .local v1, "scanFlags":I
    .local v2, "packageAbiHelper":Lcom/android/server/pm/PackageAbiHelper;
    .local v6, "cpuAbiOverride":Ljava/lang/String;
    :try_start_0
    invoke-interface/range {v2 .. v7}, Lcom/android/server/pm/PackageAbiHelper;->derivePackageAbi(Lcom/android/server/pm/pkg/AndroidPackage;ZZLjava/lang/String;Ljava/io/File;)Landroid/util/Pair;

    move-result-object v17
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move/from16 v47, v5

    move v5, v4

    move-object v4, v6

    move/from16 v6, v47

    .local v4, "cpuAbiOverride":Ljava/lang/String;
    .local v5, "isSystemApp":Z
    .local v6, "isUpdatedSystemApp":Z
    move-object/from16 v21, v17

    .line 333
    .local v21, "derivedAbi":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/server/pm/PackageAbiHelper$Abis;Lcom/android/server/pm/PackageAbiHelper$NativeLibraryPaths;>;"
    move-wide/from16 v22, v13

    move-object/from16 v13, v21

    .end local v21    # "derivedAbi":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/server/pm/PackageAbiHelper$Abis;Lcom/android/server/pm/PackageAbiHelper$NativeLibraryPaths;>;"
    .local v13, "derivedAbi":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/server/pm/PackageAbiHelper$Abis;Lcom/android/server/pm/PackageAbiHelper$NativeLibraryPaths;>;"
    :try_start_1
    iget-object v14, v13, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v14, Lcom/android/server/pm/PackageAbiHelper$Abis;

    invoke-virtual {v14, v3}, Lcom/android/server/pm/PackageAbiHelper$Abis;->applyTo(Lcom/android/internal/pm/parsing/pkg/ParsedPackage;)V

    .line 334
    iget-object v14, v13, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v14, Lcom/android/server/pm/PackageAbiHelper$NativeLibraryPaths;

    invoke-virtual {v14, v3}, Lcom/android/server/pm/PackageAbiHelper$NativeLibraryPaths;->applyTo(Lcom/android/internal/pm/parsing/pkg/ParsedPackage;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 336
    .end local v13    # "derivedAbi":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/server/pm/PackageAbiHelper$Abis;Lcom/android/server/pm/PackageAbiHelper$NativeLibraryPaths;>;"
    invoke-static/range {v22 .. v23}, Landroid/os/Trace;->traceEnd(J)V

    .line 337
    nop

    .line 343
    invoke-static {v3}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->getRawPrimaryCpuAbi(Lcom/android/server/pm/pkg/AndroidPackage;)Ljava/lang/String;

    move-result-object v13

    .line 345
    .local v13, "pkgRawPrimaryCpuAbi":Ljava/lang/String;
    if-eqz v5, :cond_19

    if-nez v6, :cond_19

    if-nez v13, :cond_19

    .line 346
    invoke-interface {v2, v3}, Lcom/android/server/pm/PackageAbiHelper;->getBundledAppAbis(Lcom/android/server/pm/pkg/AndroidPackage;)Lcom/android/server/pm/PackageAbiHelper$Abis;

    move-result-object v14

    .line 348
    .local v14, "abis":Lcom/android/server/pm/PackageAbiHelper$Abis;
    invoke-virtual {v14, v3}, Lcom/android/server/pm/PackageAbiHelper$Abis;->applyTo(Lcom/android/internal/pm/parsing/pkg/ParsedPackage;)V

    .line 349
    invoke-virtual {v14, v11}, Lcom/android/server/pm/PackageAbiHelper$Abis;->applyTo(Lcom/android/server/pm/PackageSetting;)V

    .line 350
    nop

    .line 351
    move/from16 v17, v10

    .end local v10    # "needToDeriveAbi":Z
    .local v17, "needToDeriveAbi":Z
    invoke-interface {v2, v3, v5, v6, v7}, Lcom/android/server/pm/PackageAbiHelper;->deriveNativeLibraryPaths(Lcom/android/server/pm/pkg/AndroidPackage;ZZLjava/io/File;)Lcom/android/server/pm/PackageAbiHelper$NativeLibraryPaths;

    move-result-object v10

    .line 353
    .local v10, "nativeLibraryPaths":Lcom/android/server/pm/PackageAbiHelper$NativeLibraryPaths;
    invoke-virtual {v10, v3}, Lcom/android/server/pm/PackageAbiHelper$NativeLibraryPaths;->applyTo(Lcom/android/internal/pm/parsing/pkg/ParsedPackage;)V

    goto :goto_12

    .line 345
    .end local v14    # "abis":Lcom/android/server/pm/PackageAbiHelper$Abis;
    .end local v17    # "needToDeriveAbi":Z
    .local v10, "needToDeriveAbi":Z
    :cond_19
    move/from16 v17, v10

    .line 355
    .end local v10    # "needToDeriveAbi":Z
    .end local v13    # "pkgRawPrimaryCpuAbi":Ljava/lang/String;
    .restart local v17    # "needToDeriveAbi":Z
    :goto_12
    goto :goto_14

    .line 336
    .end local v17    # "needToDeriveAbi":Z
    .restart local v10    # "needToDeriveAbi":Z
    :catchall_0
    move-exception v0

    move/from16 v17, v10

    .end local v10    # "needToDeriveAbi":Z
    .restart local v17    # "needToDeriveAbi":Z
    goto :goto_13

    .end local v17    # "needToDeriveAbi":Z
    .local v4, "isSystemApp":Z
    .local v5, "isUpdatedSystemApp":Z
    .local v6, "cpuAbiOverride":Ljava/lang/String;
    .restart local v10    # "needToDeriveAbi":Z
    :catchall_1
    move-exception v0

    move/from16 v17, v5

    move v5, v4

    move-object v4, v6

    move/from16 v6, v17

    move/from16 v17, v10

    move-wide/from16 v22, v13

    .end local v10    # "needToDeriveAbi":Z
    .local v4, "cpuAbiOverride":Ljava/lang/String;
    .local v5, "isSystemApp":Z
    .local v6, "isUpdatedSystemApp":Z
    .restart local v17    # "needToDeriveAbi":Z
    :goto_13
    invoke-static/range {v22 .. v23}, Landroid/os/Trace;->traceEnd(J)V

    .line 337
    throw v0

    .line 359
    .end local v1    # "scanFlags":I
    .end local v6    # "isUpdatedSystemApp":Z
    .end local v19    # "disabledPkgSetting":Lcom/android/server/pm/PackageSetting;
    .end local v20    # "sharedUserSetting":Lcom/android/server/pm/SharedUserSetting;
    .local v2, "cpuAbiOverride":Ljava/lang/String;
    .local v4, "isSystemApp":Z
    .local v5, "isUpdatedSystemApp":Z
    .restart local v10    # "needToDeriveAbi":Z
    .local v13, "disabledPkgSetting":Lcom/android/server/pm/PackageSetting;
    .local v14, "sharedUserSetting":Lcom/android/server/pm/SharedUserSetting;
    .local v17, "scanFlags":I
    .restart local v43    # "packageAbiHelper":Lcom/android/server/pm/PackageAbiHelper;
    :cond_1a
    move v6, v5

    move-object/from16 v19, v13

    move-object/from16 v20, v14

    move/from16 v1, v17

    move v5, v4

    move/from16 v17, v10

    move-object v4, v2

    move-object/from16 v2, v43

    .end local v10    # "needToDeriveAbi":Z
    .end local v13    # "disabledPkgSetting":Lcom/android/server/pm/PackageSetting;
    .end local v14    # "sharedUserSetting":Lcom/android/server/pm/SharedUserSetting;
    .end local v43    # "packageAbiHelper":Lcom/android/server/pm/PackageAbiHelper;
    .restart local v1    # "scanFlags":I
    .local v2, "packageAbiHelper":Lcom/android/server/pm/PackageAbiHelper;
    .local v4, "cpuAbiOverride":Ljava/lang/String;
    .local v5, "isSystemApp":Z
    .restart local v6    # "isUpdatedSystemApp":Z
    .local v17, "needToDeriveAbi":Z
    .restart local v19    # "disabledPkgSetting":Lcom/android/server/pm/PackageSetting;
    .restart local v20    # "sharedUserSetting":Lcom/android/server/pm/SharedUserSetting;
    invoke-interface {v3, v8}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->setPrimaryCpuAbi(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    move-result-object v10

    .line 360
    invoke-interface {v10, v9}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->setSecondaryCpuAbi(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    .line 362
    nop

    .line 363
    invoke-interface {v2, v3, v5, v6, v7}, Lcom/android/server/pm/PackageAbiHelper;->deriveNativeLibraryPaths(Lcom/android/server/pm/pkg/AndroidPackage;ZZLjava/io/File;)Lcom/android/server/pm/PackageAbiHelper$NativeLibraryPaths;

    move-result-object v10

    .line 365
    .local v10, "nativeLibraryPaths":Lcom/android/server/pm/PackageAbiHelper$NativeLibraryPaths;
    invoke-virtual {v10, v3}, Lcom/android/server/pm/PackageAbiHelper$NativeLibraryPaths;->applyTo(Lcom/android/internal/pm/parsing/pkg/ParsedPackage;)V

    .line 374
    .end local v10    # "nativeLibraryPaths":Lcom/android/server/pm/PackageAbiHelper$NativeLibraryPaths;
    goto :goto_14

    .line 376
    .end local v1    # "scanFlags":I
    .end local v6    # "isUpdatedSystemApp":Z
    .end local v19    # "disabledPkgSetting":Lcom/android/server/pm/PackageSetting;
    .end local v20    # "sharedUserSetting":Lcom/android/server/pm/SharedUserSetting;
    .local v2, "cpuAbiOverride":Ljava/lang/String;
    .local v4, "isSystemApp":Z
    .local v5, "isUpdatedSystemApp":Z
    .local v10, "needToDeriveAbi":Z
    .restart local v13    # "disabledPkgSetting":Lcom/android/server/pm/PackageSetting;
    .restart local v14    # "sharedUserSetting":Lcom/android/server/pm/SharedUserSetting;
    .local v17, "scanFlags":I
    .restart local v43    # "packageAbiHelper":Lcom/android/server/pm/PackageAbiHelper;
    :cond_1b
    move v6, v5

    move-object/from16 v19, v13

    move-object/from16 v20, v14

    move/from16 v1, v17

    move v5, v4

    move/from16 v17, v10

    move-object v4, v2

    move-object/from16 v2, v43

    .end local v10    # "needToDeriveAbi":Z
    .end local v13    # "disabledPkgSetting":Lcom/android/server/pm/PackageSetting;
    .end local v14    # "sharedUserSetting":Lcom/android/server/pm/SharedUserSetting;
    .end local v43    # "packageAbiHelper":Lcom/android/server/pm/PackageAbiHelper;
    .restart local v1    # "scanFlags":I
    .local v2, "packageAbiHelper":Lcom/android/server/pm/PackageAbiHelper;
    .local v4, "cpuAbiOverride":Ljava/lang/String;
    .local v5, "isSystemApp":Z
    .restart local v6    # "isUpdatedSystemApp":Z
    .local v17, "needToDeriveAbi":Z
    .restart local v19    # "disabledPkgSetting":Lcom/android/server/pm/PackageSetting;
    .restart local v20    # "sharedUserSetting":Lcom/android/server/pm/SharedUserSetting;
    and-int/lit16 v10, v1, 0x100

    if-eqz v10, :cond_1c

    .line 381
    invoke-virtual {v11}, Lcom/android/server/pm/PackageSetting;->getPrimaryCpuAbiLegacy()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v3, v10}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->setPrimaryCpuAbi(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    move-result-object v10

    .line 382
    invoke-virtual {v11}, Lcom/android/server/pm/PackageSetting;->getSecondaryCpuAbiLegacy()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v10, v13}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->setSecondaryCpuAbi(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    .line 389
    :cond_1c
    nop

    .line 390
    invoke-interface {v2, v3, v5, v6, v7}, Lcom/android/server/pm/PackageAbiHelper;->deriveNativeLibraryPaths(Lcom/android/server/pm/pkg/AndroidPackage;ZZLjava/io/File;)Lcom/android/server/pm/PackageAbiHelper$NativeLibraryPaths;

    move-result-object v10

    .line 392
    .local v10, "nativeLibraryPaths":Lcom/android/server/pm/PackageAbiHelper$NativeLibraryPaths;
    invoke-virtual {v10, v3}, Lcom/android/server/pm/PackageAbiHelper$NativeLibraryPaths;->applyTo(Lcom/android/internal/pm/parsing/pkg/ParsedPackage;)V

    .line 399
    .end local v10    # "nativeLibraryPaths":Lcom/android/server/pm/PackageAbiHelper$NativeLibraryPaths;
    :goto_14
    if-eqz v18, :cond_1f

    .line 400
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v10

    invoke-virtual {v10}, Ldalvik/system/VMRuntime;->is64Bit()Z

    move-result v10

    if-eqz v10, :cond_1d

    .line 401
    sget-object v10, Landroid/os/Build;->SUPPORTED_64_BIT_ABIS:[Ljava/lang/String;

    aget-object v10, v10, v40

    goto :goto_15

    :cond_1d
    sget-object v10, Landroid/os/Build;->SUPPORTED_32_BIT_ABIS:[Ljava/lang/String;

    aget-object v10, v10, v40

    .line 400
    :goto_15
    invoke-interface {v3, v10}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->setPrimaryCpuAbi(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    goto :goto_16

    .line 320
    .end local v1    # "scanFlags":I
    .end local v6    # "isUpdatedSystemApp":Z
    .end local v19    # "disabledPkgSetting":Lcom/android/server/pm/PackageSetting;
    .end local v20    # "sharedUserSetting":Lcom/android/server/pm/SharedUserSetting;
    .local v2, "cpuAbiOverride":Ljava/lang/String;
    .local v4, "isSystemApp":Z
    .local v5, "isUpdatedSystemApp":Z
    .local v10, "needToDeriveAbi":Z
    .restart local v13    # "disabledPkgSetting":Lcom/android/server/pm/PackageSetting;
    .restart local v14    # "sharedUserSetting":Lcom/android/server/pm/SharedUserSetting;
    .local v17, "scanFlags":I
    .restart local v43    # "packageAbiHelper":Lcom/android/server/pm/PackageAbiHelper;
    :cond_1e
    move v6, v5

    move-object/from16 v19, v13

    move-object/from16 v20, v14

    move/from16 v1, v17

    move v5, v4

    move/from16 v17, v10

    move-object v4, v2

    move-object/from16 v2, v43

    .line 409
    .end local v10    # "needToDeriveAbi":Z
    .end local v13    # "disabledPkgSetting":Lcom/android/server/pm/PackageSetting;
    .end local v14    # "sharedUserSetting":Lcom/android/server/pm/SharedUserSetting;
    .end local v43    # "packageAbiHelper":Lcom/android/server/pm/PackageAbiHelper;
    .restart local v1    # "scanFlags":I
    .local v2, "packageAbiHelper":Lcom/android/server/pm/PackageAbiHelper;
    .local v4, "cpuAbiOverride":Ljava/lang/String;
    .local v5, "isSystemApp":Z
    .restart local v6    # "isUpdatedSystemApp":Z
    .local v17, "needToDeriveAbi":Z
    .restart local v19    # "disabledPkgSetting":Lcom/android/server/pm/PackageSetting;
    .restart local v20    # "sharedUserSetting":Lcom/android/server/pm/SharedUserSetting;
    :cond_1f
    :goto_16
    and-int/lit8 v10, v1, 0x1

    const-string v13, "PackageManager"

    if-nez v10, :cond_20

    and-int/lit8 v10, v1, 0x4

    if-eqz v10, :cond_20

    .line 410
    if-nez v4, :cond_20

    .line 411
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Ignoring persisted ABI override for package "

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 412
    invoke-interface {v3}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 411
    invoke-static {v13, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    :cond_20
    invoke-static {v3}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->getRawPrimaryCpuAbi(Lcom/android/server/pm/pkg/AndroidPackage;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v11, v10}, Lcom/android/server/pm/PackageSetting;->setPrimaryCpuAbi(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v10

    .line 417
    invoke-static {v3}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->getRawSecondaryCpuAbi(Lcom/android/server/pm/pkg/AndroidPackage;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v10, v14}, Lcom/android/server/pm/PackageSetting;->setSecondaryCpuAbi(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v10

    .line 418
    invoke-virtual {v10, v4}, Lcom/android/server/pm/PackageSetting;->setCpuAbiOverride(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    .line 429
    invoke-interface {v3}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getNativeLibraryRootDir()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v11, v10}, Lcom/android/server/pm/PackageSetting;->setLegacyNativeLibraryPath(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    .line 438
    sget v10, Landroid/system/OsConstants;->_SC_PAGESIZE:I

    invoke-static {v10}, Landroid/system/Os;->sysconf(I)J

    move-result-wide v21

    const-wide/16 v23, 0x4000

    cmp-long v10, v21, v23

    if-nez v10, :cond_21

    const/4 v10, 0x1

    goto :goto_17

    :cond_21
    move/from16 v10, v40

    .line 439
    .local v10, "is16KbDevice":Z
    :goto_17
    if-eqz v10, :cond_25

    .line 443
    invoke-interface {v3}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPageSizeAppCompatFlags()I

    move-result v14

    if-lez v14, :cond_22

    .line 445
    invoke-interface {v3}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPageSizeAppCompatFlags()I

    move-result v14

    invoke-virtual {v11, v14}, Lcom/android/server/pm/PackageSetting;->setPageSizeAppCompatFlags(I)Lcom/android/server/pm/PackageSetting;

    move/from16 v21, v1

    move-object/from16 v22, v4

    goto :goto_18

    .line 449
    :cond_22
    sget-object v14, Landroid/os/Build;->SUPPORTED_64_BIT_ABIS:[Ljava/lang/String;

    array-length v14, v14

    if-lez v14, :cond_24

    if-nez v5, :cond_24

    if-nez v41, :cond_24

    if-nez v18, :cond_24

    .line 453
    nop

    .line 456
    invoke-virtual {v11}, Lcom/android/server/pm/PackageSetting;->getLegacyNativeLibraryPath()Ljava/lang/String;

    move-result-object v14

    .line 457
    move/from16 v21, v1

    .end local v1    # "scanFlags":I
    .local v21, "scanFlags":I
    invoke-interface {v3}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->isNativeLibraryRootRequiresIsa()Z

    move-result v1

    .line 458
    move-object/from16 v22, v4

    .end local v4    # "cpuAbiOverride":Ljava/lang/String;
    .local v22, "cpuAbiOverride":Ljava/lang/String;
    invoke-virtual {v11}, Lcom/android/server/pm/PackageSetting;->getCpuAbiOverride()Ljava/lang/String;

    move-result-object v4

    .line 454
    invoke-interface {v2, v3, v14, v1, v4}, Lcom/android/server/pm/PackageAbiHelper;->checkPackageAlignment(Lcom/android/server/pm/pkg/AndroidPackage;Ljava/lang/String;ZLjava/lang/String;)I

    move-result v1

    .line 459
    .local v1, "mode":I
    if-ltz v1, :cond_23

    .line 460
    invoke-virtual {v11, v1}, Lcom/android/server/pm/PackageSetting;->setPageSizeAppCompatFlags(I)Lcom/android/server/pm/PackageSetting;

    goto :goto_18

    .line 462
    :cond_23
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Error occurred while checking alignment of package : "

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 463
    invoke-interface {v3}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 462
    invoke-static {v13, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_18

    .line 449
    .end local v21    # "scanFlags":I
    .end local v22    # "cpuAbiOverride":Ljava/lang/String;
    .local v1, "scanFlags":I
    .restart local v4    # "cpuAbiOverride":Ljava/lang/String;
    :cond_24
    move/from16 v21, v1

    move-object/from16 v22, v4

    .end local v1    # "scanFlags":I
    .end local v4    # "cpuAbiOverride":Ljava/lang/String;
    .restart local v21    # "scanFlags":I
    .restart local v22    # "cpuAbiOverride":Ljava/lang/String;
    goto :goto_18

    .line 439
    .end local v21    # "scanFlags":I
    .end local v22    # "cpuAbiOverride":Ljava/lang/String;
    .restart local v1    # "scanFlags":I
    .restart local v4    # "cpuAbiOverride":Ljava/lang/String;
    :cond_25
    move/from16 v21, v1

    move-object/from16 v22, v4

    .line 469
    .end local v1    # "scanFlags":I
    .end local v4    # "cpuAbiOverride":Ljava/lang/String;
    .restart local v21    # "scanFlags":I
    .restart local v22    # "cpuAbiOverride":Ljava/lang/String;
    :goto_18
    and-int/lit8 v1, v21, 0x10

    if-nez v1, :cond_26

    if-eqz v12, :cond_26

    .line 476
    nop

    .line 478
    invoke-virtual {v12}, Lcom/android/server/pm/SharedUserSetting;->getPackageStates()Landroid/util/ArraySet;

    move-result-object v1

    .line 477
    invoke-interface {v2, v1, v3}, Lcom/android/server/pm/PackageAbiHelper;->getAdjustedAbiForSharedUser(Landroid/util/ArraySet;Lcom/android/server/pm/pkg/AndroidPackage;)Ljava/lang/String;

    move-result-object v1

    .line 476
    invoke-static {v12, v3, v1}, Lcom/android/server/pm/ScanPackageUtils;->applyAdjustedAbiToSharedUser(Lcom/android/server/pm/SharedUserSetting;Lcom/android/internal/pm/parsing/pkg/ParsedPackage;Ljava/lang/String;)Ljava/util/List;

    move-result-object v39

    .line 481
    :cond_26
    nop

    nop

    if-eqz p2, :cond_27

    invoke-interface {v3}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getRequestedPermissions()Ljava/util/Set;

    move-result-object v1

    .line 482
    const-string v4, "android.permission.FACTORY_TEST"

    invoke-interface {v1, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_27

    const/4 v1, 0x1

    goto :goto_19

    :cond_27
    move/from16 v1, v40

    .line 481
    :goto_19
    invoke-interface {v3, v1}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->setFactoryTest(Z)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    .line 484
    if-eqz v5, :cond_28

    .line 485
    const/4 v1, 0x1

    invoke-virtual {v11, v1}, Lcom/android/server/pm/PackageSetting;->setIsOrphaned(Z)Lcom/android/server/pm/PackageSetting;

    goto :goto_1a

    .line 484
    :cond_28
    const/4 v1, 0x1

    .line 489
    :goto_1a
    invoke-interface {v3}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->isDebuggable()Z

    move-result v4

    invoke-virtual {v11, v4}, Lcom/android/server/pm/PackageSetting;->setDebuggable(Z)Lcom/android/server/pm/PackageSetting;

    .line 490
    invoke-interface {v3}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getBaseRevisionCode()I

    move-result v4

    invoke-virtual {v11, v4}, Lcom/android/server/pm/PackageSetting;->setBaseRevisionCode(I)Lcom/android/server/pm/PackageSetting;

    .line 493
    move v4, v5

    move v14, v6

    .end local v5    # "isSystemApp":Z
    .end local v6    # "isUpdatedSystemApp":Z
    .local v4, "isSystemApp":Z
    .local v14, "isUpdatedSystemApp":Z
    invoke-static {v3}, Lcom/android/server/pm/PackageManagerServiceUtils;->getLastModifiedTime(Lcom/android/server/pm/pkg/AndroidPackage;)J

    move-result-wide v5

    .line 494
    .local v5, "scanFileTime":J
    nop

    .line 495
    invoke-virtual {v11}, Lcom/android/server/pm/PackageSetting;->getUserStates()Landroid/util/SparseArray;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lcom/android/server/pm/pkg/PackageStateUtils;->getEarliestFirstInstallTime(Landroid/util/SparseArray;)J

    move-result-wide v23

    .line 496
    .local v23, "earliestFirstInstallTime":J
    const-wide/16 v26, 0x0

    cmp-long v29, p3, v26

    if-eqz v29, :cond_2a

    .line 497
    cmp-long v26, v23, v26

    if-nez v26, :cond_29

    .line 498
    move-object/from16 v29, v9

    move/from16 v31, v10

    move-wide/from16 v9, p3

    .end local v9    # "secondaryCpuAbiFromSettings":Ljava/lang/String;
    .end local v10    # "is16KbDevice":Z
    .local v29, "secondaryCpuAbiFromSettings":Ljava/lang/String;
    .local v31, "is16KbDevice":Z
    invoke-virtual {v11, v9, v10, v15}, Lcom/android/server/pm/PackageSetting;->setFirstInstallTime(JI)Lcom/android/server/pm/PackageSetting;

    move-result-object v1

    .line 499
    invoke-virtual {v1, v9, v10}, Lcom/android/server/pm/PackageSetting;->setLastUpdateTime(J)Lcom/android/server/pm/PackageSetting;

    goto :goto_1b

    .line 500
    .end local v29    # "secondaryCpuAbiFromSettings":Ljava/lang/String;
    .end local v31    # "is16KbDevice":Z
    .restart local v9    # "secondaryCpuAbiFromSettings":Ljava/lang/String;
    .restart local v10    # "is16KbDevice":Z
    :cond_29
    move-object/from16 v29, v9

    move/from16 v31, v10

    move-wide/from16 v9, p3

    .end local v9    # "secondaryCpuAbiFromSettings":Ljava/lang/String;
    .end local v10    # "is16KbDevice":Z
    .restart local v29    # "secondaryCpuAbiFromSettings":Ljava/lang/String;
    .restart local v31    # "is16KbDevice":Z
    and-int/lit8 v1, v21, 0x8

    if-eqz v1, :cond_2c

    .line 501
    invoke-virtual {v11, v9, v10}, Lcom/android/server/pm/PackageSetting;->setLastUpdateTime(J)Lcom/android/server/pm/PackageSetting;

    goto :goto_1b

    .line 503
    .end local v29    # "secondaryCpuAbiFromSettings":Ljava/lang/String;
    .end local v31    # "is16KbDevice":Z
    .restart local v9    # "secondaryCpuAbiFromSettings":Ljava/lang/String;
    .restart local v10    # "is16KbDevice":Z
    :cond_2a
    move-object/from16 v29, v9

    move/from16 v31, v10

    move-wide/from16 v9, p3

    .end local v9    # "secondaryCpuAbiFromSettings":Ljava/lang/String;
    .end local v10    # "is16KbDevice":Z
    .restart local v29    # "secondaryCpuAbiFromSettings":Ljava/lang/String;
    .restart local v31    # "is16KbDevice":Z
    cmp-long v1, v23, v26

    if-nez v1, :cond_2b

    .line 505
    invoke-virtual {v11, v5, v6, v15}, Lcom/android/server/pm/PackageSetting;->setFirstInstallTime(JI)Lcom/android/server/pm/PackageSetting;

    move-result-object v1

    .line 506
    invoke-virtual {v1, v5, v6}, Lcom/android/server/pm/PackageSetting;->setLastUpdateTime(J)Lcom/android/server/pm/PackageSetting;

    goto :goto_1b

    .line 507
    :cond_2b
    and-int/lit8 v1, v42, 0x10

    if-eqz v1, :cond_2c

    .line 508
    invoke-virtual {v11}, Lcom/android/server/pm/PackageSetting;->getLastModifiedTime()J

    move-result-wide v26

    cmp-long v1, v5, v26

    if-eqz v1, :cond_2c

    .line 511
    invoke-virtual {v11, v5, v6}, Lcom/android/server/pm/PackageSetting;->setLastUpdateTime(J)Lcom/android/server/pm/PackageSetting;

    .line 514
    :cond_2c
    :goto_1b
    invoke-virtual {v11, v5, v6}, Lcom/android/server/pm/PackageSetting;->setLastModifiedTime(J)Lcom/android/server/pm/PackageSetting;

    .line 516
    invoke-virtual {v11, v3}, Lcom/android/server/pm/PackageSetting;->setPkg(Lcom/android/server/pm/pkg/AndroidPackage;)Lcom/android/server/pm/PackageSetting;

    move-result-object v1

    .line 517
    move-object/from16 v43, v2

    .end local v2    # "packageAbiHelper":Lcom/android/server/pm/PackageAbiHelper;
    .restart local v43    # "packageAbiHelper":Lcom/android/server/pm/PackageAbiHelper;
    invoke-static {v3, v11}, Lcom/android/server/pm/parsing/PackageInfoUtils;->appInfoFlags(Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/pm/pkg/PackageStateInternal;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/server/pm/SettingBase;->setFlags(I)Lcom/android/server/pm/SettingBase;

    move-result-object v1

    .line 518
    invoke-static {v3, v11}, Lcom/android/server/pm/parsing/PackageInfoUtils;->appInfoPrivateFlags(Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/pm/pkg/PackageStateInternal;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/server/pm/SettingBase;->setPrivateFlags(I)Lcom/android/server/pm/SettingBase;

    .line 519
    invoke-interface {v3}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getLongVersionCode()J

    move-result-wide v1

    invoke-virtual {v11}, Lcom/android/server/pm/PackageSetting;->getVersionCode()J

    move-result-wide v26

    cmp-long v1, v1, v26

    if-eqz v1, :cond_2d

    .line 520
    invoke-interface {v3}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getLongVersionCode()J

    move-result-wide v1

    invoke-virtual {v11, v1, v2}, Lcom/android/server/pm/PackageSetting;->setLongVersionCode(J)Lcom/android/server/pm/PackageSetting;

    .line 523
    :cond_2d
    invoke-interface {v3}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getVolumeUuid()Ljava/lang/String;

    move-result-object v1

    .line 524
    .local v1, "volumeUuid":Ljava/lang/String;
    invoke-virtual {v11}, Lcom/android/server/pm/PackageSetting;->getVolumeUuid()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2f

    .line 525
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v26, v4

    .end local v4    # "isSystemApp":Z
    .local v26, "isSystemApp":Z
    const-string v4, "Update"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 526
    invoke-virtual {v11}, Lcom/android/server/pm/PackageSetting;->isSystem()Z

    move-result v4

    if-eqz v4, :cond_2e

    const-string v4, " system"

    goto :goto_1c

    :cond_2e
    const-string v4, ""

    :goto_1c
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " package "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 527
    invoke-interface {v3}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " volume from "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 528
    invoke-virtual {v11}, Lcom/android/server/pm/PackageSetting;->getVolumeUuid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 525
    invoke-static {v13, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    invoke-virtual {v11, v1}, Lcom/android/server/pm/PackageSetting;->setVolumeUuid(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    goto :goto_1d

    .line 524
    .end local v26    # "isSystemApp":Z
    .restart local v4    # "isSystemApp":Z
    :cond_2f
    move/from16 v26, v4

    .line 532
    .end local v4    # "isSystemApp":Z
    .restart local v26    # "isSystemApp":Z
    :goto_1d
    invoke-interface {v3}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->isLeavingSharedUser()Z

    move-result v0

    invoke-virtual {v11, v0}, Lcom/android/server/pm/PackageSetting;->setLeavingSharedUser(Z)Lcom/android/server/pm/PackageSetting;

    .line 534
    const/4 v0, 0x0

    .line 535
    .local v0, "sdkLibraryInfo":Landroid/content/pm/SharedLibraryInfo;
    invoke-interface {v3}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getSdkLibraryName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_30

    .line 536
    invoke-static {v3}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->createSharedLibraryForSdk(Lcom/android/server/pm/pkg/AndroidPackage;)Landroid/content/pm/SharedLibraryInfo;

    move-result-object v0

    .line 538
    :cond_30
    const/4 v2, 0x0

    .line 539
    .local v2, "staticSharedLibraryInfo":Landroid/content/pm/SharedLibraryInfo;
    invoke-interface {v3}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getStaticSharedLibraryName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_31

    .line 540
    nop

    .line 541
    invoke-static {v3}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->createSharedLibraryForStatic(Lcom/android/server/pm/pkg/AndroidPackage;)Landroid/content/pm/SharedLibraryInfo;

    move-result-object v2

    .line 543
    :cond_31
    const/4 v4, 0x0

    .line 544
    .local v4, "dynamicSharedLibraryInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/SharedLibraryInfo;>;"
    invoke-interface {v3}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getLibraryNames()Ljava/util/List;

    move-result-object v13

    invoke-static {v13}, Lcom/android/internal/util/ArrayUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v13

    if-nez v13, :cond_32

    .line 545
    new-instance v13, Ljava/util/ArrayList;

    invoke-interface {v3}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getLibraryNames()Ljava/util/List;

    move-result-object v27

    move-object/from16 v35, v0

    .end local v0    # "sdkLibraryInfo":Landroid/content/pm/SharedLibraryInfo;
    .local v35, "sdkLibraryInfo":Landroid/content/pm/SharedLibraryInfo;
    invoke-interface/range {v27 .. v27}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v13, v0}, Ljava/util/ArrayList;-><init>(I)V

    move-object v4, v13

    .line 546
    invoke-interface {v3}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getLibraryNames()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    nop

    if-eqz v13, :cond_33

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 547
    .local v13, "name":Ljava/lang/String;
    nop

    .line 548
    move-object/from16 v27, v0

    invoke-static {v3, v13}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->createSharedLibraryForDynamic(Lcom/android/server/pm/pkg/AndroidPackage;Ljava/lang/String;)Landroid/content/pm/SharedLibraryInfo;

    move-result-object v0

    .line 547
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 549
    .end local v13    # "name":Ljava/lang/String;
    move-object/from16 v0, v27

    goto :goto_1e

    .line 544
    .end local v35    # "sdkLibraryInfo":Landroid/content/pm/SharedLibraryInfo;
    .restart local v0    # "sdkLibraryInfo":Landroid/content/pm/SharedLibraryInfo;
    :cond_32
    move-object/from16 v35, v0

    .line 552
    .end local v0    # "sdkLibraryInfo":Landroid/content/pm/SharedLibraryInfo;
    .restart local v35    # "sdkLibraryInfo":Landroid/content/pm/SharedLibraryInfo;
    :cond_33
    new-instance v0, Lcom/android/server/pm/ScanResult;

    if-nez v46, :cond_34

    const/16 v40, 0x1

    :cond_34
    move-wide/from16 v36, v5

    .end local v5    # "scanFileTime":J
    .local v36, "scanFileTime":J
    const/4 v5, -0x1

    move-object/from16 v27, v7

    move-object v13, v8

    move-object/from16 v6, v35

    move-object/from16 v35, v1

    move-object v7, v2

    move-object v8, v4

    move-object v2, v11

    move/from16 v4, v40

    move-object/from16 v1, p0

    move-object v11, v3

    move-object/from16 v3, v39

    .end local v1    # "volumeUuid":Ljava/lang/String;
    .end local v4    # "dynamicSharedLibraryInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/SharedLibraryInfo;>;"
    .end local v39    # "changedAbiCodePath":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v2, "pkgSetting":Lcom/android/server/pm/PackageSetting;
    .local v3, "changedAbiCodePath":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v6, "sdkLibraryInfo":Landroid/content/pm/SharedLibraryInfo;
    .local v7, "staticSharedLibraryInfo":Landroid/content/pm/SharedLibraryInfo;
    .local v8, "dynamicSharedLibraryInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/SharedLibraryInfo;>;"
    .local v11, "parsedPackage":Lcom/android/internal/pm/parsing/pkg/ParsedPackage;
    .local v13, "primaryCpuAbiFromSettings":Ljava/lang/String;
    .local v27, "appLib32InstallDir":Ljava/io/File;
    .local v35, "volumeUuid":Ljava/lang/String;
    invoke-direct/range {v0 .. v8}, Lcom/android/server/pm/ScanResult;-><init>(Lcom/android/server/pm/ScanRequest;Lcom/android/server/pm/PackageSetting;Ljava/util/List;ZILandroid/content/pm/SharedLibraryInfo;Landroid/content/pm/SharedLibraryInfo;Ljava/util/List;)V

    return-object v0
.end method

.method public static setInstantAppForUser(Lcom/android/server/pm/PackageManagerServiceInjector;Lcom/android/server/pm/PackageSetting;IZZ)V
    .locals 7
    .param p0, "injector"    # Lcom/android/server/pm/PackageManagerServiceInjector;
    .param p1, "pkgSetting"    # Lcom/android/server/pm/PackageSetting;
    .param p2, "userId"    # I
    .param p3, "instantApp"    # Z
    .param p4, "fullApp"    # Z

    .line 1094
    if-nez p3, :cond_0

    if-nez p4, :cond_0

    .line 1095
    return-void

    .line 1097
    :cond_0
    const/4 v0, -0x1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p2, v0, :cond_2

    .line 1098
    if-eqz p3, :cond_1

    invoke-virtual {p1, p2}, Lcom/android/server/pm/PackageSetting;->getInstantApp(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1099
    invoke-virtual {p1, v2, p2}, Lcom/android/server/pm/PackageSetting;->setInstantApp(ZI)V

    goto :goto_2

    .line 1100
    :cond_1
    if-eqz p4, :cond_5

    invoke-virtual {p1, p2}, Lcom/android/server/pm/PackageSetting;->getInstantApp(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1101
    invoke-virtual {p1, v1, p2}, Lcom/android/server/pm/PackageSetting;->setInstantApp(ZI)V

    goto :goto_2

    .line 1104
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerServiceInjector;->getUserManagerInternal()Lcom/android/server/pm/UserManagerInternal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/pm/UserManagerInternal;->getUserIds()[I

    move-result-object v0

    array-length v3, v0

    move v4, v1

    :goto_0
    nop

    if-ge v4, v3, :cond_5

    aget v5, v0, v4

    .line 1105
    .local v5, "currentUserId":I
    if-eqz p3, :cond_3

    invoke-virtual {p1, v5}, Lcom/android/server/pm/PackageSetting;->getInstantApp(I)Z

    move-result v6

    if-nez v6, :cond_3

    .line 1106
    invoke-virtual {p1, v2, v5}, Lcom/android/server/pm/PackageSetting;->setInstantApp(ZI)V

    goto :goto_1

    .line 1107
    :cond_3
    if-eqz p4, :cond_4

    invoke-virtual {p1, v5}, Lcom/android/server/pm/PackageSetting;->getInstantApp(I)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1108
    invoke-virtual {p1, v1, v5}, Lcom/android/server/pm/PackageSetting;->setInstantApp(ZI)V

    .line 1104
    .end local v5    # "currentUserId":I
    :cond_4
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1112
    :cond_5
    :goto_2
    return-void
.end method
