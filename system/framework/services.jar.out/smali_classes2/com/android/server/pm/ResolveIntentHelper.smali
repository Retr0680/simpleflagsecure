.class final Lcom/android/server/pm/ResolveIntentHelper;
.super Ljava/lang/Object;
.source "ResolveIntentHelper.java"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mDomainVerificationManager:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;

.field private final mInstantAppInstallerActivitySupplier:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "Landroid/content/pm/ActivityInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mPlatformCompat:Lcom/android/server/compat/PlatformCompat;

.field private final mPreferredActivityHelper:Lcom/android/server/pm/PreferredActivityHelper;

.field private final mResolveInfoSupplier:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mUserManager:Lcom/android/server/pm/UserManagerService;

.field private final mUserNeedsBadging:Lcom/android/server/pm/UserNeedsBadgingCache;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/server/pm/PreferredActivityHelper;Lcom/android/server/compat/PlatformCompat;Lcom/android/server/pm/UserManagerService;Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;Lcom/android/server/pm/UserNeedsBadgingCache;Ljava/util/function/Supplier;Ljava/util/function/Supplier;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "preferredActivityHelper"    # Lcom/android/server/pm/PreferredActivityHelper;
    .param p3, "platformCompat"    # Lcom/android/server/compat/PlatformCompat;
    .param p4, "userManager"    # Lcom/android/server/pm/UserManagerService;
    .param p5, "domainVerificationManager"    # Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;
    .param p6, "userNeedsBadgingCache"    # Lcom/android/server/pm/UserNeedsBadgingCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/server/pm/PreferredActivityHelper;",
            "Lcom/android/server/compat/PlatformCompat;",
            "Lcom/android/server/pm/UserManagerService;",
            "Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;",
            "Lcom/android/server/pm/UserNeedsBadgingCache;",
            "Ljava/util/function/Supplier<",
            "Landroid/content/pm/ResolveInfo;",
            ">;",
            "Ljava/util/function/Supplier<",
            "Landroid/content/pm/ActivityInfo;",
            ">;)V"
        }
    .end annotation

    .line 92
    .local p7, "resolveInfoSupplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Landroid/content/pm/ResolveInfo;>;"
    .local p8, "instantAppInstallerActivitySupplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Landroid/content/pm/ActivityInfo;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    iput-object p1, p0, Lcom/android/server/pm/ResolveIntentHelper;->mContext:Landroid/content/Context;

    .line 94
    iput-object p2, p0, Lcom/android/server/pm/ResolveIntentHelper;->mPreferredActivityHelper:Lcom/android/server/pm/PreferredActivityHelper;

    .line 95
    iput-object p3, p0, Lcom/android/server/pm/ResolveIntentHelper;->mPlatformCompat:Lcom/android/server/compat/PlatformCompat;

    .line 96
    iput-object p4, p0, Lcom/android/server/pm/ResolveIntentHelper;->mUserManager:Lcom/android/server/pm/UserManagerService;

    .line 97
    iput-object p5, p0, Lcom/android/server/pm/ResolveIntentHelper;->mDomainVerificationManager:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;

    .line 98
    iput-object p6, p0, Lcom/android/server/pm/ResolveIntentHelper;->mUserNeedsBadging:Lcom/android/server/pm/UserNeedsBadgingCache;

    .line 99
    iput-object p7, p0, Lcom/android/server/pm/ResolveIntentHelper;->mResolveInfoSupplier:Ljava/util/function/Supplier;

    .line 100
    iput-object p8, p0, Lcom/android/server/pm/ResolveIntentHelper;->mInstantAppInstallerActivitySupplier:Ljava/util/function/Supplier;

    .line 101
    return-void
.end method

.method private allHavePackage(Ljava/util/List;Ljava/lang/String;)Z
    .locals 6
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .line 253
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-static {p1}, Lcom/android/internal/util/ArrayUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 254
    return v1

    .line 256
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    .local v2, "n":I
    :goto_0
    if-ge v0, v2, :cond_4

    .line 257
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 258
    .local v3, "ri":Landroid/content/pm/ResolveInfo;
    if-eqz v3, :cond_1

    iget-object v4, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    .line 259
    .local v4, "ai":Landroid/content/pm/ActivityInfo;
    :goto_1
    if-eqz v4, :cond_2

    iget-object v5, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    :cond_2
    goto :goto_2

    .line 256
    .end local v3    # "ri":Landroid/content/pm/ResolveInfo;
    .end local v4    # "ai":Landroid/content/pm/ActivityInfo;
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 260
    .restart local v3    # "ri":Landroid/content/pm/ResolveInfo;
    .restart local v4    # "ai":Landroid/content/pm/ActivityInfo;
    :goto_2
    return v1

    .line 256
    .end local v3    # "ri":Landroid/content/pm/ResolveInfo;
    .end local v4    # "ai":Landroid/content/pm/ActivityInfo;
    :cond_4
    nop

    .line 263
    .end local v0    # "i":I
    .end local v2    # "n":I
    const/4 v0, 0x1

    return v0
.end method

