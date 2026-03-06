.class Lcom/android/server/am/ProcessStateController$GlobalState;
.super Ljava/lang/Object;
.source "ProcessStateController.java"

# interfaces
.implements Lcom/android/server/am/OomAdjuster$GlobalState;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ProcessStateController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GlobalState"
.end annotation


# instance fields
.field public final backupTargets:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/am/ProcessRecord;",
            ">;"
        }
    .end annotation
.end field

.field public isAwake:Z

.field public isLastMemoryLevelNormal:Z


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/ProcessStateController$GlobalState;->isAwake:Z

    .line 115
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/ProcessStateController$GlobalState;->backupTargets:Landroid/util/SparseArray;

    .line 116
    iput-boolean v0, p0, Lcom/android/server/am/ProcessStateController$GlobalState;->isLastMemoryLevelNormal:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/am/ProcessStateController-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/am/ProcessStateController$GlobalState;-><init>()V

    return-void
.end method


# virtual methods
.method public getBackupTarget(I)Lcom/android/server/am/ProcessRecord;
    .locals 1
    .param p1, "userId"    # I

    .line 123
    iget-object v0, p0, Lcom/android/server/am/ProcessStateController$GlobalState;->backupTargets:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ProcessRecord;

    return-object v0
.end method

.method public isAwake()Z
    .locals 1

    .line 119
    iget-boolean v0, p0, Lcom/android/server/am/ProcessStateController$GlobalState;->isAwake:Z

    return v0
.end method

.method public isLastMemoryLevelNormal()Z
    .locals 1

    .line 127
    iget-boolean v0, p0, Lcom/android/server/am/ProcessStateController$GlobalState;->isLastMemoryLevelNormal:Z

    return v0
.end method
