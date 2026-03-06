.class final Lcom/android/server/media/quality/MediaQualityService$BinderService;
.super Landroid/media/quality/IMediaQualityManager$Stub;
.source "MediaQualityService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/media/quality/MediaQualityService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "BinderService"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/media/quality/MediaQualityService;


# direct methods
.method public static synthetic $r8$lambda$3BOZ1m5IOgjfAwaLKmmUAxLDfNA(Lcom/android/server/media/quality/MediaQualityService$BinderService;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/media/quality/MediaQualityService$BinderService;->lambda$setSuperResolutionEnabled$9(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$6Jl4LU_IDMKH-Y2IS1vE7aJoZtU(Lcom/android/server/media/quality/MediaQualityService$BinderService;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/media/quality/MediaQualityService$BinderService;->lambda$removeSoundProfile$5(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$9W6Ea2aO9aVOqh_m-F6O454YrJs(Lcom/android/server/media/quality/MediaQualityService$BinderService;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/media/quality/MediaQualityService$BinderService;->lambda$removePictureProfile$2(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$BcS_KZxAMxZghtaMYpP1IBsrRzM(Lcom/android/server/media/quality/MediaQualityService$BinderService;Ljava/util/List;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/media/quality/MediaQualityService$BinderService;->lambda$setSoundProfileAllowList$7(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic $r8$lambda$BioHXLslaDYXkOxV_Nf_dqvNVTM(Lcom/android/server/media/quality/MediaQualityService$BinderService;Landroid/media/quality/SoundProfile;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/media/quality/MediaQualityService$BinderService;->lambda$createSoundProfile$3(Landroid/media/quality/SoundProfile;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ELtWD0g-bkBCZrMQSIwJcVub4VI(Lcom/android/server/media/quality/MediaQualityService$BinderService;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/media/quality/MediaQualityService$BinderService;->lambda$setAutoPictureQualityEnabled$8(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$NEEhBlKOS0hKcMyUqylZYEkMH74(Lcom/android/server/media/quality/MediaQualityService$BinderService;Ljava/lang/String;Landroid/media/quality/SoundProfile;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/server/media/quality/MediaQualityService$BinderService;->lambda$updateSoundProfile$4(Ljava/lang/String;Landroid/media/quality/SoundProfile;)V

    return-void
.end method

.method public static synthetic $r8$lambda$lkyQAVm9D1cFC9e587tBDup9_QI(Lcom/android/server/media/quality/MediaQualityService$BinderService;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/media/quality/MediaQualityService$BinderService;->lambda$setAutoSoundQualityEnabled$10(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$oEI3bkIiBng7ZNtWxZcS2xyccM8(Lcom/android/server/media/quality/MediaQualityService$BinderService;Ljava/lang/String;Landroid/media/quality/PictureProfile;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/server/media/quality/MediaQualityService$BinderService;->lambda$updatePictureProfile$1(Ljava/lang/String;Landroid/media/quality/PictureProfile;)V

    return-void
.end method

.method public static synthetic $r8$lambda$uHkse-zuKFzcjht-iekkBq_FX6w(Lcom/android/server/media/quality/MediaQualityService$BinderService;Ljava/util/List;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/media/quality/MediaQualityService$BinderService;->lambda$setPictureProfileAllowList$6(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic $r8$lambda$zF_A4d8t4DYQTUMNJ6Otwdl1apk(Lcom/android/server/media/quality/MediaQualityService$BinderService;Landroid/media/quality/PictureProfile;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/media/quality/MediaQualityService$BinderService;->lambda$createPictureProfile$0(Landroid/media/quality/PictureProfile;)V

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

    .line 274
    iput-object p1, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-direct {p0}, Landroid/media/quality/IMediaQualityManager$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/media/quality/MediaQualityService;Lcom/android/server/media/quality/MediaQualityService-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/media/quality/MediaQualityService$BinderService;-><init>(Lcom/android/server/media/quality/MediaQualityService;)V

    return-void
.end method

.method private getListParameterCapability([Landroid/hardware/tv/mediaquality/ParamCapability;)Ljava/util/List;
    .locals 10
    .param p1, "caps"    # [Landroid/hardware/tv/mediaquality/ParamCapability;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/hardware/tv/mediaquality/ParamCapability;",
            ")",
            "Ljava/util/List<",
            "Landroid/media/quality/ParameterCapability;",
            ">;"
        }
    .end annotation

    .line 1035
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1037
    .local v0, "pcList":Ljava/util/List;, "Ljava/util/List<Landroid/media/quality/ParameterCapability;>;"
    if-eqz p1, :cond_2

    .line 1038
    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    nop

    if-ge v3, v1, :cond_2

    aget-object v4, p1, v3

    .line 1039
    .local v4, "pcHal":Landroid/hardware/tv/mediaquality/ParamCapability;
    if-eqz v4, :cond_1

    .line 1040
    iget-byte v5, v4, Landroid/hardware/tv/mediaquality/ParamCapability;->name:B

    invoke-static {v5}, Lcom/android/server/media/quality/MediaQualityUtils;->getParameterName(B)Ljava/lang/String;

    move-result-object v5

    .line 1041
    .local v5, "name":Ljava/lang/String;
    iget-boolean v6, v4, Landroid/hardware/tv/mediaquality/ParamCapability;->isSupported:Z

    .line 1042
    .local v6, "isSupported":Z
    iget-object v7, v4, Landroid/hardware/tv/mediaquality/ParamCapability;->defaultValue:Landroid/hardware/tv/mediaquality/ParameterDefaultValue;

    if-nez v7, :cond_0

    move v7, v2

    goto :goto_1

    :cond_0
    iget-object v7, v4, Landroid/hardware/tv/mediaquality/ParamCapability;->defaultValue:Landroid/hardware/tv/mediaquality/ParameterDefaultValue;

    invoke-virtual {v7}, Landroid/hardware/tv/mediaquality/ParameterDefaultValue;->getTag()I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    .line 1043
    .local v7, "type":I
    :goto_1
    iget-object v8, v4, Landroid/hardware/tv/mediaquality/ParamCapability;->range:Landroid/hardware/tv/mediaquality/ParameterRange;

    invoke-static {v7, v8}, Lcom/android/server/media/quality/MediaQualityUtils;->convertToCaps(ILandroid/hardware/tv/mediaquality/ParameterRange;)Landroid/os/Bundle;

    move-result-object v8

    .line 1045
    .local v8, "bundle":Landroid/os/Bundle;
    new-instance v9, Landroid/media/quality/ParameterCapability;

    invoke-direct {v9, v5, v6, v7, v8}, Landroid/media/quality/ParameterCapability;-><init>(Ljava/lang/String;ZILandroid/os/Bundle;)V

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1038
    .end local v4    # "pcHal":Landroid/hardware/tv/mediaquality/ParamCapability;
    .end local v5    # "name":Ljava/lang/String;
    .end local v6    # "isSupported":Z
    .end local v7    # "type":I
    .end local v8    # "bundle":Landroid/os/Bundle;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1050
    :cond_2
    return-object v0
.end method

.method private getPackageOfCallingUid()Ljava/lang/String;
    .locals 3

    .line 852
    iget-object v0, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {v0}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmPackageManager(Lcom/android/server/media/quality/MediaQualityService;)Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 853
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 852
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v0

    .line 854
    .local v0, "packageNames":[Ljava/lang/String;
    if-eqz v0, :cond_0

    array-length v1, v0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 855
    aget-object v1, v0, v1

    return-object v1

    .line 857
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method private hasGlobalPictureQualityServicePermission()Z
    .locals 2

    .line 865
    iget-object v0, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {v0}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmContext(Lcom/android/server/media/quality/MediaQualityService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.MANAGE_GLOBAL_PICTURE_QUALITY_SERVICE"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private hasGlobalSoundQualityServicePermission()Z
    .locals 2

    .line 871
    iget-object v0, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {v0}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmContext(Lcom/android/server/media/quality/MediaQualityService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.MANAGE_GLOBAL_SOUND_QUALITY_SERVICE"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private hasPermissionToRemovePictureProfile(Landroid/media/quality/PictureProfile;)Z
    .locals 2
    .param p1, "toDelete"    # Landroid/media/quality/PictureProfile;

    .line 394
    if-eqz p1, :cond_0

    .line 395
    invoke-virtual {p1}, Landroid/media/quality/PictureProfile;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/server/media/quality/MediaQualityService$BinderService;->getPackageOfCallingUid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 397
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private hasPermissionToRemoveSoundProfile(Landroid/media/quality/SoundProfile;)Z
    .locals 2
    .param p1, "toDelete"    # Landroid/media/quality/SoundProfile;

    .line 724
    if-eqz p1, :cond_0

    .line 725
    invoke-virtual {p1}, Landroid/media/quality/SoundProfile;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/server/media/quality/MediaQualityService$BinderService;->getPackageOfCallingUid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 727
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private hasPermissionToUpdatePictureProfile(Ljava/lang/Long;Landroid/media/quality/PictureProfile;)Z
    .locals 3
    .param p1, "dbId"    # Ljava/lang/Long;
    .param p2, "toUpdate"    # Landroid/media/quality/PictureProfile;

    .line 345
    iget-object v0, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {v0}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmMqDatabaseUtils(Lcom/android/server/media/quality/MediaQualityService;)Lcom/android/server/media/quality/MediaQualityService$MqDatabaseUtils;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/server/media/quality/MediaQualityService$MqDatabaseUtils;->-$$Nest$mgetPictureProfile(Lcom/android/server/media/quality/MediaQualityService$MqDatabaseUtils;Ljava/lang/Long;)Landroid/media/quality/PictureProfile;

    move-result-object v0

    .line 346
    .local v0, "fromDb":Landroid/media/quality/PictureProfile;
    invoke-virtual {v0}, Landroid/media/quality/PictureProfile;->getProfileType()I

    move-result v1

    invoke-virtual {p2}, Landroid/media/quality/PictureProfile;->getProfileType()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 347
    invoke-virtual {v0}, Landroid/media/quality/PictureProfile;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/media/quality/PictureProfile;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 348
    invoke-virtual {v0}, Landroid/media/quality/PictureProfile;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/media/quality/PictureProfile;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 349
    invoke-virtual {v0}, Landroid/media/quality/PictureProfile;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/server/media/quality/MediaQualityService$BinderService;->getPackageOfCallingUid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 346
    :goto_0
    return v1
.end method

.method private hasPermissionToUpdateSoundProfile(Ljava/lang/Long;Landroid/media/quality/SoundProfile;)Z
    .locals 3
    .param p1, "dbId"    # Ljava/lang/Long;
    .param p2, "sp"    # Landroid/media/quality/SoundProfile;

    .line 681
    iget-object v0, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {v0}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmMqDatabaseUtils(Lcom/android/server/media/quality/MediaQualityService;)Lcom/android/server/media/quality/MediaQualityService$MqDatabaseUtils;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/server/media/quality/MediaQualityService$MqDatabaseUtils;->-$$Nest$mgetSoundProfile(Lcom/android/server/media/quality/MediaQualityService$MqDatabaseUtils;Ljava/lang/Long;)Landroid/media/quality/SoundProfile;

    move-result-object v0

    .line 682
    .local v0, "fromDb":Landroid/media/quality/SoundProfile;
    invoke-virtual {v0}, Landroid/media/quality/SoundProfile;->getProfileType()I

    move-result v1

    invoke-virtual {p2}, Landroid/media/quality/SoundProfile;->getProfileType()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 683
    invoke-virtual {v0}, Landroid/media/quality/SoundProfile;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/media/quality/SoundProfile;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 684
    invoke-virtual {v0}, Landroid/media/quality/SoundProfile;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/media/quality/SoundProfile;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 685
    invoke-virtual {v0}, Landroid/media/quality/SoundProfile;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/server/media/quality/MediaQualityService$BinderService;->getPackageOfCallingUid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 682
    :goto_0
    return v1
.end method

.method private hasReadColorZonesPermission()Z
    .locals 2

    .line 877
    iget-object v0, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {v0}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmContext(Lcom/android/server/media/quality/MediaQualityService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.READ_COLOR_ZONES"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private incomingPackageEqualsCallingUidPackage(Ljava/lang/String;)Z
    .locals 1
    .param p1, "incomingPackage"    # Ljava/lang/String;

    .line 861
    invoke-direct {p0}, Lcom/android/server/media/quality/MediaQualityService$BinderService;->getPackageOfCallingUid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private synthetic lambda$createPictureProfile$0(Landroid/media/quality/PictureProfile;)V
    .locals 10
    .param p1, "pp"    # Landroid/media/quality/PictureProfile;

    .line 281
    invoke-virtual {p1}, Landroid/media/quality/PictureProfile;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/media/quality/PictureProfile;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 282
    invoke-virtual {p1}, Landroid/media/quality/PictureProfile;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/media/quality/MediaQualityService$BinderService;->incomingPackageEqualsCallingUidPackage(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 283
    invoke-direct {p0}, Lcom/android/server/media/quality/MediaQualityService$BinderService;->hasGlobalPictureQualityServicePermission()Z

    move-result v0

    if-nez v0, :cond_0

    .line 284
    iget-object v0, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {v0}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmMqManagerNotifier(Lcom/android/server/media/quality/MediaQualityService;)Lcom/android/server/media/quality/MediaQualityService$MqManagerNotifier;

    move-result-object v0

    .line 286
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    .line 284
    const/4 v4, 0x1

    invoke-static {v0, v1, v4, v2, v3}, Lcom/android/server/media/quality/MediaQualityService$MqManagerNotifier;->-$$Nest$mnotifyOnPictureProfileError(Lcom/android/server/media/quality/MediaQualityService$MqManagerNotifier;Ljava/lang/String;III)V

    .line 289
    :cond_0
    iget-object v0, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {v0}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmPictureProfileLock(Lcom/android/server/media/quality/MediaQualityService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 290
    :try_start_0
    iget-object v0, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {v0}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmMediaQualityDbHelper(Lcom/android/server/media/quality/MediaQualityService;)Lcom/android/server/media/quality/MediaQualityDbHelper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 292
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    nop

    .line 293
    invoke-virtual {p1}, Landroid/media/quality/PictureProfile;->getProfileType()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 294
    invoke-virtual {p1}, Landroid/media/quality/PictureProfile;->getName()Ljava/lang/String;

    move-result-object v6

    .line 295
    invoke-virtual {p1}, Landroid/media/quality/PictureProfile;->getPackageName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {p1}, Landroid/media/quality/PictureProfile;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    goto :goto_1

    .line 296
    :cond_2
    invoke-virtual {p1}, Landroid/media/quality/PictureProfile;->getPackageName()Ljava/lang/String;

    move-result-object v3

    :goto_0
    move-object v7, v3

    goto :goto_2

    .line 312
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :catchall_0
    move-exception v0

    goto :goto_3

    .line 296
    .restart local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :goto_1
    invoke-direct {p0}, Lcom/android/server/media/quality/MediaQualityService$BinderService;->getPackageOfCallingUid()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 297
    :goto_2
    invoke-virtual {p1}, Landroid/media/quality/PictureProfile;->getInputId()Ljava/lang/String;

    move-result-object v8

    .line 298
    invoke-virtual {p1}, Landroid/media/quality/PictureProfile;->getParameters()Landroid/os/PersistableBundle;

    move-result-object v9

    .line 292
    const/4 v4, 0x0

    invoke-static/range {v4 .. v9}, Lcom/android/server/media/quality/MediaQualityUtils;->getContentValues(Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/PersistableBundle;)Landroid/content/ContentValues;

    move-result-object v3

    .line 301
    .local v3, "values":Landroid/content/ContentValues;
    iget-object v4, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {v4}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmMediaQualityDbHelper(Lcom/android/server/media/quality/MediaQualityService;)Lcom/android/server/media/quality/MediaQualityDbHelper;

    const-string/jumbo v4, "picture_quality"

    invoke-virtual {v0, v4, v1, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 303
    .local v1, "id":Ljava/lang/Long;
    iget-object v4, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {v4}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmPictureProfileTempIdMap(Lcom/android/server/media/quality/MediaQualityService;)Lcom/android/server/media/quality/BiMap;

    move-result-object v4

    invoke-static {v4, v1}, Lcom/android/server/media/quality/MediaQualityUtils;->populateTempIdMap(Lcom/android/server/media/quality/BiMap;Ljava/lang/Long;)V

    .line 304
    iget-object v4, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {v4}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmPictureProfileTempIdMap(Lcom/android/server/media/quality/MediaQualityService;)Lcom/android/server/media/quality/BiMap;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/android/server/media/quality/BiMap;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 305
    .local v4, "value":Ljava/lang/String;
    invoke-virtual {p1, v4}, Landroid/media/quality/PictureProfile;->setProfileId(Ljava/lang/String;)V

    .line 306
    iget-object v5, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {v5}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmMqManagerNotifier(Lcom/android/server/media/quality/MediaQualityService;)Lcom/android/server/media/quality/MediaQualityService$MqManagerNotifier;

    move-result-object v5

    .line 307
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v7

    .line 306
    invoke-static {v5, v4, p1, v6, v7}, Lcom/android/server/media/quality/MediaQualityService$MqManagerNotifier;->-$$Nest$mnotifyOnPictureProfileAdded(Lcom/android/server/media/quality/MediaQualityService$MqManagerNotifier;Ljava/lang/String;Landroid/media/quality/PictureProfile;II)V

    .line 308
    iget-object v5, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {v5, p1}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$misPackageDefaultPictureProfile(Lcom/android/server/media/quality/MediaQualityService;Landroid/media/quality/PictureProfile;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 309
    iget-object v5, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {v5}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmPackageDefaultPictureProfileHandleMap(Lcom/android/server/media/quality/MediaQualityService;)Ljava/util/Map;

    move-result-object v5

    .line 310
    invoke-virtual {p1}, Landroid/media/quality/PictureProfile;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Landroid/media/quality/PictureProfile;->getHandle()Landroid/media/quality/PictureProfileHandle;

    move-result-object v7

    invoke-virtual {v7}, Landroid/media/quality/PictureProfileHandle;->getId()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    .line 309
    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 312
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v1    # "id":Ljava/lang/Long;
    .end local v3    # "values":Landroid/content/ContentValues;
    .end local v4    # "value":Ljava/lang/String;
    :cond_3
    monitor-exit v2

    .line 313
    return-void

    .line 312
    :goto_3
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private synthetic lambda$createSoundProfile$3(Landroid/media/quality/SoundProfile;)V
    .locals 10
    .param p1, "sp"    # Landroid/media/quality/SoundProfile;

    .line 626
    invoke-virtual {p1}, Landroid/media/quality/SoundProfile;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/media/quality/SoundProfile;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 627
    invoke-virtual {p1}, Landroid/media/quality/SoundProfile;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/media/quality/MediaQualityService$BinderService;->incomingPackageEqualsCallingUidPackage(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 628
    invoke-direct {p0}, Lcom/android/server/media/quality/MediaQualityService$BinderService;->hasGlobalSoundQualityServicePermission()Z

    move-result v0

    if-nez v0, :cond_0

    .line 629
    iget-object v0, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {v0}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmMqManagerNotifier(Lcom/android/server/media/quality/MediaQualityService;)Lcom/android/server/media/quality/MediaQualityService$MqManagerNotifier;

    move-result-object v0

    .line 630
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    .line 629
    const/4 v4, 0x1

    invoke-static {v0, v1, v4, v2, v3}, Lcom/android/server/media/quality/MediaQualityService$MqManagerNotifier;->-$$Nest$mnotifyOnSoundProfileError(Lcom/android/server/media/quality/MediaQualityService$MqManagerNotifier;Ljava/lang/String;III)V

    .line 633
    :cond_0
    iget-object v0, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {v0}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmSoundProfileLock(Lcom/android/server/media/quality/MediaQualityService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 634
    :try_start_0
    iget-object v0, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {v0}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmMediaQualityDbHelper(Lcom/android/server/media/quality/MediaQualityService;)Lcom/android/server/media/quality/MediaQualityDbHelper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 636
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    nop

    .line 637
    invoke-virtual {p1}, Landroid/media/quality/SoundProfile;->getProfileType()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 638
    invoke-virtual {p1}, Landroid/media/quality/SoundProfile;->getName()Ljava/lang/String;

    move-result-object v6

    .line 639
    invoke-virtual {p1}, Landroid/media/quality/SoundProfile;->getPackageName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {p1}, Landroid/media/quality/SoundProfile;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    goto :goto_1

    .line 640
    :cond_2
    invoke-virtual {p1}, Landroid/media/quality/SoundProfile;->getPackageName()Ljava/lang/String;

    move-result-object v3

    :goto_0
    move-object v7, v3

    goto :goto_2

    .line 652
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :catchall_0
    move-exception v0

    goto :goto_3

    .line 640
    .restart local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :goto_1
    invoke-direct {p0}, Lcom/android/server/media/quality/MediaQualityService$BinderService;->getPackageOfCallingUid()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 641
    :goto_2
    invoke-virtual {p1}, Landroid/media/quality/SoundProfile;->getInputId()Ljava/lang/String;

    move-result-object v8

    .line 642
    invoke-virtual {p1}, Landroid/media/quality/SoundProfile;->getParameters()Landroid/os/PersistableBundle;

    move-result-object v9

    .line 636
    const/4 v4, 0x0

    invoke-static/range {v4 .. v9}, Lcom/android/server/media/quality/MediaQualityUtils;->getContentValues(Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/PersistableBundle;)Landroid/content/ContentValues;

    move-result-object v3

    .line 645
    .local v3, "values":Landroid/content/ContentValues;
    iget-object v4, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {v4}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmMediaQualityDbHelper(Lcom/android/server/media/quality/MediaQualityService;)Lcom/android/server/media/quality/MediaQualityDbHelper;

    const-string/jumbo v4, "sound_quality"

    invoke-virtual {v0, v4, v1, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 647
    .local v1, "id":Ljava/lang/Long;
    iget-object v4, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {v4}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmSoundProfileTempIdMap(Lcom/android/server/media/quality/MediaQualityService;)Lcom/android/server/media/quality/BiMap;

    move-result-object v4

    invoke-static {v4, v1}, Lcom/android/server/media/quality/MediaQualityUtils;->populateTempIdMap(Lcom/android/server/media/quality/BiMap;Ljava/lang/Long;)V

    .line 648
    iget-object v4, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {v4}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmSoundProfileTempIdMap(Lcom/android/server/media/quality/MediaQualityService;)Lcom/android/server/media/quality/BiMap;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/android/server/media/quality/BiMap;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 649
    .local v4, "value":Ljava/lang/String;
    invoke-virtual {p1, v4}, Landroid/media/quality/SoundProfile;->setProfileId(Ljava/lang/String;)V

    .line 650
    iget-object v5, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {v5}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmMqManagerNotifier(Lcom/android/server/media/quality/MediaQualityService;)Lcom/android/server/media/quality/MediaQualityService$MqManagerNotifier;

    move-result-object v5

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    .line 651
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v7

    .line 650
    invoke-static {v5, v4, p1, v6, v7}, Lcom/android/server/media/quality/MediaQualityService$MqManagerNotifier;->-$$Nest$mnotifyOnSoundProfileAdded(Lcom/android/server/media/quality/MediaQualityService$MqManagerNotifier;Ljava/lang/String;Landroid/media/quality/SoundProfile;II)V

    .line 652
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v1    # "id":Ljava/lang/Long;
    .end local v3    # "values":Landroid/content/ContentValues;
    .end local v4    # "value":Ljava/lang/String;
    monitor-exit v2

    .line 653
    return-void

    .line 652
    :goto_3
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private synthetic lambda$removePictureProfile$2(Ljava/lang/String;)V
    .locals 11
    .param p1, "id"    # Ljava/lang/String;

    .line 356
    iget-object v0, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {v0}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmPictureProfileLock(Lcom/android/server/media/quality/MediaQualityService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 357
    :try_start_0
    iget-object v1, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {v1}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmPictureProfileTempIdMap(Lcom/android/server/media/quality/MediaQualityService;)Lcom/android/server/media/quality/BiMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/media/quality/BiMap;->getKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 359
    .local v1, "dbId":Ljava/lang/Long;
    iget-object v2, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {v2}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmMqDatabaseUtils(Lcom/android/server/media/quality/MediaQualityService;)Lcom/android/server/media/quality/MediaQualityService$MqDatabaseUtils;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/android/server/media/quality/MediaQualityService$MqDatabaseUtils;->-$$Nest$mgetPictureProfile(Lcom/android/server/media/quality/MediaQualityService$MqDatabaseUtils;Ljava/lang/Long;)Landroid/media/quality/PictureProfile;

    move-result-object v2

    .line 360
    .local v2, "toDelete":Landroid/media/quality/PictureProfile;
    invoke-direct {p0, v2}, Lcom/android/server/media/quality/MediaQualityService$BinderService;->hasPermissionToRemovePictureProfile(Landroid/media/quality/PictureProfile;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 361
    iget-object v3, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {v3}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmMqManagerNotifier(Lcom/android/server/media/quality/MediaQualityService;)Lcom/android/server/media/quality/MediaQualityService$MqManagerNotifier;

    move-result-object v3

    .line 363
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    .line 361
    const/4 v6, 0x1

    invoke-static {v3, p1, v6, v4, v5}, Lcom/android/server/media/quality/MediaQualityService$MqManagerNotifier;->-$$Nest$mnotifyOnPictureProfileError(Lcom/android/server/media/quality/MediaQualityService$MqManagerNotifier;Ljava/lang/String;III)V

    goto :goto_0

    .line 389
    .end local v1    # "dbId":Ljava/lang/Long;
    .end local v2    # "toDelete":Landroid/media/quality/PictureProfile;
    :catchall_0
    move-exception v1

    goto/16 :goto_2

    .line 366
    .restart local v1    # "dbId":Ljava/lang/Long;
    .restart local v2    # "toDelete":Landroid/media/quality/PictureProfile;
    :cond_0
    :goto_0
    if-eqz v1, :cond_2

    .line 367
    iget-object v3, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {v3}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmMediaQualityDbHelper(Lcom/android/server/media/quality/MediaQualityService;)Lcom/android/server/media/quality/MediaQualityDbHelper;

    move-result-object v3

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 368
    .local v3, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v4, "_id = ?"

    .line 369
    .local v4, "selection":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v5

    .line 370
    .local v5, "selectionArgs":[Ljava/lang/String;
    iget-object v6, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {v6}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmMediaQualityDbHelper(Lcom/android/server/media/quality/MediaQualityService;)Lcom/android/server/media/quality/MediaQualityDbHelper;

    const-string/jumbo v6, "picture_quality"

    invoke-virtual {v3, v6, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    .line 372
    .local v6, "result":I
    if-nez v6, :cond_1

    .line 373
    iget-object v7, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {v7}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmMqManagerNotifier(Lcom/android/server/media/quality/MediaQualityService;)Lcom/android/server/media/quality/MediaQualityService$MqManagerNotifier;

    move-result-object v7

    .line 375
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v9

    .line 373
    const/4 v10, 0x3

    invoke-static {v7, p1, v10, v8, v9}, Lcom/android/server/media/quality/MediaQualityService$MqManagerNotifier;->-$$Nest$mnotifyOnPictureProfileError(Lcom/android/server/media/quality/MediaQualityService$MqManagerNotifier;Ljava/lang/String;III)V

    goto :goto_1

    .line 377
    :cond_1
    iget-object v7, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {v7}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmMqManagerNotifier(Lcom/android/server/media/quality/MediaQualityService;)Lcom/android/server/media/quality/MediaQualityService$MqManagerNotifier;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {v8}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmPictureProfileTempIdMap(Lcom/android/server/media/quality/MediaQualityService;)Lcom/android/server/media/quality/BiMap;

    move-result-object v8

    .line 378
    invoke-virtual {v8, v1}, Lcom/android/server/media/quality/BiMap;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 379
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v9

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v10

    .line 377
    invoke-static {v7, v8, v2, v9, v10}, Lcom/android/server/media/quality/MediaQualityService$MqManagerNotifier;->-$$Nest$mnotifyOnPictureProfileRemoved(Lcom/android/server/media/quality/MediaQualityService$MqManagerNotifier;Ljava/lang/String;Landroid/media/quality/PictureProfile;II)V

    .line 380
    iget-object v7, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {v7}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmPictureProfileTempIdMap(Lcom/android/server/media/quality/MediaQualityService;)Lcom/android/server/media/quality/BiMap;

    move-result-object v7

    invoke-virtual {v7, v1}, Lcom/android/server/media/quality/BiMap;->remove(Ljava/lang/Object;)Z

    .line 381
    iget-object v7, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {v7}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmHalNotifier(Lcom/android/server/media/quality/MediaQualityService;)Lcom/android/server/media/quality/MediaQualityService$HalNotifier;

    move-result-object v7

    const/4 v8, 0x0

    invoke-static {v7, v1, v8}, Lcom/android/server/media/quality/MediaQualityService$HalNotifier;->-$$Nest$mnotifyHalOnPictureProfileChange(Lcom/android/server/media/quality/MediaQualityService$HalNotifier;Ljava/lang/Long;Landroid/os/PersistableBundle;)V

    .line 385
    .end local v3    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v4    # "selection":Ljava/lang/String;
    .end local v5    # "selectionArgs":[Ljava/lang/String;
    .end local v6    # "result":I
    :cond_2
    :goto_1
    iget-object v3, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {v3, v2}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$misPackageDefaultPictureProfile(Lcom/android/server/media/quality/MediaQualityService;Landroid/media/quality/PictureProfile;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 386
    iget-object v3, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {v3}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmPackageDefaultPictureProfileHandleMap(Lcom/android/server/media/quality/MediaQualityService;)Ljava/util/Map;

    move-result-object v3

    .line 387
    invoke-virtual {v2}, Landroid/media/quality/PictureProfile;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 386
    invoke-interface {v3, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 389
    .end local v1    # "dbId":Ljava/lang/Long;
    .end local v2    # "toDelete":Landroid/media/quality/PictureProfile;
    :cond_3
    monitor-exit v0

    .line 390
    return-void

    .line 389
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private synthetic lambda$removeSoundProfile$5(Ljava/lang/String;)V
    .locals 11
    .param p1, "id"    # Ljava/lang/String;

    .line 692
    iget-object v0, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {v0}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmSoundProfileLock(Lcom/android/server/media/quality/MediaQualityService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 693
    :try_start_0
    iget-object v1, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {v1}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmSoundProfileTempIdMap(Lcom/android/server/media/quality/MediaQualityService;)Lcom/android/server/media/quality/BiMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/media/quality/BiMap;->getKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 694
    .local v1, "dbId":Ljava/lang/Long;
    iget-object v2, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {v2}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmMqDatabaseUtils(Lcom/android/server/media/quality/MediaQualityService;)Lcom/android/server/media/quality/MediaQualityService$MqDatabaseUtils;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/android/server/media/quality/MediaQualityService$MqDatabaseUtils;->-$$Nest$mgetSoundProfile(Lcom/android/server/media/quality/MediaQualityService$MqDatabaseUtils;Ljava/lang/Long;)Landroid/media/quality/SoundProfile;

    move-result-object v2

    .line 695
    .local v2, "toDelete":Landroid/media/quality/SoundProfile;
    invoke-direct {p0, v2}, Lcom/android/server/media/quality/MediaQualityService$BinderService;->hasPermissionToRemoveSoundProfile(Landroid/media/quality/SoundProfile;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 696
    iget-object v3, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {v3}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmMqManagerNotifier(Lcom/android/server/media/quality/MediaQualityService;)Lcom/android/server/media/quality/MediaQualityService$MqManagerNotifier;

    move-result-object v3

    .line 698
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    .line 696
    const/4 v6, 0x1

    invoke-static {v3, p1, v6, v4, v5}, Lcom/android/server/media/quality/MediaQualityService$MqManagerNotifier;->-$$Nest$mnotifyOnSoundProfileError(Lcom/android/server/media/quality/MediaQualityService$MqManagerNotifier;Ljava/lang/String;III)V

    goto :goto_0

    .line 719
    .end local v1    # "dbId":Ljava/lang/Long;
    .end local v2    # "toDelete":Landroid/media/quality/SoundProfile;
    :catchall_0
    move-exception v1

    goto :goto_2

    .line 700
    .restart local v1    # "dbId":Ljava/lang/Long;
    .restart local v2    # "toDelete":Landroid/media/quality/SoundProfile;
    :cond_0
    :goto_0
    if-eqz v1, :cond_2

    .line 701
    iget-object v3, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {v3}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmMediaQualityDbHelper(Lcom/android/server/media/quality/MediaQualityService;)Lcom/android/server/media/quality/MediaQualityDbHelper;

    move-result-object v3

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 702
    .local v3, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v4, "_id = ?"

    .line 703
    .local v4, "selection":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v5

    .line 704
    .local v5, "selectionArgs":[Ljava/lang/String;
    iget-object v6, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {v6}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmMediaQualityDbHelper(Lcom/android/server/media/quality/MediaQualityService;)Lcom/android/server/media/quality/MediaQualityDbHelper;

    const-string/jumbo v6, "sound_quality"

    invoke-virtual {v3, v6, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    .line 707
    .local v6, "result":I
    if-nez v6, :cond_1

    .line 708
    iget-object v7, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {v7}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmMqManagerNotifier(Lcom/android/server/media/quality/MediaQualityService;)Lcom/android/server/media/quality/MediaQualityService$MqManagerNotifier;

    move-result-object v7

    .line 710
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v9

    .line 708
    const/4 v10, 0x3

    invoke-static {v7, p1, v10, v8, v9}, Lcom/android/server/media/quality/MediaQualityService$MqManagerNotifier;->-$$Nest$mnotifyOnSoundProfileError(Lcom/android/server/media/quality/MediaQualityService$MqManagerNotifier;Ljava/lang/String;III)V

    goto :goto_1

    .line 712
    :cond_1
    iget-object v7, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {v7}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmMqManagerNotifier(Lcom/android/server/media/quality/MediaQualityService;)Lcom/android/server/media/quality/MediaQualityService$MqManagerNotifier;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {v8}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmSoundProfileTempIdMap(Lcom/android/server/media/quality/MediaQualityService;)Lcom/android/server/media/quality/BiMap;

    move-result-object v8

    .line 713
    invoke-virtual {v8, v1}, Lcom/android/server/media/quality/BiMap;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 714
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v9

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v10

    .line 712
    invoke-static {v7, v8, v2, v9, v10}, Lcom/android/server/media/quality/MediaQualityService$MqManagerNotifier;->-$$Nest$mnotifyOnSoundProfileRemoved(Lcom/android/server/media/quality/MediaQualityService$MqManagerNotifier;Ljava/lang/String;Landroid/media/quality/SoundProfile;II)V

    .line 715
    iget-object v7, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {v7}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmSoundProfileTempIdMap(Lcom/android/server/media/quality/MediaQualityService;)Lcom/android/server/media/quality/BiMap;

    move-result-object v7

    invoke-virtual {v7, v1}, Lcom/android/server/media/quality/BiMap;->remove(Ljava/lang/Object;)Z

    .line 716
    iget-object v7, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {v7}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmHalNotifier(Lcom/android/server/media/quality/MediaQualityService;)Lcom/android/server/media/quality/MediaQualityService$HalNotifier;

    move-result-object v7

    const/4 v8, 0x0

    invoke-static {v7, v1, v8}, Lcom/android/server/media/quality/MediaQualityService$HalNotifier;->-$$Nest$mnotifyHalOnSoundProfileChange(Lcom/android/server/media/quality/MediaQualityService$HalNotifier;Ljava/lang/Long;Landroid/os/PersistableBundle;)V

    .line 719
    .end local v1    # "dbId":Ljava/lang/Long;
    .end local v2    # "toDelete":Landroid/media/quality/SoundProfile;
    .end local v3    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v4    # "selection":Ljava/lang/String;
    .end local v5    # "selectionArgs":[Ljava/lang/String;
    .end local v6    # "result":I
    :cond_2
    :goto_1
    monitor-exit v0

    .line 720
    return-void

    .line 719
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private synthetic lambda$setAutoPictureQualityEnabled$8(Z)V
    .locals 5
    .param p1, "enabled"    # Z

    .line 1123
    invoke-direct {p0}, Lcom/android/server/media/quality/MediaQualityService$BinderService;->hasGlobalPictureQualityServicePermission()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1124
    iget-object v0, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {v0}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmMqManagerNotifier(Lcom/android/server/media/quality/MediaQualityService;)Lcom/android/server/media/quality/MediaQualityService$MqManagerNotifier;

    move-result-object v0

    .line 1126
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    .line 1124
    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v0, v3, v4, v1, v2}, Lcom/android/server/media/quality/MediaQualityService$MqManagerNotifier;->-$$Nest$mnotifyOnPictureProfileError(Lcom/android/server/media/quality/MediaQualityService$MqManagerNotifier;Ljava/lang/String;III)V

    .line 1128
    :cond_0
    iget-object v0, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {v0}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmPictureProfileLock(Lcom/android/server/media/quality/MediaQualityService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1130
    :try_start_0
    iget-object v1, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {v1}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmMediaQuality(Lcom/android/server/media/quality/MediaQualityService;)Landroid/hardware/tv/mediaquality/IMediaQuality;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1131
    iget-object v1, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {v1}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmMediaQuality(Lcom/android/server/media/quality/MediaQualityService;)Landroid/hardware/tv/mediaquality/IMediaQuality;

    move-result-object v1

    invoke-interface {v1}, Landroid/hardware/tv/mediaquality/IMediaQuality;->isAutoPqSupported()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1132
    iget-object v1, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {v1}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmMediaQuality(Lcom/android/server/media/quality/MediaQualityService;)Landroid/hardware/tv/mediaquality/IMediaQuality;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/hardware/tv/mediaquality/IMediaQuality;->setAutoPqEnabled(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1138
    :catchall_0
    move-exception v1

    goto :goto_3

    .line 1135
    :catch_0
    move-exception v1

    goto :goto_1

    .line 1137
    :cond_1
    :goto_0
    goto :goto_2

    .line 1135
    :goto_1
    nop

    .line 1136
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_1
    const-string v2, "MediaQualityService"

    const-string v3, "Failed to set auto picture quality"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1138
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_2
    monitor-exit v0

    .line 1139
    return-void

    .line 1138
    :goto_3
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private synthetic lambda$setAutoSoundQualityEnabled$10(Z)V
    .locals 5
    .param p1, "enabled"    # Z

    .line 1203
    invoke-direct {p0}, Lcom/android/server/media/quality/MediaQualityService$BinderService;->hasGlobalSoundQualityServicePermission()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1204
    iget-object v0, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {v0}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmMqManagerNotifier(Lcom/android/server/media/quality/MediaQualityService;)Lcom/android/server/media/quality/MediaQualityService$MqManagerNotifier;

    move-result-object v0

    .line 1206
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    .line 1204
    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v0, v3, v4, v1, v2}, Lcom/android/server/media/quality/MediaQualityService$MqManagerNotifier;->-$$Nest$mnotifyOnSoundProfileError(Lcom/android/server/media/quality/MediaQualityService$MqManagerNotifier;Ljava/lang/String;III)V

    .line 1209
    :cond_0
    iget-object v0, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {v0}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmSoundProfileLock(Lcom/android/server/media/quality/MediaQualityService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1211
    :try_start_0
    iget-object v1, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {v1}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmMediaQuality(Lcom/android/server/media/quality/MediaQualityService;)Landroid/hardware/tv/mediaquality/IMediaQuality;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1212
    iget-object v1, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {v1}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmMediaQuality(Lcom/android/server/media/quality/MediaQualityService;)Landroid/hardware/tv/mediaquality/IMediaQuality;

    move-result-object v1

    invoke-interface {v1}, Landroid/hardware/tv/mediaquality/IMediaQuality;->isAutoAqSupported()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1213
    iget-object v1, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {v1}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmMediaQuality(Lcom/android/server/media/quality/MediaQualityService;)Landroid/hardware/tv/mediaquality/IMediaQuality;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/hardware/tv/mediaquality/IMediaQuality;->setAutoAqEnabled(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1219
    :catchall_0
    move-exception v1

    goto :goto_3

    .line 1216
    :catch_0
    move-exception v1

    goto :goto_1

    .line 1218
    :cond_1
    :goto_0
    goto :goto_2

    .line 1216
    :goto_1
    nop

    .line 1217
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_1
    const-string v2, "MediaQualityService"

    const-string v3, "Failed to set auto sound quality"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1219
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_2
    monitor-exit v0

    .line 1220
    return-void

    .line 1219
    :goto_3
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private synthetic lambda$setPictureProfileAllowList$6(Ljava/util/List;)V
    .locals 5
    .param p1, "packages"    # Ljava/util/List;

    .line 1073
    invoke-direct {p0}, Lcom/android/server/media/quality/MediaQualityService$BinderService;->hasGlobalPictureQualityServicePermission()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1074
    iget-object v0, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {v0}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmMqManagerNotifier(Lcom/android/server/media/quality/MediaQualityService;)Lcom/android/server/media/quality/MediaQualityService$MqManagerNotifier;

    move-result-object v0

    .line 1076
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    .line 1074
    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v0, v3, v4, v1, v2}, Lcom/android/server/media/quality/MediaQualityService$MqManagerNotifier;->-$$Nest$mnotifyOnPictureProfileError(Lcom/android/server/media/quality/MediaQualityService$MqManagerNotifier;Ljava/lang/String;III)V

    .line 1078
    :cond_0
    iget-object v0, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {v0}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmPictureProfileSharedPreference(Lcom/android/server/media/quality/MediaQualityService;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1079
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, ","

    invoke-static {v1, p1}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "allowlist"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1080
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1081
    return-void
.end method

.method private synthetic lambda$setSoundProfileAllowList$7(Ljava/util/List;)V
    .locals 5
    .param p1, "packages"    # Ljava/util/List;

    .line 1103
    invoke-direct {p0}, Lcom/android/server/media/quality/MediaQualityService$BinderService;->hasGlobalSoundQualityServicePermission()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1104
    iget-object v0, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {v0}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmMqManagerNotifier(Lcom/android/server/media/quality/MediaQualityService;)Lcom/android/server/media/quality/MediaQualityService$MqManagerNotifier;

    move-result-object v0

    .line 1106
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    .line 1104
    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v0, v3, v4, v1, v2}, Lcom/android/server/media/quality/MediaQualityService$MqManagerNotifier;->-$$Nest$mnotifyOnSoundProfileError(Lcom/android/server/media/quality/MediaQualityService$MqManagerNotifier;Ljava/lang/String;III)V

    .line 1108
    :cond_0
    iget-object v0, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {v0}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmSoundProfileSharedPreference(Lcom/android/server/media/quality/MediaQualityService;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1109
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, ","

    invoke-static {v1, p1}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "allowlist"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1110
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1111
    return-void
.end method

.method private synthetic lambda$setSuperResolutionEnabled$9(Z)V
    .locals 5
    .param p1, "enabled"    # Z

    .line 1163
    invoke-direct {p0}, Lcom/android/server/media/quality/MediaQualityService$BinderService;->hasGlobalPictureQualityServicePermission()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1164
    iget-object v0, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {v0}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmMqManagerNotifier(Lcom/android/server/media/quality/MediaQualityService;)Lcom/android/server/media/quality/MediaQualityService$MqManagerNotifier;

    move-result-object v0

    .line 1166
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    .line 1164
    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v0, v3, v4, v1, v2}, Lcom/android/server/media/quality/MediaQualityService$MqManagerNotifier;->-$$Nest$mnotifyOnPictureProfileError(Lcom/android/server/media/quality/MediaQualityService$MqManagerNotifier;Ljava/lang/String;III)V

    .line 1168
    :cond_0
    iget-object v0, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {v0}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmPictureProfileLock(Lcom/android/server/media/quality/MediaQualityService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1170
    :try_start_0
    iget-object v1, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {v1}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmMediaQuality(Lcom/android/server/media/quality/MediaQualityService;)Landroid/hardware/tv/mediaquality/IMediaQuality;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1171
    iget-object v1, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {v1}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmMediaQuality(Lcom/android/server/media/quality/MediaQualityService;)Landroid/hardware/tv/mediaquality/IMediaQuality;

    move-result-object v1

    invoke-interface {v1}, Landroid/hardware/tv/mediaquality/IMediaQuality;->isAutoSrSupported()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1172
    iget-object v1, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {v1}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmMediaQuality(Lcom/android/server/media/quality/MediaQualityService;)Landroid/hardware/tv/mediaquality/IMediaQuality;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/hardware/tv/mediaquality/IMediaQuality;->setAutoSrEnabled(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1178
    :catchall_0
    move-exception v1

    goto :goto_3

    .line 1175
    :catch_0
    move-exception v1

    goto :goto_1

    .line 1177
    :cond_1
    :goto_0
    goto :goto_2

    .line 1175
    :goto_1
    nop

    .line 1176
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_1
    const-string v2, "MediaQualityService"

    const-string v3, "Failed to set super resolution"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1178
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_2
    monitor-exit v0

    .line 1179
    return-void

    .line 1178
    :goto_3
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private synthetic lambda$updatePictureProfile$1(Ljava/lang/String;Landroid/media/quality/PictureProfile;)V
    .locals 8
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "pp"    # Landroid/media/quality/PictureProfile;

    .line 321
    iget-object v0, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {v0}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmPictureProfileTempIdMap(Lcom/android/server/media/quality/MediaQualityService;)Lcom/android/server/media/quality/BiMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/media/quality/BiMap;->getKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/lang/Long;

    .line 322
    .local v1, "dbId":Ljava/lang/Long;
    invoke-direct {p0, v1, p2}, Lcom/android/server/media/quality/MediaQualityService$BinderService;->hasPermissionToUpdatePictureProfile(Ljava/lang/Long;Landroid/media/quality/PictureProfile;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 323
    iget-object v0, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {v0}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmMqManagerNotifier(Lcom/android/server/media/quality/MediaQualityService;)Lcom/android/server/media/quality/MediaQualityService$MqManagerNotifier;

    move-result-object v0

    .line 325
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    .line 323
    const/4 v4, 0x1

    invoke-static {v0, p1, v4, v2, v3}, Lcom/android/server/media/quality/MediaQualityService$MqManagerNotifier;->-$$Nest$mnotifyOnPictureProfileError(Lcom/android/server/media/quality/MediaQualityService$MqManagerNotifier;Ljava/lang/String;III)V

    .line 327
    :cond_0
    iget-object v0, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {v0}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmPictureProfileLock(Lcom/android/server/media/quality/MediaQualityService;)Ljava/lang/Object;

    move-result-object v7

    monitor-enter v7

    .line 328
    nop

    .line 329
    :try_start_0
    invoke-virtual {p2}, Landroid/media/quality/PictureProfile;->getProfileType()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 330
    invoke-virtual {p2}, Landroid/media/quality/PictureProfile;->getName()Ljava/lang/String;

    move-result-object v3

    .line 331
    invoke-virtual {p2}, Landroid/media/quality/PictureProfile;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 332
    invoke-virtual {p2}, Landroid/media/quality/PictureProfile;->getInputId()Ljava/lang/String;

    move-result-object v5

    .line 333
    invoke-virtual {p2}, Landroid/media/quality/PictureProfile;->getParameters()Landroid/os/PersistableBundle;

    move-result-object v6

    .line 328
    invoke-static/range {v1 .. v6}, Lcom/android/server/media/quality/MediaQualityUtils;->getContentValues(Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/PersistableBundle;)Landroid/content/ContentValues;

    move-result-object v0

    .line 334
    .local v0, "values":Landroid/content/ContentValues;
    iget-object v2, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    .line 335
    invoke-virtual {p2}, Landroid/media/quality/PictureProfile;->getParameters()Landroid/os/PersistableBundle;

    move-result-object v3

    .line 334
    invoke-virtual {v2, v0, v3}, Lcom/android/server/media/quality/MediaQualityService;->updateDatabaseOnPictureProfileAndNotifyManagerAndHal(Landroid/content/ContentValues;Landroid/os/PersistableBundle;)V

    .line 336
    iget-object v2, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {v2, p2}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$misPackageDefaultPictureProfile(Lcom/android/server/media/quality/MediaQualityService;Landroid/media/quality/PictureProfile;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 337
    iget-object v2, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {v2}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmPackageDefaultPictureProfileHandleMap(Lcom/android/server/media/quality/MediaQualityService;)Ljava/util/Map;

    move-result-object v2

    .line 338
    invoke-virtual {p2}, Landroid/media/quality/PictureProfile;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Landroid/media/quality/PictureProfile;->getHandle()Landroid/media/quality/PictureProfileHandle;

    move-result-object v4

    invoke-virtual {v4}, Landroid/media/quality/PictureProfileHandle;->getId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 337
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 340
    .end local v0    # "values":Landroid/content/ContentValues;
    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    :goto_0
    monitor-exit v7

    .line 341
    return-void

    .line 340
    :goto_1
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private synthetic lambda$updateSoundProfile$4(Ljava/lang/String;Landroid/media/quality/SoundProfile;)V
    .locals 8
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "sp"    # Landroid/media/quality/SoundProfile;

    .line 660
    iget-object v0, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {v0}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmSoundProfileTempIdMap(Lcom/android/server/media/quality/MediaQualityService;)Lcom/android/server/media/quality/BiMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/media/quality/BiMap;->getKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/lang/Long;

    .line 661
    .local v1, "dbId":Ljava/lang/Long;
    invoke-direct {p0, v1, p2}, Lcom/android/server/media/quality/MediaQualityService$BinderService;->hasPermissionToUpdateSoundProfile(Ljava/lang/Long;Landroid/media/quality/SoundProfile;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 662
    iget-object v0, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {v0}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmMqManagerNotifier(Lcom/android/server/media/quality/MediaQualityService;)Lcom/android/server/media/quality/MediaQualityService$MqManagerNotifier;

    move-result-object v0

    .line 664
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    .line 662
    const/4 v4, 0x1

    invoke-static {v0, p1, v4, v2, v3}, Lcom/android/server/media/quality/MediaQualityService$MqManagerNotifier;->-$$Nest$mnotifyOnSoundProfileError(Lcom/android/server/media/quality/MediaQualityService$MqManagerNotifier;Ljava/lang/String;III)V

    .line 667
    :cond_0
    iget-object v0, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {v0}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmSoundProfileLock(Lcom/android/server/media/quality/MediaQualityService;)Ljava/lang/Object;

    move-result-object v7

    monitor-enter v7

    .line 668
    nop

    .line 669
    :try_start_0
    invoke-virtual {p2}, Landroid/media/quality/SoundProfile;->getProfileType()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 670
    invoke-virtual {p2}, Landroid/media/quality/SoundProfile;->getName()Ljava/lang/String;

    move-result-object v3

    .line 671
    invoke-virtual {p2}, Landroid/media/quality/SoundProfile;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 672
    invoke-virtual {p2}, Landroid/media/quality/SoundProfile;->getInputId()Ljava/lang/String;

    move-result-object v5

    .line 673
    invoke-virtual {p2}, Landroid/media/quality/SoundProfile;->getParameters()Landroid/os/PersistableBundle;

    move-result-object v6

    .line 668
    invoke-static/range {v1 .. v6}, Lcom/android/server/media/quality/MediaQualityUtils;->getContentValues(Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/PersistableBundle;)Landroid/content/ContentValues;

    move-result-object v0

    .line 675
    .local v0, "values":Landroid/content/ContentValues;
    iget-object v2, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-virtual {p2}, Landroid/media/quality/SoundProfile;->getParameters()Landroid/os/PersistableBundle;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lcom/android/server/media/quality/MediaQualityService;->updateDatabaseOnSoundProfileAndNotifyManagerAndHal(Landroid/content/ContentValues;Landroid/os/PersistableBundle;)V

    .line 676
    .end local v0    # "values":Landroid/content/ContentValues;
    monitor-exit v7

    .line 677
    return-void

    .line 676
    :catchall_0
    move-exception v0

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public createPictureProfile(Landroid/media/quality/PictureProfile;I)V
    .locals 2
    .param p1, "pp"    # Landroid/media/quality/PictureProfile;
    .param p2, "userId"    # I

    .line 279
    iget-object v0, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {v0}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmHandler(Lcom/android/server/media/quality/MediaQualityService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/media/quality/MediaQualityService$BinderService$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/android/server/media/quality/MediaQualityService$BinderService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/media/quality/MediaQualityService$BinderService;Landroid/media/quality/PictureProfile;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 315
    return-void
.end method

.method public createSoundProfile(Landroid/media/quality/SoundProfile;I)V
    .locals 2
    .param p1, "sp"    # Landroid/media/quality/SoundProfile;
    .param p2, "userId"    # I

    .line 625
    iget-object v0, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {v0}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmHandler(Lcom/android/server/media/quality/MediaQualityService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/media/quality/MediaQualityService$BinderService$$ExternalSyntheticLambda11;

    invoke-direct {v1, p0, p1}, Lcom/android/server/media/quality/MediaQualityService$BinderService$$ExternalSyntheticLambda11;-><init>(Lcom/android/server/media/quality/MediaQualityService$BinderService;Landroid/media/quality/SoundProfile;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 654
    return-void
.end method

.method public getAvailablePictureProfiles(ZI)Ljava/util/List;
    .locals 2
    .param p1, "includeParams"    # Z
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZI)",
            "Ljava/util/List<",
            "Landroid/media/quality/PictureProfile;",
            ">;"
        }
    .end annotation

    .line 456
    invoke-direct {p0}, Lcom/android/server/media/quality/MediaQualityService$BinderService;->getPackageOfCallingUid()Ljava/lang/String;

    move-result-object v0

    .line 457
    .local v0, "packageName":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 458
    invoke-virtual {p0, v0, p1, p2}, Lcom/android/server/media/quality/MediaQualityService$BinderService;->getPictureProfilesByPackage(Ljava/lang/String;ZI)Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 460
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    return-object v1
.end method

.method public getAvailableSoundProfiles(ZI)Ljava/util/List;
    .locals 2
    .param p1, "includeParams"    # Z
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZI)",
            "Ljava/util/List<",
            "Landroid/media/quality/SoundProfile;",
            ">;"
        }
    .end annotation

    .line 785
    invoke-direct {p0}, Lcom/android/server/media/quality/MediaQualityService$BinderService;->getPackageOfCallingUid()Ljava/lang/String;

    move-result-object v0

    .line 786
    .local v0, "packageName":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 787
    invoke-virtual {p0, v0, p1, p2}, Lcom/android/server/media/quality/MediaQualityService$BinderService;->getSoundProfilesByPackage(Ljava/lang/String;ZI)Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 789
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    return-object v1
.end method

.method public getDefaultPictureProfileHandleValue(I)J
    .locals 5
    .param p1, "userId"    # I

    .line 551
    iget-object v0, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {v0}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmPictureProfileLock(Lcom/android/server/media/quality/MediaQualityService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 552
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/media/quality/MediaQualityService$BinderService;->getPackageOfCallingUid()Ljava/lang/String;

    move-result-object v1

    .line 553
    .local v1, "packageName":Ljava/lang/String;
    const/4 v2, 0x0

    .line 554
    .local v2, "value":Ljava/lang/Long;
    if-eqz v1, :cond_0

    .line 555
    iget-object v3, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {v3}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmPackageDefaultPictureProfileHandleMap(Lcom/android/server/media/quality/MediaQualityService;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    move-object v2, v3

    goto :goto_0

    .line 558
    .end local v1    # "packageName":Ljava/lang/String;
    .end local v2    # "value":Ljava/lang/Long;
    :catchall_0
    move-exception v1

    goto :goto_2

    .line 557
    .restart local v1    # "packageName":Ljava/lang/String;
    .restart local v2    # "value":Ljava/lang/Long;
    :cond_0
    :goto_0
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    goto :goto_1

    :cond_1
    const-wide/16 v3, -0x1

    :goto_1
    monitor-exit v0

    return-wide v3

    .line 558
    .end local v1    # "packageName":Ljava/lang/String;
    .end local v2    # "value":Ljava/lang/Long;
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getParameterCapabilities(Ljava/util/List;I)Ljava/util/List;
    .locals 5
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I)",
            "Ljava/util/List<",
            "Landroid/media/quality/ParameterCapability;",
            ">;"
        }
    .end annotation

    .line 1023
    .local p1, "names":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p1}, Lcom/android/server/media/quality/MediaQualityUtils;->convertParameterToByteArray(Ljava/util/List;)[B

    move-result-object v0

    .line 1024
    .local v0, "byteArray":[B
    array-length v1, v0

    new-array v1, v1, [Landroid/hardware/tv/mediaquality/ParamCapability;

    .line 1026
    .local v1, "caps":[Landroid/hardware/tv/mediaquality/ParamCapability;
    :try_start_0
    iget-object v2, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {v2}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmMediaQuality(Lcom/android/server/media/quality/MediaQualityService;)Landroid/hardware/tv/mediaquality/IMediaQuality;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Landroid/hardware/tv/mediaquality/IMediaQuality;->getParamCaps([B[Landroid/hardware/tv/mediaquality/ParamCapability;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1029
    goto :goto_0

    .line 1027
    :catch_0
    move-exception v2

    .line 1028
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "MediaQualityService"

    const-string v4, "Failed to get parameter capabilities"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1031
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_0
    invoke-direct {p0, v1}, Lcom/android/server/media/quality/MediaQualityService$BinderService;->getListParameterCapability([Landroid/hardware/tv/mediaquality/ParamCapability;)Ljava/util/List;

    move-result-object v2

    return-object v2
.end method

.method public getPictureProfile(ILjava/lang/String;ZI)Landroid/media/quality/PictureProfile;
    .locals 12
    .param p1, "type"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "includeParams"    # Z
    .param p4, "userId"    # I

    .line 404
    const-string v1, "_type = ? AND _name = ? AND _package = ?"

    .line 407
    .local v1, "selection":Ljava/lang/String;
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/server/media/quality/MediaQualityService$BinderService;->getPackageOfCallingUid()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v0, p2, v2}, [Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    .line 409
    .local v2, "selectionArguments":[Ljava/lang/String;
    iget-object v0, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {v0}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmPictureProfileLock(Lcom/android/server/media/quality/MediaQualityService;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 411
    :try_start_0
    iget-object v0, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {v0}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmMqDatabaseUtils(Lcom/android/server/media/quality/MediaQualityService;)Lcom/android/server/media/quality/MediaQualityService$MqDatabaseUtils;

    move-result-object v0

    iget-object v4, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {v4}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmMediaQualityDbHelper(Lcom/android/server/media/quality/MediaQualityService;)Lcom/android/server/media/quality/MediaQualityDbHelper;

    const-string/jumbo v4, "picture_quality"

    .line 413
    invoke-static {p3}, Lcom/android/server/media/quality/MediaQualityUtils;->getMediaProfileColumns(Z)[Ljava/lang/String;

    move-result-object v5

    .line 411
    invoke-static {v0, v4, v5, v1, v2}, Lcom/android/server/media/quality/MediaQualityService$MqDatabaseUtils;->-$$Nest$mgetCursorAfterQuerying(Lcom/android/server/media/quality/MediaQualityService$MqDatabaseUtils;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v4, v0

    .line 416
    .local v4, "cursor":Landroid/database/Cursor;
    :try_start_1
    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 417
    .local v0, "count":I
    const/4 v5, 0x0

    if-nez v0, :cond_0

    .line 418
    nop

    .line 430
    :try_start_2
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 418
    return-object v5

    .line 431
    .end local v0    # "count":I
    .end local v4    # "cursor":Landroid/database/Cursor;
    :catchall_0
    move-exception v0

    goto :goto_2

    .line 420
    .restart local v0    # "count":I
    .restart local v4    # "cursor":Landroid/database/Cursor;
    :cond_0
    const/4 v6, 0x1

    if-le v0, v6, :cond_1

    .line 421
    :try_start_3
    const-string v6, "MediaQualityService"

    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "%d entries found for type=%d and name=%s in %s. Should only ever be 0 or 1."

    .line 423
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {v11}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmMediaQualityDbHelper(Lcom/android/server/media/quality/MediaQualityService;)Lcom/android/server/media/quality/MediaQualityDbHelper;

    const-string/jumbo v11, "picture_quality"

    filled-new-array {v8, v9, v10, p2, v11}, [Ljava/lang/Object;

    move-result-object v8

    .line 421
    invoke-static {v7, v8}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 425
    nop

    .line 430
    :try_start_4
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 425
    return-object v5

    .line 410
    .end local v0    # "count":I
    :catchall_1
    move-exception v0

    move-object v5, v0

    goto :goto_0

    .line 427
    .restart local v0    # "count":I
    :cond_1
    :try_start_5
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    .line 428
    iget-object v5, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {v5}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmPictureProfileTempIdMap(Lcom/android/server/media/quality/MediaQualityService;)Lcom/android/server/media/quality/BiMap;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/media/quality/MediaQualityUtils;->convertCursorToPictureProfileWithTempId(Landroid/database/Cursor;Lcom/android/server/media/quality/BiMap;)Landroid/media/quality/PictureProfile;

    move-result-object v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 430
    :try_start_6
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 428
    return-object v5

    .line 410
    .end local v0    # "count":I
    :goto_0
    if-eqz v4, :cond_2

    :try_start_7
    invoke-interface {v4}, Landroid/database/Cursor;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception v0

    :try_start_8
    invoke-virtual {v5, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    nop

    .end local v1    # "selection":Ljava/lang/String;
    .end local v2    # "selectionArguments":[Ljava/lang/String;
    .end local p0    # "this":Lcom/android/server/media/quality/MediaQualityService$BinderService;
    .end local p1    # "type":I
    .end local p2    # "name":Ljava/lang/String;
    .end local p3    # "includeParams":Z
    .end local p4    # "userId":I
    throw v5

    .line 431
    .end local v4    # "cursor":Landroid/database/Cursor;
    .restart local v1    # "selection":Ljava/lang/String;
    .restart local v2    # "selectionArguments":[Ljava/lang/String;
    .restart local p0    # "this":Lcom/android/server/media/quality/MediaQualityService$BinderService;
    .restart local p1    # "type":I
    .restart local p2    # "name":Ljava/lang/String;
    .restart local p3    # "includeParams":Z
    .restart local p4    # "userId":I
    :goto_2
    monitor-exit v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    throw v0
.end method

.method public getPictureProfileAllowList(I)Ljava/util/List;
    .locals 5
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1056
    invoke-direct {p0}, Lcom/android/server/media/quality/MediaQualityService$BinderService;->hasGlobalPictureQualityServicePermission()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1057
    iget-object v0, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {v0}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmMqManagerNotifier(Lcom/android/server/media/quality/MediaQualityService;)Lcom/android/server/media/quality/MediaQualityService$MqManagerNotifier;

    move-result-object v0

    .line 1059
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    .line 1057
    const/4 v4, 0x1

    invoke-static {v0, v1, v4, v2, v3}, Lcom/android/server/media/quality/MediaQualityService$MqManagerNotifier;->-$$Nest$mnotifyOnPictureProfileError(Lcom/android/server/media/quality/MediaQualityService$MqManagerNotifier;Ljava/lang/String;III)V

    .line 1061
    :cond_0
    iget-object v0, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {v0}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmPictureProfileSharedPreference(Lcom/android/server/media/quality/MediaQualityService;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "allowlist"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1062
    .local v0, "allowlist":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 1063
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1064
    .local v1, "stringArray":[Ljava/lang/String;
    new-instance v2, Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v2

    .line 1066
    .end local v1    # "stringArray":[Ljava/lang/String;
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    return-object v1
.end method

.method public getPictureProfileForTvInput(Ljava/lang/String;I)J
    .locals 11
    .param p1, "inputId"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 572
    invoke-direct {p0}, Lcom/android/server/media/quality/MediaQualityService$BinderService;->hasGlobalPictureQualityServicePermission()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 573
    iget-object v0, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {v0}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmMqManagerNotifier(Lcom/android/server/media/quality/MediaQualityService;)Lcom/android/server/media/quality/MediaQualityService$MqManagerNotifier;

    move-result-object v0

    .line 575
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    .line 573
    const/4 v4, 0x0

    invoke-static {v0, v4, v1, v2, v3}, Lcom/android/server/media/quality/MediaQualityService$MqManagerNotifier;->-$$Nest$mnotifyOnPictureProfileError(Lcom/android/server/media/quality/MediaQualityService$MqManagerNotifier;Ljava/lang/String;III)V

    .line 577
    :cond_0
    const-string v0, "_id"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    .line 578
    .local v0, "columns":[Ljava/lang/String;
    const-string v2, "_type = ? AND _name = ? AND _input_id = ?"

    .line 581
    .local v2, "selection":Ljava/lang/String;
    nop

    .line 582
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, "default"

    filled-new-array {v1, v3, p1}, [Ljava/lang/String;

    move-result-object v1

    .line 586
    .local v1, "selectionArguments":[Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {v3}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmPictureProfileLock(Lcom/android/server/media/quality/MediaQualityService;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 587
    :try_start_0
    iget-object v4, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {v4}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmMqDatabaseUtils(Lcom/android/server/media/quality/MediaQualityService;)Lcom/android/server/media/quality/MediaQualityService$MqDatabaseUtils;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {v5}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmMediaQualityDbHelper(Lcom/android/server/media/quality/MediaQualityService;)Lcom/android/server/media/quality/MediaQualityDbHelper;

    const-string/jumbo v5, "picture_quality"

    invoke-static {v4, v5, v0, v2, v1}, Lcom/android/server/media/quality/MediaQualityService$MqDatabaseUtils;->-$$Nest$mgetCursorAfterQuerying(Lcom/android/server/media/quality/MediaQualityService$MqDatabaseUtils;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 590
    .local v4, "cursor":Landroid/database/Cursor;
    :try_start_1
    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 591
    .local v5, "count":I
    if-nez v5, :cond_1

    .line 592
    nop

    .line 601
    :try_start_2
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 592
    const-wide/16 v6, -0x1

    return-wide v6

    .line 602
    .end local v4    # "cursor":Landroid/database/Cursor;
    .end local v5    # "count":I
    :catchall_0
    move-exception v4

    goto :goto_3

    .line 594
    .restart local v4    # "cursor":Landroid/database/Cursor;
    .restart local v5    # "count":I
    :cond_1
    const-wide/16 v6, -0x1

    .line 595
    .local v6, "handle":J
    :try_start_3
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    .line 596
    const-string v8, "_id"

    invoke-interface {v4, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 597
    .local v8, "colIndex":I
    const/4 v9, -0x1

    if-eq v8, v9, :cond_2

    .line 598
    invoke-interface {v4, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-wide v6, v9

    goto :goto_0

    .line 587
    .end local v5    # "count":I
    .end local v6    # "handle":J
    .end local v8    # "colIndex":I
    :catchall_1
    move-exception v5

    goto :goto_1

    .line 600
    .restart local v5    # "count":I
    .restart local v6    # "handle":J
    .restart local v8    # "colIndex":I
    :cond_2
    :goto_0
    nop

    .line 601
    :try_start_4
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 600
    return-wide v6

    .line 587
    .end local v5    # "count":I
    .end local v6    # "handle":J
    .end local v8    # "colIndex":I
    :goto_1
    if-eqz v4, :cond_3

    :try_start_5
    invoke-interface {v4}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception v6

    :try_start_6
    invoke-virtual {v5, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_2
    nop

    .end local v0    # "columns":[Ljava/lang/String;
    .end local v1    # "selectionArguments":[Ljava/lang/String;
    .end local v2    # "selection":Ljava/lang/String;
    .end local p0    # "this":Lcom/android/server/media/quality/MediaQualityService$BinderService;
    .end local p1    # "inputId":Ljava/lang/String;
    .end local p2    # "userId":I
    throw v5

    .line 602
    .end local v4    # "cursor":Landroid/database/Cursor;
    .restart local v0    # "columns":[Ljava/lang/String;
    .restart local v1    # "selectionArguments":[Ljava/lang/String;
    .restart local v2    # "selection":Ljava/lang/String;
    .restart local p0    # "this":Lcom/android/server/media/quality/MediaQualityService$BinderService;
    .restart local p1    # "inputId":Ljava/lang/String;
    .restart local p2    # "userId":I
    :goto_3
    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw v4
.end method

.method public getPictureProfileHandle([Ljava/lang/String;I)Ljava/util/List;
    .locals 9
    .param p1, "ids"    # [Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Landroid/media/quality/PictureProfileHandle;",
            ">;"
        }
    .end annotation

    .line 525
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 526
    .local v0, "toReturn":Ljava/util/List;, "Ljava/util/List<Landroid/media/quality/PictureProfileHandle;>;"
    iget-object v1, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {v1}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmPictureProfileLock(Lcom/android/server/media/quality/MediaQualityService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 527
    :try_start_0
    array-length v2, p1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, p1, v3

    .line 528
    .local v4, "id":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {v5}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmPictureProfileTempIdMap(Lcom/android/server/media/quality/MediaQualityService;)Lcom/android/server/media/quality/BiMap;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/android/server/media/quality/BiMap;->getKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    .line 529
    .local v5, "key":Ljava/lang/Long;
    if-eqz v5, :cond_0

    .line 530
    new-instance v6, Landroid/media/quality/PictureProfileHandle;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-direct {v6, v7, v8}, Landroid/media/quality/PictureProfileHandle;-><init>(J)V

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 535
    .end local v4    # "id":Ljava/lang/String;
    .end local v5    # "key":Ljava/lang/Long;
    :catchall_0
    move-exception v2

    goto :goto_2

    .line 532
    .restart local v4    # "id":Ljava/lang/String;
    .restart local v5    # "key":Ljava/lang/Long;
    :cond_0
    const/4 v6, 0x0

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 527
    .end local v4    # "id":Ljava/lang/String;
    .end local v5    # "key":Ljava/lang/Long;
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 535
    :cond_1
    monitor-exit v1

    .line 536
    return-object v0

    .line 535
    :goto_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public getPictureProfileHandleValue(Ljava/lang/String;I)J
    .locals 4
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 542
    iget-object v0, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {v0}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmPictureProfileLock(Lcom/android/server/media/quality/MediaQualityService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 543
    :try_start_0
    iget-object v1, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {v1}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmPictureProfileTempIdMap(Lcom/android/server/media/quality/MediaQualityService;)Lcom/android/server/media/quality/BiMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/media/quality/BiMap;->getKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 544
    .local v1, "value":Ljava/lang/Long;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    goto :goto_0

    .line 545
    .end local v1    # "value":Ljava/lang/Long;
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 544
    .restart local v1    # "value":Ljava/lang/Long;
    :cond_0
    const-wide/16 v2, -0x1

    :goto_0
    monitor-exit v0

    return-wide v2

    .line 545
    .end local v1    # "value":Ljava/lang/Long;
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getPictureProfilePackageNames(I)Ljava/util/List;
    .locals 5
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 506
    invoke-direct {p0}, Lcom/android/server/media/quality/MediaQualityService$BinderService;->hasGlobalPictureQualityServicePermission()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 507
    iget-object v0, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {v0}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmMqManagerNotifier(Lcom/android/server/media/quality/MediaQualityService;)Lcom/android/server/media/quality/MediaQualityService$MqManagerNotifier;

    move-result-object v0

    .line 509
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    .line 507
    const/4 v4, 0x1

    invoke-static {v0, v1, v4, v2, v3}, Lcom/android/server/media/quality/MediaQualityService$MqManagerNotifier;->-$$Nest$mnotifyOnPictureProfileError(Lcom/android/server/media/quality/MediaQualityService$MqManagerNotifier;Ljava/lang/String;III)V

    .line 511
    :cond_0
    const-string v0, "_package"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    .line 512
    .local v0, "column":[Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {v2}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmPictureProfileLock(Lcom/android/server/media/quality/MediaQualityService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 513
    :try_start_0
    iget-object v3, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {v3}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmMqDatabaseUtils(Lcom/android/server/media/quality/MediaQualityService;)Lcom/android/server/media/quality/MediaQualityService$MqDatabaseUtils;

    move-result-object v3

    .line 514
    invoke-static {v3, v0, v1, v1}, Lcom/android/server/media/quality/MediaQualityService$MqDatabaseUtils;->-$$Nest$mgetPictureProfilesBasedOnConditions(Lcom/android/server/media/quality/MediaQualityService$MqDatabaseUtils;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 515
    .local v1, "pictureProfiles":Ljava/util/List;, "Ljava/util/List<Landroid/media/quality/PictureProfile;>;"
    invoke-interface {v1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v3

    new-instance v4, Lcom/android/server/media/quality/MediaQualityService$BinderService$$ExternalSyntheticLambda4;

    invoke-direct {v4}, Lcom/android/server/media/quality/MediaQualityService$BinderService$$ExternalSyntheticLambda4;-><init>()V

    .line 516
    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v3

    .line 517
    invoke-interface {v3}, Ljava/util/stream/Stream;->distinct()Ljava/util/stream/Stream;

    move-result-object v3

    .line 518
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    monitor-exit v2

    .line 515
    return-object v3

    .line 519
    .end local v1    # "pictureProfiles":Ljava/util/List;, "Ljava/util/List<Landroid/media/quality/PictureProfile;>;"
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getPictureProfilesByPackage(Ljava/lang/String;ZI)Ljava/util/List;
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "includeParams"    # Z
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "ZI)",
            "Ljava/util/List<",
            "Landroid/media/quality/PictureProfile;",
            ">;"
        }
    .end annotation

    .line 438
    invoke-direct {p0}, Lcom/android/server/media/quality/MediaQualityService$BinderService;->hasGlobalPictureQualityServicePermission()Z

    move-result v0

    if-nez v0, :cond_0

    .line 439
    iget-object v0, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {v0}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmMqManagerNotifier(Lcom/android/server/media/quality/MediaQualityService;)Lcom/android/server/media/quality/MediaQualityService$MqManagerNotifier;

    move-result-object v0

    .line 441
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    .line 439
    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v0, v3, v4, v1, v2}, Lcom/android/server/media/quality/MediaQualityService$MqManagerNotifier;->-$$Nest$mnotifyOnPictureProfileError(Lcom/android/server/media/quality/MediaQualityService$MqManagerNotifier;Ljava/lang/String;III)V

    .line 444
    :cond_0
    iget-object v0, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {v0}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmPictureProfileLock(Lcom/android/server/media/quality/MediaQualityService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 445
    :try_start_0
    const-string v1, "_package = ?"

    .line 446
    .local v1, "selection":Ljava/lang/String;
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v2

    .line 447
    .local v2, "selectionArguments":[Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {v3}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmMqDatabaseUtils(Lcom/android/server/media/quality/MediaQualityService;)Lcom/android/server/media/quality/MediaQualityService$MqDatabaseUtils;

    move-result-object v3

    .line 448
    invoke-static {p2}, Lcom/android/server/media/quality/MediaQualityUtils;->getMediaProfileColumns(Z)[Ljava/lang/String;

    move-result-object v4

    .line 447
    invoke-static {v3, v4, v1, v2}, Lcom/android/server/media/quality/MediaQualityService$MqDatabaseUtils;->-$$Nest$mgetPictureProfilesBasedOnConditions(Lcom/android/server/media/quality/MediaQualityService$MqDatabaseUtils;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    monitor-exit v0

    return-object v3

    .line 450
    .end local v1    # "selection":Ljava/lang/String;
    .end local v2    # "selectionArguments":[Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getSoundProfile(ILjava/lang/String;ZI)Landroid/media/quality/SoundProfile;
    .locals 11
    .param p1, "type"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "includeParams"    # Z
    .param p4, "userId"    # I

    .line 734
    const-string v0, "_type = ? AND _name = ? AND _package = ?"

    .line 737
    .local v0, "selection":Ljava/lang/String;
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/server/media/quality/MediaQualityService$BinderService;->getPackageOfCallingUid()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v1, p2, v2}, [Ljava/lang/String;

    move-result-object v1

    .line 739
    .local v1, "selectionArguments":[Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {v2}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmSoundProfileLock(Lcom/android/server/media/quality/MediaQualityService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 741
    :try_start_0
    iget-object v3, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {v3}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmMqDatabaseUtils(Lcom/android/server/media/quality/MediaQualityService;)Lcom/android/server/media/quality/MediaQualityService$MqDatabaseUtils;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {v4}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmMediaQualityDbHelper(Lcom/android/server/media/quality/MediaQualityService;)Lcom/android/server/media/quality/MediaQualityDbHelper;

    const-string/jumbo v4, "sound_quality"

    .line 743
    invoke-static {p3}, Lcom/android/server/media/quality/MediaQualityUtils;->getMediaProfileColumns(Z)[Ljava/lang/String;

    move-result-object v5

    .line 741
    invoke-static {v3, v4, v5, v0, v1}, Lcom/android/server/media/quality/MediaQualityService$MqDatabaseUtils;->-$$Nest$mgetCursorAfterQuerying(Lcom/android/server/media/quality/MediaQualityService$MqDatabaseUtils;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 746
    .local v3, "cursor":Landroid/database/Cursor;
    :try_start_1
    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 747
    .local v4, "count":I
    const/4 v5, 0x0

    if-nez v4, :cond_0

    .line 748
    nop

    .line 760
    :try_start_2
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 748
    return-object v5

    .line 761
    .end local v3    # "cursor":Landroid/database/Cursor;
    .end local v4    # "count":I
    :catchall_0
    move-exception v3

    goto :goto_2

    .line 750
    .restart local v3    # "cursor":Landroid/database/Cursor;
    .restart local v4    # "count":I
    :cond_0
    const/4 v6, 0x1

    if-le v4, v6, :cond_1

    .line 751
    :try_start_3
    const-string v6, "MediaQualityService"

    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "%d entries found for name=%s in %s. Should only ever be 0 or 1."

    .line 753
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {v10}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmMediaQualityDbHelper(Lcom/android/server/media/quality/MediaQualityService;)Lcom/android/server/media/quality/MediaQualityDbHelper;

    const-string/jumbo v10, "sound_quality"

    filled-new-array {v8, v9, p2, v10}, [Ljava/lang/Object;

    move-result-object v8

    .line 751
    invoke-static {v7, v8}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 755
    nop

    .line 760
    :try_start_4
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 755
    return-object v5

    .line 740
    .end local v4    # "count":I
    :catchall_1
    move-exception v4

    goto :goto_0

    .line 757
    .restart local v4    # "count":I
    :cond_1
    :try_start_5
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    .line 758
    iget-object v5, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {v5}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmSoundProfileTempIdMap(Lcom/android/server/media/quality/MediaQualityService;)Lcom/android/server/media/quality/BiMap;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/android/server/media/quality/MediaQualityUtils;->convertCursorToSoundProfileWithTempId(Landroid/database/Cursor;Lcom/android/server/media/quality/BiMap;)Landroid/media/quality/SoundProfile;

    move-result-object v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 760
    :try_start_6
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 758
    return-object v5

    .line 740
    .end local v4    # "count":I
    :goto_0
    if-eqz v3, :cond_2

    :try_start_7
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception v5

    :try_start_8
    invoke-virtual {v4, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    nop

    .end local v0    # "selection":Ljava/lang/String;
    .end local v1    # "selectionArguments":[Ljava/lang/String;
    .end local p0    # "this":Lcom/android/server/media/quality/MediaQualityService$BinderService;
    .end local p1    # "type":I
    .end local p2    # "name":Ljava/lang/String;
    .end local p3    # "includeParams":Z
    .end local p4    # "userId":I
    throw v4

    .line 761
    .end local v3    # "cursor":Landroid/database/Cursor;
    .restart local v0    # "selection":Ljava/lang/String;
    .restart local v1    # "selectionArguments":[Ljava/lang/String;
    .restart local p0    # "this":Lcom/android/server/media/quality/MediaQualityService$BinderService;
    .restart local p1    # "type":I
    .restart local p2    # "name":Ljava/lang/String;
    .restart local p3    # "includeParams":Z
    .restart local p4    # "userId":I
    :goto_2
    monitor-exit v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    throw v3
.end method

.method public getSoundProfileAllowList(I)Ljava/util/List;
    .locals 5
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1087
    invoke-direct {p0}, Lcom/android/server/media/quality/MediaQualityService$BinderService;->hasGlobalSoundQualityServicePermission()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1088
    iget-object v0, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {v0}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmMqManagerNotifier(Lcom/android/server/media/quality/MediaQualityService;)Lcom/android/server/media/quality/MediaQualityService$MqManagerNotifier;

    move-result-object v0

    .line 1089
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    .line 1088
    const/4 v4, 0x1

    invoke-static {v0, v1, v4, v2, v3}, Lcom/android/server/media/quality/MediaQualityService$MqManagerNotifier;->-$$Nest$mnotifyOnSoundProfileError(Lcom/android/server/media/quality/MediaQualityService$MqManagerNotifier;Ljava/lang/String;III)V

    .line 1091
    :cond_0
    iget-object v0, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {v0}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmSoundProfileSharedPreference(Lcom/android/server/media/quality/MediaQualityService;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "allowlist"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1092
    .local v0, "allowlist":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 1093
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1094
    .local v1, "stringArray":[Ljava/lang/String;
    new-instance v2, Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v2

    .line 1096
    .end local v1    # "stringArray":[Ljava/lang/String;
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    return-object v1
.end method

.method public getSoundProfileHandle([Ljava/lang/String;I)Ljava/util/List;
    .locals 7
    .param p1, "ids"    # [Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Landroid/media/quality/SoundProfileHandle;",
            ">;"
        }
    .end annotation

    .line 608
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 609
    .local v0, "toReturn":Ljava/util/List;, "Ljava/util/List<Landroid/media/quality/SoundProfileHandle;>;"
    iget-object v1, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {v1}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmSoundProfileLock(Lcom/android/server/media/quality/MediaQualityService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 610
    :try_start_0
    array-length v2, p1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, p1, v3

    .line 611
    .local v4, "id":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {v5}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmSoundProfileTempIdMap(Lcom/android/server/media/quality/MediaQualityService;)Lcom/android/server/media/quality/BiMap;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/android/server/media/quality/BiMap;->getKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    .line 612
    .local v5, "key":Ljava/lang/Long;
    if-eqz v5, :cond_0

    .line 613
    sget-object v6, Lcom/android/server/media/quality/MediaQualityUtils;->SOUND_PROFILE_HANDLE_NONE:Landroid/media/quality/SoundProfileHandle;

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 618
    .end local v4    # "id":Ljava/lang/String;
    .end local v5    # "key":Ljava/lang/Long;
    :catchall_0
    move-exception v2

    goto :goto_2

    .line 615
    .restart local v4    # "id":Ljava/lang/String;
    .restart local v5    # "key":Ljava/lang/Long;
    :cond_0
    const/4 v6, 0x0

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 610
    .end local v4    # "id":Ljava/lang/String;
    .end local v5    # "key":Ljava/lang/Long;
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 618
    :cond_1
    monitor-exit v1

    .line 619
    return-object v0

    .line 618
    :goto_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public getSoundProfilePackageNames(I)Ljava/util/List;
    .locals 5
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 834
    invoke-direct {p0}, Lcom/android/server/media/quality/MediaQualityService$BinderService;->hasGlobalSoundQualityServicePermission()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 835
    iget-object v0, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {v0}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmMqManagerNotifier(Lcom/android/server/media/quality/MediaQualityService;)Lcom/android/server/media/quality/MediaQualityService$MqManagerNotifier;

    move-result-object v0

    .line 836
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    .line 835
    const/4 v4, 0x1

    invoke-static {v0, v1, v4, v2, v3}, Lcom/android/server/media/quality/MediaQualityService$MqManagerNotifier;->-$$Nest$mnotifyOnSoundProfileError(Lcom/android/server/media/quality/MediaQualityService$MqManagerNotifier;Ljava/lang/String;III)V

    .line 838
    :cond_0
    const-string v0, "_name"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    .line 840
    .local v0, "column":[Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {v2}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmSoundProfileLock(Lcom/android/server/media/quality/MediaQualityService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 841
    :try_start_0
    iget-object v3, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {v3}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmMqDatabaseUtils(Lcom/android/server/media/quality/MediaQualityService;)Lcom/android/server/media/quality/MediaQualityService$MqDatabaseUtils;

    move-result-object v3

    .line 842
    invoke-static {v3, v0, v1, v1}, Lcom/android/server/media/quality/MediaQualityService$MqDatabaseUtils;->-$$Nest$mgetSoundProfilesBasedOnConditions(Lcom/android/server/media/quality/MediaQualityService$MqDatabaseUtils;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 844
    .local v1, "soundProfiles":Ljava/util/List;, "Ljava/util/List<Landroid/media/quality/SoundProfile;>;"
    invoke-interface {v1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v3

    new-instance v4, Lcom/android/server/media/quality/MediaQualityService$BinderService$$ExternalSyntheticLambda7;

    invoke-direct {v4}, Lcom/android/server/media/quality/MediaQualityService$BinderService$$ExternalSyntheticLambda7;-><init>()V

    .line 845
    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v3

    .line 846
    invoke-interface {v3}, Ljava/util/stream/Stream;->distinct()Ljava/util/stream/Stream;

    move-result-object v3

    .line 847
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    monitor-exit v2

    .line 844
    return-object v3

    .line 848
    .end local v1    # "soundProfiles":Ljava/util/List;, "Ljava/util/List<Landroid/media/quality/SoundProfile;>;"
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getSoundProfilesByPackage(Ljava/lang/String;ZI)Ljava/util/List;
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "includeParams"    # Z
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "ZI)",
            "Ljava/util/List<",
            "Landroid/media/quality/SoundProfile;",
            ">;"
        }
    .end annotation

    .line 768
    invoke-direct {p0}, Lcom/android/server/media/quality/MediaQualityService$BinderService;->hasGlobalSoundQualityServicePermission()Z

    move-result v0

    if-nez v0, :cond_0

    .line 769
    iget-object v0, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {v0}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmMqManagerNotifier(Lcom/android/server/media/quality/MediaQualityService;)Lcom/android/server/media/quality/MediaQualityService$MqManagerNotifier;

    move-result-object v0

    .line 770
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    .line 769
    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v0, v3, v4, v1, v2}, Lcom/android/server/media/quality/MediaQualityService$MqManagerNotifier;->-$$Nest$mnotifyOnSoundProfileError(Lcom/android/server/media/quality/MediaQualityService$MqManagerNotifier;Ljava/lang/String;III)V

    .line 773
    :cond_0
    iget-object v0, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {v0}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmSoundProfileLock(Lcom/android/server/media/quality/MediaQualityService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 774
    :try_start_0
    const-string v1, "_package = ?"

    .line 775
    .local v1, "selection":Ljava/lang/String;
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v2

    .line 776
    .local v2, "selectionArguments":[Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {v3}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmMqDatabaseUtils(Lcom/android/server/media/quality/MediaQualityService;)Lcom/android/server/media/quality/MediaQualityService$MqDatabaseUtils;

    move-result-object v3

    .line 777
    invoke-static {p2}, Lcom/android/server/media/quality/MediaQualityUtils;->getMediaProfileColumns(Z)[Ljava/lang/String;

    move-result-object v4

    .line 776
    invoke-static {v3, v4, v1, v2}, Lcom/android/server/media/quality/MediaQualityService$MqDatabaseUtils;->-$$Nest$mgetSoundProfilesBasedOnConditions(Lcom/android/server/media/quality/MediaQualityService$MqDatabaseUtils;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    monitor-exit v0

    return-object v3

    .line 779
    .end local v1    # "selection":Ljava/lang/String;
    .end local v2    # "selectionArguments":[Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isAmbientBacklightEnabled(I)Z
    .locals 1
    .param p1, "userId"    # I

    .line 1243
    const/4 v0, 0x0

    return v0
.end method

.method public isAutoPictureQualityEnabled(I)Z
    .locals 4
    .param p1, "userId"    # I

    .line 1145
    iget-object v0, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {v0}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmPictureProfileLock(Lcom/android/server/media/quality/MediaQualityService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1147
    :try_start_0
    iget-object v1, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {v1}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmMediaQuality(Lcom/android/server/media/quality/MediaQualityService;)Landroid/hardware/tv/mediaquality/IMediaQuality;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1148
    iget-object v1, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {v1}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmMediaQuality(Lcom/android/server/media/quality/MediaQualityService;)Landroid/hardware/tv/mediaquality/IMediaQuality;

    move-result-object v1

    invoke-interface {v1}, Landroid/hardware/tv/mediaquality/IMediaQuality;->isAutoPqSupported()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1149
    iget-object v1, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {v1}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmMediaQuality(Lcom/android/server/media/quality/MediaQualityService;)Landroid/hardware/tv/mediaquality/IMediaQuality;

    move-result-object v1

    invoke-interface {v1}, Landroid/hardware/tv/mediaquality/IMediaQuality;->getAutoPqEnabled()Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    monitor-exit v0

    return v1

    .line 1156
    :catchall_0
    move-exception v1

    goto :goto_2

    .line 1152
    :catch_0
    move-exception v1

    goto :goto_0

    .line 1154
    :cond_0
    goto :goto_1

    .line 1152
    :goto_0
    nop

    .line 1153
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "MediaQualityService"

    const-string v3, "Failed to get auto picture quality"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1155
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_1
    monitor-exit v0

    const/4 v0, 0x0

    return v0

    .line 1156
    :goto_2
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public isAutoSoundQualityEnabled(I)Z
    .locals 4
    .param p1, "userId"    # I

    .line 1226
    iget-object v0, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {v0}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmSoundProfileLock(Lcom/android/server/media/quality/MediaQualityService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1228
    :try_start_0
    iget-object v1, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {v1}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmMediaQuality(Lcom/android/server/media/quality/MediaQualityService;)Landroid/hardware/tv/mediaquality/IMediaQuality;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1229
    iget-object v1, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {v1}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmMediaQuality(Lcom/android/server/media/quality/MediaQualityService;)Landroid/hardware/tv/mediaquality/IMediaQuality;

    move-result-object v1

    invoke-interface {v1}, Landroid/hardware/tv/mediaquality/IMediaQuality;->isAutoAqSupported()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1230
    iget-object v1, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {v1}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmMediaQuality(Lcom/android/server/media/quality/MediaQualityService;)Landroid/hardware/tv/mediaquality/IMediaQuality;

    move-result-object v1

    invoke-interface {v1}, Landroid/hardware/tv/mediaquality/IMediaQuality;->getAutoAqEnabled()Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    monitor-exit v0

    return v1

    .line 1237
    :catchall_0
    move-exception v1

    goto :goto_2

    .line 1233
    :catch_0
    move-exception v1

    goto :goto_0

    .line 1235
    :cond_0
    goto :goto_1

    .line 1233
    :goto_0
    nop

    .line 1234
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "MediaQualityService"

    const-string v3, "Failed to get auto sound quality"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1236
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_1
    monitor-exit v0

    const/4 v0, 0x0

    return v0

    .line 1237
    :goto_2
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public isSuperResolutionEnabled(I)Z
    .locals 4
    .param p1, "userId"    # I

    .line 1185
    iget-object v0, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {v0}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmPictureProfileLock(Lcom/android/server/media/quality/MediaQualityService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1187
    :try_start_0
    iget-object v1, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {v1}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmMediaQuality(Lcom/android/server/media/quality/MediaQualityService;)Landroid/hardware/tv/mediaquality/IMediaQuality;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1188
    iget-object v1, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {v1}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmMediaQuality(Lcom/android/server/media/quality/MediaQualityService;)Landroid/hardware/tv/mediaquality/IMediaQuality;

    move-result-object v1

    invoke-interface {v1}, Landroid/hardware/tv/mediaquality/IMediaQuality;->isAutoSrSupported()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1189
    iget-object v1, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {v1}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmMediaQuality(Lcom/android/server/media/quality/MediaQualityService;)Landroid/hardware/tv/mediaquality/IMediaQuality;

    move-result-object v1

    invoke-interface {v1}, Landroid/hardware/tv/mediaquality/IMediaQuality;->getAutoSrEnabled()Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    monitor-exit v0

    return v1

    .line 1196
    :catchall_0
    move-exception v1

    goto :goto_2

    .line 1192
    :catch_0
    move-exception v1

    goto :goto_0

    .line 1194
    :cond_0
    goto :goto_1

    .line 1192
    :goto_0
    nop

    .line 1193
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "MediaQualityService"

    const-string v3, "Failed to get super resolution"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1195
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_1
    monitor-exit v0

    const/4 v0, 0x0

    return v0

    .line 1196
    :goto_2
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public isSupported(I)Z
    .locals 1
    .param p1, "userId"    # I

    .line 1116
    const/4 v0, 0x0

    return v0
.end method

.method public notifyPictureProfileHandleSelection(JI)V
    .locals 4
    .param p1, "handle"    # J
    .param p3, "userId"    # I

    .line 564
    iget-object v0, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {v0}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmMqDatabaseUtils(Lcom/android/server/media/quality/MediaQualityService;)Lcom/android/server/media/quality/MediaQualityService$MqDatabaseUtils;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/media/quality/MediaQualityService$MqDatabaseUtils;->-$$Nest$mgetPictureProfile(Lcom/android/server/media/quality/MediaQualityService$MqDatabaseUtils;Ljava/lang/Long;)Landroid/media/quality/PictureProfile;

    move-result-object v0

    .line 565
    .local v0, "profile":Landroid/media/quality/PictureProfile;
    if-eqz v0, :cond_0

    .line 566
    iget-object v1, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {v1}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmHalNotifier(Lcom/android/server/media/quality/MediaQualityService;)Lcom/android/server/media/quality/MediaQualityService$HalNotifier;

    move-result-object v1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0}, Landroid/media/quality/PictureProfile;->getParameters()Landroid/os/PersistableBundle;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/android/server/media/quality/MediaQualityService$HalNotifier;->-$$Nest$mnotifyHalOnPictureProfileChange(Lcom/android/server/media/quality/MediaQualityService$HalNotifier;Ljava/lang/Long;Landroid/os/PersistableBundle;)V

    .line 568
    :cond_0
    return-void
.end method

.method public registerActiveProcessingPictureListener(Landroid/media/quality/IActiveProcessingPictureListener;)V
    .locals 7
    .param p1, "l"    # Landroid/media/quality/IActiveProcessingPictureListener;

    .line 905
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 906
    .local v0, "callingPid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 908
    .local v1, "callingUid":I
    iget-object v2, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$mgetOrCreateUserState(Lcom/android/server/media/quality/MediaQualityService;I)Lcom/android/server/media/quality/MediaQualityService$UserState;

    move-result-object v2

    .line 909
    .local v2, "userState":Lcom/android/server/media/quality/MediaQualityService$UserState;
    invoke-direct {p0}, Lcom/android/server/media/quality/MediaQualityService$BinderService;->getPackageOfCallingUid()Ljava/lang/String;

    move-result-object v3

    .line 910
    .local v3, "packageName":Ljava/lang/String;
    invoke-static {v2}, Lcom/android/server/media/quality/MediaQualityService$UserState;->-$$Nest$fgetmActiveProcessingPictureListenerMap(Lcom/android/server/media/quality/MediaQualityService$UserState;)Ljava/util/Map;

    move-result-object v4

    new-instance v5, Lcom/android/server/media/quality/MediaQualityService$ActiveProcessingPictureListenerInfo;

    iget-object v6, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-direct {v5, v6, v1, v0, v3}, Lcom/android/server/media/quality/MediaQualityService$ActiveProcessingPictureListenerInfo;-><init>(Lcom/android/server/media/quality/MediaQualityService;IILjava/lang/String;)V

    invoke-interface {v4, p1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 912
    return-void
.end method

.method public registerAmbientBacklightCallback(Landroid/media/quality/IAmbientBacklightCallback;)V
    .locals 6
    .param p1, "callback"    # Landroid/media/quality/IAmbientBacklightCallback;

    .line 920
    invoke-direct {p0}, Lcom/android/server/media/quality/MediaQualityService$BinderService;->hasReadColorZonesPermission()Z

    .line 924
    invoke-direct {p0}, Lcom/android/server/media/quality/MediaQualityService$BinderService;->getPackageOfCallingUid()Ljava/lang/String;

    move-result-object v0

    .line 926
    .local v0, "callingPackageName":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {v1}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmCallbackRecords(Lcom/android/server/media/quality/MediaQualityService;)Ljava/util/Map;

    move-result-object v1

    monitor-enter v1

    .line 927
    :try_start_0
    iget-object v2, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {v2}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmCallbackRecords(Lcom/android/server/media/quality/MediaQualityService;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/media/quality/MediaQualityService$AmbientBacklightCallbackRecord;

    .line 928
    .local v2, "record":Lcom/android/server/media/quality/MediaQualityService$AmbientBacklightCallbackRecord;
    if-eqz v2, :cond_1

    .line 929
    iget-object v3, v2, Lcom/android/server/media/quality/MediaQualityService$AmbientBacklightCallbackRecord;->mCallback:Landroid/media/quality/IAmbientBacklightCallback;

    invoke-interface {v3}, Landroid/media/quality/IAmbientBacklightCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-interface {p1}, Landroid/media/quality/IAmbientBacklightCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-interface {v3, v4}, Landroid/os/IBinder;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 930
    const-string v3, "MediaQualityService"

    const-string v4, "AmbientBacklight Callback already registered"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 931
    monitor-exit v1

    return-void

    .line 938
    .end local v2    # "record":Lcom/android/server/media/quality/MediaQualityService$AmbientBacklightCallbackRecord;
    :catchall_0
    move-exception v2

    goto :goto_0

    .line 933
    .restart local v2    # "record":Lcom/android/server/media/quality/MediaQualityService$AmbientBacklightCallbackRecord;
    :cond_0
    invoke-virtual {v2}, Lcom/android/server/media/quality/MediaQualityService$AmbientBacklightCallbackRecord;->release()V

    .line 934
    iget-object v3, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {v3}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmCallbackRecords(Lcom/android/server/media/quality/MediaQualityService;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 936
    :cond_1
    iget-object v3, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {v3}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmCallbackRecords(Lcom/android/server/media/quality/MediaQualityService;)Ljava/util/Map;

    move-result-object v3

    new-instance v4, Lcom/android/server/media/quality/MediaQualityService$AmbientBacklightCallbackRecord;

    iget-object v5, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-direct {v4, v5, v0, p1}, Lcom/android/server/media/quality/MediaQualityService$AmbientBacklightCallbackRecord;-><init>(Lcom/android/server/media/quality/MediaQualityService;Ljava/lang/String;Landroid/media/quality/IAmbientBacklightCallback;)V

    invoke-interface {v3, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 938
    nop

    .end local v2    # "record":Lcom/android/server/media/quality/MediaQualityService$AmbientBacklightCallbackRecord;
    monitor-exit v1

    .line 939
    return-void

    .line 938
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public registerPictureProfileCallback(Landroid/media/quality/IPictureProfileCallback;)V
    .locals 6
    .param p1, "callback"    # Landroid/media/quality/IPictureProfileCallback;

    .line 884
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 885
    .local v0, "callingPid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 887
    .local v1, "callingUid":I
    iget-object v2, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$mgetOrCreateUserState(Lcom/android/server/media/quality/MediaQualityService;I)Lcom/android/server/media/quality/MediaQualityService$UserState;

    move-result-object v2

    .line 888
    .local v2, "userState":Lcom/android/server/media/quality/MediaQualityService$UserState;
    invoke-static {v2}, Lcom/android/server/media/quality/MediaQualityService$UserState;->-$$Nest$fgetmPictureProfileCallbackPidUidMap(Lcom/android/server/media/quality/MediaQualityService$UserState;)Ljava/util/Map;

    move-result-object v3

    .line 889
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v4

    .line 888
    invoke-interface {v3, p1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 890
    return-void
.end method

.method public registerSoundProfileCallback(Landroid/media/quality/ISoundProfileCallback;)V
    .locals 6
    .param p1, "callback"    # Landroid/media/quality/ISoundProfileCallback;

    .line 894
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 895
    .local v0, "callingPid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 897
    .local v1, "callingUid":I
    iget-object v2, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$mgetOrCreateUserState(Lcom/android/server/media/quality/MediaQualityService;I)Lcom/android/server/media/quality/MediaQualityService$UserState;

    move-result-object v2

    .line 898
    .local v2, "userState":Lcom/android/server/media/quality/MediaQualityService$UserState;
    invoke-static {v2}, Lcom/android/server/media/quality/MediaQualityService$UserState;->-$$Nest$fgetmSoundProfileCallbackPidUidMap(Lcom/android/server/media/quality/MediaQualityService$UserState;)Ljava/util/Map;

    move-result-object v3

    .line 899
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v4

    .line 898
    invoke-interface {v3, p1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 900
    return-void
.end method

.method public removePictureProfile(Ljava/lang/String;I)V
    .locals 2
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 355
    iget-object v0, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {v0}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmHandler(Lcom/android/server/media/quality/MediaQualityService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/media/quality/MediaQualityService$BinderService$$ExternalSyntheticLambda12;

    invoke-direct {v1, p0, p1}, Lcom/android/server/media/quality/MediaQualityService$BinderService$$ExternalSyntheticLambda12;-><init>(Lcom/android/server/media/quality/MediaQualityService$BinderService;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 391
    return-void
.end method

.method public removeSoundProfile(Ljava/lang/String;I)V
    .locals 2
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 691
    iget-object v0, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {v0}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmHandler(Lcom/android/server/media/quality/MediaQualityService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/media/quality/MediaQualityService$BinderService$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1}, Lcom/android/server/media/quality/MediaQualityService$BinderService$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/media/quality/MediaQualityService$BinderService;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 721
    return-void
.end method

.method public setAmbientBacklightEnabled(ZI)V
    .locals 3
    .param p1, "enabled"    # Z
    .param p2, "userId"    # I

    .line 1006
    const-string v0, "MediaQualityService"

    invoke-direct {p0}, Lcom/android/server/media/quality/MediaQualityService$BinderService;->hasReadColorZonesPermission()Z

    .line 1010
    :try_start_0
    iget-object v1, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {v1}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmMediaQuality(Lcom/android/server/media/quality/MediaQualityService;)Landroid/hardware/tv/mediaquality/IMediaQuality;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1011
    iget-object v1, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {v1}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmMediaQuality(Lcom/android/server/media/quality/MediaQualityService;)Landroid/hardware/tv/mediaquality/IMediaQuality;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/hardware/tv/mediaquality/IMediaQuality;->setAmbientBacklightDetectionEnabled(Z)V
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1015
    :catch_0
    move-exception v1

    goto :goto_1

    .line 1013
    :catch_1
    move-exception v1

    goto :goto_2

    .line 1017
    :cond_0
    :goto_0
    goto :goto_3

    .line 1015
    :goto_1
    nop

    .line 1016
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "Failed to set ambient backlight enabled"

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 1013
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_2
    nop

    .line 1014
    .local v1, "e":Ljava/lang/UnsupportedOperationException;
    const-string v2, "The current device is not supported"

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v1    # "e":Ljava/lang/UnsupportedOperationException;
    goto :goto_0

    .line 1018
    :goto_3
    return-void
.end method

.method public setAmbientBacklightSettings(Landroid/media/quality/AmbientBacklightSettings;I)V
    .locals 3
    .param p1, "settings"    # Landroid/media/quality/AmbientBacklightSettings;
    .param p2, "userId"    # I

    .line 969
    invoke-direct {p0}, Lcom/android/server/media/quality/MediaQualityService$BinderService;->hasReadColorZonesPermission()Z

    .line 974
    :try_start_0
    iget-object v0, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {v0}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmMediaQuality(Lcom/android/server/media/quality/MediaQualityService;)Landroid/hardware/tv/mediaquality/IMediaQuality;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 975
    new-instance v0, Landroid/hardware/tv/mediaquality/AmbientBacklightSettings;

    invoke-direct {v0}, Landroid/hardware/tv/mediaquality/AmbientBacklightSettings;-><init>()V

    .line 977
    .local v0, "halSettings":Landroid/hardware/tv/mediaquality/AmbientBacklightSettings;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    iput v1, v0, Landroid/hardware/tv/mediaquality/AmbientBacklightSettings;->uid:I

    .line 978
    invoke-virtual {p1}, Landroid/media/quality/AmbientBacklightSettings;->getSource()I

    move-result v1

    int-to-byte v1, v1

    iput-byte v1, v0, Landroid/hardware/tv/mediaquality/AmbientBacklightSettings;->source:B

    .line 979
    invoke-virtual {p1}, Landroid/media/quality/AmbientBacklightSettings;->getMaxFps()I

    move-result v1

    iput v1, v0, Landroid/hardware/tv/mediaquality/AmbientBacklightSettings;->maxFramerate:I

    .line 980
    invoke-virtual {p1}, Landroid/media/quality/AmbientBacklightSettings;->getColorFormat()I

    move-result v1

    int-to-byte v1, v1

    iput v1, v0, Landroid/hardware/tv/mediaquality/AmbientBacklightSettings;->colorFormat:I

    .line 981
    invoke-virtual {p1}, Landroid/media/quality/AmbientBacklightSettings;->getHorizontalZonesCount()I

    move-result v1

    iput v1, v0, Landroid/hardware/tv/mediaquality/AmbientBacklightSettings;->hZonesNumber:I

    .line 982
    invoke-virtual {p1}, Landroid/media/quality/AmbientBacklightSettings;->getVerticalZonesCount()I

    move-result v1

    iput v1, v0, Landroid/hardware/tv/mediaquality/AmbientBacklightSettings;->vZonesNumber:I

    .line 983
    invoke-virtual {p1}, Landroid/media/quality/AmbientBacklightSettings;->isLetterboxOmitted()Z

    move-result v1

    iput-boolean v1, v0, Landroid/hardware/tv/mediaquality/AmbientBacklightSettings;->hasLetterbox:Z

    .line 984
    invoke-virtual {p1}, Landroid/media/quality/AmbientBacklightSettings;->getThreshold()I

    move-result v1

    iput v1, v0, Landroid/hardware/tv/mediaquality/AmbientBacklightSettings;->colorThreshold:I

    .line 986
    iget-object v1, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {v1}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmMediaQuality(Lcom/android/server/media/quality/MediaQualityService;)Landroid/hardware/tv/mediaquality/IMediaQuality;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/hardware/tv/mediaquality/IMediaQuality;->setAmbientBacklightDetector(Landroid/hardware/tv/mediaquality/AmbientBacklightSettings;)V

    .line 988
    iget-object v1, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {v1}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmHalAmbientBacklightCallback(Lcom/android/server/media/quality/MediaQualityService;)Lcom/android/server/media/quality/MediaQualityService$HalAmbientBacklightCallback;

    move-result-object v1

    .line 989
    invoke-direct {p0}, Lcom/android/server/media/quality/MediaQualityService$BinderService;->getPackageOfCallingUid()Ljava/lang/String;

    move-result-object v2

    .line 988
    invoke-virtual {v1, v2}, Lcom/android/server/media/quality/MediaQualityService$HalAmbientBacklightCallback;->setAmbientBacklightClientPackageName(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 995
    .end local v0    # "halSettings":Landroid/hardware/tv/mediaquality/AmbientBacklightSettings;
    :catch_0
    move-exception v0

    goto :goto_1

    .line 997
    :cond_0
    :goto_0
    goto :goto_2

    .line 995
    :goto_1
    nop

    .line 996
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MediaQualityService"

    const-string v2, "Failed to set ambient backlight settings"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 998
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_2
    return-void
.end method

.method public setAutoPictureQualityEnabled(ZI)V
    .locals 2
    .param p1, "enabled"    # Z
    .param p2, "userId"    # I

    .line 1122
    iget-object v0, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {v0}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmHandler(Lcom/android/server/media/quality/MediaQualityService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/media/quality/MediaQualityService$BinderService$$ExternalSyntheticLambda10;

    invoke-direct {v1, p0, p1}, Lcom/android/server/media/quality/MediaQualityService$BinderService$$ExternalSyntheticLambda10;-><init>(Lcom/android/server/media/quality/MediaQualityService$BinderService;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1140
    return-void
.end method

.method public setAutoSoundQualityEnabled(ZI)V
    .locals 2
    .param p1, "enabled"    # Z
    .param p2, "userId"    # I

    .line 1202
    iget-object v0, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {v0}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmHandler(Lcom/android/server/media/quality/MediaQualityService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/media/quality/MediaQualityService$BinderService$$ExternalSyntheticLambda9;

    invoke-direct {v1, p0, p1}, Lcom/android/server/media/quality/MediaQualityService$BinderService$$ExternalSyntheticLambda9;-><init>(Lcom/android/server/media/quality/MediaQualityService$BinderService;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1221
    return-void
.end method

.method public setDefaultPictureProfile(Ljava/lang/String;I)Z
    .locals 9
    .param p1, "profileId"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 466
    invoke-direct {p0}, Lcom/android/server/media/quality/MediaQualityService$BinderService;->hasGlobalPictureQualityServicePermission()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 467
    iget-object v0, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {v0}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmMqManagerNotifier(Lcom/android/server/media/quality/MediaQualityService;)Lcom/android/server/media/quality/MediaQualityService$MqManagerNotifier;

    move-result-object v0

    .line 469
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    .line 467
    invoke-static {v0, p1, v1, v2, v3}, Lcom/android/server/media/quality/MediaQualityService$MqManagerNotifier;->-$$Nest$mnotifyOnPictureProfileError(Lcom/android/server/media/quality/MediaQualityService$MqManagerNotifier;Ljava/lang/String;III)V

    .line 472
    :cond_0
    iget-object v0, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {v0}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmPictureProfileTempIdMap(Lcom/android/server/media/quality/MediaQualityService;)Lcom/android/server/media/quality/BiMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/media/quality/BiMap;->getKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 473
    .local v0, "longId":Ljava/lang/Long;
    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 474
    return v2

    .line 476
    :cond_1
    iget-object v3, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {v3}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmMqDatabaseUtils(Lcom/android/server/media/quality/MediaQualityService;)Lcom/android/server/media/quality/MediaQualityService$MqDatabaseUtils;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/android/server/media/quality/MediaQualityService$MqDatabaseUtils;->-$$Nest$mgetPictureProfile(Lcom/android/server/media/quality/MediaQualityService$MqDatabaseUtils;Ljava/lang/Long;)Landroid/media/quality/PictureProfile;

    move-result-object v3

    .line 477
    .local v3, "pictureProfile":Landroid/media/quality/PictureProfile;
    invoke-virtual {v3}, Landroid/media/quality/PictureProfile;->getParameters()Landroid/os/PersistableBundle;

    move-result-object v4

    .line 480
    .local v4, "params":Landroid/os/PersistableBundle;
    :try_start_0
    iget-object v5, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {v5}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmMediaQuality(Lcom/android/server/media/quality/MediaQualityService;)Landroid/hardware/tv/mediaquality/IMediaQuality;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 481
    new-instance v5, Landroid/hardware/tv/mediaquality/PictureParameters;

    invoke-direct {v5}, Landroid/hardware/tv/mediaquality/PictureParameters;-><init>()V

    .line 484
    .local v5, "pp":Landroid/hardware/tv/mediaquality/PictureParameters;
    const-string v6, "_id"

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-virtual {v4, v6, v7, v8}, Landroid/os/PersistableBundle;->putLong(Ljava/lang/String;J)V

    .line 485
    nop

    .line 486
    invoke-static {v4}, Lcom/android/server/media/quality/MediaQualityUtils;->convertPersistableBundleToPictureParameterList(Landroid/os/PersistableBundle;)[Landroid/hardware/tv/mediaquality/PictureParameter;

    move-result-object v6

    .line 488
    .local v6, "pictureParameters":[Landroid/hardware/tv/mediaquality/PictureParameter;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v7

    .line 489
    .local v7, "parcel":Landroid/os/Parcel;
    iget-object v8, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {v8, v5, v7, v4}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$msetVendorPictureParameters(Lcom/android/server/media/quality/MediaQualityService;Landroid/hardware/tv/mediaquality/PictureParameters;Landroid/os/Parcel;Landroid/os/PersistableBundle;)V

    .line 491
    iput-object v6, v5, Landroid/hardware/tv/mediaquality/PictureParameters;->pictureParameters:[Landroid/hardware/tv/mediaquality/PictureParameter;

    .line 493
    iget-object v8, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {v8}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmMediaQuality(Lcom/android/server/media/quality/MediaQualityService;)Landroid/hardware/tv/mediaquality/IMediaQuality;

    move-result-object v8

    invoke-interface {v8, v5}, Landroid/hardware/tv/mediaquality/IMediaQuality;->sendDefaultPictureParameters(Landroid/hardware/tv/mediaquality/PictureParameters;)V

    .line 494
    invoke-virtual {v7}, Landroid/os/Parcel;->recycle()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 495
    return v1

    .line 497
    .end local v5    # "pp":Landroid/hardware/tv/mediaquality/PictureParameters;
    .end local v6    # "pictureParameters":[Landroid/hardware/tv/mediaquality/PictureParameter;
    .end local v7    # "parcel":Landroid/os/Parcel;
    :catch_0
    move-exception v1

    goto :goto_0

    .line 499
    :cond_2
    goto :goto_1

    .line 497
    :goto_0
    nop

    .line 498
    .local v1, "e":Landroid/os/RemoteException;
    const-string v5, "MediaQualityService"

    const-string v6, "Failed to set default picture profile"

    invoke-static {v5, v6, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 500
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_1
    return v2
.end method

.method public setDefaultSoundProfile(Ljava/lang/String;I)Z
    .locals 9
    .param p1, "profileId"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 795
    invoke-direct {p0}, Lcom/android/server/media/quality/MediaQualityService$BinderService;->hasGlobalSoundQualityServicePermission()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 796
    iget-object v0, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {v0}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmMqManagerNotifier(Lcom/android/server/media/quality/MediaQualityService;)Lcom/android/server/media/quality/MediaQualityService$MqManagerNotifier;

    move-result-object v0

    .line 798
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    .line 796
    invoke-static {v0, p1, v1, v2, v3}, Lcom/android/server/media/quality/MediaQualityService$MqManagerNotifier;->-$$Nest$mnotifyOnSoundProfileError(Lcom/android/server/media/quality/MediaQualityService$MqManagerNotifier;Ljava/lang/String;III)V

    .line 801
    :cond_0
    iget-object v0, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {v0}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmSoundProfileTempIdMap(Lcom/android/server/media/quality/MediaQualityService;)Lcom/android/server/media/quality/BiMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/media/quality/BiMap;->getKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 802
    .local v0, "longId":Ljava/lang/Long;
    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 803
    return v2

    .line 806
    :cond_1
    iget-object v3, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {v3}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmMqDatabaseUtils(Lcom/android/server/media/quality/MediaQualityService;)Lcom/android/server/media/quality/MediaQualityService$MqDatabaseUtils;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/android/server/media/quality/MediaQualityService$MqDatabaseUtils;->-$$Nest$mgetSoundProfile(Lcom/android/server/media/quality/MediaQualityService$MqDatabaseUtils;Ljava/lang/Long;)Landroid/media/quality/SoundProfile;

    move-result-object v3

    .line 807
    .local v3, "soundProfile":Landroid/media/quality/SoundProfile;
    invoke-virtual {v3}, Landroid/media/quality/SoundProfile;->getParameters()Landroid/os/PersistableBundle;

    move-result-object v4

    .line 810
    .local v4, "params":Landroid/os/PersistableBundle;
    :try_start_0
    iget-object v5, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {v5}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmMediaQuality(Lcom/android/server/media/quality/MediaQualityService;)Landroid/hardware/tv/mediaquality/IMediaQuality;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 811
    new-instance v5, Landroid/hardware/tv/mediaquality/SoundParameters;

    invoke-direct {v5}, Landroid/hardware/tv/mediaquality/SoundParameters;-><init>()V

    .line 814
    .local v5, "sp":Landroid/hardware/tv/mediaquality/SoundParameters;
    const-string v6, "_id"

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-virtual {v4, v6, v7, v8}, Landroid/os/PersistableBundle;->putLong(Ljava/lang/String;J)V

    .line 815
    nop

    .line 816
    invoke-static {v4}, Lcom/android/server/media/quality/MediaQualityUtils;->convertPersistableBundleToSoundParameterList(Landroid/os/PersistableBundle;)[Landroid/hardware/tv/mediaquality/SoundParameter;

    move-result-object v6

    .line 818
    .local v6, "soundParameters":[Landroid/hardware/tv/mediaquality/SoundParameter;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v7

    .line 819
    .local v7, "parcel":Landroid/os/Parcel;
    iget-object v8, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {v8, v5, v7, v4}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$msetVendorSoundParameters(Lcom/android/server/media/quality/MediaQualityService;Landroid/hardware/tv/mediaquality/SoundParameters;Landroid/os/Parcel;Landroid/os/PersistableBundle;)V

    .line 820
    iput-object v6, v5, Landroid/hardware/tv/mediaquality/SoundParameters;->soundParameters:[Landroid/hardware/tv/mediaquality/SoundParameter;

    .line 822
    iget-object v8, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {v8}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmMediaQuality(Lcom/android/server/media/quality/MediaQualityService;)Landroid/hardware/tv/mediaquality/IMediaQuality;

    move-result-object v8

    invoke-interface {v8, v5}, Landroid/hardware/tv/mediaquality/IMediaQuality;->sendDefaultSoundParameters(Landroid/hardware/tv/mediaquality/SoundParameters;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 823
    return v1

    .line 825
    .end local v5    # "sp":Landroid/hardware/tv/mediaquality/SoundParameters;
    .end local v6    # "soundParameters":[Landroid/hardware/tv/mediaquality/SoundParameter;
    .end local v7    # "parcel":Landroid/os/Parcel;
    :catch_0
    move-exception v1

    goto :goto_0

    .line 827
    :cond_2
    goto :goto_1

    .line 825
    :goto_0
    nop

    .line 826
    .local v1, "e":Landroid/os/RemoteException;
    const-string v5, "MediaQualityService"

    const-string v6, "Failed to set default sound profile"

    invoke-static {v5, v6, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 828
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_1
    return v2
.end method

.method public setPictureProfileAllowList(Ljava/util/List;I)V
    .locals 2
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .line 1072
    .local p1, "packages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {v0}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmHandler(Lcom/android/server/media/quality/MediaQualityService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/media/quality/MediaQualityService$BinderService$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/android/server/media/quality/MediaQualityService$BinderService$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/media/quality/MediaQualityService$BinderService;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1082
    return-void
.end method

.method public setSoundProfileAllowList(Ljava/util/List;I)V
    .locals 2
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .line 1102
    .local p1, "packages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {v0}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmHandler(Lcom/android/server/media/quality/MediaQualityService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/media/quality/MediaQualityService$BinderService$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1}, Lcom/android/server/media/quality/MediaQualityService$BinderService$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/media/quality/MediaQualityService$BinderService;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1112
    return-void
.end method

.method public setSuperResolutionEnabled(ZI)V
    .locals 2
    .param p1, "enabled"    # Z
    .param p2, "userId"    # I

    .line 1162
    iget-object v0, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {v0}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmHandler(Lcom/android/server/media/quality/MediaQualityService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/media/quality/MediaQualityService$BinderService$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0, p1}, Lcom/android/server/media/quality/MediaQualityService$BinderService$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/media/quality/MediaQualityService$BinderService;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1180
    return-void
.end method

.method public unregisterAmbientBacklightCallback(Landroid/media/quality/IAmbientBacklightCallback;)V
    .locals 5
    .param p1, "callback"    # Landroid/media/quality/IAmbientBacklightCallback;

    .line 946
    invoke-direct {p0}, Lcom/android/server/media/quality/MediaQualityService$BinderService;->hasReadColorZonesPermission()Z

    .line 950
    iget-object v0, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {v0}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmCallbackRecords(Lcom/android/server/media/quality/MediaQualityService;)Ljava/util/Map;

    move-result-object v0

    monitor-enter v0

    .line 951
    :try_start_0
    iget-object v1, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {v1}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmCallbackRecords(Lcom/android/server/media/quality/MediaQualityService;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/media/quality/MediaQualityService$AmbientBacklightCallbackRecord;

    .line 952
    .local v2, "record":Lcom/android/server/media/quality/MediaQualityService$AmbientBacklightCallbackRecord;
    iget-object v3, v2, Lcom/android/server/media/quality/MediaQualityService$AmbientBacklightCallbackRecord;->mCallback:Landroid/media/quality/IAmbientBacklightCallback;

    invoke-interface {v3}, Landroid/media/quality/IAmbientBacklightCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-interface {p1}, Landroid/media/quality/IAmbientBacklightCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-interface {v3, v4}, Landroid/os/IBinder;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 953
    invoke-virtual {v2}, Lcom/android/server/media/quality/MediaQualityService$AmbientBacklightCallbackRecord;->release()V

    .line 954
    iget-object v1, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {v1}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmCallbackRecords(Lcom/android/server/media/quality/MediaQualityService;)Ljava/util/Map;

    move-result-object v1

    iget-object v3, v2, Lcom/android/server/media/quality/MediaQualityService$AmbientBacklightCallbackRecord;->mPackageName:Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 955
    monitor-exit v0

    return-void

    .line 958
    .end local v2    # "record":Lcom/android/server/media/quality/MediaQualityService$AmbientBacklightCallbackRecord;
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 952
    .restart local v2    # "record":Lcom/android/server/media/quality/MediaQualityService$AmbientBacklightCallbackRecord;
    :cond_0
    nop

    .line 957
    .end local v2    # "record":Lcom/android/server/media/quality/MediaQualityService$AmbientBacklightCallbackRecord;
    goto :goto_0

    .line 958
    :cond_1
    monitor-exit v0

    .line 959
    return-void

    .line 958
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public updatePictureProfile(Ljava/lang/String;Landroid/media/quality/PictureProfile;I)V
    .locals 2
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "pp"    # Landroid/media/quality/PictureProfile;
    .param p3, "userId"    # I

    .line 320
    iget-object v0, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {v0}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmHandler(Lcom/android/server/media/quality/MediaQualityService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/media/quality/MediaQualityService$BinderService$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/media/quality/MediaQualityService$BinderService$$ExternalSyntheticLambda8;-><init>(Lcom/android/server/media/quality/MediaQualityService$BinderService;Ljava/lang/String;Landroid/media/quality/PictureProfile;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 342
    return-void
.end method

.method public updateSoundProfile(Ljava/lang/String;Landroid/media/quality/SoundProfile;I)V
    .locals 2
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "sp"    # Landroid/media/quality/SoundProfile;
    .param p3, "userId"    # I

    .line 659
    iget-object v0, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {v0}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmHandler(Lcom/android/server/media/quality/MediaQualityService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/media/quality/MediaQualityService$BinderService$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/media/quality/MediaQualityService$BinderService$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/media/quality/MediaQualityService$BinderService;Ljava/lang/String;Landroid/media/quality/SoundProfile;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 678
    return-void
.end method
