.class public Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;
.super Ljava/lang/Object;
.source "GnssNative.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/gnss/hal/GnssNative;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GnssHal"
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 1393
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected addGeofence(IDDDIIII)Z
    .locals 1
    .param p1, "geofenceId"    # I
    .param p2, "latitude"    # D
    .param p4, "longitude"    # D
    .param p6, "radius"    # D
    .param p8, "lastTransition"    # I
    .param p9, "monitorTransitions"    # I
    .param p10, "notificationResponsiveness"    # I
    .param p11, "unknownTimer"    # I

    .line 1562
    invoke-static/range {p1 .. p11}, Lcom/android/server/location/gnss/hal/GnssNative;->-$$Nest$smnative_add_geofence(IDDDIIII)Z

    move-result v0

    return v0
.end method

.method protected classInitOnce()V
    .locals 0

    .line 1396
    invoke-static {}, Lcom/android/server/location/gnss/hal/GnssNative;->-$$Nest$smnative_class_init_once()V

    .line 1397
    return-void
.end method

.method protected cleanup()V
    .locals 0

    .line 1412
    invoke-static {}, Lcom/android/server/location/gnss/hal/GnssNative;->-$$Nest$smnative_cleanup()V

    .line 1413
    return-void
.end method

.method protected cleanupBatching()V
    .locals 0

    .line 1539
    invoke-static {}, Lcom/android/server/location/gnss/hal/GnssNative;->-$$Nest$smnative_cleanup_batching()V

    .line 1540
    return-void
.end method

.method protected deleteAidingData(I)V
    .locals 0
    .param p1, "flags"    # I

    .line 1435
    invoke-static {p1}, Lcom/android/server/location/gnss/hal/GnssNative;->-$$Nest$smnative_delete_aiding_data(I)V

    .line 1436
    return-void
.end method

.method protected flushBatch()V
    .locals 0

    .line 1548
    invoke-static {}, Lcom/android/server/location/gnss/hal/GnssNative;->-$$Nest$smnative_flush_batch()V

    .line 1549
    return-void
.end method

.method protected getBatchSize()I
    .locals 1

    .line 1531
    invoke-static {}, Lcom/android/server/location/gnss/hal/GnssNative;->-$$Nest$smnative_get_batch_size()I

    move-result v0

    return v0
.end method

.method protected getInternalState()Ljava/lang/String;
    .locals 1

    .line 1431
    invoke-static {}, Lcom/android/server/location/gnss/hal/GnssNative;->-$$Nest$smnative_get_internal_state()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected init()Z
    .locals 1

    .line 1408
    invoke-static {}, Lcom/android/server/location/gnss/hal/GnssNative;->-$$Nest$smnative_init()Z

    move-result v0

    return v0
.end method

.method protected initBatching()Z
    .locals 1

    .line 1535
    invoke-static {}, Lcom/android/server/location/gnss/hal/GnssNative;->-$$Nest$smnative_init_batching()Z

    move-result v0

    return v0
.end method

.method protected initOnce(Lcom/android/server/location/gnss/hal/GnssNative;Z)V
    .locals 0
    .param p1, "gnssNative"    # Lcom/android/server/location/gnss/hal/GnssNative;
    .param p2, "reinitializeGnssServiceHandle"    # Z

    .line 1404
    invoke-static {p1, p2}, Lcom/android/server/location/gnss/hal/GnssNative;->-$$Nest$mnative_init_once(Lcom/android/server/location/gnss/hal/GnssNative;Z)V

    .line 1405
    return-void
.end method

.method protected injectBestLocation(IDDDFFFFFFJIJD)V
    .locals 0
    .param p1, "gnssLocationFlags"    # I
    .param p2, "latitude"    # D
    .param p4, "longitude"    # D
    .param p6, "altitude"    # D
    .param p8, "speed"    # F
    .param p9, "bearing"    # F
    .param p10, "horizontalAccuracy"    # F
    .param p11, "verticalAccuracy"    # F
    .param p12, "speedAccuracy"    # F
    .param p13, "bearingAccuracy"    # F
    .param p14, "timestamp"    # J
    .param p16, "elapsedRealtimeFlags"    # I
    .param p17, "elapsedRealtimeNanos"    # J
    .param p19, "elapsedRealtimeUncertaintyNanos"    # D

    .line 1458
    invoke-static/range {p1 .. p20}, Lcom/android/server/location/gnss/hal/GnssNative;->-$$Nest$smnative_inject_best_location(IDDDFFFFFFJIJD)V

    .line 1462
    return-void
