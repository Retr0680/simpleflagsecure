.class Lcom/android/server/tv/TvInputManagerService$MyPackageMonitor;
.super Lcom/android/internal/content/PackageMonitor;
.source "TvInputManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/tv/TvInputManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyPackageMonitor"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/tv/TvInputManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/tv/TvInputManagerService;Z)V
    .locals 0
    .param p2, "supportsPackageRestartQuery"    # Z
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

    .line 306
    iput-object p1, p0, Lcom/android/server/tv/TvInputManagerService$MyPackageMonitor;->this$0:Lcom/android/server/tv/TvInputManagerService;

    .line 307
    invoke-direct {p0, p2}, Lcom/android/internal/content/PackageMonitor;-><init>(Z)V

    .line 308
    return-void
.end method

.method private buildTvInputList([Ljava/lang/String;)V
    .locals 4
    .param p1, "packages"    # [Ljava/lang/String;

    .line 311
    invoke-virtual {p0}, Lcom/android/internal/content/PackageMonitor;->getChangingUserId()I

    move-result v0

    .line 312
    .local v0, "userId":I
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$MyPackageMonitor;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$fgetmLock(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 313
    :try_start_0
    iget-object v2, p0, Lcom/android/server/tv/TvInputManagerService$MyPackageMonitor;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v2}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$fgetmCurrentUserId(Lcom/android/server/tv/TvInputManagerService;)I

    move-result v2

    if-eq v2, v0, :cond_0

    iget-object v2, p0, Lcom/android/server/tv/TvInputManagerService$MyPackageMonitor;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v2}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$fgetmRunningProfiles(Lcom/android/server/tv/TvInputManagerService;)Ljava/util/Set;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    goto :goto_0

    .line 317
    :catchall_0
    move-exception v2

    goto :goto_1

    .line 314
    :goto_0
    iget-object v2, p0, Lcom/android/server/tv/TvInputManagerService$MyPackageMonitor;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v2, v0, p1}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$mbuildTvInputListLocked(Lcom/android/server/tv/TvInputManagerService;I[Ljava/lang/String;)V

    .line 315
    iget-object v2, p0, Lcom/android/server/tv/TvInputManagerService$MyPackageMonitor;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v2, v0}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$mbuildTvContentRatingSystemListLocked(Lcom/android/server/tv/TvInputManagerService;I)V

    .line 317
    :cond_1
    monitor-exit v1

    .line 318
    return-void

    .line 317
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method


# virtual methods
.method public onPackageChanged(Ljava/lang/String;I[Ljava/lang/String;)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "components"    # [Ljava/lang/String;

    .line 372
    const/4 v0, 0x1

    return v0
.end method

.method public onPackageUpdateFinished(Ljava/lang/String;I)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 325
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/tv/TvInputManagerService$MyPackageMonitor;->buildTvInputList([Ljava/lang/String;)V

    .line 326
    return-void
.end method

.method public onPackagesAvailable([Ljava/lang/String;)V
    .locals 1
    .param p1, "packages"    # [Ljava/lang/String;

    .line 335
    invoke-virtual {p0}, Lcom/android/internal/content/PackageMonitor;->isReplacing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 336
    invoke-direct {p0, p1}, Lcom/android/server/tv/TvInputManagerService$MyPackageMonitor;->buildTvInputList([Ljava/lang/String;)V

    .line 338
    :cond_0
    return-void
.end method

.method public onPackagesUnavailable([Ljava/lang/String;)V
    .locals 1
    .param p1, "packages"    # [Ljava/lang/String;

    .line 348
    invoke-virtual {p0}, Lcom/android/internal/content/PackageMonitor;->isReplacing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 349
    invoke-direct {p0, p1}, Lcom/android/server/tv/TvInputManagerService$MyPackageMonitor;->buildTvInputList([Ljava/lang/String;)V

    .line 351
    :cond_0
    return-void
.end method

.method public onSomePackagesChanged()V
    .locals 1

    .line 358
    invoke-virtual {p0}, Lcom/android/internal/content/PackageMonitor;->isReplacing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 362
    return-void

    .line 364
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/tv/TvInputManagerService$MyPackageMonitor;->buildTvInputList([Ljava/lang/String;)V

    .line 365
    return-void
.end method
