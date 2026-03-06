.class public Lcom/android/server/supervision/SupervisionService$Lifecycle;
.super Lcom/android/server/SystemService;
.source "SupervisionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/supervision/SupervisionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Lifecycle"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/supervision/SupervisionService$Lifecycle$ProfileOwnerBroadcastReceiver;
    }
.end annotation


# instance fields
.field private final mSupervisionService:Lcom/android/server/supervision/SupervisionService;


# direct methods
.method static bridge synthetic -$$Nest$fgetmSupervisionService(Lcom/android/server/supervision/SupervisionService$Lifecycle;)Lcom/android/server/supervision/SupervisionService;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/supervision/SupervisionService$Lifecycle;->mSupervisionService:Lcom/android/server/supervision/SupervisionService;

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 375
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 376
    new-instance v0, Lcom/android/server/supervision/SupervisionService;

    invoke-direct {v0, p1}, Lcom/android/server/supervision/SupervisionService;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/supervision/SupervisionService$Lifecycle;->mSupervisionService:Lcom/android/server/supervision/SupervisionService;

    .line 377
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/server/supervision/SupervisionService;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "supervisionService"    # Lcom/android/server/supervision/SupervisionService;

    .line 381
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 382
    iput-object p2, p0, Lcom/android/server/supervision/SupervisionService$Lifecycle;->mSupervisionService:Lcom/android/server/supervision/SupervisionService;

    .line 383
    return-void
.end method


# virtual methods
.method public onStart()V
    .locals 2

    .line 387
    const-class v0, Landroid/app/supervision/SupervisionManagerInternal;

    iget-object v1, p0, Lcom/android/server/supervision/SupervisionService$Lifecycle;->mSupervisionService:Lcom/android/server/supervision/SupervisionService;

    iget-object v1, v1, Lcom/android/server/supervision/SupervisionService;->mInternal:Landroid/app/supervision/SupervisionManagerInternal;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/SystemService;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 388
    const-string v0, "supervision"

    iget-object v1, p0, Lcom/android/server/supervision/SupervisionService$Lifecycle;->mSupervisionService:Lcom/android/server/supervision/SupervisionService;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 389
    nop

    .line 392
    return-void
.end method

.method public onUserStarting(Lcom/android/server/SystemService$TargetUser;)V
    .locals 0
    .param p1, "user"    # Lcom/android/server/SystemService$TargetUser;

    .line 410
    nop

    .line 413
    return-void
.end method

.method registerProfileOwnerListener()V
    .locals 4

    .line 397
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 398
    .local v0, "poIntentFilter":Landroid/content/IntentFilter;
    const-string v1, "android.app.action.PROFILE_OWNER_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 399
    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 400
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/android/server/supervision/SupervisionService$Lifecycle$ProfileOwnerBroadcastReceiver;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/server/supervision/SupervisionService$Lifecycle$ProfileOwnerBroadcastReceiver;-><init>(Lcom/android/server/supervision/SupervisionService$Lifecycle;Lcom/android/server/supervision/SupervisionService-IA;)V

    .line 401
    invoke-virtual {v1, v2, v0, v3, v3}, Landroid/content/Context;->registerReceiverForAllUsers(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 406
    return-void
.end method