.end method

.method protected injectGnssAssistance(Landroid/location/GnssAssistance;)V
    .locals 0
    .param p1, "gnssAssistance"    # Landroid/location/GnssAssistance;

    .line 1612
    invoke-static {p1}, Lcom/android/server/location/gnss/hal/GnssNative;->-$$Nest$smnative_inject_gnss_assistance(Landroid/location/GnssAssistance;)V

    .line 1613
    return-void
.end method

.method protected injectLocation(IDDDFFFFFFJIJD)V
    .locals 0
    .param p1, "gnssLocationFlags"    # I
    .param p2, "latitude"    # D
    .param p4, "longitude"    # D
    .param p6, "altitude"    # D
    .param p8, "speed"    # F
    .param p9, "bearing"    # F
    .param p10, "horizontalAccuracy"    # F
    .param p11, "verticalAccuracy"    # F
    .param p12, "speedAccuracy"    # F
    .param p13, "bearingAccuracy"    # F
    .param p14, "timestamp"    # J
    .param p16, "elapsedRealtimeFlags"    # I
    .param p17, "elapsedRealtimeNanos"    # J
    .param p19, "elapsedRealtimeUncertaintyNanos"    # D

    .line 1447
    invoke-static/range {p1 .. p20}, Lcom/android/server/location/gnss/hal/GnssNative;->-$$Nest$smnative_inject_location(IDDDFFFFFFJIJD)V

    .line 1451
    return-void
.end method

.method protected injectMeasurementCorrections(Landroid/location/GnssMeasurementCorrections;)Z
    .locals 1
    .param p1, "corrections"    # Landroid/location/GnssMeasurementCorrections;

    .line 1511
    invoke-static {p1}, Lcom/android/server/location/gnss/hal/GnssNative;->-$$Nest$smnative_inject_measurement_corrections(Landroid/location/GnssMeasurementCorrections;)Z

    move-result v0

    return v0
.end method

