.class public final Lcom/android/server/input/InputManagerService$Lifecycle;
.super Lcom/android/server/SystemService;
.source "InputManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/input/InputManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Lifecycle"
.end annotation


# instance fields
.field private final mService:Lcom/android/server/input/InputManagerService;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 3700
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 3701
    new-instance v0, Lcom/android/server/input/InputManagerService;

    invoke-direct {v0, p1}, Lcom/android/server/input/InputManagerService;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/input/InputManagerService$Lifecycle;->mService:Lcom/android/server/input/InputManagerService;

    .line 3702
    return-void
.end method


# virtual methods
.method public getService()Lcom/android/server/input/InputManagerService;
    .locals 1

    .line 3721
    iget-object v0, p0, Lcom/android/server/input/InputManagerService$Lifecycle;->mService:Lcom/android/server/input/InputManagerService;

    return-object v0
.end method

.method public onBootPhase(I)V
    .locals 1
    .param p1, "phase"    # I

    .line 3712
    iget-object v0, p0, Lcom/android/server/input/InputManagerService$Lifecycle;->mService:Lcom/android/server/input/InputManagerService;

    invoke-static {v0, p1}, Lcom/android/server/input/InputManagerService;->-$$Nest$monBootPhase(Lcom/android/server/input/InputManagerService;I)V

    .line 3713
    return-void
.end method

.method public onStart()V
    .locals 4

    .line 3706
    iget-object v0, p0, Lcom/android/server/input/InputManagerService$Lifecycle;->mService:Lcom/android/server/input/InputManagerService;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string/jumbo v3, "input"

    invoke-virtual {p0, v3, v0, v1, v2}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;ZI)V

    .line 3708
    return-void
.end method

.method public onUserSwitching(Lcom/android/server/SystemService$TargetUser;Lcom/android/server/SystemService$TargetUser;)V
    .locals 1
    .param p1, "from"    # Lcom/android/server/SystemService$TargetUser;
    .param p2, "to"    # Lcom/android/server/SystemService$TargetUser;

    .line 3717
    iget-object v0, p0, Lcom/android/server/input/InputManagerService$Lifecycle;->mService:Lcom/android/server/input/InputManagerService;

    invoke-static {v0, p1, p2}, Lcom/android/server/input/InputManagerService;->-$$Nest$monUserSwitching(Lcom/android/server/input/InputManagerService;Lcom/android/server/SystemService$TargetUser;Lcom/android/server/SystemService$TargetUser;)V

    .line 3718
    return-void
.end method
