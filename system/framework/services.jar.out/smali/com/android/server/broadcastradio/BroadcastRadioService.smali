.class public final Lcom/android/server/broadcastradio/BroadcastRadioService;
.super Lcom/android/server/SystemService;
.source "BroadcastRadioService.java"


# instance fields
.field private final mServiceImpl:Landroid/hardware/radio/IRadioService;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 33
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 34
    invoke-static {}, Lcom/android/server/broadcastradio/IRadioServiceAidlImpl;->getServicesNames()Ljava/util/ArrayList;

    move-result-object v0

    .line 35
    .local v0, "serviceNameList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v1, Lcom/android/server/broadcastradio/RadioServiceUserControllerImpl;

    invoke-direct {v1}, Lcom/android/server/broadcastradio/RadioServiceUserControllerImpl;-><init>()V

    .line 36
    .local v1, "userController":Lcom/android/server/broadcastradio/RadioServiceUserController;
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Lcom/android/server/broadcastradio/IRadioServiceHidlImpl;

    invoke-direct {v2, p0, v1}, Lcom/android/server/broadcastradio/IRadioServiceHidlImpl;-><init>(Lcom/android/server/broadcastradio/BroadcastRadioService;Lcom/android/server/broadcastradio/RadioServiceUserController;)V

    goto :goto_0

    .line 37
    :cond_0
    new-instance v2, Lcom/android/server/broadcastradio/IRadioServiceAidlImpl;

    invoke-direct {v2, p0, v0, v1}, Lcom/android/server/broadcastradio/IRadioServiceAidlImpl;-><init>(Lcom/android/server/broadcastradio/BroadcastRadioService;Ljava/util/List;Lcom/android/server/broadcastradio/RadioServiceUserController;)V

    :goto_0
    iput-object v2, p0, Lcom/android/server/broadcastradio/BroadcastRadioService;->mServiceImpl:Landroid/hardware/radio/IRadioService;

    .line 38
    return-void
.end method


# virtual methods
.method enforcePolicyAccess()V
    .locals 2

    .line 47
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.ACCESS_BROADCAST_RADIO"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 51
    return-void

    .line 49
    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "ACCESS_BROADCAST_RADIO permission not granted"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onStart()V
    .locals 2

    .line 42
    iget-object v0, p0, Lcom/android/server/broadcastradio/BroadcastRadioService;->mServiceImpl:Landroid/hardware/radio/IRadioService;

    invoke-interface {v0}, Landroid/hardware/radio/IRadioService;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const-string v1, "broadcastradio"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 43
    return-void
.end method
