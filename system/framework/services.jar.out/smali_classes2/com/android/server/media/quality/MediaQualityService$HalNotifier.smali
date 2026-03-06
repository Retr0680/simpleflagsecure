.class final Lcom/android/server/media/quality/MediaQualityService$HalNotifier;
.super Ljava/lang/Object;
.source "MediaQualityService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/media/quality/MediaQualityService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "HalNotifier"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/media/quality/MediaQualityService;


# direct methods
.method static bridge synthetic -$$Nest$mnotifyHalOnPictureProfileChange(Lcom/android/server/media/quality/MediaQualityService$HalNotifier;Ljava/lang/Long;Landroid/os/PersistableBundle;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/server/media/quality/MediaQualityService$HalNotifier;->notifyHalOnPictureProfileChange(Ljava/lang/Long;Landroid/os/PersistableBundle;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mnotifyHalOnSoundProfileChange(Lcom/android/server/media/quality/MediaQualityService$HalNotifier;Ljava/lang/Long;Landroid/os/PersistableBundle;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/server/media/quality/MediaQualityService$HalNotifier;->notifyHalOnSoundProfileChange(Ljava/lang/Long;Landroid/os/PersistableBundle;)V

    return-void
.end method

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

    .line 1750
    iput-object p1, p0, Lcom/android/server/media/quality/MediaQualityService$HalNotifier;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1752
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/media/quality/MediaQualityService;Lcom/android/server/media/quality/MediaQualityService-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/media/quality/MediaQualityService$HalNotifier;-><init>(Lcom/android/server/media/quality/MediaQualityService;)V

    return-void
.end method

.method private convertToHalPictureProfile(Ljava/lang/Long;Landroid/os/PersistableBundle;)Landroid/hardware/tv/mediaquality/PictureProfile;
    .locals 5
    .param p1, "id"    # Ljava/lang/Long;
    .param p2, "params"    # Landroid/os/PersistableBundle;

    .line 1700
    new-instance v0, Landroid/hardware/tv/mediaquality/PictureParameters;

    invoke-direct {v0}, Landroid/hardware/tv/mediaquality/PictureParameters;-><init>()V

    .line 1701
    .local v0, "pictureParameters":Landroid/hardware/tv/mediaquality/PictureParameters;
    nop

    .line 1702
    invoke-static {p2}, Lcom/android/server/media/quality/MediaQualityUtils;->convertPersistableBundleToPictureParameterList(Landroid/os/PersistableBundle;)[Landroid/hardware/tv/mediaquality/PictureParameter;

    move-result-object v1

    iput-object v1, v0, Landroid/hardware/tv/mediaquality/PictureParameters;->pictureParameters:[Landroid/hardware/tv/mediaquality/PictureParameter;

    .line 1705
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1706
    .local v1, "parcel":Landroid/os/Parcel;
    if-eqz p2, :cond_0

    .line 1707
    iget-object v2, p0, Lcom/android/server/media/quality/MediaQualityService$HalNotifier;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {v2, v0, v1, p2}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$msetVendorPictureParameters(Lcom/android/server/media/quality/MediaQualityService;Landroid/hardware/tv/mediaquality/PictureParameters;Landroid/os/Parcel;Landroid/os/PersistableBundle;)V

    .line 1710
    :cond_0
    new-instance v2, Landroid/hardware/tv/mediaquality/PictureProfile;

    invoke-direct {v2}, Landroid/hardware/tv/mediaquality/PictureProfile;-><init>()V

    .line 1712
    .local v2, "toReturn":Landroid/hardware/tv/mediaquality/PictureProfile;
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iput-wide v3, v2, Landroid/hardware/tv/mediaquality/PictureProfile;->pictureProfileId:J

    .line 1713
    iput-object v0, v2, Landroid/hardware/tv/mediaquality/PictureProfile;->parameters:Landroid/hardware/tv/mediaquality/PictureParameters;

    .line 1715
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1716
    return-object v2
.end method

.method private convertToHalSoundProfile(Ljava/lang/Long;Landroid/os/PersistableBundle;)Landroid/hardware/tv/mediaquality/SoundProfile;
    .locals 5
    .param p1, "id"    # Ljava/lang/Long;
    .param p2, "params"    # Landroid/os/PersistableBundle;

    .line 1733
    new-instance v0, Landroid/hardware/tv/mediaquality/SoundParameters;

    invoke-direct {v0}, Landroid/hardware/tv/mediaquality/SoundParameters;-><init>()V

    .line 1734
    .local v0, "soundParameters":Landroid/hardware/tv/mediaquality/SoundParameters;
    nop

    .line 1735
    invoke-static {p2}, Lcom/android/server/media/quality/MediaQualityUtils;->convertPersistableBundleToSoundParameterList(Landroid/os/PersistableBundle;)[Landroid/hardware/tv/mediaquality/SoundParameter;

    move-result-object v1

    iput-object v1, v0, Landroid/hardware/tv/mediaquality/SoundParameters;->soundParameters:[Landroid/hardware/tv/mediaquality/SoundParameter;

    .line 1737
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1738
    .local v1, "parcel":Landroid/os/Parcel;
    if-eqz p2, :cond_0

    .line 1739
    iget-object v2, p0, Lcom/android/server/media/quality/MediaQualityService$HalNotifier;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {v2, v0, v1, p2}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$msetVendorSoundParameters(Lcom/android/server/media/quality/MediaQualityService;Landroid/hardware/tv/mediaquality/SoundParameters;Landroid/os/Parcel;Landroid/os/PersistableBundle;)V

    .line 1742
    :cond_0
    new-instance v2, Landroid/hardware/tv/mediaquality/SoundProfile;

    invoke-direct {v2}, Landroid/hardware/tv/mediaquality/SoundProfile;-><init>()V

    .line 1744
    .local v2, "toReturn":Landroid/hardware/tv/mediaquality/SoundProfile;
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iput-wide v3, v2, Landroid/hardware/tv/mediaquality/SoundProfile;->soundProfileId:J

    .line 1745
    iput-object v0, v2, Landroid/hardware/tv/mediaquality/SoundProfile;->parameters:Landroid/hardware/tv/mediaquality/SoundParameters;

    .line 1747
    return-object v2
.end method

.method private notifyHalOnPictureProfileChange(Ljava/lang/Long;Landroid/os/PersistableBundle;)V
    .locals 5
    .param p1, "dbId"    # Ljava/lang/Long;
    .param p2, "params"    # Landroid/os/PersistableBundle;

    .line 1677
    iget-object v0, p0, Lcom/android/server/media/quality/MediaQualityService$HalNotifier;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {v0}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmPpChangedListener(Lcom/android/server/media/quality/MediaQualityService;)Landroid/hardware/tv/mediaquality/IPictureProfileChangedListener;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1678
    iget-object v0, p0, Lcom/android/server/media/quality/MediaQualityService$HalNotifier;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {v0}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmCurrentPictureHandleToOriginal(Lcom/android/server/media/quality/MediaQualityService;)Lcom/android/server/media/quality/BiMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/media/quality/BiMap;->getKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 1679
    .local v0, "currentHandle":Ljava/lang/Long;
    if-eqz v0, :cond_0

    .line 1681
    return-void

    .line 1684
    :cond_0
    move-object v1, p1

    .line 1685
    .local v1, "idForHal":Ljava/lang/Long;
    :try_start_0
    iget-object v2, p0, Lcom/android/server/media/quality/MediaQualityService$HalNotifier;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {v2}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmCurrentPictureHandleToOriginal(Lcom/android/server/media/quality/MediaQualityService;)Lcom/android/server/media/quality/BiMap;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/server/media/quality/BiMap;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    .line 1686
    .local v2, "originalHandle":Ljava/lang/Long;
    if-eqz v2, :cond_1

    .line 1688
    move-object v1, v2

    .line 1690
    :cond_1
    iget-object v3, p0, Lcom/android/server/media/quality/MediaQualityService$HalNotifier;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {v3}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmPpChangedListener(Lcom/android/server/media/quality/MediaQualityService;)Landroid/hardware/tv/mediaquality/IPictureProfileChangedListener;

    move-result-object v3

    invoke-direct {p0, v1, p2}, Lcom/android/server/media/quality/MediaQualityService$HalNotifier;->convertToHalPictureProfile(Ljava/lang/Long;Landroid/os/PersistableBundle;)Landroid/hardware/tv/mediaquality/PictureProfile;

    move-result-object v4

    invoke-interface {v3, v4}, Landroid/hardware/tv/mediaquality/IPictureProfileChangedListener;->onPictureProfileChanged(Landroid/hardware/tv/mediaquality/PictureProfile;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1694
    .end local v1    # "idForHal":Ljava/lang/Long;
    .end local v2    # "originalHandle":Ljava/lang/Long;
    goto :goto_0

    .line 1692
    :catch_0
    move-exception v1

    .line 1693
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "MediaQualityService"

    const-string v3, "Failed to notify HAL on picture profile change."

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1696
    .end local v0    # "currentHandle":Ljava/lang/Long;
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_2
    :goto_0
    return-void
.end method

.method private notifyHalOnSoundProfileChange(Ljava/lang/Long;Landroid/os/PersistableBundle;)V
    .locals 3
    .param p1, "dbId"    # Ljava/lang/Long;
    .param p2, "params"    # Landroid/os/PersistableBundle;

    .line 1721
    iget-object v0, p0, Lcom/android/server/media/quality/MediaQualityService$HalNotifier;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {v0}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmSpChangedListener(Lcom/android/server/media/quality/MediaQualityService;)Landroid/hardware/tv/mediaquality/ISoundProfileChangedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1723
    :try_start_0
    iget-object v0, p0, Lcom/android/server/media/quality/MediaQualityService$HalNotifier;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {v0}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmSpChangedListener(Lcom/android/server/media/quality/MediaQualityService;)Landroid/hardware/tv/mediaquality/ISoundProfileChangedListener;

    move-result-object v0

    .line 1724
    invoke-direct {p0, p1, p2}, Lcom/android/server/media/quality/MediaQualityService$HalNotifier;->convertToHalSoundProfile(Ljava/lang/Long;Landroid/os/PersistableBundle;)Landroid/hardware/tv/mediaquality/SoundProfile;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/hardware/tv/mediaquality/ISoundProfileChangedListener;->onSoundProfileChanged(Landroid/hardware/tv/mediaquality/SoundProfile;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1727
    goto :goto_0

    .line 1725
    :catch_0
    move-exception v0

    .line 1726
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MediaQualityService"

    const-string v2, "Failed to notify HAL on sound profile change."

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1729
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method
