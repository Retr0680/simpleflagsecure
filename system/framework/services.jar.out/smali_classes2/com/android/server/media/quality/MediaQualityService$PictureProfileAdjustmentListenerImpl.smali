.class final Lcom/android/server/media/quality/MediaQualityService$PictureProfileAdjustmentListenerImpl;
.super Landroid/hardware/tv/mediaquality/IPictureProfileAdjustmentListener$Stub;
.source "MediaQualityService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/media/quality/MediaQualityService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PictureProfileAdjustmentListenerImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/media/quality/MediaQualityService;


# direct methods
.method public static synthetic $r8$lambda$o1iLVm9eg4-NqWRAXxTtdPS5gk4(Lcom/android/server/media/quality/MediaQualityService$PictureProfileAdjustmentListenerImpl;JB)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/media/quality/MediaQualityService$PictureProfileAdjustmentListenerImpl;->lambda$onStreamStatusChanged$0(JB)V

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

    .line 1946
    iput-object p1, p0, Lcom/android/server/media/quality/MediaQualityService$PictureProfileAdjustmentListenerImpl;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-direct {p0}, Landroid/hardware/tv/mediaquality/IPictureProfileAdjustmentListener$Stub;-><init>()V

    .line 1948
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/media/quality/MediaQualityService;Lcom/android/server/media/quality/MediaQualityService-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/media/quality/MediaQualityService$PictureProfileAdjustmentListenerImpl;-><init>(Lcom/android/server/media/quality/MediaQualityService;)V

    return-void
.end method

.method private isHdr(Ljava/lang/String;)Z
    .locals 1
    .param p1, "profileStatus"    # Ljava/lang/String;

    .line 1933
    const-string v0, "HDR"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private isSdr(Ljava/lang/String;)Z
    .locals 1
    .param p1, "profileStatus"    # Ljava/lang/String;

    .line 1928
    const-string v0, "SDR"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1929
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 1928
    :goto_1
    return v0
.end method

