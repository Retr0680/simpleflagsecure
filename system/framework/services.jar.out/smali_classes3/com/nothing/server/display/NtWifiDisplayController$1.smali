.class Lcom/nothing/server/display/NtWifiDisplayController$1;
.super Ljava/lang/Object;
.source "NtWifiDisplayController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nothing/server/display/NtWifiDisplayController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nothing/server/display/NtWifiDisplayController;


# direct methods
.method constructor <init>(Lcom/nothing/server/display/NtWifiDisplayController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/nothing/server/display/NtWifiDisplayController;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 85
    iput-object p1, p0, Lcom/nothing/server/display/NtWifiDisplayController$1;->this$0:Lcom/nothing/server/display/NtWifiDisplayController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 89
    iget-object v0, p0, Lcom/nothing/server/display/NtWifiDisplayController$1;->this$0:Lcom/nothing/server/display/NtWifiDisplayController;

    invoke-static {v0}, Lcom/nothing/server/display/NtWifiDisplayController;->-$$Nest$fgetmController(Lcom/nothing/server/display/NtWifiDisplayController;)Lcom/android/server/display/WifiDisplayController;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/display/WifiDisplayController;->mAvailableWifiDisplayPeers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    const-string v3, "NtWifiDisplayController"

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 90
    .local v1, "device":Landroid/net/wifi/p2p/WifiP2pDevice;
    invoke-static {}, Lcom/nothing/server/display/NtWifiDisplayController;->-$$Nest$sfgetDEBUG()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 91
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\t"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/nothing/server/display/NtWifiDisplayController;->-$$Nest$smdescribeWifiP2pDevice(Landroid/net/wifi/p2p/WifiP2pDevice;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    :cond_0
    iget-object v4, v1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    iget-object v5, p0, Lcom/nothing/server/display/NtWifiDisplayController$1;->this$0:Lcom/nothing/server/display/NtWifiDisplayController;

    invoke-static {v5}, Lcom/nothing/server/display/NtWifiDisplayController;->-$$Nest$fgetmReConnectDevice(Lcom/nothing/server/display/NtWifiDisplayController;)Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v5

    iget-object v5, v5, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 95
    const-string v0, "connect() in mReConnect. Set mReConnecting as true"

    invoke-static {v3, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    iget-object v0, p0, Lcom/nothing/server/display/NtWifiDisplayController$1;->this$0:Lcom/nothing/server/display/NtWifiDisplayController;

    invoke-static {v0, v2}, Lcom/nothing/server/display/NtWifiDisplayController;->-$$Nest$fputmReConnectDevice(Lcom/nothing/server/display/NtWifiDisplayController;Landroid/net/wifi/p2p/WifiP2pDevice;)V

    .line 97
    iget-object v0, p0, Lcom/nothing/server/display/NtWifiDisplayController$1;->this$0:Lcom/nothing/server/display/NtWifiDisplayController;

    invoke-static {v0}, Lcom/nothing/server/display/NtWifiDisplayController;->-$$Nest$fgetmController(Lcom/nothing/server/display/NtWifiDisplayController;)Lcom/android/server/display/WifiDisplayController;

    move-result-object v0

    iget-object v2, v1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/android/server/display/WifiDisplayController;->requestConnect(Ljava/lang/String;)V

    .line 98
    return-void

    .line 94
    :cond_1
    nop

    .line 100
    .end local v1    # "device":Landroid/net/wifi/p2p/WifiP2pDevice;
    goto :goto_0

    .line 102
    :cond_2
    iget-object v0, p0, Lcom/nothing/server/display/NtWifiDisplayController$1;->this$0:Lcom/nothing/server/display/NtWifiDisplayController;

    iget-object v1, p0, Lcom/nothing/server/display/NtWifiDisplayController$1;->this$0:Lcom/nothing/server/display/NtWifiDisplayController;

    invoke-static {v1}, Lcom/nothing/server/display/NtWifiDisplayController;->-$$Nest$fgetmReConnection_Timeout_Remain_Seconds(Lcom/nothing/server/display/NtWifiDisplayController;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Lcom/nothing/server/display/NtWifiDisplayController;->-$$Nest$fputmReConnection_Timeout_Remain_Seconds(Lcom/nothing/server/display/NtWifiDisplayController;I)V

    .line 104
    iget-object v0, p0, Lcom/nothing/server/display/NtWifiDisplayController$1;->this$0:Lcom/nothing/server/display/NtWifiDisplayController;

    invoke-static {v0}, Lcom/nothing/server/display/NtWifiDisplayController;->-$$Nest$fgetmReConnection_Timeout_Remain_Seconds(Lcom/nothing/server/display/NtWifiDisplayController;)I

    move-result v0

    if-lez v0, :cond_3

    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "post mReconnect, s:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/nothing/server/display/NtWifiDisplayController$1;->this$0:Lcom/nothing/server/display/NtWifiDisplayController;

    invoke-static {v1}, Lcom/nothing/server/display/NtWifiDisplayController;->-$$Nest$fgetmReConnection_Timeout_Remain_Seconds(Lcom/nothing/server/display/NtWifiDisplayController;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    iget-object v0, p0, Lcom/nothing/server/display/NtWifiDisplayController$1;->this$0:Lcom/nothing/server/display/NtWifiDisplayController;

    invoke-static {v0}, Lcom/nothing/server/display/NtWifiDisplayController;->-$$Nest$fgetmHandler(Lcom/nothing/server/display/NtWifiDisplayController;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/nothing/server/display/NtWifiDisplayController$1;->this$0:Lcom/nothing/server/display/NtWifiDisplayController;

    invoke-static {v1}, Lcom/nothing/server/display/NtWifiDisplayController;->-$$Nest$fgetmReConnect(Lcom/nothing/server/display/NtWifiDisplayController;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 117
    return-void

    .line 109
    :cond_3
    const-string v0, "reconnect timeout!"

    invoke-static {v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    iget-object v0, p0, Lcom/nothing/server/display/NtWifiDisplayController$1;->this$0:Lcom/nothing/server/display/NtWifiDisplayController;

    invoke-static {v0}, Lcom/nothing/server/display/NtWifiDisplayController;->-$$Nest$fgetmContext(Lcom/nothing/server/display/NtWifiDisplayController;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "Wireless display disconnected."

    const/4 v3, 0x0

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 111
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 112
    iget-object v0, p0, Lcom/nothing/server/display/NtWifiDisplayController$1;->this$0:Lcom/nothing/server/display/NtWifiDisplayController;

    invoke-static {v0, v2}, Lcom/nothing/server/display/NtWifiDisplayController;->-$$Nest$fputmReConnectDevice(Lcom/nothing/server/display/NtWifiDisplayController;Landroid/net/wifi/p2p/WifiP2pDevice;)V

    .line 113
    iget-object v0, p0, Lcom/nothing/server/display/NtWifiDisplayController$1;->this$0:Lcom/nothing/server/display/NtWifiDisplayController;

    invoke-static {v0, v3}, Lcom/nothing/server/display/NtWifiDisplayController;->-$$Nest$fputmReConnection_Timeout_Remain_Seconds(Lcom/nothing/server/display/NtWifiDisplayController;I)V

    .line 114
    iget-object v0, p0, Lcom/nothing/server/display/NtWifiDisplayController$1;->this$0:Lcom/nothing/server/display/NtWifiDisplayController;

    invoke-static {v0}, Lcom/nothing/server/display/NtWifiDisplayController;->-$$Nest$fgetmHandler(Lcom/nothing/server/display/NtWifiDisplayController;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/nothing/server/display/NtWifiDisplayController$1;->this$0:Lcom/nothing/server/display/NtWifiDisplayController;

    invoke-static {v1}, Lcom/nothing/server/display/NtWifiDisplayController;->-$$Nest$fgetmReConnect(Lcom/nothing/server/display/NtWifiDisplayController;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 115
    return-void
.end method
