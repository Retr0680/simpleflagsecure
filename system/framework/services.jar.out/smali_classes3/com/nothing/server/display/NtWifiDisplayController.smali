.class public Lcom/nothing/server/display/NtWifiDisplayController;
.super Ljava/lang/Object;
.source "NtWifiDisplayController.java"


# static fields
.field private static final CONNECTION_TIMEOUT_SECONDS:I = 0x1e

.field private static DEBUG:Z = false

.field private static final RECONNECT_RETRY_DELAY_MILLIS:I = 0x3e8

.field private static final TAG:Ljava/lang/String; = "NtWifiDisplayController"

.field private static final WIFI_SCAN_TIMER:J = 0x186a0L

.field private static final goIntent:Ljava/lang/String;


# instance fields
.field private mAlarmManager:Landroid/app/AlarmManager;

.field private final mContext:Landroid/content/Context;

.field private mController:Lcom/android/server/display/WifiDisplayController;

.field private final mHandler:Landroid/os/Handler;

.field private final mReConnect:Ljava/lang/Runnable;

.field private mReConnectDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

.field private mReConnection_Timeout_Remain_Seconds:I

.field public mStopWifiScan:Z

.field private final mWifiReceiver:Landroid/content/BroadcastReceiver;

.field private final mWifiScanTimerListener:Landroid/app/AlarmManager$OnAlarmListener;


