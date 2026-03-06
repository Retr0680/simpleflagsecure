.class Lcom/android/server/location/provider/proxy/ProxyGnssAssistanceProvider$1;
.super Ljava/lang/Object;
.source "ProxyGnssAssistanceProvider.java"

# interfaces
.implements Lcom/android/server/servicewatcher/ServiceWatcher$BinderOperation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/location/provider/proxy/ProxyGnssAssistanceProvider;->request(Landroid/location/provider/IGnssAssistanceCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Landroid/location/provider/IGnssAssistanceCallback;


# direct methods
.method constructor <init>(Lcom/android/server/location/provider/proxy/ProxyGnssAssistanceProvider;Landroid/location/provider/IGnssAssistanceCallback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/location/provider/proxy/ProxyGnssAssistanceProvider;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 80
    iput-object p2, p0, Lcom/android/server/location/provider/proxy/ProxyGnssAssistanceProvider$1;->val$callback:Landroid/location/provider/IGnssAssistanceCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "t"    # Ljava/lang/Throwable;

    .line 89
    :try_start_0
    const-string v0, "GnssAssistanceProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error on requesting GnssAssistance: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    iget-object v0, p0, Lcom/android/server/location/provider/proxy/ProxyGnssAssistanceProvider$1;->val$callback:Landroid/location/provider/IGnssAssistanceCallback;

    invoke-interface {v0}, Landroid/location/provider/IGnssAssistanceCallback;->onError()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    goto :goto_0

    .line 91
    :catch_0
    move-exception v0

    .line 94
    :goto_0
    return-void
.end method

.method public run(Landroid/os/IBinder;)V
    .locals 2
    .param p1, "binder"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 83
    invoke-static {p1}, Landroid/location/provider/IGnssAssistanceProvider$Stub;->asInterface(Landroid/os/IBinder;)Landroid/location/provider/IGnssAssistanceProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/location/provider/proxy/ProxyGnssAssistanceProvider$1;->val$callback:Landroid/location/provider/IGnssAssistanceCallback;

    invoke-interface {v0, v1}, Landroid/location/provider/IGnssAssistanceProvider;->request(Landroid/location/provider/IGnssAssistanceCallback;)V

    .line 84
    return-void
.end method
