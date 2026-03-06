.class Lcom/android/server/wm/TransitionController$QueuedTransition;
.super Ljava/lang/Object;
.source "TransitionController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/TransitionController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "QueuedTransition"
.end annotation


# instance fields
.field final mLegacySync:Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;

.field final mOnStartCollect:Lcom/android/server/wm/TransitionController$OnStartCollect;

.field final mTransition:Lcom/android/server/wm/Transition;


# direct methods
.method constructor <init>(Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;Lcom/android/server/wm/TransitionController$OnStartCollect;)V
    .locals 1
    .param p1, "legacySync"    # Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;
    .param p2, "onStartCollect"    # Lcom/android/server/wm/TransitionController$OnStartCollect;

    .line 200
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 201
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/TransitionController$QueuedTransition;->mTransition:Lcom/android/server/wm/Transition;

    .line 202
    iput-object p2, p0, Lcom/android/server/wm/TransitionController$QueuedTransition;->mOnStartCollect:Lcom/android/server/wm/TransitionController$OnStartCollect;

    .line 203
    iput-object p1, p0, Lcom/android/server/wm/TransitionController$QueuedTransition;->mLegacySync:Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;

    .line 204
    return-void
.end method

.method constructor <init>(Lcom/android/server/wm/Transition;Lcom/android/server/wm/TransitionController$OnStartCollect;)V
    .locals 1
    .param p1, "transition"    # Lcom/android/server/wm/Transition;
    .param p2, "onStartCollect"    # Lcom/android/server/wm/TransitionController$OnStartCollect;

    .line 194
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 195
    iput-object p1, p0, Lcom/android/server/wm/TransitionController$QueuedTransition;->mTransition:Lcom/android/server/wm/Transition;

    .line 196
    iput-object p2, p0, Lcom/android/server/wm/TransitionController$QueuedTransition;->mOnStartCollect:Lcom/android/server/wm/TransitionController$OnStartCollect;

    .line 197
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/TransitionController$QueuedTransition;->mLegacySync:Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;

    .line 198
    return-void
.end method
