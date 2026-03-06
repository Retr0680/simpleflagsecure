.class final Lcom/android/server/media/quality/MediaQualityService$SoundProfileAdjustmentListenerImpl;
.super Landroid/hardware/tv/mediaquality/ISoundProfileAdjustmentListener$Stub;
.source "MediaQualityService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/media/quality/MediaQualityService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SoundProfileAdjustmentListenerImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/media/quality/MediaQualityService;


# direct methods
.method private constructor <init>(Lcom/android/server/media/quality/MediaQualityService;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 1997
    iput-object p1, p0, Lcom/android/server/media/quality/MediaQualityService$SoundProfileAdjustmentListenerImpl;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-direct {p0}, Landroid/hardware/tv/mediaquality/ISoundProfileAdjustmentListener$Stub;-><init>()V

    .line 1999
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/media/quality/MediaQualityService;Lcom/android/server/media/quality/MediaQualityService-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/media/quality/MediaQualityService$SoundProfileAdjustmentListenerImpl;-><init>(Lcom/android/server/media/quality/MediaQualityService;)V

    return-void
.end method


# virtual methods
.method public getInterfaceHash()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1994
    const/4 v0, 0x0

    return-object v0
.end method

.method public getInterfaceVersion()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1989
    const/4 v0, 0x0

    return v0
.end method

.method public onParamCapabilityChanged(J[Landroid/hardware/tv/mediaquality/ParamCapability;)V
    .locals 4
    .param p1, "soundProfileId"    # J
    .param p3, "caps"    # [Landroid/hardware/tv/mediaquality/ParamCapability;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1968
    iget-object v0, p0, Lcom/android/server/media/quality/MediaQualityService$SoundProfileAdjustmentListenerImpl;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {v0}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmMqManagerNotifier(Lcom/android/server/media/quality/MediaQualityService;)Lcom/android/server/media/quality/MediaQualityService$MqManagerNotifier;

    move-result-object v0

    .line 1969
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    .line 1968
    invoke-static {v0, v1, p3, v2, v3}, Lcom/android/server/media/quality/MediaQualityService$MqManagerNotifier;->-$$Nest$mnotifyOnSoundProfileParameterCapabilitiesChanged(Lcom/android/server/media/quality/MediaQualityService$MqManagerNotifier;Ljava/lang/Long;[Landroid/hardware/tv/mediaquality/ParamCapability;II)V

    .line 1970
    return-void
.end method

.method public onSoundProfileAdjusted(Landroid/hardware/tv/mediaquality/SoundProfile;)V
    .locals 3
    .param p1, "soundProfile"    # Landroid/hardware/tv/mediaquality/SoundProfile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1957
    iget-wide v0, p1, Landroid/hardware/tv/mediaquality/SoundProfile;->soundProfileId:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 1958
    .local v0, "dbId":Ljava/lang/Long;
    nop

    .line 1959
    iget-object v1, p0, Lcom/android/server/media/quality/MediaQualityService$SoundProfileAdjustmentListenerImpl;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    iget-object v2, p1, Landroid/hardware/tv/mediaquality/SoundProfile;->parameters:Landroid/hardware/tv/mediaquality/SoundParameters;

    iget-object v2, v2, Landroid/hardware/tv/mediaquality/SoundParameters;->soundParameters:[Landroid/hardware/tv/mediaquality/SoundParameter;

    .line 1960
    invoke-static {v2}, Lcom/android/server/media/quality/MediaQualityUtils;->convertSoundParameterListToPersistableBundle([Landroid/hardware/tv/mediaquality/SoundParameter;)Landroid/os/PersistableBundle;

    move-result-object v2

    .line 1959
    invoke-virtual {v1, v0, v2}, Lcom/android/server/media/quality/MediaQualityService;->updateSoundProfileFromHal(Ljava/lang/Long;Landroid/os/PersistableBundle;)V

    .line 1963
    return-void
.end method

.method public onVendorParamCapabilityChanged(J[Landroid/hardware/tv/mediaquality/VendorParamCapability;)V
    .locals 0
    .param p1, "pictureProfileId"    # J
    .param p3, "caps"    # [Landroid/hardware/tv/mediaquality/VendorParamCapability;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1976
    return-void
.end method

.method public requestSoundParameters(J)V
    .locals 4
    .param p1, "soundProfileId"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1980
    iget-object v0, p0, Lcom/android/server/media/quality/MediaQualityService$SoundProfileAdjustmentListenerImpl;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {v0}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmMqDatabaseUtils(Lcom/android/server/media/quality/MediaQualityService;)Lcom/android/server/media/quality/MediaQualityService$MqDatabaseUtils;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/media/quality/MediaQualityService$MqDatabaseUtils;->-$$Nest$mgetSoundProfile(Lcom/android/server/media/quality/MediaQualityService$MqDatabaseUtils;Ljava/lang/Long;)Landroid/media/quality/SoundProfile;

    move-result-object v0

    .line 1981
    .local v0, "profile":Landroid/media/quality/SoundProfile;
    if-eqz v0, :cond_0

    .line 1982
    iget-object v1, p0, Lcom/android/server/media/quality/MediaQualityService$SoundProfileAdjustmentListenerImpl;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {v1}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmHalNotifier(Lcom/android/server/media/quality/MediaQualityService;)Lcom/android/server/media/quality/MediaQualityService$HalNotifier;

    move-result-object v1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 1983
    invoke-virtual {v0}, Landroid/media/quality/SoundProfile;->getParameters()Landroid/os/PersistableBundle;

    move-result-object v3

    .line 1982
    invoke-static {v1, v2, v3}, Lcom/android/server/media/quality/MediaQualityService$HalNotifier;->-$$Nest$mnotifyHalOnSoundProfileChange(Lcom/android/server/media/quality/MediaQualityService$HalNotifier;Ljava/lang/Long;Landroid/os/PersistableBundle;)V

    .line 1985
    :cond_0
    return-void
.end method
