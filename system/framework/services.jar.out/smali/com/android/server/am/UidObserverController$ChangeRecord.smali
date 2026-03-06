.class final Lcom/android/server/am/UidObserverController$ChangeRecord;
.super Ljava/lang/Object;
.source "UidObserverController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/UidObserverController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ChangeRecord"
.end annotation


# instance fields
.field public capability:I

.field public change:I

.field public ephemeral:Z

.field public isPending:Z

.field public procAdj:I

.field public procState:I

.field public procStateSeq:J

.field public uid:I


# direct methods
.method constructor <init>()V
    .locals 0

    .line 508
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method copyTo(Lcom/android/server/am/UidObserverController$ChangeRecord;)V
    .locals 2
    .param p1, "changeRecord"    # Lcom/android/server/am/UidObserverController$ChangeRecord;

    .line 519
    iget-boolean v0, p0, Lcom/android/server/am/UidObserverController$ChangeRecord;->isPending:Z

    iput-boolean v0, p1, Lcom/android/server/am/UidObserverController$ChangeRecord;->isPending:Z

    .line 520
    iget v0, p0, Lcom/android/server/am/UidObserverController$ChangeRecord;->uid:I

    iput v0, p1, Lcom/android/server/am/UidObserverController$ChangeRecord;->uid:I

    .line 521
    iget v0, p0, Lcom/android/server/am/UidObserverController$ChangeRecord;->change:I

    iput v0, p1, Lcom/android/server/am/UidObserverController$ChangeRecord;->change:I

    .line 522
    iget v0, p0, Lcom/android/server/am/UidObserverController$ChangeRecord;->procState:I

    iput v0, p1, Lcom/android/server/am/UidObserverController$ChangeRecord;->procState:I

    .line 523
    iget v0, p0, Lcom/android/server/am/UidObserverController$ChangeRecord;->procAdj:I

    iput v0, p1, Lcom/android/server/am/UidObserverController$ChangeRecord;->procAdj:I

    .line 524
    iget v0, p0, Lcom/android/server/am/UidObserverController$ChangeRecord;->capability:I

    iput v0, p1, Lcom/android/server/am/UidObserverController$ChangeRecord;->capability:I

    .line 525
    iget-boolean v0, p0, Lcom/android/server/am/UidObserverController$ChangeRecord;->ephemeral:Z

    iput-boolean v0, p1, Lcom/android/server/am/UidObserverController$ChangeRecord;->ephemeral:Z

    .line 526
    iget-wide v0, p0, Lcom/android/server/am/UidObserverController$ChangeRecord;->procStateSeq:J

    iput-wide v0, p1, Lcom/android/server/am/UidObserverController$ChangeRecord;->procStateSeq:J

    .line 527
    return-void
.end method
