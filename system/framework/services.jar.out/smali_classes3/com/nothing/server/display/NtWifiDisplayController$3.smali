.class Lcom/nothing/server/display/NtWifiDisplayController$3;
.super Landroid/content/BroadcastReceiver;
.source "NtWifiDisplayController.java"


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

    .line 156
    iput-object p1, p0, Lcom/nothing/server/display/NtWifiDisplayController$3;->this$0:Lcom/nothing/server/display/NtWifiDisplayController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 159
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 162
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 163
    const-string v1, "networkInfo"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkInfo;

    .line 168
    .local v1, "info":Landroid/net/NetworkInfo;
    iget-object v2, p0, Lcom/nothing/server/display/NtWifiDisplayController$3;->this$0:Lcom/nothing/server/display/NtWifiDisplayController;

    invoke-static {v2}, Lcom/nothing/server/display/NtWifiDisplayController;->-$$Nest$fgetmController(Lcom/nothing/server/display/NtWifiDisplayController;)Lcom/android/server/display/WifiDisplayController;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/display/WifiDisplayController;->mConnectedDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    if-eqz v2, :cond_1

    .line 169
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v2

    .line 170
    .local v2, "state":Landroid/net/NetworkInfo$State;
    sget-object v3, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    const-string v4, "NtWifiDisplayController"

    const/4 v5, 0x1

    if-ne v2, v3, :cond_0

    iget-object v3, p0, Lcom/nothing/server/display/NtWifiDisplayController$3;->this$0:Lcom/nothing/server/display/NtWifiDisplayController;

    iget-boolean v3, v3, Lcom/nothing/server/display/NtWifiDisplayController;->mStopWifiScan:Z

    if-ne v3, v5, :cond_0

    .line 171
    const-string v3, "Resume WiFi scan/reconnect if WiFi is disconnected"

    invoke-static {v4, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    iget-object v3, p0, Lcom/nothing/server/display/NtWifiDisplayController$3;->this$0:Lcom/nothing/server/display/NtWifiDisplayController;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/nothing/server/display/NtWifiDisplayController;->stopWifiScan(Z)V

    .line 173
    iget-object v3, p0, Lcom/nothing/server/display/NtWifiDisplayController$3;->this$0:Lcom/nothing/server/display/NtWifiDisplayController;

    invoke-static {v3}, Lcom/nothing/server/display/NtWifiDisplayController;->-$$Nest$fgetmAlarmManager(Lcom/nothing/server/display/NtWifiDisplayController;)Landroid/app/AlarmManager;

    move-result-object v3

    iget-object v4, p0, Lcom/nothing/server/display/NtWifiDisplayController$3;->this$0:Lcom/nothing/server/display/NtWifiDisplayController;

    invoke-static {v4}, Lcom/nothing/server/display/NtWifiDisplayController;->-$$Nest$fgetmWifiScanTimerListener(Lcom/nothing/server/display/NtWifiDisplayController;)Landroid/app/AlarmManager$OnAlarmListener;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    .line 174
    iget-object v3, p0, Lcom/nothing/server/display/NtWifiDisplayController$3;->this$0:Lcom/nothing/server/display/NtWifiDisplayController;

    invoke-static {v3}, Lcom/nothing/server/display/NtWifiDisplayController;->-$$Nest$fgetmAlarmManager(Lcom/nothing/server/display/NtWifiDisplayController;)Landroid/app/AlarmManager;

    move-result-object v4

    .line 175
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    const-wide/32 v7, 0x186a0

    add-long v6, v5, v7

    iget-object v3, p0, Lcom/nothing/server/display/NtWifiDisplayController$3;->this$0:Lcom/nothing/server/display/NtWifiDisplayController;

    invoke-static {v3}, Lcom/nothing/server/display/NtWifiDisplayController;->-$$Nest$fgetmWifiScanTimerListener(Lcom/nothing/server/display/NtWifiDisplayController;)Landroid/app/AlarmManager$OnAlarmListener;

    move-result-object v9

    iget-object v3, p0, Lcom/nothing/server/display/NtWifiDisplayController$3;->this$0:Lcom/nothing/server/display/NtWifiDisplayController;

    invoke-static {v3}, Lcom/nothing/server/display/NtWifiDisplayController;->-$$Nest$fgetmHandler(Lcom/nothing/server/display/NtWifiDisplayController;)Landroid/os/Handler;

    move-result-object v10

    .line 174
    const/4 v5, 0x2

    const-string v8, "Set WiFi scan timer"

    invoke-virtual/range {v4 .. v10}, Landroid/app/AlarmManager;->set(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    goto :goto_0

    .line 178
    :cond_0
    sget-object v3, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v2, v3, :cond_1

    iget-object v3, p0, Lcom/nothing/server/display/NtWifiDisplayController$3;->this$0:Lcom/nothing/server/display/NtWifiDisplayController;

    iget-boolean v3, v3, Lcom/nothing/server/display/NtWifiDisplayController;->mStopWifiScan:Z

    if-nez v3, :cond_1

    .line 179
    const-string v3, "Stop WiFi scan/reconnect if WiFi is connected"

    invoke-static {v4, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    iget-object v3, p0, Lcom/nothing/server/display/NtWifiDisplayController$3;->this$0:Lcom/nothing/server/display/NtWifiDisplayController;

    invoke-static {v3}, Lcom/nothing/server/display/NtWifiDisplayController;->-$$Nest$fgetmAlarmManager(Lcom/nothing/server/display/NtWifiDisplayController;)Landroid/app/AlarmManager;

    move-result-object v3

    iget-object v4, p0, Lcom/nothing/server/display/NtWifiDisplayController$3;->this$0:Lcom/nothing/server/display/NtWifiDisplayController;

    invoke-static {v4}, Lcom/nothing/server/display/NtWifiDisplayController;->-$$Nest$fgetmWifiScanTimerListener(Lcom/nothing/server/display/NtWifiDisplayController;)Landroid/app/AlarmManager$OnAlarmListener;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    .line 181
    iget-object v3, p0, Lcom/nothing/server/display/NtWifiDisplayController$3;->this$0:Lcom/nothing/server/display/NtWifiDisplayController;

    invoke-virtual {v3, v5}, Lcom/nothing/server/display/NtWifiDisplayController;->stopWifiScan(Z)V

    .line 185
    .end local v1    # "info":Landroid/net/NetworkInfo;
    .end local v2    # "state":Landroid/net/NetworkInfo$State;
    :cond_1
    :goto_0
    return-void
.end method
