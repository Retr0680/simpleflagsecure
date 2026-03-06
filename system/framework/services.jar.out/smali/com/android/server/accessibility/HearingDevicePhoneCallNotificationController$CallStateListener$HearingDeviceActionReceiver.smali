.class Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener$HearingDeviceActionReceiver;
.super Landroid/content/BroadcastReceiver;
.source "HearingDevicePhoneCallNotificationController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HearingDeviceActionReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener;


# direct methods
.method private constructor <init>(Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 388
    iput-object p1, p0, Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener$HearingDeviceActionReceiver;->this$0:Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener;Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener$HearingDeviceActionReceiver;-><init>(Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 391
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 392
    .local v0, "action":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 393
    return-void

    .line 396
    :cond_0
    const-string v1, "com.android.server.accessibility.hearingdevice.action.SWITCH_TO_BUILTIN_MIC"

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 397
    iget-object v1, p0, Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener$HearingDeviceActionReceiver;->this$0:Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener;

    invoke-static {v1}, Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener;->-$$Nest$mswitchToBuiltinMic(Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener;)V

    .line 398
    iget-object v1, p0, Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener$HearingDeviceActionReceiver;->this$0:Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener;->-$$Nest$mshowNotification(Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener;Z)V

    goto :goto_0

    .line 399
    :cond_1
    const-string v1, "com.android.server.accessibility.hearingdevice.action.SWITCH_TO_HEARING_MIC"

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 400
    iget-object v1, p0, Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener$HearingDeviceActionReceiver;->this$0:Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener;

    invoke-static {v1}, Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener;->-$$Nest$mswitchToHearingMic(Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener;)V

    .line 401
    iget-object v1, p0, Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener$HearingDeviceActionReceiver;->this$0:Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener;->-$$Nest$mshowNotification(Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener;Z)V

    .line 403
    :cond_2
    :goto_0
    return-void
.end method
