.class Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener;
.super Landroid/telephony/TelephonyCallback;
.source "HearingDevicePhoneCallNotificationController.java"

# interfaces
.implements Landroid/telephony/TelephonyCallback$CallStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CallStateListener"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener$HearingDeviceActionReceiver;
    }
.end annotation


# static fields
.field private static final ACTION_BLUETOOTH_DEVICE_DETAILS:Ljava/lang/String; = "com.android.settings.BLUETOOTH_DEVICE_DETAIL_SETTINGS"

.field private static final ACTION_SWITCH_TO_BUILTIN_MIC:Ljava/lang/String; = "com.android.server.accessibility.hearingdevice.action.SWITCH_TO_BUILTIN_MIC"

.field private static final ACTION_SWITCH_TO_HEARING_MIC:Ljava/lang/String; = "com.android.server.accessibility.hearingdevice.action.SWITCH_TO_HEARING_MIC"

.field private static final BUILTIN_MIC:Landroid/media/AudioDeviceAttributes;

.field private static final EXTRA_SHOW_FRAGMENT_ARGUMENTS:Ljava/lang/String; = ":settings:show_fragment_args"

.field private static final KEY_BLUETOOTH_ADDRESS:Ljava/lang/String; = "device_address"

.field private static final MICROPHONE_SOURCE_VOICE_COMMUNICATION:I = 0x7

.field private static final TAG:Ljava/lang/String; = "HearingDevice_CallStateListener"


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private final mCommDeviceChangedExecutor:Ljava/util/concurrent/Executor;

.field private final mCommDeviceChangedListener:Landroid/media/AudioManager$OnCommunicationDeviceChangedListener;

.field private final mContext:Landroid/content/Context;

.field private mHearingDevice:Landroid/bluetooth/BluetoothDevice;

.field private mHearingDeviceActionReceiver:Landroid/content/BroadcastReceiver;

.field private mIsCommDeviceChangedRegistered:Z

.field private mIsNotificationShown:Z

.field private mNotificationManager:Landroid/app/NotificationManager;


