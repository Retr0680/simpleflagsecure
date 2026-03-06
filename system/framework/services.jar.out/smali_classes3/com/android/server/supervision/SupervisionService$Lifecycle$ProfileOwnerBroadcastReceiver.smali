.class final Lcom/android/server/supervision/SupervisionService$Lifecycle$ProfileOwnerBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SupervisionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/supervision/SupervisionService$Lifecycle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ProfileOwnerBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/supervision/SupervisionService$Lifecycle;


# direct methods
.method private constructor <init>(Lcom/android/server/supervision/SupervisionService$Lifecycle;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 415
    iput-object p1, p0, Lcom/android/server/supervision/SupervisionService$Lifecycle$ProfileOwnerBroadcastReceiver;->this$0:Lcom/android/server/supervision/SupervisionService$Lifecycle;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/supervision/SupervisionService$Lifecycle;Lcom/android/server/supervision/SupervisionService-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/supervision/SupervisionService$Lifecycle$ProfileOwnerBroadcastReceiver;-><init>(Lcom/android/server/supervision/SupervisionService$Lifecycle;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 418
    iget-object v0, p0, Lcom/android/server/supervision/SupervisionService$Lifecycle$ProfileOwnerBroadcastReceiver;->this$0:Lcom/android/server/supervision/SupervisionService$Lifecycle;

    invoke-static {v0}, Lcom/android/server/supervision/SupervisionService$Lifecycle;->-$$Nest$fgetmSupervisionService(Lcom/android/server/supervision/SupervisionService$Lifecycle;)Lcom/android/server/supervision/SupervisionService;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/BroadcastReceiver;->getSendingUserId()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/server/supervision/SupervisionService;->-$$Nest$msyncStateWithDevicePolicyManager(Lcom/android/server/supervision/SupervisionService;I)V

    .line 419
    return-void
.end method
