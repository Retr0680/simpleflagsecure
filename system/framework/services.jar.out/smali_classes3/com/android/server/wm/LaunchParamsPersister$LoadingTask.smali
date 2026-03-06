.class Lcom/android/server/wm/LaunchParamsPersister$LoadingTask;
.super Ljava/lang/Object;
.source "LaunchParamsPersister.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/LaunchParamsPersister;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadingTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Landroid/util/ArrayMap<",
        "Landroid/content/ComponentName;",
        "Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final mFutureTask:Ljava/util/concurrent/FutureTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/FutureTask<",
            "Landroid/util/ArrayMap<",
            "Landroid/content/ComponentName;",
            "Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mUserId:I

.field final synthetic this$0:Lcom/android/server/wm/LaunchParamsPersister;


# direct methods
.method static bridge synthetic -$$Nest$mexecute(Lcom/android/server/wm/LaunchParamsPersister$LoadingTask;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/wm/LaunchParamsPersister$LoadingTask;->execute()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mget(Lcom/android/server/wm/LaunchParamsPersister$LoadingTask;)Landroid/util/ArrayMap;
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/wm/LaunchParamsPersister$LoadingTask;->get()Landroid/util/ArrayMap;

    move-result-object p0

    return-object p0
.end method

.method private constructor <init>(Lcom/android/server/wm/LaunchParamsPersister;I)V
    .locals 0
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 334
    iput-object p1, p0, Lcom/android/server/wm/LaunchParamsPersister$LoadingTask;->this$0:Lcom/android/server/wm/LaunchParamsPersister;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 335
    iput p2, p0, Lcom/android/server/wm/LaunchParamsPersister$LoadingTask;->mUserId:I

    .line 336
    new-instance p1, Ljava/util/concurrent/FutureTask;

    invoke-direct {p1, p0}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    iput-object p1, p0, Lcom/android/server/wm/LaunchParamsPersister$LoadingTask;->mFutureTask:Ljava/util/concurrent/FutureTask;

    .line 337
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/wm/LaunchParamsPersister;ILcom/android/server/wm/LaunchParamsPersister-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/LaunchParamsPersister$LoadingTask;-><init>(Lcom/android/server/wm/LaunchParamsPersister;I)V

    return-void
.end method

.method private execute()V
    .locals 2

    .line 340
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/android/server/wm/LaunchParamsPersister$LoadingTask;->mFutureTask:Ljava/util/concurrent/FutureTask;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 341
    return-void
.end method

.method private get()Landroid/util/ArrayMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap<",
            "Landroid/content/ComponentName;",
            "Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;",
            ">;"
        }
    .end annotation

    .line 345
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/LaunchParamsPersister$LoadingTask;->mFutureTask:Ljava/util/concurrent/FutureTask;

    invoke-virtual {v0}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 348
    :catch_0
    move-exception v0

    goto :goto_0

    .line 346
    :catch_1
    move-exception v0

    goto :goto_1

    .line 348
    :goto_0
    nop

    .line 349
    .local v0, "e":Ljava/util/concurrent/ExecutionException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to load launch params for user#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/wm/LaunchParamsPersister$LoadingTask;->mUserId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "LaunchParamsPersister"

    invoke-static {v2, v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 350
    const/4 v1, 0x0

    return-object v1

    .line 346
    .end local v0    # "e":Ljava/util/concurrent/ExecutionException;
    :goto_1
    nop

    .line 347
    .local v0, "e":Ljava/lang/InterruptedException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public call()Landroid/util/ArrayMap;
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap<",
            "Landroid/content/ComponentName;",
            "Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;",
            ">;"
        }
    .end annotation

    .line 356
    move-object/from16 v1, p0

    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 358
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v0

    .line 359
    .local v2, "filesToDelete":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    iget-object v0, v1, Lcom/android/server/wm/LaunchParamsPersister$LoadingTask;->this$0:Lcom/android/server/wm/LaunchParamsPersister;

    iget v3, v1, Lcom/android/server/wm/LaunchParamsPersister$LoadingTask;->mUserId:I

    invoke-static {v0, v3}, Lcom/android/server/wm/LaunchParamsPersister;->-$$Nest$mgetLaunchParamFolder(Lcom/android/server/wm/LaunchParamsPersister;I)Ljava/io/File;

    move-result-object v3

    .line 360
    .local v3, "launchParamsFolder":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v0

    const/4 v4, 0x0

    const-string v5, "LaunchParamsPersister"

    if-nez v0, :cond_0

    .line 361
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Didn\'t find launch param folder for user "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v1, Lcom/android/server/wm/LaunchParamsPersister$LoadingTask;->mUserId:I

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    return-object v4

    .line 365
    :cond_0
    new-instance v0, Landroid/util/ArraySet;

    iget-object v6, v1, Lcom/android/server/wm/LaunchParamsPersister$LoadingTask;->this$0:Lcom/android/server/wm/LaunchParamsPersister;

    invoke-static {v6}, Lcom/android/server/wm/LaunchParamsPersister;->-$$Nest$fgetmPackageList(Lcom/android/server/wm/LaunchParamsPersister;)Lcom/android/server/pm/PackageList;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/pm/PackageList;->getPackageNames()Ljava/util/List;

    move-result-object v6

    invoke-direct {v0, v6}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    move-object v6, v0

    .line 367
    .local v6, "packages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v7

    .line 368
    .local v7, "paramsFiles":[Ljava/io/File;
    new-instance v0, Landroid/util/ArrayMap;

    array-length v8, v7

    invoke-direct {v0, v8}, Landroid/util/ArrayMap;-><init>(I)V

    move-object v8, v0

    .line 371
    .local v8, "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/ComponentName;Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;>;"
    array-length v9, v7

    const/4 v11, 0x0

    :goto_0
    if-ge v11, v9, :cond_c

    aget-object v12, v7, v11

    .line 372
    .local v12, "paramsFile":Ljava/io/File;
    invoke-virtual {v12}, Ljava/io/File;->isFile()Z

    move-result v13

    if-nez v13, :cond_1

    .line 373
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, " is not a file."

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    move-object/from16 v16, v3

    move-object/from16 v19, v6

    move-object/from16 v20, v7

    goto/16 :goto_7

    .line 376
    :cond_1
    invoke-virtual {v12}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v13

    const-string v14, ".xml"

    invoke-virtual {v13, v14}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_2

    .line 377
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Unexpected params file name: "

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    invoke-interface {v2, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 379
    move-object/from16 v16, v3

    move-object/from16 v19, v6

    move-object/from16 v20, v7

    goto/16 :goto_7

    .line 381
    :cond_2
    invoke-virtual {v12}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v13

    .line 383
    .local v13, "paramsFileName":Ljava/lang/String;
    nop

    .line 384
    const/16 v15, 0x5f

    invoke-virtual {v13, v15}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 385
    .local v4, "oldSeparatorIndex":I
    const/4 v10, -0x1

    if-eq v4, v10, :cond_5

    .line 386
    add-int/lit8 v0, v4, 0x1

    invoke-virtual {v13, v15, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    if-eq v0, v10, :cond_3

    .line 391
    invoke-interface {v2, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 392
    move-object/from16 v16, v3

    move-object/from16 v19, v6

    move-object/from16 v20, v7

    goto/16 :goto_7

    .line 394
    :cond_3
    const/16 v0, 0x2d

    invoke-virtual {v13, v15, v0}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v13

    .line 396
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v3, v13}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 397
    .local v0, "newFile":Ljava/io/File;
    invoke-virtual {v12, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 398
    move-object v12, v0

    goto :goto_1

    .line 402
    :cond_4
    invoke-interface {v2, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 403
    move-object/from16 v16, v3

    move-object/from16 v19, v6

    move-object/from16 v20, v7

    goto/16 :goto_7

    .line 406
    .end local v0    # "newFile":Ljava/io/File;
    :cond_5
    :goto_1
    nop

    .line 408
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v10

    sub-int/2addr v0, v10

    .line 406
    const/4 v10, 0x0

    invoke-virtual {v13, v10, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 409
    const/16 v14, 0x2f

    const/16 v15, 0x2d

    invoke-virtual {v0, v15, v14}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v14

    .line 410
    .local v14, "componentNameString":Ljava/lang/String;
    invoke-static {v14}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v15

    .line 412
    .local v15, "name":Landroid/content/ComponentName;
    if-nez v15, :cond_6

    .line 413
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unexpected file name: "

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    invoke-interface {v2, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 415
    move-object/from16 v16, v3

    move-object/from16 v19, v6

    move-object/from16 v20, v7

    goto/16 :goto_7

    .line 418
    :cond_6
    invoke-virtual {v15}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 421
    invoke-interface {v2, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 422
    move-object/from16 v16, v3

    move-object/from16 v19, v6

    move-object/from16 v20, v7

    goto/16 :goto_7

    .line 425
    :cond_7
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, v12}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-object v10, v0

    .line 426
    .local v10, "in":Ljava/io/InputStream;
    :try_start_1
    new-instance v0, Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    move-object/from16 v16, v3

    const/4 v3, 0x0

    .end local v3    # "launchParamsFolder":Ljava/io/File;
    .local v16, "launchParamsFolder":Ljava/io/File;
    :try_start_2
    invoke-direct {v0, v3}, Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;-><init>(Lcom/android/server/wm/LaunchParamsPersister-IA;)V

    .line 427
    .local v0, "params":Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;
    invoke-static {v10}, Landroid/util/Xml;->resolvePullParser(Ljava/io/InputStream;)Lcom/android/modules/utils/TypedXmlPullParser;

    move-result-object v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 429
    .local v3, "parser":Lcom/android/modules/utils/TypedXmlPullParser;
    :goto_2
    move/from16 v17, v4

    .end local v4    # "oldSeparatorIndex":I
    .local v17, "oldSeparatorIndex":I
    :try_start_3
    invoke-interface {v3}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move/from16 v18, v4

    move-object/from16 v19, v6

    const/4 v6, 0x1

    .end local v6    # "packages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local v18, "event":I
    .local v19, "packages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eq v4, v6, :cond_b

    const/4 v4, 0x3

    move/from16 v6, v18

    .end local v18    # "event":I
    .local v6, "event":I
    if-eq v6, v4, :cond_a

    .line 431
    const/4 v4, 0x2

    if-eq v6, v4, :cond_8

    .line 432
    move/from16 v4, v17

    move-object/from16 v6, v19

    goto :goto_2

    .line 435
    :cond_8
    :try_start_4
    invoke-interface {v3}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 436
    .local v4, "tagName":Ljava/lang/String;
    move/from16 v18, v6

    .end local v6    # "event":I
    .restart local v18    # "event":I
    const-string v6, "launch_params"

    invoke-virtual {v6, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_9

    .line 437
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-object/from16 v20, v7

    .end local v7    # "paramsFiles":[Ljava/io/File;
    .local v20, "paramsFiles":[Ljava/io/File;
    :try_start_5
    const-string v7, "Unexpected tag name: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    move/from16 v4, v17

    move-object/from16 v6, v19

    move-object/from16 v7, v20

    goto :goto_2

    .line 425
    .end local v0    # "params":Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;
    .end local v3    # "parser":Lcom/android/modules/utils/TypedXmlPullParser;
    .end local v4    # "tagName":Ljava/lang/String;
    .end local v18    # "event":I
    :catchall_0
    move-exception v0

    move-object v3, v0

    goto :goto_4

    .end local v20    # "paramsFiles":[Ljava/io/File;
    .restart local v7    # "paramsFiles":[Ljava/io/File;
    :catchall_1
    move-exception v0

    move-object/from16 v20, v7

    move-object v3, v0

    .end local v7    # "paramsFiles":[Ljava/io/File;
    .restart local v20    # "paramsFiles":[Ljava/io/File;
    goto :goto_4

    .line 441
    .end local v20    # "paramsFiles":[Ljava/io/File;
    .restart local v0    # "params":Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;
    .restart local v3    # "parser":Lcom/android/modules/utils/TypedXmlPullParser;
    .restart local v4    # "tagName":Ljava/lang/String;
    .restart local v7    # "paramsFiles":[Ljava/io/File;
    .restart local v18    # "event":I
    :cond_9
    move-object/from16 v20, v7

    .end local v7    # "paramsFiles":[Ljava/io/File;
    .restart local v20    # "paramsFiles":[Ljava/io/File;
    invoke-virtual {v0, v12, v3}, Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;->restore(Ljava/io/File;Lcom/android/modules/utils/TypedXmlPullParser;)V

    .line 442
    .end local v4    # "tagName":Ljava/lang/String;
    move/from16 v4, v17

    move-object/from16 v6, v19

    move-object/from16 v7, v20

    goto :goto_2

    .line 429
    .end local v18    # "event":I
    .end local v20    # "paramsFiles":[Ljava/io/File;
    .restart local v6    # "event":I
    .restart local v7    # "paramsFiles":[Ljava/io/File;
    :cond_a
    move/from16 v18, v6

    move-object/from16 v20, v7

    .end local v6    # "event":I
    .end local v7    # "paramsFiles":[Ljava/io/File;
    .restart local v18    # "event":I
    .restart local v20    # "paramsFiles":[Ljava/io/File;
    goto :goto_3

    .end local v20    # "paramsFiles":[Ljava/io/File;
    .restart local v7    # "paramsFiles":[Ljava/io/File;
    :cond_b
    move-object/from16 v20, v7

    .line 444
    .end local v7    # "paramsFiles":[Ljava/io/File;
    .restart local v20    # "paramsFiles":[Ljava/io/File;
    :goto_3
    invoke-virtual {v8, v15, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 445
    iget-object v4, v1, Lcom/android/server/wm/LaunchParamsPersister$LoadingTask;->this$0:Lcom/android/server/wm/LaunchParamsPersister;

    iget-object v6, v0, Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;->mWindowLayoutAffinity:Ljava/lang/String;

    invoke-static {v4, v15, v6}, Lcom/android/server/wm/LaunchParamsPersister;->-$$Nest$maddComponentNameToLaunchParamAffinityMapIfNotNull(Lcom/android/server/wm/LaunchParamsPersister;Landroid/content/ComponentName;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 447
    .end local v0    # "params":Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;
    .end local v3    # "parser":Lcom/android/modules/utils/TypedXmlPullParser;
    .end local v18    # "event":I
    :try_start_6
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    .line 450
    .end local v10    # "in":Ljava/io/InputStream;
    goto :goto_7

    .line 447
    :catch_0
    move-exception v0

    goto :goto_6

    .line 425
    .end local v19    # "packages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v20    # "paramsFiles":[Ljava/io/File;
    .local v6, "packages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v7    # "paramsFiles":[Ljava/io/File;
    .restart local v10    # "in":Ljava/io/InputStream;
    :catchall_2
    move-exception v0

    move-object/from16 v19, v6

    move-object/from16 v20, v7

    move-object v3, v0

    .end local v6    # "packages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v7    # "paramsFiles":[Ljava/io/File;
    .restart local v19    # "packages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v20    # "paramsFiles":[Ljava/io/File;
    goto :goto_4

    .end local v17    # "oldSeparatorIndex":I
    .end local v19    # "packages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v20    # "paramsFiles":[Ljava/io/File;
    .local v4, "oldSeparatorIndex":I
    .restart local v6    # "packages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v7    # "paramsFiles":[Ljava/io/File;
    :catchall_3
    move-exception v0

    move/from16 v17, v4

    move-object/from16 v19, v6

    move-object/from16 v20, v7

    move-object v3, v0

    .end local v4    # "oldSeparatorIndex":I
    .end local v6    # "packages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v7    # "paramsFiles":[Ljava/io/File;
    .restart local v17    # "oldSeparatorIndex":I
    .restart local v19    # "packages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v20    # "paramsFiles":[Ljava/io/File;
    goto :goto_4

    .end local v16    # "launchParamsFolder":Ljava/io/File;
    .end local v17    # "oldSeparatorIndex":I
    .end local v19    # "packages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v20    # "paramsFiles":[Ljava/io/File;
    .local v3, "launchParamsFolder":Ljava/io/File;
    .restart local v4    # "oldSeparatorIndex":I
    .restart local v6    # "packages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v7    # "paramsFiles":[Ljava/io/File;
    :catchall_4
    move-exception v0

    move-object/from16 v16, v3

    move/from16 v17, v4

    move-object/from16 v19, v6

    move-object/from16 v20, v7

    move-object v3, v0

    .end local v3    # "launchParamsFolder":Ljava/io/File;
    .end local v4    # "oldSeparatorIndex":I
    .end local v6    # "packages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v7    # "paramsFiles":[Ljava/io/File;
    .restart local v16    # "launchParamsFolder":Ljava/io/File;
    .restart local v17    # "oldSeparatorIndex":I
    .restart local v19    # "packages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v20    # "paramsFiles":[Ljava/io/File;
    :goto_4
    :try_start_7
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    goto :goto_5

    :catchall_5
    move-exception v0

    :try_start_8
    invoke-virtual {v3, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v2    # "filesToDelete":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    .end local v8    # "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/ComponentName;Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;>;"
    .end local v12    # "paramsFile":Ljava/io/File;
    .end local v13    # "paramsFileName":Ljava/lang/String;
    .end local v14    # "componentNameString":Ljava/lang/String;
    .end local v15    # "name":Landroid/content/ComponentName;
    .end local v16    # "launchParamsFolder":Ljava/io/File;
    .end local v17    # "oldSeparatorIndex":I
    .end local v19    # "packages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v20    # "paramsFiles":[Ljava/io/File;
    .end local p0    # "this":Lcom/android/server/wm/LaunchParamsPersister$LoadingTask;
    :goto_5
    throw v3
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    .line 447
    .end local v10    # "in":Ljava/io/InputStream;
    .restart local v2    # "filesToDelete":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    .restart local v3    # "launchParamsFolder":Ljava/io/File;
    .restart local v4    # "oldSeparatorIndex":I
    .restart local v6    # "packages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v7    # "paramsFiles":[Ljava/io/File;
    .restart local v8    # "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/ComponentName;Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;>;"
    .restart local v12    # "paramsFile":Ljava/io/File;
    .restart local v13    # "paramsFileName":Ljava/lang/String;
    .restart local v14    # "componentNameString":Ljava/lang/String;
    .restart local v15    # "name":Landroid/content/ComponentName;
    .restart local p0    # "this":Lcom/android/server/wm/LaunchParamsPersister$LoadingTask;
    :catch_1
    move-exception v0

    move-object/from16 v16, v3

    move/from16 v17, v4

    move-object/from16 v19, v6

    move-object/from16 v20, v7

    .end local v3    # "launchParamsFolder":Ljava/io/File;
    .end local v4    # "oldSeparatorIndex":I
    .end local v6    # "packages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v7    # "paramsFiles":[Ljava/io/File;
    .restart local v16    # "launchParamsFolder":Ljava/io/File;
    .restart local v17    # "oldSeparatorIndex":I
    .restart local v19    # "packages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v20    # "paramsFiles":[Ljava/io/File;
    :goto_6
    nop

    .line 448
    .local v0, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to restore launch params for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 449
    invoke-interface {v2, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 371
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v12    # "paramsFile":Ljava/io/File;
    .end local v13    # "paramsFileName":Ljava/lang/String;
    .end local v14    # "componentNameString":Ljava/lang/String;
    .end local v15    # "name":Landroid/content/ComponentName;
    .end local v17    # "oldSeparatorIndex":I
    :goto_7
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v3, v16

    move-object/from16 v6, v19

    move-object/from16 v7, v20

    const/4 v4, 0x0

    goto/16 :goto_0

    .line 453
    .end local v16    # "launchParamsFolder":Ljava/io/File;
    .end local v19    # "packages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v20    # "paramsFiles":[Ljava/io/File;
    .restart local v3    # "launchParamsFolder":Ljava/io/File;
    .restart local v6    # "packages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v7    # "paramsFiles":[Ljava/io/File;
    :cond_c
    move-object/from16 v16, v3

    move-object/from16 v19, v6

    move-object/from16 v20, v7

    .end local v3    # "launchParamsFolder":Ljava/io/File;
    .end local v6    # "packages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v7    # "paramsFiles":[Ljava/io/File;
    .restart local v16    # "launchParamsFolder":Ljava/io/File;
    .restart local v19    # "packages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v20    # "paramsFiles":[Ljava/io/File;
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_d

    .line 454
    iget-object v0, v1, Lcom/android/server/wm/LaunchParamsPersister$LoadingTask;->this$0:Lcom/android/server/wm/LaunchParamsPersister;

    invoke-static {v0}, Lcom/android/server/wm/LaunchParamsPersister;->-$$Nest$fgetmPersisterQueue(Lcom/android/server/wm/LaunchParamsPersister;)Lcom/android/server/wm/PersisterQueue;

    move-result-object v0

    new-instance v3, Lcom/android/server/wm/LaunchParamsPersister$CleanUpComponentQueueItem;

    const/4 v4, 0x0

    invoke-direct {v3, v2, v4}, Lcom/android/server/wm/LaunchParamsPersister$CleanUpComponentQueueItem;-><init>(Ljava/util/List;Lcom/android/server/wm/LaunchParamsPersister-IA;)V

    const/4 v6, 0x1

    invoke-virtual {v0, v3, v6}, Lcom/android/server/wm/PersisterQueue;->addItem(Lcom/android/server/wm/PersisterQueue$WriteQueueItem;Z)V

    .line 456
    :cond_d
    return-object v8
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 329
    invoke-virtual {p0}, Lcom/android/server/wm/LaunchParamsPersister$LoadingTask;->call()Landroid/util/ArrayMap;

    move-result-object v0

    return-object v0
.end method
