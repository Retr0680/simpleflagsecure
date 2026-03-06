.class public final synthetic Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda17;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/appop/AppOpsService;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/appop/AppOpsService;I)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda17;->f$0:Lcom/android/server/appop/AppOpsService;

    iput p2, p0, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda17;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda17;->f$0:Lcom/android/server/appop/AppOpsService;

    iget v1, p0, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda17;->f$1:I

    invoke-static {v0, v1}, Lcom/android/server/appop/AppOpsService;->$r8$lambda$ivy8byvsjd3SaSvT4UqsaMoeNyY(Lcom/android/server/appop/AppOpsService;I)V

    return-void
.end method
