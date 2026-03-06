.class public final synthetic Lcom/android/server/am/AppExitInfoTracker$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Landroid/util/ArraySet;


# direct methods
.method public synthetic constructor <init>(Landroid/util/ArraySet;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/AppExitInfoTracker$$ExternalSyntheticLambda9;->f$0:Landroid/util/ArraySet;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/android/server/am/AppExitInfoTracker$$ExternalSyntheticLambda9;->f$0:Landroid/util/ArraySet;

    check-cast p1, Landroid/app/ApplicationExitInfo;

    invoke-static {v0, p1}, Lcom/android/server/am/AppExitInfoTracker;->$r8$lambda$PBal3LhXhlJzkyZGQhM9r0rLIVk(Landroid/util/ArraySet;Landroid/app/ApplicationExitInfo;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method
