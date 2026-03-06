.class public Lcom/android/server/pm/ShortcutParser;
.super Ljava/lang/Object;
.source "ShortcutParser.java"


# static fields
.field private static final DEBUG:Z = false

.field static final METADATA_KEY:Ljava/lang/String; = "android.app.shortcuts"

.field private static final TAG:Ljava/lang/String; = "ShortcutService"

.field private static final TAG_CATEGORIES:Ljava/lang/String; = "categories"

.field private static final TAG_CATEGORY:Ljava/lang/String; = "category"

.field private static final TAG_DATA:Ljava/lang/String; = "data"

.field private static final TAG_INTENT:Ljava/lang/String; = "intent"

.field private static final TAG_SHARE_TARGET:Ljava/lang/String; = "share-target"

.field private static final TAG_SHORTCUT:Ljava/lang/String; = "shortcut"

.field private static final TAG_SHORTCUTS:Ljava/lang/String; = "shortcuts"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createShortcutFromManifest(Lcom/android/server/pm/ShortcutService;ILjava/lang/String;Ljava/lang/String;Landroid/content/ComponentName;IIIIIZLjava/lang/String;)Landroid/content/pm/ShortcutInfo;
    .locals 34
    .param p0, "service"    # Lcom/android/server/pm/ShortcutService;
    .param p1, "userId"    # I
    .param p2, "id"    # Ljava/lang/String;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "activityComponent"    # Landroid/content/ComponentName;
    .param p5, "titleResId"    # I
    .param p6, "textResId"    # I
    .param p7, "disabledMessageResId"    # I
    .param p8, "rank"    # I
    .param p9, "iconResId"    # I
    .param p10, "enabled"    # Z
    .param p11, "splashScreenThemeResName"    # Ljava/lang/String;

    .line 425
    if-eqz p10, :cond_0

    const/16 v0, 0x20

    goto :goto_0

    :cond_0
    const/16 v0, 0x40

    :goto_0
    or-int/lit16 v0, v0, 0x100

    .line 427
    const/4 v1, 0x0

    if-eqz p9, :cond_1

    const/4 v2, 0x4

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    or-int v24, v0, v2

    .line 429
    .local v24, "flags":I
    if-eqz p10, :cond_2

    move/from16 v29, v1

    goto :goto_2

    .line 430
    :cond_2
    const/4 v1, 0x1

    move/from16 v29, v1

    :goto_2
    nop

    .line 434
    .local v29, "disabledReason":I
    new-instance v3, Landroid/content/pm/ShortcutInfo;

    .line 453
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/ShortcutService;->injectCurrentTimeMillis()J

    move-result-wide v22

    const/16 v31, 0x0

    const/16 v33, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v21, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v30, 0x0

    move/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move/from16 v10, p5

    move/from16 v13, p6

    move/from16 v16, p7

    move/from16 v20, p8

    move/from16 v25, p9

    move-object/from16 v32, p11

    invoke-direct/range {v3 .. v33}, Landroid/content/pm/ShortcutInfo;-><init>(ILjava/lang/String;Ljava/lang/String;Landroid/content/ComponentName;Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;ILjava/lang/String;Ljava/lang/CharSequence;ILjava/lang/String;Ljava/lang/CharSequence;ILjava/lang/String;Ljava/util/Set;[Landroid/content/Intent;ILandroid/os/PersistableBundle;JIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I[Landroid/app/Person;Landroid/content/LocusId;Ljava/lang/String;Ljava/util/Map;)V

    .line 434
    return-object v3
.end method

.method private static parseCategories(Lcom/android/server/pm/ShortcutService;Landroid/util/AttributeSet;)Ljava/lang/String;
    .locals 4
    .param p0, "service"    # Lcom/android/server/pm/ShortcutService;
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .line 355
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v1, Lcom/android/internal/R$styleable;->ShortcutCategories:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 358
    .local v0, "sa":Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getType(I)I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    .line 359
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 365
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 359
    return-object v1

    .line 365
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 361
    :cond_0
    :try_start_1
    const-string v1, "ShortcutService"

    const-string v2, "android:name for shortcut category must be string literal."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 362
    nop

    .line 365
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 362
    const/4 v1, 0x0

    return-object v1

    .line 365
    :goto_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 366
    throw v1
.end method

.method private static parseCategory(Lcom/android/server/pm/ShortcutService;Landroid/util/AttributeSet;)Ljava/lang/String;
    .locals 4
    .param p0, "service"    # Lcom/android/server/pm/ShortcutService;
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .line 467
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v1, Lcom/android/internal/R$styleable;->IntentCategory:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 470
    .local v0, "sa":Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getType(I)I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_0

    .line 471
    const-string v1, "ShortcutService"

    const-string v2, "android:name must be string literal."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 472
    nop

    .line 476
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 472
    const/4 v1, 0x0

    return-object v1

    .line 476
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 474
    :cond_0
    :try_start_1
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 476
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 474
    return-object v1

    .line 476
    :goto_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 477
    throw v1
.end method

.method private static parseShareTargetAttributes(Lcom/android/server/pm/ShortcutService;Landroid/util/AttributeSet;)Lcom/android/server/pm/ShareTargetInfo;
    .locals 5
    .param p0, "service"    # Lcom/android/server/pm/ShortcutService;
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .line 482
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v1, Lcom/android/internal/R$styleable;->Intent:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 485
    .local v0, "sa":Landroid/content/res/TypedArray;
    const/4 v1, 0x4

    :try_start_0
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 486
    .local v1, "targetClass":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 487
    const-string v2, "ShortcutService"

    const-string v4, "android:targetClass must be provided."

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 488
    nop

    .line 492
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 488
    return-object v3

    .line 492
    .end local v1    # "targetClass":Ljava/lang/String;
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 490
    .restart local v1    # "targetClass":Ljava/lang/String;
    :cond_0
    :try_start_1
    new-instance v2, Lcom/android/server/pm/ShareTargetInfo;

    invoke-direct {v2, v3, v1, v3}, Lcom/android/server/pm/ShareTargetInfo;-><init>([Lcom/android/server/pm/ShareTargetInfo$TargetData;Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 492
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 490
    return-object v2

    .line 492
    .end local v1    # "targetClass":Ljava/lang/String;
    :goto_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 493
    throw v1
.end method

.method private static parseShareTargetData(Lcom/android/server/pm/ShortcutService;Landroid/util/AttributeSet;)Lcom/android/server/pm/ShareTargetInfo$TargetData;
    .locals 12
    .param p0, "service"    # Lcom/android/server/pm/ShortcutService;
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .line 498
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v1, Lcom/android/internal/R$styleable;->AndroidManifestData:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 501
    .local v1, "sa":Landroid/content/res/TypedArray;
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->getType(I)I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_0

    .line 502
    const-string v0, "ShortcutService"

    const-string v2, "android:mimeType must be string literal."

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 503
    nop

    .line 515
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 503
    const/4 v0, 0x0

    return-object v0

    .line 515
    :catchall_0
    move-exception v0

    goto :goto_0

    .line 505
    :cond_0
    const/4 v2, 0x1

    :try_start_1
    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object v5, v2

    .line 506
    .local v5, "scheme":Ljava/lang/String;
    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 507
    .local v6, "host":Ljava/lang/String;
    invoke-virtual {v1, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 508
    .local v7, "port":Ljava/lang/String;
    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 509
    .local v8, "path":Ljava/lang/String;
    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 510
    .local v9, "pathPattern":Ljava/lang/String;
    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 511
    .local v10, "pathPrefix":Ljava/lang/String;
    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 512
    .local v11, "mimeType":Ljava/lang/String;
    new-instance v4, Lcom/android/server/pm/ShareTargetInfo$TargetData;

    invoke-direct/range {v4 .. v11}, Lcom/android/server/pm/ShareTargetInfo$TargetData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 515
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 512
    return-object v4

    .line 515
    .end local v5    # "scheme":Ljava/lang/String;
    .end local v6    # "host":Ljava/lang/String;
    .end local v7    # "port":Ljava/lang/String;
    .end local v8    # "path":Ljava/lang/String;
    .end local v9    # "pathPattern":Ljava/lang/String;
    .end local v10    # "pathPrefix":Ljava/lang/String;
    .end local v11    # "mimeType":Ljava/lang/String;
    :goto_0
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 516
    throw v0
.end method

.method private static parseShortcutAttributes(Lcom/android/server/pm/ShortcutService;Landroid/util/AttributeSet;Ljava/lang/String;Landroid/content/ComponentName;II)Landroid/content/pm/ShortcutInfo;
    .locals 16
    .param p0, "service"    # Lcom/android/server/pm/ShortcutService;
    .param p1, "attrs"    # Landroid/util/AttributeSet;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "activity"    # Landroid/content/ComponentName;
    .param p4, "userId"    # I
    .param p5, "rank"    # I

    .line 372
    move-object/from16 v1, p0

    move-object/from16 v5, p3

    iget-object v0, v1, Lcom/android/server/pm/ShortcutService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v2, Lcom/android/internal/R$styleable;->Shortcut:[I

    move-object/from16 v13, p1

    invoke-virtual {v0, v13, v2}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v14

    .line 375
    .local v14, "sa":Landroid/content/res/TypedArray;
    const/4 v0, 0x2

    :try_start_0
    invoke-virtual {v14, v0}, Landroid/content/res/TypedArray;->getType(I)I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v3, 0x3

    const-string v4, "ShortcutService"

    const/4 v6, 0x0

    if-eq v2, v3, :cond_0

    .line 376
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "android:shortcutId must be string literal. activity="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 377
    nop

    .line 415
    invoke-virtual {v14}, Landroid/content/res/TypedArray;->recycle()V

    .line 377
    return-object v6

    .line 415
    :catchall_0
    move-exception v0

    goto/16 :goto_1

    .line 379
    :cond_0
    :try_start_2
    invoke-virtual {v14, v0}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v0

    .line 380
    .local v0, "id":Ljava/lang/String;
    const/4 v2, 0x1

    invoke-virtual {v14, v2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v11

    .line 381
    .local v11, "enabled":Z
    const/4 v2, 0x0

    invoke-virtual {v14, v2, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v10

    .line 382
    .local v10, "iconResId":I
    invoke-virtual {v14, v3, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    .line 383
    .local v3, "titleResId":I
    const/4 v7, 0x4

    invoke-virtual {v14, v7, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    .line 384
    .local v7, "textResId":I
    const/4 v8, 0x5

    invoke-virtual {v14, v8, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v8

    .line 386
    .local v8, "disabledMessageResId":I
    const/4 v9, 0x6

    invoke-virtual {v14, v9, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    move v15, v2

    .line 388
    .local v15, "splashScreenThemeResId":I
    if-eqz v15, :cond_1

    .line 389
    iget-object v2, v1, Lcom/android/server/pm/ShortcutService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v15}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v2

    move-object v12, v2

    goto :goto_0

    .line 390
    :cond_1
    move-object v12, v6

    :goto_0
    nop

    .line 392
    .local v12, "splashScreenThemeResName":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 393
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "android:shortcutId must be provided. activity="

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 394
    nop

    .line 415
    invoke-virtual {v14}, Landroid/content/res/TypedArray;->recycle()V

    .line 394
    return-object v6

    .line 396
    :cond_2
    if-nez v3, :cond_3

    .line 397
    :try_start_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "android:shortcutShortLabel must be provided. activity="

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 398
    nop

    .line 415
    invoke-virtual {v14}, Landroid/content/res/TypedArray;->recycle()V

    .line 398
    return-object v6

    .line 401
    :cond_3
    move-object/from16 v4, p2

    move/from16 v2, p4

    move/from16 v9, p5

    move v6, v3

    move-object v3, v0

    .end local v0    # "id":Ljava/lang/String;
    .local v3, "id":Ljava/lang/String;
    .local v6, "titleResId":I
    :try_start_4
    invoke-static/range {v1 .. v12}, Lcom/android/server/pm/ShortcutParser;->createShortcutFromManifest(Lcom/android/server/pm/ShortcutService;ILjava/lang/String;Ljava/lang/String;Landroid/content/ComponentName;IIIIIZLjava/lang/String;)Landroid/content/pm/ShortcutInfo;

    move-result-object v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 415
    invoke-virtual {v14}, Landroid/content/res/TypedArray;->recycle()V

    .line 401
    return-object v0

    .line 415
    .end local v3    # "id":Ljava/lang/String;
    .end local v6    # "titleResId":I
    .end local v7    # "textResId":I
    .end local v8    # "disabledMessageResId":I
    .end local v10    # "iconResId":I
    .end local v11    # "enabled":Z
    .end local v12    # "splashScreenThemeResName":Ljava/lang/String;
    .end local v15    # "splashScreenThemeResId":I
    :goto_1
    invoke-virtual {v14}, Landroid/content/res/TypedArray;->recycle()V

    .line 416
    throw v0
.end method

.method public static parseShortcuts(Lcom/android/server/pm/ShortcutService;Ljava/lang/String;ILjava/util/List;)Ljava/util/List;
    .locals 11
    .param p0, "service"    # Lcom/android/server/pm/ShortcutService;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/ShortcutService;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "Lcom/android/server/pm/ShareTargetInfo;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 71
    .local p3, "outShareTargets":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/ShareTargetInfo;>;"
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/ShortcutService;->injectGetMainActivities(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v1

    .line 72
    .local v1, "activities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v2, 0x0

    if-eqz v1, :cond_4

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    move-object v5, p0

    move-object v7, p1

    move v8, p2

    move-object v10, p3

    goto/16 :goto_3

    .line 76
    :cond_0
    const/4 v3, 0x0

    .line 77
    .local v3, "result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    invoke-interface {p3}, Ljava/util/List;->clear()V

    .line 80
    :try_start_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2

    .line 81
    .local v0, "size":I
    const/4 v4, 0x0

    move-object v9, v3

    .end local v3    # "result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    .local v4, "i":I
    .local v9, "result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    :goto_0
    if-ge v4, v0, :cond_3

    .line 82
    :try_start_1
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 83
    .local v3, "activityInfoNoMetadata":Landroid/content/pm/ActivityInfo;
    if-nez v3, :cond_1

    .line 84
    move-object v5, p0

    move-object v7, p1

    move v8, p2

    move-object v10, p3

    goto :goto_1

    .line 87
    :cond_1
    nop

    .line 89
    invoke-virtual {v3}, Landroid/content/pm/ActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v5

    .line 88
    invoke-virtual {p0, v5, p2}, Lcom/android/server/pm/ShortcutService;->getActivityInfoWithMetadata(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v6
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 90
    .local v6, "activityInfoWithMetadata":Landroid/content/pm/ActivityInfo;
    if-eqz v6, :cond_2

    .line 91
    move-object v5, p0

    move-object v7, p1

    move v8, p2

    move-object v10, p3

    .end local p0    # "service":Lcom/android/server/pm/ShortcutService;
    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "userId":I
    .end local p3    # "outShareTargets":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/ShareTargetInfo;>;"
    .local v5, "service":Lcom/android/server/pm/ShortcutService;
    .local v7, "packageName":Ljava/lang/String;
    .local v8, "userId":I
    .local v10, "outShareTargets":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/ShareTargetInfo;>;"
    :try_start_2
    invoke-static/range {v5 .. v10}, Lcom/android/server/pm/ShortcutParser;->parseShortcutsOneFile(Lcom/android/server/pm/ShortcutService;Landroid/content/pm/ActivityInfo;Ljava/lang/String;ILjava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object p0
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v9, p0

    .end local v9    # "result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    .local p0, "result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    goto :goto_1

    .line 95
    .end local v0    # "size":I
    .end local v3    # "activityInfoNoMetadata":Landroid/content/pm/ActivityInfo;
    .end local v4    # "i":I
    .end local v6    # "activityInfoWithMetadata":Landroid/content/pm/ActivityInfo;
    .end local p0    # "result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    .restart local v9    # "result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    :catch_0
    move-exception v0

    move-object p0, v0

    move-object v3, v9

    goto :goto_2

    .line 90
    .end local v5    # "service":Lcom/android/server/pm/ShortcutService;
    .end local v7    # "packageName":Ljava/lang/String;
    .end local v8    # "userId":I
    .end local v10    # "outShareTargets":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/ShareTargetInfo;>;"
    .restart local v0    # "size":I
    .restart local v3    # "activityInfoNoMetadata":Landroid/content/pm/ActivityInfo;
    .restart local v4    # "i":I
    .restart local v6    # "activityInfoWithMetadata":Landroid/content/pm/ActivityInfo;
    .local p0, "service":Lcom/android/server/pm/ShortcutService;
    .restart local p1    # "packageName":Ljava/lang/String;
    .restart local p2    # "userId":I
    .restart local p3    # "outShareTargets":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/ShareTargetInfo;>;"
    :cond_2
    move-object v5, p0

    move-object v7, p1

    move v8, p2

    move-object v10, p3

    .line 81
    .end local v3    # "activityInfoNoMetadata":Landroid/content/pm/ActivityInfo;
    .end local v6    # "activityInfoWithMetadata":Landroid/content/pm/ActivityInfo;
    .end local p0    # "service":Lcom/android/server/pm/ShortcutService;
    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "userId":I
    .end local p3    # "outShareTargets":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/ShareTargetInfo;>;"
    .restart local v5    # "service":Lcom/android/server/pm/ShortcutService;
    .restart local v7    # "packageName":Ljava/lang/String;
    .restart local v8    # "userId":I
    .restart local v10    # "outShareTargets":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/ShareTargetInfo;>;"
    :goto_1
    add-int/lit8 v4, v4, 0x1

    move-object p0, v5

    move-object p1, v7

    move p2, v8

    move-object p3, v10

    goto :goto_0

    .line 95
    .end local v0    # "size":I
    .end local v4    # "i":I
    .end local v5    # "service":Lcom/android/server/pm/ShortcutService;
    .end local v7    # "packageName":Ljava/lang/String;
    .end local v8    # "userId":I
    .end local v10    # "outShareTargets":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/ShareTargetInfo;>;"
    .restart local p0    # "service":Lcom/android/server/pm/ShortcutService;
    .restart local p1    # "packageName":Ljava/lang/String;
    .restart local p2    # "userId":I
    .restart local p3    # "outShareTargets":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/ShareTargetInfo;>;"
    :catch_1
    move-exception v0

    move-object v5, p0

    move-object v7, p1

    move v8, p2

    move-object v10, p3

    move-object p0, v0

    move-object v3, v9

    .end local p0    # "service":Lcom/android/server/pm/ShortcutService;
    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "userId":I
    .end local p3    # "outShareTargets":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/ShareTargetInfo;>;"
    .restart local v5    # "service":Lcom/android/server/pm/ShortcutService;
    .restart local v7    # "packageName":Ljava/lang/String;
    .restart local v8    # "userId":I
    .restart local v10    # "outShareTargets":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/ShareTargetInfo;>;"
    goto :goto_2

    .line 81
    .end local v5    # "service":Lcom/android/server/pm/ShortcutService;
    .end local v7    # "packageName":Ljava/lang/String;
    .end local v8    # "userId":I
    .end local v10    # "outShareTargets":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/ShareTargetInfo;>;"
    .restart local v0    # "size":I
    .restart local v4    # "i":I
    .restart local p0    # "service":Lcom/android/server/pm/ShortcutService;
    .restart local p1    # "packageName":Ljava/lang/String;
    .restart local p2    # "userId":I
    .restart local p3    # "outShareTargets":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/ShareTargetInfo;>;"
    :cond_3
    move-object v5, p0

    move-object v7, p1

    move v8, p2

    move-object v10, p3

    .line 101
    .end local v0    # "size":I
    .end local v4    # "i":I
    .end local p0    # "service":Lcom/android/server/pm/ShortcutService;
    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "userId":I
    .end local p3    # "outShareTargets":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/ShareTargetInfo;>;"
    .restart local v5    # "service":Lcom/android/server/pm/ShortcutService;
    .restart local v7    # "packageName":Ljava/lang/String;
    .restart local v8    # "userId":I
    .restart local v10    # "outShareTargets":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/ShareTargetInfo;>;"
    nop

    .line 102
    return-object v9

    .line 95
    .end local v5    # "service":Lcom/android/server/pm/ShortcutService;
    .end local v7    # "packageName":Ljava/lang/String;
    .end local v8    # "userId":I
    .end local v9    # "result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    .end local v10    # "outShareTargets":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/ShareTargetInfo;>;"
    .local v3, "result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    .restart local p0    # "service":Lcom/android/server/pm/ShortcutService;
    .restart local p1    # "packageName":Ljava/lang/String;
    .restart local p2    # "userId":I
    .restart local p3    # "outShareTargets":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/ShareTargetInfo;>;"
    :catch_2
    move-exception v0

    move-object v5, p0

    move-object v7, p1

    move v8, p2

    move-object v10, p3

    move-object p0, v0

    .end local p0    # "service":Lcom/android/server/pm/ShortcutService;
    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "userId":I
    .end local p3    # "outShareTargets":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/ShareTargetInfo;>;"
    .restart local v5    # "service":Lcom/android/server/pm/ShortcutService;
    .restart local v7    # "packageName":Ljava/lang/String;
    .restart local v8    # "userId":I
    .restart local v10    # "outShareTargets":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/ShareTargetInfo;>;"
    :goto_2
    nop

    .line 98
    .local p0, "e":Ljava/lang/RuntimeException;
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Exception caught while parsing shortcut XML for package="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v5, p1, p0}, Lcom/android/server/pm/ShortcutService;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 100
    return-object v2

    .line 72
    .end local v3    # "result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    .end local v5    # "service":Lcom/android/server/pm/ShortcutService;
    .end local v7    # "packageName":Ljava/lang/String;
    .end local v8    # "userId":I
    .end local v10    # "outShareTargets":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/ShareTargetInfo;>;"
    .local p0, "service":Lcom/android/server/pm/ShortcutService;
    .restart local p1    # "packageName":Ljava/lang/String;
    .restart local p2    # "userId":I
    .restart local p3    # "outShareTargets":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/ShareTargetInfo;>;"
    :cond_4
    move-object v5, p0

    move-object v7, p1

    move v8, p2

    move-object v10, p3

    .line 73
    .end local p0    # "service":Lcom/android/server/pm/ShortcutService;
    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "userId":I
    .end local p3    # "outShareTargets":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/ShareTargetInfo;>;"
    .restart local v5    # "service":Lcom/android/server/pm/ShortcutService;
    .restart local v7    # "packageName":Ljava/lang/String;
    .restart local v8    # "userId":I
    .restart local v10    # "outShareTargets":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/ShareTargetInfo;>;"
    :goto_3
    return-object v2
.end method

.method private static parseShortcutsOneFile(Lcom/android/server/pm/ShortcutService;Landroid/content/pm/ActivityInfo;Ljava/lang/String;ILjava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 23
    .param p0, "service"    # Lcom/android/server/pm/ShortcutService;
    .param p1, "activityInfo"    # Landroid/content/pm/ActivityInfo;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/ShortcutService;",
            "Landroid/content/pm/ActivityInfo;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;",
            "Ljava/util/List<",
            "Lcom/android/server/pm/ShareTargetInfo;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 115
    .local p4, "result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    .local p5, "outShareTargets":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/ShareTargetInfo;>;"
    move-object/from16 v1, p0

    move-object/from16 v7, p1

    const/4 v2, 0x0

    .line 117
    .local v2, "parser":Landroid/content/res/XmlResourceParser;
    :try_start_0
    const-string v0, "android.app.shortcuts"

    invoke-virtual {v1, v7, v0}, Lcom/android/server/pm/ShortcutService;->injectXmlMetaData(Landroid/content/pm/ActivityInfo;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    move-object v8, v0

    .line 118
    .end local v2    # "parser":Landroid/content/res/XmlResourceParser;
    .local v8, "parser":Landroid/content/res/XmlResourceParser;
    if-nez v8, :cond_1

    .line 119
    nop

    .line 347
    if-eqz v8, :cond_0

    .line 348
    invoke-interface {v8}, Landroid/content/res/XmlResourceParser;->close()V

    .line 119
    :cond_0
    return-object p4

    .line 122
    :cond_1
    :try_start_1
    new-instance v4, Landroid/content/ComponentName;

    iget-object v0, v7, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v3, p2

    invoke-direct {v4, v3, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    .local v4, "activity":Landroid/content/ComponentName;
    invoke-static {v8}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v2

    .line 128
    .local v2, "attrs":Landroid/util/AttributeSet;
    const/4 v0, 0x0

    .line 129
    .local v0, "rank":I
    invoke-virtual {v1}, Lcom/android/server/pm/ShortcutService;->getMaxActivityShortcuts()I

    move-result v5

    move v9, v5

    .line 130
    .local v9, "maxShortcuts":I
    const/4 v5, 0x0

    .line 134
    .local v5, "numShortcuts":I
    const/4 v6, 0x0

    .line 138
    .local v6, "currentShortcut":Landroid/content/pm/ShortcutInfo;
    const/4 v10, 0x0

    .line 141
    .local v10, "currentShareTarget":Lcom/android/server/pm/ShareTargetInfo;
    const/4 v11, 0x0

    .line 144
    .local v11, "categories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 147
    .local v12, "intents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/Intent;>;"
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    move-object v14, v6

    move v6, v0

    move-object v0, v14

    move-object v14, v11

    move v11, v5

    move-object v5, v10

    move-object/from16 v10, p4

    .line 150
    .end local p4    # "result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    .local v0, "currentShortcut":Landroid/content/pm/ShortcutInfo;
    .local v5, "currentShareTarget":Lcom/android/server/pm/ShareTargetInfo;
    .local v6, "rank":I
    .local v10, "result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    .local v11, "numShortcuts":I
    .local v13, "dataList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/pm/ShareTargetInfo$TargetData;>;"
    .local v14, "categories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :goto_0
    :try_start_2
    invoke-interface {v8}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v15

    move/from16 p4, v15

    move-object/from16 v16, v0

    .end local v0    # "currentShortcut":Landroid/content/pm/ShortcutInfo;
    .local v16, "currentShortcut":Landroid/content/pm/ShortcutInfo;
    .local p4, "type":I
    const/4 v0, 0x1

    if-eq v15, v0, :cond_2a

    const/4 v15, 0x3

    move/from16 v7, p4

    .end local p4    # "type":I
    .local v7, "type":I
    if-ne v7, v15, :cond_2

    .line 151
    invoke-interface {v8}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v17

    if-lez v17, :cond_2b

    goto :goto_1

    .line 347
    .end local v2    # "attrs":Landroid/util/AttributeSet;
    .end local v4    # "activity":Landroid/content/ComponentName;
    .end local v5    # "currentShareTarget":Lcom/android/server/pm/ShareTargetInfo;
    .end local v6    # "rank":I
    .end local v7    # "type":I
    .end local v9    # "maxShortcuts":I
    .end local v11    # "numShortcuts":I
    .end local v12    # "intents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/Intent;>;"
    .end local v13    # "dataList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/pm/ShareTargetInfo$TargetData;>;"
    .end local v14    # "categories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v16    # "currentShortcut":Landroid/content/pm/ShortcutInfo;
    :catchall_0
    move-exception v0

    move-object v2, v8

    goto/16 :goto_c

    .line 152
    .restart local v2    # "attrs":Landroid/util/AttributeSet;
    .restart local v4    # "activity":Landroid/content/ComponentName;
    .restart local v5    # "currentShareTarget":Lcom/android/server/pm/ShareTargetInfo;
    .restart local v6    # "rank":I
    .restart local v7    # "type":I
    .restart local v9    # "maxShortcuts":I
    .restart local v11    # "numShortcuts":I
    .restart local v12    # "intents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/Intent;>;"
    .restart local v13    # "dataList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/pm/ShareTargetInfo$TargetData;>;"
    .restart local v14    # "categories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v16    # "currentShortcut":Landroid/content/pm/ShortcutInfo;
    :cond_2
    :goto_1
    invoke-interface {v8}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v17

    move/from16 p4, v17

    .line 153
    .local p4, "depth":I
    invoke-interface {v8}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v17
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object/from16 v18, v17

    .line 156
    .local v18, "tag":Ljava/lang/String;
    const-string/jumbo v0, "shortcut"

    const-string v1, "ShortcutService"

    if-ne v7, v15, :cond_a

    move/from16 v15, p4

    move-object/from16 v19, v2

    const/4 v2, 0x2

    .end local v2    # "attrs":Landroid/util/AttributeSet;
    .end local p4    # "depth":I
    .local v15, "depth":I
    .local v19, "attrs":Landroid/util/AttributeSet;
    if-ne v15, v2, :cond_9

    move-object/from16 v2, v18

    .end local v18    # "tag":Ljava/lang/String;
    .local v2, "tag":Ljava/lang/String;
    :try_start_3
    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_b

    .line 157
    if-nez v16, :cond_3

    .line 159
    goto/16 :goto_3

    .line 161
    :cond_3
    move-object/from16 p4, v16

    .line 162
    .local p4, "si":Landroid/content/pm/ShortcutInfo;
    const/16 v16, 0x0

    .line 164
    invoke-virtual/range {p4 .. p4}, Landroid/content/pm/ShortcutInfo;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 165
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_5

    .line 166
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Shortcut "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p4 .. p4}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " has no intent. Skipping it."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    goto/16 :goto_3

    .line 347
    .end local v2    # "tag":Ljava/lang/String;
    .end local v4    # "activity":Landroid/content/ComponentName;
    .end local v5    # "currentShareTarget":Lcom/android/server/pm/ShareTargetInfo;
    .end local v6    # "rank":I
    .end local v7    # "type":I
    .end local v9    # "maxShortcuts":I
    .end local v11    # "numShortcuts":I
    .end local v12    # "intents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/Intent;>;"
    .end local v13    # "dataList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/pm/ShareTargetInfo$TargetData;>;"
    .end local v14    # "categories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v15    # "depth":I
    .end local v16    # "currentShortcut":Landroid/content/pm/ShortcutInfo;
    .end local v19    # "attrs":Landroid/util/AttributeSet;
    .end local p4    # "si":Landroid/content/pm/ShortcutInfo;
    :catchall_1
    move-exception v0

    move-object/from16 v1, p0

    move-object v2, v8

    goto/16 :goto_c

    .line 171
    .restart local v2    # "tag":Ljava/lang/String;
    .restart local v4    # "activity":Landroid/content/ComponentName;
    .restart local v5    # "currentShareTarget":Lcom/android/server/pm/ShareTargetInfo;
    .restart local v6    # "rank":I
    .restart local v7    # "type":I
    .restart local v9    # "maxShortcuts":I
    .restart local v11    # "numShortcuts":I
    .restart local v12    # "intents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/Intent;>;"
    .restart local v13    # "dataList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/pm/ShareTargetInfo$TargetData;>;"
    .restart local v14    # "categories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v15    # "depth":I
    .restart local v16    # "currentShortcut":Landroid/content/pm/ShortcutInfo;
    .restart local v19    # "attrs":Landroid/util/AttributeSet;
    .restart local p4    # "si":Landroid/content/pm/ShortcutInfo;
    :cond_4
    invoke-virtual {v12}, Ljava/util/ArrayList;->clear()V

    .line 172
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 175
    :cond_5
    if-lt v11, v9, :cond_6

    .line 176
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "More than "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " shortcuts found for "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    invoke-virtual/range {p1 .. p1}, Landroid/content/pm/ActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ". Skipping the rest."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 176
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 178
    nop

    .line 347
    nop

    .line 348
    invoke-interface {v8}, Landroid/content/res/XmlResourceParser;->close()V

    .line 178
    return-object v10

    .line 182
    :cond_6
    const/4 v0, 0x0

    :try_start_4
    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    const v3, 0x1000c000

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 187
    :try_start_5
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Landroid/content/Intent;

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/content/Intent;
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-object/from16 v3, p4

    .end local p4    # "si":Landroid/content/pm/ShortcutInfo;
    .local v3, "si":Landroid/content/pm/ShortcutInfo;
    :try_start_6
    invoke-virtual {v3, v0}, Landroid/content/pm/ShortcutInfo;->setIntents([Landroid/content/Intent;)V
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 194
    nop

    .line 195
    :try_start_7
    invoke-virtual {v12}, Ljava/util/ArrayList;->clear()V

    .line 197
    if-eqz v14, :cond_7

    .line 198
    invoke-virtual {v3, v14}, Landroid/content/pm/ShortcutInfo;->setCategories(Ljava/util/Set;)V

    .line 199
    const/4 v0, 0x0

    move-object v14, v0

    .line 202
    :cond_7
    if-nez v10, :cond_8

    .line 203
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v10, v0

    .line 205
    :cond_8
    invoke-interface {v10, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 206
    add-int/lit8 v11, v11, 0x1

    .line 207
    add-int/lit8 v6, v6, 0x1

    .line 211
    move-object/from16 v1, p0

    move-object/from16 v7, p1

    move-object/from16 v3, p2

    move-object/from16 v0, v16

    move-object/from16 v2, v19

    goto/16 :goto_0

    .line 188
    :catch_0
    move-exception v0

    goto :goto_2

    .end local v3    # "si":Landroid/content/pm/ShortcutInfo;
    .restart local p4    # "si":Landroid/content/pm/ShortcutInfo;
    :catch_1
    move-exception v0

    move-object/from16 v3, p4

    .end local p4    # "si":Landroid/content/pm/ShortcutInfo;
    .restart local v3    # "si":Landroid/content/pm/ShortcutInfo;
    :goto_2
    nop

    .line 192
    .local v0, "e":Ljava/lang/RuntimeException;
    move-object/from16 p4, v0

    .end local v0    # "e":Ljava/lang/RuntimeException;
    .local p4, "e":Ljava/lang/RuntimeException;
    const-string v0, "Shortcut\'s extras contain un-persistable values. Skipping it."

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 193
    nop

    .line 150
    .end local v2    # "tag":Ljava/lang/String;
    .end local v3    # "si":Landroid/content/pm/ShortcutInfo;
    .end local v7    # "type":I
    .end local v15    # "depth":I
    .end local p4    # "e":Ljava/lang/RuntimeException;
    :goto_3
    move-object/from16 v1, p0

    move-object/from16 v7, p1

    move-object/from16 v3, p2

    move-object/from16 v0, v16

    move-object/from16 v2, v19

    goto/16 :goto_0

    .line 156
    .restart local v7    # "type":I
    .restart local v15    # "depth":I
    .restart local v18    # "tag":Ljava/lang/String;
    :cond_9
    move-object/from16 v2, v18

    .end local v18    # "tag":Ljava/lang/String;
    .restart local v2    # "tag":Ljava/lang/String;
    goto :goto_4

    .end local v15    # "depth":I
    .end local v19    # "attrs":Landroid/util/AttributeSet;
    .local v2, "attrs":Landroid/util/AttributeSet;
    .restart local v18    # "tag":Ljava/lang/String;
    .local p4, "depth":I
    :cond_a
    move/from16 v15, p4

    move-object/from16 v19, v2

    move-object/from16 v2, v18

    .line 215
    .end local v18    # "tag":Ljava/lang/String;
    .end local p4    # "depth":I
    .local v2, "tag":Ljava/lang/String;
    .restart local v15    # "depth":I
    .restart local v19    # "attrs":Landroid/util/AttributeSet;
    :cond_b
    :goto_4
    const-string/jumbo v3, "share-target"

    move-object/from16 p4, v1

    const/4 v1, 0x3

    if-ne v7, v1, :cond_10

    const/4 v1, 0x2

    if-ne v15, v1, :cond_10

    .line 216
    :try_start_8
    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 217
    if-nez v5, :cond_c

    .line 219
    goto :goto_3

    .line 221
    :cond_c
    move-object v1, v5

    .line 222
    .local v1, "sti":Lcom/android/server/pm/ShareTargetInfo;
    const/4 v5, 0x0

    .line 224
    if-eqz v14, :cond_e

    invoke-interface {v14}, Ljava/util/Set;->isEmpty()Z

    move-result v18

    if-nez v18, :cond_e

    invoke-virtual {v13}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v18

    if-eqz v18, :cond_d

    .line 226
    move-object/from16 v1, p5

    move-object/from16 v18, v4

    move-object/from16 v20, v5

    move/from16 v21, v6

    goto :goto_5

    .line 229
    :cond_d
    move-object/from16 v18, v4

    .end local v4    # "activity":Landroid/content/ComponentName;
    .local v18, "activity":Landroid/content/ComponentName;
    new-instance v4, Lcom/android/server/pm/ShareTargetInfo;

    .line 230
    move-object/from16 v20, v5

    .end local v5    # "currentShareTarget":Lcom/android/server/pm/ShareTargetInfo;
    .local v20, "currentShareTarget":Lcom/android/server/pm/ShareTargetInfo;
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v5, v5, [Lcom/android/server/pm/ShareTargetInfo$TargetData;

    invoke-virtual {v13, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Lcom/android/server/pm/ShareTargetInfo$TargetData;

    move/from16 v21, v6

    .end local v6    # "rank":I
    .local v21, "rank":I
    iget-object v6, v1, Lcom/android/server/pm/ShareTargetInfo;->mTargetClass:Ljava/lang/String;

    .line 231
    move-object/from16 v22, v1

    .end local v1    # "sti":Lcom/android/server/pm/ShareTargetInfo;
    .local v22, "sti":Lcom/android/server/pm/ShareTargetInfo;
    invoke-interface {v14}, Ljava/util/Set;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v14, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    invoke-direct {v4, v5, v6, v1}, Lcom/android/server/pm/ShareTargetInfo;-><init>([Lcom/android/server/pm/ShareTargetInfo$TargetData;Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 232
    .local v4, "newShareTarget":Lcom/android/server/pm/ShareTargetInfo;
    move-object/from16 v1, p5

    :try_start_9
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 236
    const/4 v5, 0x0

    .line 237
    .end local v14    # "categories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local v5, "categories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {v13}, Ljava/util/ArrayList;->clear()V

    move-object v14, v5

    goto :goto_7

    .line 347
    .end local v2    # "tag":Ljava/lang/String;
    .end local v4    # "newShareTarget":Lcom/android/server/pm/ShareTargetInfo;
    .end local v5    # "categories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v7    # "type":I
    .end local v9    # "maxShortcuts":I
    .end local v11    # "numShortcuts":I
    .end local v12    # "intents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/Intent;>;"
    .end local v13    # "dataList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/pm/ShareTargetInfo$TargetData;>;"
    .end local v15    # "depth":I
    .end local v16    # "currentShortcut":Landroid/content/pm/ShortcutInfo;
    .end local v18    # "activity":Landroid/content/ComponentName;
    .end local v19    # "attrs":Landroid/util/AttributeSet;
    .end local v20    # "currentShareTarget":Lcom/android/server/pm/ShareTargetInfo;
    .end local v21    # "rank":I
    .end local v22    # "sti":Lcom/android/server/pm/ShareTargetInfo;
    :catchall_2
    move-exception v0

    move-object/from16 v1, p5

    move-object/from16 v1, p0

    move-object v2, v8

    goto/16 :goto_c

    .line 224
    .restart local v1    # "sti":Lcom/android/server/pm/ShareTargetInfo;
    .restart local v2    # "tag":Ljava/lang/String;
    .local v4, "activity":Landroid/content/ComponentName;
    .local v5, "currentShareTarget":Lcom/android/server/pm/ShareTargetInfo;
    .restart local v6    # "rank":I
    .restart local v7    # "type":I
    .restart local v9    # "maxShortcuts":I
    .restart local v11    # "numShortcuts":I
    .restart local v12    # "intents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/Intent;>;"
    .restart local v13    # "dataList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/pm/ShareTargetInfo$TargetData;>;"
    .restart local v14    # "categories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v15    # "depth":I
    .restart local v16    # "currentShortcut":Landroid/content/pm/ShortcutInfo;
    .restart local v19    # "attrs":Landroid/util/AttributeSet;
    :cond_e
    move-object/from16 v22, v1

    move-object/from16 v18, v4

    move-object/from16 v20, v5

    move/from16 v21, v6

    move-object/from16 v1, p5

    .line 150
    .end local v1    # "sti":Lcom/android/server/pm/ShareTargetInfo;
    .end local v2    # "tag":Ljava/lang/String;
    .end local v7    # "type":I
    .end local v15    # "depth":I
    :goto_5
    move-object/from16 v1, p0

    move-object/from16 v7, p1

    move-object/from16 v3, p2

    move-object/from16 v0, v16

    move-object/from16 v4, v18

    move-object/from16 v2, v19

    move-object/from16 v5, v20

    move/from16 v6, v21

    .end local v4    # "activity":Landroid/content/ComponentName;
    .end local v5    # "currentShareTarget":Lcom/android/server/pm/ShareTargetInfo;
    .end local v6    # "rank":I
    .restart local v18    # "activity":Landroid/content/ComponentName;
    .restart local v20    # "currentShareTarget":Lcom/android/server/pm/ShareTargetInfo;
    .restart local v21    # "rank":I
    goto/16 :goto_0

    .line 216
    .end local v18    # "activity":Landroid/content/ComponentName;
    .end local v20    # "currentShareTarget":Lcom/android/server/pm/ShareTargetInfo;
    .end local v21    # "rank":I
    .restart local v2    # "tag":Ljava/lang/String;
    .restart local v4    # "activity":Landroid/content/ComponentName;
    .restart local v5    # "currentShareTarget":Lcom/android/server/pm/ShareTargetInfo;
    .restart local v6    # "rank":I
    .restart local v7    # "type":I
    .restart local v15    # "depth":I
    :cond_f
    move-object/from16 v1, p5

    move-object/from16 v18, v4

    move/from16 v21, v6

    .end local v4    # "activity":Landroid/content/ComponentName;
    .end local v6    # "rank":I
    .restart local v18    # "activity":Landroid/content/ComponentName;
    .restart local v21    # "rank":I
    goto :goto_6

    .line 215
    .end local v18    # "activity":Landroid/content/ComponentName;
    .end local v21    # "rank":I
    .restart local v4    # "activity":Landroid/content/ComponentName;
    .restart local v6    # "rank":I
    :cond_10
    move-object/from16 v1, p5

    move-object/from16 v18, v4

    move/from16 v21, v6

    .line 241
    .end local v4    # "activity":Landroid/content/ComponentName;
    .end local v6    # "rank":I
    .restart local v18    # "activity":Landroid/content/ComponentName;
    .restart local v21    # "rank":I
    :goto_6
    move-object/from16 v20, v5

    .end local v5    # "currentShareTarget":Lcom/android/server/pm/ShareTargetInfo;
    .restart local v20    # "currentShareTarget":Lcom/android/server/pm/ShareTargetInfo;
    :goto_7
    const/4 v4, 0x2

    if-eq v7, v4, :cond_11

    .line 242
    move-object/from16 v1, p0

    move-object/from16 v4, v18

    move-object/from16 v2, v19

    move/from16 v6, v21

    move/from16 v19, v9

    goto/16 :goto_b

    .line 245
    :cond_11
    const/4 v4, 0x1

    if-ne v15, v4, :cond_12

    const-string/jumbo v4, "shortcuts"

    invoke-virtual {v4, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 246
    move-object/from16 v1, p0

    move-object/from16 v4, v18

    move-object/from16 v2, v19

    move/from16 v6, v21

    move/from16 v19, v9

    goto/16 :goto_b

    .line 248
    :cond_12
    const/4 v4, 0x2

    if-ne v15, v4, :cond_17

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    if-eqz v0, :cond_17

    .line 249
    move-object/from16 v1, p0

    move-object/from16 v3, p2

    move/from16 v5, p3

    move-object/from16 v4, v18

    move/from16 v6, v21

    move/from16 v18, v7

    move-object v7, v2

    move-object/from16 v2, v19

    move/from16 v19, v9

    move-object/from16 v9, p4

    .end local v9    # "maxShortcuts":I
    .end local v21    # "rank":I
    .local v2, "attrs":Landroid/util/AttributeSet;
    .restart local v4    # "activity":Landroid/content/ComponentName;
    .restart local v6    # "rank":I
    .local v7, "tag":Ljava/lang/String;
    .local v18, "type":I
    .local v19, "maxShortcuts":I
    :try_start_a
    invoke-static/range {v1 .. v6}, Lcom/android/server/pm/ShortcutParser;->parseShortcutAttributes(Lcom/android/server/pm/ShortcutService;Landroid/util/AttributeSet;Ljava/lang/String;Landroid/content/ComponentName;II)Landroid/content/pm/ShortcutInfo;

    move-result-object v0

    .line 251
    .local v0, "si":Landroid/content/pm/ShortcutInfo;
    if-nez v0, :cond_13

    .line 253
    goto/16 :goto_b

    .line 258
    :cond_13
    if-eqz v10, :cond_16

    .line 259
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v3

    const/16 v17, 0x1

    add-int/lit8 v3, v3, -0x1

    .local v3, "i":I
    :goto_8
    if-ltz v3, :cond_15

    .line 260
    invoke-virtual {v0}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v10, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/content/pm/ShortcutInfo;

    move-object/from16 p4, v0

    .end local v0    # "si":Landroid/content/pm/ShortcutInfo;
    .local p4, "si":Landroid/content/pm/ShortcutInfo;
    invoke-virtual/range {v17 .. v17}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 261
    const-string v0, "Duplicate shortcut ID detected. Skipping it."

    invoke-static {v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    goto/16 :goto_b

    .line 259
    :cond_14
    add-int/lit8 v3, v3, -0x1

    move-object/from16 v0, p4

    goto :goto_8

    .end local p4    # "si":Landroid/content/pm/ShortcutInfo;
    .restart local v0    # "si":Landroid/content/pm/ShortcutInfo;
    :cond_15
    move-object/from16 p4, v0

    .end local v0    # "si":Landroid/content/pm/ShortcutInfo;
    .restart local p4    # "si":Landroid/content/pm/ShortcutInfo;
    goto :goto_9

    .line 258
    .end local v3    # "i":I
    .end local p4    # "si":Landroid/content/pm/ShortcutInfo;
    .restart local v0    # "si":Landroid/content/pm/ShortcutInfo;
    :cond_16
    move-object/from16 p4, v0

    .line 266
    .end local v0    # "si":Landroid/content/pm/ShortcutInfo;
    .restart local p4    # "si":Landroid/content/pm/ShortcutInfo;
    :goto_9
    move-object/from16 v0, p4

    .line 267
    .end local v16    # "currentShortcut":Landroid/content/pm/ShortcutInfo;
    .local v0, "currentShortcut":Landroid/content/pm/ShortcutInfo;
    const/4 v14, 0x0

    .line 268
    move-object/from16 v7, p1

    move-object/from16 v3, p2

    move/from16 v9, v19

    move-object/from16 v5, v20

    goto/16 :goto_0

    .line 248
    .end local v0    # "currentShortcut":Landroid/content/pm/ShortcutInfo;
    .end local v4    # "activity":Landroid/content/ComponentName;
    .end local v6    # "rank":I
    .end local p4    # "si":Landroid/content/pm/ShortcutInfo;
    .local v2, "tag":Ljava/lang/String;
    .local v7, "type":I
    .restart local v9    # "maxShortcuts":I
    .restart local v16    # "currentShortcut":Landroid/content/pm/ShortcutInfo;
    .local v18, "activity":Landroid/content/ComponentName;
    .local v19, "attrs":Landroid/util/AttributeSet;
    .restart local v21    # "rank":I
    :cond_17
    move-object/from16 v1, p0

    move-object/from16 v4, v18

    move/from16 v6, v21

    move/from16 v18, v7

    move-object v7, v2

    move-object/from16 v2, v19

    move/from16 v19, v9

    move-object/from16 v9, p4

    .line 270
    .end local v9    # "maxShortcuts":I
    .end local v21    # "rank":I
    .local v2, "attrs":Landroid/util/AttributeSet;
    .restart local v4    # "activity":Landroid/content/ComponentName;
    .restart local v6    # "rank":I
    .local v7, "tag":Ljava/lang/String;
    .local v18, "type":I
    .local v19, "maxShortcuts":I
    const/4 v0, 0x2

    if-ne v15, v0, :cond_19

    invoke-virtual {v3, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 271
    invoke-static {v1, v2}, Lcom/android/server/pm/ShortcutParser;->parseShareTargetAttributes(Lcom/android/server/pm/ShortcutService;Landroid/util/AttributeSet;)Lcom/android/server/pm/ShareTargetInfo;

    move-result-object v0

    .line 272
    .local v0, "sti":Lcom/android/server/pm/ShareTargetInfo;
    if-nez v0, :cond_18

    .line 274
    goto/16 :goto_b

    .line 276
    :cond_18
    move-object v5, v0

    .line 277
    .end local v20    # "currentShareTarget":Lcom/android/server/pm/ShareTargetInfo;
    .restart local v5    # "currentShareTarget":Lcom/android/server/pm/ShareTargetInfo;
    const/4 v14, 0x0

    .line 278
    invoke-virtual {v13}, Ljava/util/ArrayList;->clear()V

    .line 279
    move-object/from16 v7, p1

    move-object/from16 v3, p2

    move-object/from16 v0, v16

    move/from16 v9, v19

    goto/16 :goto_0

    .line 281
    .end local v0    # "sti":Lcom/android/server/pm/ShareTargetInfo;
    .end local v5    # "currentShareTarget":Lcom/android/server/pm/ShareTargetInfo;
    .restart local v20    # "currentShareTarget":Lcom/android/server/pm/ShareTargetInfo;
    :cond_19
    const/4 v0, 0x3

    if-ne v15, v0, :cond_1d

    const-string/jumbo v0, "intent"

    invoke-virtual {v0, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 282
    if-eqz v16, :cond_1c

    .line 283
    invoke-virtual/range {v16 .. v16}, Landroid/content/pm/ShortcutInfo;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_1a

    goto :goto_a

    .line 288
    :cond_1a
    iget-object v0, v1, Lcom/android/server/pm/ShortcutService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, v8, v2}, Landroid/content/Intent;->parseIntent(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)Landroid/content/Intent;

    move-result-object v0

    .line 290
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 291
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Shortcut intent action must be provided. activity="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v9, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    const/4 v3, 0x0

    .line 293
    .end local v16    # "currentShortcut":Landroid/content/pm/ShortcutInfo;
    .local v3, "currentShortcut":Landroid/content/pm/ShortcutInfo;
    move-object/from16 v7, p1

    move-object v0, v3

    move/from16 v9, v19

    move-object/from16 v5, v20

    move-object/from16 v3, p2

    goto/16 :goto_0

    .line 295
    .end local v3    # "currentShortcut":Landroid/content/pm/ShortcutInfo;
    .restart local v16    # "currentShortcut":Landroid/content/pm/ShortcutInfo;
    :cond_1b
    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 296
    goto/16 :goto_b

    .line 284
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_1c
    :goto_a
    const-string v0, "Ignoring excessive intent tag."

    invoke-static {v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 285
    goto/16 :goto_b

    .line 298
    :cond_1d
    const-string v0, "Empty category found. activity="

    const/4 v3, 0x3

    if-ne v15, v3, :cond_21

    :try_start_b
    const-string v3, "categories"

    invoke-virtual {v3, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_21

    .line 299
    if-eqz v16, :cond_29

    .line 300
    invoke-virtual/range {v16 .. v16}, Landroid/content/pm/ShortcutInfo;->getCategories()Ljava/util/Set;

    move-result-object v3

    if-eqz v3, :cond_1e

    .line 301
    goto/16 :goto_b

    .line 303
    :cond_1e
    invoke-static {v1, v2}, Lcom/android/server/pm/ShortcutParser;->parseCategories(Lcom/android/server/pm/ShortcutService;Landroid/util/AttributeSet;)Ljava/lang/String;

    move-result-object v3

    .line 304
    .local v3, "name":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1f

    .line 305
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    goto/16 :goto_b

    .line 309
    :cond_1f
    if-nez v14, :cond_20

    .line 310
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    move-object v14, v0

    .line 312
    :cond_20
    invoke-interface {v14, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 313
    move-object/from16 v7, p1

    move-object/from16 v3, p2

    move-object/from16 v0, v16

    move/from16 v9, v19

    move-object/from16 v5, v20

    goto/16 :goto_0

    .line 315
    .end local v3    # "name":Ljava/lang/String;
    :cond_21
    const/4 v3, 0x3

    if-ne v15, v3, :cond_25

    const-string v3, "category"

    invoke-virtual {v3, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_25

    .line 316
    if-nez v20, :cond_22

    .line 317
    goto/16 :goto_b

    .line 319
    :cond_22
    invoke-static {v1, v2}, Lcom/android/server/pm/ShortcutParser;->parseCategory(Lcom/android/server/pm/ShortcutService;Landroid/util/AttributeSet;)Ljava/lang/String;

    move-result-object v3

    .line 320
    .restart local v3    # "name":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_23

    .line 321
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    goto :goto_b

    .line 325
    :cond_23
    if-nez v14, :cond_24

    .line 326
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    move-object v14, v0

    .line 328
    :cond_24
    invoke-interface {v14, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 329
    move-object/from16 v7, p1

    move-object/from16 v3, p2

    move-object/from16 v0, v16

    move/from16 v9, v19

    move-object/from16 v5, v20

    goto/16 :goto_0

    .line 331
    .end local v3    # "name":Ljava/lang/String;
    :cond_25
    const/4 v3, 0x3

    if-ne v15, v3, :cond_28

    const-string v0, "data"

    invoke-virtual {v0, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 332
    if-nez v20, :cond_26

    .line 333
    goto :goto_b

    .line 335
    :cond_26
    invoke-static {v1, v2}, Lcom/android/server/pm/ShortcutParser;->parseShareTargetData(Lcom/android/server/pm/ShortcutService;Landroid/util/AttributeSet;)Lcom/android/server/pm/ShareTargetInfo$TargetData;

    move-result-object v0

    .line 336
    .local v0, "data":Lcom/android/server/pm/ShareTargetInfo$TargetData;
    if-nez v0, :cond_27

    .line 337
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid data tag found. activity="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v9, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    goto :goto_b

    .line 340
    :cond_27
    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 341
    goto :goto_b

    .line 344
    .end local v0    # "data":Lcom/android/server/pm/ShareTargetInfo$TargetData;
    :cond_28
    const-string v0, "Invalid tag \'%s\' found at depth %d"

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v7, v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 345
    nop

    .line 150
    .end local v2    # "attrs":Landroid/util/AttributeSet;
    .end local v4    # "activity":Landroid/content/ComponentName;
    .end local v6    # "rank":I
    .end local v7    # "tag":Ljava/lang/String;
    .end local v15    # "depth":I
    .restart local v9    # "maxShortcuts":I
    .local v18, "activity":Landroid/content/ComponentName;
    .local v19, "attrs":Landroid/util/AttributeSet;
    .restart local v21    # "rank":I
    :cond_29
    :goto_b
    move-object/from16 v7, p1

    move-object/from16 v3, p2

    move-object/from16 v0, v16

    move/from16 v9, v19

    move-object/from16 v5, v20

    .end local v9    # "maxShortcuts":I
    .end local v18    # "activity":Landroid/content/ComponentName;
    .end local v21    # "rank":I
    .restart local v2    # "attrs":Landroid/util/AttributeSet;
    .restart local v4    # "activity":Landroid/content/ComponentName;
    .restart local v6    # "rank":I
    .local v19, "maxShortcuts":I
    goto/16 :goto_0

    .end local v19    # "maxShortcuts":I
    .end local v20    # "currentShareTarget":Lcom/android/server/pm/ShareTargetInfo;
    .restart local v5    # "currentShareTarget":Lcom/android/server/pm/ShareTargetInfo;
    .restart local v9    # "maxShortcuts":I
    .local p4, "type":I
    :cond_2a
    move/from16 v18, p4

    move/from16 v19, v9

    .line 347
    .end local v2    # "attrs":Landroid/util/AttributeSet;
    .end local v4    # "activity":Landroid/content/ComponentName;
    .end local v5    # "currentShareTarget":Lcom/android/server/pm/ShareTargetInfo;
    .end local v6    # "rank":I
    .end local v9    # "maxShortcuts":I
    .end local v11    # "numShortcuts":I
    .end local v12    # "intents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/Intent;>;"
    .end local v13    # "dataList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/pm/ShareTargetInfo$TargetData;>;"
    .end local v14    # "categories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v16    # "currentShortcut":Landroid/content/pm/ShortcutInfo;
    .end local p4    # "type":I
    :cond_2b
    nop

    .line 348
    invoke-interface {v8}, Landroid/content/res/XmlResourceParser;->close()V

    .line 351
    return-object v10

    .line 347
    .end local v10    # "result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    .local p4, "result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    :catchall_3
    move-exception v0

    move-object/from16 v10, p4

    move-object v2, v8

    goto :goto_c

    .end local v8    # "parser":Landroid/content/res/XmlResourceParser;
    .local v2, "parser":Landroid/content/res/XmlResourceParser;
    :catchall_4
    move-exception v0

    move-object/from16 v10, p4

    .end local p4    # "result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    .restart local v10    # "result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    :goto_c
    if-eqz v2, :cond_2c

    .line 348
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->close()V

    .line 350
    :cond_2c
    throw v0
.end method
