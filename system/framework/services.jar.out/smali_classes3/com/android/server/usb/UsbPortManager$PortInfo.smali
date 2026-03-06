.class public final Lcom/android/server/usb/UsbPortManager$PortInfo;
.super Ljava/lang/Object;
.source "UsbPortManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usb/UsbPortManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PortInfo"
.end annotation


# static fields
.field public static final ALTMODE_INFO_CHANGED:I = 0x1

.field public static final ALTMODE_INFO_UNCHANGED:I = 0x0

.field public static final COMPLIANCE_WARNING_CHANGED:I = 0x1

.field public static final COMPLIANCE_WARNING_UNCHANGED:I = 0x0

.field public static final DISPOSITION_ADDED:I = 0x0

.field public static final DISPOSITION_CHANGED:I = 0x1

.field public static final DISPOSITION_READY:I = 0x2

.field public static final DISPOSITION_REMOVED:I = 0x3


# instance fields
.field public mCanChangeDataRole:Z

.field public mCanChangeMode:Z

.field public mCanChangePowerRole:Z

.field public mComplianceWarningChange:I

.field public mConnectedAtMillis:J

.field public mDisplayPortAltModeChange:I

.field public mDisposition:I

.field public mLastConnectDurationMillis:J

.field public final mUsbPort:Landroid/hardware/usb/UsbPort;

.field public mUsbPortStatus:Landroid/hardware/usb/UsbPortStatus;


# direct methods
.method constructor <init>(Landroid/hardware/usb/UsbManager;Ljava/lang/String;IIZZZI)V
    .locals 9
    .param p1, "usbManager"    # Landroid/hardware/usb/UsbManager;
    .param p2, "portId"    # Ljava/lang/String;
    .param p3, "supportedModes"    # I
    .param p4, "supportedContaminantProtectionModes"    # I
    .param p5, "supportsEnableContaminantPresenceDetection"    # Z
    .param p6, "supportsEnableContaminantPresenceProtection"    # Z
    .param p7, "supportsComplianceWarnings"    # Z
    .param p8, "supportedAltModes"    # I

    .line 1510
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1511
    new-instance v0, Landroid/hardware/usb/UsbPort;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-direct/range {v0 .. v8}, Landroid/hardware/usb/UsbPort;-><init>(Landroid/hardware/usb/UsbManager;Ljava/lang/String;IIZZZI)V

    iput-object v0, p0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPort:Landroid/hardware/usb/UsbPort;

    .line 1517
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mComplianceWarningChange:I

    .line 1518
    iput v0, p0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mDisplayPortAltModeChange:I

    .line 1519
    return-void
.end method


