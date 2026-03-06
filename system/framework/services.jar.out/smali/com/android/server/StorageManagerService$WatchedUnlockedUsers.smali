.class Lcom/android/server/StorageManagerService$WatchedUnlockedUsers;
.super Ljava/lang/Object;
.source "StorageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/StorageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WatchedUnlockedUsers"
.end annotation


# instance fields
.field private users:[I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 438
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 437
    sget-object v0, Llibcore/util/EmptyArray;->INT:[I

    iput-object v0, p0, Lcom/android/server/StorageManagerService$WatchedUnlockedUsers;->users:[I

    .line 439
    invoke-direct {p0}, Lcom/android/server/StorageManagerService$WatchedUnlockedUsers;->invalidateIsUserUnlockedCache()V

    .line 440
    return-void
.end method

.method private invalidateIsUserUnlockedCache()V
    .locals 0

    .line 469
    invoke-static {}, Landroid/os/UserManager;->invalidateIsUserUnlockedCache()V

    .line 470
    return-void
.end method


# virtual methods
.method public all()[I
    .locals 1

    .line 462
    iget-object v0, p0, Lcom/android/server/StorageManagerService$WatchedUnlockedUsers;->users:[I

    return-object v0
.end method

.method public append(I)V
    .locals 1
    .param p1, "userId"    # I

    .line 442
    iget-object v0, p0, Lcom/android/server/StorageManagerService$WatchedUnlockedUsers;->users:[I

    invoke-static {v0, p1}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/StorageManagerService$WatchedUnlockedUsers;->users:[I

    .line 443
    invoke-direct {p0}, Lcom/android/server/StorageManagerService$WatchedUnlockedUsers;->invalidateIsUserUnlockedCache()V

    .line 444
    invoke-static {}, Landroid/os/storage/StorageManager;->invalidateVolumeListCache()V

    .line 445
    return-void
.end method

.method public appendAll([I)V
    .locals 4
    .param p1, "userIds"    # [I

    .line 447
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget v2, p1, v1

    .line 448
    .local v2, "userId":I
    iget-object v3, p0, Lcom/android/server/StorageManagerService$WatchedUnlockedUsers;->users:[I

    invoke-static {v3, v2}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/StorageManagerService$WatchedUnlockedUsers;->users:[I

    .line 447
    .end local v2    # "userId":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 450
    :cond_0
    invoke-direct {p0}, Lcom/android/server/StorageManagerService$WatchedUnlockedUsers;->invalidateIsUserUnlockedCache()V

    .line 451
    invoke-static {}, Landroid/os/storage/StorageManager;->invalidateVolumeListCache()V

    .line 452
    return-void
.end method

.method public contains(I)Z
    .locals 1
    .param p1, "userId"    # I

    .line 459
    iget-object v0, p0, Lcom/android/server/StorageManagerService$WatchedUnlockedUsers;->users:[I

    invoke-static {v0, p1}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v0

    return v0
.end method

.method public remove(I)V
    .locals 1
    .param p1, "userId"    # I

    .line 454
    iget-object v0, p0, Lcom/android/server/StorageManagerService$WatchedUnlockedUsers;->users:[I

    invoke-static {v0, p1}, Lcom/android/internal/util/ArrayUtils;->removeInt([II)[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/StorageManagerService$WatchedUnlockedUsers;->users:[I

    .line 455
    invoke-direct {p0}, Lcom/android/server/StorageManagerService$WatchedUnlockedUsers;->invalidateIsUserUnlockedCache()V

    .line 456
    invoke-static {}, Landroid/os/storage/StorageManager;->invalidateVolumeListCache()V

    .line 457
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 466
    iget-object v0, p0, Lcom/android/server/StorageManagerService$WatchedUnlockedUsers;->users:[I

    invoke-static {v0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
