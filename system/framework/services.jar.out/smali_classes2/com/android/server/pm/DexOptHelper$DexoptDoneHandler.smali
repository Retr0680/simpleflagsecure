.class Lcom/android/server/pm/DexOptHelper$DexoptDoneHandler;
.super Ljava/lang/Object;
.source "DexOptHelper.java"

# interfaces
.implements Lcom/android/server/art/ArtManagerLocal$DexoptDoneCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/DexOptHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DexoptDoneHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/DexOptHelper;


# direct methods
.method private constructor <init>(Lcom/android/server/pm/DexOptHelper;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 691
    iput-object p1, p0, Lcom/android/server/pm/DexOptHelper$DexoptDoneHandler;->this$0:Lcom/android/server/pm/DexOptHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/pm/DexOptHelper;Lcom/android/server/pm/DexOptHelper-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/pm/DexOptHelper$DexoptDoneHandler;-><init>(Lcom/android/server/pm/DexOptHelper;)V

    return-void
.end method


# virtual methods
.method public onDexoptDone(Lcom/android/server/art/model/DexoptResult;)V
    .locals 16
    .param p1, "result"    # Lcom/android/server/art/model/DexoptResult;

    .line 698
    move-object/from16 v1, p0

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/art/model/DexoptResult;->getReason()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    const/4 v3, 0x0

    sparse-switch v2, :sswitch_data_0

    :cond_0
    goto :goto_0

    :sswitch_0
    const-string v2, "first-boot"

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v3

    goto :goto_1

    :sswitch_1
    const-string v2, "boot-after-ota"

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :sswitch_2
    const-string v2, "boot-after-mainline-update"

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_1

    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    goto :goto_4

    .line 702
    :pswitch_0
    const/4 v0, 0x0

    .line 703
    .local v0, "numDexopted":I
    const/4 v2, 0x0

    .line 704
    .local v2, "numSkipped":I
    const/4 v4, 0x0

    .line 706
    .local v4, "numFailed":I
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/art/model/DexoptResult;->getPackageDexoptResults()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v9, v0

    move v10, v2

    move v11, v4

    .end local v0    # "numDexopted":I
    .end local v2    # "numSkipped":I
    .end local v4    # "numFailed":I
    .local v9, "numDexopted":I
    .local v10, "numSkipped":I
    .local v11, "numFailed":I
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/art/model/DexoptResult$PackageDexoptResult;

    .line 707
    .local v0, "pkgRes":Lcom/android/server/art/model/DexoptResult$PackageDexoptResult;
    invoke-virtual {v0}, Lcom/android/server/art/model/DexoptResult$PackageDexoptResult;->getStatus()I

    move-result v2

    sparse-switch v2, :sswitch_data_1

    goto :goto_3

    .line 715
    :sswitch_3
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 709
    :sswitch_4
    add-int/lit8 v9, v9, 0x1

    .line 710
    goto :goto_3

    .line 712
    :sswitch_5
    add-int/lit8 v10, v10, 0x1

    .line 713
    nop

    .line 718
    .end local v0    # "pkgRes":Lcom/android/server/art/model/DexoptResult$PackageDexoptResult;
    :goto_3
    goto :goto_2

    .line 720
    :cond_1
    iget-object v6, v1, Lcom/android/server/pm/DexOptHelper$DexoptDoneHandler;->this$0:Lcom/android/server/pm/DexOptHelper;

    iget-object v0, v1, Lcom/android/server/pm/DexOptHelper$DexoptDoneHandler;->this$0:Lcom/android/server/pm/DexOptHelper;

    invoke-static {v0}, Lcom/android/server/pm/DexOptHelper;->-$$Nest$fgetmBootDexoptStartTime(Lcom/android/server/pm/DexOptHelper;)J

    move-result-wide v7

    invoke-static/range {v6 .. v11}, Lcom/android/server/pm/DexOptHelper;->-$$Nest$mreportBootDexopt(Lcom/android/server/pm/DexOptHelper;JIII)V

    .line 724
    .end local v9    # "numDexopted":I
    .end local v10    # "numSkipped":I
    .end local v11    # "numFailed":I
    :goto_4
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/art/model/DexoptResult;->getPackageDexoptResults()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/art/model/DexoptResult$PackageDexoptResult;

    .line 725
    .local v2, "pkgRes":Lcom/android/server/art/model/DexoptResult$PackageDexoptResult;
    iget-object v4, v1, Lcom/android/server/pm/DexOptHelper$DexoptDoneHandler;->this$0:Lcom/android/server/pm/DexOptHelper;

    invoke-static {v4}, Lcom/android/server/pm/DexOptHelper;->-$$Nest$fgetmPm(Lcom/android/server/pm/DexOptHelper;)Lcom/android/server/pm/PackageManagerService;

    move-result-object v4

    .line 726
    invoke-virtual {v2}, Lcom/android/server/art/model/DexoptResult$PackageDexoptResult;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/server/pm/PackageManagerService;->getOrCreateCompilerPackageStats(Ljava/lang/String;)Lcom/android/server/pm/CompilerStats$PackageStats;

    move-result-object v4

    .line 728
    .local v4, "stats":Lcom/android/server/pm/CompilerStats$PackageStats;
    invoke-virtual {v2}, Lcom/android/server/art/model/DexoptResult$PackageDexoptResult;->getDexContainerFileDexoptResults()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_6
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    nop

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/art/model/DexoptResult$DexContainerFileDexoptResult;

    .line 729
    .local v6, "dexRes":Lcom/android/server/art/model/DexoptResult$DexContainerFileDexoptResult;
    nop

    .line 730
    invoke-virtual {v6}, Lcom/android/server/art/model/DexoptResult$DexContainerFileDexoptResult;->getDexContainerFile()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6}, Lcom/android/server/art/model/DexoptResult$DexContainerFileDexoptResult;->getDex2oatWallTimeMillis()J

    move-result-wide v8

    .line 729
    invoke-virtual {v4, v7, v8, v9}, Lcom/android/server/pm/CompilerStats$PackageStats;->setCompileTime(Ljava/lang/String;J)V

    .line 731
    .end local v6    # "dexRes":Lcom/android/server/art/model/DexoptResult$DexContainerFileDexoptResult;
    goto :goto_6

    .line 732
    .end local v2    # "pkgRes":Lcom/android/server/art/model/DexoptResult$PackageDexoptResult;
    .end local v4    # "stats":Lcom/android/server/pm/CompilerStats$PackageStats;
    :cond_2
    goto :goto_5

    .line 734
    :cond_3
    iget-object v0, v1, Lcom/android/server/pm/DexOptHelper$DexoptDoneHandler;->this$0:Lcom/android/server/pm/DexOptHelper;

    invoke-static {v0}, Lcom/android/server/pm/DexOptHelper;->-$$Nest$fgetmPm(Lcom/android/server/pm/DexOptHelper;)Lcom/android/server/pm/PackageManagerService;

    move-result-object v0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v2

    .line 735
    :try_start_0
    iget-object v0, v1, Lcom/android/server/pm/DexOptHelper$DexoptDoneHandler;->this$0:Lcom/android/server/pm/DexOptHelper;

    invoke-static {v0}, Lcom/android/server/pm/DexOptHelper;->-$$Nest$fgetmPm(Lcom/android/server/pm/DexOptHelper;)Lcom/android/server/pm/PackageManagerService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->getPackageUsage()Lcom/android/server/pm/PackageUsage;

    move-result-object v0

    iget-object v4, v1, Lcom/android/server/pm/DexOptHelper$DexoptDoneHandler;->this$0:Lcom/android/server/pm/DexOptHelper;

    invoke-static {v4}, Lcom/android/server/pm/DexOptHelper;->-$$Nest$fgetmPm(Lcom/android/server/pm/DexOptHelper;)Lcom/android/server/pm/PackageManagerService;

    move-result-object v4

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v4}, Lcom/android/server/pm/Settings;->getPackagesLocked()Lcom/android/server/utils/WatchedArrayMap;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/server/pm/AbstractStatsBase;->maybeWriteAsync(Ljava/lang/Object;)Z

    .line 736
    iget-object v0, v1, Lcom/android/server/pm/DexOptHelper$DexoptDoneHandler;->this$0:Lcom/android/server/pm/DexOptHelper;

    invoke-static {v0}, Lcom/android/server/pm/DexOptHelper;->-$$Nest$fgetmPm(Lcom/android/server/pm/DexOptHelper;)Lcom/android/server/pm/PackageManagerService;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mCompilerStats:Lcom/android/server/pm/CompilerStats;

    invoke-virtual {v0}, Lcom/android/server/pm/CompilerStats;->maybeWriteAsync()Z

    .line 737
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    .line 739
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/art/model/DexoptResult;->getReason()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "inactive"

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 740
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/art/model/DexoptResult;->getPackageDexoptResults()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    nop

    if-eqz v2, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/art/model/DexoptResult$PackageDexoptResult;

    .line 741
    .restart local v2    # "pkgRes":Lcom/android/server/art/model/DexoptResult$PackageDexoptResult;
    invoke-virtual {v2}, Lcom/android/server/art/model/DexoptResult$PackageDexoptResult;->getStatus()I

    move-result v4

    const/16 v5, 0x14

    if-ne v4, v5, :cond_5

    .line 742
    const-wide/16 v4, 0x0

    .line 743
    .local v4, "pkgSizeBytes":J
    const-wide/16 v6, 0x0

    .line 745
    .local v6, "pkgSizeBeforeBytes":J
    invoke-virtual {v2}, Lcom/android/server/art/model/DexoptResult$PackageDexoptResult;->getDexContainerFileDexoptResults()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move-wide v13, v4

    move-wide v11, v6

    .end local v4    # "pkgSizeBytes":J
    .end local v6    # "pkgSizeBeforeBytes":J
    .local v11, "pkgSizeBeforeBytes":J
    .local v13, "pkgSizeBytes":J
    :goto_8
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/art/model/DexoptResult$DexContainerFileDexoptResult;

    .line 746
    .local v4, "dexRes":Lcom/android/server/art/model/DexoptResult$DexContainerFileDexoptResult;
    new-instance v5, Ljava/io/File;

    invoke-virtual {v4}, Lcom/android/server/art/model/DexoptResult$DexContainerFileDexoptResult;->getDexContainerFile()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v5

    .line 747
    .local v5, "dexContainerSize":J
    invoke-virtual {v4}, Lcom/android/server/art/model/DexoptResult$DexContainerFileDexoptResult;->getSizeBytes()J

    move-result-wide v9

    add-long/2addr v9, v5

    add-long/2addr v13, v9

    .line 748
    invoke-virtual {v4}, Lcom/android/server/art/model/DexoptResult$DexContainerFileDexoptResult;->getSizeBeforeBytes()J

    move-result-wide v9

    add-long/2addr v9, v5

    add-long/2addr v11, v9

    .line 749
    .end local v4    # "dexRes":Lcom/android/server/art/model/DexoptResult$DexContainerFileDexoptResult;
    .end local v5    # "dexContainerSize":J
    goto :goto_8

    .line 750
    :cond_4
    nop

    .line 751
    invoke-virtual {v2}, Lcom/android/server/art/model/DexoptResult$PackageDexoptResult;->getPackageName()Ljava/lang/String;

    move-result-object v10

    .line 750
    const/16 v9, 0x80

    const/4 v15, 0x0

    invoke-static/range {v9 .. v15}, Lcom/android/internal/util/FrameworkStatsLog;->write(ILjava/lang/String;JJZ)V

    .line 754
    .end local v2    # "pkgRes":Lcom/android/server/art/model/DexoptResult$PackageDexoptResult;
    .end local v11    # "pkgSizeBeforeBytes":J
    .end local v13    # "pkgSizeBytes":J
    :cond_5
    goto :goto_7

    .line 757
    :cond_6
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 758
    .local v0, "updatedPackages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/art/model/DexoptResult;->getPackageDexoptResults()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/art/model/DexoptResult$PackageDexoptResult;

    .line 759
    .local v4, "pkgRes":Lcom/android/server/art/model/DexoptResult$PackageDexoptResult;
    invoke-virtual {v4}, Lcom/android/server/art/model/DexoptResult$PackageDexoptResult;->hasUpdatedArtifacts()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 760
    invoke-virtual {v4}, Lcom/android/server/art/model/DexoptResult$PackageDexoptResult;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 762
    .end local v4    # "pkgRes":Lcom/android/server/art/model/DexoptResult$PackageDexoptResult;
    :cond_7
    goto :goto_9

    .line 763
    :cond_8
    invoke-virtual {v0}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_9

    .line 764
    const-class v2, Lcom/android/server/pinner/PinnerService;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pinner/PinnerService;

    .line 765
    invoke-virtual {v2, v0, v3}, Lcom/android/server/pinner/PinnerService;->update(Landroid/util/ArraySet;Z)V

    .line 767
    :cond_9
    return-void

    .line 737
    .end local v0    # "updatedPackages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x47de9523 -> :sswitch_2
        -0x23098d70 -> :sswitch_1
        -0xc5e4811 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        0xa -> :sswitch_5
        0x14 -> :sswitch_4
        0x1e -> :sswitch_3
    .end sparse-switch
.end method
