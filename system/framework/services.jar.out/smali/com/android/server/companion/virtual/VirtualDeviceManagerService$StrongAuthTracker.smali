.class Lcom/android/server/companion/virtual/VirtualDeviceManagerService$StrongAuthTracker;
.super Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;
.source "VirtualDeviceManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/companion/virtual/VirtualDeviceManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StrongAuthTracker"
.end annotation


# instance fields
.field final mUsersInLockdown:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/companion/virtual/VirtualDeviceManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/companion/virtual/VirtualDeviceManagerService;Landroid/content/Context;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;
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

    .line 148
    iput-object p1, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$StrongAuthTracker;->this$0:Lcom/android/server/companion/virtual/VirtualDeviceManagerService;

    .line 149
    invoke-direct {p0, p2}, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;-><init>(Landroid/content/Context;)V

    .line 146
    new-instance p1, Landroid/util/ArraySet;

    invoke-direct {p1}, Landroid/util/ArraySet;-><init>()V

    iput-object p1, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$StrongAuthTracker;->mUsersInLockdown:Ljava/util/Set;

    .line 150
    return-void
.end method


# virtual methods
.method public declared-synchronized onStrongAuthRequiredChanged(I)V
    .locals 2
    .param p1, "userId"    # I

    monitor-enter p0

    .line 154
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;->getStrongAuthForUser(I)I

    move-result v0

    and-int/lit8 v0, v0, 0x20

    if-lez v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$StrongAuthTracker;->mUsersInLockdown:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$StrongAuthTracker;->mUsersInLockdown:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 156
    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$StrongAuthTracker;->this$0:Lcom/android/server/companion/virtual/VirtualDeviceManagerService;

    invoke-virtual {v0, v1}, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->onLockdownChanged(Z)V

    goto :goto_0

    .line 153
    .end local p0    # "this":Lcom/android/server/companion/virtual/VirtualDeviceManagerService$StrongAuthTracker;
    .end local p1    # "userId":I
    :catchall_0
    move-exception p1

    goto :goto_1

    .line 158
    .restart local p1    # "userId":I
    :cond_0
    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$StrongAuthTracker;->mUsersInLockdown:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$StrongAuthTracker;->mUsersInLockdown:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 159
    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$StrongAuthTracker;->this$0:Lcom/android/server/companion/virtual/VirtualDeviceManagerService;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->onLockdownChanged(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 161
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 153
    .end local p1    # "userId":I
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