# direct methods
.method static bridge synthetic -$$Nest$fgetmAlarmManager(Lcom/nothing/server/display/NtWifiDisplayController;)Landroid/app/AlarmManager;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/nothing/server/display/NtWifiDisplayController;->mAlarmManager:Landroid/app/AlarmManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmContext(Lcom/nothing/server/display/NtWifiDisplayController;)Landroid/content/Context;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/nothing/server/display/NtWifiDisplayController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmController(Lcom/nothing/server/display/NtWifiDisplayController;)Lcom/android/server/display/WifiDisplayController;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/nothing/server/display/NtWifiDisplayController;->mController:Lcom/android/server/display/WifiDisplayController;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmHandler(Lcom/nothing/server/display/NtWifiDisplayController;)Landroid/os/Handler;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/nothing/server/display/NtWifiDisplayController;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmReConnect(Lcom/nothing/server/display/NtWifiDisplayController;)Ljava/lang/Runnable;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/nothing/server/display/NtWifiDisplayController;->mReConnect:Ljava/lang/Runnable;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmReConnectDevice(Lcom/nothing/server/display/NtWifiDisplayController;)Landroid/net/wifi/p2p/WifiP2pDevice;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/nothing/server/display/NtWifiDisplayController;->mReConnectDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmReConnection_Timeout_Remain_Seconds(Lcom/nothing/server/display/NtWifiDisplayController;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/nothing/server/display/NtWifiDisplayController;->mReConnection_Timeout_Remain_Seconds:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmWifiScanTimerListener(Lcom/nothing/server/display/NtWifiDisplayController;)Landroid/app/AlarmManager$OnAlarmListener;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/nothing/server/display/NtWifiDisplayController;->mWifiScanTimerListener:Landroid/app/AlarmManager$OnAlarmListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmReConnectDevice(Lcom/nothing/server/display/NtWifiDisplayController;Landroid/net/wifi/p2p/WifiP2pDevice;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/nothing/server/display/NtWifiDisplayController;->mReConnectDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmReConnection_Timeout_Remain_Seconds(Lcom/nothing/server/display/NtWifiDisplayController;I)V
    .locals 0

    .line 0
    iput p1, p0, Lcom/nothing/server/display/NtWifiDisplayController;->mReConnection_Timeout_Remain_Seconds:I

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetDEBUG()Z
    .locals 1

    .line 0
    sget-boolean v0, Lcom/nothing/server/display/NtWifiDisplayController;->DEBUG:Z

    return v0
.end method

.method static bridge synthetic -$$Nest$smdescribeWifiP2pDevice(Landroid/net/wifi/p2p/WifiP2pDevice;)Ljava/lang/String;
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/nothing/server/display/NtWifiDisplayController;->describeWifiP2pDevice(Landroid/net/wifi/p2p/WifiP2pDevice;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 30
    const/4 v0, 0x1

    sput-boolean v0, Lcom/nothing/server/display/NtWifiDisplayController;->DEBUG:Z

    .line 33
    nop

    .line 35
    const/16 v0, 0xe

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 33
    const-string v1, "wfd.source.go_intent"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/nothing/server/display/NtWifiDisplayController;->goIntent:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/display/WifiDisplayController;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "controller"    # Lcom/android/server/display/WifiDisplayController;

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    new-instance v0, Lcom/nothing/server/display/NtWifiDisplayController$1;

    invoke-direct {v0, p0}, Lcom/nothing/server/display/NtWifiDisplayController$1;-><init>(Lcom/nothing/server/display/NtWifiDisplayController;)V

    iput-object v0, p0, Lcom/nothing/server/display/NtWifiDisplayController;->mReConnect:Ljava/lang/Runnable;

    .line 133
    new-instance v0, Lcom/nothing/server/display/NtWifiDisplayController$2;

    invoke-direct {v0, p0}, Lcom/nothing/server/display/NtWifiDisplayController$2;-><init>(Lcom/nothing/server/display/NtWifiDisplayController;)V

    iput-object v0, p0, Lcom/nothing/server/display/NtWifiDisplayController;->mWifiScanTimerListener:Landroid/app/AlarmManager$OnAlarmListener;

    .line 141
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nothing/server/display/NtWifiDisplayController;->mStopWifiScan:Z

    .line 156
    new-instance v0, Lcom/nothing/server/display/NtWifiDisplayController$3;

    invoke-direct {v0, p0}, Lcom/nothing/server/display/NtWifiDisplayController$3;-><init>(Lcom/nothing/server/display/NtWifiDisplayController;)V

    iput-object v0, p0, Lcom/nothing/server/display/NtWifiDisplayController;->mWifiReceiver:Landroid/content/BroadcastReceiver;

    .line 50
    iput-object p1, p0, Lcom/nothing/server/display/NtWifiDisplayController;->mContext:Landroid/content/Context;

    .line 51
    iput-object p2, p0, Lcom/nothing/server/display/NtWifiDisplayController;->mHandler:Landroid/os/Handler;

    .line 52
    iput-object p3, p0, Lcom/nothing/server/display/NtWifiDisplayController;->mController:Lcom/android/server/display/WifiDisplayController;

    .line 53
    iget-object v0, p0, Lcom/nothing/server/display/NtWifiDisplayController;->mContext:Landroid/content/Context;

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/nothing/server/display/NtWifiDisplayController;->mAlarmManager:Landroid/app/AlarmManager;

    .line 54
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 55
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 56
    iget-object v1, p0, Lcom/nothing/server/display/NtWifiDisplayController;->mWifiReceiver:Landroid/content/BroadcastReceiver;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/nothing/server/display/NtWifiDisplayController;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v1, v0, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 57
    return-void
.end method

.method private static describeWifiP2pDevice(Landroid/net/wifi/p2p/WifiP2pDevice;)Ljava/lang/String;
    .locals 3
    .param p0, "device"    # Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 82
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xa

    const/16 v2, 0x2c

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "null"

    :goto_0
    return-object v0
.end method


# virtual methods
.method public checkReConnect()V
    .locals 4

    .line 121
    iget-object v0, p0, Lcom/nothing/server/display/NtWifiDisplayController;->mReConnectDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    if-eqz v0, :cond_0

    .line 122
    const-string v0, "NtWifiDisplayController"

    const-string v1, "requestStartScan() for resolution change."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    iget-object v0, p0, Lcom/nothing/server/display/NtWifiDisplayController;->mController:Lcom/android/server/display/WifiDisplayController;

    invoke-virtual {v0}, Lcom/android/server/display/WifiDisplayController;->requestStartScan()V

    .line 126
    const/16 v0, 0x1e

    iput v0, p0, Lcom/nothing/server/display/NtWifiDisplayController;->mReConnection_Timeout_Remain_Seconds:I

    .line 127
    iget-object v0, p0, Lcom/nothing/server/display/NtWifiDisplayController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/nothing/server/display/NtWifiDisplayController;->mReConnect:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 129
    :cond_0
    return-void
.end method

.method public overWriteConfig(Landroid/net/wifi/p2p/WifiP2pConfig;)Landroid/net/wifi/p2p/WifiP2pConfig;
    .locals 4
    .param p1, "oldConfig"    # Landroid/net/wifi/p2p/WifiP2pConfig;

    .line 60
    new-instance v0, Landroid/net/wifi/p2p/WifiP2pConfig;

    invoke-direct {v0, p1}, Landroid/net/wifi/p2p/WifiP2pConfig;-><init>(Landroid/net/wifi/p2p/WifiP2pConfig;)V

    .line 62
    .local v0, "config":Landroid/net/wifi/p2p/WifiP2pConfig;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "oldConfig:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "NtWifiDisplayController"

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    sget-object v1, Lcom/nothing/server/display/NtWifiDisplayController;->goIntent:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Landroid/net/wifi/p2p/WifiP2pConfig;->groupOwnerIntent:I

    .line 68
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "config:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/nothing/server/display/NtWifiDisplayController;->stopWifiScan(Z)V

    .line 73
    return-object v0
.end method

.method public setWifiScan(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setWifiScan(), enable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NtWifiDisplayController"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    invoke-virtual {p0, p1}, Lcom/nothing/server/display/NtWifiDisplayController;->stopWifiScan(Z)V

    .line 79
    return-void
.end method

.method public stopWifiScan(Z)V
    .locals 2
    .param p1, "ifStop"    # Z

    .line 143
    if-nez p1, :cond_0

    .line 145
    iget-object v0, p0, Lcom/nothing/server/display/NtWifiDisplayController;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/nothing/server/display/NtWifiDisplayController;->mWifiScanTimerListener:Landroid/app/AlarmManager$OnAlarmListener;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    .line 147
    :cond_0
    iget-boolean v0, p0, Lcom/nothing/server/display/NtWifiDisplayController;->mStopWifiScan:Z

    if-eq v0, p1, :cond_1

    .line 148
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "stopWifiScan(),"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NtWifiDisplayController"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    iget-object v0, p0, Lcom/nothing/server/display/NtWifiDisplayController;->mContext:Landroid/content/Context;

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 151
    .local v0, "wifiManager":Landroid/net/wifi/WifiManager;
    xor-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->allowAutojoinGlobal(Z)V

    .line 152
    iput-boolean p1, p0, Lcom/nothing/server/display/NtWifiDisplayController;->mStopWifiScan:Z

    .line 154
    .end local v0    # "wifiManager":Landroid/net/wifi/WifiManager;
    :cond_1
    return-void
.end method
