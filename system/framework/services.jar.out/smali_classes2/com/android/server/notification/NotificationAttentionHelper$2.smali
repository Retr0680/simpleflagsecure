.class Lcom/android/server/notification/NotificationAttentionHelper$2;
.super Ljava/lang/Thread;
.source "NotificationAttentionHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/notification/NotificationAttentionHelper;->playInCallNotification()V
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

    .line 944
    iput-object p1, p0, Lcom/android/server/notification/NotificationAttentionHelper$2;->this$0:Lcom/android/server/notification/NotificationAttentionHelper;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 947
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 949
    .local v1, "identity":J
    :try_start_0
    iget-object v0, p0, Lcom/android/server/notification/NotificationAttentionHelper$2;->this$0:Lcom/android/server/notification/NotificationAttentionHelper;

    invoke-static {v0}, Lcom/android/server/notification/NotificationAttentionHelper;->-$$Nest$fgetmAudioManager(Lcom/android/server/notification/NotificationAttentionHelper;)Landroid/media/AudioManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingtonePlayer()Landroid/media/IRingtonePlayer;

    move-result-object v0

    move-object v3, v0

    .line 950
    .local v3, "player":Landroid/media/IRingtonePlayer;
    if-eqz v3, :cond_1

    .line 951
    iget-object v0, p0, Lcom/android/server/notification/NotificationAttentionHelper$2;->this$0:Lcom/android/server/notification/NotificationAttentionHelper;

    invoke-static {v0}, Lcom/android/server/notification/NotificationAttentionHelper;->-$$Nest$fgetmCallNotificationToken(Lcom/android/server/notification/NotificationAttentionHelper;)Landroid/os/Binder;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 952
    iget-object v0, p0, Lcom/android/server/notification/NotificationAttentionHelper$2;->this$0:Lcom/android/server/notification/NotificationAttentionHelper;

    invoke-static {v0}, Lcom/android/server/notification/NotificationAttentionHelper;->-$$Nest$fgetmCallNotificationToken(Lcom/android/server/notification/NotificationAttentionHelper;)Landroid/os/Binder;

    move-result-object v0

    invoke-interface {v3, v0}, Landroid/media/IRingtonePlayer;->stop(Landroid/os/IBinder;)V

    goto :goto_0

    .line 962
    .end local v3    # "player":Landroid/media/IRingtonePlayer;
    :catchall_0
    move-exception v0

    goto :goto_4

    .line 959
    :catch_0
    move-exception v0

    goto :goto_2

    .line 954
    .restart local v3    # "player":Landroid/media/IRingtonePlayer;
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/server/notification/NotificationAttentionHelper$2;->this$0:Lcom/android/server/notification/NotificationAttentionHelper;

    new-instance v4, Landroid/os/Binder;

    invoke-direct {v4}, Landroid/os/Binder;-><init>()V

    invoke-static {v0, v4}, Lcom/android/server/notification/NotificationAttentionHelper;->-$$Nest$fputmCallNotificationToken(Lcom/android/server/notification/NotificationAttentionHelper;Landroid/os/Binder;)V

    .line 955
    iget-object v0, p0, Lcom/android/server/notification/NotificationAttentionHelper$2;->this$0:Lcom/android/server/notification/NotificationAttentionHelper;

    invoke-static {v0}, Lcom/android/server/notification/NotificationAttentionHelper;->-$$Nest$fgetmCallNotificationToken(Lcom/android/server/notification/NotificationAttentionHelper;)Landroid/os/Binder;

    move-result-object v4

    iget-object v0, p0, Lcom/android/server/notification/NotificationAttentionHelper$2;->this$0:Lcom/android/server/notification/NotificationAttentionHelper;

    invoke-static {v0}, Lcom/android/server/notification/NotificationAttentionHelper;->-$$Nest$fgetmInCallNotificationUri(Lcom/android/server/notification/NotificationAttentionHelper;)Landroid/net/Uri;

    move-result-object v5

    iget-object v0, p0, Lcom/android/server/notification/NotificationAttentionHelper$2;->this$0:Lcom/android/server/notification/NotificationAttentionHelper;

    invoke-static {v0}, Lcom/android/server/notification/NotificationAttentionHelper;->-$$Nest$fgetmInCallNotificationAudioAttributes(Lcom/android/server/notification/NotificationAttentionHelper;)Landroid/media/AudioAttributes;

    move-result-object v6

    iget-object v0, p0, Lcom/android/server/notification/NotificationAttentionHelper$2;->this$0:Lcom/android/server/notification/NotificationAttentionHelper;

    invoke-static {v0}, Lcom/android/server/notification/NotificationAttentionHelper;->-$$Nest$fgetmInCallNotificationVolume(Lcom/android/server/notification/NotificationAttentionHelper;)F

    move-result v7

    const/4 v8, 0x0

    invoke-interface/range {v3 .. v8}, Landroid/media/IRingtonePlayer;->play(Landroid/os/IBinder;Landroid/net/Uri;Landroid/media/AudioAttributes;FZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 962
    .end local v3    # "player":Landroid/media/IRingtonePlayer;
    :cond_1
    nop

    :goto_1
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 963
    goto :goto_3

    .line 959
    :goto_2
    nop

    .line 960
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_1
    const-string v3, "NotifAttentionHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed playInCallNotification: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 962
    nop

    .end local v0    # "e":Landroid/os/RemoteException;
    goto :goto_1

    .line 964
    :goto_3
    return-void

    .line 962
    :goto_4
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 963
    throw v0
.end method