.method private applyPostContentProviderResolutionFilter(Lcom/android/server/pm/Computer;Ljava/util/List;Ljava/lang/String;II)Ljava/util/List;
    .locals 10
    .param p1, "computer"    # Lcom/android/server/pm/Computer;
    .param p3, "instantAppPkgName"    # Ljava/lang/String;
    .param p4, "userId"    # I
    .param p5, "callingUid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/Computer;",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;",
            "Ljava/lang/String;",
            "II)",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 541
    .local p2, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_7

    .line 542
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 544
    .local v1, "info":Landroid/content/pm/ResolveInfo;
    if-nez p3, :cond_0

    .line 545
    iget-object v2, v1, Landroid/content/pm/ResolveInfo;->providerInfo:Landroid/content/pm/ProviderInfo;

    iget-object v2, v2, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-interface {p1, v2, v3}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;I)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v2

    .line 547
    .local v2, "resolvedSetting":Lcom/android/server/pm/pkg/PackageStateInternal;
    invoke-interface {p1, v2, p5, p4}, Lcom/android/server/pm/Computer;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result v3

    if-nez v3, :cond_0

    .line 548
    goto/16 :goto_1

    .line 552
    .end local v2    # "resolvedSetting":Lcom/android/server/pm/pkg/PackageStateInternal;
    :cond_0
    iget-object v2, v1, Landroid/content/pm/ResolveInfo;->providerInfo:Landroid/content/pm/ProviderInfo;

    iget-object v2, v2, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v2}, Landroid/content/pm/ApplicationInfo;->isInstantApp()Z

    move-result v2

    .line 554
    .local v2, "isEphemeralApp":Z
    if-eqz v2, :cond_4

    iget-object v3, v1, Landroid/content/pm/ResolveInfo;->providerInfo:Landroid/content/pm/ProviderInfo;

    iget-object v3, v3, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p3, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 555
    iget-object v3, v1, Landroid/content/pm/ResolveInfo;->providerInfo:Landroid/content/pm/ProviderInfo;

    iget-object v3, v3, Landroid/content/pm/ProviderInfo;->splitName:Ljava/lang/String;

    nop

    if-eqz v3, :cond_6

    iget-object v3, v1, Landroid/content/pm/ResolveInfo;->providerInfo:Landroid/content/pm/ProviderInfo;

    iget-object v3, v3, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->splitNames:[Ljava/lang/String;

    iget-object v4, v1, Landroid/content/pm/ResolveInfo;->providerInfo:Landroid/content/pm/ProviderInfo;

    iget-object v4, v4, Landroid/content/pm/ProviderInfo;->splitName:Ljava/lang/String;

    .line 556
    invoke-static {v3, v4}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 558
    iget-object v3, p0, Lcom/android/server/pm/ResolveIntentHelper;->mInstantAppInstallerActivitySupplier:Ljava/util/function/Supplier;

    invoke-interface {v3}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v3

    const-string v4, "PackageManager"

    if-nez v3, :cond_2

    .line 559
    sget-boolean v3, Lcom/android/server/pm/PackageManagerService;->DEBUG_INSTANT:Z

    if-eqz v3, :cond_1

    .line 560
    const-string v3, "No installer - not adding it to the ResolveInfo list"

    invoke-static {v4, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 562
    :cond_1
    invoke-interface {p2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 563
    goto :goto_1

    .line 567
    :cond_2
    sget-boolean v3, Lcom/android/server/pm/PackageManagerService;->DEBUG_INSTANT:Z

    if-eqz v3, :cond_3

    .line 568
    const-string v3, "Adding ephemeral installer to the ResolveInfo list"

    invoke-static {v4, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    :cond_3
    new-instance v3, Landroid/content/pm/ResolveInfo;

    .line 571
    invoke-interface {p1}, Lcom/android/server/pm/Computer;->getInstantAppInstallerInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/content/pm/ResolveInfo;-><init>(Landroid/content/pm/ResolveInfo;)V

    .line 572
    .local v3, "installerInfo":Landroid/content/pm/ResolveInfo;
    new-instance v4, Landroid/content/pm/AuxiliaryResolveInfo;

    iget-object v5, v1, Landroid/content/pm/ResolveInfo;->providerInfo:Landroid/content/pm/ProviderInfo;

    iget-object v6, v5, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    iget-object v5, v1, Landroid/content/pm/ResolveInfo;->providerInfo:Landroid/content/pm/ProviderInfo;

    iget-object v5, v5, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-wide v7, v5, Landroid/content/pm/ApplicationInfo;->longVersionCode:J

    iget-object v5, v1, Landroid/content/pm/ResolveInfo;->providerInfo:Landroid/content/pm/ProviderInfo;

    iget-object v9, v5, Landroid/content/pm/ProviderInfo;->splitName:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-direct/range {v4 .. v9}, Landroid/content/pm/AuxiliaryResolveInfo;-><init>(Landroid/content/ComponentName;Ljava/lang/String;JLjava/lang/String;)V

    iput-object v4, v3, Landroid/content/pm/ResolveInfo;->auxiliaryInfo:Landroid/content/pm/AuxiliaryResolveInfo;

    .line 578
    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    iput-object v4, v3, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    .line 580
    invoke-virtual {v1}, Landroid/content/pm/ResolveInfo;->getComponentInfo()Landroid/content/pm/ComponentInfo;

    move-result-object v4

    iget-object v4, v4, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    iput-object v4, v3, Landroid/content/pm/ResolveInfo;->resolvePackageName:Ljava/lang/String;

    .line 581
    invoke-interface {p2, v0, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 582
    .end local v3    # "installerInfo":Landroid/content/pm/ResolveInfo;
    goto :goto_1

    .line 586
    :cond_4
    if-nez v2, :cond_5

    iget-object v3, v1, Landroid/content/pm/ResolveInfo;->providerInfo:Landroid/content/pm/ProviderInfo;

    iget v3, v3, Landroid/content/pm/ProviderInfo;->flags:I

    const/high16 v4, 0x100000

    and-int/2addr v3, v4

    if-eqz v3, :cond_5

    .line 588
    goto :goto_1

    .line 590
    :cond_5
    invoke-interface {p2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 541
    .end local v1    # "info":Landroid/content/pm/ResolveInfo;
    .end local v2    # "isEphemeralApp":Z
    :cond_6
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_0

    :cond_7
    nop

    .line 592
    .end local v0    # "i":I
    return-object p2
.end method

.method private chooseBestActivity(Lcom/android/server/pm/Computer;Landroid/content/Intent;Ljava/lang/String;JJLjava/util/List;IZ)Landroid/content/pm/ResolveInfo;
    .locals 19
    .param p1, "computer"    # Lcom/android/server/pm/Computer;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "resolvedType"    # Ljava/lang/String;
    .param p4, "flags"    # J
    .param p6, "privateResolveFlags"    # J
    .param p9, "userId"    # I
    .param p10, "queryMayBeFiltered"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/Computer;",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "JJ",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;IZ)",
            "Landroid/content/pm/ResolveInfo;"
        }
    .end annotation

    .line 157
    .local p8, "query":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    move-object/from16 v0, p0

    move-object/from16 v7, p8

    if-eqz v7, :cond_13

    .line 158
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v14

    .line 159
    .local v14, "n":I
    const/4 v15, 0x0

    const/4 v1, 0x1

    if-ne v14, v1, :cond_0

    .line 160
    invoke-interface {v7, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    return-object v1

    .line 161
    :cond_0
    if-le v14, v1, :cond_12

    .line 162
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getFlags()I

    move-result v2

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_1

    move v10, v1

    goto :goto_0

    :cond_1
    move v10, v15

    .line 165
    .local v10, "debug":Z
    :goto_0
    invoke-interface {v7, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 166
    .local v2, "r0":Landroid/content/pm/ResolveInfo;
    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 167
    .local v3, "r1":Landroid/content/pm/ResolveInfo;
    if-eqz v10, :cond_2

    .line 168
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v2, Landroid/content/pm/ResolveInfo;->priority:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " vs "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v3, Landroid/content/pm/ResolveInfo;->priority:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "PackageManager"

    invoke-static {v5, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    :cond_2
    iget v4, v2, Landroid/content/pm/ResolveInfo;->priority:I

    iget v5, v3, Landroid/content/pm/ResolveInfo;->priority:I

    if-ne v4, v5, :cond_11

    iget v4, v2, Landroid/content/pm/ResolveInfo;->preferredOrder:I

    iget v5, v3, Landroid/content/pm/ResolveInfo;->preferredOrder:I

    if-ne v4, v5, :cond_11

    iget-boolean v4, v2, Landroid/content/pm/ResolveInfo;->isDefault:Z

    iget-boolean v5, v3, Landroid/content/pm/ResolveInfo;->isDefault:Z

    if-eq v4, v5, :cond_3

    move/from16 v6, p9

    move-object/from16 v17, v2

    move-object/from16 v18, v3

    goto/16 :goto_6

    .line 180
    :cond_3
    move v4, v1

    iget-object v1, v0, Lcom/android/server/pm/ResolveIntentHelper;->mPreferredActivityHelper:Lcom/android/server/pm/PreferredActivityHelper;

    const/4 v8, 0x1

    const/4 v9, 0x0

    move-wide/from16 v5, p4

    move/from16 v11, p9

    move/from16 v12, p10

    move-object/from16 v17, v2

    move-object/from16 v18, v3

    move v13, v4

    const/16 v16, 0x0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    .end local v2    # "r0":Landroid/content/pm/ResolveInfo;
    .end local v3    # "r1":Landroid/content/pm/ResolveInfo;
    .local v17, "r0":Landroid/content/pm/ResolveInfo;
    .local v18, "r1":Landroid/content/pm/ResolveInfo;
    invoke-virtual/range {v1 .. v12}, Lcom/android/server/pm/PreferredActivityHelper;->findPreferredActivityNotLocked(Lcom/android/server/pm/Computer;Landroid/content/Intent;Ljava/lang/String;JLjava/util/List;ZZZIZ)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    .line 183
    .local v1, "ri":Landroid/content/pm/ResolveInfo;
    if-eqz v1, :cond_4

    .line 184
    return-object v1

    .line 186
    :cond_4
    const/4 v2, 0x0

    .line 187
    .local v2, "browserCount":I
    const/4 v3, 0x0

    move v8, v3

    .local v8, "i":I
    :goto_1
    if-ge v8, v14, :cond_9

    .line 188
    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v9, v3

    check-cast v9, Landroid/content/pm/ResolveInfo;

    .line 189
    .end local v1    # "ri":Landroid/content/pm/ResolveInfo;
    .local v9, "ri":Landroid/content/pm/ResolveInfo;
    iget-boolean v1, v9, Landroid/content/pm/ResolveInfo;->handleAllWebDataURI:Z

    if-eqz v1, :cond_5

    .line 190
    add-int/lit8 v2, v2, 0x1

    move v11, v2

    goto :goto_2

    .line 189
    :cond_5
    move v11, v2

    .line 193
    .end local v2    # "browserCount":I
    .local v11, "browserCount":I
    :goto_2
    iget-object v1, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v1}, Landroid/content/pm/ApplicationInfo;->isInstantApp()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 194
    iget-object v1, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v12, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 195
    .local v12, "packageName":Ljava/lang/String;
    nop

    .line 196
    move-object/from16 v1, p1

    invoke-interface {v1, v12}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v2

    .line 197
    .local v2, "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    if-eqz v2, :cond_6

    iget-object v1, v0, Lcom/android/server/pm/ResolveIntentHelper;->mDomainVerificationManager:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;

    move-object/from16 v3, p2

    move-wide/from16 v4, p4

    move/from16 v6, p9

    invoke-static/range {v1 .. v6}, Lcom/android/server/pm/PackageManagerServiceUtils;->hasAnyDomainApproval(Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;Lcom/android/server/pm/pkg/PackageStateInternal;Landroid/content/Intent;JI)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 199
    return-object v9

    .line 197
    :cond_6
    move/from16 v6, p9

    goto :goto_3

    .line 193
    .end local v2    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    .end local v12    # "packageName":Ljava/lang/String;
    :cond_7
    move/from16 v6, p9

    .line 187
    :cond_8
    :goto_3
    add-int/lit8 v8, v8, 0x1

    move-object v1, v9

    move v2, v11

    goto :goto_1

    .end local v9    # "ri":Landroid/content/pm/ResolveInfo;
    .end local v11    # "browserCount":I
    .restart local v1    # "ri":Landroid/content/pm/ResolveInfo;
    .local v2, "browserCount":I
    :cond_9
    move/from16 v6, p9

    .line 203
    .end local v8    # "i":I
    const-wide/16 v3, 0x2

    and-long v3, p6, v3

    const-wide/16 v8, 0x0

    cmp-long v3, v3, v8

    if-eqz v3, :cond_a

    .line 205
    return-object v16

    .line 207
    :cond_a
    new-instance v3, Landroid/content/pm/ResolveInfo;

    iget-object v4, v0, Lcom/android/server/pm/ResolveIntentHelper;->mResolveInfoSupplier:Ljava/util/function/Supplier;

    invoke-interface {v4}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    invoke-direct {v3, v4}, Landroid/content/pm/ResolveInfo;-><init>(Landroid/content/pm/ResolveInfo;)V

    .line 210
    .end local v1    # "ri":Landroid/content/pm/ResolveInfo;
    .local v3, "ri":Landroid/content/pm/ResolveInfo;
    if-ne v2, v14, :cond_b

    move v1, v13

    goto :goto_4

    :cond_b
    move v1, v15

    :goto_4
    iput-boolean v1, v3, Landroid/content/pm/ResolveInfo;->handleAllWebDataURI:Z

    .line 211
    new-instance v1, Landroid/content/pm/ActivityInfo;

    iget-object v4, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-direct {v1, v4}, Landroid/content/pm/ActivityInfo;-><init>(Landroid/content/pm/ActivityInfo;)V

    iput-object v1, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 212
    iget-object v1, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/app/ResolverActivity;->getLabelRes(Ljava/lang/String;)I

    move-result v4

    iput v4, v1, Landroid/content/pm/ActivityInfo;->labelRes:I

    .line 213
    iget-object v1, v3, Landroid/content/pm/ResolveInfo;->userHandle:Landroid/os/UserHandle;

    if-nez v1, :cond_c

    invoke-static {v6}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v1

    iput-object v1, v3, Landroid/content/pm/ResolveInfo;->userHandle:Landroid/os/UserHandle;

    .line 221
    :cond_c
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v1

    .line 222
    .local v1, "intentPackage":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_e

    invoke-direct {v0, v7, v1}, Lcom/android/server/pm/ResolveIntentHelper;->allHavePackage(Ljava/util/List;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 223
    invoke-interface {v7, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    iget-object v4, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 224
    .local v4, "appi":Landroid/content/pm/ApplicationInfo;
    iput-object v1, v3, Landroid/content/pm/ResolveInfo;->resolvePackageName:Ljava/lang/String;

    .line 225
    iget-object v5, v0, Lcom/android/server/pm/ResolveIntentHelper;->mUserNeedsBadging:Lcom/android/server/pm/UserNeedsBadgingCache;

    invoke-virtual {v5, v6}, Lcom/android/server/pm/UserNeedsBadgingCache;->get(I)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 226
    iput-boolean v13, v3, Landroid/content/pm/ResolveInfo;->noResourceId:Z

    goto :goto_5

    .line 228
    :cond_d
    iget v5, v4, Landroid/content/pm/ApplicationInfo;->icon:I

    iput v5, v3, Landroid/content/pm/ResolveInfo;->icon:I

    .line 230
    :goto_5
    iget v5, v4, Landroid/content/pm/ApplicationInfo;->icon:I

    iput v5, v3, Landroid/content/pm/ResolveInfo;->iconResourceId:I

    .line 231
    iget v5, v4, Landroid/content/pm/ApplicationInfo;->labelRes:I

    iput v5, v3, Landroid/content/pm/ResolveInfo;->labelRes:I

    .line 233
    .end local v4    # "appi":Landroid/content/pm/ApplicationInfo;
    :cond_e
    iget-object v4, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    new-instance v5, Landroid/content/pm/ApplicationInfo;

    iget-object v8, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-direct {v5, v8}, Landroid/content/pm/ApplicationInfo;-><init>(Landroid/content/pm/ApplicationInfo;)V

    iput-object v5, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 235
    if-eqz v6, :cond_f

    .line 236
    iget-object v4, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 237
    invoke-static {v5}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v5

    .line 236
    invoke-static {v6, v5}, Landroid/os/UserHandle;->getUid(II)I

    move-result v5

    iput v5, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 240
    :cond_f
    iget-object v4, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-nez v4, :cond_10

    iget-object v4, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    iput-object v5, v4, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    .line 241
    :cond_10
    iget-object v4, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v5, "android.dock_home"

    invoke-virtual {v4, v5, v13}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 242
    return-object v3

    .line 173
    .end local v1    # "intentPackage":Ljava/lang/String;
    .end local v17    # "r0":Landroid/content/pm/ResolveInfo;
    .end local v18    # "r1":Landroid/content/pm/ResolveInfo;
    .local v2, "r0":Landroid/content/pm/ResolveInfo;
    .local v3, "r1":Landroid/content/pm/ResolveInfo;
    :cond_11
    move/from16 v6, p9

    move-object/from16 v17, v2

    move-object/from16 v18, v3

    .line 176
    .end local v2    # "r0":Landroid/content/pm/ResolveInfo;
    .end local v3    # "r1":Landroid/content/pm/ResolveInfo;
    .restart local v17    # "r0":Landroid/content/pm/ResolveInfo;
    .restart local v18    # "r1":Landroid/content/pm/ResolveInfo;
    :goto_6
    invoke-interface {v7, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    return-object v1

    .line 161
    .end local v10    # "debug":Z
    .end local v17    # "r0":Landroid/content/pm/ResolveInfo;
    .end local v18    # "r1":Landroid/content/pm/ResolveInfo;
    :cond_12
    move/from16 v6, p9

    const/16 v16, 0x0

    goto :goto_7

    .line 157
    .end local v14    # "n":I
    :cond_13
    move/from16 v6, p9

    const/16 v16, 0x0

    .line 245
    :goto_7
    return-object v16
.end method


# virtual methods
.method public getLaunchIntentSenderForPackage(Lcom/android/server/pm/Computer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/content/IntentSender;
    .locals 22
    .param p1, "computer"    # Lcom/android/server/pm/Computer;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "callingPackage"    # Ljava/lang/String;
    .param p4, "featureId"    # Ljava/lang/String;
    .param p5, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 269
    move-object/from16 v0, p2

    move-object/from16 v3, p3

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 270
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v11

    .line 271
    .local v11, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v12

    .line 272
    .local v12, "callingPid":I
    const/4 v8, 0x0

    const-string v9, "get launch intent sender for package"

    const/4 v7, 0x0

    move-object/from16 v4, p1

    move/from16 v6, p5

    move v5, v11

    .end local v11    # "callingUid":I
    .local v5, "callingUid":I
    invoke-interface/range {v4 .. v9}, Lcom/android/server/pm/Computer;->enforceCrossUserPermission(IIZZLjava/lang/String;)V

    .line 274
    .end local v5    # "callingUid":I
    .restart local v11    # "callingUid":I
    const-wide/16 v1, 0x0

    move/from16 v13, p5

    invoke-interface {v4, v3, v1, v2, v13}, Lcom/android/server/pm/Computer;->getPackageUid(Ljava/lang/String;JI)I

    move-result v1

    .line 275
    .local v1, "packageUid":I
    invoke-static {v11, v1}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 282
    new-instance v5, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v5, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 283
    .local v5, "intentToResolve":Landroid/content/Intent;
    const-string v2, "android.intent.category.INFO"

    invoke-virtual {v5, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 284
    invoke-virtual {v5, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 285
    move-object/from16 v6, p0

    iget-object v7, v6, Lcom/android/server/pm/ResolveIntentHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    .line 286
    .local v7, "contentResolver":Landroid/content/ContentResolver;
    invoke-virtual {v5, v7}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v6

    .line 287
    .local v6, "resolvedType":Ljava/lang/String;
    const/4 v14, 0x1

    const/4 v15, 0x0

    move-object v9, v7

    .end local v7    # "contentResolver":Landroid/content/ContentResolver;
    .local v9, "contentResolver":Landroid/content/ContentResolver;
    const-wide/16 v7, 0x0

    move-object/from16 v16, v9

    .end local v9    # "contentResolver":Landroid/content/ContentResolver;
    .local v16, "contentResolver":Landroid/content/ContentResolver;
    const-wide/16 v9, 0x0

    move-object/from16 v21, v16

    move/from16 v16, v1

    move-object/from16 v1, v21

    .local v1, "contentResolver":Landroid/content/ContentResolver;
    .local v16, "packageUid":I
    invoke-interface/range {v4 .. v15}, Lcom/android/server/pm/Computer;->queryIntentActivitiesInternal(Landroid/content/Intent;Ljava/lang/String;JJIIIZZ)Ljava/util/List;

    move-result-object v17

    .line 290
    .local v17, "ris":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v17, :cond_0

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v4

    if-gtz v4, :cond_1

    :cond_0
    goto :goto_0

    :cond_1
    move-object v15, v5

    move v13, v11

    move v14, v12

    move-object/from16 v2, v17

    move-object/from16 v17, v6

    goto :goto_1

    .line 291
    :goto_0
    invoke-virtual {v5, v2}, Landroid/content/Intent;->removeCategory(Ljava/lang/String;)V

    .line 292
    const-string v2, "android.intent.category.LAUNCHER"

    invoke-virtual {v5, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 293
    invoke-virtual {v5, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 294
    invoke-virtual {v5, v1}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v6

    .line 295
    const/4 v14, 0x1

    const/4 v15, 0x0

    const-wide/16 v7, 0x0

    const-wide/16 v9, 0x0

    move-object/from16 v4, p1

    move/from16 v13, p5

    invoke-interface/range {v4 .. v15}, Lcom/android/server/pm/Computer;->queryIntentActivitiesInternal(Landroid/content/Intent;Ljava/lang/String;JJIIIZZ)Ljava/util/List;

    move-result-object v17

    move-object v15, v5

    move v13, v11

    move v14, v12

    move-object/from16 v2, v17

    move-object/from16 v17, v6

    .line 300
    .end local v5    # "intentToResolve":Landroid/content/Intent;
    .end local v6    # "resolvedType":Ljava/lang/String;
    .end local v11    # "callingUid":I
    .end local v12    # "callingPid":I
    .local v2, "ris":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .local v13, "callingUid":I
    .local v14, "callingPid":I
    .local v15, "intentToResolve":Landroid/content/Intent;
    .local v17, "resolvedType":Ljava/lang/String;
    :goto_1
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4, v15}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 301
    .local v4, "intent":Landroid/content/Intent;
    const/high16 v5, 0x10000000

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 305
    const/4 v5, 0x0

    const/4 v6, 0x0

    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_2

    .line 309
    invoke-virtual {v4, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 310
    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ResolveInfo;

    iget-object v7, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 311
    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/ResolveInfo;

    iget-object v8, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 310
    invoke-virtual {v4, v7, v8}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 313
    :cond_2
    move-object v9, v1

    .end local v1    # "contentResolver":Landroid/content/ContentResolver;
    .restart local v9    # "contentResolver":Landroid/content/ContentResolver;
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v1

    const/4 v7, 0x1

    new-array v8, v7, [Landroid/content/Intent;

    aput-object v4, v8, v6

    .line 317
    if-eqz v17, :cond_3

    new-array v5, v7, [Ljava/lang/String;

    aput-object v17, v5, v6

    .line 313
    :cond_3
    move-object v6, v2

    .end local v2    # "ris":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .local v6, "ris":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v2, 0x2

    move-object v7, v9

    move-object v9, v5

    .end local v9    # "contentResolver":Landroid/content/ContentResolver;
    .restart local v7    # "contentResolver":Landroid/content/ContentResolver;
    const/4 v5, 0x0

    move-object v10, v6

    .end local v6    # "ris":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .local v10, "ris":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v6, 0x0

    move-object v11, v7

    .end local v7    # "contentResolver":Landroid/content/ContentResolver;
    .local v11, "contentResolver":Landroid/content/ContentResolver;
    const/4 v7, 0x1

    move-object v12, v10

    .end local v10    # "ris":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .local v12, "ris":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/high16 v10, 0x4000000

    move-object/from16 v18, v11

    .end local v11    # "contentResolver":Landroid/content/ContentResolver;
    .local v18, "contentResolver":Landroid/content/ContentResolver;
    const/4 v11, 0x0

    move-object/from16 v20, v4

    move-object/from16 v19, v12

    move-object/from16 v4, p4

    move/from16 v12, p5

    .end local v4    # "intent":Landroid/content/Intent;
    .end local v12    # "ris":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .local v19, "ris":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .local v20, "intent":Landroid/content/Intent;
    invoke-interface/range {v1 .. v12}, Landroid/app/IActivityManager;->getIntentSenderWithFeature(ILjava/lang/String;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;I[Landroid/content/Intent;[Ljava/lang/String;ILandroid/os/Bundle;I)Landroid/content/IIntentSender;

    move-result-object v1

    .line 319
    .local v1, "target":Landroid/content/IIntentSender;
    new-instance v2, Landroid/content/IntentSender;

    invoke-direct {v2, v1}, Landroid/content/IntentSender;-><init>(Landroid/content/IIntentSender;)V

    return-object v2

    .line 276
    .end local v13    # "callingUid":I
    .end local v14    # "callingPid":I
    .end local v15    # "intentToResolve":Landroid/content/Intent;
    .end local v16    # "packageUid":I
    .end local v17    # "resolvedType":Ljava/lang/String;
    .end local v18    # "contentResolver":Landroid/content/ContentResolver;
    .end local v19    # "ris":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v20    # "intent":Landroid/content/Intent;
    .local v1, "packageUid":I
    .local v11, "callingUid":I
    .local v12, "callingPid":I
    :cond_4
    move/from16 v16, v1

    move v13, v11

    .end local v1    # "packageUid":I
    .end local v11    # "callingUid":I
    .restart local v13    # "callingUid":I
    .restart local v16    # "packageUid":I
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getLaunchIntentSenderForPackage() from calling uid: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " does not own package: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public queryIntentActivityOptionsInternal(Lcom/android/server/pm/Computer;Landroid/content/ComponentName;[Landroid/content/Intent;[Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;JI)Ljava/util/List;
    .locals 25
    .param p1, "computer"    # Lcom/android/server/pm/Computer;
    .param p2, "caller"    # Landroid/content/ComponentName;
    .param p3, "specifics"    # [Landroid/content/Intent;
    .param p4, "specificTypes"    # [Ljava/lang/String;
    .param p5, "intent"    # Landroid/content/Intent;
    .param p6, "resolvedType"    # Ljava/lang/String;
    .param p7, "flags"    # J
    .param p9, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/Computer;",
            "Landroid/content/ComponentName;",
            "[",
            "Landroid/content/Intent;",
            "[",
            "Ljava/lang/String;",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "JI)",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 598
    move-object/from16 v0, p0

    move-object/from16 v12, p3

    move/from16 v3, p9

    iget-object v1, v0, Lcom/android/server/pm/ResolveIntentHelper;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v1, v3}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 599
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    .line 600
    .local v7, "callingUid":I
    nop

    .line 602
    move-object/from16 v1, p1

    move-object/from16 v2, p5

    move-object/from16 v4, p6

    move-wide/from16 v5, p7

    move v8, v7

    .end local v7    # "callingUid":I
    .local v8, "callingUid":I
    invoke-interface/range {v1 .. v6}, Lcom/android/server/pm/Computer;->isImplicitImageCaptureIntentAndNotSetByDpc(Landroid/content/Intent;ILjava/lang/String;J)Z

    move-result v7

    .line 600
    const/4 v6, 0x0

    move-wide/from16 v2, p7

    move/from16 v4, p9

    move v5, v8

    .end local v8    # "callingUid":I
    .local v5, "callingUid":I
    invoke-interface/range {v1 .. v7}, Lcom/android/server/pm/Computer;->updateFlagsForResolve(JIIZZ)J

    move-result-wide v7

    .line 604
    move v2, v5

    .end local v5    # "callingUid":I
    .end local p7    # "flags":J
    .local v2, "callingUid":I
    .local v7, "flags":J
    const/4 v5, 0x0

    const-string/jumbo v6, "query intent activity options"

    const/4 v4, 0x0

    move/from16 v3, p9

    invoke-interface/range {v1 .. v6}, Lcom/android/server/pm/Computer;->enforceCrossUserPermission(IIZZLjava/lang/String;)V

    .line 606
    move v13, v2

    .end local v2    # "callingUid":I
    .local v13, "callingUid":I
    invoke-virtual/range {p5 .. p5}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v14

    .line 608
    .local v14, "resultsAction":Ljava/lang/String;
    const-wide/16 v15, 0x40

    or-long v4, v7, v15

    move-object/from16 v2, p5

    move-object/from16 v3, p6

    move/from16 v6, p9

    invoke-interface/range {v1 .. v6}, Lcom/android/server/pm/Computer;->queryIntentActivitiesInternal(Landroid/content/Intent;Ljava/lang/String;JI)Ljava/util/List;

    move-result-object v4

    .line 615
    .local v4, "results":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v1, 0x0

    .line 626
    .local v1, "specificsPos":I
    const/4 v2, 0x0

    if-eqz v12, :cond_e

    .line 627
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v5, v12

    if-ge v3, v5, :cond_d

    .line 628
    move-object v5, v2

    aget-object v2, v12, v3

    .line 629
    .local v2, "sintent":Landroid/content/Intent;
    if-nez v2, :cond_1

    .line 630
    move/from16 v6, p9

    move/from16 v19, v1

    move v12, v3

    move/from16 v21, v13

    move-wide/from16 p7, v15

    move-object/from16 v3, p1

    move-object/from16 v16, v4

    move-wide v4, v7

    goto/16 :goto_2

    .line 637
    :cond_1
    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    .line 638
    .local v6, "action":Ljava/lang/String;
    if-eqz v14, :cond_2

    invoke-virtual {v14, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 641
    const/4 v6, 0x0

    .line 644
    :cond_2
    const/16 v17, 0x0

    .line 645
    .local v17, "ri":Landroid/content/pm/ResolveInfo;
    const/16 v18, 0x0

    .line 647
    .local v18, "ai":Landroid/content/pm/ActivityInfo;
    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v9

    .line 648
    .local v9, "comp":Landroid/content/ComponentName;
    if-nez v9, :cond_5

    .line 649
    nop

    .line 650
    if-eqz p4, :cond_3

    aget-object v10, p4, v3

    goto :goto_1

    :cond_3
    move-object v10, v5

    .line 652
    :goto_1
    move v11, v3

    move-object v3, v10

    .end local v3    # "i":I
    .local v11, "i":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v10

    move/from16 v19, v11

    .end local v11    # "i":I
    .local v19, "i":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v11

    .line 649
    move-object/from16 v20, v5

    move-object/from16 v21, v6

    move-wide/from16 v23, v7

    move-object v8, v4

    move-wide/from16 v4, v23

    .end local v6    # "action":Ljava/lang/String;
    .end local v7    # "flags":J
    .local v4, "flags":J
    .local v8, "results":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .local v21, "action":Ljava/lang/String;
    const-wide/16 v6, 0x0

    move-object/from16 v22, v9

    .end local v9    # "comp":Landroid/content/ComponentName;
    .local v22, "comp":Landroid/content/ComponentName;
    const/4 v9, 0x0

    move-object/from16 p7, v21

    move/from16 v21, v13

    move-object/from16 v13, p7

    move-wide/from16 p7, v15

    move/from16 v12, v19

    move-object/from16 v15, v22

    move/from16 v19, v1

    move-object/from16 v16, v8

    move-object/from16 v1, p1

    move/from16 v8, p9

    .end local v1    # "specificsPos":I
    .end local v8    # "results":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v22    # "comp":Landroid/content/ComponentName;
    .local v12, "i":I
    .local v13, "action":Ljava/lang/String;
    .local v15, "comp":Landroid/content/ComponentName;
    .local v16, "results":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .local v19, "specificsPos":I
    .local v21, "callingUid":I
    invoke-virtual/range {v0 .. v11}, Lcom/android/server/pm/ResolveIntentHelper;->resolveIntentInternal(Lcom/android/server/pm/Computer;Landroid/content/Intent;Ljava/lang/String;JJIZII)Landroid/content/pm/ResolveInfo;

    move-result-object v3

    .line 653
    move v6, v8

    .end local v17    # "ri":Landroid/content/pm/ResolveInfo;
    .local v3, "ri":Landroid/content/pm/ResolveInfo;
    if-nez v3, :cond_4

    .line 654
    move-object/from16 v3, p1

    goto :goto_2

    .line 656
    :cond_4
    iget-object v1, v0, Lcom/android/server/pm/ResolveIntentHelper;->mResolveInfoSupplier:Ljava/util/function/Supplier;

    invoke-interface {v1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    .line 659
    iget-object v1, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 660
    .end local v18    # "ai":Landroid/content/pm/ActivityInfo;
    .local v1, "ai":Landroid/content/pm/ActivityInfo;
    new-instance v7, Landroid/content/ComponentName;

    iget-object v8, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v9, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v7, v8, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v9, v7

    move-object/from16 v17, v3

    move-object/from16 v3, p1

    .end local v15    # "comp":Landroid/content/ComponentName;
    .restart local v9    # "comp":Landroid/content/ComponentName;
    goto :goto_3

    .line 663
    .end local v12    # "i":I
    .end local v16    # "results":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v19    # "specificsPos":I
    .end local v21    # "callingUid":I
    .local v1, "specificsPos":I
    .local v3, "i":I
    .local v4, "results":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v6    # "action":Ljava/lang/String;
    .restart local v7    # "flags":J
    .local v13, "callingUid":I
    .restart local v17    # "ri":Landroid/content/pm/ResolveInfo;
    .restart local v18    # "ai":Landroid/content/pm/ActivityInfo;
    :cond_5
    move/from16 v19, v1

    move v12, v3

    move/from16 v21, v13

    move-wide/from16 p7, v15

    move-object/from16 v16, v4

    move-object v13, v6

    move-wide v4, v7

    move-object v15, v9

    move/from16 v6, p9

    .end local v1    # "specificsPos":I
    .end local v3    # "i":I
    .end local v6    # "action":Ljava/lang/String;
    .end local v7    # "flags":J
    .end local v9    # "comp":Landroid/content/ComponentName;
    .local v4, "flags":J
    .restart local v12    # "i":I
    .local v13, "action":Ljava/lang/String;
    .restart local v15    # "comp":Landroid/content/ComponentName;
    .restart local v16    # "results":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v19    # "specificsPos":I
    .restart local v21    # "callingUid":I
    move-object/from16 v3, p1

    invoke-interface {v3, v15, v4, v5, v6}, Lcom/android/server/pm/Computer;->getActivityInfo(Landroid/content/ComponentName;JI)Landroid/content/pm/ActivityInfo;

    move-result-object v1

    .line 664
    .end local v18    # "ai":Landroid/content/pm/ActivityInfo;
    .local v1, "ai":Landroid/content/pm/ActivityInfo;
    if-nez v1, :cond_6

    .line 665
    nop

    .line 627
    .end local v2    # "sintent":Landroid/content/Intent;
    .end local v12    # "i":I
    .end local v15    # "comp":Landroid/content/ComponentName;
    .end local v16    # "results":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v17    # "ri":Landroid/content/pm/ResolveInfo;
    .end local v19    # "specificsPos":I
    .end local v21    # "callingUid":I
    .local v1, "specificsPos":I
    .restart local v3    # "i":I
    .local v4, "results":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v7    # "flags":J
    .local v13, "callingUid":I
    :goto_2
    move-object/from16 v10, v16

    move/from16 v1, v19

    .end local v1    # "specificsPos":I
    .end local v3    # "i":I
    .end local v7    # "flags":J
    .end local v13    # "callingUid":I
    .local v4, "flags":J
    .restart local v12    # "i":I
    .restart local v16    # "results":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v19    # "specificsPos":I
    .restart local v21    # "callingUid":I
    goto/16 :goto_6

    .line 664
    .local v1, "ai":Landroid/content/pm/ActivityInfo;
    .restart local v2    # "sintent":Landroid/content/Intent;
    .local v13, "action":Ljava/lang/String;
    .restart local v15    # "comp":Landroid/content/ComponentName;
    .restart local v17    # "ri":Landroid/content/pm/ResolveInfo;
    :cond_6
    move-object v9, v15

    .line 672
    .end local v15    # "comp":Landroid/content/ComponentName;
    .restart local v9    # "comp":Landroid/content/ComponentName;
    :goto_3
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v7

    .line 674
    .local v7, "N":I
    move/from16 v8, v19

    .local v8, "j":I
    :goto_4
    if-ge v8, v7, :cond_b

    .line 675
    move-object/from16 v10, v16

    .end local v16    # "results":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .local v10, "results":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v10, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/pm/ResolveInfo;

    .line 676
    .local v11, "sri":Landroid/content/pm/ResolveInfo;
    iget-object v15, v11, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v15, v15, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v9}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    nop

    if-eqz v0, :cond_7

    iget-object v0, v11, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 678
    invoke-virtual {v9}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v15

    .line 677
    invoke-virtual {v0, v15}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    :cond_7
    nop

    nop

    if-eqz v13, :cond_a

    iget-object v0, v11, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    .line 679
    invoke-virtual {v0, v13}, Landroid/content/IntentFilter;->matchAction(Ljava/lang/String;)Z

    move-result v0

    nop

    if-eqz v0, :cond_a

    .line 680
    :cond_8
    invoke-interface {v10, v8}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 686
    if-nez v17, :cond_9

    .line 687
    move-object/from16 v17, v11

    .line 689
    :cond_9
    add-int/lit8 v8, v8, -0x1

    .line 690
    add-int/lit8 v7, v7, -0x1

    .line 674
    .end local v11    # "sri":Landroid/content/pm/ResolveInfo;
    :cond_a
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v0, p0

    move-object/from16 v16, v10

    goto :goto_4

    .line 695
    .end local v10    # "results":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v16    # "results":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_b
    move-object/from16 v10, v16

    .end local v16    # "results":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v10    # "results":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-nez v17, :cond_c

    .line 696
    new-instance v0, Landroid/content/pm/ResolveInfo;

    invoke-direct {v0}, Landroid/content/pm/ResolveInfo;-><init>()V

    .line 697
    .end local v17    # "ri":Landroid/content/pm/ResolveInfo;
    .local v0, "ri":Landroid/content/pm/ResolveInfo;
    iput-object v1, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    goto :goto_5

    .line 695
    .end local v0    # "ri":Landroid/content/pm/ResolveInfo;
    .restart local v17    # "ri":Landroid/content/pm/ResolveInfo;
    :cond_c
    move-object/from16 v0, v17

    .line 699
    .end local v17    # "ri":Landroid/content/pm/ResolveInfo;
    .restart local v0    # "ri":Landroid/content/pm/ResolveInfo;
    :goto_5
    move/from16 v11, v19

    .end local v19    # "specificsPos":I
    .local v11, "specificsPos":I
    invoke-interface {v10, v11, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 700
    iput v12, v0, Landroid/content/pm/ResolveInfo;->specificIndex:I

    .line 701
    add-int/lit8 v11, v11, 0x1

    move v1, v11

    .line 627
    .end local v0    # "ri":Landroid/content/pm/ResolveInfo;
    .end local v2    # "sintent":Landroid/content/Intent;
    .end local v7    # "N":I
    .end local v8    # "j":I
    .end local v9    # "comp":Landroid/content/ComponentName;
    .end local v11    # "specificsPos":I
    .end local v13    # "action":Ljava/lang/String;
    .local v1, "specificsPos":I
    :goto_6
    add-int/lit8 v0, v12, 0x1

    move-object/from16 v12, p3

    move-wide/from16 v15, p7

    move v3, v0

    move-wide v7, v4

    move-object v4, v10

    move/from16 v13, v21

    const/4 v2, 0x0

    move-object/from16 v0, p0

    .end local v12    # "i":I
    .local v0, "i":I
    goto/16 :goto_0

    .end local v0    # "i":I
    .end local v10    # "results":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v21    # "callingUid":I
    .restart local v3    # "i":I
    .local v4, "results":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .local v7, "flags":J
    .local v13, "callingUid":I
    :cond_d
    move/from16 v6, p9

    move v11, v1

    move v12, v3

    move-object v10, v4

    move-wide v4, v7

    move/from16 v21, v13

    move-wide/from16 p7, v15

    move-object/from16 v3, p1

    .end local v1    # "specificsPos":I
    .end local v3    # "i":I
    .end local v7    # "flags":J
    .end local v13    # "callingUid":I
    .local v4, "flags":J
    .restart local v10    # "results":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v11    # "specificsPos":I
    .restart local v12    # "i":I
    .restart local v21    # "callingUid":I
    goto :goto_7

    .line 626
    .end local v10    # "results":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v11    # "specificsPos":I
    .end local v12    # "i":I
    .end local v21    # "callingUid":I
    .restart local v1    # "specificsPos":I
    .local v4, "results":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v7    # "flags":J
    .restart local v13    # "callingUid":I
    :cond_e
    move-object/from16 v3, p1

    move/from16 v6, p9

    move-object v10, v4

    move-wide v4, v7

    move/from16 v21, v13

    move-wide/from16 p7, v15

    .line 707
    .end local v7    # "flags":J
    .end local v13    # "callingUid":I
    .local v4, "flags":J
    .restart local v10    # "results":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v21    # "callingUid":I
    :goto_7
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v0

    .line 708
    .local v0, "N":I
    move v2, v1

    .local v2, "i":I
    :goto_8
    add-int/lit8 v7, v0, -0x1

    if-ge v2, v7, :cond_16

    .line 709
    invoke-interface {v10, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ResolveInfo;

    .line 710
    .local v7, "rii":Landroid/content/pm/ResolveInfo;
    iget-object v11, v7, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    if-nez v11, :cond_f

    .line 711
    goto :goto_b

    .line 716
    :cond_f
    iget-object v11, v7, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    invoke-virtual {v11}, Landroid/content/IntentFilter;->actionsIterator()Ljava/util/Iterator;

    move-result-object v11

    .line 717
    .local v11, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    if-nez v11, :cond_10

    .line 718
    goto :goto_b

    .line 720
    :cond_10
    :goto_9
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_14

    .line 721
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 722
    .local v12, "action":Ljava/lang/String;
    if-eqz v14, :cond_11

    invoke-virtual {v14, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_11

    .line 725
    goto :goto_9

    .line 727
    :cond_11
    add-int/lit8 v13, v2, 0x1

    .local v13, "j":I
    :goto_a
    if-ge v13, v0, :cond_13

    .line 728
    invoke-interface {v10, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/pm/ResolveInfo;

    .line 729
    .local v15, "rij":Landroid/content/pm/ResolveInfo;
    const-wide/16 v16, 0x0

    iget-object v8, v15, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    if-eqz v8, :cond_12

    iget-object v8, v15, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    invoke-virtual {v8, v12}, Landroid/content/IntentFilter;->hasAction(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_12

    .line 730
    invoke-interface {v10, v13}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 736
    add-int/lit8 v13, v13, -0x1

    .line 737
    add-int/lit8 v0, v0, -0x1

    .line 727
    .end local v15    # "rij":Landroid/content/pm/ResolveInfo;
    :cond_12
    add-int/lit8 v13, v13, 0x1

    goto :goto_a

    :cond_13
    const-wide/16 v16, 0x0

    .line 740
    .end local v12    # "action":Ljava/lang/String;
    .end local v13    # "j":I
    goto :goto_9

    .line 744
    :cond_14
    const-wide/16 v16, 0x0

    and-long v8, v4, p7

    cmp-long v8, v8, v16

    if-nez v8, :cond_15

    .line 745
    const/4 v8, 0x0

    iput-object v8, v7, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    .line 708
    .end local v7    # "rii":Landroid/content/pm/ResolveInfo;
    .end local v11    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_15
    :goto_b
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_16
    const-wide/16 v16, 0x0

    .line 750
    .end local v2    # "i":I
    if-eqz p2, :cond_18

    .line 751
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v0

    .line 752
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_c
    if-ge v2, v0, :cond_18

    .line 753
    invoke-interface {v10, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ResolveInfo;

    iget-object v7, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 754
    .local v7, "ainfo":Landroid/content/pm/ActivityInfo;
    invoke-virtual/range {p2 .. p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    iget-object v9, v7, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v9, v9, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_17

    .line 755
    invoke-virtual/range {p2 .. p2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v8

    iget-object v9, v7, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_17

    .line 756
    invoke-interface {v10, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 757
    goto :goto_d

    .line 752
    .end local v7    # "ainfo":Landroid/content/pm/ActivityInfo;
    :cond_17
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 765
    .end local v2    # "i":I
    :cond_18
    :goto_d
    and-long v7, v4, p7

    cmp-long v2, v7, v16

    if-nez v2, :cond_19

    .line 766
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v0

    .line 767
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_e
    if-ge v2, v0, :cond_19

    .line 768
    invoke-interface {v10, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ResolveInfo;

    const/4 v8, 0x0

    iput-object v8, v7, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    .line 767
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 773
    .end local v2    # "i":I
    :cond_19
    return-object v10
.end method

.method public queryIntentContentProvidersInternal(Lcom/android/server/pm/Computer;Landroid/content/Intent;Ljava/lang/String;JI)Ljava/util/List;
    .locals 19
    .param p1, "computer"    # Lcom/android/server/pm/Computer;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "resolvedType"    # Ljava/lang/String;
    .param p4, "flags"    # J
    .param p6, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/Computer;",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "JI)",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 462
    move-object/from16 v1, p1

    move/from16 v4, p6

    move-object/from16 v7, p0

    iget-object v0, v7, Lcom/android/server/pm/ResolveIntentHelper;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v0, v4}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 463
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    .line 465
    .local v5, "callingUid":I
    invoke-interface {v1, v5}, Lcom/android/server/pm/Computer;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object v8

    .line 466
    .local v8, "instantAppPkgName":Ljava/lang/String;
    move v4, v5

    .end local v5    # "callingUid":I
    .local v4, "callingUid":I
    const/4 v5, 0x0

    const/4 v6, 0x0

    move/from16 v3, p6

    move-object v0, v1

    move-wide/from16 v1, p4

    invoke-interface/range {v0 .. v6}, Lcom/android/server/pm/Computer;->updateFlagsForResolve(JIIZZ)J

    move-result-wide v1

    .line 468
    move v9, v4

    move v4, v3

    .end local v4    # "callingUid":I
    .end local p4    # "flags":J
    .local v1, "flags":J
    .local v9, "callingUid":I
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    .line 469
    .local v3, "comp":Landroid/content/ComponentName;
    if-nez v3, :cond_1

    .line 470
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getSelector()Landroid/content/Intent;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 471
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getSelector()Landroid/content/Intent;

    move-result-object v5

    .line 472
    .end local p2    # "intent":Landroid/content/Intent;
    .local v5, "intent":Landroid/content/Intent;
    invoke-virtual {v5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    move-object v10, v3

    goto :goto_0

    .line 475
    .end local v5    # "intent":Landroid/content/Intent;
    .restart local p2    # "intent":Landroid/content/Intent;
    :cond_1
    move-object/from16 v5, p2

    move-object v10, v3

    .end local v3    # "comp":Landroid/content/ComponentName;
    .end local p2    # "intent":Landroid/content/Intent;
    .restart local v5    # "intent":Landroid/content/Intent;
    .local v10, "comp":Landroid/content/ComponentName;
    :goto_0
    if-eqz v10, :cond_e

    .line 476
    new-instance v3, Ljava/util/ArrayList;

    const/4 v6, 0x1

    invoke-direct {v3, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 477
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v0, v10, v1, v2, v4}, Lcom/android/server/pm/Computer;->getProviderInfo(Landroid/content/ComponentName;JI)Landroid/content/pm/ProviderInfo;

    move-result-object v11

    .line 478
    .local v11, "pi":Landroid/content/pm/ProviderInfo;
    if-eqz v11, :cond_c

    .line 483
    const-wide/32 v12, 0x800000

    and-long/2addr v12, v1

    const-wide/16 v14, 0x0

    cmp-long v12, v12, v14

    if-eqz v12, :cond_2

    move v12, v6

    goto :goto_1

    :cond_2
    const/4 v12, 0x0

    .line 485
    .local v12, "matchInstantApp":Z
    :goto_1
    const-wide/32 v16, 0x1000000

    and-long v16, v1, v16

    cmp-long v14, v16, v14

    if-eqz v14, :cond_3

    move v14, v6

    goto :goto_2

    :cond_3
    const/4 v14, 0x0

    .line 487
    .local v14, "matchVisibleToInstantAppOnly":Z
    :goto_2
    if-eqz v8, :cond_4

    move v15, v6

    goto :goto_3

    :cond_4
    const/4 v15, 0x0

    .line 489
    .local v15, "isCallerInstantApp":Z
    :goto_3
    nop

    .line 490
    invoke-virtual {v10}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 491
    .local v6, "isTargetSameInstantApp":Z
    iget-object v13, v11, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v13, v13, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    and-int/lit16 v13, v13, 0x80

    if-eqz v13, :cond_5

    const/4 v13, 0x1

    goto :goto_4

    :cond_5
    const/4 v13, 0x0

    .line 494
    .local v13, "isTargetInstantApp":Z
    :goto_4
    move-wide/from16 v16, v1

    .end local v1    # "flags":J
    .local v16, "flags":J
    iget v1, v11, Landroid/content/pm/ProviderInfo;->flags:I

    const/high16 v2, 0x100000

    and-int/2addr v1, v2

    if-nez v1, :cond_6

    const/4 v1, 0x1

    goto :goto_5

    :cond_6
    const/4 v1, 0x0

    .line 496
    .local v1, "isTargetHiddenFromInstantApp":Z
    :goto_5
    if-nez v6, :cond_9

    if-nez v12, :cond_7

    if-nez v15, :cond_7

    if-nez v13, :cond_8

    :cond_7
    if-eqz v14, :cond_9

    if-eqz v15, :cond_9

    if-eqz v1, :cond_9

    :cond_8
    const/4 v2, 0x1

    goto :goto_6

    :cond_9
    const/4 v2, 0x0

    .line 501
    .local v2, "blockResolution":Z
    :goto_6
    if-nez v13, :cond_a

    if-nez v15, :cond_a

    move/from16 p5, v1

    .end local v1    # "isTargetHiddenFromInstantApp":Z
    .local p5, "isTargetHiddenFromInstantApp":Z
    iget-object v1, v11, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 503
    move/from16 v18, v2

    .end local v2    # "blockResolution":Z
    .local v18, "blockResolution":Z
    const/16 v2, 0x3e8

    invoke-interface {v0, v1, v2}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;I)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v1

    .line 502
    invoke-interface {v0, v1, v9, v4}, Lcom/android/server/pm/Computer;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result v1

    if-eqz v1, :cond_b

    const/4 v1, 0x1

    goto :goto_7

    .line 501
    .end local v18    # "blockResolution":Z
    .end local p5    # "isTargetHiddenFromInstantApp":Z
    .restart local v1    # "isTargetHiddenFromInstantApp":Z
    .restart local v2    # "blockResolution":Z
    :cond_a
    move/from16 p5, v1

    move/from16 v18, v2

    .line 502
    .end local v1    # "isTargetHiddenFromInstantApp":Z
    .end local v2    # "blockResolution":Z
    .restart local v18    # "blockResolution":Z
    .restart local p5    # "isTargetHiddenFromInstantApp":Z
    :cond_b
    const/4 v1, 0x0

    :goto_7
    nop

    .line 505
    .local v1, "blockNormalResolution":Z
    if-nez v18, :cond_d

    if-nez v1, :cond_d

    .line 506
    new-instance v2, Landroid/content/pm/ResolveInfo;

    invoke-direct {v2}, Landroid/content/pm/ResolveInfo;-><init>()V

    .line 507
    .local v2, "ri":Landroid/content/pm/ResolveInfo;
    iput-object v11, v2, Landroid/content/pm/ResolveInfo;->providerInfo:Landroid/content/pm/ProviderInfo;

    .line 508
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 478
    .end local v2    # "ri":Landroid/content/pm/ResolveInfo;
    .end local v6    # "isTargetSameInstantApp":Z
    .end local v12    # "matchInstantApp":Z
    .end local v13    # "isTargetInstantApp":Z
    .end local v14    # "matchVisibleToInstantAppOnly":Z
    .end local v15    # "isCallerInstantApp":Z
    .end local v16    # "flags":J
    .end local v18    # "blockResolution":Z
    .end local p5    # "isTargetHiddenFromInstantApp":Z
    .local v1, "flags":J
    :cond_c
    move-wide/from16 v16, v1

    .line 511
    .end local v1    # "flags":J
    .restart local v16    # "flags":J
    :cond_d
    :goto_8
    return-object v3

    .line 514
    .end local v3    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v11    # "pi":Landroid/content/pm/ProviderInfo;
    .end local v16    # "flags":J
    .restart local v1    # "flags":J
    :cond_e
    move-wide/from16 v16, v1

    .end local v1    # "flags":J
    .restart local v16    # "flags":J
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/Computer;->getComponentResolver()Lcom/android/server/pm/resolution/ComponentResolverApi;

    move-result-object v0

    .line 515
    .local v0, "componentResolver":Lcom/android/server/pm/resolution/ComponentResolverApi;
    invoke-virtual {v5}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v11

    .line 516
    .local v11, "pkgName":Ljava/lang/String;
    if-nez v11, :cond_10

    .line 517
    move-object/from16 v1, p1

    move-object/from16 v3, p3

    move v6, v4

    move-object v2, v5

    move-wide/from16 v4, v16

    .end local v5    # "intent":Landroid/content/Intent;
    .end local v16    # "flags":J
    .local v2, "intent":Landroid/content/Intent;
    .local v4, "flags":J
    invoke-interface/range {v0 .. v6}, Lcom/android/server/pm/resolution/ComponentResolverApi;->queryProviders(Lcom/android/server/pm/Computer;Landroid/content/Intent;Ljava/lang/String;JI)Ljava/util/List;

    move-result-object v12

    .line 519
    move-object v13, v0

    move-object v6, v2

    .end local v0    # "componentResolver":Lcom/android/server/pm/resolution/ComponentResolverApi;
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v4    # "flags":J
    .local v6, "intent":Landroid/content/Intent;
    .local v12, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .local v13, "componentResolver":Lcom/android/server/pm/resolution/ComponentResolverApi;
    .restart local v16    # "flags":J
    if-nez v12, :cond_f

    .line 520
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 522
    :cond_f
    move-object/from16 v1, p1

    move/from16 v4, p6

    move-object v0, v7

    move-object v3, v8

    move v5, v9

    move-object v2, v12

    .end local v8    # "instantAppPkgName":Ljava/lang/String;
    .end local v9    # "callingUid":I
    .end local v12    # "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .local v2, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .local v3, "instantAppPkgName":Ljava/lang/String;
    .local v5, "callingUid":I
    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/ResolveIntentHelper;->applyPostContentProviderResolutionFilter(Lcom/android/server/pm/Computer;Ljava/util/List;Ljava/lang/String;II)Ljava/util/List;

    move-result-object v7

    .end local v3    # "instantAppPkgName":Ljava/lang/String;
    .end local v5    # "callingUid":I
    .restart local v8    # "instantAppPkgName":Ljava/lang/String;
    .restart local v9    # "callingUid":I
    return-object v7

    .line 525
    .end local v2    # "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v6    # "intent":Landroid/content/Intent;
    .end local v13    # "componentResolver":Lcom/android/server/pm/resolution/ComponentResolverApi;
    .restart local v0    # "componentResolver":Lcom/android/server/pm/resolution/ComponentResolverApi;
    .local v5, "intent":Landroid/content/Intent;
    :cond_10
    move-object/from16 v1, p1

    move-object v13, v0

    move-object v6, v5

    .end local v0    # "componentResolver":Lcom/android/server/pm/resolution/ComponentResolverApi;
    .end local v5    # "intent":Landroid/content/Intent;
    .restart local v6    # "intent":Landroid/content/Intent;
    .restart local v13    # "componentResolver":Lcom/android/server/pm/resolution/ComponentResolverApi;
    invoke-interface {v1, v11}, Lcom/android/server/pm/Computer;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v12

    .line 526
    .local v12, "pkg":Lcom/android/server/pm/pkg/AndroidPackage;
    if-eqz v12, :cond_12

    .line 527
    nop

    .line 528
    move-object v2, v6

    .end local v6    # "intent":Landroid/content/Intent;
    .local v2, "intent":Landroid/content/Intent;
    invoke-interface {v12}, Lcom/android/server/pm/pkg/AndroidPackage;->getProviders()Ljava/util/List;

    move-result-object v6

    .line 527
    move-object/from16 v3, p3

    move/from16 v7, p6

    move-object v0, v13

    move-wide/from16 v4, v16

    .end local v13    # "componentResolver":Lcom/android/server/pm/resolution/ComponentResolverApi;
    .end local v16    # "flags":J
    .restart local v0    # "componentResolver":Lcom/android/server/pm/resolution/ComponentResolverApi;
    .restart local v4    # "flags":J
    invoke-interface/range {v0 .. v7}, Lcom/android/server/pm/resolution/ComponentResolverApi;->queryProviders(Lcom/android/server/pm/Computer;Landroid/content/Intent;Ljava/lang/String;JLjava/util/List;I)Ljava/util/List;

    move-result-object v6

    .line 529
    move-object v7, v2

    .end local v0    # "componentResolver":Lcom/android/server/pm/resolution/ComponentResolverApi;
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v4    # "flags":J
    .local v6, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .local v7, "intent":Landroid/content/Intent;
    .restart local v13    # "componentResolver":Lcom/android/server/pm/resolution/ComponentResolverApi;
    .restart local v16    # "flags":J
    if-nez v6, :cond_11

    .line 530
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 532
    :cond_11
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v4, p6

    move-object v2, v6

    move-object v3, v8

    move v5, v9

    .end local v6    # "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v8    # "instantAppPkgName":Ljava/lang/String;
    .end local v9    # "callingUid":I
    .local v2, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v3    # "instantAppPkgName":Ljava/lang/String;
    .local v5, "callingUid":I
    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/ResolveIntentHelper;->applyPostContentProviderResolutionFilter(Lcom/android/server/pm/Computer;Ljava/util/List;Ljava/lang/String;II)Ljava/util/List;

    move-result-object v6

    .end local v5    # "callingUid":I
    .restart local v9    # "callingUid":I
    return-object v6

    .line 535
    .end local v2    # "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v3    # "instantAppPkgName":Ljava/lang/String;
    .end local v7    # "intent":Landroid/content/Intent;
    .local v6, "intent":Landroid/content/Intent;
    .restart local v8    # "instantAppPkgName":Ljava/lang/String;
    :cond_12
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public queryIntentReceiversInternal(Lcom/android/server/pm/Computer;Landroid/content/Intent;Ljava/lang/String;JII)Ljava/util/List;
    .locals 10
    .param p1, "computer"    # Lcom/android/server/pm/Computer;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "resolvedType"    # Ljava/lang/String;
    .param p4, "flags"    # J
    .param p6, "userId"    # I
    .param p7, "queryingUid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/Computer;",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "JII)",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 330
    const/4 v8, -0x1

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    move/from16 v6, p6

    move/from16 v7, p7

    invoke-virtual/range {v0 .. v9}, Lcom/android/server/pm/ResolveIntentHelper;->queryIntentReceiversInternal(Lcom/android/server/pm/Computer;Landroid/content/Intent;Ljava/lang/String;JIIIZ)Ljava/util/List;

    move-result-object v8

    return-object v8
.end method

.method public queryIntentReceiversInternal(Lcom/android/server/pm/Computer;Landroid/content/Intent;Ljava/lang/String;JIIIZ)Ljava/util/List;
    .locals 26
    .param p1, "computer"    # Lcom/android/server/pm/Computer;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "resolvedType"    # Ljava/lang/String;
    .param p4, "flags"    # J
    .param p6, "userId"    # I
    .param p7, "filterCallingUid"    # I
    .param p8, "callingPid"    # I
    .param p9, "forSend"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/Computer;",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "JIIIZ)",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 342
    move-object/from16 v0, p0

    move/from16 v7, p6

    iget-object v1, v0, Lcom/android/server/pm/ResolveIntentHelper;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v1, v7}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 344
    :cond_0
    if-eqz p9, :cond_1

    const/16 v1, 0x3e8

    move v5, v1

    goto :goto_0

    :cond_1
    move/from16 v5, p7

    .line 345
    .local v5, "queryingUid":I
    :goto_0
    move v2, v5

    .end local v5    # "queryingUid":I
    .local v2, "queryingUid":I
    const/4 v5, 0x0

    const-string/jumbo v6, "query intent receivers"

    const/4 v4, 0x0

    move-object/from16 v1, p1

    move v3, v7

    invoke-interface/range {v1 .. v6}, Lcom/android/server/pm/Computer;->enforceCrossUserPermission(IIZZLjava/lang/String;)V

    .line 347
    move v7, v2

    .end local v2    # "queryingUid":I
    .local v7, "queryingUid":I
    invoke-interface {v1, v7}, Lcom/android/server/pm/Computer;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object v9

    .line 348
    .local v9, "instantAppPkgName":Ljava/lang/String;
    nop

    .line 350
    move-object/from16 v2, p2

    move-object/from16 v4, p3

    move-wide/from16 v5, p4

    move/from16 v3, p6

    move v8, v7

    .end local v7    # "queryingUid":I
    .local v8, "queryingUid":I
    invoke-interface/range {v1 .. v6}, Lcom/android/server/pm/Computer;->isImplicitImageCaptureIntentAndNotSetByDpc(Landroid/content/Intent;ILjava/lang/String;J)Z

    move-result v7

    .line 348
    const/4 v6, 0x0

    move-wide/from16 v2, p4

    move/from16 v4, p6

    move v5, v8

    .end local v8    # "queryingUid":I
    .restart local v5    # "queryingUid":I
    invoke-interface/range {v1 .. v7}, Lcom/android/server/pm/Computer;->updateFlagsForResolve(JIIZZ)J

    move-result-wide v2

    .line 352
    move v7, v4

    move/from16 v17, v5

    .end local v5    # "queryingUid":I
    .end local p4    # "flags":J
    .local v2, "flags":J
    .local v17, "queryingUid":I
    const/4 v4, 0x0

    .line 353
    .local v4, "originalIntent":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    .line 354
    .local v5, "comp":Landroid/content/ComponentName;
    if-nez v5, :cond_2

    .line 355
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getSelector()Landroid/content/Intent;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 356
    move-object/from16 v4, p2

    .line 357
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getSelector()Landroid/content/Intent;

    move-result-object v6

    .line 358
    .end local p2    # "intent":Landroid/content/Intent;
    .local v6, "intent":Landroid/content/Intent;
    invoke-virtual {v6}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    move-object v8, v6

    goto :goto_1

    .line 361
    .end local v6    # "intent":Landroid/content/Intent;
    .restart local p2    # "intent":Landroid/content/Intent;
    :cond_2
    move-object/from16 v8, p2

    .end local p2    # "intent":Landroid/content/Intent;
    .local v8, "intent":Landroid/content/Intent;
    :goto_1
    invoke-interface {v1}, Lcom/android/server/pm/Computer;->getComponentResolver()Lcom/android/server/pm/resolution/ComponentResolverApi;

    move-result-object v6

    .line 362
    .local v6, "componentResolver":Lcom/android/server/pm/resolution/ComponentResolverApi;
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v18

    .line 364
    .local v18, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    new-instance v10, Lcom/android/server/pm/SaferIntentUtils$IntentArgs;

    const/4 v13, 0x1

    move-object/from16 v12, p3

    move/from16 v15, p7

    move/from16 v16, p8

    move/from16 v14, p9

    move-object v11, v8

    .end local v8    # "intent":Landroid/content/Intent;
    .local v11, "intent":Landroid/content/Intent;
    invoke-direct/range {v10 .. v16}, Lcom/android/server/pm/SaferIntentUtils$IntentArgs;-><init>(Landroid/content/Intent;Ljava/lang/String;ZZII)V

    .line 366
    .end local v11    # "intent":Landroid/content/Intent;
    .restart local v8    # "intent":Landroid/content/Intent;
    .local v10, "args":Lcom/android/server/pm/SaferIntentUtils$IntentArgs;
    iget-object v11, v0, Lcom/android/server/pm/ResolveIntentHelper;->mPlatformCompat:Lcom/android/server/compat/PlatformCompat;

    iput-object v11, v10, Lcom/android/server/pm/SaferIntentUtils$IntentArgs;->platformCompat:Lcom/android/server/compat/PlatformCompat;

    .line 367
    iput-object v1, v10, Lcom/android/server/pm/SaferIntentUtils$IntentArgs;->snapshot:Lcom/android/server/pm/snapshot/PackageDataSnapshot;

    .line 369
    if-eqz v5, :cond_12

    .line 370
    invoke-interface {v1, v5, v2, v3, v7}, Lcom/android/server/pm/Computer;->getReceiverInfo(Landroid/content/ComponentName;JI)Landroid/content/pm/ActivityInfo;

    move-result-object v11

    .line 371
    .local v11, "ai":Landroid/content/pm/ActivityInfo;
    if-eqz v11, :cond_11

    .line 376
    const-wide/32 v12, 0x800000

    and-long/2addr v12, v2

    const-wide/16 v14, 0x0

    cmp-long v12, v12, v14

    if-eqz v12, :cond_3

    const/4 v12, 0x1

    goto :goto_2

    :cond_3
    const/4 v12, 0x0

    .line 378
    .local v12, "matchInstantApp":Z
    :goto_2
    const-wide/32 v19, 0x1000000

    and-long v19, v2, v19

    cmp-long v16, v19, v14

    if-eqz v16, :cond_4

    const/16 v16, 0x1

    goto :goto_3

    :cond_4
    const/16 v16, 0x0

    .line 380
    .local v16, "matchVisibleToInstantAppOnly":Z
    :goto_3
    const-wide/32 v19, 0x2000000

    and-long v19, v2, v19

    cmp-long v14, v19, v14

    if-eqz v14, :cond_5

    const/4 v14, 0x1

    goto :goto_4

    :cond_5
    const/4 v14, 0x0

    .line 382
    .local v14, "matchExplicitlyVisibleOnly":Z
    :goto_4
    if-eqz v9, :cond_6

    const/4 v15, 0x1

    goto :goto_5

    :cond_6
    const/4 v15, 0x0

    .line 384
    .local v15, "isCallerInstantApp":Z
    :goto_5
    nop

    .line 385
    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v13

    .line 386
    .local v13, "isTargetSameInstantApp":Z
    iget-object v0, v11, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    goto :goto_6

    :cond_7
    const/4 v0, 0x0

    .line 389
    .local v0, "isTargetInstantApp":Z
    :goto_6
    move/from16 p5, v0

    .end local v0    # "isTargetInstantApp":Z
    .local p5, "isTargetInstantApp":Z
    iget v0, v11, Landroid/content/pm/ActivityInfo;->flags:I

    const/high16 v19, 0x100000

    and-int v0, v0, v19

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_7

    :cond_8
    const/4 v0, 0x0

    .line 391
    .local v0, "isTargetVisibleToInstantApp":Z
    :goto_7
    if-eqz v0, :cond_9

    move/from16 v19, v0

    .end local v0    # "isTargetVisibleToInstantApp":Z
    .local v19, "isTargetVisibleToInstantApp":Z
    iget v0, v11, Landroid/content/pm/ActivityInfo;->flags:I

    const/high16 v20, 0x200000

    and-int v0, v0, v20

    if-nez v0, :cond_a

    const/4 v0, 0x1

    goto :goto_8

    .end local v19    # "isTargetVisibleToInstantApp":Z
    .restart local v0    # "isTargetVisibleToInstantApp":Z
    :cond_9
    move/from16 v19, v0

    .end local v0    # "isTargetVisibleToInstantApp":Z
    .restart local v19    # "isTargetVisibleToInstantApp":Z
    :cond_a
    const/4 v0, 0x0

    .line 393
    .local v0, "isTargetExplicitlyVisibleToInstantApp":Z
    :goto_8
    if-eqz v19, :cond_b

    if-eqz v14, :cond_c

    if-nez v0, :cond_c

    :cond_b
    goto :goto_9

    :cond_c
    const/16 v20, 0x0

    goto :goto_a

    :goto_9
    const/16 v20, 0x1

    .line 395
    .local v20, "isTargetHiddenFromInstantApp":Z
    :goto_a
    if-nez v13, :cond_f

    if-nez v12, :cond_d

    if-nez v15, :cond_d

    if-nez p5, :cond_e

    :cond_d
    if-eqz v16, :cond_f

    if-eqz v15, :cond_f

    if-eqz v20, :cond_f

    :cond_e
    const/16 v21, 0x1

    goto :goto_b

    :cond_f
    const/16 v21, 0x0

    .line 400
    .local v21, "blockResolution":Z
    :goto_b
    if-nez v21, :cond_10

    .line 401
    new-instance v22, Landroid/content/pm/ResolveInfo;

    invoke-direct/range {v22 .. v22}, Landroid/content/pm/ResolveInfo;-><init>()V

    move-object/from16 p2, v22

    .line 402
    .local p2, "ri":Landroid/content/pm/ResolveInfo;
    move/from16 v22, v0

    move-object/from16 v0, p2

    .end local p2    # "ri":Landroid/content/pm/ResolveInfo;
    .local v0, "ri":Landroid/content/pm/ResolveInfo;
    .local v22, "isTargetExplicitlyVisibleToInstantApp":Z
    iput-object v11, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 403
    new-instance v1, Ljava/util/ArrayList;

    move-wide/from16 v23, v2

    const/4 v2, 0x1

    .end local v2    # "flags":J
    .local v23, "flags":J
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 404
    .end local v18    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 405
    invoke-static {v10, v1}, Lcom/android/server/pm/SaferIntentUtils;->enforceIntentFilterMatching(Lcom/android/server/pm/SaferIntentUtils$IntentArgs;Ljava/util/List;)V

    move-object/from16 v18, v1

    goto :goto_c

    .line 400
    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v22    # "isTargetExplicitlyVisibleToInstantApp":Z
    .end local v23    # "flags":J
    .local v0, "isTargetExplicitlyVisibleToInstantApp":Z
    .restart local v2    # "flags":J
    .restart local v18    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_10
    move/from16 v22, v0

    move-wide/from16 v23, v2

    .end local v0    # "isTargetExplicitlyVisibleToInstantApp":Z
    .end local v2    # "flags":J
    .restart local v22    # "isTargetExplicitlyVisibleToInstantApp":Z
    .restart local v23    # "flags":J
    goto :goto_c

    .line 371
    .end local v12    # "matchInstantApp":Z
    .end local v13    # "isTargetSameInstantApp":Z
    .end local v14    # "matchExplicitlyVisibleOnly":Z
    .end local v15    # "isCallerInstantApp":Z
    .end local v16    # "matchVisibleToInstantAppOnly":Z
    .end local v19    # "isTargetVisibleToInstantApp":Z
    .end local v20    # "isTargetHiddenFromInstantApp":Z
    .end local v21    # "blockResolution":Z
    .end local v22    # "isTargetExplicitlyVisibleToInstantApp":Z
    .end local v23    # "flags":J
    .end local p5    # "isTargetInstantApp":Z
    .restart local v2    # "flags":J
    :cond_11
    move-wide/from16 v23, v2

    .line 408
    .end local v2    # "flags":J
    .end local v11    # "ai":Landroid/content/pm/ActivityInfo;
    .restart local v23    # "flags":J
    :goto_c
    move-object v12, v4

    move-object v11, v5

    move-object v14, v6

    move-object v3, v8

    move-object/from16 v2, v18

    goto/16 :goto_f

    .line 409
    .end local v23    # "flags":J
    .restart local v2    # "flags":J
    :cond_12
    move-wide/from16 v23, v2

    .end local v2    # "flags":J
    .restart local v23    # "flags":J
    invoke-virtual {v8}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v0

    .line 410
    .local v0, "pkgName":Ljava/lang/String;
    if-nez v0, :cond_13

    .line 411
    nop

    .line 412
    move-object/from16 v2, p1

    move-object v12, v4

    move-object v11, v5

    move-object v1, v6

    move-object v3, v8

    move-wide/from16 v5, v23

    move-object/from16 v4, p3

    .end local v4    # "originalIntent":Landroid/content/Intent;
    .end local v6    # "componentResolver":Lcom/android/server/pm/resolution/ComponentResolverApi;
    .end local v8    # "intent":Landroid/content/Intent;
    .end local v23    # "flags":J
    .local v1, "componentResolver":Lcom/android/server/pm/resolution/ComponentResolverApi;
    .local v3, "intent":Landroid/content/Intent;
    .local v5, "flags":J
    .local v11, "comp":Landroid/content/ComponentName;
    .local v12, "originalIntent":Landroid/content/Intent;
    invoke-interface/range {v1 .. v7}, Lcom/android/server/pm/resolution/ComponentResolverApi;->queryReceivers(Lcom/android/server/pm/Computer;Landroid/content/Intent;Ljava/lang/String;JI)Ljava/util/List;

    move-result-object v8

    .line 413
    move-object/from16 v25, v2

    move-object v2, v1

    move-object/from16 v1, v25

    .end local v1    # "componentResolver":Lcom/android/server/pm/resolution/ComponentResolverApi;
    .local v2, "componentResolver":Lcom/android/server/pm/resolution/ComponentResolverApi;
    .local v8, "result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v8, :cond_14

    .line 414
    move-object/from16 v18, v8

    goto :goto_d

    .line 410
    .end local v2    # "componentResolver":Lcom/android/server/pm/resolution/ComponentResolverApi;
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v11    # "comp":Landroid/content/ComponentName;
    .end local v12    # "originalIntent":Landroid/content/Intent;
    .restart local v4    # "originalIntent":Landroid/content/Intent;
    .local v5, "comp":Landroid/content/ComponentName;
    .restart local v6    # "componentResolver":Lcom/android/server/pm/resolution/ComponentResolverApi;
    .local v8, "intent":Landroid/content/Intent;
    .restart local v23    # "flags":J
    :cond_13
    move-object/from16 v1, p1

    move-object v12, v4

    move-object v11, v5

    move-object v2, v6

    move-object v3, v8

    move-wide/from16 v5, v23

    .line 417
    .end local v4    # "originalIntent":Landroid/content/Intent;
    .end local v6    # "componentResolver":Lcom/android/server/pm/resolution/ComponentResolverApi;
    .end local v8    # "intent":Landroid/content/Intent;
    .end local v23    # "flags":J
    .restart local v2    # "componentResolver":Lcom/android/server/pm/resolution/ComponentResolverApi;
    .restart local v3    # "intent":Landroid/content/Intent;
    .local v5, "flags":J
    .restart local v11    # "comp":Landroid/content/ComponentName;
    .restart local v12    # "originalIntent":Landroid/content/Intent;
    :cond_14
    :goto_d
    invoke-interface {v1, v0}, Lcom/android/server/pm/Computer;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v13

    .line 418
    .local v13, "pkg":Lcom/android/server/pm/pkg/AndroidPackage;
    if-eqz v13, :cond_15

    .line 419
    nop

    .line 420
    invoke-interface {v13}, Lcom/android/server/pm/pkg/AndroidPackage;->getReceivers()Ljava/util/List;

    move-result-object v7

    .line 419
    move-object v4, v2

    move-object v2, v1

    move-object v1, v4

    move-object/from16 v4, p3

    move/from16 v8, p6

    .end local v2    # "componentResolver":Lcom/android/server/pm/resolution/ComponentResolverApi;
    .restart local v1    # "componentResolver":Lcom/android/server/pm/resolution/ComponentResolverApi;
    invoke-interface/range {v1 .. v8}, Lcom/android/server/pm/resolution/ComponentResolverApi;->queryReceivers(Lcom/android/server/pm/Computer;Landroid/content/Intent;Ljava/lang/String;JLjava/util/List;I)Ljava/util/List;

    move-result-object v7

    .line 421
    move-object v14, v1

    move-wide/from16 v23, v5

    .end local v1    # "componentResolver":Lcom/android/server/pm/resolution/ComponentResolverApi;
    .end local v5    # "flags":J
    .local v7, "result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .local v14, "componentResolver":Lcom/android/server/pm/resolution/ComponentResolverApi;
    .restart local v23    # "flags":J
    if-eqz v7, :cond_16

    .line 422
    move-object v1, v7

    .end local v18    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    goto :goto_e

    .line 418
    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v7    # "result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v14    # "componentResolver":Lcom/android/server/pm/resolution/ComponentResolverApi;
    .end local v23    # "flags":J
    .restart local v2    # "componentResolver":Lcom/android/server/pm/resolution/ComponentResolverApi;
    .restart local v5    # "flags":J
    .restart local v18    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_15
    move-object v14, v2

    move-wide/from16 v23, v5

    .line 425
    .end local v2    # "componentResolver":Lcom/android/server/pm/resolution/ComponentResolverApi;
    .end local v5    # "flags":J
    .restart local v14    # "componentResolver":Lcom/android/server/pm/resolution/ComponentResolverApi;
    .restart local v23    # "flags":J
    :cond_16
    move-object/from16 v1, v18

    .end local v18    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v1    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :goto_e
    invoke-static {v10, v1}, Lcom/android/server/pm/SaferIntentUtils;->blockNullAction(Lcom/android/server/pm/SaferIntentUtils$IntentArgs;Ljava/util/List;)V

    move-object v2, v1

    .line 428
    .end local v0    # "pkgName":Ljava/lang/String;
    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v13    # "pkg":Lcom/android/server/pm/pkg/AndroidPackage;
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :goto_f
    if-eqz v12, :cond_17

    .line 430
    iput-object v12, v10, Lcom/android/server/pm/SaferIntentUtils$IntentArgs;->intent:Landroid/content/Intent;

    .line 431
    invoke-static {v10, v2}, Lcom/android/server/pm/SaferIntentUtils;->enforceIntentFilterMatching(Lcom/android/server/pm/SaferIntentUtils$IntentArgs;Ljava/util/List;)V

    .line 434
    :cond_17
    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object/from16 v1, p1

    move/from16 v7, p6

    move-object v8, v3

    move-object v3, v9

    move/from16 v5, v17

    .end local v9    # "instantAppPkgName":Ljava/lang/String;
    .end local v17    # "queryingUid":I
    .local v3, "instantAppPkgName":Ljava/lang/String;
    .local v5, "queryingUid":I
    .restart local v8    # "intent":Landroid/content/Intent;
    invoke-interface/range {v1 .. v8}, Lcom/android/server/pm/Computer;->applyPostResolutionFilter(Ljava/util/List;Ljava/lang/String;ZIZILandroid/content/Intent;)Ljava/util/List;

    move-result-object v0

    move-object v1, v2

    move v2, v5

    .end local v5    # "queryingUid":I
    .restart local v1    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .local v2, "queryingUid":I
    return-object v0
.end method

.method public resolveIntentInternal(Lcom/android/server/pm/Computer;Landroid/content/Intent;Ljava/lang/String;JJIZII)Landroid/content/pm/ResolveInfo;
    .locals 27
    .param p1, "computer"    # Lcom/android/server/pm/Computer;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "resolvedType"    # Ljava/lang/String;
    .param p4, "flags"    # J
    .param p6, "privateResolveFlags"    # J
    .param p8, "userId"    # I
    .param p9, "resolveForStart"    # Z
    .param p10, "filterCallingUid"    # I
    .param p11, "callingPid"    # I

    .line 113
    move-object/from16 v1, p0

    const-wide/32 v12, 0x40000

    :try_start_0
    const-string/jumbo v0, "resolveIntent"

    invoke-static {v12, v13, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 115
    iget-object v0, v1, Lcom/android/server/pm/ResolveIntentHelper;->mUserManager:Lcom/android/server/pm/UserManagerService;

    move/from16 v4, p8

    invoke-virtual {v0, v4}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/16 v26, 0x0

    if-nez v0, :cond_0

    .line 149
    invoke-static {v12, v13}, Landroid/os/Trace;->traceEnd(J)V

    .line 115
    return-object v26

    .line 116
    :cond_0
    :try_start_1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    move v0, v3

    .line 117
    .local v0, "callingUid":I
    nop

    .line 118
    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v5, p3

    move-wide/from16 v6, p4

    invoke-interface/range {v2 .. v7}, Lcom/android/server/pm/Computer;->isImplicitImageCaptureIntentAndNotSetByDpc(Landroid/content/Intent;ILjava/lang/String;J)Z

    move-result v8

    .line 117
    move-object/from16 v2, p1

    move-wide/from16 v3, p4

    move/from16 v5, p8

    move/from16 v7, p9

    move/from16 v6, p10

    invoke-interface/range {v2 .. v8}, Lcom/android/server/pm/Computer;->updateFlagsForResolve(JIIZZ)J

    move-result-wide v17
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 120
    .end local p4    # "flags":J
    .local v17, "flags":J
    :try_start_2
    const-string/jumbo v7, "resolve intent"

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v2, p1

    move/from16 v4, p8

    move v3, v0

    .end local v0    # "callingUid":I
    .local v3, "callingUid":I
    invoke-interface/range {v2 .. v7}, Lcom/android/server/pm/Computer;->enforceCrossUserPermission(IIZZLjava/lang/String;)V

    .line 123
    .end local v3    # "callingUid":I
    .restart local v0    # "callingUid":I
    const-string/jumbo v2, "queryIntentActivities"

    invoke-static {v12, v13, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 124
    const/16 v25, 0x1

    move-object/from16 v14, p1

    move-object/from16 v15, p2

    move-object/from16 v16, p3

    move-wide/from16 v19, p6

    move/from16 v23, p8

    move/from16 v24, p9

    move/from16 v21, p10

    move/from16 v22, p11

    invoke-interface/range {v14 .. v25}, Lcom/android/server/pm/Computer;->queryIntentActivitiesInternal(Landroid/content/Intent;Ljava/lang/String;JJIIIZZ)Ljava/util/List;

    move-result-object v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-wide/from16 v5, v17

    .line 127
    .end local v17    # "flags":J
    .local v5, "flags":J
    .local v9, "query":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :try_start_3
    invoke-static {v12, v13}, Landroid/os/Trace;->traceEnd(J)V

    .line 129
    if-eqz p9, :cond_1

    .line 130
    new-instance v14, Lcom/android/server/pm/SaferIntentUtils$IntentArgs;

    const/16 v17, 0x0

    const/16 v18, 0x1

    move-object/from16 v15, p2

    move-object/from16 v16, p3

    move/from16 v19, p10

    move/from16 v20, p11

    invoke-direct/range {v14 .. v20}, Lcom/android/server/pm/SaferIntentUtils$IntentArgs;-><init>(Landroid/content/Intent;Ljava/lang/String;ZZII)V

    .line 132
    .local v14, "args":Lcom/android/server/pm/SaferIntentUtils$IntentArgs;
    iget-object v2, v1, Lcom/android/server/pm/ResolveIntentHelper;->mPlatformCompat:Lcom/android/server/compat/PlatformCompat;

    iput-object v2, v14, Lcom/android/server/pm/SaferIntentUtils$IntentArgs;->platformCompat:Lcom/android/server/compat/PlatformCompat;

    .line 133
    invoke-static {v14, v9}, Lcom/android/server/pm/SaferIntentUtils;->filterNonExportedComponents(Lcom/android/server/pm/SaferIntentUtils$IntentArgs;Ljava/util/List;)V

    goto :goto_0

    .line 149
    .end local v0    # "callingUid":I
    .end local v9    # "query":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v14    # "args":Lcom/android/server/pm/SaferIntentUtils$IntentArgs;
    :catchall_0
    move-exception v0

    goto :goto_2

    .line 136
    .restart local v0    # "callingUid":I
    .restart local v9    # "query":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_1
    :goto_0
    nop

    .line 137
    invoke-static/range {p10 .. p10}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v2

    const/16 v3, 0x2710

    const/4 v14, 0x0

    const/4 v15, 0x1

    if-lt v2, v3, :cond_2

    if-nez p9, :cond_2

    move v11, v15

    goto :goto_1

    :cond_2
    move v11, v14

    .line 140
    .local v11, "queryMayBeFiltered":Z
    :goto_1
    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-wide/from16 v7, p6

    move/from16 v10, p8

    invoke-direct/range {v1 .. v11}, Lcom/android/server/pm/ResolveIntentHelper;->chooseBestActivity(Lcom/android/server/pm/Computer;Landroid/content/Intent;Ljava/lang/String;JJLjava/util/List;IZ)Landroid/content/pm/ResolveInfo;

    move-result-object v16

    move-object/from16 v1, v16

    .line 142
    .local v1, "bestChoice":Landroid/content/pm/ResolveInfo;
    const-wide/16 v2, 0x1

    and-long v2, p6, v2

    const-wide/16 v7, 0x0

    cmp-long v2, v2, v7

    if-eqz v2, :cond_3

    move v14, v15

    .line 144
    .local v14, "nonBrowserOnly":Z
    :cond_3
    if-eqz v14, :cond_4

    if-eqz v1, :cond_4

    iget-boolean v2, v1, Landroid/content/pm/ResolveInfo;->handleAllWebDataURI:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v2, :cond_4

    .line 145
    nop

    .line 149
    invoke-static {v12, v13}, Landroid/os/Trace;->traceEnd(J)V

    .line 145
    return-object v26

    .line 147
    :cond_4
    nop

    .line 149
    invoke-static {v12, v13}, Landroid/os/Trace;->traceEnd(J)V

    .line 147
    return-object v1

    .line 149
    .end local v0    # "callingUid":I
    .end local v1    # "bestChoice":Landroid/content/pm/ResolveInfo;
    .end local v5    # "flags":J
    .end local v9    # "query":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v11    # "queryMayBeFiltered":Z
    .end local v14    # "nonBrowserOnly":Z
    .restart local v17    # "flags":J
    :catchall_1
    move-exception v0

    move-wide/from16 v5, v17

    .end local v17    # "flags":J
    .restart local v5    # "flags":J
    goto :goto_2

    .end local v5    # "flags":J
    .restart local p4    # "flags":J
    :catchall_2
    move-exception v0

    move-wide/from16 v5, p4

    .end local p4    # "flags":J
    .restart local v5    # "flags":J
    :goto_2
    invoke-static {v12, v13}, Landroid/os/Trace;->traceEnd(J)V

    .line 150
    throw v0
.end method

.method public resolveServiceInternal(Lcom/android/server/pm/Computer;Landroid/content/Intent;Ljava/lang/String;JIIIZ)Landroid/content/pm/ResolveInfo;
    .locals 12
    .param p1, "computer"    # Lcom/android/server/pm/Computer;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "resolvedType"    # Ljava/lang/String;
    .param p4, "flags"    # J
    .param p6, "userId"    # I
    .param p7, "callingUid"    # I
    .param p8, "callingPid"    # I
    .param p9, "resolveForStart"    # Z

    .line 443
    iget-object v0, p0, Lcom/android/server/pm/ResolveIntentHelper;->mUserManager:Lcom/android/server/pm/UserManagerService;

    move/from16 v6, p6

    invoke-virtual {v0, v6}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result v0

    const/4 v11, 0x0

    if-nez v0, :cond_0

    return-object v11

    .line 444
    :cond_0
    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p1

    move-wide/from16 v2, p4

    move/from16 v4, p6

    move/from16 v5, p7

    invoke-interface/range {v1 .. v7}, Lcom/android/server/pm/Computer;->updateFlagsForResolve(JIIZZ)J

    move-result-wide v2

    .line 446
    .end local p4    # "flags":J
    .local v2, "flags":J
    const/4 v9, 0x0

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v10, p9

    move-wide v4, v2

    move-object v2, p2

    move-object v3, p3

    .end local v2    # "flags":J
    .local v4, "flags":J
    invoke-interface/range {v1 .. v10}, Lcom/android/server/pm/Computer;->queryIntentServicesInternal(Landroid/content/Intent;Ljava/lang/String;JIIIZZ)Ljava/util/List;

    move-result-object v0

    .line 449
    .local v0, "query":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v0, :cond_1

    .line 450
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-lt v1, v2, :cond_1

    .line 453
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    return-object v1

    .line 456
    :cond_1
    return-object v11
.end method
