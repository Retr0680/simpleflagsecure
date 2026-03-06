.class final Lcom/android/server/media/quality/MediaQualityService$MqManagerNotifier;
.super Ljava/lang/Object;
.source "MediaQualityService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/media/quality/MediaQualityService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MqManagerNotifier"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/media/quality/MediaQualityService$MqManagerNotifier$ProfileModes;
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/media/quality/MediaQualityService;


# direct methods
.method static bridge synthetic -$$Nest$mnotifyOnPictureProfileAdded(Lcom/android/server/media/quality/MediaQualityService$MqManagerNotifier;Ljava/lang/String;Landroid/media/quality/PictureProfile;II)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/media/quality/MediaQualityService$MqManagerNotifier;->notifyOnPictureProfileAdded(Ljava/lang/String;Landroid/media/quality/PictureProfile;II)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mnotifyOnPictureProfileError(Lcom/android/server/media/quality/MediaQualityService$MqManagerNotifier;Ljava/lang/String;III)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/media/quality/MediaQualityService$MqManagerNotifier;->notifyOnPictureProfileError(Ljava/lang/String;III)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mnotifyOnPictureProfileParameterCapabilitiesChanged(Lcom/android/server/media/quality/MediaQualityService$MqManagerNotifier;Ljava/lang/Long;[Landroid/hardware/tv/mediaquality/ParamCapability;II)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/media/quality/MediaQualityService$MqManagerNotifier;->notifyOnPictureProfileParameterCapabilitiesChanged(Ljava/lang/Long;[Landroid/hardware/tv/mediaquality/ParamCapability;II)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mnotifyOnPictureProfileRemoved(Lcom/android/server/media/quality/MediaQualityService$MqManagerNotifier;Ljava/lang/String;Landroid/media/quality/PictureProfile;II)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/media/quality/MediaQualityService$MqManagerNotifier;->notifyOnPictureProfileRemoved(Ljava/lang/String;Landroid/media/quality/PictureProfile;II)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mnotifyOnPictureProfileUpdated(Lcom/android/server/media/quality/MediaQualityService$MqManagerNotifier;Ljava/lang/String;Landroid/media/quality/PictureProfile;II)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/media/quality/MediaQualityService$MqManagerNotifier;->notifyOnPictureProfileUpdated(Ljava/lang/String;Landroid/media/quality/PictureProfile;II)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mnotifyOnSoundProfileAdded(Lcom/android/server/media/quality/MediaQualityService$MqManagerNotifier;Ljava/lang/String;Landroid/media/quality/SoundProfile;II)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/media/quality/MediaQualityService$MqManagerNotifier;->notifyOnSoundProfileAdded(Ljava/lang/String;Landroid/media/quality/SoundProfile;II)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mnotifyOnSoundProfileError(Lcom/android/server/media/quality/MediaQualityService$MqManagerNotifier;Ljava/lang/String;III)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/media/quality/MediaQualityService$MqManagerNotifier;->notifyOnSoundProfileError(Ljava/lang/String;III)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mnotifyOnSoundProfileParameterCapabilitiesChanged(Lcom/android/server/media/quality/MediaQualityService$MqManagerNotifier;Ljava/lang/Long;[Landroid/hardware/tv/mediaquality/ParamCapability;II)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/media/quality/MediaQualityService$MqManagerNotifier;->notifyOnSoundProfileParameterCapabilitiesChanged(Ljava/lang/Long;[Landroid/hardware/tv/mediaquality/ParamCapability;II)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mnotifyOnSoundProfileRemoved(Lcom/android/server/media/quality/MediaQualityService$MqManagerNotifier;Ljava/lang/String;Landroid/media/quality/SoundProfile;II)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/media/quality/MediaQualityService$MqManagerNotifier;->notifyOnSoundProfileRemoved(Ljava/lang/String;Landroid/media/quality/SoundProfile;II)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mnotifyOnSoundProfileUpdated(Lcom/android/server/media/quality/MediaQualityService$MqManagerNotifier;Ljava/lang/String;Landroid/media/quality/SoundProfile;II)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/media/quality/MediaQualityService$MqManagerNotifier;->notifyOnSoundProfileUpdated(Ljava/lang/String;Landroid/media/quality/SoundProfile;II)V

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

    .line 1668
    iput-object p1, p0, Lcom/android/server/media/quality/MediaQualityService$MqManagerNotifier;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1670
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/media/quality/MediaQualityService;Lcom/android/server/media/quality/MediaQualityService-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/media/quality/MediaQualityService$MqManagerNotifier;-><init>(Lcom/android/server/media/quality/MediaQualityService;)V

    return-void
.end method

.method private notifyOnPictureProfileAdded(Ljava/lang/String;Landroid/media/quality/PictureProfile;II)V
    .locals 8
    .param p1, "profileId"    # Ljava/lang/String;
    .param p2, "profile"    # Landroid/media/quality/PictureProfile;
    .param p3, "uid"    # I
    .param p4, "pid"    # I

    .line 1497
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v1, 0x1

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move v6, p3

    move v7, p4

    .end local p1    # "profileId":Ljava/lang/String;
    .end local p2    # "profile":Landroid/media/quality/PictureProfile;
    .end local p3    # "uid":I
    .end local p4    # "pid":I
    .local v2, "profileId":Ljava/lang/String;
    .local v3, "profile":Landroid/media/quality/PictureProfile;
    .local v6, "uid":I
    .local v7, "pid":I
    invoke-direct/range {v0 .. v7}, Lcom/android/server/media/quality/MediaQualityService$MqManagerNotifier;->notifyPictureProfileHelper(ILjava/lang/String;Landroid/media/quality/PictureProfile;Ljava/lang/Integer;Ljava/util/List;II)V

    .line 1498
    return-void
.end method

.method private notifyOnPictureProfileError(Ljava/lang/String;III)V
    .locals 8
    .param p1, "profileId"    # Ljava/lang/String;
    .param p2, "errorCode"    # I
    .param p3, "uid"    # I
    .param p4, "pid"    # I

    .line 1514
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v1, 0x4

    const/4 v3, 0x0

    move-object v0, p0

    move-object v2, p1

    move v6, p3

    move v7, p4

    .end local p1    # "profileId":Ljava/lang/String;
    .end local p3    # "uid":I
    .end local p4    # "pid":I
    .local v2, "profileId":Ljava/lang/String;
    .local v6, "uid":I
    .local v7, "pid":I
    invoke-direct/range {v0 .. v7}, Lcom/android/server/media/quality/MediaQualityService$MqManagerNotifier;->notifyPictureProfileHelper(ILjava/lang/String;Landroid/media/quality/PictureProfile;Ljava/lang/Integer;Ljava/util/List;II)V

    .line 1516
    return-void
.end method

.method private notifyOnPictureProfileParameterCapabilitiesChanged(Ljava/lang/Long;[Landroid/hardware/tv/mediaquality/ParamCapability;II)V
    .locals 11
    .param p1, "profileId"    # Ljava/lang/Long;
    .param p2, "caps"    # [Landroid/hardware/tv/mediaquality/ParamCapability;
    .param p3, "uid"    # I
    .param p4, "pid"    # I

    .line 1520
    iget-object v0, p0, Lcom/android/server/media/quality/MediaQualityService$MqManagerNotifier;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {v0}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmPictureProfileTempIdMap(Lcom/android/server/media/quality/MediaQualityService;)Lcom/android/server/media/quality/BiMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/media/quality/BiMap;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Ljava/lang/String;

    .line 1521
    .local v3, "uuid":Ljava/lang/String;
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1522
    .local v6, "paramCaps":Ljava/util/List;, "Ljava/util/List<Landroid/media/quality/ParameterCapability;>;"
    array-length v0, p2

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v4, p2, v2

    .line 1523
    .local v4, "cap":Landroid/hardware/tv/mediaquality/ParamCapability;
    iget-byte v5, v4, Landroid/hardware/tv/mediaquality/ParamCapability;->name:B

    invoke-static {v5}, Lcom/android/server/media/quality/MediaQualityUtils;->getParameterName(B)Ljava/lang/String;

    move-result-object v5

    .line 1524
    .local v5, "name":Ljava/lang/String;
    iget-boolean v7, v4, Landroid/hardware/tv/mediaquality/ParamCapability;->isSupported:Z

    .line 1525
    .local v7, "isSupported":Z
    iget-object v8, v4, Landroid/hardware/tv/mediaquality/ParamCapability;->defaultValue:Landroid/hardware/tv/mediaquality/ParameterDefaultValue;

    if-nez v8, :cond_0

    move v8, v1

    goto :goto_1

    :cond_0
    iget-object v8, v4, Landroid/hardware/tv/mediaquality/ParamCapability;->defaultValue:Landroid/hardware/tv/mediaquality/ParameterDefaultValue;

    invoke-virtual {v8}, Landroid/hardware/tv/mediaquality/ParameterDefaultValue;->getTag()I

    move-result v8

    add-int/lit8 v8, v8, 0x1

    .line 1526
    .local v8, "type":I
    :goto_1
    iget-object v9, v4, Landroid/hardware/tv/mediaquality/ParamCapability;->range:Landroid/hardware/tv/mediaquality/ParameterRange;

    invoke-static {v8, v9}, Lcom/android/server/media/quality/MediaQualityUtils;->convertToCaps(ILandroid/hardware/tv/mediaquality/ParameterRange;)Landroid/os/Bundle;

    move-result-object v9

    .line 1528
    .local v9, "bundle":Landroid/os/Bundle;
    new-instance v10, Landroid/media/quality/ParameterCapability;

    invoke-direct {v10, v5, v7, v8, v9}, Landroid/media/quality/ParameterCapability;-><init>(Ljava/lang/String;ZILandroid/os/Bundle;)V

    invoke-interface {v6, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1522
    .end local v4    # "cap":Landroid/hardware/tv/mediaquality/ParamCapability;
    .end local v5    # "name":Ljava/lang/String;
    .end local v7    # "isSupported":Z
    .end local v8    # "type":I
    .end local v9    # "bundle":Landroid/os/Bundle;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1530
    :cond_1
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v2, 0x5

    move-object v1, p0

    move v7, p3

    move v8, p4

    .end local p3    # "uid":I
    .end local p4    # "pid":I
    .local v7, "uid":I
    .local v8, "pid":I
    invoke-direct/range {v1 .. v8}, Lcom/android/server/media/quality/MediaQualityService$MqManagerNotifier;->notifyPictureProfileHelper(ILjava/lang/String;Landroid/media/quality/PictureProfile;Ljava/lang/Integer;Ljava/util/List;II)V

    .line 1532
    return-void
.end method

.method private notifyOnPictureProfileRemoved(Ljava/lang/String;Landroid/media/quality/PictureProfile;II)V
    .locals 8
    .param p1, "profileId"    # Ljava/lang/String;
    .param p2, "profile"    # Landroid/media/quality/PictureProfile;
    .param p3, "uid"    # I
    .param p4, "pid"    # I

    .line 1508
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v1, 0x3

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move v6, p3

    move v7, p4

    .end local p1    # "profileId":Ljava/lang/String;
    .end local p2    # "profile":Landroid/media/quality/PictureProfile;
    .end local p3    # "uid":I
    .end local p4    # "pid":I
    .local v2, "profileId":Ljava/lang/String;
    .local v3, "profile":Landroid/media/quality/PictureProfile;
    .local v6, "uid":I
    .local v7, "pid":I
    invoke-direct/range {v0 .. v7}, Lcom/android/server/media/quality/MediaQualityService$MqManagerNotifier;->notifyPictureProfileHelper(ILjava/lang/String;Landroid/media/quality/PictureProfile;Ljava/lang/Integer;Ljava/util/List;II)V

    .line 1510
    return-void
.end method

.method private notifyOnPictureProfileUpdated(Ljava/lang/String;Landroid/media/quality/PictureProfile;II)V
    .locals 8
    .param p1, "profileId"    # Ljava/lang/String;
    .param p2, "profile"    # Landroid/media/quality/PictureProfile;
    .param p3, "uid"    # I
    .param p4, "pid"    # I

    .line 1502
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v1, 0x2

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move v6, p3

    move v7, p4

    .end local p1    # "profileId":Ljava/lang/String;
    .end local p2    # "profile":Landroid/media/quality/PictureProfile;
    .end local p3    # "uid":I
    .end local p4    # "pid":I
    .local v2, "profileId":Ljava/lang/String;
    .local v3, "profile":Landroid/media/quality/PictureProfile;
    .local v6, "uid":I
    .local v7, "pid":I
    invoke-direct/range {v0 .. v7}, Lcom/android/server/media/quality/MediaQualityService$MqManagerNotifier;->notifyPictureProfileHelper(ILjava/lang/String;Landroid/media/quality/PictureProfile;Ljava/lang/Integer;Ljava/util/List;II)V

    .line 1504
    return-void
.end method

.method private notifyOnSoundProfileAdded(Ljava/lang/String;Landroid/media/quality/SoundProfile;II)V
    .locals 8
    .param p1, "profileId"    # Ljava/lang/String;
    .param p2, "profile"    # Landroid/media/quality/SoundProfile;
    .param p3, "uid"    # I
    .param p4, "pid"    # I

    .line 1585
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v1, 0x1

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move v6, p3

    move v7, p4

    .end local p1    # "profileId":Ljava/lang/String;
    .end local p2    # "profile":Landroid/media/quality/SoundProfile;
    .end local p3    # "uid":I
    .end local p4    # "pid":I
    .local v2, "profileId":Ljava/lang/String;
    .local v3, "profile":Landroid/media/quality/SoundProfile;
    .local v6, "uid":I
    .local v7, "pid":I
    invoke-direct/range {v0 .. v7}, Lcom/android/server/media/quality/MediaQualityService$MqManagerNotifier;->notifySoundProfileHelper(ILjava/lang/String;Landroid/media/quality/SoundProfile;Ljava/lang/Integer;Ljava/util/List;II)V

    .line 1586
    return-void
.end method

.method private notifyOnSoundProfileError(Ljava/lang/String;III)V
    .locals 8
    .param p1, "profileId"    # Ljava/lang/String;
    .param p2, "errorCode"    # I
    .param p3, "uid"    # I
    .param p4, "pid"    # I

    .line 1599
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v1, 0x4

    const/4 v3, 0x0

    move-object v0, p0

    move-object v2, p1

    move v6, p3

    move v7, p4

    .end local p1    # "profileId":Ljava/lang/String;
    .end local p3    # "uid":I
    .end local p4    # "pid":I
    .local v2, "profileId":Ljava/lang/String;
    .local v6, "uid":I
    .local v7, "pid":I
    invoke-direct/range {v0 .. v7}, Lcom/android/server/media/quality/MediaQualityService$MqManagerNotifier;->notifySoundProfileHelper(ILjava/lang/String;Landroid/media/quality/SoundProfile;Ljava/lang/Integer;Ljava/util/List;II)V

    .line 1601
    return-void
.end method

.method private notifyOnSoundProfileParameterCapabilitiesChanged(Ljava/lang/Long;[Landroid/hardware/tv/mediaquality/ParamCapability;II)V
    .locals 11
    .param p1, "profileId"    # Ljava/lang/Long;
    .param p2, "caps"    # [Landroid/hardware/tv/mediaquality/ParamCapability;
    .param p3, "uid"    # I
    .param p4, "pid"    # I

    .line 1605
    iget-object v0, p0, Lcom/android/server/media/quality/MediaQualityService$MqManagerNotifier;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {v0}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmSoundProfileTempIdMap(Lcom/android/server/media/quality/MediaQualityService;)Lcom/android/server/media/quality/BiMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/media/quality/BiMap;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Ljava/lang/String;

    .line 1606
    .local v3, "uuid":Ljava/lang/String;
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1607
    .local v6, "paramCaps":Ljava/util/List;, "Ljava/util/List<Landroid/media/quality/ParameterCapability;>;"
    array-length v0, p2

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v4, p2, v2

    .line 1608
    .local v4, "cap":Landroid/hardware/tv/mediaquality/ParamCapability;
    iget-byte v5, v4, Landroid/hardware/tv/mediaquality/ParamCapability;->name:B

    invoke-static {v5}, Lcom/android/server/media/quality/MediaQualityUtils;->getParameterName(B)Ljava/lang/String;

    move-result-object v5

    .line 1609
    .local v5, "name":Ljava/lang/String;
    iget-boolean v7, v4, Landroid/hardware/tv/mediaquality/ParamCapability;->isSupported:Z

    .line 1610
    .local v7, "isSupported":Z
    iget-object v8, v4, Landroid/hardware/tv/mediaquality/ParamCapability;->defaultValue:Landroid/hardware/tv/mediaquality/ParameterDefaultValue;

    if-nez v8, :cond_0

    move v8, v1

    goto :goto_1

    :cond_0
    iget-object v8, v4, Landroid/hardware/tv/mediaquality/ParamCapability;->defaultValue:Landroid/hardware/tv/mediaquality/ParameterDefaultValue;

    invoke-virtual {v8}, Landroid/hardware/tv/mediaquality/ParameterDefaultValue;->getTag()I

    move-result v8

    add-int/lit8 v8, v8, 0x1

    .line 1611
    .local v8, "type":I
    :goto_1
    iget-object v9, v4, Landroid/hardware/tv/mediaquality/ParamCapability;->range:Landroid/hardware/tv/mediaquality/ParameterRange;

    invoke-static {v8, v9}, Lcom/android/server/media/quality/MediaQualityUtils;->convertToCaps(ILandroid/hardware/tv/mediaquality/ParameterRange;)Landroid/os/Bundle;

    move-result-object v9

    .line 1613
    .local v9, "bundle":Landroid/os/Bundle;
    new-instance v10, Landroid/media/quality/ParameterCapability;

    invoke-direct {v10, v5, v7, v8, v9}, Landroid/media/quality/ParameterCapability;-><init>(Ljava/lang/String;ZILandroid/os/Bundle;)V

    invoke-interface {v6, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1607
    .end local v4    # "cap":Landroid/hardware/tv/mediaquality/ParamCapability;
    .end local v5    # "name":Ljava/lang/String;
    .end local v7    # "isSupported":Z
    .end local v8    # "type":I
    .end local v9    # "bundle":Landroid/os/Bundle;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1615
    :cond_1
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v2, 0x5

    move-object v1, p0

    move v7, p3

    move v8, p4

    .end local p3    # "uid":I
    .end local p4    # "pid":I
    .local v7, "uid":I
    .local v8, "pid":I
    invoke-direct/range {v1 .. v8}, Lcom/android/server/media/quality/MediaQualityService$MqManagerNotifier;->notifySoundProfileHelper(ILjava/lang/String;Landroid/media/quality/SoundProfile;Ljava/lang/Integer;Ljava/util/List;II)V

    .line 1617
    return-void
.end method

.method private notifyOnSoundProfileRemoved(Ljava/lang/String;Landroid/media/quality/SoundProfile;II)V
    .locals 8
    .param p1, "profileId"    # Ljava/lang/String;
    .param p2, "profile"    # Landroid/media/quality/SoundProfile;
    .param p3, "uid"    # I
    .param p4, "pid"    # I

    .line 1595
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v1, 0x3

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move v6, p3

    move v7, p4

    .end local p1    # "profileId":Ljava/lang/String;
    .end local p2    # "profile":Landroid/media/quality/SoundProfile;
    .end local p3    # "uid":I
    .end local p4    # "pid":I
    .local v2, "profileId":Ljava/lang/String;
    .local v3, "profile":Landroid/media/quality/SoundProfile;
    .local v6, "uid":I
    .local v7, "pid":I
    invoke-direct/range {v0 .. v7}, Lcom/android/server/media/quality/MediaQualityService$MqManagerNotifier;->notifySoundProfileHelper(ILjava/lang/String;Landroid/media/quality/SoundProfile;Ljava/lang/Integer;Ljava/util/List;II)V

    .line 1596
    return-void
.end method

.method private notifyOnSoundProfileUpdated(Ljava/lang/String;Landroid/media/quality/SoundProfile;II)V
    .locals 8
    .param p1, "profileId"    # Ljava/lang/String;
    .param p2, "profile"    # Landroid/media/quality/SoundProfile;
    .param p3, "uid"    # I
    .param p4, "pid"    # I

    .line 1590
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v1, 0x2

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move v6, p3

    move v7, p4

    .end local p1    # "profileId":Ljava/lang/String;
    .end local p2    # "profile":Landroid/media/quality/SoundProfile;
    .end local p3    # "uid":I
    .end local p4    # "pid":I
    .local v2, "profileId":Ljava/lang/String;
    .local v3, "profile":Landroid/media/quality/SoundProfile;
    .local v6, "uid":I
    .local v7, "pid":I
    invoke-direct/range {v0 .. v7}, Lcom/android/server/media/quality/MediaQualityService$MqManagerNotifier;->notifySoundProfileHelper(ILjava/lang/String;Landroid/media/quality/SoundProfile;Ljava/lang/Integer;Ljava/util/List;II)V

    .line 1591
    return-void
.end method

.method private notifyPictureProfileHelper(ILjava/lang/String;Landroid/media/quality/PictureProfile;Ljava/lang/Integer;Ljava/util/List;II)V
    .locals 16
    .param p1, "mode"    # I
    .param p2, "profileId"    # Ljava/lang/String;
    .param p3, "profile"    # Landroid/media/quality/PictureProfile;
    .param p4, "errorCode"    # Ljava/lang/Integer;
    .param p6, "uid"    # I
    .param p7, "pid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Landroid/media/quality/PictureProfile;",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Landroid/media/quality/ParameterCapability;",
            ">;II)V"
        }
    .end annotation

    .line 1537
    .local p5, "paramCaps":Ljava/util/List;, "Ljava/util/List<Landroid/media/quality/ParameterCapability;>;"
    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p0

    iget-object v0, v4, Lcom/android/server/media/quality/MediaQualityService$MqManagerNotifier;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    const/4 v5, 0x0

    invoke-static {v0, v5}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$mgetOrCreateUserState(Lcom/android/server/media/quality/MediaQualityService;I)Lcom/android/server/media/quality/MediaQualityService$UserState;

    move-result-object v5

    .line 1538
    .local v5, "userState":Lcom/android/server/media/quality/MediaQualityService$UserState;
    invoke-static {v5}, Lcom/android/server/media/quality/MediaQualityService$UserState;->-$$Nest$fgetmPictureProfileCallbacks(Lcom/android/server/media/quality/MediaQualityService$UserState;)Lcom/android/server/media/quality/MediaQualityService$MediaQualityManagerPictureProfileCallbackList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v6

    .line 1540
    .local v6, "n":I
    const/4 v0, 0x0

    move v7, v0

    .local v7, "i":I
    :goto_0
    if-ge v7, v6, :cond_c

    .line 1542
    const/4 v9, 0x4

    const/4 v10, 0x3

    const/4 v11, 0x2

    const/4 v12, 0x1

    :try_start_0
    invoke-static {v5}, Lcom/android/server/media/quality/MediaQualityService$UserState;->-$$Nest$fgetmPictureProfileCallbacks(Lcom/android/server/media/quality/MediaQualityService$UserState;)Lcom/android/server/media/quality/MediaQualityService$MediaQualityManagerPictureProfileCallbackList;

    move-result-object v0

    .line 1543
    invoke-virtual {v0, v7}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Landroid/media/quality/IPictureProfileCallback;

    .line 1544
    .local v0, "callback":Landroid/media/quality/IPictureProfileCallback;
    invoke-static {v5}, Lcom/android/server/media/quality/MediaQualityService$UserState;->-$$Nest$fgetmPictureProfileCallbackPidUidMap(Lcom/android/server/media/quality/MediaQualityService$UserState;)Ljava/util/Map;

    move-result-object v13

    .line 1545
    invoke-interface {v13, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/util/Pair;

    .line 1547
    .local v13, "pidUid":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    iget-object v14, v13, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_3

    move/from16 v15, p7

    if-ne v14, v15, :cond_6

    :try_start_1
    iget-object v14, v13, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2

    move/from16 v8, p6

    if-ne v14, v8, :cond_5

    .line 1548
    if-ne v1, v12, :cond_0

    .line 1549
    :try_start_2
    invoke-static {v5}, Lcom/android/server/media/quality/MediaQualityService$UserState;->-$$Nest$fgetmPictureProfileCallbacks(Lcom/android/server/media/quality/MediaQualityService$UserState;)Lcom/android/server/media/quality/MediaQualityService$MediaQualityManagerPictureProfileCallbackList;

    move-result-object v14

    invoke-virtual {v14, v7}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v14

    check-cast v14, Landroid/media/quality/IPictureProfileCallback;

    .line 1550
    invoke-interface {v14, v2, v3}, Landroid/media/quality/IPictureProfileCallback;->onPictureProfileAdded(Ljava/lang/String;Landroid/media/quality/PictureProfile;)V

    move-object/from16 v14, p5

    goto/16 :goto_1

    .line 1565
    .end local v0    # "callback":Landroid/media/quality/IPictureProfileCallback;
    .end local v13    # "pidUid":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :catch_0
    move-exception v0

    move-object/from16 v14, p5

    goto/16 :goto_2

    .line 1551
    .restart local v0    # "callback":Landroid/media/quality/IPictureProfileCallback;
    .restart local v13    # "pidUid":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :cond_0
    if-ne v1, v11, :cond_1

    .line 1552
    invoke-static {v5}, Lcom/android/server/media/quality/MediaQualityService$UserState;->-$$Nest$fgetmPictureProfileCallbacks(Lcom/android/server/media/quality/MediaQualityService$UserState;)Lcom/android/server/media/quality/MediaQualityService$MediaQualityManagerPictureProfileCallbackList;

    move-result-object v14

    invoke-virtual {v14, v7}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v14

    check-cast v14, Landroid/media/quality/IPictureProfileCallback;

    .line 1553
    invoke-interface {v14, v2, v3}, Landroid/media/quality/IPictureProfileCallback;->onPictureProfileUpdated(Ljava/lang/String;Landroid/media/quality/PictureProfile;)V

    move-object/from16 v14, p5

    goto :goto_1

    .line 1554
    :cond_1
    if-ne v1, v10, :cond_2

    .line 1555
    invoke-static {v5}, Lcom/android/server/media/quality/MediaQualityService$UserState;->-$$Nest$fgetmPictureProfileCallbacks(Lcom/android/server/media/quality/MediaQualityService$UserState;)Lcom/android/server/media/quality/MediaQualityService$MediaQualityManagerPictureProfileCallbackList;

    move-result-object v14

    invoke-virtual {v14, v7}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v14

    check-cast v14, Landroid/media/quality/IPictureProfileCallback;

    .line 1556
    invoke-interface {v14, v2, v3}, Landroid/media/quality/IPictureProfileCallback;->onPictureProfileRemoved(Ljava/lang/String;Landroid/media/quality/PictureProfile;)V

    move-object/from16 v14, p5

    goto :goto_1

    .line 1557
    :cond_2
    if-ne v1, v9, :cond_3

    .line 1558
    invoke-static {v5}, Lcom/android/server/media/quality/MediaQualityService$UserState;->-$$Nest$fgetmPictureProfileCallbacks(Lcom/android/server/media/quality/MediaQualityService$UserState;)Lcom/android/server/media/quality/MediaQualityService$MediaQualityManagerPictureProfileCallbackList;

    move-result-object v14

    invoke-virtual {v14, v7}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v14

    check-cast v14, Landroid/media/quality/IPictureProfileCallback;

    .line 1559
    invoke-virtual/range {p4 .. p4}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-interface {v14, v2, v9}, Landroid/media/quality/IPictureProfileCallback;->onError(Ljava/lang/String;I)V

    move-object/from16 v14, p5

    goto :goto_1

    .line 1560
    :cond_3
    const/4 v9, 0x5

    if-ne v1, v9, :cond_4

    .line 1561
    invoke-static {v5}, Lcom/android/server/media/quality/MediaQualityService$UserState;->-$$Nest$fgetmPictureProfileCallbacks(Lcom/android/server/media/quality/MediaQualityService$UserState;)Lcom/android/server/media/quality/MediaQualityService$MediaQualityManagerPictureProfileCallbackList;

    move-result-object v9

    invoke-virtual {v9, v7}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v9

    check-cast v9, Landroid/media/quality/IPictureProfileCallback;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1562
    move-object/from16 v14, p5

    :try_start_3
    invoke-interface {v9, v2, v14}, Landroid/media/quality/IPictureProfileCallback;->onParameterCapabilitiesChanged(Ljava/lang/String;Ljava/util/List;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 1565
    .end local v0    # "callback":Landroid/media/quality/IPictureProfileCallback;
    .end local v13    # "pidUid":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :catch_1
    move-exception v0

    goto :goto_2

    .line 1560
    .restart local v0    # "callback":Landroid/media/quality/IPictureProfileCallback;
    .restart local v13    # "pidUid":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :cond_4
    move-object/from16 v14, p5

    goto :goto_1

    .line 1547
    :cond_5
    move-object/from16 v14, p5

    goto :goto_1

    .line 1565
    .end local v0    # "callback":Landroid/media/quality/IPictureProfileCallback;
    .end local v13    # "pidUid":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :catch_2
    move-exception v0

    move-object/from16 v14, p5

    move/from16 v8, p6

    goto :goto_2

    .line 1547
    .restart local v0    # "callback":Landroid/media/quality/IPictureProfileCallback;
    .restart local v13    # "pidUid":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :cond_6
    move-object/from16 v14, p5

    move/from16 v8, p6

    .line 1578
    .end local v0    # "callback":Landroid/media/quality/IPictureProfileCallback;
    .end local v13    # "pidUid":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :goto_1
    goto :goto_3

    .line 1565
    :catch_3
    move-exception v0

    move-object/from16 v14, p5

    move/from16 v8, p6

    move/from16 v15, p7

    :goto_2
    nop

    .line 1566
    .local v0, "e":Landroid/os/RemoteException;
    const-string v9, "MediaQualityService"

    if-ne v1, v12, :cond_7

    .line 1567
    const-string v10, "Failed to report added picture profile to callback"

    invoke-static {v9, v10, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 1568
    :cond_7
    if-ne v1, v11, :cond_8

    .line 1569
    const-string v10, "Failed to report updated picture profile to callback"

    invoke-static {v9, v10, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 1570
    :cond_8
    if-ne v1, v10, :cond_9

    .line 1571
    const-string v10, "Failed to report removed picture profile to callback"

    invoke-static {v9, v10, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 1572
    :cond_9
    const/4 v10, 0x4

    if-ne v1, v10, :cond_a

    .line 1573
    const-string v10, "Failed to report picture profile error to callback"

    invoke-static {v9, v10, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 1574
    :cond_a
    const/4 v10, 0x5

    if-ne v1, v10, :cond_b

    .line 1575
    const-string v10, "Failed to report picture profile parameter capability change to callback"

    invoke-static {v9, v10, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1540
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_b
    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    :cond_c
    move-object/from16 v14, p5

    move/from16 v8, p6

    move/from16 v15, p7

    .line 1580
    .end local v7    # "i":I
    invoke-static {v5}, Lcom/android/server/media/quality/MediaQualityService$UserState;->-$$Nest$fgetmPictureProfileCallbacks(Lcom/android/server/media/quality/MediaQualityService$UserState;)Lcom/android/server/media/quality/MediaQualityService$MediaQualityManagerPictureProfileCallbackList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 1581
    return-void
.end method

.method private notifySoundProfileHelper(ILjava/lang/String;Landroid/media/quality/SoundProfile;Ljava/lang/Integer;Ljava/util/List;II)V
    .locals 16
    .param p1, "mode"    # I
    .param p2, "profileId"    # Ljava/lang/String;
    .param p3, "profile"    # Landroid/media/quality/SoundProfile;
    .param p4, "errorCode"    # Ljava/lang/Integer;
    .param p6, "uid"    # I
    .param p7, "pid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Landroid/media/quality/SoundProfile;",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Landroid/media/quality/ParameterCapability;",
            ">;II)V"
        }
    .end annotation

    .line 1622
    .local p5, "paramCaps":Ljava/util/List;, "Ljava/util/List<Landroid/media/quality/ParameterCapability;>;"
    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p0

    iget-object v0, v4, Lcom/android/server/media/quality/MediaQualityService$MqManagerNotifier;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    const/4 v5, 0x0

    invoke-static {v0, v5}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$mgetOrCreateUserState(Lcom/android/server/media/quality/MediaQualityService;I)Lcom/android/server/media/quality/MediaQualityService$UserState;

    move-result-object v5

    .line 1623
    .local v5, "userState":Lcom/android/server/media/quality/MediaQualityService$UserState;
    invoke-static {v5}, Lcom/android/server/media/quality/MediaQualityService$UserState;->-$$Nest$fgetmSoundProfileCallbacks(Lcom/android/server/media/quality/MediaQualityService$UserState;)Lcom/android/server/media/quality/MediaQualityService$MediaQualityManagerSoundProfileCallbackList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v6

    .line 1625
    .local v6, "n":I
    const/4 v0, 0x0

    move v7, v0

    .local v7, "i":I
    :goto_0
    if-ge v7, v6, :cond_c

    .line 1627
    const/4 v9, 0x4

    const/4 v10, 0x3

    const/4 v11, 0x2

    const/4 v12, 0x1

    :try_start_0
    invoke-static {v5}, Lcom/android/server/media/quality/MediaQualityService$UserState;->-$$Nest$fgetmSoundProfileCallbacks(Lcom/android/server/media/quality/MediaQualityService$UserState;)Lcom/android/server/media/quality/MediaQualityService$MediaQualityManagerSoundProfileCallbackList;

    move-result-object v0

    .line 1628
    invoke-virtual {v0, v7}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Landroid/media/quality/ISoundProfileCallback;

    .line 1629
    .local v0, "callback":Landroid/media/quality/ISoundProfileCallback;
    invoke-static {v5}, Lcom/android/server/media/quality/MediaQualityService$UserState;->-$$Nest$fgetmSoundProfileCallbackPidUidMap(Lcom/android/server/media/quality/MediaQualityService$UserState;)Ljava/util/Map;

    move-result-object v13

    .line 1630
    invoke-interface {v13, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/util/Pair;

    .line 1632
    .local v13, "pidUid":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    iget-object v14, v13, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_3

    move/from16 v15, p7

    if-ne v14, v15, :cond_6

    :try_start_1
    iget-object v14, v13, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2

    move/from16 v8, p6

    if-ne v14, v8, :cond_5

    .line 1633
    if-ne v1, v12, :cond_0

    .line 1634
    :try_start_2
    invoke-static {v5}, Lcom/android/server/media/quality/MediaQualityService$UserState;->-$$Nest$fgetmSoundProfileCallbacks(Lcom/android/server/media/quality/MediaQualityService$UserState;)Lcom/android/server/media/quality/MediaQualityService$MediaQualityManagerSoundProfileCallbackList;

    move-result-object v14

    invoke-virtual {v14, v7}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v14

    check-cast v14, Landroid/media/quality/ISoundProfileCallback;

    .line 1635
    invoke-interface {v14, v2, v3}, Landroid/media/quality/ISoundProfileCallback;->onSoundProfileAdded(Ljava/lang/String;Landroid/media/quality/SoundProfile;)V

    move-object/from16 v14, p5

    goto/16 :goto_1

    .line 1650
    .end local v0    # "callback":Landroid/media/quality/ISoundProfileCallback;
    .end local v13    # "pidUid":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :catch_0
    move-exception v0

    move-object/from16 v14, p5

    goto/16 :goto_2

    .line 1636
    .restart local v0    # "callback":Landroid/media/quality/ISoundProfileCallback;
    .restart local v13    # "pidUid":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :cond_0
    if-ne v1, v11, :cond_1

    .line 1637
    invoke-static {v5}, Lcom/android/server/media/quality/MediaQualityService$UserState;->-$$Nest$fgetmSoundProfileCallbacks(Lcom/android/server/media/quality/MediaQualityService$UserState;)Lcom/android/server/media/quality/MediaQualityService$MediaQualityManagerSoundProfileCallbackList;

    move-result-object v14

    invoke-virtual {v14, v7}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v14

    check-cast v14, Landroid/media/quality/ISoundProfileCallback;

    .line 1638
    invoke-interface {v14, v2, v3}, Landroid/media/quality/ISoundProfileCallback;->onSoundProfileUpdated(Ljava/lang/String;Landroid/media/quality/SoundProfile;)V

    move-object/from16 v14, p5

    goto :goto_1

    .line 1639
    :cond_1
    if-ne v1, v10, :cond_2

    .line 1640
    invoke-static {v5}, Lcom/android/server/media/quality/MediaQualityService$UserState;->-$$Nest$fgetmSoundProfileCallbacks(Lcom/android/server/media/quality/MediaQualityService$UserState;)Lcom/android/server/media/quality/MediaQualityService$MediaQualityManagerSoundProfileCallbackList;

    move-result-object v14

    invoke-virtual {v14, v7}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v14

    check-cast v14, Landroid/media/quality/ISoundProfileCallback;

    .line 1641
    invoke-interface {v14, v2, v3}, Landroid/media/quality/ISoundProfileCallback;->onSoundProfileRemoved(Ljava/lang/String;Landroid/media/quality/SoundProfile;)V

    move-object/from16 v14, p5

    goto :goto_1

    .line 1642
    :cond_2
    if-ne v1, v9, :cond_3

    .line 1643
    invoke-static {v5}, Lcom/android/server/media/quality/MediaQualityService$UserState;->-$$Nest$fgetmSoundProfileCallbacks(Lcom/android/server/media/quality/MediaQualityService$UserState;)Lcom/android/server/media/quality/MediaQualityService$MediaQualityManagerSoundProfileCallbackList;

    move-result-object v14

    invoke-virtual {v14, v7}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v14

    check-cast v14, Landroid/media/quality/ISoundProfileCallback;

    .line 1644
    invoke-virtual/range {p4 .. p4}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-interface {v14, v2, v9}, Landroid/media/quality/ISoundProfileCallback;->onError(Ljava/lang/String;I)V

    move-object/from16 v14, p5

    goto :goto_1

    .line 1645
    :cond_3
    const/4 v9, 0x5

    if-ne v1, v9, :cond_4

    .line 1646
    invoke-static {v5}, Lcom/android/server/media/quality/MediaQualityService$UserState;->-$$Nest$fgetmSoundProfileCallbacks(Lcom/android/server/media/quality/MediaQualityService$UserState;)Lcom/android/server/media/quality/MediaQualityService$MediaQualityManagerSoundProfileCallbackList;

    move-result-object v9

    invoke-virtual {v9, v7}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v9

    check-cast v9, Landroid/media/quality/ISoundProfileCallback;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1647
    move-object/from16 v14, p5

    :try_start_3
    invoke-interface {v9, v2, v14}, Landroid/media/quality/ISoundProfileCallback;->onParameterCapabilitiesChanged(Ljava/lang/String;Ljava/util/List;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 1650
    .end local v0    # "callback":Landroid/media/quality/ISoundProfileCallback;
    .end local v13    # "pidUid":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :catch_1
    move-exception v0

    goto :goto_2

    .line 1645
    .restart local v0    # "callback":Landroid/media/quality/ISoundProfileCallback;
    .restart local v13    # "pidUid":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :cond_4
    move-object/from16 v14, p5

    goto :goto_1

    .line 1632
    :cond_5
    move-object/from16 v14, p5

    goto :goto_1

    .line 1650
    .end local v0    # "callback":Landroid/media/quality/ISoundProfileCallback;
    .end local v13    # "pidUid":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :catch_2
    move-exception v0

    move-object/from16 v14, p5

    move/from16 v8, p6

    goto :goto_2

    .line 1632
    .restart local v0    # "callback":Landroid/media/quality/ISoundProfileCallback;
    .restart local v13    # "pidUid":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :cond_6
    move-object/from16 v14, p5

    move/from16 v8, p6

    .line 1663
    .end local v0    # "callback":Landroid/media/quality/ISoundProfileCallback;
    .end local v13    # "pidUid":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :goto_1
    goto :goto_3

    .line 1650
    :catch_3
    move-exception v0

    move-object/from16 v14, p5

    move/from16 v8, p6

    move/from16 v15, p7

    :goto_2
    nop

    .line 1651
    .local v0, "e":Landroid/os/RemoteException;
    const-string v9, "MediaQualityService"

    if-ne v1, v12, :cond_7

    .line 1652
    const-string v10, "Failed to report added sound profile to callback"

    invoke-static {v9, v10, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 1653
    :cond_7
    if-ne v1, v11, :cond_8

    .line 1654
    const-string v10, "Failed to report updated sound profile to callback"

    invoke-static {v9, v10, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 1655
    :cond_8
    if-ne v1, v10, :cond_9

    .line 1656
    const-string v10, "Failed to report removed sound profile to callback"

    invoke-static {v9, v10, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 1657
    :cond_9
    const/4 v10, 0x4

    if-ne v1, v10, :cond_a

    .line 1658
    const-string v10, "Failed to report sound profile error to callback"

    invoke-static {v9, v10, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 1659
    :cond_a
    const/4 v10, 0x5

    if-ne v1, v10, :cond_b

    .line 1660
    const-string v10, "Failed to report sound profile parameter capability change to callback"

    invoke-static {v9, v10, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1625
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_b
    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    :cond_c
    move-object/from16 v14, p5

    move/from16 v8, p6

    move/from16 v15, p7

    .line 1665
    .end local v7    # "i":I
    invoke-static {v5}, Lcom/android/server/media/quality/MediaQualityService$UserState;->-$$Nest$fgetmSoundProfileCallbacks(Lcom/android/server/media/quality/MediaQualityService$UserState;)Lcom/android/server/media/quality/MediaQualityService$MediaQualityManagerSoundProfileCallbackList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 1666
    return-void
.end method
