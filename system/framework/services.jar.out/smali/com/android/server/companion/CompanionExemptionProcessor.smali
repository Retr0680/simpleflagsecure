.class public Lcom/android/server/companion/CompanionExemptionProcessor;
.super Ljava/lang/Object;
.source "CompanionExemptionProcessor.java"


# static fields
.field private static final PREF_FILE_NAME:Ljava/lang/String; = "companion_device_preferences.xml"

.field private static final PREF_KEY_AUTO_REVOKE_GRANTS_DONE:Ljava/lang/String; = "auto_revoke_grants_done"

.field private static final TAG:Ljava/lang/String; = "CDM_CompanionExemptionProcessor"


# instance fields
.field private final mAmInternal:Landroid/app/ActivityManagerInternal;

.field private final mAppOpsManager:Landroid/app/AppOpsManager;

.field private final mAssociationStore:Lcom/android/server/companion/association/AssociationStore;

.field private final mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

.field private final mContext:Landroid/content/Context;

.field private final mPackageManager:Landroid/content/pm/PackageManagerInternal;

.field private final mPowerExemptionManager:Landroid/os/PowerExemptionManager;


# direct methods
.method public static synthetic $r8$lambda$ToR5gqUC2wI3TkFPVa5liwAr-YM(Lcom/android/server/companion/CompanionExemptionProcessor;ILandroid/content/pm/PackageInfo;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/companion/CompanionExemptionProcessor;->lambda$exemptPackage$0(ILandroid/content/pm/PackageInfo;Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmAssociationStore(Lcom/android/server/companion/CompanionExemptionProcessor;)Lcom/android/server/companion/association/AssociationStore;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/companion/CompanionExemptionProcessor;->mAssociationStore:Lcom/android/server/companion/association/AssociationStore;

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/PowerExemptionManager;Landroid/app/AppOpsManager;Landroid/content/pm/PackageManagerInternal;Lcom/android/server/wm/ActivityTaskManagerInternal;Landroid/app/ActivityManagerInternal;Lcom/android/server/companion/association/AssociationStore;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "powerExemptionManager"    # Landroid/os/PowerExemptionManager;
    .param p3, "appOpsManager"    # Landroid/app/AppOpsManager;
    .param p4, "packageManager"    # Landroid/content/pm/PackageManagerInternal;
    .param p5, "atmInternal"    # Lcom/android/server/wm/ActivityTaskManagerInternal;
    .param p6, "amInternal"    # Landroid/app/ActivityManagerInternal;
    .param p7, "associationStore"    # Lcom/android/server/companion/association/AssociationStore;

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-object p1, p0, Lcom/android/server/companion/CompanionExemptionProcessor;->mContext:Landroid/content/Context;

    .line 73
    iput-object p2, p0, Lcom/android/server/companion/CompanionExemptionProcessor;->mPowerExemptionManager:Landroid/os/PowerExemptionManager;

    .line 74
    iput-object p3, p0, Lcom/android/server/companion/CompanionExemptionProcessor;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 75
    iput-object p4, p0, Lcom/android/server/companion/CompanionExemptionProcessor;->mPackageManager:Landroid/content/pm/PackageManagerInternal;

    .line 76
    iput-object p5, p0, Lcom/android/server/companion/CompanionExemptionProcessor;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 77
    iput-object p6, p0, Lcom/android/server/companion/CompanionExemptionProcessor;->mAmInternal:Landroid/app/ActivityManagerInternal;

    .line 78
    iput-object p7, p0, Lcom/android/server/companion/CompanionExemptionProcessor;->mAssociationStore:Lcom/android/server/companion/association/AssociationStore;

    .line 80
    iget-object v0, p0, Lcom/android/server/companion/CompanionExemptionProcessor;->mAssociationStore:Lcom/android/server/companion/association/AssociationStore;

    new-instance v1, Lcom/android/server/companion/CompanionExemptionProcessor$1;

    invoke-direct {v1, p0}, Lcom/android/server/companion/CompanionExemptionProcessor$1;-><init>(Lcom/android/server/companion/CompanionExemptionProcessor;)V

    invoke-virtual {v0, v1}, Lcom/android/server/companion/association/AssociationStore;->registerLocalListener(Lcom/android/server/companion/association/AssociationStore$OnChangeListener;)V

    .line 90
    return-void
.end method

.method private containsEither([Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;TT;TT;)Z"
        }
    .end annotation

    .line 222
    .local p1, "array":[Ljava/lang/Object;, "[TT;"
    .local p2, "a":Ljava/lang/Object;, "TT;"
    .local p3, "b":Ljava/lang/Object;, "TT;"
    invoke-static {p1, p2}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1, p3}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

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

.method private exemptPackageAsSystem(ILandroid/content/pm/PackageInfo;Z)V
    .locals 5
    .param p1, "userId"    # I
    .param p2, "packageInfo"    # Landroid/content/pm/PackageInfo;
    .param p3, "hasPresentDevices"    # Z

    .line 127
    if-nez p2, :cond_0

    .line 128
    return-void

    .line 132
    :cond_0
    iget-object v0, p2, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    const-string v1, "android.permission.RUN_IN_BACKGROUND"

    const-string v2, "android.permission.REQUEST_COMPANION_RUN_IN_BACKGROUND"

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/companion/CompanionExemptionProcessor;->containsEither([Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "CDM_CompanionExemptionProcessor"

    if-eqz v0, :cond_1

    if-eqz p3, :cond_1

    .line 136
    iget-object v0, p0, Lcom/android/server/companion/CompanionExemptionProcessor;->mPowerExemptionManager:Landroid/os/PowerExemptionManager;

    iget-object v2, p2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/PowerExemptionManager;->addToPermanentAllowList(Ljava/lang/String;)V

    goto :goto_0

    .line 139
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/android/server/companion/CompanionExemptionProcessor;->mPowerExemptionManager:Landroid/os/PowerExemptionManager;

    iget-object v2, p2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/PowerExemptionManager;->removeFromPermanentAllowList(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 144
    goto :goto_0

    .line 140
    :catch_0
    move-exception v0

    .line 141
    .local v0, "e":Ljava/lang/UnsupportedOperationException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " can\'t be removed from power save allowlist. It might be due to the package being allowlisted by the system."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    .end local v0    # "e":Ljava/lang/UnsupportedOperationException;
    :goto_0
    iget-object v0, p0, Lcom/android/server/companion/CompanionExemptionProcessor;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/net/NetworkPolicyManager;->from(Landroid/content/Context;)Landroid/net/NetworkPolicyManager;

    move-result-object v0

    .line 150
    .local v0, "networkPolicyManager":Landroid/net/NetworkPolicyManager;
    :try_start_1
    iget-object v2, p2, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    const-string v3, "android.permission.USE_DATA_IN_BACKGROUND"

    const-string v4, "android.permission.REQUEST_COMPANION_USE_DATA_IN_BACKGROUND"

    invoke-direct {p0, v2, v3, v4}, Lcom/android/server/companion/CompanionExemptionProcessor;->containsEither([Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x4

    if-eqz v2, :cond_2

    if-eqz p3, :cond_2

    .line 154
    iget-object v2, p2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v0, v2, v3}, Landroid/net/NetworkPolicyManager;->addUidPolicy(II)V

    goto :goto_1

    .line 162
    :catch_1
    move-exception v2

    goto :goto_2

    .line 158
    :cond_2
    iget-object v2, p2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v0, v2, v3}, Landroid/net/NetworkPolicyManager;->removeUidPolicy(II)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    .line 164
    :goto_1
    goto :goto_3

    .line 162
    :goto_2
    nop

    .line 163
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    :goto_3
    iget-object v1, p2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iget-object v2, p2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v3, p0, Lcom/android/server/companion/CompanionExemptionProcessor;->mAssociationStore:Lcom/android/server/companion/association/AssociationStore;

    iget-object v4, p2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 167
    invoke-virtual {v3, p1, v4}, Lcom/android/server/companion/association/AssociationStore;->getActiveAssociationsByPackage(ILjava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 168
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    .line 166
    xor-int/lit8 v3, v3, 0x1

    invoke-direct {p0, v1, v2, v3}, Lcom/android/server/companion/CompanionExemptionProcessor;->updateAutoRevokeExemption(Ljava/lang/String;IZ)V

    .line 169
    return-void
.end method

.method private synthetic lambda$exemptPackage$0(ILandroid/content/pm/PackageInfo;Z)V
    .locals 0
    .param p1, "userId"    # I
    .param p2, "packageInfo"    # Landroid/content/pm/PackageInfo;
    .param p3, "hasPresentDevices"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 121
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/companion/CompanionExemptionProcessor;->exemptPackageAsSystem(ILandroid/content/pm/PackageInfo;Z)V

    return-void
.end method

.method private updateAutoRevokeExemption(Ljava/lang/String;IZ)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "hasAssociations"    # Z

    .line 211
    :try_start_0
    iget-object v0, p0, Lcom/android/server/companion/CompanionExemptionProcessor;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 215
    if-eqz p3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 211
    :goto_0
    const/16 v2, 0x61

    invoke-virtual {v0, v2, p2, p1, v1}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 218
    goto :goto_1

    .line 216
    :catch_0
    move-exception v0

    .line 217
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error while granting auto revoke exemption for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CDM_CompanionExemptionProcessor"

    invoke-static {v2, v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 219
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method


# virtual methods
.method public exemptPackage(ILjava/lang/String;Z)V
    .locals 2
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "hasPresentDevices"    # Z

    .line 116
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Exempting package ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CDM_CompanionExemptionProcessor"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    iget-object v0, p0, Lcom/android/server/companion/CompanionExemptionProcessor;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Lcom/android/server/companion/utils/PackageUtils;->getPackageInfo(Landroid/content/Context;ILjava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 120
    .local v0, "packageInfo":Landroid/content/pm/PackageInfo;
    new-instance v1, Lcom/android/server/companion/CompanionExemptionProcessor$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, v0, p3}, Lcom/android/server/companion/CompanionExemptionProcessor$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/companion/CompanionExemptionProcessor;ILandroid/content/pm/PackageInfo;Z)V

    invoke-static {v1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 122
    return-void
.end method

.method public updateAtm(ILjava/util/List;)V
    .locals 7
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/companion/AssociationInfo;",
            ">;)V"
        }
    .end annotation

    .line 96
    .local p2, "associations":Ljava/util/List;, "Ljava/util/List<Landroid/companion/AssociationInfo;>;"
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 97
    .local v0, "companionAppUids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/companion/AssociationInfo;

    .line 98
    .local v2, "association":Landroid/companion/AssociationInfo;
    iget-object v3, p0, Lcom/android/server/companion/CompanionExemptionProcessor;->mPackageManager:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v2}, Landroid/companion/AssociationInfo;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const-wide/16 v5, 0x0

    invoke-virtual {v3, v4, v5, v6, p1}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;JI)I

    move-result v3

    .line 99
    .local v3, "uid":I
    if-ltz v3, :cond_0

    .line 100
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 102
    .end local v2    # "association":Landroid/companion/AssociationInfo;
    .end local v3    # "uid":I
    :cond_0
    goto :goto_0

    .line 103
    :cond_1
    iget-object v1, p0, Lcom/android/server/companion/CompanionExemptionProcessor;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    if-eqz v1, :cond_2

    .line 104
    iget-object v1, p0, Lcom/android/server/companion/CompanionExemptionProcessor;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {v1, p1, v0}, Lcom/android/server/wm/ActivityTaskManagerInternal;->setCompanionAppUids(ILjava/util/Set;)V

    .line 106
    :cond_2
    iget-object v1, p0, Lcom/android/server/companion/CompanionExemptionProcessor;->mAmInternal:Landroid/app/ActivityManagerInternal;

    if-eqz v1, :cond_3

    .line 108
    iget-object v1, p0, Lcom/android/server/companion/CompanionExemptionProcessor;->mAmInternal:Landroid/app/ActivityManagerInternal;

    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2, v0}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1, p1, v2}, Landroid/app/ActivityManagerInternal;->setCompanionAppUids(ILjava/util/Set;)V

    .line 110
    :cond_3
    return-void
.end method

.method public updateAutoRevokeExemptions()V
    .locals 17

    .line 176
    move-object/from16 v1, p0

    const-string/jumbo v0, "maybeGrantAutoRevokeExemptions()"

    const-string v2, "CDM_CompanionExemptionProcessor"

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    iget-object v0, v1, Lcom/android/server/companion/CompanionExemptionProcessor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 179
    .local v3, "pm":Landroid/content/pm/PackageManager;
    const-class v0, Lcom/android/server/pm/UserManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/UserManagerInternal;

    invoke-virtual {v0}, Lcom/android/server/pm/UserManagerInternal;->getUserIds()[I

    move-result-object v4

    array-length v5, v4

    const/4 v6, 0x0

    move v7, v6

    :goto_0
    if-ge v7, v5, :cond_3

    aget v8, v4, v7

    .line 180
    .local v8, "userId":I
    iget-object v0, v1, Lcom/android/server/companion/CompanionExemptionProcessor;->mContext:Landroid/content/Context;

    new-instance v9, Ljava/io/File;

    .line 181
    invoke-static {v8}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v10

    const-string v11, "companion_device_preferences.xml"

    invoke-direct {v9, v10, v11}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 180
    invoke-virtual {v0, v9, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/io/File;I)Landroid/content/SharedPreferences;

    move-result-object v9

    .line 183
    .local v9, "pref":Landroid/content/SharedPreferences;
    const-string v10, "auto_revoke_grants_done"

    invoke-interface {v9, v10, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 184
    goto/16 :goto_4

    .line 188
    :cond_0
    :try_start_0
    iget-object v0, v1, Lcom/android/server/companion/CompanionExemptionProcessor;->mAssociationStore:Lcom/android/server/companion/association/AssociationStore;

    .line 189
    invoke-virtual {v0, v8}, Lcom/android/server/companion/association/AssociationStore;->getActiveAssociationsByUser(I)Ljava/util/List;

    move-result-object v0

    move-object v12, v0

    .line 190
    .local v12, "associations":Ljava/util/List;, "Ljava/util/List<Landroid/companion/AssociationInfo;>;"
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    move-object v13, v0

    .line 191
    .local v13, "exemptedPackages":Ljava/util/Set;, "Ljava/util/Set<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_1
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/companion/AssociationInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v15, v0

    .line 193
    .local v15, "a":Landroid/companion/AssociationInfo;
    :try_start_1
    invoke-virtual {v15}, Landroid/companion/AssociationInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0, v8}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result v0

    .line 194
    .local v0, "uid":I
    new-instance v6, Landroid/util/Pair;

    invoke-virtual {v15}, Landroid/companion/AssociationInfo;->getPackageName()Ljava/lang/String;

    move-result-object v11

    move/from16 v16, v0

    .end local v0    # "uid":I
    .local v16, "uid":I
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {v6, v11, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v13, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 197
    .end local v16    # "uid":I
    goto :goto_2

    .line 203
    .end local v12    # "associations":Ljava/util/List;, "Ljava/util/List<Landroid/companion/AssociationInfo;>;"
    .end local v13    # "exemptedPackages":Ljava/util/Set;, "Ljava/util/Set<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    .end local v15    # "a":Landroid/companion/AssociationInfo;
    :catchall_0
    move-exception v0

    goto :goto_5

    .line 195
    .restart local v12    # "associations":Ljava/util/List;, "Ljava/util/List<Landroid/companion/AssociationInfo;>;"
    .restart local v13    # "exemptedPackages":Ljava/util/Set;, "Ljava/util/Set<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    .restart local v15    # "a":Landroid/companion/AssociationInfo;
    :catch_0
    move-exception v0

    nop

    .line 196
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unknown companion package: "

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Landroid/companion/AssociationInfo;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 198
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v15    # "a":Landroid/companion/AssociationInfo;
    :goto_2
    const/4 v6, 0x0

    goto :goto_1

    .line 199
    :cond_1
    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/Pair;

    .line 200
    .local v6, "exemptedPackage":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;"
    iget-object v11, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v11, Ljava/lang/String;

    iget-object v14, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    const/4 v15, 0x1

    invoke-direct {v1, v11, v14, v15}, Lcom/android/server/companion/CompanionExemptionProcessor;->updateAutoRevokeExemption(Ljava/lang/String;IZ)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 201
    .end local v6    # "exemptedPackage":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;"
    goto :goto_3

    .line 199
    :cond_2
    nop

    .line 203
    .end local v12    # "associations":Ljava/util/List;, "Ljava/util/List<Landroid/companion/AssociationInfo;>;"
    .end local v13    # "exemptedPackages":Ljava/util/Set;, "Ljava/util/Set<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    invoke-interface {v9}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const/4 v15, 0x1

    invoke-interface {v0, v10, v15}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 204
    nop

    .line 179
    .end local v8    # "userId":I
    .end local v9    # "pref":Landroid/content/SharedPreferences;
    :goto_4
    add-int/lit8 v7, v7, 0x1

    const/4 v6, 0x0

    goto/16 :goto_0

    .line 203
    .restart local v8    # "userId":I
    .restart local v9    # "pref":Landroid/content/SharedPreferences;
    :goto_5
    invoke-interface {v9}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const/4 v15, 0x1

    invoke-interface {v2, v10, v15}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 204
    throw v0

    .line 206
    .end local v8    # "userId":I
    .end local v9    # "pref":Landroid/content/SharedPreferences;
    :cond_3
    return-void
.end method
