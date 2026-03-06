.class Lcom/android/server/biometrics/AuthenticationStatsCollector$2;
.super Landroid/content/BroadcastReceiver;
.source "AuthenticationStatsCollector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/biometrics/AuthenticationStatsCollector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/biometrics/AuthenticationStatsCollector;


# direct methods
.method constructor <init>(Lcom/android/server/biometrics/AuthenticationStatsCollector;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/biometrics/AuthenticationStatsCollector;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 91
    iput-object p1, p0, Lcom/android/server/biometrics/AuthenticationStatsCollector$2;->this$0:Lcom/android/server/biometrics/AuthenticationStatsCollector;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 94
    const-string v0, "android.intent.extra.user_handle"

    const/16 v1, -0x2710

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 95
    .local v0, "userId":I
    const-string/jumbo v1, "modality"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 97
    .local v1, "modality":I
    iget-object v2, p0, Lcom/android/server/biometrics/AuthenticationStatsCollector$2;->this$0:Lcom/android/server/biometrics/AuthenticationStatsCollector;

    invoke-static {v2}, Lcom/android/server/biometrics/AuthenticationStatsCollector;->-$$Nest$fgetmModality(Lcom/android/server/biometrics/AuthenticationStatsCollector;)I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 98
    iget-object v2, p0, Lcom/android/server/biometrics/AuthenticationStatsCollector$2;->this$0:Lcom/android/server/biometrics/AuthenticationStatsCollector;

    invoke-static {v2, v0}, Lcom/android/server/biometrics/AuthenticationStatsCollector;->-$$Nest$mupdateAuthenticationStatsMapIfNeeded(Lcom/android/server/biometrics/AuthenticationStatsCollector;I)V

    .line 99
    iget-object v2, p0, Lcom/android/server/biometrics/AuthenticationStatsCollector$2;->this$0:Lcom/android/server/biometrics/AuthenticationStatsCollector;

    invoke-static {v2}, Lcom/android/server/biometrics/AuthenticationStatsCollector;->-$$Nest$fgetmUserAuthenticationStatsMap(Lcom/android/server/biometrics/AuthenticationStatsCollector;)Ljava/util/Map;

    move-result-object v2

    .line 100
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/biometrics/AuthenticationStats;

    .line 101
    .local v2, "authenticationStats":Lcom/android/server/biometrics/AuthenticationStats;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Update enroll time for user: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "AuthenticationStatsCollector"

    invoke-static {v4, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    iget-object v3, p0, Lcom/android/server/biometrics/AuthenticationStatsCollector$2;->this$0:Lcom/android/server/biometrics/AuthenticationStatsCollector;

    invoke-static {v3}, Lcom/android/server/biometrics/AuthenticationStatsCollector;->-$$Nest$fgetmClock(Lcom/android/server/biometrics/AuthenticationStatsCollector;)Ljava/time/Clock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/time/Clock;->millis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/android/server/biometrics/AuthenticationStats;->updateLastEnrollmentTime(J)V

    .line 104
    .end local v2    # "authenticationStats":Lcom/android/server/biometrics/AuthenticationStats;
    :cond_0
    return-void
.end method
