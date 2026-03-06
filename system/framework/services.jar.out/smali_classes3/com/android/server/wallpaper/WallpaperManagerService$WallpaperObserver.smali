.class Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;
.super Landroid/os/FileObserver;
.source "WallpaperManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wallpaper/WallpaperManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WallpaperObserver"
.end annotation


# instance fields
.field final mUserId:I

.field final mWallpaper:Lcom/android/server/wallpaper/WallpaperData;

.field final mWallpaperDir:Ljava/io/File;

.field final mWallpaperFile:Ljava/io/File;

.field final mWallpaperLockFile:Ljava/io/File;

.field final synthetic this$0:Lcom/android/server/wallpaper/WallpaperManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/wallpaper/WallpaperManagerService;Lcom/android/server/wallpaper/WallpaperData;)V
    .locals 3
    .param p1, "this$0"    # Lcom/android/server/wallpaper/WallpaperManagerService;
    .param p2, "wallpaper"    # Lcom/android/server/wallpaper/WallpaperData;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 267
    iput-object p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    .line 268
    iget v0, p2, Lcom/android/server/wallpaper/WallpaperData;->userId:I

    invoke-static {v0}, Lcom/android/server/wallpaper/WallpaperUtils;->getWallpaperDir(I)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x688

    invoke-direct {p0, v0, v1}, Landroid/os/FileObserver;-><init>(Ljava/lang/String;I)V

    .line 270
    iget v0, p2, Lcom/android/server/wallpaper/WallpaperData;->userId:I

    iput v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->mUserId:I

    .line 271
    iget v0, p2, Lcom/android/server/wallpaper/WallpaperData;->userId:I

    invoke-static {v0}, Lcom/android/server/wallpaper/WallpaperUtils;->getWallpaperDir(I)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->mWallpaperDir:Ljava/io/File;

    .line 272
    iput-object p2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->mWallpaper:Lcom/android/server/wallpaper/WallpaperData;

    .line 273
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->mWallpaperDir:Ljava/io/File;

    const-string v2, "wallpaper_orig"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->mWallpaperFile:Ljava/io/File;

    .line 274
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->mWallpaperDir:Ljava/io/File;

    const-string v2, "wallpaper_lock_orig"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->mWallpaperLockFile:Ljava/io/File;

    .line 275
    return-void
.end method

