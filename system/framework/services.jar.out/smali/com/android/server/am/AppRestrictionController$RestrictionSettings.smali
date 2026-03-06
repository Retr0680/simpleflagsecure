.class final Lcom/android/server/am/AppRestrictionController$RestrictionSettings;
.super Ljava/lang/Object;
.source "AppRestrictionController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/AppRestrictionController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "RestrictionSettings"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;
    }
.end annotation


# instance fields
.field final mRestrictionLevels:Landroid/util/SparseArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/am/AppRestrictionController;


# direct methods
.method public static synthetic $r8$lambda$JN5jmrDzyU9x6w0DncYKD46bZBI(Ljava/util/ArrayList;Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->lambda$dump$1(Ljava/util/ArrayList;Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;)V

    return-void
.end method

.method public static synthetic $r8$lambda$m_m_lZ6NSW8FYf2K17fgT6bulJQ(Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;)V
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->lambda$resetToDefault$0(Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mgetLastRestrictionLevel(Lcom/android/server/am/AppRestrictionController$RestrictionSettings;ILjava/lang/String;)I
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->getLastRestrictionLevel(ILjava/lang/String;)I

    move-result p0

    return p0
.end method

.method constructor <init>(Lcom/android/server/am/AppRestrictionController;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/server/am/AppRestrictionController;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 453
    iput-object p1, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->this$0:Lcom/android/server/am/AppRestrictionController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 454
    new-instance v0, Landroid/util/SparseArrayMap;

    invoke-direct {v0}, Landroid/util/SparseArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->mRestrictionLevels:Landroid/util/SparseArrayMap;

    return-void
.end method

.method private getLastRestrictionLevel(ILjava/lang/String;)I
    .locals 3
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 711
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->this$0:Lcom/android/server/am/AppRestrictionController;

    invoke-static {v0}, Lcom/android/server/am/AppRestrictionController;->-$$Nest$fgetmSettingsLock(Lcom/android/server/am/AppRestrictionController;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 712
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->mRestrictionLevels:Landroid/util/SparseArrayMap;

    invoke-virtual {v1, p1, p2}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;

    .line 713
    .local v1, "settings":Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;
    if-nez v1, :cond_0

    .line 714
    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->getLastRestrictionLevel()I

    move-result v2

    :goto_0
    monitor-exit v0

    .line 713
    return v2

    .line 715
    .end local v1    # "settings":Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static synthetic lambda$dump$1(Ljava/util/ArrayList;Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;)V
    .locals 0
    .param p0, "settings"    # Ljava/util/ArrayList;
    .param p1, "setting"    # Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;

    .line 816
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private static synthetic lambda$resetToDefault$0(Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;)V
    .locals 4
    .param p0, "settings"    # Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;

    .line 800
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->-$$Nest$fputmCurrentRestrictionLevel(Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;I)V

    .line 801
    invoke-static {p0, v0}, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->-$$Nest$fputmLastRestrictionLevel(Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;I)V

    .line 802
    const-wide/16 v0, 0x0

    invoke-static {p0, v0, v1}, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->-$$Nest$fputmLevelChangeTime(Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;J)V

    .line 803
    const/16 v2, 0x100

    invoke-static {p0, v2}, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->-$$Nest$fputmReason(Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;I)V

    .line 804
    invoke-static {p0}, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->-$$Nest$fgetmLastNotificationShownTime(Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;)[J

    move-result-object v2

    if-eqz v2, :cond_0

    .line 805
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-static {p0}, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->-$$Nest$fgetmLastNotificationShownTime(Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;)[J

    move-result-object v3

    array-length v3, v3

    if-ge v2, v3, :cond_0

    .line 806
    invoke-static {p0}, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->-$$Nest$fgetmLastNotificationShownTime(Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;)[J

    move-result-object v3

    aput-wide v0, v3, v2

    .line 805
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 809
    .end local v2    # "i":I
    :cond_0
    return-void
.end method

.method private loadOneFromXml(Lcom/android/modules/utils/TypedXmlPullParser;J[JZ)V
    .locals 21
    .param p1, "parser"    # Lcom/android/modules/utils/TypedXmlPullParser;
    .param p2, "now"    # J
    .param p4, "ts"    # [J
    .param p5, "applyLevel"    # Z

    .line 888
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p4

    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v4, v3

    const-wide/16 v5, 0x0

    if-ge v0, v4, :cond_0

    .line 889
    aput-wide v5, v3, v0

    .line 888
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    nop

    .line 892
    .end local v0    # "i":I
    const/4 v0, 0x0

    .line 893
    .local v0, "uid":I
    const/4 v4, 0x0

    .line 894
    .local v4, "packageName":Ljava/lang/String;
    const/4 v7, 0x0

    .line 895
    .local v7, "curLevel":I
    const/16 v8, 0x100

    .line 896
    .local v8, "reason":I
    const-wide/16 v9, 0x0

    .line 897
    .local v9, "levelTs":J
    const/4 v11, 0x0

    move v14, v0

    move-object v13, v4

    move v15, v7

    move v4, v8

    .end local v0    # "uid":I
    .end local v7    # "curLevel":I
    .end local v8    # "reason":I
    .local v4, "reason":I
    .local v11, "i":I
    .local v13, "packageName":Ljava/lang/String;
    .local v14, "uid":I
    .local v15, "curLevel":I
    :goto_1
    invoke-interface {v2}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeCount()I

    move-result v0

    const/4 v7, 0x0

    if-ge v11, v0, :cond_2

    .line 899
    :try_start_0
    invoke-interface {v2, v11}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v0

    .line 900
    .local v0, "attrName":Ljava/lang/String;
    invoke-interface {v2, v11}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v8

    .line 901
    .local v8, "attrValue":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v12

    sparse-switch v12, :sswitch_data_0

    :cond_1
    goto :goto_2

    :sswitch_0
    const-string v7, "curlevel"

    invoke-virtual {v0, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    const/4 v7, 0x2

    goto :goto_3

    .line 923
    .end local v0    # "attrName":Ljava/lang/String;
    .end local v8    # "attrValue":Ljava/lang/String;
    :catch_0
    move-exception v0

    goto :goto_5

    .line 901
    .restart local v0    # "attrName":Ljava/lang/String;
    .restart local v8    # "attrValue":Ljava/lang/String;
    :sswitch_1
    const-string/jumbo v7, "levelts"

    invoke-virtual {v0, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    const/4 v7, 0x3

    goto :goto_3

    :sswitch_2
    const-string/jumbo v12, "uid"

    invoke-virtual {v0, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    goto :goto_3

    :sswitch_3
    const-string/jumbo v7, "package"

    invoke-virtual {v0, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    const/4 v7, 0x1

    goto :goto_3

    :sswitch_4
    const-string/jumbo v7, "reason"

    invoke-virtual {v0, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    const/4 v7, 0x4

    goto :goto_3

    :goto_2
    const/4 v7, -0x1

    :goto_3
    packed-switch v7, :pswitch_data_0

    .line 918
    nop

    .line 919
    invoke-static {v0}, Lcom/android/server/am/AppRestrictionController$NotificationHelper;->notificationTimeAttrToType(Ljava/lang/String;)I

    move-result v7

    .line 920
    .local v7, "type":I
    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v16

    aput-wide v16, v3, v7

    goto :goto_4

    .line 915
    .end local v7    # "type":I
    :pswitch_0
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    move v4, v7

    .line 916
    goto :goto_4

    .line 912
    :pswitch_1
    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v16

    move-wide/from16 v9, v16

    .line 913
    goto :goto_4

    .line 909
    :pswitch_2
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    move v15, v7

    .line 910
    goto :goto_4

    .line 906
    :pswitch_3
    move-object v13, v8

    .line 907
    goto :goto_4

    .line 903
    :pswitch_4
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move v14, v7

    .line 904
    nop

    .line 924
    .end local v0    # "attrName":Ljava/lang/String;
    .end local v8    # "attrValue":Ljava/lang/String;
    :goto_4
    nop

    .line 897
    :goto_5
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    :cond_2
    nop

    .line 926
    .end local v11    # "i":I
    if-eqz v14, :cond_8

    .line 933
    iget-object v0, v1, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->this$0:Lcom/android/server/am/AppRestrictionController;

    invoke-static {v0}, Lcom/android/server/am/AppRestrictionController;->-$$Nest$fgetmSettingsLock(Lcom/android/server/am/AppRestrictionController;)Ljava/lang/Object;

    move-result-object v8

    monitor-enter v8

    .line 934
    :try_start_1
    invoke-virtual {v1, v14, v13}, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->getRestrictionSettingsLocked(ILjava/lang/String;)Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-object v11, v0

    .line 935
    .local v11, "pkgSettings":Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;
    if-nez v11, :cond_3

    .line 936
    :try_start_2
    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    .line 948
    .end local v11    # "pkgSettings":Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;
    :catchall_0
    move-exception v0

    move-wide v5, v9

    goto/16 :goto_8

    .line 938
    .restart local v11    # "pkgSettings":Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;
    :cond_3
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_6
    :try_start_3
    array-length v12, v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-ge v0, v12, :cond_5

    .line 939
    :try_start_4
    invoke-virtual {v11, v0}, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->getLastNotificationTime(I)J

    move-result-wide v16

    cmp-long v12, v16, v5

    if-nez v12, :cond_4

    aget-wide v16, v3, v0

    cmp-long v12, v16, v5

    if-eqz v12, :cond_4

    .line 940
    aget-wide v5, v3, v0

    invoke-virtual {v11, v0, v5, v6, v7}, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->setLastNotificationTime(IJZ)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 938
    :cond_4
    add-int/lit8 v0, v0, 0x1

    const-wide/16 v5, 0x0

    goto :goto_6

    :cond_5
    nop

    .line 943
    .end local v0    # "i":I
    :try_start_5
    invoke-static {v11}, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->-$$Nest$fgetmCurrentRestrictionLevel(Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;)I

    move-result v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    if-lt v0, v15, :cond_6

    .line 946
    :try_start_6
    monitor-exit v8
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    return-void

    .line 948
    :cond_6
    :try_start_7
    monitor-exit v8
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 949
    iget-object v0, v1, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->this$0:Lcom/android/server/am/AppRestrictionController;

    invoke-static {v0}, Lcom/android/server/am/AppRestrictionController;->-$$Nest$fgetmInjector(Lcom/android/server/am/AppRestrictionController;)Lcom/android/server/am/AppRestrictionController$Injector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/AppRestrictionController$Injector;->getAppStandbyInternal()Lcom/android/server/usage/AppStandbyInternal;

    move-result-object v7

    .line 950
    move-wide v5, v9

    .end local v9    # "levelTs":J
    .local v5, "levelTs":J
    invoke-static {v14}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v9

    .line 949
    const/4 v12, 0x0

    move-object v8, v13

    move-object v13, v11

    move-wide/from16 v10, p2

    .end local v11    # "pkgSettings":Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;
    .local v8, "packageName":Ljava/lang/String;
    .local v13, "pkgSettings":Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;
    invoke-interface/range {v7 .. v12}, Lcom/android/server/usage/AppStandbyInternal;->getAppStandbyBucket(Ljava/lang/String;IJZ)I

    move-result v17

    .line 951
    .local v17, "curBucket":I
    const v0, 0xff00

    if-eqz p5, :cond_7

    .line 952
    iget-object v12, v1, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->this$0:Lcom/android/server/am/AppRestrictionController;

    iget-object v7, v1, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->this$0:Lcom/android/server/am/AppRestrictionController;

    invoke-static {v7}, Lcom/android/server/am/AppRestrictionController;->-$$Nest$fgetmEmptyTrackerInfo(Lcom/android/server/am/AppRestrictionController;)Lcom/android/server/am/AppRestrictionController$TrackerInfo;

    move-result-object v16

    and-int v19, v4, v0

    and-int/lit16 v0, v4, 0xff

    const/16 v18, 0x1

    move/from16 v20, v0

    move-object v7, v13

    move-object v13, v8

    .end local v8    # "packageName":Ljava/lang/String;
    .local v7, "pkgSettings":Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;
    .local v13, "packageName":Ljava/lang/String;
    invoke-virtual/range {v12 .. v20}, Lcom/android/server/am/AppRestrictionController;->applyRestrictionLevel(Ljava/lang/String;IILcom/android/server/am/AppRestrictionController$TrackerInfo;IZII)V

    goto :goto_7

    .line 955
    .end local v7    # "pkgSettings":Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;
    .restart local v8    # "packageName":Ljava/lang/String;
    .local v13, "pkgSettings":Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;
    :cond_7
    move-object v7, v13

    move-object v13, v8

    .end local v8    # "packageName":Ljava/lang/String;
    .restart local v7    # "pkgSettings":Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;
    .local v13, "packageName":Ljava/lang/String;
    and-int/2addr v0, v4

    and-int/lit16 v8, v4, 0xff

    invoke-virtual {v7, v15, v0, v8}, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->update(III)I

    .line 958
    :goto_7
    iget-object v0, v1, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->this$0:Lcom/android/server/am/AppRestrictionController;

    invoke-static {v0}, Lcom/android/server/am/AppRestrictionController;->-$$Nest$fgetmSettingsLock(Lcom/android/server/am/AppRestrictionController;)Ljava/lang/Object;

    move-result-object v9

    monitor-enter v9

    .line 960
    :try_start_8
    invoke-virtual {v7, v5, v6}, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->setLevelChangeTime(J)V

    .line 961
    monitor-exit v9

    goto :goto_9

    :catchall_1
    move-exception v0

    monitor-exit v9
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    throw v0

    .line 948
    .end local v5    # "levelTs":J
    .end local v7    # "pkgSettings":Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;
    .end local v17    # "curBucket":I
    .restart local v9    # "levelTs":J
    :catchall_2
    move-exception v0

    move-wide v5, v9

    .end local v9    # "levelTs":J
    .restart local v5    # "levelTs":J
    :goto_8
    :try_start_9
    monitor-exit v8
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    throw v0

    :catchall_3
    move-exception v0

    goto :goto_8

    .line 926
    .end local v5    # "levelTs":J
    .restart local v9    # "levelTs":J
    :cond_8
    move-wide v5, v9

    .line 963
    .end local v9    # "levelTs":J
    .restart local v5    # "levelTs":J
    :goto_9
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x37ba6dbc -> :sswitch_4
        -0x301acbba -> :sswitch_3
        0x1c450 -> :sswitch_2
        0x428d903 -> :sswitch_1
        0x21f78144 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private toXmlByteArray(I)[B
    .locals 13
    .param p1, "userId"    # I

    .line 992
    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 993
    .local v1, "os":Ljava/io/ByteArrayOutputStream;
    :try_start_1
    invoke-static {v1}, Landroid/util/Xml;->resolveSerializer(Ljava/io/OutputStream;)Lcom/android/modules/utils/TypedXmlSerializer;

    move-result-object v2

    .line 995
    .local v2, "serializer":Lcom/android/modules/utils/TypedXmlSerializer;
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v2, v0, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 997
    iget-object v4, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->this$0:Lcom/android/server/am/AppRestrictionController;

    invoke-static {v4}, Lcom/android/server/am/AppRestrictionController;->-$$Nest$fgetmSettingsLock(Lcom/android/server/am/AppRestrictionController;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 998
    :try_start_2
    iget-object v5, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->mRestrictionLevels:Landroid/util/SparseArrayMap;

    invoke-virtual {v5}, Landroid/util/SparseArrayMap;->numMaps()I

    move-result v5

    sub-int/2addr v5, v3

    .local v5, "i":I
    :goto_0
    if-ltz v5, :cond_3

    .line 999
    iget-object v6, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->mRestrictionLevels:Landroid/util/SparseArrayMap;

    invoke-virtual {v6, v5}, Landroid/util/SparseArrayMap;->numElementsForKeyAt(I)I

    move-result v6

    sub-int/2addr v6, v3

    .local v6, "j":I
    :goto_1
    if-ltz v6, :cond_2

    .line 1000
    iget-object v7, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->mRestrictionLevels:Landroid/util/SparseArrayMap;

    invoke-virtual {v7, v5, v6}, Landroid/util/SparseArrayMap;->valueAt(II)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;

    .line 1001
    .local v7, "settings":Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;
    invoke-virtual {v7}, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->getUid()I

    move-result v8

    .line 1002
    .local v8, "uid":I
    invoke-static {v8}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v9

    if-eq v9, p1, :cond_0

    .line 1003
    goto :goto_3

    .line 1005
    :cond_0
    const-string/jumbo v9, "settings"

    invoke-interface {v2, v0, v9}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1006
    const-string/jumbo v9, "uid"

    invoke-interface {v2, v0, v9, v8}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 1007
    const-string/jumbo v9, "package"

    invoke-virtual {v7}, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v2, v0, v9, v10}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1008
    const-string v9, "curlevel"

    invoke-static {v7}, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->-$$Nest$fgetmCurrentRestrictionLevel(Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;)I

    move-result v10

    invoke-interface {v2, v0, v9, v10}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 1010
    const-string/jumbo v9, "levelts"

    invoke-static {v7}, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->-$$Nest$fgetmLevelChangeTime(Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;)J

    move-result-wide v10

    invoke-interface {v2, v0, v9, v10, v11}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    .line 1012
    const-string/jumbo v9, "reason"

    invoke-static {v7}, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->-$$Nest$fgetmReason(Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;)I

    move-result v10

    invoke-interface {v2, v0, v9, v10}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 1013
    const/4 v9, 0x0

    .local v9, "k":I
    :goto_2
    const/4 v10, 0x2

    if-ge v9, v10, :cond_1

    .line 1014
    nop

    .line 1015
    invoke-static {v9}, Lcom/android/server/am/AppRestrictionController$NotificationHelper;->notificationTypeToTimeAttr(I)Ljava/lang/String;

    move-result-object v10

    .line 1016
    invoke-virtual {v7, v9}, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->getLastNotificationTime(I)J

    move-result-wide v11

    .line 1014
    invoke-interface {v2, v0, v10, v11, v12}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    .line 1013
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 1021
    .end local v5    # "i":I
    .end local v6    # "j":I
    .end local v7    # "settings":Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;
    .end local v8    # "uid":I
    .end local v9    # "k":I
    :catchall_0
    move-exception v3

    goto :goto_4

    .line 1013
    .restart local v5    # "i":I
    .restart local v6    # "j":I
    .restart local v7    # "settings":Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;
    .restart local v8    # "uid":I
    .restart local v9    # "k":I
    :cond_1
    nop

    .line 1018
    .end local v9    # "k":I
    const-string/jumbo v9, "settings"

    invoke-interface {v2, v0, v9}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 999
    .end local v7    # "settings":Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;
    .end local v8    # "uid":I
    :goto_3
    add-int/lit8 v6, v6, -0x1

    goto :goto_1

    :cond_2
    nop

    .line 998
    .end local v6    # "j":I
    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    :cond_3
    nop

    .line 1021
    .end local v5    # "i":I
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1023
    :try_start_3
    invoke-interface {v2}, Lcom/android/modules/utils/TypedXmlSerializer;->endDocument()V

    .line 1024
    invoke-interface {v2}, Lcom/android/modules/utils/TypedXmlSerializer;->flush()V

    .line 1026
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1027
    :try_start_4
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 1026
    return-object v3

    .line 1027
    .end local v1    # "os":Ljava/io/ByteArrayOutputStream;
    .end local v2    # "serializer":Lcom/android/modules/utils/TypedXmlSerializer;
    :catch_0
    move-exception v1

    goto :goto_7

    .line 992
    .restart local v1    # "os":Ljava/io/ByteArrayOutputStream;
    :catchall_1
    move-exception v2

    goto :goto_5

    .line 1021
    .restart local v2    # "serializer":Lcom/android/modules/utils/TypedXmlSerializer;
    :goto_4
    :try_start_5
    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .end local v1    # "os":Ljava/io/ByteArrayOutputStream;
    .end local p0    # "this":Lcom/android/server/am/AppRestrictionController$RestrictionSettings;
    .end local p1    # "userId":I
    :try_start_6
    throw v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 992
    .end local v2    # "serializer":Lcom/android/modules/utils/TypedXmlSerializer;
    .restart local v1    # "os":Ljava/io/ByteArrayOutputStream;
    .restart local p0    # "this":Lcom/android/server/am/AppRestrictionController$RestrictionSettings;
    .restart local p1    # "userId":I
    :goto_5
    :try_start_7
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    goto :goto_6

    :catchall_2
    move-exception v3

    :try_start_8
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p0    # "this":Lcom/android/server/am/AppRestrictionController$RestrictionSettings;
    .end local p1    # "userId":I
    :goto_6
    throw v2
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0

    .line 1027
    .end local v1    # "os":Ljava/io/ByteArrayOutputStream;
    .restart local p0    # "this":Lcom/android/server/am/AppRestrictionController$RestrictionSettings;
    .restart local p1    # "userId":I
    :goto_7
    nop

    .line 1028
    .local v1, "e":Ljava/io/IOException;
    return-object v0
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 9

    .line 1042
    new-instance v0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;

    iget-object v1, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->this$0:Lcom/android/server/am/AppRestrictionController;

    invoke-direct {v0, v1}, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;-><init>(Lcom/android/server/am/AppRestrictionController;)V

    .line 1043
    .local v0, "newObj":Lcom/android/server/am/AppRestrictionController$RestrictionSettings;
    iget-object v1, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->this$0:Lcom/android/server/am/AppRestrictionController;

    invoke-static {v1}, Lcom/android/server/am/AppRestrictionController;->-$$Nest$fgetmSettingsLock(Lcom/android/server/am/AppRestrictionController;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1044
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->mRestrictionLevels:Landroid/util/SparseArrayMap;

    invoke-virtual {v2}, Landroid/util/SparseArrayMap;->numMaps()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_1

    .line 1045
    iget-object v3, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->mRestrictionLevels:Landroid/util/SparseArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/SparseArrayMap;->numElementsForKeyAt(I)I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .local v3, "j":I
    :goto_1
    if-ltz v3, :cond_0

    .line 1046
    iget-object v4, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->mRestrictionLevels:Landroid/util/SparseArrayMap;

    invoke-virtual {v4, v2, v3}, Landroid/util/SparseArrayMap;->valueAt(II)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;

    .line 1047
    .local v4, "settings":Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;
    iget-object v5, v0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->mRestrictionLevels:Landroid/util/SparseArrayMap;

    iget-object v6, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->mRestrictionLevels:Landroid/util/SparseArrayMap;

    invoke-virtual {v6, v2}, Landroid/util/SparseArrayMap;->keyAt(I)I

    move-result v6

    iget-object v7, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->mRestrictionLevels:Landroid/util/SparseArrayMap;

    .line 1048
    invoke-virtual {v7, v2, v3}, Landroid/util/SparseArrayMap;->keyAt(II)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v4}, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->clone()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;

    .line 1047
    invoke-virtual {v5, v6, v7, v8}, Landroid/util/SparseArrayMap;->add(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1045
    nop

    .end local v4    # "settings":Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 1051
    .end local v2    # "i":I
    .end local v3    # "j":I
    :catchall_0
    move-exception v2

    goto :goto_2

    .line 1045
    .restart local v2    # "i":I
    .restart local v3    # "j":I
    :cond_0
    nop

    .line 1044
    .end local v3    # "j":I
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_1
    nop

    .line 1051
    .end local v2    # "i":I
    monitor-exit v1

    .line 1052
    return-object v0

    .line 1051
    :goto_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 6
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 814
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 815
    .local v0, "settings":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;>;"
    iget-object v1, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->this$0:Lcom/android/server/am/AppRestrictionController;

    invoke-static {v1}, Lcom/android/server/am/AppRestrictionController;->-$$Nest$fgetmSettingsLock(Lcom/android/server/am/AppRestrictionController;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 816
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->mRestrictionLevels:Landroid/util/SparseArrayMap;

    new-instance v3, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$$ExternalSyntheticLambda0;

    invoke-direct {v3, v0}, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$$ExternalSyntheticLambda0;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {v2, v3}, Landroid/util/SparseArrayMap;->forEach(Ljava/util/function/Consumer;)V

    .line 817
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 818
    new-instance v1, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {v1}, Ljava/util/Comparator;->comparingInt(Ljava/util/function/ToIntFunction;)Ljava/util/Comparator;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 819
    iget-object v1, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->this$0:Lcom/android/server/am/AppRestrictionController;

    invoke-static {v1}, Lcom/android/server/am/AppRestrictionController;->-$$Nest$fgetmInjector(Lcom/android/server/am/AppRestrictionController;)Lcom/android/server/am/AppRestrictionController$Injector;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/am/AppRestrictionController$Injector;->currentTimeMillis()J

    move-result-wide v1

    .line 820
    .local v1, "now":J
    const/4 v3, 0x0

    .local v3, "i":I
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    .local v4, "size":I
    :goto_0
    if-ge v3, v4, :cond_0

    .line 821
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 822
    const/16 v5, 0x23

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(C)V

    .line 823
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 824
    const/16 v5, 0x20

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(C)V

    .line 825
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;

    invoke-virtual {v5, p1, v1, v2}, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->dump(Ljava/io/PrintWriter;J)V

    .line 826
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 820
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    nop

    .line 828
    .end local v3    # "i":I
    .end local v4    # "size":I
    return-void

    .line 817
    .end local v1    # "now":J
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 9
    .param p1, "other"    # Ljava/lang/Object;

    .line 1057
    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    .line 1058
    return v0

    .line 1060
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_1

    instance-of v2, p1, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;

    if-nez v2, :cond_2

    :cond_1
    goto :goto_3

    .line 1063
    :cond_2
    move-object v2, p1

    check-cast v2, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;

    iget-object v2, v2, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->mRestrictionLevels:Landroid/util/SparseArrayMap;

    .line 1065
    .local v2, "otherSettings":Landroid/util/SparseArrayMap;, "Landroid/util/SparseArrayMap<Ljava/lang/String;Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;>;"
    iget-object v3, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->this$0:Lcom/android/server/am/AppRestrictionController;

    invoke-static {v3}, Lcom/android/server/am/AppRestrictionController;->-$$Nest$fgetmSettingsLock(Lcom/android/server/am/AppRestrictionController;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 1066
    :try_start_0
    invoke-virtual {v2}, Landroid/util/SparseArrayMap;->numMaps()I

    move-result v4

    iget-object v5, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->mRestrictionLevels:Landroid/util/SparseArrayMap;

    invoke-virtual {v5}, Landroid/util/SparseArrayMap;->numMaps()I

    move-result v5

    if-eq v4, v5, :cond_3

    .line 1067
    monitor-exit v3

    return v1

    .line 1082
    :catchall_0
    move-exception v0

    goto :goto_2

    .line 1069
    :cond_3
    iget-object v4, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->mRestrictionLevels:Landroid/util/SparseArrayMap;

    invoke-virtual {v4}, Landroid/util/SparseArrayMap;->numMaps()I

    move-result v4

    sub-int/2addr v4, v0

    .local v4, "i":I
    :goto_0
    if-ltz v4, :cond_7

    .line 1070
    iget-object v5, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->mRestrictionLevels:Landroid/util/SparseArrayMap;

    invoke-virtual {v5, v4}, Landroid/util/SparseArrayMap;->keyAt(I)I

    move-result v5

    .line 1071
    .local v5, "uid":I
    invoke-virtual {v2, v5}, Landroid/util/SparseArrayMap;->numElementsForKey(I)I

    move-result v6

    iget-object v7, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->mRestrictionLevels:Landroid/util/SparseArrayMap;

    .line 1072
    invoke-virtual {v7, v4}, Landroid/util/SparseArrayMap;->numElementsForKeyAt(I)I

    move-result v7

    if-eq v6, v7, :cond_4

    .line 1073
    monitor-exit v3

    return v1

    .line 1075
    :cond_4
    iget-object v6, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->mRestrictionLevels:Landroid/util/SparseArrayMap;

    invoke-virtual {v6, v4}, Landroid/util/SparseArrayMap;->numElementsForKeyAt(I)I

    move-result v6

    sub-int/2addr v6, v0

    .local v6, "j":I
    :goto_1
    if-ltz v6, :cond_6

    .line 1076
    iget-object v7, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->mRestrictionLevels:Landroid/util/SparseArrayMap;

    invoke-virtual {v7, v4, v6}, Landroid/util/SparseArrayMap;->valueAt(II)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;

    .line 1077
    .local v7, "settings":Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;
    invoke-virtual {v7}, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v5, v8}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_5

    .line 1078
    monitor-exit v3

    return v1

    .line 1077
    :cond_5
    nop

    .line 1075
    .end local v7    # "settings":Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;
    add-int/lit8 v6, v6, -0x1

    goto :goto_1

    :cond_6
    nop

    .line 1069
    .end local v5    # "uid":I
    .end local v6    # "j":I
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    :cond_7
    nop

    .line 1082
    .end local v4    # "i":I
    monitor-exit v3

    .line 1083
    return v0

    .line 1082
    :goto_2
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1061
    .end local v2    # "otherSettings":Landroid/util/SparseArrayMap;, "Landroid/util/SparseArrayMap<Ljava/lang/String;Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;>;"
    :goto_3
    return v1
.end method

.method forEachPackageInUidLocked(ILcom/android/internal/util/function/TriConsumer;)V
    .locals 7
    .param p1, "uid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/android/internal/util/function/TriConsumer<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 721
    .local p2, "consumer":Lcom/android/internal/util/function/TriConsumer;, "Lcom/android/internal/util/function/TriConsumer<Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->mRestrictionLevels:Landroid/util/SparseArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/SparseArrayMap;->indexOfKey(I)I

    move-result v0

    .line 722
    .local v0, "uidKeyIndex":I
    if-gez v0, :cond_0

    .line 723
    return-void

    .line 725
    :cond_0
    iget-object v1, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->mRestrictionLevels:Landroid/util/SparseArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/SparseArrayMap;->numElementsForKeyAt(I)I

    move-result v1

    .line 726
    .local v1, "numPackages":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 727
    iget-object v3, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->mRestrictionLevels:Landroid/util/SparseArrayMap;

    invoke-virtual {v3, v0, v2}, Landroid/util/SparseArrayMap;->valueAt(II)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;

    .line 728
    .local v3, "settings":Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;
    iget-object v4, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->mRestrictionLevels:Landroid/util/SparseArrayMap;

    invoke-virtual {v4, v0, v2}, Landroid/util/SparseArrayMap;->keyAt(II)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 729
    invoke-virtual {v3}, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->getCurrentRestrictionLevel()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3}, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->getReason()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 728
    invoke-interface {p2, v4, v5, v6}, Lcom/android/internal/util/function/TriConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 726
    .end local v3    # "settings":Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    nop

    .line 731
    .end local v2    # "i":I
    return-void
.end method

.method forEachUidLocked(Ljava/util/function/Consumer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 735
    .local p1, "consumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->mRestrictionLevels:Landroid/util/SparseArrayMap;

    invoke-virtual {v0}, Landroid/util/SparseArrayMap;->numMaps()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 736
    iget-object v1, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->mRestrictionLevels:Landroid/util/SparseArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/SparseArrayMap;->keyAt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 735
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    nop

    .line 738
    .end local v0    # "i":I
    return-void
.end method

.method getReason(Ljava/lang/String;I)I
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 667
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->this$0:Lcom/android/server/am/AppRestrictionController;

    invoke-static {v0}, Lcom/android/server/am/AppRestrictionController;->-$$Nest$fgetmSettingsLock(Lcom/android/server/am/AppRestrictionController;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 668
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->mRestrictionLevels:Landroid/util/SparseArrayMap;

    invoke-virtual {v1, p2, p1}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;

    .line 669
    .local v1, "settings":Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->getReason()I

    move-result v2

    goto :goto_0

    .line 671
    .end local v1    # "settings":Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 670
    .restart local v1    # "settings":Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;
    :cond_0
    const/16 v2, 0x100

    :goto_0
    monitor-exit v0

    .line 669
    return v2

    .line 671
    .end local v1    # "settings":Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method getRestrictionLevel(I)I
    .locals 8
    .param p1, "uid"    # I

    .line 675
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->this$0:Lcom/android/server/am/AppRestrictionController;

    invoke-static {v0}, Lcom/android/server/am/AppRestrictionController;->-$$Nest$fgetmSettingsLock(Lcom/android/server/am/AppRestrictionController;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 676
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->mRestrictionLevels:Landroid/util/SparseArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/SparseArrayMap;->indexOfKey(I)I

    move-result v1

    .line 677
    .local v1, "uidKeyIndex":I
    const/4 v2, 0x0

    if-gez v1, :cond_0

    .line 678
    monitor-exit v0

    return v2

    .line 693
    .end local v1    # "uidKeyIndex":I
    :catchall_0
    move-exception v1

    goto :goto_2

    .line 680
    .restart local v1    # "uidKeyIndex":I
    :cond_0
    iget-object v3, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->mRestrictionLevels:Landroid/util/SparseArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/SparseArrayMap;->numElementsForKeyAt(I)I

    move-result v3

    .line 681
    .local v3, "numPackages":I
    if-nez v3, :cond_1

    .line 682
    monitor-exit v0

    return v2

    .line 684
    :cond_1
    const/4 v2, 0x0

    .line 685
    .local v2, "level":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v3, :cond_4

    .line 686
    iget-object v5, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->mRestrictionLevels:Landroid/util/SparseArrayMap;

    invoke-virtual {v5, v1, v4}, Landroid/util/SparseArrayMap;->valueAt(II)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;

    .line 687
    .local v5, "setting":Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;
    if-eqz v5, :cond_3

    .line 688
    invoke-virtual {v5}, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->getCurrentRestrictionLevel()I

    move-result v6

    .line 689
    .local v6, "l":I
    if-nez v2, :cond_2

    move v7, v6

    goto :goto_1

    :cond_2
    invoke-static {v2, v6}, Ljava/lang/Math;->min(II)I

    move-result v7

    :goto_1
    move v2, v7

    .line 685
    .end local v5    # "setting":Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;
    .end local v6    # "l":I
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    nop

    .line 692
    .end local v4    # "i":I
    monitor-exit v0

    return v2

    .line 693
    .end local v1    # "uidKeyIndex":I
    .end local v2    # "level":I
    .end local v3    # "numPackages":I
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method getRestrictionLevel(ILjava/lang/String;)I
    .locals 3
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 697
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->this$0:Lcom/android/server/am/AppRestrictionController;

    invoke-static {v0}, Lcom/android/server/am/AppRestrictionController;->-$$Nest$fgetmSettingsLock(Lcom/android/server/am/AppRestrictionController;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 698
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->getRestrictionSettingsLocked(ILjava/lang/String;)Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;

    move-result-object v1

    .line 699
    .local v1, "settings":Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;
    if-nez v1, :cond_0

    .line 700
    invoke-virtual {p0, p1}, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->getRestrictionLevel(I)I

    move-result v2

    goto :goto_0

    .line 701
    .end local v1    # "settings":Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 700
    .restart local v1    # "settings":Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;
    :cond_0
    invoke-virtual {v1}, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->getCurrentRestrictionLevel()I

    move-result v2

    :goto_0
    monitor-exit v0

    .line 699
    return v2

    .line 701
    .end local v1    # "settings":Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method getRestrictionLevel(Ljava/lang/String;I)I
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 705
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->this$0:Lcom/android/server/am/AppRestrictionController;

    invoke-static {v0}, Lcom/android/server/am/AppRestrictionController;->-$$Nest$fgetmInjector(Lcom/android/server/am/AppRestrictionController;)Lcom/android/server/am/AppRestrictionController$Injector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/AppRestrictionController$Injector;->getPackageManagerInternal()Landroid/content/pm/PackageManagerInternal;

    move-result-object v0

    .line 706
    .local v0, "pm":Landroid/content/pm/PackageManagerInternal;
    const-wide/32 v1, 0xc8000

    invoke-virtual {v0, p1, v1, v2, p2}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;JI)I

    move-result v1

    .line 707
    .local v1, "uid":I
    invoke-virtual {p0, v1, p1}, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->getRestrictionLevel(ILjava/lang/String;)I

    move-result v2

    return v2
.end method

.method getRestrictionSettingsLocked(ILjava/lang/String;)Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;
    .locals 1
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 742
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->mRestrictionLevels:Landroid/util/SparseArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;

    return-object v0
.end method

.method getXmlFileNameForUser(I)Ljava/io/File;
    .locals 3
    .param p1, "userId"    # I

    .line 843
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->this$0:Lcom/android/server/am/AppRestrictionController;

    invoke-static {v1}, Lcom/android/server/am/AppRestrictionController;->-$$Nest$fgetmInjector(Lcom/android/server/am/AppRestrictionController;)Lcom/android/server/am/AppRestrictionController$Injector;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/am/AppRestrictionController$Injector;->getDataSystemDeDirectory(I)Ljava/io/File;

    move-result-object v1

    const-string v2, "apprestriction"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 845
    .local v0, "dir":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    const-string/jumbo v2, "settings.xml"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v1
.end method

.method loadFromXml(IZ)V
    .locals 12
    .param p1, "userId"    # I
    .param p2, "applyLevel"    # Z

    .line 858
    invoke-virtual {p0, p1}, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->getXmlFileNameForUser(I)Ljava/io/File;

    move-result-object v1

    .line 859
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 860
    return-void

    .line 862
    :cond_0
    const/4 v0, 0x2

    new-array v6, v0, [J

    .line 863
    .local v6, "ts":[J
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1

    move-object v8, v2

    .line 864
    .local v8, "in":Ljava/io/InputStream;
    :try_start_1
    invoke-static {v8}, Landroid/util/Xml;->resolvePullParser(Ljava/io/InputStream;)Lcom/android/modules/utils/TypedXmlPullParser;

    move-result-object v3

    .line 865
    .local v3, "parser":Lcom/android/modules/utils/TypedXmlPullParser;
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 867
    .local v4, "now":J
    :goto_0
    invoke-interface {v3}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v2

    move v9, v2

    .local v9, "type":I
    const/4 v7, 0x1

    if-eq v2, v7, :cond_3

    .line 868
    if-eq v9, v0, :cond_1

    .line 869
    goto :goto_0

    .line 871
    :cond_1
    invoke-interface {v3}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    move-object v10, v2

    .line 872
    .local v10, "tagName":Ljava/lang/String;
    const-string/jumbo v2, "settings"

    invoke-virtual {v2, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-nez v2, :cond_2

    .line 873
    :try_start_2
    const-string v2, "ActivityManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unexpected tag name: "

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 874
    goto :goto_0

    .line 863
    .end local v3    # "parser":Lcom/android/modules/utils/TypedXmlPullParser;
    .end local v4    # "now":J
    .end local v9    # "type":I
    .end local v10    # "tagName":Ljava/lang/String;
    :catchall_0
    move-exception v0

    move v7, p2

    move-object p2, v0

    goto :goto_1

    .line 876
    .restart local v3    # "parser":Lcom/android/modules/utils/TypedXmlPullParser;
    .restart local v4    # "now":J
    .restart local v9    # "type":I
    .restart local v10    # "tagName":Ljava/lang/String;
    :cond_2
    move-object v2, p0

    move v7, p2

    .end local p2    # "applyLevel":Z
    .local v7, "applyLevel":Z
    :try_start_3
    invoke-direct/range {v2 .. v7}, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->loadOneFromXml(Lcom/android/modules/utils/TypedXmlPullParser;J[JZ)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 877
    .end local v10    # "tagName":Ljava/lang/String;
    move p2, v7

    goto :goto_0

    .line 863
    .end local v3    # "parser":Lcom/android/modules/utils/TypedXmlPullParser;
    .end local v4    # "now":J
    .end local v9    # "type":I
    :catchall_1
    move-exception v0

    move-object p2, v0

    goto :goto_1

    .end local v7    # "applyLevel":Z
    .restart local p2    # "applyLevel":Z
    :catchall_2
    move-exception v0

    move v7, p2

    move-object p2, v0

    .end local p2    # "applyLevel":Z
    .restart local v7    # "applyLevel":Z
    goto :goto_1

    .line 867
    .end local v7    # "applyLevel":Z
    .restart local v3    # "parser":Lcom/android/modules/utils/TypedXmlPullParser;
    .restart local v4    # "now":J
    .restart local v9    # "type":I
    .restart local p2    # "applyLevel":Z
    :cond_3
    move v7, p2

    .line 881
    .end local v3    # "parser":Lcom/android/modules/utils/TypedXmlPullParser;
    .end local v4    # "now":J
    .end local v9    # "type":I
    .end local p2    # "applyLevel":Z
    .restart local v7    # "applyLevel":Z
    :try_start_4
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_0

    .line 882
    .end local v8    # "in":Ljava/io/InputStream;
    goto :goto_3

    .line 881
    :catch_0
    move-exception v0

    goto :goto_3

    .line 863
    .restart local v8    # "in":Ljava/io/InputStream;
    :goto_1
    :try_start_5
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_2

    :catchall_3
    move-exception v0

    :try_start_6
    invoke-virtual {p2, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v1    # "file":Ljava/io/File;
    .end local v6    # "ts":[J
    .end local v7    # "applyLevel":Z
    .end local p0    # "this":Lcom/android/server/am/AppRestrictionController$RestrictionSettings;
    .end local p1    # "userId":I
    :goto_2
    throw p2
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_6} :catch_0

    .line 881
    .end local v8    # "in":Ljava/io/InputStream;
    .restart local v1    # "file":Ljava/io/File;
    .restart local v6    # "ts":[J
    .restart local p0    # "this":Lcom/android/server/am/AppRestrictionController$RestrictionSettings;
    .restart local p1    # "userId":I
    .restart local p2    # "applyLevel":Z
    :catch_1
    move-exception v0

    move v7, p2

    .line 883
    .end local p2    # "applyLevel":Z
    .restart local v7    # "applyLevel":Z
    :goto_3
    return-void
.end method

.method loadFromXml(Z)V
    .locals 4
    .param p1, "applyLevel"    # Z

    .line 850
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->this$0:Lcom/android/server/am/AppRestrictionController;

    invoke-static {v0}, Lcom/android/server/am/AppRestrictionController;->-$$Nest$fgetmInjector(Lcom/android/server/am/AppRestrictionController;)Lcom/android/server/am/AppRestrictionController$Injector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/AppRestrictionController$Injector;->getUserManagerInternal()Lcom/android/server/pm/UserManagerInternal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/pm/UserManagerInternal;->getUserIds()[I

    move-result-object v0

    .line 851
    .local v0, "allUsers":[I
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget v3, v0, v2

    .line 852
    .local v3, "userId":I
    invoke-virtual {p0, v3, p1}, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->loadFromXml(IZ)V

    .line 851
    .end local v3    # "userId":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 854
    :cond_0
    iget-object v1, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->this$0:Lcom/android/server/am/AppRestrictionController;

    invoke-static {v1}, Lcom/android/server/am/AppRestrictionController;->-$$Nest$fgetmRestrictionSettingsXmlLoaded(Lcom/android/server/am/AppRestrictionController;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 855
    return-void
.end method

.method persistToXml(I)V
    .locals 8
    .param p1, "userId"    # I

    .line 967
    invoke-virtual {p0, p1}, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->getXmlFileNameForUser(I)Ljava/io/File;

    move-result-object v0

    .line 968
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    .line 969
    .local v1, "dir":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    const-string v3, "ActivityManager"

    if-nez v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v2

    if-nez v2, :cond_0

    .line 970
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to create folder for "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 971
    return-void

    .line 973
    :cond_0
    new-instance v2, Landroid/util/AtomicFile;

    invoke-direct {v2, v0}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 974
    .local v2, "atomicFile":Landroid/util/AtomicFile;
    const/4 v4, 0x0

    .line 976
    .local v4, "stream":Ljava/io/FileOutputStream;
    :try_start_0
    invoke-virtual {v2}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v5

    move-object v4, v5

    .line 977
    invoke-direct {p0, p1}, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->toXmlByteArray(I)[B

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 984
    nop

    .line 985
    invoke-virtual {v2, v4}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V

    .line 989
    return-void

    .line 978
    :catch_0
    move-exception v5

    .line 979
    .local v5, "e":Ljava/lang/Exception;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to write file "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 980
    if-eqz v4, :cond_1

    .line 981
    invoke-virtual {v2, v4}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 983
    :cond_1
    return-void
.end method

.method removePackage(Ljava/lang/String;I)V
    .locals 1
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 758
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->removePackage(Ljava/lang/String;IZ)V

    .line 759
    return-void
.end method

.method removePackage(Ljava/lang/String;IZ)V
    .locals 3
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "persist"    # Z

    .line 762
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->this$0:Lcom/android/server/am/AppRestrictionController;

    invoke-static {v0}, Lcom/android/server/am/AppRestrictionController;->-$$Nest$fgetmSettingsLock(Lcom/android/server/am/AppRestrictionController;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 763
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->mRestrictionLevels:Landroid/util/SparseArrayMap;

    invoke-virtual {v1, p2}, Landroid/util/SparseArrayMap;->indexOfKey(I)I

    move-result v1

    .line 764
    .local v1, "keyIndex":I
    iget-object v2, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->mRestrictionLevels:Landroid/util/SparseArrayMap;

    invoke-virtual {v2, p2, p1}, Landroid/util/SparseArrayMap;->delete(ILjava/lang/Object;)Ljava/lang/Object;

    .line 765
    if-ltz v1, :cond_0

    iget-object v2, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->mRestrictionLevels:Landroid/util/SparseArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/SparseArrayMap;->numElementsForKeyAt(I)I

    move-result v2

    if-nez v2, :cond_0

    .line 766
    iget-object v2, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->mRestrictionLevels:Landroid/util/SparseArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/SparseArrayMap;->deleteAt(I)V

    goto :goto_0

    .line 768
    .end local v1    # "keyIndex":I
    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 769
    if-eqz p3, :cond_1

    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->this$0:Lcom/android/server/am/AppRestrictionController;

    invoke-static {v0}, Lcom/android/server/am/AppRestrictionController;->-$$Nest$fgetmRestrictionSettingsXmlLoaded(Lcom/android/server/am/AppRestrictionController;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 770
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->schedulePersistToXml(I)V

    .line 772
    :cond_1
    return-void

    .line 768
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method removeUid(I)V
    .locals 1
    .param p1, "uid"    # I

    .line 775
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->removeUid(IZ)V

    .line 776
    return-void
.end method

.method removeUid(IZ)V
    .locals 2
    .param p1, "uid"    # I
    .param p2, "persist"    # Z

    .line 779
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->this$0:Lcom/android/server/am/AppRestrictionController;

    invoke-static {v0}, Lcom/android/server/am/AppRestrictionController;->-$$Nest$fgetmSettingsLock(Lcom/android/server/am/AppRestrictionController;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 780
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->mRestrictionLevels:Landroid/util/SparseArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/SparseArrayMap;->delete(I)V

    .line 781
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 782
    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->this$0:Lcom/android/server/am/AppRestrictionController;

    invoke-static {v0}, Lcom/android/server/am/AppRestrictionController;->-$$Nest$fgetmRestrictionSettingsXmlLoaded(Lcom/android/server/am/AppRestrictionController;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 783
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->schedulePersistToXml(I)V

    .line 785
    :cond_0
    return-void

    .line 781
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method removeUser(I)V
    .locals 4
    .param p1, "userId"    # I

    .line 746
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->this$0:Lcom/android/server/am/AppRestrictionController;

    invoke-static {v0}, Lcom/android/server/am/AppRestrictionController;->-$$Nest$fgetmSettingsLock(Lcom/android/server/am/AppRestrictionController;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 747
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->mRestrictionLevels:Landroid/util/SparseArrayMap;

    invoke-virtual {v1}, Landroid/util/SparseArrayMap;->numMaps()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 748
    iget-object v2, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->mRestrictionLevels:Landroid/util/SparseArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/SparseArrayMap;->keyAt(I)I

    move-result v2

    .line 749
    .local v2, "uid":I
    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    if-eq v3, p1, :cond_0

    .line 750
    goto :goto_1

    .line 752
    :cond_0
    iget-object v3, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->mRestrictionLevels:Landroid/util/SparseArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/SparseArrayMap;->deleteAt(I)V

    .line 747
    .end local v2    # "uid":I
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 754
    .end local v1    # "i":I
    :catchall_0
    move-exception v1

    goto :goto_2

    .line 747
    .restart local v1    # "i":I
    :cond_1
    nop

    .line 754
    .end local v1    # "i":I
    monitor-exit v0

    .line 755
    return-void

    .line 754
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method removeXml()V
    .locals 5

    .line 1034
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->this$0:Lcom/android/server/am/AppRestrictionController;

    invoke-static {v0}, Lcom/android/server/am/AppRestrictionController;->-$$Nest$fgetmInjector(Lcom/android/server/am/AppRestrictionController;)Lcom/android/server/am/AppRestrictionController$Injector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/AppRestrictionController$Injector;->getUserManagerInternal()Lcom/android/server/pm/UserManagerInternal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/pm/UserManagerInternal;->getUserIds()[I

    move-result-object v0

    .line 1035
    .local v0, "allUsers":[I
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget v3, v0, v2

    .line 1036
    .local v3, "userId":I
    invoke-virtual {p0, v3}, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->getXmlFileNameForUser(I)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 1035
    .end local v3    # "userId":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1038
    :cond_0
    return-void
.end method

.method reset()V
    .locals 3

    .line 789
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->this$0:Lcom/android/server/am/AppRestrictionController;

    invoke-static {v0}, Lcom/android/server/am/AppRestrictionController;->-$$Nest$fgetmSettingsLock(Lcom/android/server/am/AppRestrictionController;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 790
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->mRestrictionLevels:Landroid/util/SparseArrayMap;

    invoke-virtual {v1}, Landroid/util/SparseArrayMap;->numMaps()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 791
    iget-object v2, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->mRestrictionLevels:Landroid/util/SparseArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/SparseArrayMap;->deleteAt(I)V

    .line 790
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 793
    .end local v1    # "i":I
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 790
    .restart local v1    # "i":I
    :cond_0
    nop

    .line 793
    .end local v1    # "i":I
    monitor-exit v0

    .line 794
    return-void

    .line 793
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method resetToDefault()V
    .locals 3

    .line 798
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->this$0:Lcom/android/server/am/AppRestrictionController;

    invoke-static {v0}, Lcom/android/server/am/AppRestrictionController;->-$$Nest$fgetmSettingsLock(Lcom/android/server/am/AppRestrictionController;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 799
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->mRestrictionLevels:Landroid/util/SparseArrayMap;

    new-instance v2, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$$ExternalSyntheticLambda2;

    invoke-direct {v2}, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$$ExternalSyntheticLambda2;-><init>()V

    invoke-virtual {v1, v2}, Landroid/util/SparseArrayMap;->forEach(Ljava/util/function/Consumer;)V

    .line 810
    monitor-exit v0

    .line 811
    return-void

    .line 810
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method scheduleLoadFromXml()V
    .locals 2

    .line 838
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->this$0:Lcom/android/server/am/AppRestrictionController;

    invoke-static {v0}, Lcom/android/server/am/AppRestrictionController;->-$$Nest$fgetmBgHandler(Lcom/android/server/am/AppRestrictionController;)Lcom/android/server/am/AppRestrictionController$BgHandler;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 839
    return-void
.end method

.method schedulePersistToXml(I)V
    .locals 3
    .param p1, "userId"    # I

    .line 832
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->this$0:Lcom/android/server/am/AppRestrictionController;

    invoke-static {v0}, Lcom/android/server/am/AppRestrictionController;->-$$Nest$fgetmBgHandler(Lcom/android/server/am/AppRestrictionController;)Lcom/android/server/am/AppRestrictionController$BgHandler;

    move-result-object v0

    const/16 v1, 0xb

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 833
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 834
    return-void
.end method

.method update(Ljava/lang/String;IIII)I
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "level"    # I
    .param p4, "reason"    # I
    .param p5, "subReason"    # I

    .line 653
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->this$0:Lcom/android/server/am/AppRestrictionController;

    invoke-static {v0}, Lcom/android/server/am/AppRestrictionController;->-$$Nest$fgetmSettingsLock(Lcom/android/server/am/AppRestrictionController;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 654
    :try_start_0
    invoke-virtual {p0, p2, p1}, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->getRestrictionSettingsLocked(ILjava/lang/String;)Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;

    move-result-object v1

    .line 655
    .local v1, "settings":Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;
    if-nez v1, :cond_0

    .line 656
    new-instance v2, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;

    invoke-direct {v2, p0, p1, p2}, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;-><init>(Lcom/android/server/am/AppRestrictionController$RestrictionSettings;Ljava/lang/String;I)V

    move-object v1, v2

    .line 657
    iget-object v2, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->mRestrictionLevels:Landroid/util/SparseArrayMap;

    invoke-virtual {v2, p2, p1, v1}, Landroid/util/SparseArrayMap;->add(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 660
    .end local v1    # "settings":Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 659
    .restart local v1    # "settings":Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;
    :cond_0
    :goto_0
    invoke-virtual {v1, p3, p4, p5}, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->update(III)I

    move-result v2

    monitor-exit v0

    return v2

    .line 660
    .end local v1    # "settings":Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
