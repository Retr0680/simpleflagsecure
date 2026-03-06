.class public Lcom/android/media/audio/CustomFeatureFlags;
.super Ljava/lang/Object;
.source "CustomFeatureFlags.java"

# interfaces
.implements Lcom/android/media/audio/FeatureFlags;


# instance fields
.field private mGetValueImpl:Ljava/util/function/BiPredicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/BiPredicate<",
            "Ljava/lang/String;",
            "Ljava/util/function/Predicate<",
            "Lcom/android/media/audio/FeatureFlags;",
            ">;>;"
        }
    .end annotation
.end field

.field private mReadOnlyFlagsSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/function/BiPredicate;)V
    .locals 29
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiPredicate<",
            "Ljava/lang/String;",
            "Ljava/util/function/Predicate<",
            "Lcom/android/media/audio/FeatureFlags;",
            ">;>;)V"
        }
    .end annotation

    .line 16
    .local p1, "getValueImpl":Ljava/util/function/BiPredicate;, "Ljava/util/function/BiPredicate<Ljava/lang/String;Ljava/util/function/Predicate<Lcom/android/media/audio/FeatureFlags;>;>;"
    move-object/from16 v0, p0

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 249
    new-instance v1, Ljava/util/HashSet;

    const-string v27, "com.android.media.audio.volume_refactoring"

    const-string v28, ""

    const-string v2, "com.android.media.audio.abs_volume_index_fix"

    const-string v3, "com.android.media.audio.alarm_min_volume_zero"

    const-string v4, "com.android.media.audio.as_device_connection_failure"

    const-string v5, "com.android.media.audio.audio_eraser_effect"

    const-string v6, "com.android.media.audio.audioserver_permissions"

    const-string v7, "com.android.media.audio.bluetooth_mac_address_anonymization"

    const-string v8, "com.android.media.audio.defer_wear_permission_updates"

    const-string v9, "com.android.media.audio.disable_prescale_absolute_volume"

    const-string v10, "com.android.media.audio.dsa_over_bt_le_audio"

    const-string v11, "com.android.media.audio.equal_sco_lea_vc_index_range"

    const-string v12, "com.android.media.audio.hardening_impl"

    const-string v13, "com.android.media.audio.hardening_partial"

    const-string v14, "com.android.media.audio.hardening_partial_volume"

    const-string v15, "com.android.media.audio.hardening_strict"

    const-string v16, "com.android.media.audio.music_fx_edge_to_edge"

    const-string v17, "com.android.media.audio.optimize_bt_device_switch"

    const-string v18, "com.android.media.audio.port_to_piid_simplification"

    const-string v19, "com.android.media.audio.replace_stream_bt_sco"

    const-string v20, "com.android.media.audio.ring_my_car"

    const-string v21, "com.android.media.audio.ringer_mode_affects_alarm"

    const-string v22, "com.android.media.audio.set_stream_volume_order"

    const-string v23, "com.android.media.audio.spatializer_offload"

    const-string v24, "com.android.media.audio.spatializer_upmix"

    const-string v25, "com.android.media.audio.stereo_spatialization"

    const-string v26, "com.android.media.audio.vgs_vss_sync_mute_order"

    filled-new-array/range {v2 .. v28}, [Ljava/lang/String;

    move-result-object v2

    .line 250
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Lcom/android/media/audio/CustomFeatureFlags;->mReadOnlyFlagsSet:Ljava/util/Set;

    .line 17
    move-object/from16 v1, p1

    iput-object v1, v0, Lcom/android/media/audio/CustomFeatureFlags;->mGetValueImpl:Ljava/util/function/BiPredicate;

    .line 18
    return-void
.end method

.method private isOptimizationEnabled()Z
    .locals 1

    .line 211
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public absVolumeIndexFix()Z
    .locals 2

    .line 22
    new-instance v0, Lcom/android/media/audio/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/media/audio/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "com.android.media.audio.abs_volume_index_fix"

    invoke-virtual {p0, v1, v0}, Lcom/android/media/audio/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public alarmMinVolumeZero()Z
    .locals 2

    .line 29
    new-instance v0, Lcom/android/media/audio/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/media/audio/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "com.android.media.audio.alarm_min_volume_zero"

    invoke-virtual {p0, v1, v0}, Lcom/android/media/audio/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public asDeviceConnectionFailure()Z
    .locals 2

    .line 36
    new-instance v0, Lcom/android/media/audio/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/media/audio/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "com.android.media.audio.as_device_connection_failure"

    invoke-virtual {p0, v1, v0}, Lcom/android/media/audio/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public audioEraserEffect()Z
    .locals 2

    .line 43
    new-instance v0, Lcom/android/media/audio/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/media/audio/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "com.android.media.audio.audio_eraser_effect"

    invoke-virtual {p0, v1, v0}, Lcom/android/media/audio/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public audioserverPermissions()Z
    .locals 2

    .line 50
    new-instance v0, Lcom/android/media/audio/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/media/audio/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "com.android.media.audio.audioserver_permissions"

    invoke-virtual {p0, v1, v0}, Lcom/android/media/audio/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public bluetoothMacAddressAnonymization()Z
    .locals 2

    .line 57
    new-instance v0, Lcom/android/media/audio/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/media/audio/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "com.android.media.audio.bluetooth_mac_address_anonymization"

    invoke-virtual {p0, v1, v0}, Lcom/android/media/audio/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public deferWearPermissionUpdates()Z
    .locals 2

    .line 64
    new-instance v0, Lcom/android/media/audio/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/media/audio/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "com.android.media.audio.defer_wear_permission_updates"

    invoke-virtual {p0, v1, v0}, Lcom/android/media/audio/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public disablePrescaleAbsoluteVolume()Z
    .locals 2

    .line 71
    new-instance v0, Lcom/android/media/audio/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/media/audio/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "com.android.media.audio.disable_prescale_absolute_volume"

    invoke-virtual {p0, v1, v0}, Lcom/android/media/audio/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public dsaOverBtLeAudio()Z
    .locals 2

    .line 78
    new-instance v0, Lcom/android/media/audio/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/media/audio/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "com.android.media.audio.dsa_over_bt_le_audio"

    invoke-virtual {p0, v1, v0}, Lcom/android/media/audio/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public equalScoLeaVcIndexRange()Z
    .locals 2

    .line 85
    new-instance v0, Lcom/android/media/audio/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/media/audio/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "com.android.media.audio.equal_sco_lea_vc_index_range"

    invoke-virtual {p0, v1, v0}, Lcom/android/media/audio/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public getFlagNames()Ljava/util/List;
    .locals 27
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 219
    const-string v25, "com.android.media.audio.vgs_vss_sync_mute_order"

    const-string v26, "com.android.media.audio.volume_refactoring"

    const-string v1, "com.android.media.audio.abs_volume_index_fix"

    const-string v2, "com.android.media.audio.alarm_min_volume_zero"

    const-string v3, "com.android.media.audio.as_device_connection_failure"

    const-string v4, "com.android.media.audio.audio_eraser_effect"

    const-string v5, "com.android.media.audio.audioserver_permissions"

    const-string v6, "com.android.media.audio.bluetooth_mac_address_anonymization"

    const-string v7, "com.android.media.audio.defer_wear_permission_updates"

    const-string v8, "com.android.media.audio.disable_prescale_absolute_volume"

    const-string v9, "com.android.media.audio.dsa_over_bt_le_audio"

    const-string v10, "com.android.media.audio.equal_sco_lea_vc_index_range"

    const-string v11, "com.android.media.audio.hardening_impl"

    const-string v12, "com.android.media.audio.hardening_partial"

    const-string v13, "com.android.media.audio.hardening_partial_volume"

    const-string v14, "com.android.media.audio.hardening_strict"

    const-string v15, "com.android.media.audio.music_fx_edge_to_edge"

    const-string v16, "com.android.media.audio.optimize_bt_device_switch"

    const-string v17, "com.android.media.audio.port_to_piid_simplification"

    const-string v18, "com.android.media.audio.replace_stream_bt_sco"

    const-string v19, "com.android.media.audio.ring_my_car"

    const-string v20, "com.android.media.audio.ringer_mode_affects_alarm"

    const-string v21, "com.android.media.audio.set_stream_volume_order"

    const-string v22, "com.android.media.audio.spatializer_offload"

    const-string v23, "com.android.media.audio.spatializer_upmix"

    const-string v24, "com.android.media.audio.stereo_spatialization"

    filled-new-array/range {v1 .. v26}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z
    .locals 1
    .param p1, "flagName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/function/Predicate<",
            "Lcom/android/media/audio/FeatureFlags;",
            ">;)Z"
        }
    .end annotation

    .line 215
    .local p2, "getter":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/media/audio/FeatureFlags;>;"
    iget-object v0, p0, Lcom/android/media/audio/CustomFeatureFlags;->mGetValueImpl:Ljava/util/function/BiPredicate;

    invoke-interface {v0, p1, p2}, Ljava/util/function/BiPredicate;->test(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hardeningImpl()Z
    .locals 2

    .line 92
    new-instance v0, Lcom/android/media/audio/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/media/audio/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "com.android.media.audio.hardening_impl"

    invoke-virtual {p0, v1, v0}, Lcom/android/media/audio/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public hardeningPartial()Z
    .locals 2

    .line 99
    new-instance v0, Lcom/android/media/audio/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/media/audio/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "com.android.media.audio.hardening_partial"

    invoke-virtual {p0, v1, v0}, Lcom/android/media/audio/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public hardeningPartialVolume()Z
    .locals 2

    .line 106
    new-instance v0, Lcom/android/media/audio/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/media/audio/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "com.android.media.audio.hardening_partial_volume"

    invoke-virtual {p0, v1, v0}, Lcom/android/media/audio/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public hardeningStrict()Z
    .locals 2

    .line 113
    new-instance v0, Lcom/android/media/audio/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/media/audio/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "com.android.media.audio.hardening_strict"

    invoke-virtual {p0, v1, v0}, Lcom/android/media/audio/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public isFlagReadOnlyOptimized(Ljava/lang/String;)Z
    .locals 1
    .param p1, "flagName"    # Ljava/lang/String;

    .line 202
    iget-object v0, p0, Lcom/android/media/audio/CustomFeatureFlags;->mReadOnlyFlagsSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 203
    nop

    .line 204
    const/4 v0, 0x1

    return v0

    .line 206
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public musicFxEdgeToEdge()Z
    .locals 2

    .line 120
    new-instance v0, Lcom/android/media/audio/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/media/audio/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "com.android.media.audio.music_fx_edge_to_edge"

    invoke-virtual {p0, v1, v0}, Lcom/android/media/audio/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public optimizeBtDeviceSwitch()Z
    .locals 2

    .line 127
    new-instance v0, Lcom/android/media/audio/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/media/audio/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "com.android.media.audio.optimize_bt_device_switch"

    invoke-virtual {p0, v1, v0}, Lcom/android/media/audio/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public portToPiidSimplification()Z
    .locals 2

    .line 134
    new-instance v0, Lcom/android/media/audio/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/media/audio/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "com.android.media.audio.port_to_piid_simplification"

    invoke-virtual {p0, v1, v0}, Lcom/android/media/audio/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public replaceStreamBtSco()Z
    .locals 2

    .line 141
    new-instance v0, Lcom/android/media/audio/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/media/audio/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "com.android.media.audio.replace_stream_bt_sco"

    invoke-virtual {p0, v1, v0}, Lcom/android/media/audio/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public ringMyCar()Z
    .locals 2

    .line 148
    new-instance v0, Lcom/android/media/audio/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/media/audio/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "com.android.media.audio.ring_my_car"

    invoke-virtual {p0, v1, v0}, Lcom/android/media/audio/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public ringerModeAffectsAlarm()Z
    .locals 2

    .line 155
    new-instance v0, Lcom/android/media/audio/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/media/audio/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "com.android.media.audio.ringer_mode_affects_alarm"

    invoke-virtual {p0, v1, v0}, Lcom/android/media/audio/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public setStreamVolumeOrder()Z
    .locals 2

    .line 162
    new-instance v0, Lcom/android/media/audio/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/media/audio/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "com.android.media.audio.set_stream_volume_order"

    invoke-virtual {p0, v1, v0}, Lcom/android/media/audio/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public spatializerOffload()Z
    .locals 2

    .line 169
    new-instance v0, Lcom/android/media/audio/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/media/audio/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "com.android.media.audio.spatializer_offload"

    invoke-virtual {p0, v1, v0}, Lcom/android/media/audio/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public spatializerUpmix()Z
    .locals 2

    .line 176
    new-instance v0, Lcom/android/media/audio/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/media/audio/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "com.android.media.audio.spatializer_upmix"

    invoke-virtual {p0, v1, v0}, Lcom/android/media/audio/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public stereoSpatialization()Z
    .locals 2

    .line 183
    new-instance v0, Lcom/android/media/audio/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/media/audio/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "com.android.media.audio.stereo_spatialization"

    invoke-virtual {p0, v1, v0}, Lcom/android/media/audio/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public vgsVssSyncMuteOrder()Z
    .locals 2

    .line 190
    new-instance v0, Lcom/android/media/audio/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/media/audio/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "com.android.media.audio.vgs_vss_sync_mute_order"

    invoke-virtual {p0, v1, v0}, Lcom/android/media/audio/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public volumeRefactoring()Z
    .locals 2

    .line 197
    new-instance v0, Lcom/android/media/audio/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/media/audio/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "com.android.media.audio.volume_refactoring"

    invoke-virtual {p0, v1, v0}, Lcom/android/media/audio/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method
