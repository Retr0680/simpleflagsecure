.class Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDestinationChangeHandler;
.super Ljava/lang/Object;
.source "WallpaperManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wallpaper/WallpaperManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WallpaperDestinationChangeHandler"
.end annotation


# instance fields
.field final mNewWallpaper:Lcom/android/server/wallpaper/WallpaperData;

.field final mOriginalSystem:Lcom/android/server/wallpaper/WallpaperData;

.field final synthetic this$0:Lcom/android/server/wallpaper/WallpaperManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/wallpaper/WallpaperManagerService;Lcom/android/server/wallpaper/WallpaperData;)V
    .locals 2
    .param p1, "this$0"    # Lcom/android/server/wallpaper/WallpaperManagerService;
    .param p2, "newWallpaper"    # Lcom/android/server/wallpaper/WallpaperData;
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

    .line 1435
    iput-object p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDestinationChangeHandler;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1436
    iput-object p2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDestinationChangeHandler;->mNewWallpaper:Lcom/android/server/wallpaper/WallpaperData;

    .line 1437
    invoke-static {p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->-$$Nest$fgetmWallpaperMap(Lcom/android/server/wallpaper/WallpaperManagerService;)Landroid/util/SparseArray;

    move-result-object v0

    iget v1, p2, Lcom/android/server/wallpaper/WallpaperData;->userId:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wallpaper/WallpaperData;

    .line 1438
    .local v0, "sysWp":Lcom/android/server/wallpaper/WallpaperData;
    new-instance v1, Lcom/android/server/wallpaper/WallpaperData;

    invoke-direct {v1, v0}, Lcom/android/server/wallpaper/WallpaperData;-><init>(Lcom/android/server/wallpaper/WallpaperData;)V

    iput-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDestinationChangeHandler;->mOriginalSystem:Lcom/android/server/wallpaper/WallpaperData;

    .line 1439
    return-void
.end method


# virtual methods
.method complete()V
    .locals 6

    .line 1443
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDestinationChangeHandler;->mNewWallpaper:Lcom/android/server/wallpaper/WallpaperData;

    iget-boolean v0, v0, Lcom/android/server/wallpaper/WallpaperData;->mSystemWasBoth:Z

    const-string v1, "WallpaperManagerService"

    if-eqz v0, :cond_b

    .line 1444
    invoke-static {}, Lcom/android/server/wallpaper/WallpaperManagerService;->-$$Nest$sfgetDEBUG()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1445
    const-string v0, "Handling change from system+lock wallpaper"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1447
    :cond_0
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDestinationChangeHandler;->mNewWallpaper:Lcom/android/server/wallpaper/WallpaperData;

    iget v0, v0, Lcom/android/server/wallpaper/WallpaperData;->mWhich:I

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-ne v0, v2, :cond_8

    .line 1449
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDestinationChangeHandler;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-static {v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->-$$Nest$fgetmImageWallpaper(Lcom/android/server/wallpaper/WallpaperManagerService;)Landroid/content/ComponentName;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDestinationChangeHandler;->mOriginalSystem:Lcom/android/server/wallpaper/WallpaperData;

    .line 1450
    invoke-virtual {v2}, Lcom/android/server/wallpaper/WallpaperData;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    .line 1449
    invoke-virtual {v0, v2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 1451
    .local v0, "originalIsStatic":Z
    if-eqz v0, :cond_5

    .line 1455
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDestinationChangeHandler;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-static {v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->-$$Nest$fgetmLockWallpaperMap(Lcom/android/server/wallpaper/WallpaperManagerService;)Landroid/util/SparseArray;

    move-result-object v2

    iget-object v4, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDestinationChangeHandler;->mNewWallpaper:Lcom/android/server/wallpaper/WallpaperData;

    iget v4, v4, Lcom/android/server/wallpaper/WallpaperData;->userId:I

    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wallpaper/WallpaperData;

    .line 1456
    .local v2, "lockWp":Lcom/android/server/wallpaper/WallpaperData;
    if-eqz v2, :cond_2

    iget-object v4, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDestinationChangeHandler;->mOriginalSystem:Lcom/android/server/wallpaper/WallpaperData;

    iget-object v4, v4, Lcom/android/server/wallpaper/WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    if-eqz v4, :cond_2

    .line 1458
    invoke-static {}, Lcom/android/server/wallpaper/WallpaperManagerService;->-$$Nest$sfgetDEBUG()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1459
    const-string v4, "static system+lock to system success"

    invoke-static {v1, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1461
    :cond_1
    nop

    .line 1462
    iget-object v4, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDestinationChangeHandler;->mOriginalSystem:Lcom/android/server/wallpaper/WallpaperData;

    invoke-virtual {v4}, Lcom/android/server/wallpaper/WallpaperData;->getDescription()Landroid/app/wallpaper/WallpaperDescription;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/android/server/wallpaper/WallpaperData;->setDescription(Landroid/app/wallpaper/WallpaperDescription;)V

    .line 1466
    iget-object v4, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDestinationChangeHandler;->mOriginalSystem:Lcom/android/server/wallpaper/WallpaperData;

    iget-object v4, v4, Lcom/android/server/wallpaper/WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    iput-object v4, v2, Lcom/android/server/wallpaper/WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    .line 1467
    iget-object v4, v2, Lcom/android/server/wallpaper/WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    iput-object v2, v4, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mWallpaper:Lcom/android/server/wallpaper/WallpaperData;

    .line 1468
    iget-object v4, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDestinationChangeHandler;->mOriginalSystem:Lcom/android/server/wallpaper/WallpaperData;

    iput v3, v4, Lcom/android/server/wallpaper/WallpaperData;->mWhich:I

    .line 1469
    iget-object v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDestinationChangeHandler;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    iget-object v4, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDestinationChangeHandler;->mOriginalSystem:Lcom/android/server/wallpaper/WallpaperData;

    invoke-static {v3, v4}, Lcom/android/server/wallpaper/WallpaperManagerService;->-$$Nest$mupdateEngineFlags(Lcom/android/server/wallpaper/WallpaperManagerService;Lcom/android/server/wallpaper/WallpaperData;)V

    goto :goto_0

    .line 1472
    :cond_2
    invoke-static {}, Lcom/android/server/wallpaper/WallpaperManagerService;->-$$Nest$sfgetDEBUG()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1473
    const-string v3, "static system+lock to system failure"

    invoke-static {v1, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1475
    :cond_3
    iget-object v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDestinationChangeHandler;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-static {v3}, Lcom/android/server/wallpaper/WallpaperManagerService;->-$$Nest$fgetmWallpaperMap(Lcom/android/server/wallpaper/WallpaperManagerService;)Landroid/util/SparseArray;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDestinationChangeHandler;->mNewWallpaper:Lcom/android/server/wallpaper/WallpaperData;

    iget v4, v4, Lcom/android/server/wallpaper/WallpaperData;->userId:I

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wallpaper/WallpaperData;

    .line 1483
    .local v3, "currentSystem":Lcom/android/server/wallpaper/WallpaperData;
    iget-object v4, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDestinationChangeHandler;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-static {v4}, Lcom/android/server/wallpaper/WallpaperManagerService;->-$$Nest$fgetmContext(Lcom/android/server/wallpaper/WallpaperManagerService;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/wm/DesktopModeHelper;->isDeviceEligibleForDesktopExperienceWallpaper(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, v3, Lcom/android/server/wallpaper/WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    if-eqz v4, :cond_4

    .line 1485
    iget-object v4, v3, Lcom/android/server/wallpaper/WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    iput-object v3, v4, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mWallpaper:Lcom/android/server/wallpaper/WallpaperData;

    .line 1487
    :cond_4
    const/4 v4, 0x3

    iput v4, v3, Lcom/android/server/wallpaper/WallpaperData;->mWhich:I

    .line 1488
    iget-object v4, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDestinationChangeHandler;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-static {v4, v3}, Lcom/android/server/wallpaper/WallpaperManagerService;->-$$Nest$mupdateEngineFlags(Lcom/android/server/wallpaper/WallpaperManagerService;Lcom/android/server/wallpaper/WallpaperData;)V

    .line 1489
    iget-object v4, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDestinationChangeHandler;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-static {v4}, Lcom/android/server/wallpaper/WallpaperManagerService;->-$$Nest$fgetmLockWallpaperMap(Lcom/android/server/wallpaper/WallpaperManagerService;)Landroid/util/SparseArray;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDestinationChangeHandler;->mNewWallpaper:Lcom/android/server/wallpaper/WallpaperData;

    iget v5, v5, Lcom/android/server/wallpaper/WallpaperData;->userId:I

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->remove(I)V

    .line 1491
    .end local v2    # "lockWp":Lcom/android/server/wallpaper/WallpaperData;
    .end local v3    # "currentSystem":Lcom/android/server/wallpaper/WallpaperData;
    :goto_0
    goto :goto_1

    .line 1493
    :cond_5
    invoke-static {}, Lcom/android/server/wallpaper/WallpaperManagerService;->-$$Nest$sfgetDEBUG()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1494
    const-string v2, "live system+lock to system success"

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1496
    :cond_6
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDestinationChangeHandler;->mOriginalSystem:Lcom/android/server/wallpaper/WallpaperData;

    iput v3, v2, Lcom/android/server/wallpaper/WallpaperData;->mWhich:I

    .line 1497
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDestinationChangeHandler;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    iget-object v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDestinationChangeHandler;->mOriginalSystem:Lcom/android/server/wallpaper/WallpaperData;

    invoke-static {v2, v3}, Lcom/android/server/wallpaper/WallpaperManagerService;->-$$Nest$mupdateEngineFlags(Lcom/android/server/wallpaper/WallpaperManagerService;Lcom/android/server/wallpaper/WallpaperData;)V

    .line 1498
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDestinationChangeHandler;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-static {v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->-$$Nest$fgetmLockWallpaperMap(Lcom/android/server/wallpaper/WallpaperManagerService;)Landroid/util/SparseArray;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDestinationChangeHandler;->mNewWallpaper:Lcom/android/server/wallpaper/WallpaperData;

    iget v3, v3, Lcom/android/server/wallpaper/WallpaperData;->userId:I

    iget-object v4, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDestinationChangeHandler;->mOriginalSystem:Lcom/android/server/wallpaper/WallpaperData;

    invoke-virtual {v2, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1499
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDestinationChangeHandler;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    iget-object v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDestinationChangeHandler;->mOriginalSystem:Lcom/android/server/wallpaper/WallpaperData;

    iput-object v3, v2, Lcom/android/server/wallpaper/WallpaperManagerService;->mLastLockWallpaper:Lcom/android/server/wallpaper/WallpaperData;

    .line 1501
    .end local v0    # "originalIsStatic":Z
    :cond_7
    :goto_1
    goto :goto_2

    :cond_8
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDestinationChangeHandler;->mNewWallpaper:Lcom/android/server/wallpaper/WallpaperData;

    iget v0, v0, Lcom/android/server/wallpaper/WallpaperData;->mWhich:I

    if-ne v0, v3, :cond_7

    .line 1503
    invoke-static {}, Lcom/android/server/wallpaper/WallpaperManagerService;->-$$Nest$sfgetDEBUG()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1504
    const-string v0, "system+lock to lock"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1506
    :cond_9
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDestinationChangeHandler;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-static {v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->-$$Nest$fgetmWallpaperMap(Lcom/android/server/wallpaper/WallpaperManagerService;)Landroid/util/SparseArray;

    move-result-object v0

    iget-object v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDestinationChangeHandler;->mNewWallpaper:Lcom/android/server/wallpaper/WallpaperData;

    iget v3, v3, Lcom/android/server/wallpaper/WallpaperData;->userId:I

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wallpaper/WallpaperData;

    .line 1507
    .local v0, "currentSystem":Lcom/android/server/wallpaper/WallpaperData;
    iget v3, v0, Lcom/android/server/wallpaper/WallpaperData;->wallpaperId:I

    iget-object v4, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDestinationChangeHandler;->mOriginalSystem:Lcom/android/server/wallpaper/WallpaperData;

    iget v4, v4, Lcom/android/server/wallpaper/WallpaperData;->wallpaperId:I

    if-ne v3, v4, :cond_b

    .line 1509
    iget-object v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDestinationChangeHandler;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-static {v3}, Lcom/android/server/wallpaper/WallpaperManagerService;->-$$Nest$fgetmContext(Lcom/android/server/wallpaper/WallpaperManagerService;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/wm/DesktopModeHelper;->isDeviceEligibleForDesktopExperienceWallpaper(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_a

    iget-object v3, v0, Lcom/android/server/wallpaper/WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    if-eqz v3, :cond_a

    .line 1511
    iget-object v3, v0, Lcom/android/server/wallpaper/WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    iput-object v0, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mWallpaper:Lcom/android/server/wallpaper/WallpaperData;

    .line 1513
    :cond_a
    iput v2, v0, Lcom/android/server/wallpaper/WallpaperData;->mWhich:I

    .line 1514
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDestinationChangeHandler;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-static {v2, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->-$$Nest$mupdateEngineFlags(Lcom/android/server/wallpaper/WallpaperManagerService;Lcom/android/server/wallpaper/WallpaperData;)V

    .line 1518
    .end local v0    # "currentSystem":Lcom/android/server/wallpaper/WallpaperData;
    :cond_b
    :goto_2
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDestinationChangeHandler;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDestinationChangeHandler;->mNewWallpaper:Lcom/android/server/wallpaper/WallpaperData;

    iget v2, v2, Lcom/android/server/wallpaper/WallpaperData;->userId:I

    invoke-virtual {v0, v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->saveSettingsLocked(I)V

    .line 1520
    invoke-static {}, Lcom/android/server/wallpaper/WallpaperManagerService;->-$$Nest$sfgetDEBUG()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1521
    const-string v0, "--- wallpaper changed --"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1522
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "new sysWp: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDestinationChangeHandler;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-static {v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->-$$Nest$fgetmWallpaperMap(Lcom/android/server/wallpaper/WallpaperManagerService;)Landroid/util/SparseArray;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDestinationChangeHandler;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-static {v3}, Lcom/android/server/wallpaper/WallpaperManagerService;->-$$Nest$fgetmCurrentUserId(Lcom/android/server/wallpaper/WallpaperManagerService;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1523
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "new lockWp: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDestinationChangeHandler;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-static {v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->-$$Nest$fgetmLockWallpaperMap(Lcom/android/server/wallpaper/WallpaperManagerService;)Landroid/util/SparseArray;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDestinationChangeHandler;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-static {v3}, Lcom/android/server/wallpaper/WallpaperManagerService;->-$$Nest$fgetmCurrentUserId(Lcom/android/server/wallpaper/WallpaperManagerService;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1524
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "new lastWp: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDestinationChangeHandler;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    iget-object v2, v2, Lcom/android/server/wallpaper/WallpaperManagerService;->mLastWallpaper:Lcom/android/server/wallpaper/WallpaperData;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1525
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "new lastLockWp: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDestinationChangeHandler;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    iget-object v2, v2, Lcom/android/server/wallpaper/WallpaperManagerService;->mLastLockWallpaper:Lcom/android/server/wallpaper/WallpaperData;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1527
    :cond_c
    return-void
.end method