.method private synthetic lambda$onStreamStatusChanged$0(JB)V
    .locals 12
    .param p1, "profileHandle"    # J
    .param p3, "status"    # B

    .line 1827
    iget-object v0, p0, Lcom/android/server/media/quality/MediaQualityService$PictureProfileAdjustmentListenerImpl;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {v0}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmPictureProfileLock(Lcom/android/server/media/quality/MediaQualityService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1829
    :try_start_0
    iget-object v1, p0, Lcom/android/server/media/quality/MediaQualityService$PictureProfileAdjustmentListenerImpl;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {v1}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmHandleToPictureProfile(Lcom/android/server/media/quality/MediaQualityService;)Ljava/util/Map;

    move-result-object v1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/quality/PictureProfile;

    .line 1830
    .local v1, "previous":Landroid/media/quality/PictureProfile;
    if-nez v1, :cond_0

    .line 1832
    iget-object v2, p0, Lcom/android/server/media/quality/MediaQualityService$PictureProfileAdjustmentListenerImpl;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {v2}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmMqDatabaseUtils(Lcom/android/server/media/quality/MediaQualityService;)Lcom/android/server/media/quality/MediaQualityService$MqDatabaseUtils;

    move-result-object v2

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/media/quality/MediaQualityService$MqDatabaseUtils;->-$$Nest$mgetPictureProfile(Lcom/android/server/media/quality/MediaQualityService$MqDatabaseUtils;Ljava/lang/Long;)Landroid/media/quality/PictureProfile;

    move-result-object v2

    move-object v1, v2

    .line 1833
    if-nez v1, :cond_0

    .line 1834
    monitor-exit v0

    return-void

    .line 1908
    .end local v1    # "previous":Landroid/media/quality/PictureProfile;
    :catchall_0
    move-exception v1

    goto/16 :goto_1

    .line 1837
    .restart local v1    # "previous":Landroid/media/quality/PictureProfile;
    :cond_0
    invoke-virtual {v1}, Landroid/media/quality/PictureProfile;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/media/quality/MediaQualityService$PictureProfileAdjustmentListenerImpl;->splitNameAndStatus(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 1838
    .local v2, "arr":[Ljava/lang/String;
    const/4 v3, 0x0

    aget-object v4, v2, v3

    .line 1839
    .local v4, "profileName":Ljava/lang/String;
    const/4 v5, 0x1

    aget-object v6, v2, v5

    .line 1840
    .local v6, "profileStatus":Ljava/lang/String;
    const/4 v7, 0x2

    if-ne p3, v7, :cond_3

    .line 1841
    invoke-direct {p0, v6}, Lcom/android/server/media/quality/MediaQualityService$PictureProfileAdjustmentListenerImpl;->isHdr(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1843
    monitor-exit v0

    return-void

    .line 1845
    :cond_1
    invoke-direct {p0, v6}, Lcom/android/server/media/quality/MediaQualityService$PictureProfileAdjustmentListenerImpl;->isSdr(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 1847
    const-string v7, "_type = ? AND _package = ? AND _name = ?"

    .line 1850
    .local v7, "selection":Ljava/lang/String;
    nop

    .line 1851
    invoke-virtual {v1}, Landroid/media/quality/PictureProfile;->getProfileType()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    .line 1852
    invoke-virtual {v1}, Landroid/media/quality/PictureProfile;->getPackageName()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "HDR"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    filled-new-array {v8, v9, v10}, [Ljava/lang/String;

    move-result-object v8

    .line 1855
    .local v8, "selectionArguments":[Ljava/lang/String;
    iget-object v9, p0, Lcom/android/server/media/quality/MediaQualityService$PictureProfileAdjustmentListenerImpl;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {v9}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmMqDatabaseUtils(Lcom/android/server/media/quality/MediaQualityService;)Lcom/android/server/media/quality/MediaQualityService$MqDatabaseUtils;

    move-result-object v9

    .line 1857
    invoke-static {v5}, Lcom/android/server/media/quality/MediaQualityUtils;->getMediaProfileColumns(Z)[Ljava/lang/String;

    move-result-object v5

    .line 1856
    invoke-static {v9, v5, v7, v8}, Lcom/android/server/media/quality/MediaQualityService$MqDatabaseUtils;->-$$Nest$mgetPictureProfilesBasedOnConditions(Lcom/android/server/media/quality/MediaQualityService$MqDatabaseUtils;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    .line 1860
    .local v5, "list":Ljava/util/List;, "Ljava/util/List<Landroid/media/quality/PictureProfile;>;"
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 1862
    monitor-exit v0

    return-void

    .line 1864
    :cond_2
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/quality/PictureProfile;

    .line 1865
    .local v3, "current":Landroid/media/quality/PictureProfile;
    iget-object v9, p0, Lcom/android/server/media/quality/MediaQualityService$PictureProfileAdjustmentListenerImpl;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {v9}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmHandleToPictureProfile(Lcom/android/server/media/quality/MediaQualityService;)Ljava/util/Map;

    move-result-object v9

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-interface {v9, v10, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1866
    iget-object v9, p0, Lcom/android/server/media/quality/MediaQualityService$PictureProfileAdjustmentListenerImpl;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {v9}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmCurrentPictureHandleToOriginal(Lcom/android/server/media/quality/MediaQualityService;)Lcom/android/server/media/quality/BiMap;

    move-result-object v9

    .line 1867
    invoke-virtual {v3}, Landroid/media/quality/PictureProfile;->getHandle()Landroid/media/quality/PictureProfileHandle;

    move-result-object v10

    invoke-virtual {v10}, Landroid/media/quality/PictureProfileHandle;->getId()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    .line 1866
    invoke-virtual {v9, v10, v11}, Lcom/android/server/media/quality/BiMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1869
    iget-object v9, p0, Lcom/android/server/media/quality/MediaQualityService$PictureProfileAdjustmentListenerImpl;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {v9}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmHalNotifier(Lcom/android/server/media/quality/MediaQualityService;)Lcom/android/server/media/quality/MediaQualityService$HalNotifier;

    move-result-object v9

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    .line 1870
    invoke-virtual {v3}, Landroid/media/quality/PictureProfile;->getParameters()Landroid/os/PersistableBundle;

    move-result-object v11

    .line 1869
    invoke-static {v9, v10, v11}, Lcom/android/server/media/quality/MediaQualityService$HalNotifier;->-$$Nest$mnotifyHalOnPictureProfileChange(Lcom/android/server/media/quality/MediaQualityService$HalNotifier;Ljava/lang/Long;Landroid/os/PersistableBundle;)V

    .line 1872
    .end local v3    # "current":Landroid/media/quality/PictureProfile;
    .end local v5    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/media/quality/PictureProfile;>;"
    .end local v7    # "selection":Ljava/lang/String;
    .end local v8    # "selectionArguments":[Ljava/lang/String;
    goto/16 :goto_0

    .line 1873
    :cond_3
    if-nez p3, :cond_6

    .line 1874
    invoke-direct {p0, v6}, Lcom/android/server/media/quality/MediaQualityService$PictureProfileAdjustmentListenerImpl;->isSdr(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 1876
    monitor-exit v0

    return-void

    .line 1878
    :cond_4
    invoke-direct {p0, v6}, Lcom/android/server/media/quality/MediaQualityService$PictureProfileAdjustmentListenerImpl;->isHdr(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 1880
    const-string v7, "_type = ? AND _package = ? AND (_name = ? OR _name = ?)"

    .line 1884
    .restart local v7    # "selection":Ljava/lang/String;
    nop

    .line 1885
    invoke-virtual {v1}, Landroid/media/quality/PictureProfile;->getProfileType()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    .line 1886
    invoke-virtual {v1}, Landroid/media/quality/PictureProfile;->getPackageName()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "SDR"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    filled-new-array {v8, v9, v4, v10}, [Ljava/lang/String;

    move-result-object v8

    .line 1890
    .restart local v8    # "selectionArguments":[Ljava/lang/String;
    iget-object v9, p0, Lcom/android/server/media/quality/MediaQualityService$PictureProfileAdjustmentListenerImpl;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {v9}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmMqDatabaseUtils(Lcom/android/server/media/quality/MediaQualityService;)Lcom/android/server/media/quality/MediaQualityService$MqDatabaseUtils;

    move-result-object v9

    .line 1892
    invoke-static {v5}, Lcom/android/server/media/quality/MediaQualityUtils;->getMediaProfileColumns(Z)[Ljava/lang/String;

    move-result-object v5

    .line 1891
    invoke-static {v9, v5, v7, v8}, Lcom/android/server/media/quality/MediaQualityService$MqDatabaseUtils;->-$$Nest$mgetPictureProfilesBasedOnConditions(Lcom/android/server/media/quality/MediaQualityService$MqDatabaseUtils;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    .line 1895
    .restart local v5    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/media/quality/PictureProfile;>;"
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 1897
    monitor-exit v0

    return-void

    .line 1899
    :cond_5
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/quality/PictureProfile;

    .line 1900
    .restart local v3    # "current":Landroid/media/quality/PictureProfile;
    iget-object v9, p0, Lcom/android/server/media/quality/MediaQualityService$PictureProfileAdjustmentListenerImpl;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {v9}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmHandleToPictureProfile(Lcom/android/server/media/quality/MediaQualityService;)Ljava/util/Map;

    move-result-object v9

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-interface {v9, v10, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1901
    iget-object v9, p0, Lcom/android/server/media/quality/MediaQualityService$PictureProfileAdjustmentListenerImpl;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {v9}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmCurrentPictureHandleToOriginal(Lcom/android/server/media/quality/MediaQualityService;)Lcom/android/server/media/quality/BiMap;

    move-result-object v9

    .line 1902
    invoke-virtual {v3}, Landroid/media/quality/PictureProfile;->getHandle()Landroid/media/quality/PictureProfileHandle;

    move-result-object v10

    invoke-virtual {v10}, Landroid/media/quality/PictureProfileHandle;->getId()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    .line 1901
    invoke-virtual {v9, v10, v11}, Lcom/android/server/media/quality/BiMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1904
    iget-object v9, p0, Lcom/android/server/media/quality/MediaQualityService$PictureProfileAdjustmentListenerImpl;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {v9}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmHalNotifier(Lcom/android/server/media/quality/MediaQualityService;)Lcom/android/server/media/quality/MediaQualityService$HalNotifier;

    move-result-object v9

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    .line 1905
    invoke-virtual {v3}, Landroid/media/quality/PictureProfile;->getParameters()Landroid/os/PersistableBundle;

    move-result-object v11

    .line 1904
    invoke-static {v9, v10, v11}, Lcom/android/server/media/quality/MediaQualityService$HalNotifier;->-$$Nest$mnotifyHalOnPictureProfileChange(Lcom/android/server/media/quality/MediaQualityService$HalNotifier;Ljava/lang/Long;Landroid/os/PersistableBundle;)V

    .line 1908
    .end local v1    # "previous":Landroid/media/quality/PictureProfile;
    .end local v2    # "arr":[Ljava/lang/String;
    .end local v3    # "current":Landroid/media/quality/PictureProfile;
    .end local v4    # "profileName":Ljava/lang/String;
    .end local v5    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/media/quality/PictureProfile;>;"
    .end local v6    # "profileStatus":Ljava/lang/String;
    .end local v7    # "selection":Ljava/lang/String;
    .end local v8    # "selectionArguments":[Ljava/lang/String;
    :cond_6
    :goto_0
    monitor-exit v0

    .line 1909
    return-void

    .line 1908
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private splitNameAndStatus(Ljava/lang/String;)[Ljava/lang/String;
    .locals 3
    .param p1, "nameAndStatus"    # Ljava/lang/String;

    .line 1915
    const/16 v0, 0x2f

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 1916
    .local v0, "index":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_1

    :cond_0
    goto :goto_0

    .line 1920
    :cond_1
    nop

    .line 1921
    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v2, v0, 0x1

    .line 1922
    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    .line 1920
    return-object v1

    .line 1918
    :goto_0
    const-string v1, ""

    filled-new-array {p1, v1}, [Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public getInterfaceHash()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1943
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

    .line 1938
    const/4 v0, 0x0

    return v0
.end method

.method public onParamCapabilityChanged(J[Landroid/hardware/tv/mediaquality/ParamCapability;)V
    .locals 4
    .param p1, "pictureProfileId"    # J
    .param p3, "caps"    # [Landroid/hardware/tv/mediaquality/ParamCapability;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1804
    iget-object v0, p0, Lcom/android/server/media/quality/MediaQualityService$PictureProfileAdjustmentListenerImpl;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {v0}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmMqManagerNotifier(Lcom/android/server/media/quality/MediaQualityService;)Lcom/android/server/media/quality/MediaQualityService$MqManagerNotifier;

    move-result-object v0

    .line 1805
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    .line 1804
    invoke-static {v0, v1, p3, v2, v3}, Lcom/android/server/media/quality/MediaQualityService$MqManagerNotifier;->-$$Nest$mnotifyOnPictureProfileParameterCapabilitiesChanged(Lcom/android/server/media/quality/MediaQualityService$MqManagerNotifier;Ljava/lang/Long;[Landroid/hardware/tv/mediaquality/ParamCapability;II)V

    .line 1806
    return-void
.end method

.method public onPictureProfileAdjusted(Landroid/hardware/tv/mediaquality/PictureProfile;)V
    .locals 3
    .param p1, "pictureProfile"    # Landroid/hardware/tv/mediaquality/PictureProfile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1793
    iget-wide v0, p1, Landroid/hardware/tv/mediaquality/PictureProfile;->pictureProfileId:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 1794
    .local v0, "dbId":Ljava/lang/Long;
    nop

    .line 1795
    iget-object v1, p0, Lcom/android/server/media/quality/MediaQualityService$PictureProfileAdjustmentListenerImpl;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    iget-object v2, p1, Landroid/hardware/tv/mediaquality/PictureProfile;->parameters:Landroid/hardware/tv/mediaquality/PictureParameters;

    iget-object v2, v2, Landroid/hardware/tv/mediaquality/PictureParameters;->pictureParameters:[Landroid/hardware/tv/mediaquality/PictureParameter;

    .line 1796
    invoke-static {v2}, Lcom/android/server/media/quality/MediaQualityUtils;->convertPictureParameterListToPersistableBundle([Landroid/hardware/tv/mediaquality/PictureParameter;)Landroid/os/PersistableBundle;

    move-result-object v2

    .line 1795
    invoke-virtual {v1, v0, v2}, Lcom/android/server/media/quality/MediaQualityService;->updatePictureProfileFromHal(Ljava/lang/Long;Landroid/os/PersistableBundle;)V

    .line 1799
    return-void
.end method

.method public onStreamStatusChanged(JB)V
    .locals 2
    .param p1, "profileHandle"    # J
    .param p3, "status"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1826
    iget-object v0, p0, Lcom/android/server/media/quality/MediaQualityService$PictureProfileAdjustmentListenerImpl;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {v0}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmHandler(Lcom/android/server/media/quality/MediaQualityService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/media/quality/MediaQualityService$PictureProfileAdjustmentListenerImpl$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/server/media/quality/MediaQualityService$PictureProfileAdjustmentListenerImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/media/quality/MediaQualityService$PictureProfileAdjustmentListenerImpl;JB)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1911
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

    .line 1812
    return-void
.end method

.method public requestPictureParameters(J)V
    .locals 4
    .param p1, "pictureProfileId"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1816
    iget-object v0, p0, Lcom/android/server/media/quality/MediaQualityService$PictureProfileAdjustmentListenerImpl;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {v0}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmMqDatabaseUtils(Lcom/android/server/media/quality/MediaQualityService;)Lcom/android/server/media/quality/MediaQualityService$MqDatabaseUtils;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/media/quality/MediaQualityService$MqDatabaseUtils;->-$$Nest$mgetPictureProfile(Lcom/android/server/media/quality/MediaQualityService$MqDatabaseUtils;Ljava/lang/Long;)Landroid/media/quality/PictureProfile;

    move-result-object v0

    .line 1817
    .local v0, "profile":Landroid/media/quality/PictureProfile;
    if-eqz v0, :cond_0

    .line 1818
    iget-object v1, p0, Lcom/android/server/media/quality/MediaQualityService$PictureProfileAdjustmentListenerImpl;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {v1}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmHalNotifier(Lcom/android/server/media/quality/MediaQualityService;)Lcom/android/server/media/quality/MediaQualityService$HalNotifier;

    move-result-object v1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 1819
    invoke-virtual {v0}, Landroid/media/quality/PictureProfile;->getParameters()Landroid/os/PersistableBundle;

    move-result-object v3

    .line 1818
    invoke-static {v1, v2, v3}, Lcom/android/server/media/quality/MediaQualityService$HalNotifier;->-$$Nest$mnotifyHalOnPictureProfileChange(Lcom/android/server/media/quality/MediaQualityService$HalNotifier;Ljava/lang/Long;Landroid/os/PersistableBundle;)V

    .line 1821
    :cond_0
    return-void
.end method
