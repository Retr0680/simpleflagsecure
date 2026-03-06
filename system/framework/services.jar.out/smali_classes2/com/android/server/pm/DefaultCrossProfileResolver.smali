.class public final Lcom/android/server/pm/DefaultCrossProfileResolver;
.super Lcom/android/server/pm/CrossProfileResolver;
.source "DefaultCrossProfileResolver.java"


# instance fields
.field private final mDomainVerificationManager:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/resolution/ComponentResolverApi;Lcom/android/server/pm/UserManagerService;Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;)V
    .locals 0
    .param p1, "componentResolver"    # Lcom/android/server/pm/resolution/ComponentResolverApi;
    .param p2, "userManager"    # Lcom/android/server/pm/UserManagerService;
    .param p3, "domainVerificationManager"    # Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;

    .line 58
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/CrossProfileResolver;-><init>(Lcom/android/server/pm/resolution/ComponentResolverApi;Lcom/android/server/pm/UserManagerService;)V

    .line 59
    iput-object p3, p0, Lcom/android/server/pm/DefaultCrossProfileResolver;->mDomainVerificationManager:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;

    .line 60
    return-void
.end method

.method private queryCrossProfileIntents(Lcom/android/server/pm/Computer;Ljava/util/List;Landroid/content/Intent;Ljava/lang/String;JIZLjava/util/function/Function;)Lcom/android/server/pm/CrossProfileDomainInfo;
    .locals 20
    .param p1, "computer"    # Lcom/android/server/pm/Computer;
    .param p3, "intent"    # Landroid/content/Intent;
    .param p4, "resolvedType"    # Ljava/lang/String;
    .param p5, "flags"    # J
    .param p7, "sourceUserId"    # I
    .param p8, "matchInCurrentProfile"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/Computer;",
            "Ljava/util/List<",
            "Lcom/android/server/pm/CrossProfileIntentFilter;",
            ">;",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "JIZ",
            "Ljava/util/function/Function<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/pkg/PackageStateInternal;",
            ">;)",
            "Lcom/android/server/pm/CrossProfileDomainInfo;"
        }
    .end annotation

    .line 224
    .local p2, "matchingFilters":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/CrossProfileIntentFilter;>;"
    .local p9, "pkgSettingFunction":Ljava/util/function/Function;, "Ljava/util/function/Function<Ljava/lang/String;Lcom/android/server/pm/pkg/PackageStateInternal;>;"
    move-object/from16 v9, p2

    const/4 v10, 0x0

    if-nez v9, :cond_0

    .line 225
    return-object v10

    .line 230
    :cond_0
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    move-object v11, v0

    .line 232
    .local v11, "alreadyTriedUserIds":Landroid/util/SparseBooleanArray;
    const/4 v12, 0x0

    .line 234
    .local v12, "resultInfo":Lcom/android/server/pm/CrossProfileDomainInfo;
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v13

    .line 235
    .local v13, "size":I
    const/4 v0, 0x0

    move v14, v0

    .local v14, "i":I
    :goto_0
    if-ge v14, v13, :cond_7

    .line 236
    invoke-interface {v9, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/android/server/pm/CrossProfileIntentFilter;

    .line 237
    .local v2, "filter":Lcom/android/server/pm/CrossProfileIntentFilter;
    invoke-virtual {v2}, Lcom/android/server/pm/CrossProfileIntentFilter;->getTargetUserId()I

    move-result v15

    .line 238
    .local v15, "targetUserId":I
    nop

    .line 239
    invoke-virtual {v2}, Lcom/android/server/pm/CrossProfileIntentFilter;->getFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_1

    move v0, v3

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    move/from16 v16, v0

    .line 240
    .local v16, "skipCurrentProfile":Z
    nop

    .line 241
    invoke-virtual {v2}, Lcom/android/server/pm/CrossProfileIntentFilter;->getFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    move v1, v3

    :cond_2
    move/from16 v17, v1

    .line 242
    .local v17, "skipCurrentProfileIfNoMatchFound":Z
    if-nez v16, :cond_6

    invoke-virtual {v11, v15}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    if-nez v0, :cond_6

    if-eqz v17, :cond_3

    if-nez p8, :cond_4

    :cond_3
    goto :goto_2

    :cond_4
    move-object/from16 v0, p0

    move-object/from16 v18, v10

    goto :goto_3

    .line 246
    :goto_2
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v4, p4

    move-wide/from16 v5, p5

    move/from16 v7, p7

    move-object/from16 v8, p9

    move-object/from16 v18, v10

    move v10, v3

    move-object/from16 v3, p3

    invoke-virtual/range {v0 .. v8}, Lcom/android/server/pm/DefaultCrossProfileResolver;->createForwardingResolveInfo(Lcom/android/server/pm/Computer;Lcom/android/server/pm/CrossProfileIntentFilter;Landroid/content/Intent;Ljava/lang/String;JILjava/util/function/Function;)Lcom/android/server/pm/CrossProfileDomainInfo;

    move-result-object v19

    .line 248
    .local v19, "info":Lcom/android/server/pm/CrossProfileDomainInfo;
    if-eqz v19, :cond_5

    .line 249
    move-object/from16 v12, v19

    .line 250
    goto :goto_4

    .line 252
    :cond_5
    invoke-virtual {v11, v15, v10}, Landroid/util/SparseBooleanArray;->put(IZ)V

    goto :goto_3

    .line 242
    .end local v19    # "info":Lcom/android/server/pm/CrossProfileDomainInfo;
    :cond_6
    move-object/from16 v0, p0

    move-object/from16 v18, v10

    .line 235
    .end local v2    # "filter":Lcom/android/server/pm/CrossProfileIntentFilter;
    .end local v15    # "targetUserId":I
    .end local v16    # "skipCurrentProfile":Z
    .end local v17    # "skipCurrentProfileIfNoMatchFound":Z
    :goto_3
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v10, v18

    goto :goto_0

    :cond_7
    move-object/from16 v0, p0

    move-object/from16 v18, v10

    .line 256
    .end local v14    # "i":I
    :goto_4
    if-nez v12, :cond_8

    .line 257
    return-object v18

    .line 260
    :cond_8
    iget-object v1, v12, Lcom/android/server/pm/CrossProfileDomainInfo;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    .line 261
    .local v1, "forwardingResolveInfo":Landroid/content/pm/ResolveInfo;
    iget v2, v1, Landroid/content/pm/ResolveInfo;->targetUserId:I

    invoke-virtual {v0, v2}, Lcom/android/server/pm/CrossProfileResolver;->isUserEnabled(I)Z

    move-result v2

    if-nez v2, :cond_9

    .line 262
    return-object v18

    .line 265
    :cond_9
    nop

    .line 266
    invoke-static {v12}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    move/from16 v7, p7

    invoke-virtual {v0, v2, v7}, Lcom/android/server/pm/CrossProfileResolver;->filterIfNotSystemUser(Ljava/util/List;I)Ljava/util/List;

    move-result-object v2

    .line 267
    .local v2, "filteredResult":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/CrossProfileDomainInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 268
    return-object v18

    .line 271
    :cond_a
    return-object v12
.end method

.method private querySkipCurrentProfileIntents(Lcom/android/server/pm/Computer;Ljava/util/List;Landroid/content/Intent;Ljava/lang/String;JILjava/util/function/Function;)Lcom/android/server/pm/CrossProfileDomainInfo;
    .locals 14
    .param p1, "computer"    # Lcom/android/server/pm/Computer;
    .param p3, "intent"    # Landroid/content/Intent;
    .param p4, "resolvedType"    # Ljava/lang/String;
    .param p5, "flags"    # J
    .param p7, "sourceUserId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/Computer;",
            "Ljava/util/List<",
            "Lcom/android/server/pm/CrossProfileIntentFilter;",
            ">;",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "JI",
            "Ljava/util/function/Function<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/pkg/PackageStateInternal;",
            ">;)",
            "Lcom/android/server/pm/CrossProfileDomainInfo;"
        }
    .end annotation

    .line 173
    .local p2, "matchingFilters":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/CrossProfileIntentFilter;>;"
    .local p8, "pkgSettingFunction":Ljava/util/function/Function;, "Ljava/util/function/Function<Ljava/lang/String;Lcom/android/server/pm/pkg/PackageStateInternal;>;"
    move-object/from16 v0, p2

    if-eqz v0, :cond_2

    .line 176
    sget-object v1, Lcom/nothing/server/INtExtServiceFactory$ExtType;->NT_DUAL_APPS_SERVICE:Lcom/nothing/server/INtExtServiceFactory$ExtType;

    invoke-static {v1}, Lcom/nothing/server/NtExtServiceFactory;->getOrCreate(Lcom/nothing/server/INtExtServiceFactory$ExtType;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nothing/server/ext/INtDualAppsService;

    .line 178
    .local v1, "duapApps":Lcom/nothing/server/ext/INtDualAppsService;
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    .line 179
    .local v2, "size":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_2

    .line 180
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v7, v4

    check-cast v7, Lcom/android/server/pm/CrossProfileIntentFilter;

    .line 183
    .local v7, "filter":Lcom/android/server/pm/CrossProfileIntentFilter;
    iget-object v4, v7, Lcom/android/server/pm/CrossProfileIntentFilter;->mOwnerPackage:Ljava/lang/String;

    move-object/from16 v8, p3

    move/from16 v12, p7

    invoke-interface {v1, v8, v4, v12}, Lcom/nothing/server/ext/INtDualAppsService;->skipCurrentProfileIntents(Landroid/content/Intent;Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 184
    goto :goto_1

    .line 187
    :cond_0
    invoke-virtual {v7}, Lcom/android/server/pm/CrossProfileIntentFilter;->getFlags()I

    move-result v4

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_1

    .line 190
    move-object v5, p0

    move-object v6, p1

    move-object/from16 v9, p4

    move-wide/from16 v10, p5

    move-object/from16 v13, p8

    invoke-virtual/range {v5 .. v13}, Lcom/android/server/pm/DefaultCrossProfileResolver;->createForwardingResolveInfo(Lcom/android/server/pm/Computer;Lcom/android/server/pm/CrossProfileIntentFilter;Landroid/content/Intent;Ljava/lang/String;JILjava/util/function/Function;)Lcom/android/server/pm/CrossProfileDomainInfo;

    move-result-object v4

    .line 192
    .local v4, "info":Lcom/android/server/pm/CrossProfileDomainInfo;
    if-eqz v4, :cond_1

    .line 193
    return-object v4

    .line 179
    .end local v4    # "info":Lcom/android/server/pm/CrossProfileDomainInfo;
    .end local v7    # "filter":Lcom/android/server/pm/CrossProfileIntentFilter;
    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 198
    .end local v1    # "duapApps":Lcom/nothing/server/ext/INtDualAppsService;
    .end local v2    # "size":I
    .end local v3    # "i":I
    :cond_2
    const/4 v1, 0x0

    return-object v1
.end method


# virtual methods
.method protected createForwardingResolveInfo(Lcom/android/server/pm/Computer;Lcom/android/server/pm/CrossProfileIntentFilter;Landroid/content/Intent;Ljava/lang/String;JILjava/util/function/Function;)Lcom/android/server/pm/CrossProfileDomainInfo;
    .locals 17
    .param p1, "computer"    # Lcom/android/server/pm/Computer;
    .param p2, "filter"    # Lcom/android/server/pm/CrossProfileIntentFilter;
    .param p3, "intent"    # Landroid/content/Intent;
    .param p4, "resolvedType"    # Ljava/lang/String;
    .param p5, "flags"    # J
    .param p7, "sourceUserId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/Computer;",
            "Lcom/android/server/pm/CrossProfileIntentFilter;",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "JI",
            "Ljava/util/function/Function<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/pkg/PackageStateInternal;",
            ">;)",
            "Lcom/android/server/pm/CrossProfileDomainInfo;"
        }
    .end annotation

    .line 292
    .local p8, "pkgSettingFunction":Ljava/util/function/Function;, "Ljava/util/function/Function<Ljava/lang/String;Lcom/android/server/pm/pkg/PackageStateInternal;>;"
    move-object/from16 v0, p0

    invoke-virtual/range {p2 .. p2}, Lcom/android/server/pm/CrossProfileIntentFilter;->getTargetUserId()I

    move-result v7

    .line 293
    .local v7, "targetUserId":I
    invoke-virtual {v0, v7}, Lcom/android/server/pm/CrossProfileResolver;->isUserEnabled(I)Z

    move-result v1

    const/4 v8, 0x0

    if-nez v1, :cond_0

    .line 294
    return-object v8

    .line 297
    :cond_0
    iget-object v1, v0, Lcom/android/server/pm/CrossProfileResolver;->mComponentResolver:Lcom/android/server/pm/resolution/ComponentResolverApi;

    move-object/from16 v2, p1

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-wide/from16 v5, p5

    invoke-interface/range {v1 .. v7}, Lcom/android/server/pm/resolution/ComponentResolverApi;->queryActivities(Lcom/android/server/pm/Computer;Landroid/content/Intent;Ljava/lang/String;JI)Ljava/util/List;

    move-result-object v9

    .line 299
    .local v9, "resultTargetUser":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-static {v9}, Lcom/android/internal/util/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 300
    return-object v8

    .line 303
    :cond_1
    const/4 v1, 0x0

    .line 304
    .local v1, "forwardingInfo":Landroid/content/pm/ResolveInfo;
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_3

    .line 305
    invoke-interface {v9, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 306
    .local v3, "targetUserResolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v4, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v5, 0x40000000    # 2.0f

    and-int/2addr v4, v5

    if-nez v4, :cond_2

    .line 308
    move-object/from16 v10, p1

    move-object/from16 v11, p2

    move/from16 v12, p7

    invoke-interface {v10, v11, v12, v7}, Lcom/android/server/pm/Computer;->createForwardingResolveInfoUnchecked(Lcom/android/server/pm/WatchedIntentFilter;II)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    .line 310
    move-object v13, v1

    goto :goto_1

    .line 306
    :cond_2
    move-object/from16 v10, p1

    move-object/from16 v11, p2

    move/from16 v12, p7

    .line 304
    .end local v3    # "targetUserResolveInfo":Landroid/content/pm/ResolveInfo;
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_3
    move-object/from16 v10, p1

    move-object/from16 v11, p2

    move/from16 v12, p7

    move-object v13, v1

    .line 314
    .end local v1    # "forwardingInfo":Landroid/content/pm/ResolveInfo;
    .end local v2    # "i":I
    .local v13, "forwardingInfo":Landroid/content/pm/ResolveInfo;
    :goto_1
    if-nez v13, :cond_4

    .line 316
    return-object v8

    .line 319
    :cond_4
    const/4 v1, 0x0

    .line 321
    .local v1, "highestApprovalLevel":I
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v8

    .line 322
    .local v8, "size":I
    const/4 v2, 0x0

    move v14, v1

    move v15, v2

    .end local v1    # "highestApprovalLevel":I
    .local v14, "highestApprovalLevel":I
    .local v15, "i":I
    :goto_2
    if-ge v15, v8, :cond_7

    .line 323
    invoke-interface {v9, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 324
    .local v1, "riTargetUser":Landroid/content/pm/ResolveInfo;
    iget-boolean v2, v1, Landroid/content/pm/ResolveInfo;->handleAllWebDataURI:Z

    if-eqz v2, :cond_5

    .line 325
    move-object/from16 v3, p8

    goto :goto_3

    .line 327
    :cond_5
    iget-object v2, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 328
    .local v2, "packageName":Ljava/lang/String;
    move-object/from16 v3, p8

    invoke-interface {v3, v2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/pkg/PackageStateInternal;

    .line 329
    .local v4, "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    if-nez v4, :cond_6

    .line 330
    nop

    .line 322
    .end local v1    # "riTargetUser":Landroid/content/pm/ResolveInfo;
    .end local v2    # "packageName":Ljava/lang/String;
    .end local v4    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    :goto_3
    move v6, v7

    goto :goto_4

    .line 332
    .restart local v1    # "riTargetUser":Landroid/content/pm/ResolveInfo;
    .restart local v2    # "packageName":Ljava/lang/String;
    .restart local v4    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    :cond_6
    move-object v5, v1

    .end local v1    # "riTargetUser":Landroid/content/pm/ResolveInfo;
    .local v5, "riTargetUser":Landroid/content/pm/ResolveInfo;
    iget-object v1, v0, Lcom/android/server/pm/DefaultCrossProfileResolver;->mDomainVerificationManager:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;

    .line 333
    move-object/from16 v3, p3

    move-object/from16 v16, v2

    move-object v2, v4

    move v6, v7

    move-object v7, v5

    move-wide/from16 v4, p5

    .end local v4    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    .end local v5    # "riTargetUser":Landroid/content/pm/ResolveInfo;
    .local v2, "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    .local v6, "targetUserId":I
    .local v7, "riTargetUser":Landroid/content/pm/ResolveInfo;
    .local v16, "packageName":Ljava/lang/String;
    invoke-interface/range {v1 .. v6}, Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;->approvalLevelForDomain(Lcom/android/server/pm/pkg/PackageStateInternal;Landroid/content/Intent;JI)I

    move-result v1

    .line 332
    invoke-static {v14, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    move v14, v1

    .line 322
    .end local v2    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    .end local v7    # "riTargetUser":Landroid/content/pm/ResolveInfo;
    .end local v16    # "packageName":Ljava/lang/String;
    :goto_4
    add-int/lit8 v15, v15, 0x1

    move v7, v6

    goto :goto_2

    .end local v6    # "targetUserId":I
    .local v7, "targetUserId":I
    :cond_7
    move v6, v7

    .line 336
    .end local v7    # "targetUserId":I
    .end local v15    # "i":I
    .restart local v6    # "targetUserId":I
    new-instance v1, Lcom/android/server/pm/CrossProfileDomainInfo;

    invoke-direct {v1, v13, v14, v6}, Lcom/android/server/pm/CrossProfileDomainInfo;-><init>(Landroid/content/pm/ResolveInfo;II)V

    return-object v1
.end method

.method public filterResolveInfoWithDomainPreferredActivity(Landroid/content/Intent;Ljava/util/List;JIII)Ljava/util/List;
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;
    .param p3, "flags"    # J
    .param p5, "sourceUserId"    # I
    .param p6, "targetUserId"    # I
    .param p7, "highestApprovalLevel"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/util/List<",
            "Lcom/android/server/pm/CrossProfileDomainInfo;",
            ">;JIII)",
            "Ljava/util/List<",
            "Lcom/android/server/pm/CrossProfileDomainInfo;",
            ">;"
        }
    .end annotation

    .line 140
    .local p2, "crossProfileDomainInfos":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/CrossProfileDomainInfo;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 142
    .local v0, "filteredCrossProfileDomainInfos":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/CrossProfileDomainInfo;>;"
    if-eqz p2, :cond_1

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 143
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 144
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/CrossProfileDomainInfo;

    .line 145
    .local v2, "crossProfileDomainInfo":Lcom/android/server/pm/CrossProfileDomainInfo;
    iget v3, v2, Lcom/android/server/pm/CrossProfileDomainInfo;->mHighestApprovalLevel:I

    if-le v3, p7, :cond_0

    .line 146
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 143
    .end local v2    # "crossProfileDomainInfo":Lcom/android/server/pm/CrossProfileDomainInfo;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 151
    .end local v1    # "index":I
    :cond_1
    return-object v0
.end method

.method public resolveIntent(Lcom/android/server/pm/Computer;Landroid/content/Intent;Ljava/lang/String;IIJLjava/lang/String;Ljava/util/List;ZLjava/util/function/Function;)Ljava/util/List;
    .locals 13
    .param p1, "computer"    # Lcom/android/server/pm/Computer;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "resolvedType"    # Ljava/lang/String;
    .param p4, "userId"    # I
    .param p5, "targetUserId"    # I
    .param p6, "flags"    # J
    .param p8, "pkgName"    # Ljava/lang/String;
    .param p10, "hasNonNegativePriorityResult"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/Computer;",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "IIJ",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/android/server/pm/CrossProfileIntentFilter;",
            ">;Z",
            "Ljava/util/function/Function<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/pkg/PackageStateInternal;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/android/server/pm/CrossProfileDomainInfo;",
            ">;"
        }
    .end annotation

    .line 91
    .local p9, "matchingFilters":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/CrossProfileIntentFilter;>;"
    .local p11, "pkgSettingFunction":Ljava/util/function/Function;, "Ljava/util/function/Function<Ljava/lang/String;Lcom/android/server/pm/pkg/PackageStateInternal;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v10, v0

    .line 92
    .local v10, "xpResult":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/CrossProfileDomainInfo;>;"
    if-eqz p8, :cond_0

    return-object v10

    .line 93
    :cond_0
    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object/from16 v4, p3

    move/from16 v7, p4

    move-wide/from16 v5, p6

    move-object/from16 v2, p9

    move-object/from16 v8, p11

    invoke-direct/range {v0 .. v8}, Lcom/android/server/pm/DefaultCrossProfileResolver;->querySkipCurrentProfileIntents(Lcom/android/server/pm/Computer;Ljava/util/List;Landroid/content/Intent;Ljava/lang/String;JILjava/util/function/Function;)Lcom/android/server/pm/CrossProfileDomainInfo;

    move-result-object v11

    .line 96
    .local v11, "skipProfileInfo":Lcom/android/server/pm/CrossProfileDomainInfo;
    if-eqz v11, :cond_1

    .line 97
    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 98
    invoke-virtual {p0, v10, v7}, Lcom/android/server/pm/CrossProfileResolver;->filterIfNotSystemUser(Ljava/util/List;I)Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 101
    :cond_1
    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object/from16 v4, p3

    move-wide/from16 v5, p6

    move-object/from16 v2, p9

    move/from16 v8, p10

    move-object/from16 v9, p11

    invoke-direct/range {v0 .. v9}, Lcom/android/server/pm/DefaultCrossProfileResolver;->queryCrossProfileIntents(Lcom/android/server/pm/Computer;Ljava/util/List;Landroid/content/Intent;Ljava/lang/String;JIZLjava/util/function/Function;)Lcom/android/server/pm/CrossProfileDomainInfo;

    move-result-object v12

    .line 105
    move v5, v7

    .local v12, "specificXpInfo":Lcom/android/server/pm/CrossProfileDomainInfo;
    invoke-virtual {p2}, Landroid/content/Intent;->hasWebURI()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 106
    const/4 v8, 0x0

    .line 107
    .local v8, "generalXpInfo":Lcom/android/server/pm/CrossProfileDomainInfo;
    invoke-virtual {p0, v5}, Lcom/android/server/pm/CrossProfileResolver;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v9

    .line 108
    .local v9, "parent":Landroid/content/pm/UserInfo;
    if-eqz v9, :cond_2

    .line 109
    iget v6, v9, Landroid/content/pm/UserInfo;->id:I

    move-object v0, p1

    move-object v1, p2

    move-object/from16 v2, p3

    move-wide/from16 v3, p6

    invoke-interface/range {v0 .. v6}, Lcom/android/server/pm/Computer;->getCrossProfileDomainPreferredLpr(Landroid/content/Intent;Ljava/lang/String;JII)Lcom/android/server/pm/CrossProfileDomainInfo;

    move-result-object v8

    .line 113
    :cond_2
    if-eqz v8, :cond_3

    move-object v0, v8

    goto :goto_0

    :cond_3
    move-object v0, v12

    .line 114
    .local v0, "prioritizedXpInfo":Lcom/android/server/pm/CrossProfileDomainInfo;
    :goto_0
    if-eqz v0, :cond_4

    .line 115
    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 117
    .end local v0    # "prioritizedXpInfo":Lcom/android/server/pm/CrossProfileDomainInfo;
    .end local v8    # "generalXpInfo":Lcom/android/server/pm/CrossProfileDomainInfo;
    .end local v9    # "parent":Landroid/content/pm/UserInfo;
    :cond_4
    goto :goto_1

    :cond_5
    if-eqz v12, :cond_4

    .line 118
    invoke-interface {v10, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 121
    :goto_1
    return-object v10
.end method