.method private updateWallpapers(ILjava/lang/String;)V
    .locals 20
    .param p1, "event"    # I
    .param p2, "path"    # Ljava/lang/String;

    .line 296
    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v3, p2

    new-instance v0, Ljava/io/File;

    iget-object v4, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->mWallpaperDir:Ljava/io/File;

    invoke-direct {v0, v4, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v4, v0

    .line 297
    .local v4, "changedFile":Ljava/io/File;
    iget-object v0, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->mWallpaperFile:Ljava/io/File;

    invoke-virtual {v0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 298
    .local v5, "sysWallpaperChanged":Z
    iget-object v0, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->mWallpaperLockFile:Ljava/io/File;

    invoke-virtual {v0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 299
    .local v6, "lockWallpaperChanged":Z
    invoke-virtual {v1, v6}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->dataForEvent(Z)Lcom/android/server/wallpaper/WallpaperData;

    move-result-object v11

    .line 301
    .local v11, "wallpaper":Lcom/android/server/wallpaper/WallpaperData;
    const/16 v0, 0x80

    if-ne v2, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move v13, v0

    .line 302
    .local v13, "moved":Z
    const/16 v0, 0x8

    if-eq v2, v0, :cond_1

    if-eqz v13, :cond_2

    :cond_1
    goto :goto_1

    :cond_2
    const/4 v9, 0x0

    goto :goto_2

    :goto_1
    const/4 v9, 0x1

    :goto_2
    move v14, v9

    .line 303
    .local v14, "written":Z
    if-eqz v13, :cond_3

    if-eqz v6, :cond_3

    const/4 v9, 0x1

    goto :goto_3

    :cond_3
    const/4 v9, 0x0

    :goto_3
    move v15, v9

    .line 304
    .local v15, "isMigration":Z
    if-eqz v13, :cond_4

    if-nez v15, :cond_4

    const/4 v9, 0x1

    goto :goto_4

    :cond_4
    const/4 v9, 0x0

    .line 305
    .local v9, "isRestore":Z
    :goto_4
    iget v10, v11, Lcom/android/server/wallpaper/WallpaperData;->mWhich:I

    const/4 v12, 0x2

    and-int/2addr v10, v12

    if-eqz v10, :cond_5

    const/4 v10, 0x1

    goto :goto_5

    :cond_5
    const/4 v10, 0x0

    .line 306
    .local v10, "isAppliedToLock":Z
    :goto_5
    invoke-virtual {v11}, Lcom/android/server/wallpaper/WallpaperData;->getComponent()Landroid/content/ComponentName;

    move-result-object v16

    if-eqz v16, :cond_6

    if-ne v2, v0, :cond_6

    iget-boolean v0, v11, Lcom/android/server/wallpaper/WallpaperData;->imageWallpaperPending:Z

    if-eqz v0, :cond_7

    :cond_6
    goto :goto_6

    :cond_7
    const/4 v0, 0x0

    goto :goto_7

    :goto_6
    const/4 v0, 0x1

    :goto_7
    move/from16 v16, v0

    .line 310
    .local v16, "needsUpdate":Z
    if-eqz v15, :cond_8

    .line 313
    return-void

    .line 315
    :cond_8
    if-nez v5, :cond_9

    if-nez v6, :cond_9

    .line 316
    return-void

    .line 319
    :cond_9
    invoke-static {}, Lcom/android/server/wallpaper/WallpaperManagerService;->-$$Nest$sfgetDEBUG()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 320
    const-string v0, "WallpaperManagerService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Wallpaper file change: evt="

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " path="

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " sys="

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, " lock="

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, " imagePending="

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v7, v11, Lcom/android/server/wallpaper/WallpaperData;->imageWallpaperPending:Z

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, " mWhich=0x"

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v11, Lcom/android/server/wallpaper/WallpaperData;->mWhich:I

    .line 325
    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " written="

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, " isMigration="

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, " isRestore="

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, " isAppliedToLock="

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, " needsUpdate="

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v7, v16

    .end local v16    # "needsUpdate":Z
    .local v7, "needsUpdate":Z
    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 320
    invoke-static {v0, v12}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 319
    .end local v7    # "needsUpdate":Z
    .restart local v16    # "needsUpdate":Z
    :cond_a
    move/from16 v7, v16

    .line 333
    .end local v16    # "needsUpdate":Z
    .restart local v7    # "needsUpdate":Z
    :goto_8
    iget-object v0, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-static {v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->-$$Nest$fgetmLock(Lcom/android/server/wallpaper/WallpaperManagerService;)Ljava/lang/Object;

    move-result-object v16

    monitor-enter v16

    .line 334
    :try_start_0
    iget-object v0, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-static {v0, v11}, Lcom/android/server/wallpaper/WallpaperManagerService;->-$$Nest$mnotifyCallbacksLocked(Lcom/android/server/wallpaper/WallpaperManagerService;Lcom/android/server/wallpaper/WallpaperData;)V

    .line 336
    if-eqz v14, :cond_18

    if-nez v7, :cond_b

    move v2, v7

    move/from16 v17, v9

    move/from16 v18, v10

    goto/16 :goto_d

    .line 340
    :cond_b
    invoke-static {}, Lcom/android/server/wallpaper/WallpaperManagerService;->-$$Nest$sfgetDEBUG()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    if-eqz v0, :cond_c

    .line 341
    :try_start_1
    const-string v0, "WallpaperManagerService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Setting new static wallpaper: which="

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v11, Lcom/android/server/wallpaper/WallpaperData;->mWhich:I

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_9

    .line 427
    :catchall_0
    move-exception v0

    move v2, v7

    move/from16 v17, v9

    move/from16 v18, v10

    goto/16 :goto_e

    .line 344
    :cond_c
    :goto_9
    :try_start_2
    iget-object v0, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mPendingMigrationViaStatic:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDestinationChangeHandler;

    .line 345
    .local v0, "localSync":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDestinationChangeHandler;
    iget-object v8, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    const/4 v12, 0x0

    iput-object v12, v8, Lcom/android/server/wallpaper/WallpaperManagerService;->mPendingMigrationViaStatic:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDestinationChangeHandler;

    .line 350
    invoke-static {v4}, Landroid/os/SELinux;->restorecon(Ljava/io/File;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 351
    if-eqz v9, :cond_e

    .line 355
    :try_start_3
    invoke-static {}, Lcom/android/server/wallpaper/WallpaperManagerService;->-$$Nest$sfgetDEBUG()Z

    move-result v8

    if-eqz v8, :cond_d

    .line 356
    const-string v8, "WallpaperManagerService"

    const-string v12, "Wallpaper restore; reloading metadata"

    invoke-static {v8, v12}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    :cond_d
    iget-object v8, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    iget v12, v11, Lcom/android/server/wallpaper/WallpaperData;->userId:I

    move-object/from16 v19, v0

    .end local v0    # "localSync":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDestinationChangeHandler;
    .local v19, "localSync":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDestinationChangeHandler;
    const/4 v0, 0x3

    const/4 v2, 0x1

    invoke-static {v8, v12, v2, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->-$$Nest$mloadSettingsLocked(Lcom/android/server/wallpaper/WallpaperManagerService;IZI)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_a

    .line 351
    .end local v19    # "localSync":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDestinationChangeHandler;
    .restart local v0    # "localSync":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDestinationChangeHandler;
    :cond_e
    move-object/from16 v19, v0

    .line 360
    .end local v0    # "localSync":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDestinationChangeHandler;
    .restart local v19    # "localSync":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDestinationChangeHandler;
    :goto_a
    :try_start_4
    invoke-static {}, Lcom/android/server/wallpaper/WallpaperManagerService;->-$$Nest$sfgetDEBUG()Z

    move-result v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    if-eqz v0, :cond_f

    .line 361
    :try_start_5
    const-string v0, "WallpaperManagerService"

    const-string v2, "Wallpaper written; generating crop"

    invoke-static {v0, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 363
    :cond_f
    :try_start_6
    iget-object v0, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperCropper:Lcom/android/server/wallpaper/WallpaperCropper;

    invoke-virtual {v0, v11}, Lcom/android/server/wallpaper/WallpaperCropper;->generateCrop(Lcom/android/server/wallpaper/WallpaperData;)V

    .line 364
    invoke-static {}, Lcom/android/server/wallpaper/WallpaperManagerService;->-$$Nest$sfgetDEBUG()Z

    move-result v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    if-eqz v0, :cond_10

    .line 365
    :try_start_7
    const-string v0, "WallpaperManagerService"

    const-string v2, "Crop done; invoking completion callback"

    invoke-static {v0, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 367
    :cond_10
    const/4 v0, 0x0

    :try_start_8
    iput-boolean v0, v11, Lcom/android/server/wallpaper/WallpaperData;->imageWallpaperPending:Z

    .line 369
    if-eqz v5, :cond_12

    .line 370
    invoke-static {}, Lcom/android/server/wallpaper/WallpaperManagerService;->-$$Nest$sfgetDEBUG()Z

    move-result v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    if-eqz v0, :cond_11

    .line 371
    :try_start_9
    const-string v0, "WallpaperManagerService"

    const-string v2, "Home screen wallpaper changed"

    invoke-static {v0, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 373
    :cond_11
    :try_start_a
    new-instance v12, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver$1;

    invoke-direct {v12, v1, v11}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver$1;-><init>(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;Lcom/android/server/wallpaper/WallpaperData;)V

    .line 387
    .local v12, "callback":Landroid/os/IRemoteCallback$Stub;
    sget-object v0, Lcom/android/server/wallpaper/WallpaperData$BindSource;->SET_STATIC:Lcom/android/server/wallpaper/WallpaperData$BindSource;

    iput-object v0, v11, Lcom/android/server/wallpaper/WallpaperData;->mBindSource:Lcom/android/server/wallpaper/WallpaperData$BindSource;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 388
    move v2, v7

    .end local v7    # "needsUpdate":Z
    .local v2, "needsUpdate":Z
    :try_start_b
    iget-object v7, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    iget-object v0, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-static {v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->-$$Nest$fgetmImageWallpaper(Lcom/android/server/wallpaper/WallpaperManagerService;)Landroid/content/ComponentName;

    move-result-object v8
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    move/from16 v17, v9

    .end local v9    # "isRestore":Z
    .local v17, "isRestore":Z
    const/4 v9, 0x1

    move/from16 v18, v10

    .end local v10    # "isAppliedToLock":Z
    .local v18, "isAppliedToLock":Z
    const/4 v10, 0x0

    const/4 v0, 0x2

    :try_start_c
    invoke-virtual/range {v7 .. v12}, Lcom/android/server/wallpaper/WallpaperManagerService;->bindWallpaperComponentLocked(Landroid/content/ComponentName;ZZLcom/android/server/wallpaper/WallpaperData;Landroid/os/IRemoteCallback;)Z

    goto :goto_b

    .line 427
    .end local v12    # "callback":Landroid/os/IRemoteCallback$Stub;
    .end local v19    # "localSync":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDestinationChangeHandler;
    :catchall_1
    move-exception v0

    goto/16 :goto_e

    .end local v17    # "isRestore":Z
    .end local v18    # "isAppliedToLock":Z
    .restart local v9    # "isRestore":Z
    .restart local v10    # "isAppliedToLock":Z
    :catchall_2
    move-exception v0

    move/from16 v17, v9

    move/from16 v18, v10

    .end local v9    # "isRestore":Z
    .end local v10    # "isAppliedToLock":Z
    .restart local v17    # "isRestore":Z
    .restart local v18    # "isAppliedToLock":Z
    goto/16 :goto_e

    .end local v2    # "needsUpdate":Z
    .end local v17    # "isRestore":Z
    .end local v18    # "isAppliedToLock":Z
    .restart local v7    # "needsUpdate":Z
    .restart local v9    # "isRestore":Z
    .restart local v10    # "isAppliedToLock":Z
    :catchall_3
    move-exception v0

    move v2, v7

    move/from16 v17, v9

    move/from16 v18, v10

    .end local v7    # "needsUpdate":Z
    .end local v9    # "isRestore":Z
    .end local v10    # "isAppliedToLock":Z
    .restart local v2    # "needsUpdate":Z
    .restart local v17    # "isRestore":Z
    .restart local v18    # "isAppliedToLock":Z
    goto/16 :goto_e

    .line 369
    .end local v2    # "needsUpdate":Z
    .end local v17    # "isRestore":Z
    .end local v18    # "isAppliedToLock":Z
    .restart local v7    # "needsUpdate":Z
    .restart local v9    # "isRestore":Z
    .restart local v10    # "isAppliedToLock":Z
    .restart local v19    # "localSync":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDestinationChangeHandler;
    :cond_12
    move v2, v7

    move/from16 v17, v9

    move/from16 v18, v10

    const/4 v0, 0x2

    .line 391
    .end local v7    # "needsUpdate":Z
    .end local v9    # "isRestore":Z
    .end local v10    # "isAppliedToLock":Z
    .restart local v2    # "needsUpdate":Z
    .restart local v17    # "isRestore":Z
    .restart local v18    # "isAppliedToLock":Z
    :goto_b
    if-eqz v6, :cond_14

    .line 393
    invoke-static {}, Lcom/android/server/wallpaper/WallpaperManagerService;->-$$Nest$sfgetDEBUG()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 394
    const-string v0, "WallpaperManagerService"

    const-string v7, "Lock screen wallpaper changed"

    invoke-static {v0, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    :cond_13
    new-instance v12, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver$2;

    invoke-direct {v12, v1, v11}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver$2;-><init>(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;Lcom/android/server/wallpaper/WallpaperData;)V

    .line 409
    .restart local v12    # "callback":Landroid/os/IRemoteCallback$Stub;
    sget-object v0, Lcom/android/server/wallpaper/WallpaperData$BindSource;->SET_STATIC:Lcom/android/server/wallpaper/WallpaperData$BindSource;

    iput-object v0, v11, Lcom/android/server/wallpaper/WallpaperData;->mBindSource:Lcom/android/server/wallpaper/WallpaperData$BindSource;

    .line 410
    iget-object v7, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    iget-object v0, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-static {v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->-$$Nest$fgetmImageWallpaper(Lcom/android/server/wallpaper/WallpaperManagerService;)Landroid/content/ComponentName;

    move-result-object v8

    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-virtual/range {v7 .. v12}, Lcom/android/server/wallpaper/WallpaperManagerService;->bindWallpaperComponentLocked(Landroid/content/ComponentName;ZZLcom/android/server/wallpaper/WallpaperData;Landroid/os/IRemoteCallback;)Z

    .line 412
    nop

    .end local v12    # "callback":Landroid/os/IRemoteCallback$Stub;
    goto :goto_c

    :cond_14
    if-eqz v18, :cond_16

    .line 415
    invoke-static {}, Lcom/android/server/wallpaper/WallpaperManagerService;->-$$Nest$sfgetDEBUG()Z

    move-result v7

    if-eqz v7, :cond_15

    .line 416
    const-string v7, "WallpaperManagerService"

    const-string v8, "Lock screen wallpaper changed to same as home"

    invoke-static {v7, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    :cond_15
    iget-object v7, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    iget-object v8, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-static {v8}, Lcom/android/server/wallpaper/WallpaperManagerService;->-$$Nest$fgetmLockWallpaperMap(Lcom/android/server/wallpaper/WallpaperManagerService;)Landroid/util/SparseArray;

    move-result-object v8

    iget-object v9, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->mWallpaper:Lcom/android/server/wallpaper/WallpaperData;

    iget v9, v9, Lcom/android/server/wallpaper/WallpaperData;->userId:I

    invoke-virtual {v8, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/wallpaper/WallpaperData;

    invoke-static {v7, v8}, Lcom/android/server/wallpaper/WallpaperManagerService;->-$$Nest$mdetachWallpaperLocked(Lcom/android/server/wallpaper/WallpaperManagerService;Lcom/android/server/wallpaper/WallpaperData;)V

    .line 419
    iget-object v7, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    iget-object v8, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->mWallpaper:Lcom/android/server/wallpaper/WallpaperData;

    iget v8, v8, Lcom/android/server/wallpaper/WallpaperData;->userId:I

    invoke-static {v7, v8, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->-$$Nest$mclearWallpaperBitmaps(Lcom/android/server/wallpaper/WallpaperManagerService;II)V

    .line 420
    iget-object v0, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-static {v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->-$$Nest$fgetmLockWallpaperMap(Lcom/android/server/wallpaper/WallpaperManagerService;)Landroid/util/SparseArray;

    move-result-object v0

    iget v7, v11, Lcom/android/server/wallpaper/WallpaperData;->userId:I

    invoke-virtual {v0, v7}, Landroid/util/SparseArray;->remove(I)V

    .line 423
    :cond_16
    :goto_c
    iget-object v0, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    iget v7, v11, Lcom/android/server/wallpaper/WallpaperData;->userId:I

    invoke-virtual {v0, v7}, Lcom/android/server/wallpaper/WallpaperManagerService;->saveSettingsLocked(I)V

    .line 424
    if-eqz v19, :cond_17

    .line 425
    invoke-virtual/range {v19 .. v19}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDestinationChangeHandler;->complete()V

    .line 427
    .end local v19    # "localSync":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDestinationChangeHandler;
    :cond_17
    monitor-exit v16
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 430
    iget-object v0, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-virtual {v0, v11}, Lcom/android/server/wallpaper/WallpaperManagerService;->notifyWallpaperColorsChanged(Lcom/android/server/wallpaper/WallpaperData;)V

    .line 431
    return-void

    .line 336
    .end local v2    # "needsUpdate":Z
    .end local v17    # "isRestore":Z
    .end local v18    # "isAppliedToLock":Z
    .restart local v7    # "needsUpdate":Z
    .restart local v9    # "isRestore":Z
    .restart local v10    # "isAppliedToLock":Z
    :cond_18
    move v2, v7

    move/from16 v17, v9

    move/from16 v18, v10

    .line 337
    .end local v7    # "needsUpdate":Z
    .end local v9    # "isRestore":Z
    .end local v10    # "isAppliedToLock":Z
    .restart local v2    # "needsUpdate":Z
    .restart local v17    # "isRestore":Z
    .restart local v18    # "isAppliedToLock":Z
    :goto_d
    :try_start_d
    monitor-exit v16

    return-void

    .line 427
    :goto_e
    monitor-exit v16
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    throw v0
.end method


# virtual methods
.method dataForEvent(Z)Lcom/android/server/wallpaper/WallpaperData;
    .locals 4
    .param p1, "lockChanged"    # Z

    .line 278
    const/4 v0, 0x0

    .line 279
    .local v0, "wallpaper":Lcom/android/server/wallpaper/WallpaperData;
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-static {v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->-$$Nest$fgetmLock(Lcom/android/server/wallpaper/WallpaperManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 280
    if-eqz p1, :cond_0

    .line 281
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-static {v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->-$$Nest$fgetmLockWallpaperMap(Lcom/android/server/wallpaper/WallpaperManagerService;)Landroid/util/SparseArray;

    move-result-object v2

    iget v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->mUserId:I

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wallpaper/WallpaperData;

    move-object v0, v2

    goto :goto_0

    .line 287
    :catchall_0
    move-exception v2

    goto :goto_2

    .line 283
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    .line 285
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-static {v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->-$$Nest$fgetmWallpaperMap(Lcom/android/server/wallpaper/WallpaperManagerService;)Landroid/util/SparseArray;

    move-result-object v2

    iget v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->mUserId:I

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wallpaper/WallpaperData;

    move-object v0, v2

    .line 287
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 288
    if-eqz v0, :cond_2

    move-object v1, v0

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->mWallpaper:Lcom/android/server/wallpaper/WallpaperData;

    :goto_1
    return-object v1

    .line 287
    :goto_2
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public onEvent(ILjava/lang/String;)V
    .locals 0
    .param p1, "event"    # I
    .param p2, "path"    # Ljava/lang/String;

    .line 435
    if-eqz p2, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->updateWallpapers(ILjava/lang/String;)V

    .line 436
    :cond_0
    return-void
.end method
