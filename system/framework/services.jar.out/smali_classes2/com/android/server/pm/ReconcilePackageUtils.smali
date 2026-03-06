.class final Lcom/android/server/pm/ReconcilePackageUtils;
.super Ljava/lang/Object;
.source "ReconcilePackageUtils.java"


# static fields
.field private static final ALLOW_NON_PRELOADS_SYSTEM_SHAREDUIDS:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 61
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-nez v0, :cond_0

    .line 62
    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/android/server/pm/ReconcilePackageUtils;->ALLOW_NON_PRELOADS_SYSTEM_SHAREDUIDS:Z

    .line 61
    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isCompatSignatureUpdateNeeded(Lcom/android/server/pm/Settings$VersionInfo;)Z
    .locals 2
    .param p0, "ver"    # Lcom/android/server/pm/Settings$VersionInfo;

    .line 346
    iget v0, p0, Lcom/android/server/pm/Settings$VersionInfo;->databaseVersion:I

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isRecoverSignatureUpdateNeeded(Lcom/android/server/pm/Settings$VersionInfo;)Z
    .locals 2
    .param p0, "ver"    # Lcom/android/server/pm/Settings$VersionInfo;

    .line 350
    iget v0, p0, Lcom/android/server/pm/Settings$VersionInfo;->databaseVersion:I

    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static reconcilePackages(Ljava/util/List;Ljava/util/Map;Ljava/util/Map;Lcom/android/server/pm/SharedLibrariesImpl;Lcom/android/server/pm/KeySetManagerService;Lcom/android/server/pm/Settings;Lcom/android/server/SystemConfig;)Ljava/util/List;
    .locals 38
    .param p3, "sharedLibraries"    # Lcom/android/server/pm/SharedLibrariesImpl;
    .param p4, "ksms"    # Lcom/android/server/pm/KeySetManagerService;
    .param p5, "settings"    # Lcom/android/server/pm/Settings;
    .param p6, "systemConfig"    # Lcom/android/server/SystemConfig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/pm/InstallRequest;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/pkg/AndroidPackage;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/Settings$VersionInfo;",
            ">;",
            "Lcom/android/server/pm/SharedLibrariesImpl;",
            "Lcom/android/server/pm/KeySetManagerService;",
            "Lcom/android/server/pm/Settings;",
            "Lcom/android/server/SystemConfig;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/server/pm/ReconciledPackage;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/ReconcileFailure;
        }
    .end annotation

    .line 71
    .local p0, "installRequests":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/InstallRequest;>;"
    .local p1, "allPackages":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/pm/pkg/AndroidPackage;>;"
    .local p2, "versionInfos":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/pm/Settings$VersionInfo;>;"
    move-object/from16 v2, p1

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    const-string v11, "PackageManager"

    new-instance v0, Ljava/util/ArrayList;

    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    move-object v12, v0

    .line 74
    .local v12, "result":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/ReconciledPackage;>;"
    new-instance v0, Landroid/util/ArrayMap;

    .line 75
    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v1

    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v3

    add-int/2addr v1, v3

    invoke-direct {v0, v1}, Landroid/util/ArrayMap;-><init>(I)V

    move-object v13, v0

    .line 77
    .local v13, "combinedPackages":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/pm/pkg/AndroidPackage;>;"
    invoke-virtual {v13, v2}, Landroid/util/ArrayMap;->putAll(Ljava/util/Map;)V

    .line 79
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    move-object v14, v0

    .line 82
    .local v14, "incomingSharedLibraries":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/utils/WatchedLongSparseArray<Landroid/content/pm/SharedLibraryInfo;>;>;"
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/InstallRequest;

    .line 83
    .local v1, "installRequest":Lcom/android/server/pm/InstallRequest;
    invoke-virtual {v1}, Lcom/android/server/pm/InstallRequest;->onReconcileStarted()V

    .line 86
    invoke-virtual {v1}, Lcom/android/server/pm/InstallRequest;->getScannedPackageSetting()Lcom/android/server/pm/PackageSetting;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/pm/PackageSetting;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 87
    invoke-virtual {v1}, Lcom/android/server/pm/InstallRequest;->getParsedPackage()Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    move-result-object v4

    .line 86
    invoke-virtual {v13, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    nop

    .line 91
    invoke-virtual {v9, v1}, Lcom/android/server/pm/SharedLibrariesImpl;->getAllowedSharedLibInfos(Lcom/android/server/pm/InstallRequest;)Ljava/util/List;

    move-result-object v3

    .line 92
    .local v3, "allowedSharedLibInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/SharedLibraryInfo;>;"
    if-eqz v3, :cond_1

    .line 93
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    nop

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/SharedLibraryInfo;

    .line 94
    .local v5, "info":Landroid/content/pm/SharedLibraryInfo;
    invoke-static {v14, v5}, Lcom/android/server/pm/SharedLibraryUtils;->addSharedLibraryToPackageVersionMap(Ljava/util/Map;Landroid/content/pm/SharedLibraryInfo;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 101
    .end local v5    # "info":Landroid/content/pm/SharedLibraryInfo;
    goto :goto_1

    .line 96
    .restart local v5    # "info":Landroid/content/pm/SharedLibraryInfo;
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Shared Library "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    invoke-virtual {v5}, Landroid/content/pm/SharedLibraryInfo;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " is being installed twice in this set!"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 96
    const/4 v4, -0x6

    invoke-static {v0, v4}, Lcom/android/server/pm/ReconcileFailure;->ofInternalError(Ljava/lang/String;I)Lcom/android/server/pm/ReconcileFailure;

    move-result-object v0

    throw v0

    .line 103
    .end local v1    # "installRequest":Lcom/android/server/pm/InstallRequest;
    .end local v3    # "allowedSharedLibInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/SharedLibraryInfo;>;"
    .end local v5    # "info":Landroid/content/pm/SharedLibraryInfo;
    :cond_1
    goto :goto_0

    .line 105
    :cond_2
    const-string v0, "android"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Lcom/android/server/pm/pkg/AndroidPackage;

    .line 107
    .local v15, "systemPackage":Lcom/android/server/pm/pkg/AndroidPackage;
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_2
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/android/server/pm/InstallRequest;

    .line 108
    .local v3, "installRequest":Lcom/android/server/pm/InstallRequest;
    invoke-virtual {v3}, Lcom/android/server/pm/InstallRequest;->getParsedPackage()Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 109
    .local v1, "installPackageName":Ljava/lang/String;
    nop

    .line 110
    invoke-virtual {v9, v3}, Lcom/android/server/pm/SharedLibrariesImpl;->getAllowedSharedLibInfos(Lcom/android/server/pm/InstallRequest;)Ljava/util/List;

    move-result-object v5

    .line 114
    .local v5, "allowedSharedLibInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/SharedLibraryInfo;>;"
    invoke-virtual {v3}, Lcom/android/server/pm/InstallRequest;->isInstallReplace()Z

    move-result v0

    const/4 v4, 0x0

    const/4 v6, 0x1

    if-eqz v0, :cond_6

    invoke-virtual {v3}, Lcom/android/server/pm/InstallRequest;->isInstallSystem()Z

    move-result v0

    if-nez v0, :cond_6

    .line 115
    invoke-virtual {v3}, Lcom/android/server/pm/InstallRequest;->getScanFlags()I

    move-result v0

    and-int/lit16 v0, v0, 0x400

    if-nez v0, :cond_3

    move v0, v6

    goto :goto_3

    :cond_3
    const/4 v0, 0x0

    .line 116
    .local v0, "killApp":Z
    :goto_3
    nop

    .line 117
    if-eqz v0, :cond_4

    const/4 v8, 0x0

    goto :goto_4

    :cond_4
    const/16 v8, 0x8

    :goto_4
    or-int/2addr v8, v6

    .line 118
    .local v8, "deleteFlags":I
    nop

    .line 119
    invoke-virtual {v3}, Lcom/android/server/pm/InstallRequest;->getRemovedInfo()Lcom/android/server/pm/PackageRemovedInfo;

    move-result-object v6

    .line 120
    invoke-virtual {v3}, Lcom/android/server/pm/InstallRequest;->getOriginalPackageSetting()Lcom/android/server/pm/PackageSetting;

    move-result-object v7

    .line 121
    move/from16 v19, v0

    .end local v0    # "killApp":Z
    .local v19, "killApp":Z
    invoke-virtual {v3}, Lcom/android/server/pm/InstallRequest;->getDisabledPackageSetting()Lcom/android/server/pm/PackageSetting;

    move-result-object v0

    .line 118
    invoke-static {v6, v7, v0, v8, v4}, Lcom/android/server/pm/DeletePackageHelper;->mayDeletePackageLocked(Lcom/android/server/pm/PackageRemovedInfo;Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/PackageSetting;ILandroid/os/UserHandle;)Lcom/android/server/pm/DeletePackageAction;

    move-result-object v0

    .line 123
    .local v0, "deletePackageAction":Lcom/android/server/pm/DeletePackageAction;
    if-eqz v0, :cond_5

    .line 128
    .end local v8    # "deleteFlags":I
    .end local v19    # "killApp":Z
    move-object v6, v0

    goto :goto_5

    .line 124
    .restart local v8    # "deleteFlags":I
    .restart local v19    # "killApp":Z
    :cond_5
    new-instance v4, Lcom/android/server/pm/ReconcileFailure;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "May not delete "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " to replace"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/16 v7, -0xa

    invoke-direct {v4, v7, v6}, Lcom/android/server/pm/ReconcileFailure;-><init>(ILjava/lang/String;)V

    throw v4

    .line 129
    .end local v0    # "deletePackageAction":Lcom/android/server/pm/DeletePackageAction;
    .end local v8    # "deleteFlags":I
    .end local v19    # "killApp":Z
    :cond_6
    const/4 v0, 0x0

    move-object v6, v0

    .line 132
    .local v6, "deletePackageAction":Lcom/android/server/pm/DeletePackageAction;
    :goto_5
    invoke-virtual {v3}, Lcom/android/server/pm/InstallRequest;->getScanFlags()I

    move-result v7

    .line 133
    .local v7, "scanFlags":I
    invoke-virtual {v3}, Lcom/android/server/pm/InstallRequest;->getParseFlags()I

    move-result v19

    .line 134
    .local v19, "parseFlags":I
    invoke-virtual {v3}, Lcom/android/server/pm/InstallRequest;->getParsedPackage()Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    move-result-object v8

    .line 135
    .local v8, "parsedPackage":Lcom/android/internal/pm/parsing/pkg/ParsedPackage;
    invoke-virtual {v3}, Lcom/android/server/pm/InstallRequest;->getDisabledPackageSetting()Lcom/android/server/pm/PackageSetting;

    move-result-object v22

    .line 137
    .local v22, "disabledPkgSetting":Lcom/android/server/pm/PackageSetting;
    invoke-virtual {v3}, Lcom/android/server/pm/InstallRequest;->getStaticSharedLibraryInfo()Landroid/content/pm/SharedLibraryInfo;

    move-result-object v0

    if-nez v0, :cond_7

    goto :goto_6

    .line 138
    :cond_7
    invoke-virtual {v9, v3}, Lcom/android/server/pm/SharedLibrariesImpl;->getStaticSharedLibLatestVersionSetting(Lcom/android/server/pm/InstallRequest;)Lcom/android/server/pm/PackageSetting;

    move-result-object v4

    :goto_6
    move-object/from16 v27, v4

    .line 141
    .local v27, "lastStaticSharedLibSetting":Lcom/android/server/pm/PackageSetting;
    if-eqz v27, :cond_8

    .line 142
    move-object/from16 v20, v27

    goto :goto_7

    .line 143
    :cond_8
    invoke-virtual {v3}, Lcom/android/server/pm/InstallRequest;->getScannedPackageSetting()Lcom/android/server/pm/PackageSetting;

    move-result-object v0

    move-object/from16 v20, v0

    :goto_7
    move-object/from16 v4, v20

    .line 144
    .local v4, "signatureCheckPs":Lcom/android/server/pm/PackageSetting;
    const/16 v28, 0x0

    .line 145
    .local v28, "removeAppKeySetData":Z
    const/16 v29, 0x0

    .line 146
    .local v29, "sharedUserSignaturesChanged":Z
    const/4 v0, 0x0

    .line 147
    .local v0, "signingDetails":Landroid/content/pm/SigningDetails;
    if-eqz v8, :cond_9

    .line 148
    invoke-interface {v8}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object v0

    move-object/from16 v23, v0

    goto :goto_8

    .line 147
    :cond_9
    move-object/from16 v23, v0

    .line 150
    .end local v0    # "signingDetails":Landroid/content/pm/SigningDetails;
    .local v23, "signingDetails":Landroid/content/pm/SigningDetails;
    :goto_8
    and-int/lit8 v0, v19, 0x10

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_9

    :cond_a
    const/4 v0, 0x0

    :goto_9
    move/from16 v30, v0

    .line 152
    .local v30, "isSystemPackage":Z
    const/high16 v0, 0x4000000

    and-int/2addr v0, v7

    if-eqz v0, :cond_b

    const/16 v17, 0x1

    goto :goto_a

    :cond_b
    const/16 v17, 0x0

    .line 153
    .local v17, "isApex":Z
    :goto_a
    move-object/from16 v31, v15

    move-object/from16 v15, p5

    .end local v15    # "systemPackage":Lcom/android/server/pm/pkg/AndroidPackage;
    .local v31, "systemPackage":Lcom/android/server/pm/pkg/AndroidPackage;
    invoke-virtual {v15, v4}, Lcom/android/server/pm/Settings;->getSharedUserSettingLPr(Lcom/android/server/pm/PackageSetting;)Lcom/android/server/pm/SharedUserSetting;

    move-result-object v2

    .line 155
    .local v2, "sharedUserSetting":Lcom/android/server/pm/SharedUserSetting;
    invoke-virtual {v10, v4, v2, v7}, Lcom/android/server/pm/KeySetManagerService;->shouldCheckUpgradeKeySetLocked(Lcom/android/server/pm/pkg/PackageStateInternal;Lcom/android/server/pm/pkg/SharedUserApi;I)Z

    move-result v0

    move-object/from16 v21, v2

    .end local v2    # "sharedUserSetting":Lcom/android/server/pm/SharedUserSetting;
    .local v21, "sharedUserSetting":Lcom/android/server/pm/SharedUserSetting;
    const-string v2, " signature changed; retaining data."

    move-object/from16 v32, v3

    .end local v3    # "installRequest":Lcom/android/server/pm/InstallRequest;
    .local v32, "installRequest":Lcom/android/server/pm/InstallRequest;
    const-string v3, "System package "

    if-eqz v0, :cond_e

    .line 157
    invoke-virtual {v10, v4, v8}, Lcom/android/server/pm/KeySetManagerService;->checkUpgradeKeySetLocked(Lcom/android/server/pm/pkg/PackageStateInternal;Lcom/android/server/pm/pkg/AndroidPackage;)Z

    move-result v0

    if-eqz v0, :cond_c

    goto :goto_b

    .line 161
    :cond_c
    if-eqz v30, :cond_d

    .line 167
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v8}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 169
    .local v0, "msg":Ljava/lang/String;
    const/4 v2, 0x5

    invoke-static {v2, v0}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 170
    .end local v0    # "msg":Ljava/lang/String;
    nop

    .line 308
    :goto_b
    move-object/from16 v34, v1

    move-object/from16 v20, v4

    move-object/from16 v36, v6

    move-object/from16 v10, v21

    move-object/from16 v6, v23

    move-object/from16 v23, v5

    goto/16 :goto_13

    .line 162
    :cond_d
    new-instance v0, Lcom/android/server/pm/ReconcileFailure;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    invoke-interface {v8}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " upgrade keys do not match the previously installed version"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x7

    invoke-direct {v0, v3, v2}, Lcom/android/server/pm/ReconcileFailure;-><init>(ILjava/lang/String;)V

    throw v0

    .line 174
    :cond_e
    move-object/from16 v20, v4

    .end local v4    # "signatureCheckPs":Lcom/android/server/pm/PackageSetting;
    .local v20, "signatureCheckPs":Lcom/android/server/pm/PackageSetting;
    move-object/from16 v4, p2

    :try_start_0
    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/Settings$VersionInfo;

    .line 175
    .local v0, "versionInfo":Lcom/android/server/pm/Settings$VersionInfo;
    invoke-static {v0}, Lcom/android/server/pm/ReconcilePackageUtils;->isCompatSignatureUpdateNeeded(Lcom/android/server/pm/Settings$VersionInfo;)Z

    move-result v24

    .line 176
    .local v24, "compareCompat":Z
    invoke-static {v0}, Lcom/android/server/pm/ReconcilePackageUtils;->isRecoverSignatureUpdateNeeded(Lcom/android/server/pm/Settings$VersionInfo;)Z

    move-result v25

    .line 177
    .local v25, "compareRecover":Z
    invoke-virtual/range {v32 .. v32}, Lcom/android/server/pm/InstallRequest;->isRollback()Z

    move-result v26

    .line 178
    .local v26, "isRollback":Z
    nop

    .line 179
    invoke-static/range {v20 .. v26}, Lcom/android/server/pm/PackageManagerServiceUtils;->verifySignatures(Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/SharedUserSetting;Lcom/android/server/pm/PackageSetting;Landroid/content/pm/SigningDetails;ZZZ)Z

    move-result v33
    :try_end_0
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_0 .. :try_end_0} :catch_f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_e

    move-object/from16 v34, v1

    move-object/from16 v10, v21

    move-object/from16 v1, v23

    .line 184
    .end local v21    # "sharedUserSetting":Lcom/android/server/pm/SharedUserSetting;
    .end local v23    # "signingDetails":Landroid/content/pm/SigningDetails;
    .local v1, "signingDetails":Landroid/content/pm/SigningDetails;
    .local v10, "sharedUserSetting":Lcom/android/server/pm/SharedUserSetting;
    .local v33, "compatMatch":Z
    .local v34, "installPackageName":Ljava/lang/String;
    if-eqz v33, :cond_f

    .line 185
    const/16 v28, 0x1

    .line 188
    :cond_f
    :try_start_1
    invoke-virtual/range {v32 .. v32}, Lcom/android/server/pm/InstallRequest;->getScanFlags()I

    move-result v21
    :try_end_1
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_1 .. :try_end_1} :catch_d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_c

    and-int/lit8 v21, v21, 0x10

    if-nez v21, :cond_16

    .line 189
    :try_start_2
    invoke-virtual/range {v32 .. v32}, Lcom/android/server/pm/InstallRequest;->isInstallSystem()Z

    move-result v21

    if-nez v21, :cond_15

    if-nez v30, :cond_15

    if-nez v17, :cond_15

    if-eqz v1, :cond_15

    if-eqz v31, :cond_15

    .line 191
    invoke-interface/range {v31 .. v31}, Lcom/android/server/pm/pkg/AndroidPackage;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object v21

    if-eqz v21, :cond_14

    .line 192
    move-object/from16 v21, v0

    .end local v0    # "versionInfo":Lcom/android/server/pm/Settings$VersionInfo;
    .local v21, "versionInfo":Lcom/android/server/pm/Settings$VersionInfo;
    invoke-interface/range {v31 .. v31}, Lcom/android/server/pm/pkg/AndroidPackage;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object v0

    const/4 v4, 0x4

    invoke-virtual {v0, v1, v4}, Landroid/content/pm/SigningDetails;->checkCapability(Landroid/content/pm/SigningDetails;I)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 195
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Non-preload app associated with system signature: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    invoke-virtual/range {v20 .. v20}, Lcom/android/server/pm/PackageSetting;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 195
    invoke-static {v11, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    if-eqz v10, :cond_12

    sget-boolean v0, Lcom/android/server/pm/ReconcilePackageUtils;->ALLOW_NON_PRELOADS_SYSTEM_SHAREDUIDS:Z

    if-nez v0, :cond_12

    const-string v0, "com.nothing.livedemo"

    invoke-virtual/range {v20 .. v20}, Lcom/android/server/pm/PackageSetting;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 199
    invoke-virtual/range {p6 .. p6}, Lcom/android/server/SystemConfig;->getPackageToSharedUidAllowList()Landroid/util/ArrayMap;

    move-result-object v0

    .line 200
    .local v0, "allowList":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual/range {v20 .. v20}, Lcom/android/server/pm/PackageSetting;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;
    :try_end_2
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_6

    .line 201
    .local v4, "sharedUidName":Ljava/lang/String;
    if-eqz v4, :cond_10

    move-object/from16 v23, v5

    .end local v5    # "allowedSharedLibInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/SharedLibraryInfo;>;"
    .local v23, "allowedSharedLibInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/SharedLibraryInfo;>;"
    :try_start_3
    iget-object v5, v10, Lcom/android/server/pm/SharedUserSetting;->name:Ljava/lang/String;

    .line 202
    invoke-virtual {v5, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5
    :try_end_3
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_0

    if-eqz v5, :cond_11

    move-object/from16 v36, v6

    goto/16 :goto_c

    .line 299
    .end local v0    # "allowList":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v4    # "sharedUidName":Ljava/lang/String;
    .end local v21    # "versionInfo":Lcom/android/server/pm/Settings$VersionInfo;
    .end local v24    # "compareCompat":Z
    .end local v25    # "compareRecover":Z
    .end local v26    # "isRollback":Z
    .end local v33    # "compatMatch":Z
    :catch_0
    move-exception v0

    move-object/from16 v37, v1

    move-object/from16 v36, v6

    goto/16 :goto_11

    .line 246
    :catch_1
    move-exception v0

    move-object/from16 v37, v1

    move-object/from16 v36, v6

    goto/16 :goto_12

    .line 201
    .end local v23    # "allowedSharedLibInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/SharedLibraryInfo;>;"
    .restart local v0    # "allowList":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v4    # "sharedUidName":Ljava/lang/String;
    .restart local v5    # "allowedSharedLibInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/SharedLibraryInfo;>;"
    .restart local v21    # "versionInfo":Lcom/android/server/pm/Settings$VersionInfo;
    .restart local v24    # "compareCompat":Z
    .restart local v25    # "compareRecover":Z
    .restart local v26    # "isRollback":Z
    .restart local v33    # "compatMatch":Z
    :cond_10
    move-object/from16 v23, v5

    .line 203
    .end local v5    # "allowedSharedLibInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/SharedLibraryInfo;>;"
    .restart local v23    # "allowedSharedLibInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/SharedLibraryInfo;>;"
    :cond_11
    :try_start_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v35, v4

    .end local v4    # "sharedUidName":Ljava/lang/String;
    .local v35, "sharedUidName":Ljava/lang/String;
    const-string v4, "Non-preload app "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v20 .. v20}, Lcom/android/server/pm/PackageSetting;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " signed with platform signature and joining shared uid: "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v10, Lcom/android/server/pm/SharedUserSetting;->name:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 206
    .local v4, "msg":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_4
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_4

    move-object/from16 v36, v6

    .end local v6    # "deletePackageAction":Lcom/android/server/pm/DeletePackageAction;
    .local v36, "deletePackageAction":Lcom/android/server/pm/DeletePackageAction;
    :try_start_5
    const-string v6, ", allowList: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v11, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    new-instance v5, Lcom/android/server/pm/ReconcileFailure;

    const/16 v6, -0x6b

    invoke-direct {v5, v6, v4}, Lcom/android/server/pm/ReconcileFailure;-><init>(ILjava/lang/String;)V

    .end local v1    # "signingDetails":Landroid/content/pm/SigningDetails;
    .end local v7    # "scanFlags":I
    .end local v8    # "parsedPackage":Lcom/android/internal/pm/parsing/pkg/ParsedPackage;
    .end local v10    # "sharedUserSetting":Lcom/android/server/pm/SharedUserSetting;
    .end local v12    # "result":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/ReconciledPackage;>;"
    .end local v13    # "combinedPackages":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/pm/pkg/AndroidPackage;>;"
    .end local v14    # "incomingSharedLibraries":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/utils/WatchedLongSparseArray<Landroid/content/pm/SharedLibraryInfo;>;>;"
    .end local v17    # "isApex":Z
    .end local v19    # "parseFlags":I
    .end local v20    # "signatureCheckPs":Lcom/android/server/pm/PackageSetting;
    .end local v22    # "disabledPkgSetting":Lcom/android/server/pm/PackageSetting;
    .end local v23    # "allowedSharedLibInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/SharedLibraryInfo;>;"
    .end local v27    # "lastStaticSharedLibSetting":Lcom/android/server/pm/PackageSetting;
    .end local v28    # "removeAppKeySetData":Z
    .end local v29    # "sharedUserSignaturesChanged":Z
    .end local v30    # "isSystemPackage":Z
    .end local v31    # "systemPackage":Lcom/android/server/pm/pkg/AndroidPackage;
    .end local v32    # "installRequest":Lcom/android/server/pm/InstallRequest;
    .end local v34    # "installPackageName":Ljava/lang/String;
    .end local v36    # "deletePackageAction":Lcom/android/server/pm/DeletePackageAction;
    .end local p0    # "installRequests":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/InstallRequest;>;"
    .end local p1    # "allPackages":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/pm/pkg/AndroidPackage;>;"
    .end local p2    # "versionInfos":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/pm/Settings$VersionInfo;>;"
    .end local p3    # "sharedLibraries":Lcom/android/server/pm/SharedLibrariesImpl;
    .end local p4    # "ksms":Lcom/android/server/pm/KeySetManagerService;
    .end local p5    # "settings":Lcom/android/server/pm/Settings;
    .end local p6    # "systemConfig":Lcom/android/server/SystemConfig;
    throw v5
    :try_end_5
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_2

    .line 299
    .end local v0    # "allowList":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v4    # "msg":Ljava/lang/String;
    .end local v21    # "versionInfo":Lcom/android/server/pm/Settings$VersionInfo;
    .end local v24    # "compareCompat":Z
    .end local v25    # "compareRecover":Z
    .end local v26    # "isRollback":Z
    .end local v33    # "compatMatch":Z
    .end local v35    # "sharedUidName":Ljava/lang/String;
    .restart local v1    # "signingDetails":Landroid/content/pm/SigningDetails;
    .restart local v7    # "scanFlags":I
    .restart local v8    # "parsedPackage":Lcom/android/internal/pm/parsing/pkg/ParsedPackage;
    .restart local v10    # "sharedUserSetting":Lcom/android/server/pm/SharedUserSetting;
    .restart local v12    # "result":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/ReconciledPackage;>;"
    .restart local v13    # "combinedPackages":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/pm/pkg/AndroidPackage;>;"
    .restart local v14    # "incomingSharedLibraries":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/utils/WatchedLongSparseArray<Landroid/content/pm/SharedLibraryInfo;>;>;"
    .restart local v17    # "isApex":Z
    .restart local v19    # "parseFlags":I
    .restart local v20    # "signatureCheckPs":Lcom/android/server/pm/PackageSetting;
    .restart local v22    # "disabledPkgSetting":Lcom/android/server/pm/PackageSetting;
    .restart local v23    # "allowedSharedLibInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/SharedLibraryInfo;>;"
    .restart local v27    # "lastStaticSharedLibSetting":Lcom/android/server/pm/PackageSetting;
    .restart local v28    # "removeAppKeySetData":Z
    .restart local v29    # "sharedUserSignaturesChanged":Z
    .restart local v30    # "isSystemPackage":Z
    .restart local v31    # "systemPackage":Lcom/android/server/pm/pkg/AndroidPackage;
    .restart local v32    # "installRequest":Lcom/android/server/pm/InstallRequest;
    .restart local v34    # "installPackageName":Ljava/lang/String;
    .restart local v36    # "deletePackageAction":Lcom/android/server/pm/DeletePackageAction;
    .restart local p0    # "installRequests":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/InstallRequest;>;"
    .restart local p1    # "allPackages":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/pm/pkg/AndroidPackage;>;"
    .restart local p2    # "versionInfos":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/pm/Settings$VersionInfo;>;"
    .restart local p3    # "sharedLibraries":Lcom/android/server/pm/SharedLibrariesImpl;
    .restart local p4    # "ksms":Lcom/android/server/pm/KeySetManagerService;
    .restart local p5    # "settings":Lcom/android/server/pm/Settings;
    .restart local p6    # "systemConfig":Lcom/android/server/SystemConfig;
    :catch_2
    move-exception v0

    move-object/from16 v37, v1

    goto/16 :goto_11

    .line 246
    :catch_3
    move-exception v0

    move-object/from16 v37, v1

    goto/16 :goto_12

    .line 299
    .end local v36    # "deletePackageAction":Lcom/android/server/pm/DeletePackageAction;
    .restart local v6    # "deletePackageAction":Lcom/android/server/pm/DeletePackageAction;
    :catch_4
    move-exception v0

    move-object/from16 v36, v6

    move-object/from16 v37, v1

    .end local v6    # "deletePackageAction":Lcom/android/server/pm/DeletePackageAction;
    .restart local v36    # "deletePackageAction":Lcom/android/server/pm/DeletePackageAction;
    goto/16 :goto_11

    .line 246
    .end local v36    # "deletePackageAction":Lcom/android/server/pm/DeletePackageAction;
    .restart local v6    # "deletePackageAction":Lcom/android/server/pm/DeletePackageAction;
    :catch_5
    move-exception v0

    move-object/from16 v36, v6

    move-object/from16 v37, v1

    .end local v6    # "deletePackageAction":Lcom/android/server/pm/DeletePackageAction;
    .restart local v36    # "deletePackageAction":Lcom/android/server/pm/DeletePackageAction;
    goto/16 :goto_12

    .line 299
    .end local v23    # "allowedSharedLibInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/SharedLibraryInfo;>;"
    .end local v36    # "deletePackageAction":Lcom/android/server/pm/DeletePackageAction;
    .restart local v5    # "allowedSharedLibInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/SharedLibraryInfo;>;"
    .restart local v6    # "deletePackageAction":Lcom/android/server/pm/DeletePackageAction;
    :catch_6
    move-exception v0

    move-object/from16 v23, v5

    move-object/from16 v36, v6

    move-object/from16 v37, v1

    .end local v5    # "allowedSharedLibInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/SharedLibraryInfo;>;"
    .end local v6    # "deletePackageAction":Lcom/android/server/pm/DeletePackageAction;
    .restart local v23    # "allowedSharedLibInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/SharedLibraryInfo;>;"
    .restart local v36    # "deletePackageAction":Lcom/android/server/pm/DeletePackageAction;
    goto/16 :goto_11

    .line 246
    .end local v23    # "allowedSharedLibInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/SharedLibraryInfo;>;"
    .end local v36    # "deletePackageAction":Lcom/android/server/pm/DeletePackageAction;
    .restart local v5    # "allowedSharedLibInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/SharedLibraryInfo;>;"
    .restart local v6    # "deletePackageAction":Lcom/android/server/pm/DeletePackageAction;
    :catch_7
    move-exception v0

    move-object/from16 v23, v5

    move-object/from16 v36, v6

    move-object/from16 v37, v1

    .end local v5    # "allowedSharedLibInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/SharedLibraryInfo;>;"
    .end local v6    # "deletePackageAction":Lcom/android/server/pm/DeletePackageAction;
    .restart local v23    # "allowedSharedLibInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/SharedLibraryInfo;>;"
    .restart local v36    # "deletePackageAction":Lcom/android/server/pm/DeletePackageAction;
    goto/16 :goto_12

    .line 197
    .end local v23    # "allowedSharedLibInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/SharedLibraryInfo;>;"
    .end local v36    # "deletePackageAction":Lcom/android/server/pm/DeletePackageAction;
    .restart local v5    # "allowedSharedLibInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/SharedLibraryInfo;>;"
    .restart local v6    # "deletePackageAction":Lcom/android/server/pm/DeletePackageAction;
    .restart local v21    # "versionInfo":Lcom/android/server/pm/Settings$VersionInfo;
    .restart local v24    # "compareCompat":Z
    .restart local v25    # "compareRecover":Z
    .restart local v26    # "isRollback":Z
    .restart local v33    # "compatMatch":Z
    :cond_12
    move-object/from16 v23, v5

    move-object/from16 v36, v6

    .end local v5    # "allowedSharedLibInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/SharedLibraryInfo;>;"
    .end local v6    # "deletePackageAction":Lcom/android/server/pm/DeletePackageAction;
    .restart local v23    # "allowedSharedLibInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/SharedLibraryInfo;>;"
    .restart local v36    # "deletePackageAction":Lcom/android/server/pm/DeletePackageAction;
    goto :goto_c

    .line 192
    .end local v23    # "allowedSharedLibInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/SharedLibraryInfo;>;"
    .end local v36    # "deletePackageAction":Lcom/android/server/pm/DeletePackageAction;
    .restart local v5    # "allowedSharedLibInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/SharedLibraryInfo;>;"
    .restart local v6    # "deletePackageAction":Lcom/android/server/pm/DeletePackageAction;
    :cond_13
    move-object/from16 v23, v5

    move-object/from16 v36, v6

    .end local v5    # "allowedSharedLibInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/SharedLibraryInfo;>;"
    .end local v6    # "deletePackageAction":Lcom/android/server/pm/DeletePackageAction;
    .restart local v23    # "allowedSharedLibInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/SharedLibraryInfo;>;"
    .restart local v36    # "deletePackageAction":Lcom/android/server/pm/DeletePackageAction;
    goto :goto_c

    .line 191
    .end local v21    # "versionInfo":Lcom/android/server/pm/Settings$VersionInfo;
    .end local v23    # "allowedSharedLibInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/SharedLibraryInfo;>;"
    .end local v36    # "deletePackageAction":Lcom/android/server/pm/DeletePackageAction;
    .local v0, "versionInfo":Lcom/android/server/pm/Settings$VersionInfo;
    .restart local v5    # "allowedSharedLibInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/SharedLibraryInfo;>;"
    .restart local v6    # "deletePackageAction":Lcom/android/server/pm/DeletePackageAction;
    :cond_14
    move-object/from16 v21, v0

    move-object/from16 v23, v5

    move-object/from16 v36, v6

    .end local v0    # "versionInfo":Lcom/android/server/pm/Settings$VersionInfo;
    .end local v5    # "allowedSharedLibInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/SharedLibraryInfo;>;"
    .end local v6    # "deletePackageAction":Lcom/android/server/pm/DeletePackageAction;
    .restart local v21    # "versionInfo":Lcom/android/server/pm/Settings$VersionInfo;
    .restart local v23    # "allowedSharedLibInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/SharedLibraryInfo;>;"
    .restart local v36    # "deletePackageAction":Lcom/android/server/pm/DeletePackageAction;
    goto :goto_c

    .line 189
    .end local v21    # "versionInfo":Lcom/android/server/pm/Settings$VersionInfo;
    .end local v23    # "allowedSharedLibInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/SharedLibraryInfo;>;"
    .end local v36    # "deletePackageAction":Lcom/android/server/pm/DeletePackageAction;
    .restart local v0    # "versionInfo":Lcom/android/server/pm/Settings$VersionInfo;
    .restart local v5    # "allowedSharedLibInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/SharedLibraryInfo;>;"
    .restart local v6    # "deletePackageAction":Lcom/android/server/pm/DeletePackageAction;
    :cond_15
    move-object/from16 v21, v0

    move-object/from16 v23, v5

    move-object/from16 v36, v6

    .end local v0    # "versionInfo":Lcom/android/server/pm/Settings$VersionInfo;
    .end local v5    # "allowedSharedLibInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/SharedLibraryInfo;>;"
    .end local v6    # "deletePackageAction":Lcom/android/server/pm/DeletePackageAction;
    .restart local v21    # "versionInfo":Lcom/android/server/pm/Settings$VersionInfo;
    .restart local v23    # "allowedSharedLibInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/SharedLibraryInfo;>;"
    .restart local v36    # "deletePackageAction":Lcom/android/server/pm/DeletePackageAction;
    goto :goto_c

    .line 188
    .end local v21    # "versionInfo":Lcom/android/server/pm/Settings$VersionInfo;
    .end local v23    # "allowedSharedLibInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/SharedLibraryInfo;>;"
    .end local v36    # "deletePackageAction":Lcom/android/server/pm/DeletePackageAction;
    .restart local v0    # "versionInfo":Lcom/android/server/pm/Settings$VersionInfo;
    .restart local v5    # "allowedSharedLibInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/SharedLibraryInfo;>;"
    .restart local v6    # "deletePackageAction":Lcom/android/server/pm/DeletePackageAction;
    :cond_16
    move-object/from16 v21, v0

    move-object/from16 v23, v5

    move-object/from16 v36, v6

    .line 216
    .end local v0    # "versionInfo":Lcom/android/server/pm/Settings$VersionInfo;
    .end local v5    # "allowedSharedLibInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/SharedLibraryInfo;>;"
    .end local v6    # "deletePackageAction":Lcom/android/server/pm/DeletePackageAction;
    .restart local v21    # "versionInfo":Lcom/android/server/pm/Settings$VersionInfo;
    .restart local v23    # "allowedSharedLibInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/SharedLibraryInfo;>;"
    .restart local v36    # "deletePackageAction":Lcom/android/server/pm/DeletePackageAction;
    :goto_c
    if-eqz v10, :cond_1b

    .line 221
    :try_start_6
    iget-object v0, v10, Lcom/android/server/pm/SharedUserSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    iget-object v0, v0, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/SigningDetails;

    .line 223
    .local v0, "sharedSigningDetails":Landroid/content/pm/SigningDetails;
    invoke-virtual {v0, v1}, Landroid/content/pm/SigningDetails;->mergeLineageWith(Landroid/content/pm/SigningDetails;)Landroid/content/pm/SigningDetails;

    move-result-object v4

    .line 225
    .local v4, "mergedDetails":Landroid/content/pm/SigningDetails;
    if-eq v4, v0, :cond_1a

    .line 230
    invoke-virtual {v10}, Lcom/android/server/pm/SharedUserSetting;->getPackages()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_d
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_19

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/pm/pkg/AndroidPackage;

    .line 231
    .local v6, "androidPackage":Lcom/android/server/pm/pkg/AndroidPackage;
    invoke-interface {v6}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v35

    if-eqz v35, :cond_17

    .line 232
    move-object/from16 v35, v0

    .end local v0    # "sharedSigningDetails":Landroid/content/pm/SigningDetails;
    .local v35, "sharedSigningDetails":Landroid/content/pm/SigningDetails;
    invoke-interface {v6}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v0
    :try_end_6
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_6 .. :try_end_6} :catch_b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_6} :catch_a

    .line 233
    move-object/from16 v37, v1

    .end local v1    # "signingDetails":Landroid/content/pm/SigningDetails;
    .local v37, "signingDetails":Landroid/content/pm/SigningDetails;
    :try_start_7
    invoke-interface {v8}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 232
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    .line 234
    nop

    .line 235
    invoke-interface {v6}, Lcom/android/server/pm/pkg/AndroidPackage;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object v0

    .line 234
    const/4 v1, 0x2

    invoke-virtual {v4, v0, v1}, Landroid/content/pm/SigningDetails;->mergeLineageWith(Landroid/content/pm/SigningDetails;I)Landroid/content/pm/SigningDetails;

    move-result-object v0

    move-object v4, v0

    .end local v4    # "mergedDetails":Landroid/content/pm/SigningDetails;
    .local v0, "mergedDetails":Landroid/content/pm/SigningDetails;
    goto :goto_e

    .line 299
    .end local v0    # "mergedDetails":Landroid/content/pm/SigningDetails;
    .end local v6    # "androidPackage":Lcom/android/server/pm/pkg/AndroidPackage;
    .end local v21    # "versionInfo":Lcom/android/server/pm/Settings$VersionInfo;
    .end local v24    # "compareCompat":Z
    .end local v25    # "compareRecover":Z
    .end local v26    # "isRollback":Z
    .end local v33    # "compatMatch":Z
    .end local v35    # "sharedSigningDetails":Landroid/content/pm/SigningDetails;
    :catch_8
    move-exception v0

    goto/16 :goto_11

    .line 246
    :catch_9
    move-exception v0

    goto/16 :goto_12

    .line 299
    .end local v37    # "signingDetails":Landroid/content/pm/SigningDetails;
    .restart local v1    # "signingDetails":Landroid/content/pm/SigningDetails;
    :catch_a
    move-exception v0

    move-object/from16 v37, v1

    .end local v1    # "signingDetails":Landroid/content/pm/SigningDetails;
    .restart local v37    # "signingDetails":Landroid/content/pm/SigningDetails;
    goto/16 :goto_11

    .line 246
    .end local v37    # "signingDetails":Landroid/content/pm/SigningDetails;
    .restart local v1    # "signingDetails":Landroid/content/pm/SigningDetails;
    :catch_b
    move-exception v0

    move-object/from16 v37, v1

    .end local v1    # "signingDetails":Landroid/content/pm/SigningDetails;
    .restart local v37    # "signingDetails":Landroid/content/pm/SigningDetails;
    goto/16 :goto_12

    .line 231
    .end local v37    # "signingDetails":Landroid/content/pm/SigningDetails;
    .local v0, "sharedSigningDetails":Landroid/content/pm/SigningDetails;
    .restart local v1    # "signingDetails":Landroid/content/pm/SigningDetails;
    .restart local v4    # "mergedDetails":Landroid/content/pm/SigningDetails;
    .restart local v6    # "androidPackage":Lcom/android/server/pm/pkg/AndroidPackage;
    .restart local v21    # "versionInfo":Lcom/android/server/pm/Settings$VersionInfo;
    .restart local v24    # "compareCompat":Z
    .restart local v25    # "compareRecover":Z
    .restart local v26    # "isRollback":Z
    .restart local v33    # "compatMatch":Z
    :cond_17
    move-object/from16 v35, v0

    move-object/from16 v37, v1

    .line 238
    .end local v0    # "sharedSigningDetails":Landroid/content/pm/SigningDetails;
    .end local v1    # "signingDetails":Landroid/content/pm/SigningDetails;
    .end local v6    # "androidPackage":Lcom/android/server/pm/pkg/AndroidPackage;
    .restart local v35    # "sharedSigningDetails":Landroid/content/pm/SigningDetails;
    .restart local v37    # "signingDetails":Landroid/content/pm/SigningDetails;
    :cond_18
    :goto_e
    move-object/from16 v0, v35

    move-object/from16 v1, v37

    goto :goto_d

    .line 239
    .end local v35    # "sharedSigningDetails":Landroid/content/pm/SigningDetails;
    .end local v37    # "signingDetails":Landroid/content/pm/SigningDetails;
    .restart local v0    # "sharedSigningDetails":Landroid/content/pm/SigningDetails;
    .restart local v1    # "signingDetails":Landroid/content/pm/SigningDetails;
    :cond_19
    move-object/from16 v35, v0

    move-object/from16 v37, v1

    .end local v0    # "sharedSigningDetails":Landroid/content/pm/SigningDetails;
    .end local v1    # "signingDetails":Landroid/content/pm/SigningDetails;
    .restart local v35    # "sharedSigningDetails":Landroid/content/pm/SigningDetails;
    .restart local v37    # "signingDetails":Landroid/content/pm/SigningDetails;
    iget-object v0, v10, Lcom/android/server/pm/SharedUserSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    iput-object v4, v0, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/SigningDetails;

    goto :goto_f

    .line 225
    .end local v35    # "sharedSigningDetails":Landroid/content/pm/SigningDetails;
    .end local v37    # "signingDetails":Landroid/content/pm/SigningDetails;
    .restart local v0    # "sharedSigningDetails":Landroid/content/pm/SigningDetails;
    .restart local v1    # "signingDetails":Landroid/content/pm/SigningDetails;
    :cond_1a
    move-object/from16 v35, v0

    move-object/from16 v37, v1

    .line 242
    .end local v0    # "sharedSigningDetails":Landroid/content/pm/SigningDetails;
    .end local v1    # "signingDetails":Landroid/content/pm/SigningDetails;
    .restart local v35    # "sharedSigningDetails":Landroid/content/pm/SigningDetails;
    .restart local v37    # "signingDetails":Landroid/content/pm/SigningDetails;
    :goto_f
    iget-object v0, v10, Lcom/android/server/pm/SharedUserSetting;->signaturesChanged:Ljava/lang/Boolean;

    if-nez v0, :cond_1c

    .line 243
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, v10, Lcom/android/server/pm/SharedUserSetting;->signaturesChanged:Ljava/lang/Boolean;
    :try_end_7
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_7 .. :try_end_7} :catch_9
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_7} :catch_8

    goto :goto_10

    .line 216
    .end local v4    # "mergedDetails":Landroid/content/pm/SigningDetails;
    .end local v35    # "sharedSigningDetails":Landroid/content/pm/SigningDetails;
    .end local v37    # "signingDetails":Landroid/content/pm/SigningDetails;
    .restart local v1    # "signingDetails":Landroid/content/pm/SigningDetails;
    :cond_1b
    move-object/from16 v37, v1

    .line 305
    .end local v1    # "signingDetails":Landroid/content/pm/SigningDetails;
    .end local v21    # "versionInfo":Lcom/android/server/pm/Settings$VersionInfo;
    .end local v24    # "compareCompat":Z
    .end local v25    # "compareRecover":Z
    .end local v26    # "isRollback":Z
    .end local v33    # "compatMatch":Z
    .restart local v37    # "signingDetails":Landroid/content/pm/SigningDetails;
    :cond_1c
    :goto_10
    move-object/from16 v6, v37

    goto/16 :goto_13

    .line 299
    .end local v23    # "allowedSharedLibInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/SharedLibraryInfo;>;"
    .end local v36    # "deletePackageAction":Lcom/android/server/pm/DeletePackageAction;
    .end local v37    # "signingDetails":Landroid/content/pm/SigningDetails;
    .restart local v1    # "signingDetails":Landroid/content/pm/SigningDetails;
    .restart local v5    # "allowedSharedLibInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/SharedLibraryInfo;>;"
    .local v6, "deletePackageAction":Lcom/android/server/pm/DeletePackageAction;
    :catch_c
    move-exception v0

    move-object/from16 v37, v1

    move-object/from16 v23, v5

    move-object/from16 v36, v6

    .end local v1    # "signingDetails":Landroid/content/pm/SigningDetails;
    .end local v5    # "allowedSharedLibInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/SharedLibraryInfo;>;"
    .end local v6    # "deletePackageAction":Lcom/android/server/pm/DeletePackageAction;
    .restart local v23    # "allowedSharedLibInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/SharedLibraryInfo;>;"
    .restart local v36    # "deletePackageAction":Lcom/android/server/pm/DeletePackageAction;
    .restart local v37    # "signingDetails":Landroid/content/pm/SigningDetails;
    goto :goto_11

    .line 246
    .end local v23    # "allowedSharedLibInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/SharedLibraryInfo;>;"
    .end local v36    # "deletePackageAction":Lcom/android/server/pm/DeletePackageAction;
    .end local v37    # "signingDetails":Landroid/content/pm/SigningDetails;
    .restart local v1    # "signingDetails":Landroid/content/pm/SigningDetails;
    .restart local v5    # "allowedSharedLibInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/SharedLibraryInfo;>;"
    .restart local v6    # "deletePackageAction":Lcom/android/server/pm/DeletePackageAction;
    :catch_d
    move-exception v0

    move-object/from16 v37, v1

    move-object/from16 v23, v5

    move-object/from16 v36, v6

    .end local v1    # "signingDetails":Landroid/content/pm/SigningDetails;
    .end local v5    # "allowedSharedLibInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/SharedLibraryInfo;>;"
    .end local v6    # "deletePackageAction":Lcom/android/server/pm/DeletePackageAction;
    .restart local v23    # "allowedSharedLibInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/SharedLibraryInfo;>;"
    .restart local v36    # "deletePackageAction":Lcom/android/server/pm/DeletePackageAction;
    .restart local v37    # "signingDetails":Landroid/content/pm/SigningDetails;
    goto :goto_12

    .line 299
    .end local v10    # "sharedUserSetting":Lcom/android/server/pm/SharedUserSetting;
    .end local v34    # "installPackageName":Ljava/lang/String;
    .end local v36    # "deletePackageAction":Lcom/android/server/pm/DeletePackageAction;
    .end local v37    # "signingDetails":Landroid/content/pm/SigningDetails;
    .local v1, "installPackageName":Ljava/lang/String;
    .restart local v5    # "allowedSharedLibInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/SharedLibraryInfo;>;"
    .restart local v6    # "deletePackageAction":Lcom/android/server/pm/DeletePackageAction;
    .local v21, "sharedUserSetting":Lcom/android/server/pm/SharedUserSetting;
    .local v23, "signingDetails":Landroid/content/pm/SigningDetails;
    :catch_e
    move-exception v0

    move-object/from16 v34, v1

    move-object/from16 v36, v6

    move-object/from16 v10, v21

    move-object/from16 v37, v23

    move-object/from16 v23, v5

    .end local v1    # "installPackageName":Ljava/lang/String;
    .end local v5    # "allowedSharedLibInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/SharedLibraryInfo;>;"
    .end local v6    # "deletePackageAction":Lcom/android/server/pm/DeletePackageAction;
    .end local v21    # "sharedUserSetting":Lcom/android/server/pm/SharedUserSetting;
    .restart local v10    # "sharedUserSetting":Lcom/android/server/pm/SharedUserSetting;
    .local v23, "allowedSharedLibInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/SharedLibraryInfo;>;"
    .restart local v34    # "installPackageName":Ljava/lang/String;
    .restart local v36    # "deletePackageAction":Lcom/android/server/pm/DeletePackageAction;
    .restart local v37    # "signingDetails":Landroid/content/pm/SigningDetails;
    goto :goto_11

    .line 246
    .end local v10    # "sharedUserSetting":Lcom/android/server/pm/SharedUserSetting;
    .end local v34    # "installPackageName":Ljava/lang/String;
    .end local v36    # "deletePackageAction":Lcom/android/server/pm/DeletePackageAction;
    .end local v37    # "signingDetails":Landroid/content/pm/SigningDetails;
    .restart local v1    # "installPackageName":Ljava/lang/String;
    .restart local v5    # "allowedSharedLibInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/SharedLibraryInfo;>;"
    .restart local v6    # "deletePackageAction":Lcom/android/server/pm/DeletePackageAction;
    .restart local v21    # "sharedUserSetting":Lcom/android/server/pm/SharedUserSetting;
    .local v23, "signingDetails":Landroid/content/pm/SigningDetails;
    :catch_f
    move-exception v0

    move-object/from16 v34, v1

    move-object/from16 v36, v6

    move-object/from16 v10, v21

    move-object/from16 v37, v23

    move-object/from16 v23, v5

    .end local v1    # "installPackageName":Ljava/lang/String;
    .end local v5    # "allowedSharedLibInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/SharedLibraryInfo;>;"
    .end local v6    # "deletePackageAction":Lcom/android/server/pm/DeletePackageAction;
    .end local v21    # "sharedUserSetting":Lcom/android/server/pm/SharedUserSetting;
    .restart local v10    # "sharedUserSetting":Lcom/android/server/pm/SharedUserSetting;
    .local v23, "allowedSharedLibInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/SharedLibraryInfo;>;"
    .restart local v34    # "installPackageName":Ljava/lang/String;
    .restart local v36    # "deletePackageAction":Lcom/android/server/pm/DeletePackageAction;
    .restart local v37    # "signingDetails":Landroid/content/pm/SigningDetails;
    goto :goto_12

    .line 299
    :goto_11
    nop

    .line 302
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Signing certificates comparison made on incomparable signing details but somehow passed verifySignatures!"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 246
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :goto_12
    nop

    .line 247
    .local v0, "e":Lcom/android/server/pm/PackageManagerException;
    if-eqz v30, :cond_21

    .line 250
    invoke-interface {v8}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object v1

    .line 260
    .end local v37    # "signingDetails":Landroid/content/pm/SigningDetails;
    .local v1, "signingDetails":Landroid/content/pm/SigningDetails;
    if-eqz v10, :cond_1f

    .line 261
    iget-object v4, v10, Lcom/android/server/pm/SharedUserSetting;->signaturesChanged:Ljava/lang/Boolean;

    if-eqz v4, :cond_1e

    .line 263
    invoke-interface {v8}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v8}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object v5

    .line 262
    const/4 v6, 0x2

    invoke-static {v4, v5, v10, v6}, Lcom/android/server/pm/PackageManagerServiceUtils;->canJoinSharedUserId(Ljava/lang/String;Landroid/content/pm/SigningDetails;Lcom/android/server/pm/SharedUserSetting;I)Z

    move-result v4

    if-nez v4, :cond_1e

    .line 266
    const-string/jumbo v2, "ro.product.first_api_level"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    const/16 v3, 0x1d

    if-gt v2, v3, :cond_1d

    .line 273
    new-instance v2, Lcom/android/server/pm/ReconcileFailure;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Signature mismatch for shared user: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v4, -0x68

    invoke-direct {v2, v4, v3}, Lcom/android/server/pm/ReconcileFailure;-><init>(ILjava/lang/String;)V

    throw v2

    .line 282
    :cond_1d
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Signature mismatch on system package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 284
    invoke-interface {v8}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " for shared user "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 290
    :cond_1e
    const/16 v29, 0x1

    .line 291
    iget-object v4, v10, Lcom/android/server/pm/SharedUserSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    .line 292
    invoke-interface {v8}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object v5

    iput-object v5, v4, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/SigningDetails;

    .line 293
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v4, v10, Lcom/android/server/pm/SharedUserSetting;->signaturesChanged:Ljava/lang/Boolean;

    .line 296
    :cond_1f
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v8}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 298
    .local v2, "msg":Ljava/lang/String;
    const/4 v3, 0x5

    invoke-static {v3, v2}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 305
    .end local v0    # "e":Lcom/android/server/pm/PackageManagerException;
    .end local v2    # "msg":Ljava/lang/String;
    move-object v6, v1

    .line 308
    .end local v1    # "signingDetails":Landroid/content/pm/SigningDetails;
    .local v6, "signingDetails":Landroid/content/pm/SigningDetails;
    :goto_13
    new-instance v0, Lcom/android/server/pm/ReconciledPackage;

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v18, v7

    move-object/from16 v21, v8

    move-object/from16 v5, v23

    move/from16 v8, v28

    move/from16 v7, v29

    move-object/from16 v3, v32

    move-object/from16 v4, v36

    .end local v23    # "allowedSharedLibInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/SharedLibraryInfo;>;"
    .end local v28    # "removeAppKeySetData":Z
    .end local v29    # "sharedUserSignaturesChanged":Z
    .end local v32    # "installRequest":Lcom/android/server/pm/InstallRequest;
    .end local v36    # "deletePackageAction":Lcom/android/server/pm/DeletePackageAction;
    .restart local v3    # "installRequest":Lcom/android/server/pm/InstallRequest;
    .local v4, "deletePackageAction":Lcom/android/server/pm/DeletePackageAction;
    .restart local v5    # "allowedSharedLibInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/SharedLibraryInfo;>;"
    .local v7, "sharedUserSignaturesChanged":Z
    .local v8, "removeAppKeySetData":Z
    .local v18, "scanFlags":I
    .local v21, "parsedPackage":Lcom/android/internal/pm/parsing/pkg/ParsedPackage;
    invoke-direct/range {v0 .. v8}, Lcom/android/server/pm/ReconciledPackage;-><init>(Ljava/util/List;Ljava/util/Map;Lcom/android/server/pm/InstallRequest;Lcom/android/server/pm/DeletePackageAction;Ljava/util/List;Landroid/content/pm/SigningDetails;ZZ)V

    .end local v3    # "installRequest":Lcom/android/server/pm/InstallRequest;
    .restart local v32    # "installRequest":Lcom/android/server/pm/InstallRequest;
    move-object v1, v0

    .line 320
    .local v1, "reconciledPackage":Lcom/android/server/pm/ReconciledPackage;
    invoke-virtual/range {v32 .. v32}, Lcom/android/server/pm/InstallRequest;->getScanFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0x10

    if-nez v0, :cond_20

    .line 321
    invoke-virtual/range {v32 .. v32}, Lcom/android/server/pm/InstallRequest;->getParseFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0x10

    if-nez v0, :cond_20

    .line 324
    nop

    .line 326
    :try_start_8
    invoke-virtual/range {v32 .. v32}, Lcom/android/server/pm/InstallRequest;->getParsedPackage()Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    move-result-object v0

    .line 325
    invoke-virtual {v9, v0, v13, v14}, Lcom/android/server/pm/SharedLibrariesImpl;->collectSharedLibraryInfos(Lcom/android/server/pm/pkg/AndroidPackage;Ljava/util/Map;Ljava/util/Map;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/pm/ReconciledPackage;->mCollectedSharedLibraryInfos:Ljava/util/ArrayList;
    :try_end_8
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_8 .. :try_end_8} :catch_10

    .line 330
    goto :goto_14

    .line 328
    :catch_10
    move-exception v0

    .line 329
    .restart local v0    # "e":Lcom/android/server/pm/PackageManagerException;
    new-instance v2, Lcom/android/server/pm/ReconcileFailure;

    iget v3, v0, Lcom/android/server/pm/PackageManagerException;->error:I

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v2, v3, v11}, Lcom/android/server/pm/ReconcileFailure;-><init>(ILjava/lang/String;)V

    throw v2

    .line 333
    .end local v0    # "e":Lcom/android/server/pm/PackageManagerException;
    :cond_20
    :goto_14
    invoke-virtual/range {v32 .. v32}, Lcom/android/server/pm/InstallRequest;->onReconcileFinished()V

    .line 334
    invoke-interface {v12, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 335
    .end local v1    # "reconciledPackage":Lcom/android/server/pm/ReconciledPackage;
    .end local v4    # "deletePackageAction":Lcom/android/server/pm/DeletePackageAction;
    .end local v5    # "allowedSharedLibInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/SharedLibraryInfo;>;"
    .end local v6    # "signingDetails":Landroid/content/pm/SigningDetails;
    .end local v7    # "sharedUserSignaturesChanged":Z
    .end local v8    # "removeAppKeySetData":Z
    .end local v10    # "sharedUserSetting":Lcom/android/server/pm/SharedUserSetting;
    .end local v17    # "isApex":Z
    .end local v18    # "scanFlags":I
    .end local v19    # "parseFlags":I
    .end local v20    # "signatureCheckPs":Lcom/android/server/pm/PackageSetting;
    .end local v21    # "parsedPackage":Lcom/android/internal/pm/parsing/pkg/ParsedPackage;
    .end local v22    # "disabledPkgSetting":Lcom/android/server/pm/PackageSetting;
    .end local v27    # "lastStaticSharedLibSetting":Lcom/android/server/pm/PackageSetting;
    .end local v30    # "isSystemPackage":Z
    .end local v32    # "installRequest":Lcom/android/server/pm/InstallRequest;
    .end local v34    # "installPackageName":Ljava/lang/String;
    move-object/from16 v2, p1

    move-object/from16 v10, p4

    move-object/from16 v15, v31

    goto/16 :goto_2

    .line 248
    .restart local v0    # "e":Lcom/android/server/pm/PackageManagerException;
    .local v7, "scanFlags":I
    .local v8, "parsedPackage":Lcom/android/internal/pm/parsing/pkg/ParsedPackage;
    .restart local v10    # "sharedUserSetting":Lcom/android/server/pm/SharedUserSetting;
    .restart local v17    # "isApex":Z
    .restart local v19    # "parseFlags":I
    .restart local v20    # "signatureCheckPs":Lcom/android/server/pm/PackageSetting;
    .restart local v22    # "disabledPkgSetting":Lcom/android/server/pm/PackageSetting;
    .restart local v23    # "allowedSharedLibInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/SharedLibraryInfo;>;"
    .restart local v27    # "lastStaticSharedLibSetting":Lcom/android/server/pm/PackageSetting;
    .restart local v28    # "removeAppKeySetData":Z
    .restart local v29    # "sharedUserSignaturesChanged":Z
    .restart local v30    # "isSystemPackage":Z
    .restart local v32    # "installRequest":Lcom/android/server/pm/InstallRequest;
    .restart local v34    # "installPackageName":Ljava/lang/String;
    .restart local v36    # "deletePackageAction":Lcom/android/server/pm/DeletePackageAction;
    .restart local v37    # "signingDetails":Landroid/content/pm/SigningDetails;
    :cond_21
    new-instance v1, Lcom/android/server/pm/ReconcileFailure;

    invoke-direct {v1, v0}, Lcom/android/server/pm/ReconcileFailure;-><init>(Lcom/android/server/pm/PackageManagerException;)V

    throw v1

    .line 337
    .end local v0    # "e":Lcom/android/server/pm/PackageManagerException;
    .end local v7    # "scanFlags":I
    .end local v8    # "parsedPackage":Lcom/android/internal/pm/parsing/pkg/ParsedPackage;
    .end local v10    # "sharedUserSetting":Lcom/android/server/pm/SharedUserSetting;
    .end local v17    # "isApex":Z
    .end local v19    # "parseFlags":I
    .end local v20    # "signatureCheckPs":Lcom/android/server/pm/PackageSetting;
    .end local v22    # "disabledPkgSetting":Lcom/android/server/pm/PackageSetting;
    .end local v23    # "allowedSharedLibInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/SharedLibraryInfo;>;"
    .end local v27    # "lastStaticSharedLibSetting":Lcom/android/server/pm/PackageSetting;
    .end local v28    # "removeAppKeySetData":Z
    .end local v29    # "sharedUserSignaturesChanged":Z
    .end local v30    # "isSystemPackage":Z
    .end local v31    # "systemPackage":Lcom/android/server/pm/pkg/AndroidPackage;
    .end local v32    # "installRequest":Lcom/android/server/pm/InstallRequest;
    .end local v34    # "installPackageName":Ljava/lang/String;
    .end local v36    # "deletePackageAction":Lcom/android/server/pm/DeletePackageAction;
    .end local v37    # "signingDetails":Landroid/content/pm/SigningDetails;
    .restart local v15    # "systemPackage":Lcom/android/server/pm/pkg/AndroidPackage;
    :cond_22
    return-object v12
.end method
