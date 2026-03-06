.class Lcom/android/server/appop/AppOpsService$2;
.super Ljava/lang/Object;
.source "AppOpsService.java"

# interfaces
.implements Lcom/android/server/appop/AppOpsUidStateTracker$UidStateChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/appop/AppOpsService;->getUidStateTracker()Lcom/android/server/appop/AppOpsUidStateTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/appop/AppOpsService;


# direct methods
.method constructor <init>(Lcom/android/server/appop/AppOpsService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/appop/AppOpsService;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 480
    iput-object p1, p0, Lcom/android/server/appop/AppOpsService$2;->this$0:Lcom/android/server/appop/AppOpsService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUidProcessDeath(I)V
    .locals 1
    .param p1, "uid"    # I

    .line 490
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$2;->this$0:Lcom/android/server/appop/AppOpsService;

    invoke-static {v0, p1}, Lcom/android/server/appop/AppOpsService;->-$$Nest$monUidProcessDeath(Lcom/android/server/appop/AppOpsService;I)V

    .line 491
    return-void
.end method

.method public onUidStateChanged(IIZ)V
    .locals 1
    .param p1, "uid"    # I
    .param p2, "uidState"    # I
    .param p3, "foregroundModeMayChange"    # Z

    .line 484
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$2;->this$0:Lcom/android/server/appop/AppOpsService;

    .line 485
    invoke-static {v0, p1, p2, p3}, Lcom/android/server/appop/AppOpsService;->-$$Nest$monUidStateChanged(Lcom/android/server/appop/AppOpsService;IIZ)V

    .line 486
    return-void
.end method