.method protected injectNiSuplMessageData([BII)V
    .locals 0
    .param p1, "data"    # [B
    .param p2, "length"    # I
    .param p3, "slotIndex"    # I

    .line 1608
    invoke-static {p1, p2, p3}, Lcom/android/server/location/gnss/hal/GnssNative;->-$$Nest$smnative_inject_ni_supl_message_data([BII)V

    .line 1609
    return-void
.end method

.method protected injectPsdsData([BII)V
    .locals 0
    .param p1, "data"    # [B
    .param p2, "length"    # I
    .param p3, "psdsType"    # I

    .line 1604
    invoke-static {p1, p2, p3}, Lcom/android/server/location/gnss/hal/GnssNative;->-$$Nest$smnative_inject_psds_data([BII)V

    .line 1605
    return-void
.end method

.method protected injectTime(JJI)V
    .locals 0
    .param p1, "time"    # J
    .param p3, "timeReference"    # J
    .param p5, "uncertainty"    # I

    .line 1465
    invoke-static {p1, p2, p3, p4, p5}, Lcom/android/server/location/gnss/hal/GnssNative;->-$$Nest$smnative_inject_time(JJI)V

    .line 1466
    return-void
.end method

.method protected isAntennaInfoSupported()Z
    .locals 1

    .line 1481
    invoke-static {}, Lcom/android/server/location/gnss/hal/GnssNative;->-$$Nest$smnative_is_antenna_info_supported()Z

    move-result v0

    return v0
.end method

.method protected isGeofencingSupported()Z
    .locals 1

    .line 1556
    invoke-static {}, Lcom/android/server/location/gnss/hal/GnssNative;->-$$Nest$smnative_is_geofence_supported()Z

    move-result v0

    return v0
.end method

.method protected isGnssVisibilityControlSupported()Z
    .locals 1

    .line 1579
    invoke-static {}, Lcom/android/server/location/gnss/hal/GnssNative;->-$$Nest$smnative_is_gnss_visibility_control_supported()Z

    move-result v0

    return v0
.end method

.method protected isMeasurementCorrectionsSupported()Z
    .locals 1

    .line 1507
    invoke-static {}, Lcom/android/server/location/gnss/hal/GnssNative;->-$$Nest$smnative_is_measurement_corrections_supported()Z

    move-result v0

    return v0
.end method

.method protected isMeasurementSupported()Z
    .locals 1

    .line 1493
    invoke-static {}, Lcom/android/server/location/gnss/hal/GnssNative;->-$$Nest$smnative_is_measurement_supported()Z

    move-result v0

    return v0
.end method

.method protected isNavigationMessageCollectionSupported()Z
    .locals 1

    .line 1469
    invoke-static {}, Lcom/android/server/location/gnss/hal/GnssNative;->-$$Nest$smnative_is_navigation_message_supported()Z

    move-result v0

    return v0
.end method

.method protected isPsdsSupported()Z
    .locals 1

    .line 1600
    invoke-static {}, Lcom/android/server/location/gnss/hal/GnssNative;->-$$Nest$smnative_supports_psds()Z

    move-result v0

    return v0
.end method

.method protected isSupported()Z
    .locals 1

    .line 1400
    invoke-static {}, Lcom/android/server/location/gnss/hal/GnssNative;->-$$Nest$smnative_is_supported()Z

    move-result v0

    return v0
.end method

.method protected pauseGeofence(I)Z
    .locals 1
    .param p1, "geofenceId"    # I

    .line 1571
    invoke-static {p1}, Lcom/android/server/location/gnss/hal/GnssNative;->-$$Nest$smnative_pause_geofence(I)Z

    move-result v0

    return v0
.end method

.method protected readNmea([BI)I
    .locals 1
    .param p1, "buffer"    # [B
    .param p2, "bufferSize"    # I

    .line 1439
    invoke-static {p1, p2}, Lcom/android/server/location/gnss/hal/GnssNative;->-$$Nest$smnative_read_nmea([BI)I

    move-result v0

    return v0
.end method

.method protected removeGeofence(I)Z
    .locals 1
    .param p1, "geofenceId"    # I

    .line 1575
    invoke-static {p1}, Lcom/android/server/location/gnss/hal/GnssNative;->-$$Nest$smnative_remove_geofence(I)Z

    move-result v0

    return v0
.end method

.method protected requestPowerStats()V
    .locals 0

    .line 1583
    invoke-static {}, Lcom/android/server/location/gnss/hal/GnssNative;->-$$Nest$smnative_request_power_stats()V

    .line 1584
    return-void
.end method

.method protected resumeGeofence(II)Z
    .locals 1
    .param p1, "geofenceId"    # I
    .param p2, "monitorTransitions"    # I

    .line 1567
    invoke-static {p1, p2}, Lcom/android/server/location/gnss/hal/GnssNative;->-$$Nest$smnative_resume_geofence(II)Z

    move-result v0

    return v0
.end method

.method protected setAgpsReferenceLocationCellId(IIIIJIII)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "mcc"    # I
    .param p3, "mnc"    # I
    .param p4, "lac"    # I
    .param p5, "cid"    # J
    .param p7, "tac"    # I
    .param p8, "pcid"    # I
    .param p9, "arfcn"    # I

    .line 1596
    invoke-static/range {p1 .. p9}, Lcom/android/server/location/gnss/hal/GnssNative;->-$$Nest$smnative_agps_set_ref_location_cellid(IIIIJIII)V

    .line 1597
    return-void
.end method

.method protected setAgpsServer(ILjava/lang/String;I)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "hostname"    # Ljava/lang/String;
    .param p3, "port"    # I

    .line 1587
    invoke-static {p1, p2, p3}, Lcom/android/server/location/gnss/hal/GnssNative;->-$$Nest$smnative_set_agps_server(ILjava/lang/String;I)V

    .line 1588
    return-void
.end method

.method protected setAgpsSetId(ILjava/lang/String;)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "setId"    # Ljava/lang/String;

    .line 1591
    invoke-static {p1, p2}, Lcom/android/server/location/gnss/hal/GnssNative;->-$$Nest$smnative_agps_set_id(ILjava/lang/String;)V

    .line 1592
    return-void
.end method

.method protected setPositionMode(IIIIIZ)Z
    .locals 1
    .param p1, "mode"    # I
    .param p2, "recurrence"    # I
    .param p3, "minInterval"    # I
    .param p4, "preferredAccuracy"    # I
    .param p5, "preferredTime"    # I
    .param p6, "lowPowerMode"    # Z

    .line 1426
    invoke-static/range {p1 .. p6}, Lcom/android/server/location/gnss/hal/GnssNative;->-$$Nest$smnative_set_position_mode(IIIIIZ)Z

    move-result v0

    return v0
.end method

.method protected start()Z
    .locals 1

    .line 1416
    invoke-static {}, Lcom/android/server/location/gnss/hal/GnssNative;->-$$Nest$smnative_start()Z

    move-result v0

    return v0
.end method

.method protected startAntennaInfoListening()Z
    .locals 1

    .line 1485
    invoke-static {}, Lcom/android/server/location/gnss/hal/GnssNative;->-$$Nest$smnative_start_antenna_info_listening()Z

    move-result v0

    return v0
.end method

.method protected startBatch(JFZ)Z
    .locals 1
    .param p1, "periodNanos"    # J
    .param p3, "minUpdateDistanceMeters"    # F
    .param p4, "wakeOnFifoFull"    # Z

    .line 1544
    invoke-static {p1, p2, p3, p4}, Lcom/android/server/location/gnss/hal/GnssNative;->-$$Nest$smnative_start_batch(JFZ)Z

    move-result v0

    return v0
.end method

.method protected startMeasurementCollection(ZZI)Z
    .locals 1
    .param p1, "enableFullTracking"    # Z
    .param p2, "enableCorrVecOutputs"    # Z
    .param p3, "intervalMillis"    # I

    .line 1498
    invoke-static {p1, p2, p3}, Lcom/android/server/location/gnss/hal/GnssNative;->-$$Nest$smnative_start_measurement_collection(ZZI)Z

    move-result v0

    return v0
.end method

.method protected startNavigationMessageCollection()Z
    .locals 1

    .line 1473
    invoke-static {}, Lcom/android/server/location/gnss/hal/GnssNative;->-$$Nest$smnative_start_navigation_message_collection()Z

    move-result v0

    return v0
.end method

.method protected startNmeaMessageCollection()Z
    .locals 1

    .line 1523
    invoke-static {}, Lcom/android/server/location/gnss/hal/GnssNative;->-$$Nest$smnative_start_nmea_message_collection()Z

    move-result v0

    return v0
.end method

.method protected startSvStatusCollection()Z
    .locals 1

    .line 1515
    invoke-static {}, Lcom/android/server/location/gnss/hal/GnssNative;->-$$Nest$smnative_start_sv_status_collection()Z

    move-result v0

    return v0
.end method

.method protected stop()Z
    .locals 1

    .line 1420
    invoke-static {}, Lcom/android/server/location/gnss/hal/GnssNative;->-$$Nest$smnative_stop()Z

    move-result v0

    return v0
.end method

.method protected stopAntennaInfoListening()Z
    .locals 1

    .line 1489
    invoke-static {}, Lcom/android/server/location/gnss/hal/GnssNative;->-$$Nest$smnative_stop_antenna_info_listening()Z

    move-result v0

    return v0
.end method

.method protected stopBatch()V
    .locals 0

    .line 1552
    invoke-static {}, Lcom/android/server/location/gnss/hal/GnssNative;->-$$Nest$smnative_stop_batch()Z

    .line 1553
    return-void
.end method

.method protected stopMeasurementCollection()Z
    .locals 1

    .line 1503
    invoke-static {}, Lcom/android/server/location/gnss/hal/GnssNative;->-$$Nest$smnative_stop_measurement_collection()Z

    move-result v0

    return v0
.end method

.method protected stopNavigationMessageCollection()Z
    .locals 1

    .line 1477
    invoke-static {}, Lcom/android/server/location/gnss/hal/GnssNative;->-$$Nest$smnative_stop_navigation_message_collection()Z

    move-result v0

    return v0
.end method

.method protected stopNmeaMessageCollection()Z
    .locals 1

    .line 1527
    invoke-static {}, Lcom/android/server/location/gnss/hal/GnssNative;->-$$Nest$smnative_stop_nmea_message_collection()Z

    move-result v0

    return v0
.end method

.method protected stopSvStatusCollection()Z
    .locals 1

    .line 1519
    invoke-static {}, Lcom/android/server/location/gnss/hal/GnssNative;->-$$Nest$smnative_stop_sv_status_collection()Z

    move-result v0

    return v0
.end method
