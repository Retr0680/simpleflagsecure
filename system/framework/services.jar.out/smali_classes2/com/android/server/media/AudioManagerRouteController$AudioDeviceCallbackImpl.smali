.class Lcom/android/server/media/AudioManagerRouteController$AudioDeviceCallbackImpl;
.super Landroid/media/AudioDeviceCallback;
.source "AudioManagerRouteController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/media/AudioManagerRouteController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AudioDeviceCallbackImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/media/AudioManagerRouteController;


# direct methods
.method private constructor <init>(Lcom/android/server/media/AudioManagerRouteController;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 637
    iput-object p1, p0, Lcom/android/server/media/AudioManagerRouteController$AudioDeviceCallbackImpl;->this$0:Lcom/android/server/media/AudioManagerRouteController;

    invoke-direct {p0}, Landroid/media/AudioDeviceCallback;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/media/AudioManagerRouteController;Lcom/android/server/media/AudioManagerRouteController-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/media/AudioManagerRouteController$AudioDeviceCallbackImpl;-><init>(Lcom/android/server/media/AudioManagerRouteController;)V

    return-void
.end method


# virtual methods
.method public onAudioDevicesAdded([Landroid/media/AudioDeviceInfo;)V
    .locals 5
    .param p1, "addedDevices"    # [Landroid/media/AudioDeviceInfo;

    .line 641
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    nop

    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    .line 642
    .local v2, "deviceInfo":Landroid/media/AudioDeviceInfo;
    invoke-static {}, Lcom/android/server/media/AudioManagerRouteController;->-$$Nest$sfgetAUDIO_DEVICE_INFO_TYPE_TO_ROUTE_INFO()Landroid/util/SparseArray;

    move-result-object v3

    invoke-virtual {v2}, Landroid/media/AudioDeviceInfo;->getType()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->contains(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 647
    iget-object v0, p0, Lcom/android/server/media/AudioManagerRouteController$AudioDeviceCallbackImpl;->this$0:Lcom/android/server/media/AudioManagerRouteController;

    invoke-static {v0}, Lcom/android/server/media/AudioManagerRouteController;->-$$Nest$fgetmAudioManager(Lcom/android/server/media/AudioManagerRouteController;)Landroid/media/AudioManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/media/AudioManagerRouteController$AudioDeviceCallbackImpl;->this$0:Lcom/android/server/media/AudioManagerRouteController;

    invoke-static {v1}, Lcom/android/server/media/AudioManagerRouteController;->-$$Nest$fgetmStrategyForMedia(Lcom/android/server/media/AudioManagerRouteController;)Landroid/media/audiopolicy/AudioProductStrategy;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->removePreferredDeviceForStrategy(Landroid/media/audiopolicy/AudioProductStrategy;)Z

    .line 648
    iget-object v0, p0, Lcom/android/server/media/AudioManagerRouteController$AudioDeviceCallbackImpl;->this$0:Lcom/android/server/media/AudioManagerRouteController;

    invoke-static {v0}, Lcom/android/server/media/AudioManagerRouteController;->-$$Nest$mrebuildAvailableRoutesAndNotify(Lcom/android/server/media/AudioManagerRouteController;)V

    .line 649
    goto :goto_1

    .line 642
    :cond_0
    nop

    .line 641
    .end local v2    # "deviceInfo":Landroid/media/AudioDeviceInfo;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 652
    :cond_1
    :goto_1
    return-void
.end method

.method public onAudioDevicesRemoved([Landroid/media/AudioDeviceInfo;)V
    .locals 5
    .param p1, "removedDevices"    # [Landroid/media/AudioDeviceInfo;

    .line 661
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    nop

    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    .line 662
    .local v2, "deviceInfo":Landroid/media/AudioDeviceInfo;
    invoke-static {}, Lcom/android/server/media/AudioManagerRouteController;->-$$Nest$sfgetAUDIO_DEVICE_INFO_TYPE_TO_ROUTE_INFO()Landroid/util/SparseArray;

    move-result-object v3

    invoke-virtual {v2}, Landroid/media/AudioDeviceInfo;->getType()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->contains(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 663
    iget-object v0, p0, Lcom/android/server/media/AudioManagerRouteController$AudioDeviceCallbackImpl;->this$0:Lcom/android/server/media/AudioManagerRouteController;

    invoke-static {v0}, Lcom/android/server/media/AudioManagerRouteController;->-$$Nest$mrebuildAvailableRoutesAndNotify(Lcom/android/server/media/AudioManagerRouteController;)V

    .line 664
    goto :goto_1

    .line 662
    :cond_0
    nop

    .line 661
    .end local v2    # "deviceInfo":Landroid/media/AudioDeviceInfo;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 667
    :cond_1
    :goto_1
    return-void
.end method
