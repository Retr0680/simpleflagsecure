.class Lcom/android/server/pm/BackgroundUserSoundNotifier$1;
.super Landroid/content/BroadcastReceiver;
.source "BackgroundUserSoundNotifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/BackgroundUserSoundNotifier;->registerReceiver(Landroid/app/ActivityManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/BackgroundUserSoundNotifier;

.field final synthetic val$activityManager:Landroid/app/ActivityManager;


# direct methods
.method constructor <init>(Lcom/android/server/pm/BackgroundUserSoundNotifier;Landroid/app/ActivityManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/pm/BackgroundUserSoundNotifier;
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

    .line 155
    iput-object p1, p0, Lcom/android/server/pm/BackgroundUserSoundNotifier$1;->this$0:Lcom/android/server/pm/BackgroundUserSoundNotifier;

    iput-object p2, p0, Lcom/android/server/pm/BackgroundUserSoundNotifier$1;->val$activityManager:Landroid/app/ActivityManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 159
    nop

    .line 160
    const-string v0, "com.android.server.EXTRA_CLIENT_UID"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 161
    return-void

    .line 170
    :cond_0
    nop

    .line 171
    const/4 v1, -0x1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 175
    .local v0, "clientUid":I
    iget-object v1, p0, Lcom/android/server/pm/BackgroundUserSoundNotifier$1;->this$0:Lcom/android/server/pm/BackgroundUserSoundNotifier;

    invoke-static {v1, v0}, Lcom/android/server/pm/BackgroundUserSoundNotifier;->-$$Nest$mdismissNotification(Lcom/android/server/pm/BackgroundUserSoundNotifier;I)V

    .line 185
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.android.server.ACTION_MUTE_BG_USER"

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 186
    iget-object v1, p0, Lcom/android/server/pm/BackgroundUserSoundNotifier$1;->this$0:Lcom/android/server/pm/BackgroundUserSoundNotifier;

    invoke-virtual {v1, v0}, Lcom/android/server/pm/BackgroundUserSoundNotifier;->muteAlarmSounds(I)V

    goto :goto_0

    .line 187
    :cond_1
    const-string v1, "com.android.server.ACTION_SWITCH_TO_USER"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 188
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 189
    .local v1, "userId":I
    iget-object v2, p0, Lcom/android/server/pm/BackgroundUserSoundNotifier$1;->this$0:Lcom/android/server/pm/BackgroundUserSoundNotifier;

    invoke-static {v2}, Lcom/android/server/pm/BackgroundUserSoundNotifier;->-$$Nest$fgetmUserManager(Lcom/android/server/pm/BackgroundUserSoundNotifier;)Landroid/os/UserManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/UserManager;->isProfile(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 190
    iget-object v2, p0, Lcom/android/server/pm/BackgroundUserSoundNotifier$1;->this$0:Lcom/android/server/pm/BackgroundUserSoundNotifier;

    invoke-static {v2}, Lcom/android/server/pm/BackgroundUserSoundNotifier;->-$$Nest$fgetmUserManager(Lcom/android/server/pm/BackgroundUserSoundNotifier;)Landroid/os/UserManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v2

    iget v1, v2, Landroid/content/pm/UserInfo;->id:I

    .line 192
    :cond_2
    iget-object v2, p0, Lcom/android/server/pm/BackgroundUserSoundNotifier$1;->val$activityManager:Landroid/app/ActivityManager;

    invoke-virtual {v2, v1}, Landroid/app/ActivityManager;->switchUser(I)Z

    .line 194
    .end local v1    # "userId":I
    :cond_3
    :goto_0
    nop

    .line 195
    iget-object v1, p0, Lcom/android/server/pm/BackgroundUserSoundNotifier$1;->this$0:Lcom/android/server/pm/BackgroundUserSoundNotifier;

    iget-object v1, v1, Lcom/android/server/pm/BackgroundUserSoundNotifier;->mNotificationClientUids:Ljava/util/Set;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 199
    return-void
.end method
