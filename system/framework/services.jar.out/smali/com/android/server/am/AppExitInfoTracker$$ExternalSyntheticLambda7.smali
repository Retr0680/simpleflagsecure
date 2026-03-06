.class public final synthetic Lcom/android/server/am/AppExitInfoTracker$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/BiFunction;


# instance fields
.field public final synthetic f$0:Lcom/android/server/am/AppExitInfoTracker;

.field public final synthetic f$1:I

.field public final synthetic f$2:I

.field public final synthetic f$3:[Z

.field public final synthetic f$4:Ljava/lang/Integer;

.field public final synthetic f$5:Ljava/lang/Integer;

.field public final synthetic f$6:Ljava/lang/Long;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/AppExitInfoTracker;II[ZLjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Long;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/AppExitInfoTracker$$ExternalSyntheticLambda7;->f$0:Lcom/android/server/am/AppExitInfoTracker;

    iput p2, p0, Lcom/android/server/am/AppExitInfoTracker$$ExternalSyntheticLambda7;->f$1:I

    iput p3, p0, Lcom/android/server/am/AppExitInfoTracker$$ExternalSyntheticLambda7;->f$2:I

    iput-object p4, p0, Lcom/android/server/am/AppExitInfoTracker$$ExternalSyntheticLambda7;->f$3:[Z

    iput-object p5, p0, Lcom/android/server/am/AppExitInfoTracker$$ExternalSyntheticLambda7;->f$4:Ljava/lang/Integer;

    iput-object p6, p0, Lcom/android/server/am/AppExitInfoTracker$$ExternalSyntheticLambda7;->f$5:Ljava/lang/Integer;

    iput-object p7, p0, Lcom/android/server/am/AppExitInfoTracker$$ExternalSyntheticLambda7;->f$6:Ljava/lang/Long;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    .line 0
    iget-object v0, p0, Lcom/android/server/am/AppExitInfoTracker$$ExternalSyntheticLambda7;->f$0:Lcom/android/server/am/AppExitInfoTracker;

    iget v1, p0, Lcom/android/server/am/AppExitInfoTracker$$ExternalSyntheticLambda7;->f$1:I

    iget v2, p0, Lcom/android/server/am/AppExitInfoTracker$$ExternalSyntheticLambda7;->f$2:I

    iget-object v3, p0, Lcom/android/server/am/AppExitInfoTracker$$ExternalSyntheticLambda7;->f$3:[Z

    iget-object v4, p0, Lcom/android/server/am/AppExitInfoTracker$$ExternalSyntheticLambda7;->f$4:Ljava/lang/Integer;

    iget-object v5, p0, Lcom/android/server/am/AppExitInfoTracker$$ExternalSyntheticLambda7;->f$5:Ljava/lang/Integer;

    iget-object v6, p0, Lcom/android/server/am/AppExitInfoTracker$$ExternalSyntheticLambda7;->f$6:Ljava/lang/Long;

    move-object v7, p1

    check-cast v7, Ljava/lang/String;

    move-object v8, p2

    check-cast v8, Landroid/util/SparseArray;

    invoke-static/range {v0 .. v8}, Lcom/android/server/am/AppExitInfoTracker;->$r8$lambda$e9BXcnIkbk10cETntxBOeT7VHoQ(Lcom/android/server/am/AppExitInfoTracker;II[ZLjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/String;Landroid/util/SparseArray;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method
