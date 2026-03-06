.class public final Lcom/android/server/display/mode/DisplayModeDirector$AppRequestObserver;
.super Ljava/lang/Object;
.source "DisplayModeDirector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/mode/DisplayModeDirector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "AppRequestObserver"
.end annotation


# instance fields
.field private final mIgnorePreferredRefreshRate:Z

.field final synthetic this$0:Lcom/android/server/display/mode/DisplayModeDirector;


# direct methods
.method static bridge synthetic -$$Nest$mdumpLocked(Lcom/android/server/display/mode/DisplayModeDirector$AppRequestObserver;Ljava/io/PrintWriter;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/display/mode/DisplayModeDirector$AppRequestObserver;->dumpLocked(Ljava/io/PrintWriter;)V

    return-void
.end method

.method constructor <init>(Lcom/android/server/display/mode/DisplayModeDirector;Lcom/android/server/display/feature/DisplayManagerFlags;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/server/display/mode/DisplayModeDirector;
    .param p2, "flags"    # Lcom/android/server/display/feature/DisplayManagerFlags;
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

    .line 1381
    iput-object p1, p0, Lcom/android/server/display/mode/DisplayModeDirector$AppRequestObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1382
    invoke-virtual {p2}, Lcom/android/server/display/feature/DisplayManagerFlags;->ignoreAppPreferredRefreshRateRequest()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$AppRequestObserver;->mIgnorePreferredRefreshRate:Z

    .line 1383
    return-void
.end method

.method private dumpLocked(Ljava/io/PrintWriter;)V
    .locals 2
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 1489
    const-string v0, "  AppRequestObserver"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1490
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mIgnorePreferredRefreshRate: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/mode/DisplayModeDirector$AppRequestObserver;->mIgnorePreferredRefreshRate:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1491
    return-void
.end method

.method private findAppModeByIdLocked(II)Landroid/view/Display$Mode;
    .locals 6
    .param p1, "displayId"    # I
    .param p2, "modeId"    # I

    .line 1476
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$AppRequestObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    invoke-static {v0}, Lcom/android/server/display/mode/DisplayModeDirector;->-$$Nest$fgetmAppSupportedModesByDisplay(Lcom/android/server/display/mode/DisplayModeDirector;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/view/Display$Mode;

    .line 1477
    .local v0, "modes":[Landroid/view/Display$Mode;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1478
    return-object v1

    .line 1480
    :cond_0
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v0, v3

    .line 1481
    .local v4, "mode":Landroid/view/Display$Mode;
    invoke-virtual {v4}, Landroid/view/Display$Mode;->getModeId()I

    move-result v5

    if-ne v5, p2, :cond_1

    .line 1482
    return-object v4

    .line 1481
    :cond_1
    nop

    .line 1480
    .end local v4    # "mode":Landroid/view/Display$Mode;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1485
    :cond_2
    return-object v1
.end method

.method private findDefaultModeByRefreshRateLocked(IF)Landroid/view/Display$Mode;
    .locals 6
    .param p1, "displayId"    # I
    .param p2, "refreshRate"    # F

    .line 1464
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$AppRequestObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    invoke-static {v0}, Lcom/android/server/display/mode/DisplayModeDirector;->-$$Nest$fgetmAppSupportedModesByDisplay(Lcom/android/server/display/mode/DisplayModeDirector;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/view/Display$Mode;

    .line 1465
    .local v0, "modes":[Landroid/view/Display$Mode;
    iget-object v1, p0, Lcom/android/server/display/mode/DisplayModeDirector$AppRequestObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    invoke-static {v1}, Lcom/android/server/display/mode/DisplayModeDirector;->-$$Nest$fgetmDefaultModeByDisplay(Lcom/android/server/display/mode/DisplayModeDirector;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/Display$Mode;

    .line 1466
    .local v1, "defaultMode":Landroid/view/Display$Mode;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_1

    .line 1467
    aget-object v3, v0, v2

    invoke-virtual {v1}, Landroid/view/Display$Mode;->getPhysicalWidth()I

    move-result v4

    .line 1468
    invoke-virtual {v1}, Landroid/view/Display$Mode;->getPhysicalHeight()I

    move-result v5

    .line 1467
    invoke-virtual {v3, v4, v5, p2}, Landroid/view/Display$Mode;->matches(IIF)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1469
    aget-object v3, v0, v2

    return-object v3

    .line 1466
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    nop

    .line 1472
    .end local v2    # "i":I
    const/4 v2, 0x0

    return-object v2
.end method

.method private findModeLocked(IIF)Landroid/view/Display$Mode;
    .locals 3
    .param p1, "displayId"    # I
    .param p2, "modeId"    # I
    .param p3, "requestedRefreshRate"    # F

    .line 1413
    const/4 v0, 0x0

    .line 1414
    .local v0, "mode":Landroid/view/Display$Mode;
    if-eqz p2, :cond_0

    .line 1415
    invoke-direct {p0, p1, p2}, Lcom/android/server/display/mode/DisplayModeDirector$AppRequestObserver;->findAppModeByIdLocked(II)Landroid/view/Display$Mode;

    move-result-object v0

    goto :goto_0

    .line 1416
    :cond_0
    const/4 v1, 0x0

    cmpl-float v1, p3, v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/server/display/mode/DisplayModeDirector$AppRequestObserver;->mIgnorePreferredRefreshRate:Z

    if-nez v1, :cond_1

    .line 1419
    invoke-direct {p0, p1, p3}, Lcom/android/server/display/mode/DisplayModeDirector$AppRequestObserver;->findDefaultModeByRefreshRateLocked(IF)Landroid/view/Display$Mode;

    move-result-object v0

    .line 1420
    if-nez v0, :cond_1

    .line 1421
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Couldn\'t find a mode for the requestedRefreshRate: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, " on Display: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DisplayModeDirector"

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1425
    :cond_1
    :goto_0
    return-object v0
.end method

.method private getBaseModeVote(Landroid/view/Display$Mode;F)Lcom/android/server/display/mode/Vote;
    .locals 2
    .param p1, "mode"    # Landroid/view/Display$Mode;
    .param p2, "requestedRefreshRate"    # F

    .line 1449
    const/4 v0, 0x0

    .line 1450
    .local v0, "vote":Lcom/android/server/display/mode/Vote;
    if-eqz p1, :cond_1

    .line 1451
    invoke-virtual {p1}, Landroid/view/Display$Mode;->isSynthetic()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1452
    invoke-virtual {p1}, Landroid/view/Display$Mode;->getRefreshRate()F

    move-result v1

    invoke-static {v1}, Lcom/android/server/display/mode/Vote;->forRequestedRefreshRate(F)Lcom/android/server/display/mode/Vote;

    move-result-object v0

    goto :goto_0

    .line 1454
    :cond_0
    invoke-virtual {p1}, Landroid/view/Display$Mode;->getRefreshRate()F

    move-result v1

    invoke-static {v1}, Lcom/android/server/display/mode/Vote;->forBaseModeRefreshRate(F)Lcom/android/server/display/mode/Vote;

    move-result-object v0

    goto :goto_0

    .line 1456
    :cond_1
    const/4 v1, 0x0

    cmpl-float v1, p2, v1

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/android/server/display/mode/DisplayModeDirector$AppRequestObserver;->mIgnorePreferredRefreshRate:Z

    if-eqz v1, :cond_2

    .line 1457
    invoke-static {p2}, Lcom/android/server/display/mode/Vote;->forRequestedRefreshRate(F)Lcom/android/server/display/mode/Vote;

    move-result-object v0

    .line 1459
    :cond_2
    :goto_0
    return-object v0
.end method

.method private getFrameRateVote(FF)Lcom/android/server/display/mode/Vote;
    .locals 4
    .param p1, "minRefreshRate"    # F
    .param p2, "maxRefreshRate"    # F

    .line 1429
    const/4 v0, 0x0

    .line 1430
    .local v0, "refreshRateRange":Landroid/view/SurfaceControl$RefreshRateRange;
    const/4 v1, 0x0

    cmpl-float v2, p1, v1

    if-gtz v2, :cond_0

    cmpl-float v2, p2, v1

    if-lez v2, :cond_2

    .line 1431
    :cond_0
    cmpl-float v2, p2, v1

    if-lez v2, :cond_1

    .line 1432
    move v2, p2

    goto :goto_0

    :cond_1
    const/high16 v2, 0x7f800000    # Float.POSITIVE_INFINITY

    .line 1433
    .local v2, "max":F
    :goto_0
    new-instance v3, Landroid/view/SurfaceControl$RefreshRateRange;

    invoke-direct {v3, p1, v2}, Landroid/view/SurfaceControl$RefreshRateRange;-><init>(FF)V

    move-object v0, v3

    .line 1434
    iget v3, v0, Landroid/view/SurfaceControl$RefreshRateRange;->min:F

    cmpl-float v3, v3, v1

    if-nez v3, :cond_2

    iget v3, v0, Landroid/view/SurfaceControl$RefreshRateRange;->max:F

    cmpl-float v1, v3, v1

    if-nez v1, :cond_2

    .line 1436
    const/4 v0, 0x0

    .line 1439
    .end local v2    # "max":F
    :cond_2
    if-eqz v0, :cond_3

    .line 1440
    iget v1, v0, Landroid/view/SurfaceControl$RefreshRateRange;->min:F

    iget v2, v0, Landroid/view/SurfaceControl$RefreshRateRange;->max:F

    invoke-static {v1, v2}, Lcom/android/server/display/mode/Vote;->forRenderFrameRates(FF)Lcom/android/server/display/mode/Vote;

    move-result-object v1

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    .line 1439
    :goto_1
    return-object v1
.end method

.method private getSizeVote(Landroid/view/Display$Mode;)Lcom/android/server/display/mode/Vote;
    .locals 2
    .param p1, "mode"    # Landroid/view/Display$Mode;

    .line 1444
    if-eqz p1, :cond_0

    .line 1445
    invoke-virtual {p1}, Landroid/view/Display$Mode;->getPhysicalWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/Display$Mode;->getPhysicalHeight()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/server/display/mode/Vote;->forSize(II)Lcom/android/server/display/mode/Vote;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1444
    :goto_0
    return-object v0
.end method


# virtual methods
.method public setAppRequest(IIFFF)V
    .locals 7
    .param p1, "displayId"    # I
    .param p2, "modeId"    # I
    .param p3, "requestedRefreshRate"    # F
    .param p4, "requestedMinRefreshRateRange"    # F
    .param p5, "requestedMaxRefreshRateRange"    # F

    .line 1392
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$AppRequestObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    invoke-static {v0}, Lcom/android/server/display/mode/DisplayModeDirector;->-$$Nest$fgetmLock(Lcom/android/server/display/mode/DisplayModeDirector;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1393
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/display/mode/DisplayModeDirector$AppRequestObserver;->findModeLocked(IIF)Landroid/view/Display$Mode;

    move-result-object v1

    .line 1394
    .local v1, "requestedMode":Landroid/view/Display$Mode;
    iget-object v2, p0, Lcom/android/server/display/mode/DisplayModeDirector$AppRequestObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    invoke-virtual {v2, p1}, Lcom/android/server/display/mode/DisplayModeDirector;->isExternalDisplayLocked(I)Z

    move-result v2

    .line 1395
    .local v2, "isExternalDisplay":Z
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1397
    invoke-direct {p0, p4, p5}, Lcom/android/server/display/mode/DisplayModeDirector$AppRequestObserver;->getFrameRateVote(FF)Lcom/android/server/display/mode/Vote;

    move-result-object v0

    .line 1399
    .local v0, "frameRateVote":Lcom/android/server/display/mode/Vote;
    invoke-direct {p0, v1, p3}, Lcom/android/server/display/mode/DisplayModeDirector$AppRequestObserver;->getBaseModeVote(Landroid/view/Display$Mode;F)Lcom/android/server/display/mode/Vote;

    move-result-object v3

    .line 1401
    .local v3, "baseModeRefreshRateVote":Lcom/android/server/display/mode/Vote;
    iget-object v4, p0, Lcom/android/server/display/mode/DisplayModeDirector$AppRequestObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    invoke-static {v4}, Lcom/android/server/display/mode/DisplayModeDirector;->-$$Nest$fgetmVotesStorage(Lcom/android/server/display/mode/DisplayModeDirector;)Lcom/android/server/display/mode/VotesStorage;

    move-result-object v4

    const/4 v5, 0x5

    invoke-virtual {v4, p1, v5, v0}, Lcom/android/server/display/mode/VotesStorage;->updateVote(IILcom/android/server/display/mode/Vote;)V

    .line 1403
    iget-object v4, p0, Lcom/android/server/display/mode/DisplayModeDirector$AppRequestObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    invoke-static {v4}, Lcom/android/server/display/mode/DisplayModeDirector;->-$$Nest$fgetmVotesStorage(Lcom/android/server/display/mode/DisplayModeDirector;)Lcom/android/server/display/mode/VotesStorage;

    move-result-object v4

    const/4 v5, 0x6

    invoke-virtual {v4, p1, v5, v3}, Lcom/android/server/display/mode/VotesStorage;->updateVote(IILcom/android/server/display/mode/Vote;)V

    .line 1406
    if-nez v2, :cond_0

    .line 1407
    invoke-direct {p0, v1}, Lcom/android/server/display/mode/DisplayModeDirector$AppRequestObserver;->getSizeVote(Landroid/view/Display$Mode;)Lcom/android/server/display/mode/Vote;

    move-result-object v4

    .line 1408
    .local v4, "sizeVote":Lcom/android/server/display/mode/Vote;
    iget-object v5, p0, Lcom/android/server/display/mode/DisplayModeDirector$AppRequestObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    invoke-static {v5}, Lcom/android/server/display/mode/DisplayModeDirector;->-$$Nest$fgetmVotesStorage(Lcom/android/server/display/mode/DisplayModeDirector;)Lcom/android/server/display/mode/VotesStorage;

    move-result-object v5

    const/4 v6, 0x7

    invoke-virtual {v5, p1, v6, v4}, Lcom/android/server/display/mode/VotesStorage;->updateVote(IILcom/android/server/display/mode/Vote;)V

    .line 1410
    .end local v4    # "sizeVote":Lcom/android/server/display/mode/Vote;
    :cond_0
    return-void

    .line 1395
    .end local v0    # "frameRateVote":Lcom/android/server/display/mode/Vote;
    .end local v1    # "requestedMode":Landroid/view/Display$Mode;
    .end local v2    # "isExternalDisplay":Z
    .end local v3    # "baseModeRefreshRateVote":Lcom/android/server/display/mode/Vote;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
