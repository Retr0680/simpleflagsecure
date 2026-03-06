.class abstract Lcom/android/server/wm/SnapshotPersistQueue$WriteQueueItem;
.super Ljava/lang/Object;
.source "SnapshotPersistQueue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/SnapshotPersistQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "WriteQueueItem"
.end annotation


# instance fields
.field protected final mPersistInfoProvider:Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;

.field protected final mUserId:I


# direct methods
.method constructor <init>(Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;I)V
    .locals 0
    .param p1, "persistInfoProvider"    # Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;
    .param p2, "userId"    # I

    .line 281
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 282
    iput-object p1, p0, Lcom/android/server/wm/SnapshotPersistQueue$WriteQueueItem;->mPersistInfoProvider:Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;

    .line 283
    iput p2, p0, Lcom/android/server/wm/SnapshotPersistQueue$WriteQueueItem;->mUserId:I

    .line 284
    return-void
.end method


# virtual methods
.method isReady(Lcom/android/server/pm/UserManagerInternal;)Z
    .locals 1
    .param p1, "userManager"    # Lcom/android/server/pm/UserManagerInternal;

    .line 289
    iget v0, p0, Lcom/android/server/wm/SnapshotPersistQueue$WriteQueueItem;->mUserId:I

    invoke-virtual {p1, v0}, Lcom/android/server/pm/UserManagerInternal;->isUserUnlocked(I)Z

    move-result v0

    return v0
.end method

.method onDequeuedLocked()V
    .locals 0

    .line 304
    return-void
.end method

.method onQueuedLocked()V
    .locals 0

    .line 298
    return-void
.end method

.method abstract write()V
.end method