# virtual methods
.method public complianceWarningsChanged([I)Z
    .locals 1
    .param p1, "complianceWarnings"    # [I

    .line 1522
    iget-object v0, p0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPortStatus:Landroid/hardware/usb/UsbPortStatus;

    invoke-virtual {v0}, Landroid/hardware/usb/UsbPortStatus;->getComplianceWarnings()[I

    move-result-object v0

    invoke-static {p1, v0}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1523
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mComplianceWarningChange:I

    .line 1524
    return v0

    .line 1526
    :cond_0
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mComplianceWarningChange:I

    .line 1527
    return v0
.end method

.method public displayPortAltModeChanged(Landroid/hardware/usb/DisplayPortAltModeInfo;)Z
    .locals 4
    .param p1, "displayPortAltModeInfo"    # Landroid/hardware/usb/DisplayPortAltModeInfo;

    .line 1532
    iget-object v0, p0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPortStatus:Landroid/hardware/usb/UsbPortStatus;

    .line 1533
    invoke-virtual {v0}, Landroid/hardware/usb/UsbPortStatus;->getDisplayPortAltModeInfo()Landroid/hardware/usb/DisplayPortAltModeInfo;

    move-result-object v0

    .line 1535
    .local v0, "currentDisplayPortAltModeInfo":Landroid/hardware/usb/DisplayPortAltModeInfo;
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mDisplayPortAltModeChange:I

    .line 1537
    const/4 v2, 0x1

    if-nez p1, :cond_0

    if-eqz v0, :cond_0

    .line 1539
    iput v2, p0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mDisplayPortAltModeChange:I

    .line 1540
    return v2

    .line 1543
    :cond_0
    if-nez v0, :cond_2

    .line 1544
    if-eqz p1, :cond_1

    .line 1545
    iput v2, p0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mDisplayPortAltModeChange:I

    .line 1546
    return v2

    .line 1548
    :cond_1
    return v1

    .line 1551
    :cond_2
    invoke-virtual {v0, p1}, Landroid/hardware/usb/DisplayPortAltModeInfo;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 1552
    iput v2, p0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mDisplayPortAltModeChange:I

    .line 1553
    return v2

    .line 1555
    :cond_3
    return v1
.end method

.method dump(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;J)V
    .locals 8
    .param p1, "dump"    # Lcom/android/internal/util/dump/DualDumpOutputStream;
    .param p2, "idName"    # Ljava/lang/String;
    .param p3, "id"    # J

    .line 1709
    invoke-virtual/range {p1 .. p4}, Lcom/android/internal/util/dump/DualDumpOutputStream;->start(Ljava/lang/String;J)J

    move-result-wide v6

    .line 1711
    .local v6, "token":J
    const-wide v1, 0x10b00000001L

    iget-object v3, p0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPort:Landroid/hardware/usb/UsbPort;

    const-string v4, "port"

    invoke-static {p1, v4, v1, v2, v3}, Lcom/android/internal/usb/DumpUtils;->writePort(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;JLandroid/hardware/usb/UsbPort;)V

    .line 1712
    const-wide v1, 0x10b00000002L

    iget-object v3, p0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPortStatus:Landroid/hardware/usb/UsbPortStatus;

    const-string v4, "status"

    invoke-static {p1, v4, v1, v2, v3}, Lcom/android/internal/usb/DumpUtils;->writePortStatus(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;JLandroid/hardware/usb/UsbPortStatus;)V

    .line 1713
    const-wide v1, 0x10800000003L

    iget-boolean v3, p0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mCanChangeMode:Z

    const-string v4, "can_change_mode"

    invoke-virtual {p1, v4, v1, v2, v3}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JZ)V

    .line 1714
    const-wide v1, 0x10800000004L

    iget-boolean v3, p0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mCanChangePowerRole:Z

    const-string v4, "can_change_power_role"

    invoke-virtual {p1, v4, v1, v2, v3}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JZ)V

    .line 1716
    const-wide v1, 0x10800000005L

    iget-boolean v3, p0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mCanChangeDataRole:Z

    const-string v4, "can_change_data_role"

    invoke-virtual {p1, v4, v1, v2, v3}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JZ)V

    .line 1718
    const-wide v2, 0x10300000006L

    iget-wide v4, p0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mConnectedAtMillis:J

    const-string v1, "connected_at_millis"

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JJ)V

    .line 1720
    const-wide v2, 0x10300000007L

    iget-wide v4, p0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mLastConnectDurationMillis:J

    const-string v1, "last_connect_duration_millis"

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JJ)V

    .line 1722
    invoke-virtual {p1, v6, v7}, Lcom/android/internal/util/dump/DualDumpOutputStream;->end(J)V

    .line 1723
    return-void
.end method

