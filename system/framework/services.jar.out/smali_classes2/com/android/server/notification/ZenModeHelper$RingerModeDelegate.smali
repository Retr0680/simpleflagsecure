.class public final Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;
.super Ljava/lang/Object;
.source "ZenModeHelper.java"

# interfaces
.implements Landroid/media/AudioManagerInternal$RingerModeDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/ZenModeHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x14
    name = "RingerModeDelegate"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/notification/ZenModeHelper;


# direct methods
.method protected constructor <init>(Lcom/android/server/notification/ZenModeHelper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/notification/ZenModeHelper;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 2647
    iput-object p1, p0, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;->this$0:Lcom/android/server/notification/ZenModeHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private areAllPriorityOnlyRingerSoundsMuted()Z
    .locals 2

    .line 2704
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;->this$0:Lcom/android/server/notification/ZenModeHelper;

    invoke-static {v0}, Lcom/android/server/notification/ZenModeHelper;->-$$Nest$fgetmConfigLock(Lcom/android/server/notification/ZenModeHelper;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2705
    :try_start_0
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;->this$0:Lcom/android/server/notification/ZenModeHelper;

    iget-object v1, v1, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    invoke-static {v1}, Landroid/service/notification/ZenModeConfig;->areAllPriorityOnlyRingerSoundsMuted(Landroid/service/notification/ZenModeConfig;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 2706
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public canVolumeDownEnterSilent()Z
    .locals 1

    .line 2748
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;->this$0:Lcom/android/server/notification/ZenModeHelper;

    iget v0, v0, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getRingerModeAffectedStreams(I)I
    .locals 2
    .param p1, "streams"    # I

    .line 2755
    or-int/lit8 p1, p1, 0x26

    .line 2759
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;->this$0:Lcom/android/server/notification/ZenModeHelper;

    iget v0, v0, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 2762
    or-int/lit16 p1, p1, 0x818

    goto :goto_0

    .line 2766
    :cond_0
    and-int/lit16 p1, p1, -0x819

    .line 2771
    :goto_0
    return p1
.end method

.method public onSetRingerModeExternal(IILjava/lang/String;ILandroid/media/VolumePolicy;)I
    .locals 18
    .param p1, "ringerModeOld"    # I
    .param p2, "ringerModeNew"    # I
    .param p3, "caller"    # Ljava/lang/String;
    .param p4, "ringerModeInternal"    # I
    .param p5, "policy"    # Landroid/media/VolumePolicy;

    .line 2712
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p4

    move/from16 v4, p2

    .line 2713
    .local v4, "ringerModeInternalOut":I
    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eq v1, v2, :cond_0

    move v7, v6

    goto :goto_0

    :cond_0
    move v7, v5

    .line 2714
    .local v7, "isChange":Z
    :goto_0
    if-ne v3, v6, :cond_1

    move v8, v6

    goto :goto_1

    :cond_1
    move v8, v5

    .line 2716
    .local v8, "isVibrate":Z
    :goto_1
    const/4 v9, -0x1

    .line 2717
    .local v9, "newZen":I
    packed-switch v2, :pswitch_data_0

    goto :goto_2

    .line 2731
    :pswitch_0
    iget-object v5, v0, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;->this$0:Lcom/android/server/notification/ZenModeHelper;

    iget v5, v5, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    if-eqz v5, :cond_2

    .line 2732
    const/4 v9, 0x0

    move v11, v9

    goto :goto_4

    .line 2736
    :cond_2
    :goto_2
    move v11, v9

    goto :goto_4

    .line 2719
    :pswitch_1
    if-eqz v7, :cond_5

    .line 2720
    iget-object v10, v0, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;->this$0:Lcom/android/server/notification/ZenModeHelper;

    iget v10, v10, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    if-nez v10, :cond_3

    .line 2721
    const/4 v9, 0x1

    .line 2723
    :cond_3
    if-eqz v8, :cond_4

    move v5, v6

    goto :goto_3

    .line 2724
    :cond_4
    nop

    :goto_3
    move v4, v5

    move v11, v9

    goto :goto_4

    .line 2726
    :cond_5
    move/from16 v4, p4

    .line 2728
    move v11, v9

    .line 2736
    .end local v9    # "newZen":I
    .local v11, "newZen":I
    :goto_4
    const/4 v5, -0x1

    if-eq v11, v5, :cond_6

    .line 2737
    iget-object v9, v0, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;->this$0:Lcom/android/server/notification/ZenModeHelper;

    sget-object v10, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const/16 v16, 0x0

    const/16 v17, 0x3e8

    const/4 v12, 0x0

    const/4 v13, 0x5

    const-string/jumbo v14, "ringerModeExternal"

    move-object/from16 v15, p3

    invoke-static/range {v9 .. v17}, Lcom/android/server/notification/ZenModeHelper;->-$$Nest$msetManualZenMode(Lcom/android/server/notification/ZenModeHelper;Landroid/os/UserHandle;ILandroid/net/Uri;ILjava/lang/String;Ljava/lang/String;ZI)V

    .line 2741
    :cond_6
    move-object/from16 v15, p3

    invoke-static {v1, v2, v15, v3, v4}, Lcom/android/server/notification/ZenLog;->traceSetRingerModeExternal(IILjava/lang/String;II)V

    .line 2743
    return v4

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onSetRingerModeInternal(IILjava/lang/String;ILandroid/media/VolumePolicy;)I
    .locals 17
    .param p1, "ringerModeOld"    # I
    .param p2, "ringerModeNew"    # I
    .param p3, "caller"    # Ljava/lang/String;
    .param p4, "ringerModeExternal"    # I
    .param p5, "policy"    # Landroid/media/VolumePolicy;

    .line 2656
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p4

    const/4 v4, 0x1

    if-eq v1, v2, :cond_0

    move v5, v4

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    .line 2658
    .local v5, "isChange":Z
    :goto_0
    move/from16 v6, p2

    .line 2660
    .local v6, "ringerModeExternalOut":I
    iget-object v7, v0, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;->this$0:Lcom/android/server/notification/ZenModeHelper;

    iget v7, v7, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    nop

    if-eqz v7, :cond_1

    iget-object v7, v0, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;->this$0:Lcom/android/server/notification/ZenModeHelper;

    iget v7, v7, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    if-ne v7, v4, :cond_2

    .line 2662
    invoke-direct {v0}, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;->areAllPriorityOnlyRingerSoundsMuted()Z

    move-result v7

    if-nez v7, :cond_2

    .line 2665
    :cond_1
    iget-object v7, v0, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;->this$0:Lcom/android/server/notification/ZenModeHelper;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/server/notification/ZenModeHelper;->-$$Nest$msetPreviousRingerModeSetting(Lcom/android/server/notification/ZenModeHelper;Ljava/lang/Integer;)V

    .line 2667
    :cond_2
    const/4 v7, -0x1

    .line 2668
    .local v7, "newZen":I
    packed-switch v2, :pswitch_data_0

    move-object/from16 v4, p5

    goto :goto_1

    .line 2679
    :pswitch_0
    if-eqz v5, :cond_4

    if-nez v1, :cond_4

    iget-object v8, v0, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;->this$0:Lcom/android/server/notification/ZenModeHelper;

    iget v8, v8, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    const/4 v9, 0x2

    if-eq v8, v9, :cond_3

    iget-object v8, v0, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;->this$0:Lcom/android/server/notification/ZenModeHelper;

    iget v8, v8, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    const/4 v9, 0x3

    if-eq v8, v9, :cond_3

    iget-object v8, v0, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;->this$0:Lcom/android/server/notification/ZenModeHelper;

    iget v8, v8, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    if-ne v8, v4, :cond_4

    .line 2683
    invoke-direct {v0}, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;->areAllPriorityOnlyRingerSoundsMuted()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 2684
    :cond_3
    const/4 v7, 0x0

    move-object/from16 v4, p5

    move v9, v7

    goto :goto_2

    .line 2685
    :cond_4
    iget-object v4, v0, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;->this$0:Lcom/android/server/notification/ZenModeHelper;

    iget v4, v4, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    if-eqz v4, :cond_5

    .line 2686
    const/4 v6, 0x0

    move-object/from16 v4, p5

    move v9, v7

    goto :goto_2

    .line 2685
    :cond_5
    move-object/from16 v4, p5

    goto :goto_1

    .line 2670
    :pswitch_1
    if-eqz v5, :cond_7

    move-object/from16 v4, p5

    iget-boolean v8, v4, Landroid/media/VolumePolicy;->doNotDisturbWhenSilent:Z

    if-eqz v8, :cond_8

    .line 2671
    iget-object v8, v0, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;->this$0:Lcom/android/server/notification/ZenModeHelper;

    iget v8, v8, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    if-nez v8, :cond_6

    .line 2672
    const/4 v7, 0x1

    .line 2674
    :cond_6
    iget-object v8, v0, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;->this$0:Lcom/android/server/notification/ZenModeHelper;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/server/notification/ZenModeHelper;->-$$Nest$msetPreviousRingerModeSetting(Lcom/android/server/notification/ZenModeHelper;Ljava/lang/Integer;)V

    move v9, v7

    goto :goto_2

    .line 2670
    :cond_7
    move-object/from16 v4, p5

    .line 2691
    :cond_8
    :goto_1
    move v9, v7

    .end local v7    # "newZen":I
    .local v9, "newZen":I
    :goto_2
    const/4 v7, -0x1

    if-eq v9, v7, :cond_9

    .line 2692
    move v8, v7

    iget-object v7, v0, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;->this$0:Lcom/android/server/notification/ZenModeHelper;

    move v10, v8

    sget-object v8, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const/4 v14, 0x0

    const/16 v15, 0x3e8

    move v11, v10

    const/4 v10, 0x0

    move v12, v11

    const/4 v11, 0x5

    move v13, v12

    const-string/jumbo v12, "ringerModeInternal"

    move/from16 v16, v13

    const/4 v13, 0x0

    move/from16 v0, v16

    invoke-static/range {v7 .. v15}, Lcom/android/server/notification/ZenModeHelper;->-$$Nest$msetManualZenMode(Lcom/android/server/notification/ZenModeHelper;Landroid/os/UserHandle;ILandroid/net/Uri;ILjava/lang/String;Ljava/lang/String;ZI)V

    goto :goto_3

    .line 2691
    :cond_9
    move v0, v7

    .line 2696
    :goto_3
    if-nez v5, :cond_a

    if-ne v9, v0, :cond_a

    if-eq v3, v6, :cond_b

    :cond_a
    goto :goto_4

    :cond_b
    move-object/from16 v0, p3

    goto :goto_5

    .line 2697
    :goto_4
    move-object/from16 v0, p3

    invoke-static {v1, v2, v0, v3, v6}, Lcom/android/server/notification/ZenLog;->traceSetRingerModeInternal(IILjava/lang/String;II)V

    .line 2700
    :goto_5
    return v6

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 2650
    const-string v0, "ZenModeHelper"

    return-object v0
.end method
