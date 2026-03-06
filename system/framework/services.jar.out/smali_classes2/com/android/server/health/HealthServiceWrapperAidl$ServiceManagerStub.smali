.class interface abstract Lcom/android/server/health/HealthServiceWrapperAidl$ServiceManagerStub;
.super Ljava/lang/Object;
.source "HealthServiceWrapperAidl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/health/HealthServiceWrapperAidl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "ServiceManagerStub"
.end annotation


# virtual methods
.method public registerForNotifications(Ljava/lang/String;Landroid/os/IServiceCallback;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "callback"    # Landroid/os/IServiceCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 65
    invoke-static {p1, p2}, Landroid/os/ServiceManager;->registerForNotifications(Ljava/lang/String;Landroid/os/IServiceCallback;)V

    .line 66
    return-void
.end method

.method public waitForDeclaredService(Ljava/lang/String;)Landroid/hardware/health/IHealth;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 60
    invoke-static {p1}, Landroid/os/ServiceManager;->waitForDeclaredService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/health/IHealth$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/health/IHealth;

    move-result-object v0

    return-object v0
.end method
