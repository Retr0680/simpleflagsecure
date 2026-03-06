.class public Lcom/android/server/pm/CrossProfileIntentResolverEngine;
.super Ljava/lang/Object;
.source "CrossProfileIntentResolverEngine.java"


# instance fields
.field private mAppCloningDeviceConfigHelper:Lcom/android/internal/config/appcloning/AppCloningDeviceConfigHelper;

.field private final mContext:Landroid/content/Context;

.field private final mDefaultAppProvider:Lcom/android/server/pm/DefaultAppProvider;

.field private final mDomainVerificationManager:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;

.field private final mUserManager:Lcom/android/server/pm/UserManagerService;

.field private final mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/UserManagerService;Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;Lcom/android/server/pm/DefaultAppProvider;Landroid/content/Context;)V
    .locals 1
    .param p1, "userManager"    # Lcom/android/server/pm/UserManagerService;
    .param p2, "domainVerificationManager"    # Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;
    .param p3, "defaultAppProvider"    # Lcom/android/server/pm/DefaultAppProvider;
    .param p4, "context"    # Landroid/content/Context;

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput-object p1, p0, Lcom/android/server/pm/CrossProfileIntentResolverEngine;->mUserManager:Lcom/android/server/pm/UserManagerService;

    .line 79
    iput-object p2, p0, Lcom/android/server/pm/CrossProfileIntentResolverEngine;->mDomainVerificationManager:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;

    .line 80
    iput-object p3, p0, Lcom/android/server/pm/CrossProfileIntentResolverEngine;->mDefaultAppProvider:Lcom/android/server/pm/DefaultAppProvider;

    .line 81
    iput-object p4, p0, Lcom/android/server/pm/CrossProfileIntentResolverEngine;->mContext:Landroid/content/Context;

    .line 82
    const-class v0, Lcom/android/server/pm/UserManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/UserManagerInternal;

    iput-object v0, p0, Lcom/android/server/pm/CrossProfileIntentResolverEngine;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    .line 83
    return-void
.end method