.method public setStatus(IZIZIZI)Z
    .locals 19
    .param p1, "currentMode"    # I
    .param p2, "canChangeMode"    # Z
    .param p3, "currentPowerRole"    # I
    .param p4, "canChangePowerRole"    # Z
    .param p5, "currentDataRole"    # I
    .param p6, "canChangeDataRole"    # Z
    .param p7, "supportedRoleCombinations"    # I

    .line 1562
    move-object/from16 v0, p0

    const/4 v1, 0x0

    .line 1564
    .local v1, "dispositionChanged":Z
    move/from16 v2, p2

    iput-boolean v2, v0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mCanChangeMode:Z

    .line 1565
    move/from16 v3, p4

    iput-boolean v3, v0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mCanChangePowerRole:Z

    .line 1566
    move/from16 v4, p6

    iput-boolean v4, v0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mCanChangeDataRole:Z

    .line 1567
    iget-object v5, v0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPortStatus:Landroid/hardware/usb/UsbPortStatus;

    if-eqz v5, :cond_3

    iget-object v5, v0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPortStatus:Landroid/hardware/usb/UsbPortStatus;

    .line 1568
    invoke-virtual {v5}, Landroid/hardware/usb/UsbPortStatus;->getCurrentMode()I

    move-result v5

    move/from16 v7, p1

    if-ne v5, v7, :cond_2

    iget-object v5, v0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPortStatus:Landroid/hardware/usb/UsbPortStatus;

    .line 1569
    invoke-virtual {v5}, Landroid/hardware/usb/UsbPortStatus;->getCurrentPowerRole()I

    move-result v5

    move/from16 v8, p3

    if-ne v5, v8, :cond_1

    iget-object v5, v0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPortStatus:Landroid/hardware/usb/UsbPortStatus;

    .line 1570
    invoke-virtual {v5}, Landroid/hardware/usb/UsbPortStatus;->getCurrentDataRole()I

    move-result v5

    move/from16 v9, p5

    if-ne v5, v9, :cond_0

    iget-object v5, v0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPortStatus:Landroid/hardware/usb/UsbPortStatus;

    .line 1571
    invoke-virtual {v5}, Landroid/hardware/usb/UsbPortStatus;->getSupportedRoleCombinations()I

    move-result v5

    move/from16 v10, p7

    if-eq v5, v10, :cond_4

    goto :goto_0

    .line 1570
    :cond_0
    move/from16 v10, p7

    goto :goto_0

    .line 1569
    :cond_1
    move/from16 v9, p5

    move/from16 v10, p7

    goto :goto_0

    .line 1568
    :cond_2
    move/from16 v8, p3

    move/from16 v9, p5

    move/from16 v10, p7

    goto :goto_0

    .line 1567
    :cond_3
    move/from16 v7, p1

    move/from16 v8, p3

    move/from16 v9, p5

    move/from16 v10, p7

    .line 1573
    :goto_0
    new-instance v6, Landroid/hardware/usb/UsbPortStatus;

    const/4 v5, 0x0

    new-array v5, v5, [I

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v16, v5

    invoke-direct/range {v6 .. v18}, Landroid/hardware/usb/UsbPortStatus;-><init>(IIIIIIIZI[IILandroid/hardware/usb/DisplayPortAltModeInfo;)V

    iput-object v6, v0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPortStatus:Landroid/hardware/usb/UsbPortStatus;

    .line 1579
    const/4 v1, 0x1

    .line 1582
    :cond_4
    iget-object v5, v0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPortStatus:Landroid/hardware/usb/UsbPortStatus;

    invoke-virtual {v5}, Landroid/hardware/usb/UsbPortStatus;->isConnected()Z

    move-result v5

    const-wide/16 v6, 0x0

    if-eqz v5, :cond_5

    iget-wide v8, v0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mConnectedAtMillis:J

    cmp-long v5, v8, v6

    if-nez v5, :cond_5

    .line 1583
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    iput-wide v8, v0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mConnectedAtMillis:J

    .line 1584
    iput-wide v6, v0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mLastConnectDurationMillis:J

    goto :goto_1

    .line 1585
    :cond_5
    iget-object v5, v0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPortStatus:Landroid/hardware/usb/UsbPortStatus;

    invoke-virtual {v5}, Landroid/hardware/usb/UsbPortStatus;->isConnected()Z

    move-result v5

    if-nez v5, :cond_6

    iget-wide v8, v0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mConnectedAtMillis:J

    cmp-long v5, v8, v6

    if-eqz v5, :cond_6

    .line 1586
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    iget-wide v10, v0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mConnectedAtMillis:J

    sub-long/2addr v8, v10

    iput-wide v8, v0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mLastConnectDurationMillis:J

    .line 1587
    iput-wide v6, v0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mConnectedAtMillis:J

    .line 1590
    :cond_6
    :goto_1
    return v1
.end method

.method public setStatus(IZIZIZIIIIZI)Z
    .locals 19
    .param p1, "currentMode"    # I
    .param p2, "canChangeMode"    # Z
    .param p3, "currentPowerRole"    # I
    .param p4, "canChangePowerRole"    # Z
    .param p5, "currentDataRole"    # I
    .param p6, "canChangeDataRole"    # Z
    .param p7, "supportedRoleCombinations"    # I
    .param p8, "contaminantProtectionStatus"    # I
    .param p9, "contaminantDetectionStatus"    # I
    .param p10, "usbDataStatus"    # I
    .param p11, "powerTransferLimited"    # Z
    .param p12, "powerBrickConnectionStatus"    # I

    .line 1599
    move-object/from16 v0, p0

    const/4 v1, 0x0

    .line 1601
    .local v1, "dispositionChanged":Z
    move/from16 v2, p2

    iput-boolean v2, v0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mCanChangeMode:Z

    .line 1602
    move/from16 v3, p4

    iput-boolean v3, v0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mCanChangePowerRole:Z

    .line 1603
    move/from16 v4, p6

    iput-boolean v4, v0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mCanChangeDataRole:Z

    .line 1604
    iget-object v5, v0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPortStatus:Landroid/hardware/usb/UsbPortStatus;

    if-eqz v5, :cond_8

    iget-object v5, v0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPortStatus:Landroid/hardware/usb/UsbPortStatus;

    .line 1605
    invoke-virtual {v5}, Landroid/hardware/usb/UsbPortStatus;->getCurrentMode()I

    move-result v5

    move/from16 v7, p1

    if-ne v5, v7, :cond_7

    iget-object v5, v0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPortStatus:Landroid/hardware/usb/UsbPortStatus;

    .line 1606
    invoke-virtual {v5}, Landroid/hardware/usb/UsbPortStatus;->getCurrentPowerRole()I

    move-result v5

    move/from16 v8, p3

    if-ne v5, v8, :cond_6

    iget-object v5, v0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPortStatus:Landroid/hardware/usb/UsbPortStatus;

    .line 1607
    invoke-virtual {v5}, Landroid/hardware/usb/UsbPortStatus;->getCurrentDataRole()I

    move-result v5

    move/from16 v9, p5

    if-ne v5, v9, :cond_5

    iget-object v5, v0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPortStatus:Landroid/hardware/usb/UsbPortStatus;

    .line 1608
    invoke-virtual {v5}, Landroid/hardware/usb/UsbPortStatus;->getSupportedRoleCombinations()I

    move-result v5

    move/from16 v10, p7

    if-ne v5, v10, :cond_4

    iget-object v5, v0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPortStatus:Landroid/hardware/usb/UsbPortStatus;

    .line 1610
    invoke-virtual {v5}, Landroid/hardware/usb/UsbPortStatus;->getContaminantProtectionStatus()I

    move-result v5

    move/from16 v11, p8

    if-ne v5, v11, :cond_3

    iget-object v5, v0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPortStatus:Landroid/hardware/usb/UsbPortStatus;

    .line 1612
    invoke-virtual {v5}, Landroid/hardware/usb/UsbPortStatus;->getContaminantDetectionStatus()I

    move-result v5

    move/from16 v12, p9

    if-ne v5, v12, :cond_2

    iget-object v5, v0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPortStatus:Landroid/hardware/usb/UsbPortStatus;

    .line 1614
    invoke-virtual {v5}, Landroid/hardware/usb/UsbPortStatus;->getUsbDataStatus()I

    move-result v5

    move/from16 v13, p10

    if-ne v5, v13, :cond_1

    iget-object v5, v0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPortStatus:Landroid/hardware/usb/UsbPortStatus;

    .line 1616
    invoke-virtual {v5}, Landroid/hardware/usb/UsbPortStatus;->isPowerTransferLimited()Z

    move-result v5

    move/from16 v14, p11

    if-ne v5, v14, :cond_0

    iget-object v5, v0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPortStatus:Landroid/hardware/usb/UsbPortStatus;

    .line 1618
    invoke-virtual {v5}, Landroid/hardware/usb/UsbPortStatus;->getPowerBrickConnectionStatus()I

    move-result v5

    move/from16 v15, p12

    if-eq v5, v15, :cond_9

    goto/16 :goto_0

    .line 1616
    :cond_0
    move/from16 v15, p12

    goto/16 :goto_0

    .line 1614
    :cond_1
    move/from16 v14, p11

    move/from16 v15, p12

    goto/16 :goto_0

    .line 1612
    :cond_2
    move/from16 v13, p10

    move/from16 v14, p11

    move/from16 v15, p12

    goto/16 :goto_0

    .line 1610
    :cond_3
    move/from16 v12, p9

    move/from16 v13, p10

    move/from16 v14, p11

    move/from16 v15, p12

    goto :goto_0

    .line 1608
    :cond_4
    move/from16 v11, p8

    move/from16 v12, p9

    move/from16 v13, p10

    move/from16 v14, p11

    move/from16 v15, p12

    goto :goto_0

    .line 1607
    :cond_5
    move/from16 v10, p7

    move/from16 v11, p8

    move/from16 v12, p9

    move/from16 v13, p10

    move/from16 v14, p11

    move/from16 v15, p12

    goto :goto_0

    .line 1606
    :cond_6
    move/from16 v9, p5

    move/from16 v10, p7

    move/from16 v11, p8

    move/from16 v12, p9

    move/from16 v13, p10

    move/from16 v14, p11

    move/from16 v15, p12

    goto :goto_0

    .line 1605
    :cond_7
    move/from16 v8, p3

    move/from16 v9, p5

    move/from16 v10, p7

    move/from16 v11, p8

    move/from16 v12, p9

    move/from16 v13, p10

    move/from16 v14, p11

    move/from16 v15, p12

    goto :goto_0

    .line 1604
    :cond_8
    move/from16 v7, p1

    move/from16 v8, p3

    move/from16 v9, p5

    move/from16 v10, p7

    move/from16 v11, p8

    move/from16 v12, p9

    move/from16 v13, p10

    move/from16 v14, p11

    move/from16 v15, p12

    .line 1620
    :goto_0
    new-instance v6, Landroid/hardware/usb/UsbPortStatus;

    const/4 v5, 0x0

    new-array v5, v5, [I

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v16, v5

    invoke-direct/range {v6 .. v18}, Landroid/hardware/usb/UsbPortStatus;-><init>(IIIIIIIZI[IILandroid/hardware/usb/DisplayPortAltModeInfo;)V

    iput-object v6, v0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPortStatus:Landroid/hardware/usb/UsbPortStatus;

    .line 1625
    const/4 v1, 0x1

    .line 1628
    :cond_9
    iget-object v5, v0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPortStatus:Landroid/hardware/usb/UsbPortStatus;

    invoke-virtual {v5}, Landroid/hardware/usb/UsbPortStatus;->isConnected()Z

    move-result v5

    const-wide/16 v6, 0x0

    if-eqz v5, :cond_a

    iget-wide v8, v0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mConnectedAtMillis:J

    cmp-long v5, v8, v6

    if-nez v5, :cond_a

    .line 1629
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    iput-wide v8, v0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mConnectedAtMillis:J

    .line 1630
    iput-wide v6, v0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mLastConnectDurationMillis:J

    goto :goto_1

    .line 1631
    :cond_a
    iget-object v5, v0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPortStatus:Landroid/hardware/usb/UsbPortStatus;

    invoke-virtual {v5}, Landroid/hardware/usb/UsbPortStatus;->isConnected()Z

    move-result v5

    if-nez v5, :cond_b

    iget-wide v8, v0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mConnectedAtMillis:J

    cmp-long v5, v8, v6

    if-eqz v5, :cond_b

    .line 1632
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    iget-wide v10, v0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mConnectedAtMillis:J

    sub-long/2addr v8, v10

    iput-wide v8, v0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mLastConnectDurationMillis:J

    .line 1633
    iput-wide v6, v0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mConnectedAtMillis:J

    .line 1636
    :cond_b
    :goto_1
    return v1
.end method

.method public setStatus(IZIZIZIIIIZI[IILandroid/hardware/usb/DisplayPortAltModeInfo;)Z
    .locals 17
    .param p1, "currentMode"    # I
    .param p2, "canChangeMode"    # Z
    .param p3, "currentPowerRole"    # I
    .param p4, "canChangePowerRole"    # Z
    .param p5, "currentDataRole"    # I
    .param p6, "canChangeDataRole"    # Z
    .param p7, "supportedRoleCombinations"    # I
    .param p8, "contaminantProtectionStatus"    # I
    .param p9, "contaminantDetectionStatus"    # I
    .param p10, "usbDataStatus"    # I
    .param p11, "powerTransferLimited"    # Z
    .param p12, "powerBrickConnectionStatus"    # I
    .param p13, "complianceWarnings"    # [I
    .param p14, "plugState"    # I
    .param p15, "displayPortAltModeInfo"    # Landroid/hardware/usb/DisplayPortAltModeInfo;

    .line 1647
    move-object/from16 v0, p0

    move-object/from16 v11, p13

    const/4 v14, 0x0

    .line 1648
    .local v14, "dispositionChanged":Z
    const/4 v1, 0x0

    .line 1649
    .local v1, "complianceChanged":Z
    const/4 v2, 0x0

    .line 1651
    .local v2, "displayPortChanged":Z
    iget-object v3, v0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPortStatus:Landroid/hardware/usb/UsbPortStatus;

    if-eqz v3, :cond_0

    .line 1652
    invoke-virtual {v0, v11}, Lcom/android/server/usb/UsbPortManager$PortInfo;->complianceWarningsChanged([I)Z

    move-result v1

    .line 1653
    move-object/from16 v13, p15

    invoke-virtual {v0, v13}, Lcom/android/server/usb/UsbPortManager$PortInfo;->displayPortAltModeChanged(Landroid/hardware/usb/DisplayPortAltModeInfo;)Z

    move-result v2

    move v15, v1

    move/from16 v16, v2

    goto :goto_0

    .line 1651
    :cond_0
    move-object/from16 v13, p15

    move v15, v1

    move/from16 v16, v2

    .line 1656
    .end local v1    # "complianceChanged":Z
    .end local v2    # "displayPortChanged":Z
    .local v15, "complianceChanged":Z
    .local v16, "displayPortChanged":Z
    :goto_0
    move/from16 v1, p2

    iput-boolean v1, v0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mCanChangeMode:Z

    .line 1657
    move/from16 v2, p4

    iput-boolean v2, v0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mCanChangePowerRole:Z

    .line 1658
    move/from16 v3, p6

    iput-boolean v3, v0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mCanChangeDataRole:Z

    .line 1659
    iget-object v4, v0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPortStatus:Landroid/hardware/usb/UsbPortStatus;

    nop

    if-eqz v4, :cond_3

    iget-object v4, v0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPortStatus:Landroid/hardware/usb/UsbPortStatus;

    .line 1660
    invoke-virtual {v4}, Landroid/hardware/usb/UsbPortStatus;->getCurrentMode()I

    move-result v4

    move/from16 v5, p1

    nop

    if-ne v4, v5, :cond_3

    iget-object v4, v0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPortStatus:Landroid/hardware/usb/UsbPortStatus;

    .line 1661
    invoke-virtual {v4}, Landroid/hardware/usb/UsbPortStatus;->getCurrentPowerRole()I

    move-result v4

    move/from16 v6, p3

    nop

    if-ne v4, v6, :cond_3

    iget-object v4, v0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPortStatus:Landroid/hardware/usb/UsbPortStatus;

    .line 1662
    invoke-virtual {v4}, Landroid/hardware/usb/UsbPortStatus;->getCurrentDataRole()I

    move-result v4

    move/from16 v7, p5

    nop

    if-ne v4, v7, :cond_3

    iget-object v4, v0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPortStatus:Landroid/hardware/usb/UsbPortStatus;

    .line 1663
    invoke-virtual {v4}, Landroid/hardware/usb/UsbPortStatus;->getSupportedRoleCombinations()I

    move-result v4

    move/from16 v8, p7

    nop

    if-ne v4, v8, :cond_3

    iget-object v4, v0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPortStatus:Landroid/hardware/usb/UsbPortStatus;

    .line 1665
    invoke-virtual {v4}, Landroid/hardware/usb/UsbPortStatus;->getContaminantProtectionStatus()I

    move-result v4

    move/from16 v9, p8

    nop

    if-ne v4, v9, :cond_3

    iget-object v4, v0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPortStatus:Landroid/hardware/usb/UsbPortStatus;

    .line 1667
    invoke-virtual {v4}, Landroid/hardware/usb/UsbPortStatus;->getContaminantDetectionStatus()I

    move-result v4

    move/from16 v10, p9

    nop

    if-ne v4, v10, :cond_3

    iget-object v4, v0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPortStatus:Landroid/hardware/usb/UsbPortStatus;

    .line 1669
    invoke-virtual {v4}, Landroid/hardware/usb/UsbPortStatus;->getUsbDataStatus()I

    move-result v4

    move/from16 v12, p10

    nop

    if-ne v4, v12, :cond_3

    iget-object v4, v0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPortStatus:Landroid/hardware/usb/UsbPortStatus;

    .line 1671
    invoke-virtual {v4}, Landroid/hardware/usb/UsbPortStatus;->isPowerTransferLimited()Z

    move-result v4

    move/from16 v1, p11

    nop

    if-ne v4, v1, :cond_3

    iget-object v4, v0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPortStatus:Landroid/hardware/usb/UsbPortStatus;

    .line 1673
    invoke-virtual {v4}, Landroid/hardware/usb/UsbPortStatus;->getPowerBrickConnectionStatus()I

    move-result v4

    move/from16 v1, p12

    nop

    if-ne v4, v1, :cond_3

    iget-object v4, v0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPortStatus:Landroid/hardware/usb/UsbPortStatus;

    .line 1675
    invoke-virtual {v4}, Landroid/hardware/usb/UsbPortStatus;->getPlugState()I

    move-result v4

    move/from16 v1, p14

    if-eq v4, v1, :cond_1

    goto :goto_1

    .line 1689
    :cond_1
    if-nez v15, :cond_2

    if-eqz v16, :cond_5

    .line 1690
    :cond_2
    new-instance v1, Landroid/hardware/usb/UsbPortStatus;

    move v2, v5

    move v3, v6

    move v4, v7

    move v5, v8

    move v6, v9

    move v7, v10

    move v8, v12

    move/from16 v9, p11

    move/from16 v10, p12

    move/from16 v12, p14

    invoke-direct/range {v1 .. v13}, Landroid/hardware/usb/UsbPortStatus;-><init>(IIIIIIIZI[IILandroid/hardware/usb/DisplayPortAltModeInfo;)V

    iput-object v1, v0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPortStatus:Landroid/hardware/usb/UsbPortStatus;

    goto :goto_2

    .line 1677
    :cond_3
    :goto_1
    iget-object v1, v0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPortStatus:Landroid/hardware/usb/UsbPortStatus;

    if-nez v1, :cond_4

    array-length v1, v11

    if-lez v1, :cond_4

    .line 1678
    const/4 v1, 0x1

    iput v1, v0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mComplianceWarningChange:I

    .line 1680
    :cond_4
    new-instance v1, Landroid/hardware/usb/UsbPortStatus;

    move/from16 v2, p1

    move/from16 v3, p3

    move/from16 v4, p5

    move/from16 v5, p7

    move/from16 v6, p8

    move/from16 v7, p9

    move/from16 v8, p10

    move/from16 v9, p11

    move/from16 v10, p12

    move/from16 v12, p14

    move-object/from16 v13, p15

    invoke-direct/range {v1 .. v13}, Landroid/hardware/usb/UsbPortStatus;-><init>(IIIIIIIZI[IILandroid/hardware/usb/DisplayPortAltModeInfo;)V

    iput-object v1, v0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPortStatus:Landroid/hardware/usb/UsbPortStatus;

    .line 1685
    const/4 v14, 0x1

    .line 1697
    :cond_5
    :goto_2
    iget-object v1, v0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPortStatus:Landroid/hardware/usb/UsbPortStatus;

    invoke-virtual {v1}, Landroid/hardware/usb/UsbPortStatus;->isConnected()Z

    move-result v1

    const-wide/16 v2, 0x0

    if-eqz v1, :cond_6

    iget-wide v4, v0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mConnectedAtMillis:J

    cmp-long v1, v4, v2

    if-nez v1, :cond_6

    .line 1698
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iput-wide v4, v0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mConnectedAtMillis:J

    .line 1699
    iput-wide v2, v0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mLastConnectDurationMillis:J

    goto :goto_3

    .line 1700
    :cond_6
    iget-object v1, v0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPortStatus:Landroid/hardware/usb/UsbPortStatus;

    invoke-virtual {v1}, Landroid/hardware/usb/UsbPortStatus;->isConnected()Z

    move-result v1

    if-nez v1, :cond_7

    iget-wide v4, v0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mConnectedAtMillis:J

    cmp-long v1, v4, v2

    if-eqz v1, :cond_7

    .line 1701
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-wide v6, v0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mConnectedAtMillis:J

    sub-long/2addr v4, v6

    iput-wide v4, v0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mLastConnectDurationMillis:J

    .line 1702
    iput-wide v2, v0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mConnectedAtMillis:J

    .line 1705
    :cond_7
    :goto_3
    return v14
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1727
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "port="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPort:Landroid/hardware/usb/UsbPort;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPortStatus:Landroid/hardware/usb/UsbPortStatus;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", canChangeMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mCanChangeMode:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", canChangePowerRole="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mCanChangePowerRole:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", canChangeDataRole="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mCanChangeDataRole:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", connectedAtMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mConnectedAtMillis:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", lastConnectDurationMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mLastConnectDurationMillis:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