# direct methods
.method public static synthetic $r8$lambda$8a2Wa2DdipLWj_-n6p0PCH85GjY(Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener;Landroid/media/AudioDeviceInfo;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener;->lambda$new$0(Landroid/media/AudioDeviceInfo;)V

    return-void
.end method

.method public static synthetic $r8$lambda$N94sfgtU8f4QzmRxLpBL9efKKKE(Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener;Landroid/bluetooth/BluetoothAdapter;Landroid/media/AudioDeviceInfo;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener;->lambda$getSupportedInputHearingDeviceInfo$3(Landroid/bluetooth/BluetoothAdapter;Landroid/media/AudioDeviceInfo;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$qVcMpu0NUKadzzhWodLdFTcnhWY(Ljava/util/Set;Landroid/media/AudioDeviceInfo;)Z
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener;->lambda$getSupportedInputHearingDeviceInfo$2(Ljava/util/Set;Landroid/media/AudioDeviceInfo;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$yjDjB9XWlgvm7k0KRhylDmmWCPg(Landroid/media/AudioDeviceInfo;)Z
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener;->lambda$getSupportedInputHearingDeviceInfo$1(Landroid/media/AudioDeviceInfo;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mshowNotification(Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener;->showNotification(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mswitchToBuiltinMic(Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener;->switchToBuiltinMic()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mswitchToHearingMic(Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener;->switchToHearingMic()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 109
    new-instance v0, Landroid/media/AudioDeviceAttributes;

    const/16 v1, 0xf

    const-string v2, ""

    const/4 v3, 0x1

    invoke-direct {v0, v3, v1, v2}, Landroid/media/AudioDeviceAttributes;-><init>(IILjava/lang/String;)V

    sput-object v0, Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener;->BUILTIN_MIC:Landroid/media/AudioDeviceAttributes;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/util/concurrent/Executor;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;

    .line 122
    invoke-direct {p0}, Landroid/telephony/TelephonyCallback;-><init>()V

    .line 119
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener;->mIsCommDeviceChangedRegistered:Z

    .line 120
    iput-boolean v0, p0, Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener;->mIsNotificationShown:Z

    .line 123
    iput-object p1, p0, Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener;->mContext:Landroid/content/Context;

    .line 124
    iput-object p2, p0, Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener;->mCommDeviceChangedExecutor:Ljava/util/concurrent/Executor;

    .line 125
    new-instance v0, Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener;)V

    iput-object v0, p0, Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener;->mCommDeviceChangedListener:Landroid/media/AudioManager$OnCommunicationDeviceChangedListener;

    .line 136
    return-void
.end method

.method private addOnCommunicationDeviceChangedListenerIfNeeded(Ljava/util/concurrent/Executor;Landroid/media/AudioManager$OnCommunicationDeviceChangedListener;)V
    .locals 1
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "listener"    # Landroid/media/AudioManager$OnCommunicationDeviceChangedListener;

    .line 180
    iget-boolean v0, p0, Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener;->mIsCommDeviceChangedRegistered:Z

    if-eqz v0, :cond_0

    .line 181
    return-void

    .line 184
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener;->mIsCommDeviceChangedRegistered:Z

    .line 185
    iget-object v0, p0, Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p1, p2}, Landroid/media/AudioManager;->addOnCommunicationDeviceChangedListener(Ljava/util/concurrent/Executor;Landroid/media/AudioManager$OnCommunicationDeviceChangedListener;)V

    .line 186
    return-void
.end method

.method private buildOpenSettingsAction()Landroid/app/Notification$Action;
    .locals 4

    .line 296
    new-instance v0, Landroid/app/Notification$Action$Builder;

    iget-object v1, p0, Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener;->mContext:Landroid/content/Context;

    .line 297
    const v2, 0x104049f

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 298
    const-string v2, "com.android.settings.BLUETOOTH_DEVICE_DETAIL_SETTINGS"

    invoke-direct {p0, v2}, Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener;->createPendingIntent(Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Landroid/app/Notification$Action$Builder;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-virtual {v0}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    move-result-object v0

    .line 296
    return-object v0
.end method

.method private buildSwitchInputAction(Z)Landroid/app/Notification$Action;
    .locals 4
    .param p1, "useRemoteMicrophone"    # Z

    .line 286
    const v0, 0x10404a0

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 289
    new-instance v2, Landroid/app/Notification$Action$Builder;

    iget-object v3, p0, Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener;->mContext:Landroid/content/Context;

    .line 288
    invoke-virtual {v3, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 289
    const-string v3, "com.android.server.accessibility.hearingdevice.action.SWITCH_TO_BUILTIN_MIC"

    invoke-direct {p0, v3}, Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener;->createPendingIntent(Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v3

    invoke-direct {v2, v1, v0, v3}, Landroid/app/Notification$Action$Builder;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-virtual {v2}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    move-result-object v0

    goto :goto_0

    .line 292
    :cond_0
    new-instance v2, Landroid/app/Notification$Action$Builder;

    iget-object v3, p0, Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener;->mContext:Landroid/content/Context;

    .line 291
    invoke-virtual {v3, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 292
    const-string v3, "com.android.server.accessibility.hearingdevice.action.SWITCH_TO_HEARING_MIC"

    invoke-direct {p0, v3}, Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener;->createPendingIntent(Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v3

    invoke-direct {v2, v1, v0, v3}, Landroid/app/Notification$Action$Builder;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-virtual {v2}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    move-result-object v0

    .line 286
    :goto_0
    return-object v0
.end method

.method private createPendingIntent(Ljava/lang/String;)Landroid/app/PendingIntent;
    .locals 6
    .param p1, "action"    # Ljava/lang/String;

    .line 302
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 304
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    const/4 v2, 0x0

    sparse-switch v1, :sswitch_data_0

    :cond_0
    goto :goto_0

    :sswitch_0
    const-string v1, "com.android.server.accessibility.hearingdevice.action.SWITCH_TO_BUILTIN_MIC"

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_1

    :sswitch_1
    const-string v1, "com.android.server.accessibility.hearingdevice.action.SWITCH_TO_HEARING_MIC"

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_1

    :sswitch_2
    const-string v1, "com.android.settings.BLUETOOTH_DEVICE_DETAIL_SETTINGS"

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    goto :goto_1

    :goto_0
    const/4 v1, -0x1

    :goto_1
    const/high16 v3, 0x4000000

    const/4 v4, 0x0

    packed-switch v1, :pswitch_data_0

    .line 324
    return-object v4

    .line 311
    :pswitch_0
    iget-object v1, p0, Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener;->mHearingDevice:Landroid/bluetooth/BluetoothDevice;

    if-nez v1, :cond_1

    .line 312
    return-object v4

    .line 315
    :cond_1
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 316
    .local v1, "bundle":Landroid/os/Bundle;
    iget-object v4, p0, Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener;->mHearingDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    const-string v5, "device_address"

    invoke-virtual {v1, v5, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    const-string v4, ":settings:show_fragment_args"

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 318
    const v4, 0x10008000

    invoke-virtual {v0, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 320
    iget-object v4, p0, Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener;->mContext:Landroid/content/Context;

    invoke-static {v4, v2, v0, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    return-object v2

    .line 306
    .end local v1    # "bundle":Landroid/os/Bundle;
    :pswitch_1
    iget-object v1, p0, Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 307
    iget-object v1, p0, Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener;->mContext:Landroid/content/Context;

    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    return-object v1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x6cea1e48 -> :sswitch_2
        0x2c49544e -> :sswitch_1
        0x641f95bd -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private createSwitchInputNotification(Z)Landroid/app/Notification;
    .locals 6
    .param p1, "useRemoteMicrophone"    # Z

    .line 268
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener;->getSwitchInputMessage(Z)Ljava/lang/CharSequence;

    move-result-object v0

    .line 269
    .local v0, "message":Ljava/lang/CharSequence;
    new-instance v1, Landroid/app/Notification$Builder;

    iget-object v2, p0, Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener;->mContext:Landroid/content/Context;

    const-string v3, "ACCESSIBILITY_HEARING_DEVICE"

    invoke-direct {v1, v2, v3}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 271
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener;->getSwitchInputTitle(Z)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 272
    invoke-virtual {v1, v0}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 273
    const v2, 0x10805ce

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener;->mContext:Landroid/content/Context;

    .line 274
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x106001c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v1

    new-instance v2, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v2}, Landroid/app/Notification$BigTextStyle;-><init>()V

    .line 276
    invoke-virtual {v2, v0}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 277
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setLocalOnly(Z)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 278
    const-string/jumbo v3, "sys"

    invoke-virtual {v1, v3}, Landroid/app/Notification$Builder;->setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 279
    const-string v3, "com.android.settings.BLUETOOTH_DEVICE_DETAIL_SETTINGS"

    invoke-direct {p0, v3}, Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener;->createPendingIntent(Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v1

    const/4 v3, 0x2

    new-array v3, v3, [Landroid/app/Notification$Action;

    .line 280
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener;->buildSwitchInputAction(Z)Landroid/app/Notification$Action;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 281
    invoke-direct {p0}, Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener;->buildOpenSettingsAction()Landroid/app/Notification$Action;

    move-result-object v4

    aput-object v4, v3, v2

    .line 280
    invoke-virtual {v1, v3}, Landroid/app/Notification$Builder;->setActions([Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 282
    invoke-virtual {v1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    .line 269
    return-object v1
.end method

.method private dismissNotification()V
    .locals 2

    .line 224
    invoke-direct {p0}, Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener;->unregisterReceiverIfNeeded()V

    .line 225
    iget-object v0, p0, Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener;->mNotificationManager:Landroid/app/NotificationManager;

    const/16 v1, 0x3f4

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 227
    return-void
.end method

.method private dismissNotificationIfNeeded()V
    .locals 1

    .line 208
    iget-boolean v0, p0, Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener;->mIsNotificationShown:Z

    if-nez v0, :cond_0

    .line 209
    return-void

    .line 212
    :cond_0
    invoke-direct {p0}, Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener;->dismissNotification()V

    .line 213
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener;->mIsNotificationShown:Z

    .line 214
    return-void
.end method

.method private getSupportedInputHearingDeviceInfo(Ljava/util/List;)Landroid/bluetooth/BluetoothDevice;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/AudioDeviceInfo;",
            ">;)",
            "Landroid/bluetooth/BluetoothDevice;"
        }
    .end annotation

    .line 230
    .local p1, "infoList":Ljava/util/List;, "Ljava/util/List<Landroid/media/AudioDeviceInfo;>;"
    iget-object v0, p0, Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener;->mContext:Landroid/content/Context;

    const-class v1, Landroid/bluetooth/BluetoothManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothManager;

    .line 231
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothManager;->getAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 232
    .local v0, "bluetoothAdapter":Landroid/bluetooth/BluetoothAdapter;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 233
    return-object v1

    .line 235
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener;->isHapClientSupported()Z

    move-result v2

    if-nez v2, :cond_1

    .line 236
    return-object v1

    .line 239
    :cond_1
    iget-object v2, p0, Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener;->mAudioManager:Landroid/media/AudioManager;

    .line 240
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->getDevices(I)[Landroid/media/AudioDeviceInfo;

    move-result-object v2

    .line 239
    invoke-static {v2}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener$$ExternalSyntheticLambda1;

    invoke-direct {v3}, Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener$$ExternalSyntheticLambda1;-><init>()V

    .line 240
    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v2

    .line 241
    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    .line 244
    .local v2, "inputDeviceAddress":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v3

    new-instance v4, Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener$$ExternalSyntheticLambda2;

    invoke-direct {v4}, Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener$$ExternalSyntheticLambda2;-><init>()V

    .line 245
    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v3

    new-instance v4, Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener$$ExternalSyntheticLambda3;

    invoke-direct {v4, v2}, Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener$$ExternalSyntheticLambda3;-><init>(Ljava/util/Set;)V

    .line 246
    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v3

    new-instance v4, Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener$$ExternalSyntheticLambda4;

    invoke-direct {v4, p0, v0}, Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener;Landroid/bluetooth/BluetoothAdapter;)V

    .line 247
    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v3

    .line 248
    invoke-interface {v3}, Ljava/util/stream/Stream;->findAny()Ljava/util/Optional;

    move-result-object v3

    .line 249
    invoke-virtual {v3, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/AudioDeviceInfo;

    .line 251
    .local v3, "hearingDeviceInfo":Landroid/media/AudioDeviceInfo;
    if-eqz v3, :cond_2

    .line 252
    invoke-virtual {v3}, Landroid/media/AudioDeviceInfo;->getAddress()Ljava/lang/String;

    move-result-object v1

    .line 251
    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    goto :goto_0

    .line 252
    :cond_2
    nop

    .line 251
    :goto_0
    return-object v1
.end method

.method private getSwitchInputMessage(Z)Ljava/lang/CharSequence;
    .locals 2
    .param p1, "useRemoteMicrophone"    # Z

    .line 381
    if-eqz p1, :cond_0

    .line 382
    iget-object v0, p0, Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener;->mContext:Landroid/content/Context;

    const v1, 0x10404a7

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 384
    :cond_0
    iget-object v0, p0, Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener;->mContext:Landroid/content/Context;

    const v1, 0x10404a5

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 381
    :goto_0
    return-object v0
.end method

.method private getSwitchInputTitle(Z)Ljava/lang/CharSequence;
    .locals 2
    .param p1, "useRemoteMicrophone"    # Z

    .line 373
    if-eqz p1, :cond_0

    .line 374
    iget-object v0, p0, Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener;->mContext:Landroid/content/Context;

    const v1, 0x10404a8

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 376
    :cond_0
    iget-object v0, p0, Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener;->mContext:Landroid/content/Context;

    const v1, 0x10404a6

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 373
    :goto_0
    return-object v0
.end method

.method private static synthetic lambda$getSupportedInputHearingDeviceInfo$1(Landroid/media/AudioDeviceInfo;)Z
    .locals 2
    .param p0, "info"    # Landroid/media/AudioDeviceInfo;

    .line 245
    invoke-virtual {p0}, Landroid/media/AudioDeviceInfo;->getType()I

    move-result v0

    const/16 v1, 0x1a

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static synthetic lambda$getSupportedInputHearingDeviceInfo$2(Ljava/util/Set;Landroid/media/AudioDeviceInfo;)Z
    .locals 1
    .param p0, "inputDeviceAddress"    # Ljava/util/Set;
    .param p1, "info"    # Landroid/media/AudioDeviceInfo;

    .line 246
    invoke-virtual {p1}, Landroid/media/AudioDeviceInfo;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private synthetic lambda$getSupportedInputHearingDeviceInfo$3(Landroid/bluetooth/BluetoothAdapter;Landroid/media/AudioDeviceInfo;)Z
    .locals 1
    .param p1, "bluetoothAdapter"    # Landroid/bluetooth/BluetoothAdapter;
    .param p2, "info"    # Landroid/media/AudioDeviceInfo;

    .line 247
    invoke-virtual {p0, p1, p2}, Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener;->isHapClientDevice(Landroid/bluetooth/BluetoothAdapter;Landroid/media/AudioDeviceInfo;)Z

    move-result v0

    return v0
.end method

.method private synthetic lambda$new$0(Landroid/media/AudioDeviceInfo;)V
    .locals 1
    .param p1, "device"    # Landroid/media/AudioDeviceInfo;

    .line 126
    if-nez p1, :cond_0

    .line 127
    return-void

    .line 129
    :cond_0
    invoke-static {p1}, Ljava/util/List;->of(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener;->getSupportedInputHearingDeviceInfo(Ljava/util/List;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener;->mHearingDevice:Landroid/bluetooth/BluetoothDevice;

    .line 130
    iget-object v0, p0, Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener;->mHearingDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v0, :cond_1

    .line 131
    invoke-direct {p0}, Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener;->showNotificationIfNeeded()V

    goto :goto_0

    .line 133
    :cond_1
    invoke-direct {p0}, Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener;->dismissNotificationIfNeeded()V

    .line 135
    :goto_0
    return-void
.end method

.method private registerReceiverIfNeeded()V
    .locals 7

    .line 353
    iget-object v0, p0, Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener;->mHearingDeviceActionReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 354
    return-void

    .line 356
    :cond_0
    new-instance v0, Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener$HearingDeviceActionReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener$HearingDeviceActionReceiver;-><init>(Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener;Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController-IA;)V

    iput-object v0, p0, Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener;->mHearingDeviceActionReceiver:Landroid/content/BroadcastReceiver;

    .line 357
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    move-object v3, v0

    .line 358
    .local v3, "intentFilter":Landroid/content/IntentFilter;
    const-string v0, "com.android.server.accessibility.hearingdevice.action.SWITCH_TO_BUILTIN_MIC"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 359
    const-string v0, "com.android.server.accessibility.hearingdevice.action.SWITCH_TO_HEARING_MIC"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 360
    iget-object v1, p0, Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener;->mHearingDeviceActionReceiver:Landroid/content/BroadcastReceiver;

    const/4 v5, 0x0

    const/4 v6, 0x4

    const-string v4, "android.permission.MANAGE_ACCESSIBILITY"

    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    .line 362
    return-void
.end method

.method private removeOnCommunicationDeviceChangedListenerIfNeeded(Landroid/media/AudioManager$OnCommunicationDeviceChangedListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/media/AudioManager$OnCommunicationDeviceChangedListener;

    .line 190
    iget-boolean v0, p0, Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener;->mIsCommDeviceChangedRegistered:Z

    if-nez v0, :cond_0

    .line 191
    return-void

    .line 194
    :cond_0
    iget-object v0, p0, Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->removeOnCommunicationDeviceChangedListener(Landroid/media/AudioManager$OnCommunicationDeviceChangedListener;)V

    .line 195
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener;->mIsCommDeviceChangedRegistered:Z

    .line 196
    return-void
.end method

.method private setMicrophonePreferredForCalls(Z)V
    .locals 0
    .param p1, "useRemoteMicrophone"    # Z

    .line 328
    if-eqz p1, :cond_0

    .line 329
    invoke-direct {p0}, Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener;->switchToHearingMic()V

    goto :goto_0

    .line 331
    :cond_0
    invoke-direct {p0}, Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener;->switchToBuiltinMic()V

    .line 333
    :goto_0
    return-void
.end method

.method private showNotification(Z)V
    .locals 3
    .param p1, "useRemoteMicrophone"    # Z

    .line 217
    iget-object v0, p0, Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener;->mNotificationManager:Landroid/app/NotificationManager;

    .line 219
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener;->createSwitchInputNotification(Z)Landroid/app/Notification;

    move-result-object v1

    .line 217
    const/16 v2, 0x3f4

    invoke-virtual {v0, v2, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 220
    invoke-direct {p0}, Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener;->registerReceiverIfNeeded()V

    .line 221
    return-void
.end method

.method private showNotificationIfNeeded()V
    .locals 1

    .line 199
    iget-boolean v0, p0, Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener;->mIsNotificationShown:Z

    if-eqz v0, :cond_0

    .line 200
    return-void

    .line 203
    :cond_0
    iget-object v0, p0, Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener;->mHearingDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->isMicrophonePreferredForCalls()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener;->showNotification(Z)V

    .line 204
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener;->mIsNotificationShown:Z

    .line 205
    return-void
.end method

.method private switchToBuiltinMic()V
    .locals 3

    .line 337
    iget-object v0, p0, Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->clearPreferredDevicesForCapturePreset(I)Z

    .line 339
    iget-object v0, p0, Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener;->mAudioManager:Landroid/media/AudioManager;

    sget-object v2, Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener;->BUILTIN_MIC:Landroid/media/AudioDeviceAttributes;

    invoke-virtual {v0, v1, v2}, Landroid/media/AudioManager;->setPreferredDeviceForCapturePreset(ILandroid/media/AudioDeviceAttributes;)Z

    .line 341
    return-void
.end method

.method private switchToHearingMic()V
    .locals 2

    .line 348
    iget-object v0, p0, Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->clearPreferredDevicesForCapturePreset(I)Z

    .line 350
    return-void
.end method

.method private unregisterReceiverIfNeeded()V
    .locals 2

    .line 365
    iget-object v0, p0, Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener;->mHearingDeviceActionReceiver:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_0

    .line 366
    return-void

    .line 368
    :cond_0
    iget-object v0, p0, Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener;->mHearingDeviceActionReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 369
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener;->mHearingDeviceActionReceiver:Landroid/content/BroadcastReceiver;

    .line 370
    return-void
.end method


# virtual methods
.method isHapClientDevice(Landroid/bluetooth/BluetoothAdapter;Landroid/media/AudioDeviceInfo;)Z
    .locals 3
    .param p1, "bluetoothAdapter"    # Landroid/bluetooth/BluetoothAdapter;
    .param p2, "info"    # Landroid/media/AudioDeviceInfo;

    .line 257
    invoke-virtual {p2}, Landroid/media/AudioDeviceInfo;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 258
    .local v0, "device":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getUuids()[Landroid/os/ParcelUuid;

    move-result-object v1

    sget-object v2, Landroid/bluetooth/BluetoothUuid;->HAS:Landroid/os/ParcelUuid;

    invoke-static {v1, v2}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method isHapClientSupported()Z
    .locals 2

    .line 263
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getSupportedProfiles()Ljava/util/List;

    move-result-object v0

    .line 264
    const/16 v1, 0x1c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 263
    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public onCallStateChanged(I)V
    .locals 3
    .param p1, "state"    # I

    .line 145
    iget-object v0, p0, Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/NotificationManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener;->mNotificationManager:Landroid/app/NotificationManager;

    .line 146
    iget-object v0, p0, Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener;->mContext:Landroid/content/Context;

    const-class v1, Landroid/media/AudioManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener;->mAudioManager:Landroid/media/AudioManager;

    .line 147
    iget-object v0, p0, Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener;->mNotificationManager:Landroid/app/NotificationManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener;->mAudioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_1

    :cond_0
    goto :goto_1

    .line 152
    :cond_1
    if-nez p1, :cond_3

    .line 153
    iget-object v0, p0, Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener;->mCommDeviceChangedListener:Landroid/media/AudioManager$OnCommunicationDeviceChangedListener;

    invoke-direct {p0, v0}, Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener;->removeOnCommunicationDeviceChangedListenerIfNeeded(Landroid/media/AudioManager$OnCommunicationDeviceChangedListener;)V

    .line 154
    invoke-direct {p0}, Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener;->dismissNotificationIfNeeded()V

    .line 156
    iget-object v0, p0, Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener;->mHearingDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v0, :cond_2

    .line 158
    iget-object v0, p0, Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener;->mHearingDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->isMicrophonePreferredForCalls()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener;->setMicrophonePreferredForCalls(Z)V

    .line 160
    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener;->mHearingDevice:Landroid/bluetooth/BluetoothDevice;

    .line 162
    :cond_3
    const/4 v0, 0x2

    if-ne p1, v0, :cond_6

    .line 163
    iget-object v0, p0, Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getCommunicationDevice()Landroid/media/AudioDeviceInfo;

    move-result-object v0

    .line 164
    .local v0, "commDevice":Landroid/media/AudioDeviceInfo;
    if-nez v0, :cond_4

    .line 165
    return-void

    .line 167
    :cond_4
    invoke-static {v0}, Ljava/util/List;->of(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener;->getSupportedInputHearingDeviceInfo(Ljava/util/List;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener;->mHearingDevice:Landroid/bluetooth/BluetoothDevice;

    .line 168
    iget-object v1, p0, Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener;->mHearingDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v1, :cond_5

    .line 169
    invoke-direct {p0}, Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener;->showNotificationIfNeeded()V

    goto :goto_0

    .line 171
    :cond_5
    iget-object v1, p0, Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener;->mCommDeviceChangedExecutor:Ljava/util/concurrent/Executor;

    iget-object v2, p0, Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener;->mCommDeviceChangedListener:Landroid/media/AudioManager$OnCommunicationDeviceChangedListener;

    invoke-direct {p0, v1, v2}, Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener;->addOnCommunicationDeviceChangedListenerIfNeeded(Ljava/util/concurrent/Executor;Landroid/media/AudioManager$OnCommunicationDeviceChangedListener;)V

    .line 175
    .end local v0    # "commDevice":Landroid/media/AudioDeviceInfo;
    :cond_6
    :goto_0
    return-void

    .line 148
    :goto_1
    const-string v0, "HearingDevice_CallStateListener"

    const-string v1, "NotificationManager or AudioManager is not prepare yet."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    return-void
.end method