.method private canReachToInternal(Lcom/android/server/pm/Computer;Landroid/content/Intent;Ljava/lang/String;IILjava/util/Set;)Z
    .locals 12
    .param p1, "computer"    # Lcom/android/server/pm/Computer;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "resolvedType"    # Ljava/lang/String;
    .param p4, "sourceUserId"    # I
    .param p5, "targetUserId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/Computer;",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "II",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    .line 313
    .local p6, "visitedUserIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    move/from16 v5, p5

    move-object/from16 v6, p6

    const/4 v7, 0x1

    move/from16 v8, p4

    if-ne v8, v5, :cond_0

    return v7

    .line 314
    :cond_0
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 316
    nop

    .line 317
    invoke-interface/range {p1 .. p4}, Lcom/android/server/pm/Computer;->getMatchingCrossProfileIntentFilters(Landroid/content/Intent;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v9

    .line 319
    .local v9, "matches":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/CrossProfileIntentFilter;>;"
    if-eqz v9, :cond_4

    .line 320
    const/4 v0, 0x0

    move v10, v0

    .local v10, "index":I
    :goto_0
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v0

    if-ge v10, v0, :cond_4

    .line 321
    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Lcom/android/server/pm/CrossProfileIntentFilter;

    .line 322
    .local v11, "crossProfileIntentFilter":Lcom/android/server/pm/CrossProfileIntentFilter;
    iget v0, v11, Lcom/android/server/pm/CrossProfileIntentFilter;->mTargetUserId:I

    if-ne v0, v5, :cond_1

    .line 323
    return v7

    .line 325
    :cond_1
    iget v0, v11, Lcom/android/server/pm/CrossProfileIntentFilter;->mTargetUserId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 326
    goto :goto_1

    .line 335
    :cond_2
    iget v0, v11, Lcom/android/server/pm/CrossProfileIntentFilter;->mFlags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_3

    .line 337
    iget v0, v11, Lcom/android/server/pm/CrossProfileIntentFilter;->mTargetUserId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 338
    iget v4, v11, Lcom/android/server/pm/CrossProfileIntentFilter;->mTargetUserId:I

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/server/pm/CrossProfileIntentResolverEngine;->canReachToInternal(Lcom/android/server/pm/Computer;Landroid/content/Intent;Ljava/lang/String;IILjava/util/Set;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 340
    return v7

    .line 320
    .end local v11    # "crossProfileIntentFilter":Lcom/android/server/pm/CrossProfileIntentFilter;
    :cond_3
    :goto_1
    add-int/lit8 v10, v10, 0x1

    move/from16 v5, p5

    move-object/from16 v6, p6

    goto :goto_0

    .line 345
    .end local v10    # "index":I
    :cond_4
    const/4 v0, 0x0

    return v0
.end method

.method private chooseCrossProfileResolver(Lcom/android/server/pm/Computer;IIZJ)Lcom/android/server/pm/CrossProfileResolver;
    .locals 4
    .param p1, "computer"    # Lcom/android/server/pm/Computer;
    .param p2, "sourceUserId"    # I
    .param p3, "targetUserId"    # I
    .param p4, "resolveForStart"    # Z
    .param p5, "flags"    # J

    .line 263
    invoke-direct {p0, p2, p3}, Lcom/android/server/pm/CrossProfileIntentResolverEngine;->shouldUseNoFilteringResolver(II)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 264
    iget-object v0, p0, Lcom/android/server/pm/CrossProfileIntentResolverEngine;->mAppCloningDeviceConfigHelper:Lcom/android/internal/config/appcloning/AppCloningDeviceConfigHelper;

    if-nez v0, :cond_0

    .line 266
    iget-object v0, p0, Lcom/android/server/pm/CrossProfileIntentResolverEngine;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/config/appcloning/AppCloningDeviceConfigHelper;->getInstance(Landroid/content/Context;)Lcom/android/internal/config/appcloning/AppCloningDeviceConfigHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/CrossProfileIntentResolverEngine;->mAppCloningDeviceConfigHelper:Lcom/android/internal/config/appcloning/AppCloningDeviceConfigHelper;

    .line 268
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/CrossProfileIntentResolverEngine;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/pm/CrossProfileIntentResolverEngine;->mAppCloningDeviceConfigHelper:Lcom/android/internal/config/appcloning/AppCloningDeviceConfigHelper;

    invoke-static {v0, v1, p4, p5, p6}, Lcom/android/server/pm/NoFilteringResolver;->isIntentRedirectionAllowed(Landroid/content/Context;Lcom/android/internal/config/appcloning/AppCloningDeviceConfigHelper;ZJ)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 270
    new-instance v0, Lcom/android/server/pm/NoFilteringResolver;

    invoke-interface {p1}, Lcom/android/server/pm/Computer;->getComponentResolver()Lcom/android/server/pm/resolution/ComponentResolverApi;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/pm/CrossProfileIntentResolverEngine;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-direct {v0, v1, v2}, Lcom/android/server/pm/NoFilteringResolver;-><init>(Lcom/android/server/pm/resolution/ComponentResolverApi;Lcom/android/server/pm/UserManagerService;)V

    return-object v0

    .line 273
    :cond_1
    const/4 v0, 0x0

    return-object v0

    .line 276
    :cond_2
    new-instance v0, Lcom/android/server/pm/DefaultCrossProfileResolver;

    invoke-interface {p1}, Lcom/android/server/pm/Computer;->getComponentResolver()Lcom/android/server/pm/resolution/ComponentResolverApi;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/pm/CrossProfileIntentResolverEngine;->mUserManager:Lcom/android/server/pm/UserManagerService;

    iget-object v3, p0, Lcom/android/server/pm/CrossProfileIntentResolverEngine;->mDomainVerificationManager:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultCrossProfileResolver;-><init>(Lcom/android/server/pm/resolution/ComponentResolverApi;Lcom/android/server/pm/UserManagerService;Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;)V

    return-object v0
.end method

.method private filterCandidatesWithDomainPreferredActivitiesLPr(Lcom/android/server/pm/Computer;Landroid/content/Intent;JLjava/util/List;Ljava/util/List;IZZLjava/util/function/Function;)Ljava/util/List;
    .locals 13
    .param p1, "computer"    # Lcom/android/server/pm/Computer;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "matchFlags"    # J
    .param p7, "userId"    # I
    .param p8, "areWebInstantAppsDisabled"    # Z
    .param p9, "resolveForStart"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/Computer;",
            "Landroid/content/Intent;",
            "J",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;",
            "Ljava/util/List<",
            "Lcom/android/server/pm/CrossProfileDomainInfo;",
            ">;IZZ",
            "Ljava/util/function/Function<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/pkg/PackageStateInternal;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 468
    .local p5, "candidates":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .local p6, "crossProfileCandidates":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/CrossProfileDomainInfo;>;"
    .local p10, "pkgSettingFunction":Ljava/util/function/Function;, "Ljava/util/function/Function<Ljava/lang/String;Lcom/android/server/pm/pkg/PackageStateInternal;>;"
    invoke-virtual {p2}, Landroid/content/Intent;->getFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move v10, v0

    .line 475
    .local v10, "debug":Z
    nop

    .line 476
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide/from16 v4, p3

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v11, p9

    move-object/from16 v12, p10

    invoke-direct/range {v1 .. v12}, Lcom/android/server/pm/CrossProfileIntentResolverEngine;->filterCandidatesWithDomainPreferredActivitiesLPrBody(Lcom/android/server/pm/Computer;Landroid/content/Intent;JLjava/util/List;Ljava/util/List;IZZZLjava/util/function/Function;)Ljava/util/List;

    move-result-object v0

    .line 487
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    return-object v0
.end method

.method private filterCandidatesWithDomainPreferredActivitiesLPrBody(Lcom/android/server/pm/Computer;Landroid/content/Intent;JLjava/util/List;Ljava/util/List;IZZZLjava/util/function/Function;)Ljava/util/List;
    .locals 19
    .param p1, "computer"    # Lcom/android/server/pm/Computer;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "matchFlags"    # J
    .param p7, "userId"    # I
    .param p8, "areWebInstantAppsDisabled"    # Z
    .param p9, "debug"    # Z
    .param p10, "resolveForStart"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/Computer;",
            "Landroid/content/Intent;",
            "J",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;",
            "Ljava/util/List<",
            "Lcom/android/server/pm/CrossProfileDomainInfo;",
            ">;IZZZ",
            "Ljava/util/function/Function<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/pkg/PackageStateInternal;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 509
    .local p5, "candidates":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .local p6, "crossProfileCandidates":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/CrossProfileDomainInfo;>;"
    .local p11, "pkgSettingFunction":Ljava/util/function/Function;, "Ljava/util/function/Function<Ljava/lang/String;Lcom/android/server/pm/pkg/PackageStateInternal;>;"
    move-object/from16 v9, p5

    move-object/from16 v10, p6

    move/from16 v6, p7

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v11, v0

    .line 510
    .local v11, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ResolveInfo;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v12, v0

    .line 511
    .local v12, "matchAllList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ResolveInfo;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v13, v0

    .line 518
    .local v13, "undefinedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ResolveInfo;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->isWebIntent()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p8, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move v14, v0

    .line 520
    .local v14, "blockInstant":Z
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v15

    .line 522
    .local v15, "count":I
    const/4 v0, 0x0

    .local v0, "n":I
    :goto_1
    if-ge v0, v15, :cond_5

    .line 523
    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 524
    .local v1, "info":Landroid/content/pm/ResolveInfo;
    if-eqz v14, :cond_2

    iget-boolean v2, v1, Landroid/content/pm/ResolveInfo;->isInstantAppAvailable:Z

    if-nez v2, :cond_1

    iget-object v2, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 525
    const/16 v3, 0x3e8

    move-object/from16 v4, p1

    invoke-interface {v4, v2, v6, v3}, Lcom/android/server/pm/Computer;->isInstantAppInternal(Ljava/lang/String;II)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 527
    goto :goto_2

    .line 524
    :cond_1
    move-object/from16 v4, p1

    goto :goto_2

    :cond_2
    move-object/from16 v4, p1

    .line 531
    :cond_3
    iget-boolean v2, v1, Landroid/content/pm/ResolveInfo;->handleAllWebDataURI:Z

    if-eqz v2, :cond_4

    .line 532
    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 534
    :cond_4
    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 522
    .end local v1    # "info":Landroid/content/pm/ResolveInfo;
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    move-object/from16 v4, p1

    .line 539
    .end local v0    # "n":I
    const/16 v16, 0x0

    .line 544
    .local v16, "includeBrowser":Z
    new-instance v5, Landroid/util/SparseArray;

    invoke-direct {v5}, Landroid/util/SparseArray;-><init>()V

    .line 546
    .local v5, "categorizeResolveInfoByTargetUser":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/List<Lcom/android/server/pm/CrossProfileDomainInfo;>;>;"
    if-eqz v10, :cond_7

    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    .line 547
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_3
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_7

    .line 548
    invoke-interface {v10, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/CrossProfileDomainInfo;

    .line 549
    .local v1, "crossProfileDomainInfo":Lcom/android/server/pm/CrossProfileDomainInfo;
    iget v2, v1, Lcom/android/server/pm/CrossProfileDomainInfo;->mTargetUserId:I

    .line 550
    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->contains(I)Z

    move-result v2

    if-nez v2, :cond_6

    .line 551
    iget v2, v1, Lcom/android/server/pm/CrossProfileDomainInfo;->mTargetUserId:I

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v5, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 554
    :cond_6
    iget v2, v1, Lcom/android/server/pm/CrossProfileDomainInfo;->mTargetUserId:I

    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 555
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 547
    .end local v1    # "crossProfileDomainInfo":Lcom/android/server/pm/CrossProfileDomainInfo;
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 559
    .end local v0    # "index":I
    :cond_7
    invoke-static/range {p2 .. p4}, Lcom/android/server/pm/verify/domain/DomainVerificationUtils;->isDomainVerificationIntent(Landroid/content/Intent;J)Z

    move-result v0

    if-nez v0, :cond_8

    .line 560
    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 563
    const/4 v7, 0x0

    move-object/from16 v0, p0

    move-object/from16 v2, p2

    move/from16 v8, p10

    move-object v1, v4

    move-wide/from16 v3, p3

    invoke-direct/range {v0 .. v8}, Lcom/android/server/pm/CrossProfileIntentResolverEngine;->filterCrossProfileCandidatesWithDomainPreferredActivities(Lcom/android/server/pm/Computer;Landroid/content/Intent;JLandroid/util/SparseArray;IIZ)Ljava/util/List;

    move-result-object v7

    invoke-virtual {v11, v7}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 566
    const/16 v16, 0x1

    goto :goto_4

    .line 568
    :cond_8
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/pm/CrossProfileIntentResolverEngine;->mDomainVerificationManager:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;

    .line 569
    move-object/from16 v2, p2

    move-object/from16 v3, p11

    invoke-interface {v1, v2, v13, v6, v3}, Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;->filterToApprovedApp(Landroid/content/Intent;Ljava/util/List;ILjava/util/function/Function;)Landroid/util/Pair;

    move-result-object v1

    .line 570
    .local v1, "infosAndLevel":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/util/List<Landroid/content/pm/ResolveInfo;>;Ljava/lang/Integer;>;"
    iget-object v4, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/util/List;

    .line 571
    .local v4, "approvedInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    iget-object v7, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object/from16 v17, v7

    check-cast v17, Ljava/lang/Integer;

    .line 574
    .local v17, "highestApproval":Ljava/lang/Integer;
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_9

    .line 575
    const/16 v16, 0x1

    .line 577
    const/4 v7, 0x0

    move/from16 v8, p10

    move-object/from16 v18, v1

    move-object v10, v4

    move-object/from16 v1, p1

    move-wide/from16 v3, p3

    .end local v1    # "infosAndLevel":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/util/List<Landroid/content/pm/ResolveInfo;>;Ljava/lang/Integer;>;"
    .end local v4    # "approvedInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .local v10, "approvedInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .local v18, "infosAndLevel":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/util/List<Landroid/content/pm/ResolveInfo;>;Ljava/lang/Integer;>;"
    invoke-direct/range {v0 .. v8}, Lcom/android/server/pm/CrossProfileIntentResolverEngine;->filterCrossProfileCandidatesWithDomainPreferredActivities(Lcom/android/server/pm/Computer;Landroid/content/Intent;JLandroid/util/SparseArray;IIZ)Ljava/util/List;

    move-result-object v7

    invoke-virtual {v11, v7}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    move-object/from16 v0, p0

    move/from16 v6, p7

    goto :goto_4

    .line 581
    .end local v10    # "approvedInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v18    # "infosAndLevel":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/util/List<Landroid/content/pm/ResolveInfo;>;Ljava/lang/Integer;>;"
    .restart local v1    # "infosAndLevel":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/util/List<Landroid/content/pm/ResolveInfo;>;Ljava/lang/Integer;>;"
    .restart local v4    # "approvedInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_9
    move-object/from16 v18, v1

    move-object v10, v4

    .end local v1    # "infosAndLevel":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/util/List<Landroid/content/pm/ResolveInfo;>;Ljava/lang/Integer;>;"
    .end local v4    # "approvedInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v10    # "approvedInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v18    # "infosAndLevel":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/util/List<Landroid/content/pm/ResolveInfo;>;Ljava/lang/Integer;>;"
    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 585
    nop

    .line 587
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 585
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-wide/from16 v3, p3

    move/from16 v6, p7

    move/from16 v8, p10

    invoke-direct/range {v0 .. v8}, Lcom/android/server/pm/CrossProfileIntentResolverEngine;->filterCrossProfileCandidatesWithDomainPreferredActivities(Lcom/android/server/pm/Computer;Landroid/content/Intent;JLandroid/util/SparseArray;IIZ)Ljava/util/List;

    move-result-object v7

    invoke-virtual {v11, v7}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 591
    .end local v10    # "approvedInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v17    # "highestApproval":Ljava/lang/Integer;
    .end local v18    # "infosAndLevel":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/util/List<Landroid/content/pm/ResolveInfo;>;Ljava/lang/Integer;>;"
    :goto_4
    if-eqz v16, :cond_13

    .line 596
    const-wide/32 v1, 0x20000

    and-long v1, p3, v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_a

    .line 597
    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_8

    .line 601
    :cond_a
    iget-object v1, v0, Lcom/android/server/pm/CrossProfileIntentResolverEngine;->mDefaultAppProvider:Lcom/android/server/pm/DefaultAppProvider;

    invoke-virtual {v1, v6}, Lcom/android/server/pm/DefaultAppProvider;->getDefaultBrowser(I)Ljava/lang/String;

    move-result-object v1

    .line 603
    .local v1, "defaultBrowserPackageName":Ljava/lang/String;
    const/4 v2, 0x0

    .line 604
    .local v2, "maxMatchPrio":I
    const/4 v3, 0x0

    .line 605
    .local v3, "defaultBrowserMatch":Landroid/content/pm/ResolveInfo;
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 606
    .local v4, "numCandidates":I
    const/4 v7, 0x0

    .local v7, "n":I
    :goto_5
    const-string v8, "PackageManager"

    if-ge v7, v4, :cond_10

    .line 607
    invoke-virtual {v12, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/pm/ResolveInfo;

    .line 609
    .local v10, "info":Landroid/content/pm/ResolveInfo;
    iget v0, v10, Landroid/content/pm/ResolveInfo;->priority:I

    if-le v0, v2, :cond_b

    .line 610
    iget v0, v10, Landroid/content/pm/ResolveInfo;->priority:I

    move v2, v0

    .line 613
    :cond_b
    iget-object v0, v10, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 614
    if-eqz v3, :cond_c

    iget v0, v3, Landroid/content/pm/ResolveInfo;->priority:I

    move-object/from16 v17, v1

    .end local v1    # "defaultBrowserPackageName":Ljava/lang/String;
    .local v17, "defaultBrowserPackageName":Ljava/lang/String;
    iget v1, v10, Landroid/content/pm/ResolveInfo;->priority:I

    if-ge v0, v1, :cond_f

    goto :goto_6

    .end local v17    # "defaultBrowserPackageName":Ljava/lang/String;
    .restart local v1    # "defaultBrowserPackageName":Ljava/lang/String;
    :cond_c
    move-object/from16 v17, v1

    .line 616
    .end local v1    # "defaultBrowserPackageName":Ljava/lang/String;
    .restart local v17    # "defaultBrowserPackageName":Ljava/lang/String;
    :goto_6
    if-eqz p9, :cond_d

    .line 617
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Considering default browser match "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 619
    :cond_d
    move-object v0, v10

    move-object v3, v0

    .end local v3    # "defaultBrowserMatch":Landroid/content/pm/ResolveInfo;
    .local v0, "defaultBrowserMatch":Landroid/content/pm/ResolveInfo;
    goto :goto_7

    .line 613
    .end local v0    # "defaultBrowserMatch":Landroid/content/pm/ResolveInfo;
    .end local v17    # "defaultBrowserPackageName":Ljava/lang/String;
    .restart local v1    # "defaultBrowserPackageName":Ljava/lang/String;
    .restart local v3    # "defaultBrowserMatch":Landroid/content/pm/ResolveInfo;
    :cond_e
    move-object/from16 v17, v1

    .line 606
    .end local v1    # "defaultBrowserPackageName":Ljava/lang/String;
    .end local v10    # "info":Landroid/content/pm/ResolveInfo;
    .restart local v17    # "defaultBrowserPackageName":Ljava/lang/String;
    :cond_f
    :goto_7
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    goto :goto_5

    .end local v17    # "defaultBrowserPackageName":Ljava/lang/String;
    .restart local v1    # "defaultBrowserPackageName":Ljava/lang/String;
    :cond_10
    move-object/from16 v17, v1

    .line 623
    .end local v1    # "defaultBrowserPackageName":Ljava/lang/String;
    .end local v7    # "n":I
    .restart local v17    # "defaultBrowserPackageName":Ljava/lang/String;
    if-eqz v3, :cond_12

    iget v0, v3, Landroid/content/pm/ResolveInfo;->priority:I

    if-lt v0, v2, :cond_12

    .line 625
    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 626
    if-eqz p9, :cond_11

    .line 627
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Default browser match "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 629
    :cond_11
    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 631
    :cond_12
    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 636
    .end local v2    # "maxMatchPrio":I
    .end local v3    # "defaultBrowserMatch":Landroid/content/pm/ResolveInfo;
    .end local v4    # "numCandidates":I
    .end local v17    # "defaultBrowserPackageName":Ljava/lang/String;
    :goto_8
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_13

    .line 637
    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 640
    :cond_13
    return-object v11
.end method

.method private filterCrossProfileCandidatesWithDomainPreferredActivities(Lcom/android/server/pm/Computer;Landroid/content/Intent;JLandroid/util/SparseArray;IIZ)Ljava/util/List;
    .locals 16
    .param p1, "computer"    # Lcom/android/server/pm/Computer;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "flags"    # J
    .param p6, "sourceUserId"    # I
    .param p7, "highestApprovalLevel"    # I
    .param p8, "resolveForStart"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/Computer;",
            "Landroid/content/Intent;",
            "J",
            "Landroid/util/SparseArray<",
            "Ljava/util/List<",
            "Lcom/android/server/pm/CrossProfileDomainInfo;",
            ">;>;IIZ)",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 660
    .local p5, "categorizeResolveInfoByTargetUser":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/List<Lcom/android/server/pm/CrossProfileDomainInfo;>;>;"
    move-object/from16 v0, p5

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 662
    .local v1, "crossProfileDomainInfos":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/CrossProfileDomainInfo;>;"
    const/4 v2, 0x0

    .local v2, "index":I
    :goto_0
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 665
    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    const/4 v4, -0x2

    if-ne v3, v4, :cond_0

    .line 666
    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v1, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 669
    :cond_0
    nop

    .line 671
    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v7

    .line 670
    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-wide/from16 v9, p3

    move/from16 v6, p6

    move/from16 v8, p8

    invoke-direct/range {v4 .. v10}, Lcom/android/server/pm/CrossProfileIntentResolverEngine;->chooseCrossProfileResolver(Lcom/android/server/pm/Computer;IIZJ)Lcom/android/server/pm/CrossProfileResolver;

    move-result-object v3

    .line 674
    .local v3, "crossProfileIntentResolver":Lcom/android/server/pm/CrossProfileResolver;
    if-eqz v3, :cond_1

    .line 675
    nop

    .line 677
    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    move-object v10, v4

    check-cast v10, Ljava/util/List;

    .line 679
    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v14

    .line 676
    move-object/from16 v9, p2

    move-wide/from16 v11, p3

    move/from16 v13, p6

    move/from16 v15, p7

    move-object v8, v3

    .end local v3    # "crossProfileIntentResolver":Lcom/android/server/pm/CrossProfileResolver;
    .local v8, "crossProfileIntentResolver":Lcom/android/server/pm/CrossProfileResolver;
    invoke-virtual/range {v8 .. v15}, Lcom/android/server/pm/CrossProfileResolver;->filterResolveInfoWithDomainPreferredActivity(Landroid/content/Intent;Ljava/util/List;JIII)Ljava/util/List;

    move-result-object v3

    .line 675
    invoke-interface {v1, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 682
    .end local v8    # "crossProfileIntentResolver":Lcom/android/server/pm/CrossProfileResolver;
    .restart local v3    # "crossProfileIntentResolver":Lcom/android/server/pm/CrossProfileResolver;
    :cond_1
    move-object v8, v3

    .line 683
    .end local v3    # "crossProfileIntentResolver":Lcom/android/server/pm/CrossProfileResolver;
    .restart local v8    # "crossProfileIntentResolver":Lcom/android/server/pm/CrossProfileResolver;
    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Collection;

    .line 682
    invoke-interface {v1, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 662
    .end local v8    # "crossProfileIntentResolver":Lcom/android/server/pm/CrossProfileResolver;
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    nop

    .line 687
    .end local v2    # "index":I
    move-object/from16 v4, p0

    invoke-direct {v4, v1}, Lcom/android/server/pm/CrossProfileIntentResolverEngine;->resolveInfoFromCrossProfileDomainInfo(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    return-object v2
.end method

.method private hasNonNegativePriority(Ljava/util/List;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/pm/CrossProfileDomainInfo;",
            ">;)Z"
        }
    .end annotation

    .line 711
    .local p1, "crossProfileDomainInfos":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/CrossProfileDomainInfo;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    nop

    if-lez v0, :cond_0

    .line 712
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/CrossProfileDomainInfo;

    iget-object v0, v0, Lcom/android/server/pm/CrossProfileDomainInfo;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    nop

    if-eqz v0, :cond_0

    .line 713
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/CrossProfileDomainInfo;

    iget-object v0, v0, Lcom/android/server/pm/CrossProfileDomainInfo;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    iget v0, v0, Landroid/content/pm/ResolveInfo;->priority:I

    if-ltz v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    nop

    .line 711
    :goto_0
    return v1
.end method

.method private isNoFilteringPropertyConfiguredForUser(I)Z
    .locals 4
    .param p1, "userId"    # I

    .line 736
    iget-object v0, p0, Lcom/android/server/pm/CrossProfileIntentResolverEngine;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/UserManagerService;->isProfile(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 737
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/CrossProfileIntentResolverEngine;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/UserManagerInternal;->getUserProperties(I)Landroid/content/pm/UserProperties;

    move-result-object v0

    .line 738
    .local v0, "userProperties":Landroid/content/pm/UserProperties;
    if-nez v0, :cond_1

    return v1

    .line 740
    :cond_1
    invoke-virtual {v0}, Landroid/content/pm/UserProperties;->getCrossProfileIntentResolutionStrategy()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    move v1, v3

    :cond_2
    return v1
.end method

.method private resolveInfoFromCrossProfileDomainInfo(Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/pm/CrossProfileDomainInfo;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 697
    .local p1, "crossProfileDomainInfos":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/CrossProfileDomainInfo;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 699
    .local v0, "resolveInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v1, 0x0

    .local v1, "infoIndex":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 700
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/CrossProfileDomainInfo;

    iget-object v2, v2, Lcom/android/server/pm/CrossProfileDomainInfo;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 699
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    nop

    .line 703
    .end local v1    # "infoIndex":I
    return-object v0
.end method

.method private resolveIntentInternal(Lcom/android/server/pm/Computer;Landroid/content/Intent;Ljava/lang/String;IIJLjava/lang/String;ZZLjava/util/function/Function;Ljava/util/Set;)Ljava/util/List;
    .locals 20
    .param p1, "computer"    # Lcom/android/server/pm/Computer;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "resolvedType"    # Ljava/lang/String;
    .param p4, "sourceUserId"    # I
    .param p5, "userId"    # I
    .param p6, "flags"    # J
    .param p8, "pkgName"    # Ljava/lang/String;
    .param p9, "hasNonNegativePriorityResult"    # Z
    .param p10, "resolveForStart"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/Computer;",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "IIJ",
            "Ljava/lang/String;",
            "ZZ",
            "Ljava/util/function/Function<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/pkg/PackageStateInternal;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/android/server/pm/CrossProfileDomainInfo;",
            ">;"
        }
    .end annotation

    .line 139
    .local p11, "pkgSettingFunction":Ljava/util/function/Function;, "Ljava/util/function/Function<Ljava/lang/String;Lcom/android/server/pm/pkg/PackageStateInternal;>;"
    .local p12, "visitedUserIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    move-object/from16 v1, p1

    move/from16 v4, p5

    move-object/from16 v7, p12

    if-eqz v7, :cond_0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v7, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 140
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v13, v0

    .line 142
    .local v13, "crossProfileDomainInfos":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/CrossProfileDomainInfo;>;"
    nop

    .line 143
    move-object/from16 v8, p2

    move-object/from16 v9, p3

    invoke-interface {v1, v8, v9, v4}, Lcom/android/server/pm/Computer;->getMatchingCrossProfileIntentFilters(Landroid/content/Intent;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v14

    .line 146
    .local v14, "matchingFilters":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/CrossProfileIntentFilter;>;"
    if-eqz v14, :cond_b

    invoke-interface {v14}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    move-object/from16 v16, v14

    move v14, v4

    goto/16 :goto_6

    .line 165
    :cond_1
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    move-object v15, v0

    .line 168
    .local v15, "crossProfileIntentFiltersByUser":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/List<Lcom/android/server/pm/CrossProfileIntentFilter;>;>;"
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_0
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 169
    invoke-interface {v14, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/CrossProfileIntentFilter;

    .line 171
    .local v2, "crossProfileIntentFilter":Lcom/android/server/pm/CrossProfileIntentFilter;
    iget v3, v2, Lcom/android/server/pm/CrossProfileIntentFilter;->mTargetUserId:I

    .line 172
    invoke-virtual {v15, v3}, Landroid/util/SparseArray;->contains(I)Z

    move-result v3

    if-nez v3, :cond_2

    .line 173
    iget v3, v2, Lcom/android/server/pm/CrossProfileIntentFilter;->mTargetUserId:I

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v15, v3, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 176
    :cond_2
    iget v3, v2, Lcom/android/server/pm/CrossProfileIntentFilter;->mTargetUserId:I

    invoke-virtual {v15, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 177
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 168
    .end local v2    # "crossProfileIntentFilter":Lcom/android/server/pm/CrossProfileIntentFilter;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    nop

    .line 180
    .end local v0    # "index":I
    if-nez v7, :cond_4

    .line 181
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 182
    .end local p12    # "visitedUserIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    .local v0, "visitedUserIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-object v12, v0

    goto :goto_1

    .line 180
    .end local v0    # "visitedUserIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    .restart local p12    # "visitedUserIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    :cond_4
    move-object v12, v7

    .line 189
    .end local p12    # "visitedUserIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    .local v12, "visitedUserIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    :goto_1
    const/4 v0, 0x0

    move v7, v0

    .local v7, "index":I
    :goto_2
    invoke-virtual {v15}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v7, v0, :cond_a

    .line 191
    invoke-virtual {v15, v7}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    .line 194
    .local v5, "targetUserId":I
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v12, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 195
    move/from16 p12, v7

    move-object/from16 v16, v14

    move v14, v4

    goto/16 :goto_5

    .line 199
    :cond_5
    nop

    .line 200
    move-object/from16 v0, p0

    move v2, v4

    move v3, v5

    move-wide/from16 v5, p6

    move/from16 v4, p10

    .end local v5    # "targetUserId":I
    .local v3, "targetUserId":I
    invoke-direct/range {v0 .. v6}, Lcom/android/server/pm/CrossProfileIntentResolverEngine;->chooseCrossProfileResolver(Lcom/android/server/pm/Computer;IIZJ)Lcom/android/server/pm/CrossProfileResolver;

    move-result-object v10

    .line 207
    move v5, v3

    .end local v3    # "targetUserId":I
    .restart local v5    # "targetUserId":I
    .local v10, "crossProfileResolver":Lcom/android/server/pm/CrossProfileResolver;
    if-eqz v10, :cond_9

    .line 208
    nop

    .line 211
    invoke-virtual {v15, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 209
    move-object/from16 v1, p1

    move/from16 v4, p5

    move-object/from16 v11, p11

    move-object v2, v8

    move-object v3, v9

    move-object/from16 v16, v14

    move-object/from16 v8, p8

    move-object v9, v0

    move v14, v7

    move-object v0, v10

    move-wide/from16 v6, p6

    move/from16 v10, p9

    .end local v7    # "index":I
    .end local v10    # "crossProfileResolver":Lcom/android/server/pm/CrossProfileResolver;
    .local v0, "crossProfileResolver":Lcom/android/server/pm/CrossProfileResolver;
    .local v14, "index":I
    .local v16, "matchingFilters":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/CrossProfileIntentFilter;>;"
    invoke-virtual/range {v0 .. v11}, Lcom/android/server/pm/CrossProfileResolver;->resolveIntent(Lcom/android/server/pm/Computer;Landroid/content/Intent;Ljava/lang/String;IIJLjava/lang/String;Ljava/util/List;ZLjava/util/function/Function;)Ljava/util/List;

    move-result-object v9

    .line 213
    move-object/from16 v17, v0

    .end local v0    # "crossProfileResolver":Lcom/android/server/pm/CrossProfileResolver;
    .local v9, "crossProfileInfos":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/CrossProfileDomainInfo;>;"
    .local v17, "crossProfileResolver":Lcom/android/server/pm/CrossProfileResolver;
    invoke-interface {v13, v9}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 214
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v12, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 221
    const/4 v0, 0x0

    .line 222
    .local v0, "allowChainedResolution":Z
    const/4 v1, 0x0

    .line 223
    .local v1, "filterIndex":I
    :goto_3
    invoke-virtual {v15, v14}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_7

    .line 224
    nop

    .line 226
    invoke-virtual {v15, v14}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/CrossProfileIntentFilter;

    iget v2, v2, Lcom/android/server/pm/CrossProfileIntentFilter;->mFlags:I

    and-int/lit8 v2, v2, 0x10

    if-eqz v2, :cond_6

    .line 227
    const/4 v0, 0x1

    .line 228
    move/from16 v18, v0

    goto :goto_4

    .line 223
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_7
    move/from16 v18, v0

    .line 231
    .end local v0    # "allowChainedResolution":Z
    .end local v1    # "filterIndex":I
    .local v18, "allowChainedResolution":Z
    :goto_4
    if-eqz v18, :cond_8

    .line 232
    nop

    .line 234
    move-object/from16 v0, p0

    move-object v1, v9

    .end local v9    # "crossProfileInfos":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/CrossProfileDomainInfo;>;"
    .local v1, "crossProfileInfos":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/CrossProfileDomainInfo;>;"
    invoke-direct {v0, v1}, Lcom/android/server/pm/CrossProfileIntentResolverEngine;->hasNonNegativePriority(Ljava/util/List;)Z

    move-result v9

    .line 232
    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move-wide/from16 v6, p6

    move-object/from16 v8, p8

    move/from16 v10, p10

    move-object/from16 v11, p11

    move-object/from16 v19, v1

    move/from16 p12, v14

    move-object/from16 v1, p1

    move/from16 v14, p5

    .end local v1    # "crossProfileInfos":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/CrossProfileDomainInfo;>;"
    .end local v14    # "index":I
    .local v19, "crossProfileInfos":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/CrossProfileDomainInfo;>;"
    .local p12, "index":I
    invoke-direct/range {v0 .. v12}, Lcom/android/server/pm/CrossProfileIntentResolverEngine;->resolveIntentInternal(Lcom/android/server/pm/Computer;Landroid/content/Intent;Ljava/lang/String;IIJLjava/lang/String;ZZLjava/util/function/Function;Ljava/util/Set;)Ljava/util/List;

    move-result-object v9

    invoke-interface {v13, v9}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_5

    .line 231
    .end local v19    # "crossProfileInfos":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/CrossProfileDomainInfo;>;"
    .end local p12    # "index":I
    .restart local v9    # "crossProfileInfos":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/CrossProfileDomainInfo;>;"
    .restart local v14    # "index":I
    :cond_8
    move-object/from16 v1, p1

    move-object/from16 v19, v9

    move/from16 p12, v14

    move/from16 v14, p5

    .end local v9    # "crossProfileInfos":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/CrossProfileDomainInfo;>;"
    .end local v14    # "index":I
    .restart local v19    # "crossProfileInfos":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/CrossProfileDomainInfo;>;"
    .restart local p12    # "index":I
    goto :goto_5

    .line 207
    .end local v16    # "matchingFilters":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/CrossProfileIntentFilter;>;"
    .end local v17    # "crossProfileResolver":Lcom/android/server/pm/CrossProfileResolver;
    .end local v18    # "allowChainedResolution":Z
    .end local v19    # "crossProfileInfos":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/CrossProfileDomainInfo;>;"
    .end local p12    # "index":I
    .restart local v7    # "index":I
    .restart local v10    # "crossProfileResolver":Lcom/android/server/pm/CrossProfileResolver;
    .local v14, "matchingFilters":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/CrossProfileIntentFilter;>;"
    :cond_9
    move-object/from16 v1, p1

    move/from16 p12, v7

    move-object/from16 v17, v10

    move-object/from16 v16, v14

    move/from16 v14, p5

    .line 189
    .end local v5    # "targetUserId":I
    .end local v7    # "index":I
    .end local v10    # "crossProfileResolver":Lcom/android/server/pm/CrossProfileResolver;
    .end local v14    # "matchingFilters":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/CrossProfileIntentFilter;>;"
    .restart local v16    # "matchingFilters":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/CrossProfileIntentFilter;>;"
    .restart local p12    # "index":I
    :goto_5
    add-int/lit8 v7, p12, 0x1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move v4, v14

    move-object/from16 v14, v16

    .end local p12    # "index":I
    .restart local v7    # "index":I
    goto/16 :goto_2

    .end local v16    # "matchingFilters":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/CrossProfileIntentFilter;>;"
    .restart local v14    # "matchingFilters":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/CrossProfileIntentFilter;>;"
    :cond_a
    nop

    .line 241
    .end local v7    # "index":I
    return-object v13

    .line 146
    .end local v12    # "visitedUserIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    .end local v15    # "crossProfileIntentFiltersByUser":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/List<Lcom/android/server/pm/CrossProfileIntentFilter;>;>;"
    .local p12, "visitedUserIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    :cond_b
    move-object/from16 v16, v14

    move v14, v4

    .line 150
    .end local v14    # "matchingFilters":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/CrossProfileIntentFilter;>;"
    .restart local v16    # "matchingFilters":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/CrossProfileIntentFilter;>;"
    :goto_6
    move/from16 v8, p4

    if-ne v8, v14, :cond_c

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->hasWebURI()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 151
    invoke-interface {v1, v14}, Lcom/android/server/pm/Computer;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v9

    .line 152
    .local v9, "parent":Landroid/content/pm/UserInfo;
    if-eqz v9, :cond_c

    .line 153
    iget v6, v9, Landroid/content/pm/UserInfo;->id:I

    .line 154
    move-object/from16 v2, p3

    move-wide/from16 v3, p6

    move-object v0, v1

    move v5, v14

    move-object/from16 v1, p2

    invoke-interface/range {v0 .. v6}, Lcom/android/server/pm/Computer;->getCrossProfileDomainPreferredLpr(Landroid/content/Intent;Ljava/lang/String;JII)Lcom/android/server/pm/CrossProfileDomainInfo;

    move-result-object v6

    .line 156
    .local v6, "generalizedCrossProfileDomainInfo":Lcom/android/server/pm/CrossProfileDomainInfo;
    if-eqz v6, :cond_c

    .line 157
    invoke-interface {v13, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 161
    .end local v6    # "generalizedCrossProfileDomainInfo":Lcom/android/server/pm/CrossProfileDomainInfo;
    .end local v9    # "parent":Landroid/content/pm/UserInfo;
    :cond_c
    return-object v13
.end method

.method private shouldUseNoFilteringResolver(II)Z
    .locals 1
    .param p1, "sourceUserId"    # I
    .param p2, "targetUserId"    # I

    .line 724
    invoke-direct {p0, p1}, Lcom/android/server/pm/CrossProfileIntentResolverEngine;->isNoFilteringPropertyConfiguredForUser(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 725
    invoke-direct {p0, p2}, Lcom/android/server/pm/CrossProfileIntentResolverEngine;->isNoFilteringPropertyConfiguredForUser(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 724
    :goto_1
    return v0
.end method


# virtual methods
.method public canReachTo(Lcom/android/server/pm/Computer;Landroid/content/Intent;Ljava/lang/String;II)Z
    .locals 8
    .param p1, "computer"    # Lcom/android/server/pm/Computer;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "resolvedType"    # Ljava/lang/String;
    .param p4, "sourceUserId"    # I
    .param p5, "targetUserId"    # I

    .line 293
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    move-object v7, v0

    .line 294
    .local v7, "visitedUserIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    .end local p1    # "computer":Lcom/android/server/pm/Computer;
    .end local p2    # "intent":Landroid/content/Intent;
    .end local p3    # "resolvedType":Ljava/lang/String;
    .end local p4    # "sourceUserId":I
    .end local p5    # "targetUserId":I
    .local v2, "computer":Lcom/android/server/pm/Computer;
    .local v3, "intent":Landroid/content/Intent;
    .local v4, "resolvedType":Ljava/lang/String;
    .local v5, "sourceUserId":I
    .local v6, "targetUserId":I
    invoke-direct/range {v1 .. v7}, Lcom/android/server/pm/CrossProfileIntentResolverEngine;->canReachToInternal(Lcom/android/server/pm/Computer;Landroid/content/Intent;Ljava/lang/String;IILjava/util/Set;)Z

    move-result p1

    return p1
.end method

.method public combineFilterAndCreateQueryActivitiesResponse(Lcom/android/server/pm/Computer;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZJIIZLjava/util/List;Ljava/util/List;ZZZLjava/util/function/Function;)Lcom/android/server/pm/QueryIntentActivitiesResult;
    .locals 14
    .param p1, "computer"    # Lcom/android/server/pm/Computer;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "resolvedType"    # Ljava/lang/String;
    .param p4, "instantAppPkgName"    # Ljava/lang/String;
    .param p5, "pkgName"    # Ljava/lang/String;
    .param p6, "allowDynamicSplits"    # Z
    .param p7, "matchFlags"    # J
    .param p9, "userId"    # I
    .param p10, "filterCallingUid"    # I
    .param p11, "resolveForStart"    # Z
    .param p14, "areWebInstantAppsDisabled"    # Z
    .param p15, "addInstant"    # Z
    .param p16, "sortResult"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/Computer;",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZJIIZ",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;",
            "Ljava/util/List<",
            "Lcom/android/server/pm/CrossProfileDomainInfo;",
            ">;ZZZ",
            "Ljava/util/function/Function<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/pkg/PackageStateInternal;",
            ">;)",
            "Lcom/android/server/pm/QueryIntentActivitiesResult;"
        }
    .end annotation

    .line 404
    .local p12, "candidates":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .local p13, "crossProfileCandidates":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/CrossProfileDomainInfo;>;"
    .local p17, "pkgSettingFunction":Ljava/util/function/Function;, "Ljava/util/function/Function<Ljava/lang/String;Lcom/android/server/pm/pkg/PackageStateInternal;>;"
    move-object/from16 v7, p2

    move/from16 v6, p9

    move-object/from16 v1, p12

    move-object/from16 v8, p13

    move/from16 v11, p15

    sget-object v0, Lcom/nothing/server/INtExtServiceFactory$ExtType;->NT_DUAL_APPS_SERVICE:Lcom/nothing/server/INtExtServiceFactory$ExtType;

    invoke-static {v0}, Lcom/nothing/server/NtExtServiceFactory;->getOrCreate(Lcom/nothing/server/INtExtServiceFactory$ExtType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nothing/server/ext/INtDualAppsService;

    .line 405
    invoke-interface {v0, v6, v1, v8}, Lcom/nothing/server/ext/INtDualAppsService;->overrideCombineActivitiesResult(ILjava/util/List;Ljava/util/List;)V

    .line 408
    move-object/from16 v12, p3

    invoke-virtual {p0, p1, v7, v12, v6}, Lcom/android/server/pm/CrossProfileIntentResolverEngine;->shouldSkipCurrentProfile(Lcom/android/server/pm/Computer;Landroid/content/Intent;Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 413
    invoke-direct {p0, v8}, Lcom/android/server/pm/CrossProfileIntentResolverEngine;->resolveInfoFromCrossProfileDomainInfo(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 414
    .end local p12    # "candidates":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .local v1, "candidates":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    new-instance v9, Lcom/android/server/pm/QueryIntentActivitiesResult;

    move-object v0, p1

    move-object/from16 v2, p4

    move/from16 v3, p6

    move/from16 v4, p10

    move/from16 v5, p11

    invoke-interface/range {v0 .. v7}, Lcom/android/server/pm/Computer;->applyPostResolutionFilter(Ljava/util/List;Ljava/lang/String;ZIZILandroid/content/Intent;)Ljava/util/List;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/android/server/pm/QueryIntentActivitiesResult;-><init>(Ljava/util/List;)V

    return-object v9

    .line 419
    .end local v1    # "candidates":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local p12    # "candidates":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_0
    const/4 v13, 0x1

    if-nez p5, :cond_4

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->hasWebURI()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 420
    nop

    nop

    if-nez v11, :cond_3

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-gt v0, v13, :cond_1

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 421
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 422
    :cond_2
    invoke-direct {p0, v8}, Lcom/android/server/pm/CrossProfileIntentResolverEngine;->resolveInfoFromCrossProfileDomainInfo(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 423
    new-instance v9, Lcom/android/server/pm/QueryIntentActivitiesResult;

    move-object v0, p1

    move-object/from16 v7, p2

    move-object/from16 v2, p4

    move/from16 v3, p6

    move/from16 v6, p9

    move/from16 v4, p10

    move/from16 v5, p11

    invoke-interface/range {v0 .. v7}, Lcom/android/server/pm/Computer;->applyPostResolutionFilter(Ljava/util/List;Ljava/lang/String;ZIZILandroid/content/Intent;)Ljava/util/List;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/android/server/pm/QueryIntentActivitiesResult;-><init>(Ljava/util/List;)V

    return-object v9

    .line 431
    :cond_3
    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move-wide/from16 v3, p7

    move/from16 v7, p9

    move/from16 v9, p11

    move-object/from16 v5, p12

    move-object/from16 v10, p17

    move-object v6, v8

    move/from16 v8, p14

    invoke-direct/range {v0 .. v10}, Lcom/android/server/pm/CrossProfileIntentResolverEngine;->filterCandidatesWithDomainPreferredActivitiesLPr(Lcom/android/server/pm/Computer;Landroid/content/Intent;JLjava/util/List;Ljava/util/List;IZZLjava/util/function/Function;)Ljava/util/List;

    move-result-object v5

    move-object v8, v6

    move v6, v7

    move-object v7, v2

    move-object v1, v5

    .end local p12    # "candidates":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .local v5, "candidates":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    goto :goto_0

    .line 419
    .end local v5    # "candidates":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local p12    # "candidates":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_4
    move-object/from16 v7, p2

    move/from16 v6, p9

    .line 435
    invoke-direct {p0, v8}, Lcom/android/server/pm/CrossProfileIntentResolverEngine;->resolveInfoFromCrossProfileDomainInfo(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 444
    .end local p12    # "candidates":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v1    # "candidates":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-ne v2, v13, :cond_5

    invoke-static {v6}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->userHandle:Landroid/os/UserHandle;

    invoke-virtual {v2, v3}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 445
    invoke-direct {p0, v6}, Lcom/android/server/pm/CrossProfileIntentResolverEngine;->isNoFilteringPropertyConfiguredForUser(I)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 446
    invoke-virtual {v7, v6}, Landroid/content/Intent;->prepareToLeaveUser(I)V

    .line 448
    :cond_5
    new-instance v2, Lcom/android/server/pm/QueryIntentActivitiesResult;

    move/from16 v3, p16

    invoke-direct {v2, v3, v11, v1}, Lcom/android/server/pm/QueryIntentActivitiesResult;-><init>(ZZLjava/util/List;)V

    return-object v2
.end method

.method public resolveIntent(Lcom/android/server/pm/Computer;Landroid/content/Intent;Ljava/lang/String;IJLjava/lang/String;ZZLjava/util/function/Function;)Ljava/util/List;
    .locals 13
    .param p1, "computer"    # Lcom/android/server/pm/Computer;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "resolvedType"    # Ljava/lang/String;
    .param p4, "userId"    # I
    .param p5, "flags"    # J
    .param p7, "pkgName"    # Ljava/lang/String;
    .param p8, "hasNonNegativePriorityResult"    # Z
    .param p9, "resolveForStart"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/Computer;",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "IJ",
            "Ljava/lang/String;",
            "ZZ",
            "Ljava/util/function/Function<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/pkg/PackageStateInternal;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/android/server/pm/CrossProfileDomainInfo;",
            ">;"
        }
    .end annotation

    .line 106
    .local p10, "pkgSettingFunction":Ljava/util/function/Function;, "Ljava/util/function/Function<Ljava/lang/String;Lcom/android/server/pm/pkg/PackageStateInternal;>;"
    const/4 v12, 0x0

    move/from16 v5, p4

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move-wide/from16 v6, p5

    move-object/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move-object/from16 v11, p10

    invoke-direct/range {v0 .. v12}, Lcom/android/server/pm/CrossProfileIntentResolverEngine;->resolveIntentInternal(Lcom/android/server/pm/Computer;Landroid/content/Intent;Ljava/lang/String;IIJLjava/lang/String;ZZLjava/util/function/Function;Ljava/util/Set;)Ljava/util/List;

    move-result-object v5

    return-object v5
.end method

.method public shouldSkipCurrentProfile(Lcom/android/server/pm/Computer;Landroid/content/Intent;Ljava/lang/String;I)Z
    .locals 4
    .param p1, "computer"    # Lcom/android/server/pm/Computer;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "resolvedType"    # Ljava/lang/String;
    .param p4, "sourceUserId"    # I

    .line 360
    nop

    .line 361
    invoke-interface {p1, p2, p3, p4}, Lcom/android/server/pm/Computer;->getMatchingCrossProfileIntentFilters(Landroid/content/Intent;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    .line 362
    .local v0, "matches":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/CrossProfileIntentFilter;>;"
    if-eqz v0, :cond_1

    .line 363
    const/4 v1, 0x0

    .local v1, "matchIndex":I
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 364
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/CrossProfileIntentFilter;

    .line 365
    .local v2, "crossProfileIntentFilter":Lcom/android/server/pm/CrossProfileIntentFilter;
    invoke-virtual {v2}, Lcom/android/server/pm/CrossProfileIntentFilter;->getFlags()I

    move-result v3

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_0

    .line 367
    const/4 v3, 0x1

    return v3

    .line 365
    :cond_0
    nop

    .line 363
    .end local v2    # "crossProfileIntentFilter":Lcom/android/server/pm/CrossProfileIntentFilter;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 371
    .end local v1    # "matchIndex":I
    :cond_1
    const/4 v1, 0x0

    return v1
.end method
