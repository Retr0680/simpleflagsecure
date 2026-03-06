.class public final synthetic Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener;

.field public final synthetic f$1:Landroid/bluetooth/BluetoothAdapter;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener;Landroid/bluetooth/BluetoothAdapter;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener;

    iput-object p2, p0, Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener$$ExternalSyntheticLambda4;->f$1:Landroid/bluetooth/BluetoothAdapter;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener;

    iget-object v1, p0, Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener$$ExternalSyntheticLambda4;->f$1:Landroid/bluetooth/BluetoothAdapter;

    check-cast p1, Landroid/media/AudioDeviceInfo;

    invoke-static {v0, v1, p1}, Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener;->$r8$lambda$N94sfgtU8f4QzmRxLpBL9efKKKE(Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener;Landroid/bluetooth/BluetoothAdapter;Landroid/media/AudioDeviceInfo;)Z

    move-result p1

    return p1
.end method
