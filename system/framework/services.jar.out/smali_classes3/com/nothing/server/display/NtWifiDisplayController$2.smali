.class Lcom/nothing/server/display/NtWifiDisplayController$2;
.super Ljava/lang/Object;
.source "NtWifiDisplayController.java"

# interfaces
.implements Landroid/app/AlarmManager$OnAlarmListener;


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

    .line 134
    iput-object p1, p0, Lcom/nothing/server/display/NtWifiDisplayController$2;->this$0:Lcom/nothing/server/display/NtWifiDisplayController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAlarm()V
    .locals 2

    .line 136
    const-string v0, "NtWifiDisplayController"

    const-string v1, "Stop WiFi scan/reconnect due to scan timer timeout"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    iget-object v0, p0, Lcom/nothing/server/display/NtWifiDisplayController$2;->this$0:Lcom/nothing/server/display/NtWifiDisplayController;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/nothing/server/display/NtWifiDisplayController;->stopWifiScan(Z)V

    .line 138
    return-void
.end method
