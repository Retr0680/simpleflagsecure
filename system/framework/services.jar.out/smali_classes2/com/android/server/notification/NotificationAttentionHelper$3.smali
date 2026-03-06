.class Lcom/android/server/notification/NotificationAttentionHelper$3;
.super Landroid/content/BroadcastReceiver;
.source "NotificationAttentionHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/NotificationAttentionHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/notification/NotificationAttentionHelper;


# direct methods
.method constructor <init>(Lcom/android/server/notification/NotificationAttentionHelper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/notification/NotificationAttentionHelper;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1800
    iput-object p1, p0, Lcom/android/server/notification/NotificationAttentionHelper$3;->this$0:Lcom/android/server/notification/NotificationAttentionHelper;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 1803
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1804
    .local v0, "action":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 1805
    return-void

    .line 1808
    :cond_0
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    .line 1811
    iget-object v1, p0, Lcom/android/server/notification/NotificationAttentionHelper$3;->this$0:Lcom/android/server/notification/NotificationAttentionHelper;

    invoke-static {v1}, Lcom/android/server/notification/NotificationAttentionHelper;->-$$Nest$fgetmLock(Lcom/android/server/notification/NotificationAttentionHelper;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1812
    :try_start_0
    iget-object v4, p0, Lcom/android/server/notification/NotificationAttentionHelper$3;->this$0:Lcom/android/server/notification/NotificationAttentionHelper;

    invoke-static {v4, v2}, Lcom/android/server/notification/NotificationAttentionHelper;->-$$Nest$fputmScreenOn(Lcom/android/server/notification/NotificationAttentionHelper;Z)V

    .line 1813
    iget-object v4, p0, Lcom/android/server/notification/NotificationAttentionHelper$3;->this$0:Lcom/android/server/notification/NotificationAttentionHelper;

    invoke-virtual {v4}, Lcom/android/server/notification/NotificationAttentionHelper;->updateLightsLocked()V

    .line 1814
    monitor-exit v1

    goto/16 :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 1815
    :cond_1
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1816
    iget-object v1, p0, Lcom/android/server/notification/NotificationAttentionHelper$3;->this$0:Lcom/android/server/notification/NotificationAttentionHelper;

    invoke-static {v1}, Lcom/android/server/notification/NotificationAttentionHelper;->-$$Nest$fgetmLock(Lcom/android/server/notification/NotificationAttentionHelper;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1817
    :try_start_1
    iget-object v4, p0, Lcom/android/server/notification/NotificationAttentionHelper$3;->this$0:Lcom/android/server/notification/NotificationAttentionHelper;

    invoke-static {v4, v3}, Lcom/android/server/notification/NotificationAttentionHelper;->-$$Nest$fputmScreenOn(Lcom/android/server/notification/NotificationAttentionHelper;Z)V

    .line 1818
    iget-object v4, p0, Lcom/android/server/notification/NotificationAttentionHelper$3;->this$0:Lcom/android/server/notification/NotificationAttentionHelper;

    invoke-static {v4, v3}, Lcom/android/server/notification/NotificationAttentionHelper;->-$$Nest$fputmUserPresent(Lcom/android/server/notification/NotificationAttentionHelper;Z)V

    .line 1819
    iget-object v4, p0, Lcom/android/server/notification/NotificationAttentionHelper$3;->this$0:Lcom/android/server/notification/NotificationAttentionHelper;

    invoke-virtual {v4}, Lcom/android/server/notification/NotificationAttentionHelper;->updateLightsLocked()V

    .line 1820
    monitor-exit v1

    goto/16 :goto_0

    :catchall_1
    move-exception v2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v2

    .line 1821
    :cond_2
    const-string v1, "android.intent.action.PHONE_STATE"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1822
    iget-object v1, p0, Lcom/android/server/notification/NotificationAttentionHelper$3;->this$0:Lcom/android/server/notification/NotificationAttentionHelper;

    sget-object v4, Landroid/telephony/TelephonyManager;->EXTRA_STATE_OFFHOOK:Ljava/lang/String;

    const-string/jumbo v5, "state"

    .line 1823
    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    invoke-static {v1, v4}, Lcom/android/server/notification/NotificationAttentionHelper;->-$$Nest$fputmInCallStateOffHook(Lcom/android/server/notification/NotificationAttentionHelper;Z)V

    .line 1824
    iget-object v1, p0, Lcom/android/server/notification/NotificationAttentionHelper$3;->this$0:Lcom/android/server/notification/NotificationAttentionHelper;

    invoke-static {v1}, Lcom/android/server/notification/NotificationAttentionHelper;->-$$Nest$fgetmLock(Lcom/android/server/notification/NotificationAttentionHelper;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1825
    :try_start_2
    iget-object v4, p0, Lcom/android/server/notification/NotificationAttentionHelper$3;->this$0:Lcom/android/server/notification/NotificationAttentionHelper;

    invoke-virtual {v4}, Lcom/android/server/notification/NotificationAttentionHelper;->updateLightsLocked()V

    .line 1826
    monitor-exit v1

    goto :goto_0

    :catchall_2
    move-exception v2

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw v2

    .line 1827
    :cond_3
    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1828
    iget-object v1, p0, Lcom/android/server/notification/NotificationAttentionHelper$3;->this$0:Lcom/android/server/notification/NotificationAttentionHelper;

    invoke-static {v1, v2}, Lcom/android/server/notification/NotificationAttentionHelper;->-$$Nest$fputmUserPresent(Lcom/android/server/notification/NotificationAttentionHelper;Z)V

    .line 1830
    iget-object v1, p0, Lcom/android/server/notification/NotificationAttentionHelper$3;->this$0:Lcom/android/server/notification/NotificationAttentionHelper;

    invoke-static {v1}, Lcom/android/server/notification/NotificationAttentionHelper;->-$$Nest$fgetmNotificationLight(Lcom/android/server/notification/NotificationAttentionHelper;)Lcom/android/server/lights/LogicalLight;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 1831
    iget-object v1, p0, Lcom/android/server/notification/NotificationAttentionHelper$3;->this$0:Lcom/android/server/notification/NotificationAttentionHelper;

    invoke-static {v1}, Lcom/android/server/notification/NotificationAttentionHelper;->-$$Nest$fgetmNotificationLight(Lcom/android/server/notification/NotificationAttentionHelper;)Lcom/android/server/lights/LogicalLight;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/lights/LogicalLight;->turnOff()V

    goto :goto_0

    .line 1833
    :cond_4
    const-string v1, "android.intent.action.USER_ADDED"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    nop

    if-nez v1, :cond_5

    const-string v1, "android.intent.action.USER_REMOVED"

    .line 1834
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    nop

    if-nez v1, :cond_5

    const-string v1, "android.intent.action.USER_SWITCHED"

    .line 1835
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    nop

    if-nez v1, :cond_5

    const-string v1, "android.intent.action.USER_UNLOCKED"

    .line 1836
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1837
    :cond_5
    iget-object v1, p0, Lcom/android/server/notification/NotificationAttentionHelper$3;->this$0:Lcom/android/server/notification/NotificationAttentionHelper;

    invoke-static {v1}, Lcom/android/server/notification/NotificationAttentionHelper;->-$$Nest$mloadUserSettings(Lcom/android/server/notification/NotificationAttentionHelper;)V

    .line 1840
    :cond_6
    :goto_0
    nop

    .line 1841
    sget-object v1, Lcom/android/server/notification/NotificationAttentionHelper;->NOTIFICATION_AVALANCHE_TRIGGER_INTENTS:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 1842
    const/4 v1, 0x1

    .line 1844
    .local v1, "enableAvalancheStrategy":Z
    sget-object v4, Lcom/android/server/notification/NotificationAttentionHelper;->NOTIFICATION_AVALANCHE_TRIGGER_EXTRAS:Ljava/util/Map;

    .line 1845
    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/Pair;

    .line 1846
    .local v4, "expectedExtras":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Boolean;>;"
    if-eqz v4, :cond_8

    .line 1847
    iget-object v5, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    .line 1848
    invoke-virtual {p2, v5, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    iget-object v6, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Boolean;

    .line 1849
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-ne v5, v6, :cond_7

    goto :goto_1

    :cond_7
    move v2, v3

    :goto_1
    move v1, v2

    .line 1852
    :cond_8
    sget-boolean v2, Lcom/android/server/notification/NotificationAttentionHelper;->DEBUG:Z

    if-eqz v2, :cond_9

    .line 1853
    const-string v2, "NotifAttentionHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Avalanche trigger intent received: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ". Enabling avalanche strategy: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1857
    :cond_9
    if-eqz v1, :cond_a

    iget-object v2, p0, Lcom/android/server/notification/NotificationAttentionHelper$3;->this$0:Lcom/android/server/notification/NotificationAttentionHelper;

    invoke-static {v2}, Lcom/android/server/notification/NotificationAttentionHelper;->-$$Nest$fgetmStrategy(Lcom/android/server/notification/NotificationAttentionHelper;)Lcom/android/server/notification/NotificationAttentionHelper$PolitenessStrategy;

    move-result-object v2

    instance-of v2, v2, Lcom/android/server/notification/NotificationAttentionHelper$StrategyAvalanche;

    if-eqz v2, :cond_a

    .line 1858
    iget-object v2, p0, Lcom/android/server/notification/NotificationAttentionHelper$3;->this$0:Lcom/android/server/notification/NotificationAttentionHelper;

    invoke-static {v2}, Lcom/android/server/notification/NotificationAttentionHelper;->-$$Nest$fgetmStrategy(Lcom/android/server/notification/NotificationAttentionHelper;)Lcom/android/server/notification/NotificationAttentionHelper$PolitenessStrategy;

    move-result-object v2

    check-cast v2, Lcom/android/server/notification/NotificationAttentionHelper$StrategyAvalanche;

    .line 1859
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v2, v5, v6}, Lcom/android/server/notification/NotificationAttentionHelper$StrategyAvalanche;->setTriggerTimeMs(J)V

    .line 1863
    .end local v1    # "enableAvalancheStrategy":Z
    .end local v4    # "expectedExtras":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Boolean;>;"
    :cond_a
    return-void
.end method
