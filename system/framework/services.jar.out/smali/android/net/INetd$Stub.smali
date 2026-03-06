.class public abstract Landroid/net/INetd$Stub;
.super Landroid/os/Binder;
.source "INetd.java"

# interfaces
.implements Landroid/net/INetd;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/INetd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/INetd$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String;

.field static final TRANSACTION_bandwidthAddNaughtyApp:I = 0x32

.field static final TRANSACTION_bandwidthAddNiceApp:I = 0x34

.field static final TRANSACTION_bandwidthEnableDataSaver:I = 0x3

.field static final TRANSACTION_bandwidthRemoveInterfaceAlert:I = 0x30

.field static final TRANSACTION_bandwidthRemoveInterfaceQuota:I = 0x2e

.field static final TRANSACTION_bandwidthRemoveNaughtyApp:I = 0x33

.field static final TRANSACTION_bandwidthRemoveNiceApp:I = 0x35

.field static final TRANSACTION_bandwidthSetGlobalAlert:I = 0x31

.field static final TRANSACTION_bandwidthSetInterfaceAlert:I = 0x2f

.field static final TRANSACTION_bandwidthSetInterfaceQuota:I = 0x2d

.field static final TRANSACTION_clatdStart:I = 0x25

.field static final TRANSACTION_clatdStop:I = 0x26

.field static final TRANSACTION_firewallAddUidInterfaceRules:I = 0x5b

.field static final TRANSACTION_firewallEnableChildChain:I = 0x4f

.field static final TRANSACTION_firewallRemoveUidInterfaceRules:I = 0x5c

.field static final TRANSACTION_firewallReplaceUidChain:I = 0x2

.field static final TRANSACTION_firewallSetFirewallType:I = 0x4c

.field static final TRANSACTION_firewallSetInterfaceRule:I = 0x4d

.field static final TRANSACTION_firewallSetUidRule:I = 0x4e

.field static final TRANSACTION_getFwmarkForNetwork:I = 0x60

.field static final TRANSACTION_getInterfaceHash:I = 0xfffffe

.field static final TRANSACTION_getInterfaceVersion:I = 0xffffff

.field static final TRANSACTION_getOemNetd:I = 0x5e

.field static final TRANSACTION_getProcSysNet:I = 0x11

.field static final TRANSACTION_idletimerAddInterface:I = 0x22

.field static final TRANSACTION_idletimerRemoveInterface:I = 0x23

.field static final TRANSACTION_interfaceAddAddress:I = 0xf

.field static final TRANSACTION_interfaceClearAddrs:I = 0x54

.field static final TRANSACTION_interfaceDelAddress:I = 0x10

.field static final TRANSACTION_interfaceGetCfg:I = 0x51

.field static final TRANSACTION_interfaceGetList:I = 0x50

.field static final TRANSACTION_interfaceSetCfg:I = 0x52

.field static final TRANSACTION_interfaceSetEnableIPv6:I = 0x55

.field static final TRANSACTION_interfaceSetIPv6PrivacyExtensions:I = 0x53

.field static final TRANSACTION_interfaceSetMtu:I = 0x56

.field static final TRANSACTION_ipSecAddSecurityAssociation:I = 0x15

.field static final TRANSACTION_ipSecAddSecurityPolicy:I = 0x19

.field static final TRANSACTION_ipSecAddTunnelInterface:I = 0x1c

.field static final TRANSACTION_ipSecAllocateSpi:I = 0x14

.field static final TRANSACTION_ipSecApplyTransportModeTransform:I = 0x17

.field static final TRANSACTION_ipSecDeleteSecurityAssociation:I = 0x16

.field static final TRANSACTION_ipSecDeleteSecurityPolicy:I = 0x1b

.field static final TRANSACTION_ipSecMigrate:I = 0x6c

.field static final TRANSACTION_ipSecRemoveTransportModeTransform:I = 0x18

.field static final TRANSACTION_ipSecRemoveTunnelInterface:I = 0x1e

.field static final TRANSACTION_ipSecSetEncapSocketOwner:I = 0x13

.field static final TRANSACTION_ipSecUpdateSecurityPolicy:I = 0x1a

.field static final TRANSACTION_ipSecUpdateTunnelInterface:I = 0x1d

.field static final TRANSACTION_ipfwdAddInterfaceForward:I = 0x2b

.field static final TRANSACTION_ipfwdDisableForwarding:I = 0x2a

.field static final TRANSACTION_ipfwdEnableForwarding:I = 0x29

.field static final TRANSACTION_ipfwdEnabled:I = 0x27

.field static final TRANSACTION_ipfwdGetRequesterList:I = 0x28

.field static final TRANSACTION_ipfwdRemoveInterfaceForward:I = 0x2c

.field static final TRANSACTION_isAlive:I = 0x1

.field static final TRANSACTION_networkAddInterface:I = 0x7

.field static final TRANSACTION_networkAddLegacyRoute:I = 0x40

.field static final TRANSACTION_networkAddRoute:I = 0x3e

.field static final TRANSACTION_networkAddRouteParcel:I = 0x61

.field static final TRANSACTION_networkAddUidRanges:I = 0x9

.field static final TRANSACTION_networkAddUidRangesParcel:I = 0x6a

.field static final TRANSACTION_networkAllowBypassVpnOnNetwork:I = 0x6e

.field static final TRANSACTION_networkCanProtect:I = 0x4b

.field static final TRANSACTION_networkClearDefault:I = 0x44

.field static final TRANSACTION_networkClearPermissionForUser:I = 0x47

.field static final TRANSACTION_networkCreate:I = 0x69

.field static final TRANSACTION_networkCreatePhysical:I = 0x4

.field static final TRANSACTION_networkCreateVpn:I = 0x5

.field static final TRANSACTION_networkDestroy:I = 0x6

.field static final TRANSACTION_networkGetDefault:I = 0x42

.field static final TRANSACTION_networkRejectNonSecureVpn:I = 0xb

.field static final TRANSACTION_networkRemoveInterface:I = 0x8

.field static final TRANSACTION_networkRemoveLegacyRoute:I = 0x41

.field static final TRANSACTION_networkRemoveRoute:I = 0x3f

.field static final TRANSACTION_networkRemoveRouteParcel:I = 0x63

.field static final TRANSACTION_networkRemoveUidRanges:I = 0xa

.field static final TRANSACTION_networkRemoveUidRangesParcel:I = 0x6b

.field static final TRANSACTION_networkSetDefault:I = 0x43

.field static final TRANSACTION_networkSetPermissionForNetwork:I = 0x45

.field static final TRANSACTION_networkSetPermissionForUser:I = 0x46

.field static final TRANSACTION_networkSetProtectAllow:I = 0x49

.field static final TRANSACTION_networkSetProtectDeny:I = 0x4a

.field static final TRANSACTION_networkUpdateRouteParcel:I = 0x62

.field static final TRANSACTION_registerUnsolicitedEventListener:I = 0x5a

.field static final TRANSACTION_setIPv6AddrGenMode:I = 0x21

.field static final TRANSACTION_setNetworkAllowlist:I = 0x6d

.field static final TRANSACTION_setProcSysNet:I = 0x12

.field static final TRANSACTION_setTcpRWmemorySize:I = 0x59

.field static final TRANSACTION_socketDestroy:I = 0xc

.field static final TRANSACTION_strictUidCleartextPenalty:I = 0x24

.field static final TRANSACTION_tetherAddForward:I = 0x57

.field static final TRANSACTION_tetherApplyDnsInterfaces:I = 0xd

.field static final TRANSACTION_tetherDnsList:I = 0x3d

.field static final TRANSACTION_tetherDnsSet:I = 0x3c

.field static final TRANSACTION_tetherGetStats:I = 0xe

.field static final TRANSACTION_tetherInterfaceAdd:I = 0x39

.field static final TRANSACTION_tetherInterfaceList:I = 0x3b

.field static final TRANSACTION_tetherInterfaceRemove:I = 0x3a

.field static final TRANSACTION_tetherIsEnabled:I = 0x38

.field static final TRANSACTION_tetherOffloadGetAndClearStats:I = 0x68

.field static final TRANSACTION_tetherOffloadGetStats:I = 0x66

.field static final TRANSACTION_tetherOffloadRuleAdd:I = 0x64

.field static final TRANSACTION_tetherOffloadRuleRemove:I = 0x65

.field static final TRANSACTION_tetherOffloadSetInterfaceQuota:I = 0x67

.field static final TRANSACTION_tetherRemoveForward:I = 0x58

.field static final TRANSACTION_tetherStart:I = 0x36

.field static final TRANSACTION_tetherStartWithConfiguration:I = 0x5f

.field static final TRANSACTION_tetherStop:I = 0x37

.field static final TRANSACTION_trafficSetNetPermForUids:I = 0x48

.field static final TRANSACTION_trafficSwapActiveStatsMap:I = 0x5d

.field static final TRANSACTION_wakeupAddInterface:I = 0x1f

.field static final TRANSACTION_wakeupDelInterface:I = 0x20


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 3854
    const/16 v0, 0x24

    const/16 v1, 0x2e

    const-string v2, "android$net$INetd"

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/net/INetd$Stub;->DESCRIPTOR:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 414
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 415
    sget-object v0, Landroid/net/INetd$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 416
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/net/INetd;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 423
    if-nez p0, :cond_0

    .line 424
    const/4 v0, 0x0

    return-object v0

    .line 426
    :cond_0
    sget-object v0, Landroid/net/INetd$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 427
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/net/INetd;

    if-eqz v1, :cond_1

    .line 428
    move-object v1, v0

    check-cast v1, Landroid/net/INetd;

    return-object v1

    .line 430
    :cond_1
    new-instance v1, Landroid/net/INetd$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/net/INetd$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 434
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 23
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 438
    move-object/from16 v0, p0

    move/from16 v10, p1

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    sget-object v13, Landroid/net/INetd$Stub;->DESCRIPTOR:Ljava/lang/String;

    .line 439
    .local v13, "descriptor":Ljava/lang/String;
    const v1, 0xffffff

    const/4 v14, 0x1

    if-lt v10, v14, :cond_0

    if-gt v10, v1, :cond_0

    .line 440
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 442
    :cond_0
    const v2, 0x5f4e5446

    if-ne v10, v2, :cond_1

    .line 443
    invoke-virtual {v12, v13}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 444
    return v14

    .line 446
    :cond_1
    if-ne v10, v1, :cond_2

    .line 447
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 448
    invoke-interface {v0}, Landroid/net/INetd;->getInterfaceVersion()I

    move-result v1

    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 449
    return v14

    .line 451
    :cond_2
    const v1, 0xfffffe

    if-ne v10, v1, :cond_3

    .line 452
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 453
    invoke-interface {v0}, Landroid/net/INetd;->getInterfaceHash()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 454
    return v14

    .line 456
    :cond_3
    packed-switch v10, :pswitch_data_0

    .line 1609
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 1598
    :pswitch_0
    invoke-virtual {v11}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 1600
    .local v1, "_arg0":Z
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1602
    .local v2, "_arg1":I
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1603
    .local v3, "_arg2":I
    invoke-interface {v0, v1, v2, v3}, Landroid/net/INetd;->networkAllowBypassVpnOnNetwork(ZII)V

    .line 1604
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 1605
    move-object/from16 v22, v13

    move v15, v14

    goto/16 :goto_0

    .line 1590
    .end local v1    # "_arg0":Z
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    :pswitch_1
    sget-object v1, Landroid/net/netd/aidl/NativeUidRangeConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/net/netd/aidl/NativeUidRangeConfig;

    .line 1591
    .local v1, "_arg0":[Landroid/net/netd/aidl/NativeUidRangeConfig;
    invoke-interface {v0, v1}, Landroid/net/INetd;->setNetworkAllowlist([Landroid/net/netd/aidl/NativeUidRangeConfig;)V

    .line 1592
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 1593
    move-object/from16 v22, v13

    move v15, v14

    goto/16 :goto_0

    .line 1582
    .end local v1    # "_arg0":[Landroid/net/netd/aidl/NativeUidRangeConfig;
    :pswitch_2
    sget-object v1, Landroid/net/IpSecMigrateInfoParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/IpSecMigrateInfoParcel;

    .line 1583
    .local v1, "_arg0":Landroid/net/IpSecMigrateInfoParcel;
    invoke-interface {v0, v1}, Landroid/net/INetd;->ipSecMigrate(Landroid/net/IpSecMigrateInfoParcel;)V

    .line 1584
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 1585
    move-object/from16 v22, v13

    move v15, v14

    goto/16 :goto_0

    .line 1574
    .end local v1    # "_arg0":Landroid/net/IpSecMigrateInfoParcel;
    :pswitch_3
    sget-object v1, Landroid/net/netd/aidl/NativeUidRangeConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/netd/aidl/NativeUidRangeConfig;

    .line 1575
    .local v1, "_arg0":Landroid/net/netd/aidl/NativeUidRangeConfig;
    invoke-interface {v0, v1}, Landroid/net/INetd;->networkRemoveUidRangesParcel(Landroid/net/netd/aidl/NativeUidRangeConfig;)V

    .line 1576
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 1577
    move-object/from16 v22, v13

    move v15, v14

    goto/16 :goto_0

    .line 1566
    .end local v1    # "_arg0":Landroid/net/netd/aidl/NativeUidRangeConfig;
    :pswitch_4
    sget-object v1, Landroid/net/netd/aidl/NativeUidRangeConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/netd/aidl/NativeUidRangeConfig;

    .line 1567
    .restart local v1    # "_arg0":Landroid/net/netd/aidl/NativeUidRangeConfig;
    invoke-interface {v0, v1}, Landroid/net/INetd;->networkAddUidRangesParcel(Landroid/net/netd/aidl/NativeUidRangeConfig;)V

    .line 1568
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 1569
    move-object/from16 v22, v13

    move v15, v14

    goto/16 :goto_0

    .line 1558
    .end local v1    # "_arg0":Landroid/net/netd/aidl/NativeUidRangeConfig;
    :pswitch_5
    sget-object v1, Landroid/net/NativeNetworkConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/NativeNetworkConfig;

    .line 1559
    .local v1, "_arg0":Landroid/net/NativeNetworkConfig;
    invoke-interface {v0, v1}, Landroid/net/INetd;->networkCreate(Landroid/net/NativeNetworkConfig;)V

    .line 1560
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 1561
    move-object/from16 v22, v13

    move v15, v14

    goto/16 :goto_0

    .line 1549
    .end local v1    # "_arg0":Landroid/net/NativeNetworkConfig;
    :pswitch_6
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1550
    .local v1, "_arg0":I
    invoke-interface {v0, v1}, Landroid/net/INetd;->tetherOffloadGetAndClearStats(I)Landroid/net/TetherStatsParcel;

    move-result-object v2

    .line 1551
    .local v2, "_result":Landroid/net/TetherStatsParcel;
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 1552
    invoke-virtual {v12, v2, v14}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1553
    move-object/from16 v22, v13

    move v15, v14

    goto/16 :goto_0

    .line 1539
    .end local v1    # "_arg0":I
    .end local v2    # "_result":Landroid/net/TetherStatsParcel;
    :pswitch_7
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1541
    .restart local v1    # "_arg0":I
    invoke-virtual {v11}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 1542
    .local v2, "_arg1":J
    invoke-interface {v0, v1, v2, v3}, Landroid/net/INetd;->tetherOffloadSetInterfaceQuota(IJ)V

    .line 1543
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 1544
    move-object/from16 v22, v13

    move v15, v14

    goto/16 :goto_0

    .line 1531
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":J
    :pswitch_8
    invoke-interface {v0}, Landroid/net/INetd;->tetherOffloadGetStats()[Landroid/net/TetherStatsParcel;

    move-result-object v1

    .line 1532
    .local v1, "_result":[Landroid/net/TetherStatsParcel;
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 1533
    invoke-virtual {v12, v1, v14}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 1534
    move-object/from16 v22, v13

    move v15, v14

    goto/16 :goto_0

    .line 1524
    .end local v1    # "_result":[Landroid/net/TetherStatsParcel;
    :pswitch_9
    sget-object v1, Landroid/net/TetherOffloadRuleParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/TetherOffloadRuleParcel;

    .line 1525
    .local v1, "_arg0":Landroid/net/TetherOffloadRuleParcel;
    invoke-interface {v0, v1}, Landroid/net/INetd;->tetherOffloadRuleRemove(Landroid/net/TetherOffloadRuleParcel;)V

    .line 1526
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 1527
    move-object/from16 v22, v13

    move v15, v14

    goto/16 :goto_0

    .line 1516
    .end local v1    # "_arg0":Landroid/net/TetherOffloadRuleParcel;
    :pswitch_a
    sget-object v1, Landroid/net/TetherOffloadRuleParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/TetherOffloadRuleParcel;

    .line 1517
    .restart local v1    # "_arg0":Landroid/net/TetherOffloadRuleParcel;
    invoke-interface {v0, v1}, Landroid/net/INetd;->tetherOffloadRuleAdd(Landroid/net/TetherOffloadRuleParcel;)V

    .line 1518
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 1519
    move-object/from16 v22, v13

    move v15, v14

    goto/16 :goto_0

    .line 1506
    .end local v1    # "_arg0":Landroid/net/TetherOffloadRuleParcel;
    :pswitch_b
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1508
    .local v1, "_arg0":I
    sget-object v2, Landroid/net/RouteInfoParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/RouteInfoParcel;

    .line 1509
    .local v2, "_arg1":Landroid/net/RouteInfoParcel;
    invoke-interface {v0, v1, v2}, Landroid/net/INetd;->networkRemoveRouteParcel(ILandroid/net/RouteInfoParcel;)V

    .line 1510
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 1511
    move-object/from16 v22, v13

    move v15, v14

    goto/16 :goto_0

    .line 1496
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Landroid/net/RouteInfoParcel;
    :pswitch_c
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1498
    .restart local v1    # "_arg0":I
    sget-object v2, Landroid/net/RouteInfoParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/RouteInfoParcel;

    .line 1499
    .restart local v2    # "_arg1":Landroid/net/RouteInfoParcel;
    invoke-interface {v0, v1, v2}, Landroid/net/INetd;->networkUpdateRouteParcel(ILandroid/net/RouteInfoParcel;)V

    .line 1500
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 1501
    move-object/from16 v22, v13

    move v15, v14

    goto/16 :goto_0

    .line 1486
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Landroid/net/RouteInfoParcel;
    :pswitch_d
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1488
    .restart local v1    # "_arg0":I
    sget-object v2, Landroid/net/RouteInfoParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/RouteInfoParcel;

    .line 1489
    .restart local v2    # "_arg1":Landroid/net/RouteInfoParcel;
    invoke-interface {v0, v1, v2}, Landroid/net/INetd;->networkAddRouteParcel(ILandroid/net/RouteInfoParcel;)V

    .line 1490
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 1491
    move-object/from16 v22, v13

    move v15, v14

    goto/16 :goto_0

    .line 1477
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Landroid/net/RouteInfoParcel;
    :pswitch_e
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1478
    .restart local v1    # "_arg0":I
    invoke-interface {v0, v1}, Landroid/net/INetd;->getFwmarkForNetwork(I)Landroid/net/MarkMaskParcel;

    move-result-object v2

    .line 1479
    .local v2, "_result":Landroid/net/MarkMaskParcel;
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 1480
    invoke-virtual {v12, v2, v14}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1481
    move-object/from16 v22, v13

    move v15, v14

    goto/16 :goto_0

    .line 1469
    .end local v1    # "_arg0":I
    .end local v2    # "_result":Landroid/net/MarkMaskParcel;
    :pswitch_f
    sget-object v1, Landroid/net/TetherConfigParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/TetherConfigParcel;

    .line 1470
    .local v1, "_arg0":Landroid/net/TetherConfigParcel;
    invoke-interface {v0, v1}, Landroid/net/INetd;->tetherStartWithConfiguration(Landroid/net/TetherConfigParcel;)V

    .line 1471
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 1472
    move-object/from16 v22, v13

    move v15, v14

    goto/16 :goto_0

    .line 1461
    .end local v1    # "_arg0":Landroid/net/TetherConfigParcel;
    :pswitch_10
    invoke-interface {v0}, Landroid/net/INetd;->getOemNetd()Landroid/os/IBinder;

    move-result-object v1

    .line 1462
    .local v1, "_result":Landroid/os/IBinder;
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 1463
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1464
    move-object/from16 v22, v13

    move v15, v14

    goto/16 :goto_0

    .line 1455
    .end local v1    # "_result":Landroid/os/IBinder;
    :pswitch_11
    invoke-interface {v0}, Landroid/net/INetd;->trafficSwapActiveStatsMap()V

    .line 1456
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 1457
    move-object/from16 v22, v13

    move v15, v14

    goto/16 :goto_0

    .line 1448
    :pswitch_12
    invoke-virtual {v11}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v1

    .line 1449
    .local v1, "_arg0":[I
    invoke-interface {v0, v1}, Landroid/net/INetd;->firewallRemoveUidInterfaceRules([I)V

    .line 1450
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 1451
    move-object/from16 v22, v13

    move v15, v14

    goto/16 :goto_0

    .line 1438
    .end local v1    # "_arg0":[I
    :pswitch_13
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1440
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v2

    .line 1441
    .local v2, "_arg1":[I
    invoke-interface {v0, v1, v2}, Landroid/net/INetd;->firewallAddUidInterfaceRules(Ljava/lang/String;[I)V

    .line 1442
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 1443
    move-object/from16 v22, v13

    move v15, v14

    goto/16 :goto_0

    .line 1430
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":[I
    :pswitch_14
    invoke-virtual {v11}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/net/INetdUnsolicitedEventListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetdUnsolicitedEventListener;

    move-result-object v1

    .line 1431
    .local v1, "_arg0":Landroid/net/INetdUnsolicitedEventListener;
    invoke-interface {v0, v1}, Landroid/net/INetd;->registerUnsolicitedEventListener(Landroid/net/INetdUnsolicitedEventListener;)V

    .line 1432
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 1433
    move-object/from16 v22, v13

    move v15, v14

    goto/16 :goto_0

    .line 1420
    .end local v1    # "_arg0":Landroid/net/INetdUnsolicitedEventListener;
    :pswitch_15
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1422
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1423
    .local v2, "_arg1":Ljava/lang/String;
    invoke-interface {v0, v1, v2}, Landroid/net/INetd;->setTcpRWmemorySize(Ljava/lang/String;Ljava/lang/String;)V

    .line 1424
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 1425
    move-object/from16 v22, v13

    move v15, v14

    goto/16 :goto_0

    .line 1410
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    :pswitch_16
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1412
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1413
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-interface {v0, v1, v2}, Landroid/net/INetd;->tetherRemoveForward(Ljava/lang/String;Ljava/lang/String;)V

    .line 1414
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 1415
    move-object/from16 v22, v13

    move v15, v14

    goto/16 :goto_0

    .line 1400
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    :pswitch_17
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1402
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1403
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-interface {v0, v1, v2}, Landroid/net/INetd;->tetherAddForward(Ljava/lang/String;Ljava/lang/String;)V

    .line 1404
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 1405
    move-object/from16 v22, v13

    move v15, v14

    goto/16 :goto_0

    .line 1390
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    :pswitch_18
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1392
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1393
    .local v2, "_arg1":I
    invoke-interface {v0, v1, v2}, Landroid/net/INetd;->interfaceSetMtu(Ljava/lang/String;I)V

    .line 1394
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 1395
    move-object/from16 v22, v13

    move v15, v14

    goto/16 :goto_0

    .line 1380
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    :pswitch_19
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1382
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 1383
    .local v2, "_arg1":Z
    invoke-interface {v0, v1, v2}, Landroid/net/INetd;->interfaceSetEnableIPv6(Ljava/lang/String;Z)V

    .line 1384
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 1385
    move-object/from16 v22, v13

    move v15, v14

    goto/16 :goto_0

    .line 1372
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Z
    :pswitch_1a
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1373
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-interface {v0, v1}, Landroid/net/INetd;->interfaceClearAddrs(Ljava/lang/String;)V

    .line 1374
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 1375
    move-object/from16 v22, v13

    move v15, v14

    goto/16 :goto_0

    .line 1362
    .end local v1    # "_arg0":Ljava/lang/String;
    :pswitch_1b
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1364
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 1365
    .restart local v2    # "_arg1":Z
    invoke-interface {v0, v1, v2}, Landroid/net/INetd;->interfaceSetIPv6PrivacyExtensions(Ljava/lang/String;Z)V

    .line 1366
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 1367
    move-object/from16 v22, v13

    move v15, v14

    goto/16 :goto_0

    .line 1354
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Z
    :pswitch_1c
    sget-object v1, Landroid/net/InterfaceConfigurationParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/InterfaceConfigurationParcel;

    .line 1355
    .local v1, "_arg0":Landroid/net/InterfaceConfigurationParcel;
    invoke-interface {v0, v1}, Landroid/net/INetd;->interfaceSetCfg(Landroid/net/InterfaceConfigurationParcel;)V

    .line 1356
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 1357
    move-object/from16 v22, v13

    move v15, v14

    goto/16 :goto_0

    .line 1345
    .end local v1    # "_arg0":Landroid/net/InterfaceConfigurationParcel;
    :pswitch_1d
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1346
    .local v1, "_arg0":Ljava/lang/String;
    invoke-interface {v0, v1}, Landroid/net/INetd;->interfaceGetCfg(Ljava/lang/String;)Landroid/net/InterfaceConfigurationParcel;

    move-result-object v2

    .line 1347
    .local v2, "_result":Landroid/net/InterfaceConfigurationParcel;
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 1348
    invoke-virtual {v12, v2, v14}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1349
    move-object/from16 v22, v13

    move v15, v14

    goto/16 :goto_0

    .line 1337
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_result":Landroid/net/InterfaceConfigurationParcel;
    :pswitch_1e
    invoke-interface {v0}, Landroid/net/INetd;->interfaceGetList()[Ljava/lang/String;

    move-result-object v1

    .line 1338
    .local v1, "_result":[Ljava/lang/String;
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 1339
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 1340
    move-object/from16 v22, v13

    move v15, v14

    goto/16 :goto_0

    .line 1328
    .end local v1    # "_result":[Ljava/lang/String;
    :pswitch_1f
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1330
    .local v1, "_arg0":I
    invoke-virtual {v11}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 1331
    .local v2, "_arg1":Z
    invoke-interface {v0, v1, v2}, Landroid/net/INetd;->firewallEnableChildChain(IZ)V

    .line 1332
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 1333
    move-object/from16 v22, v13

    move v15, v14

    goto/16 :goto_0

    .line 1316
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Z
    :pswitch_20
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1318
    .restart local v1    # "_arg0":I
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1320
    .local v2, "_arg1":I
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1321
    .restart local v3    # "_arg2":I
    invoke-interface {v0, v1, v2, v3}, Landroid/net/INetd;->firewallSetUidRule(III)V

    .line 1322
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 1323
    move-object/from16 v22, v13

    move v15, v14

    goto/16 :goto_0

    .line 1306
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    :pswitch_21
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1308
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1309
    .restart local v2    # "_arg1":I
    invoke-interface {v0, v1, v2}, Landroid/net/INetd;->firewallSetInterfaceRule(Ljava/lang/String;I)V

    .line 1310
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 1311
    move-object/from16 v22, v13

    move v15, v14

    goto/16 :goto_0

    .line 1298
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    :pswitch_22
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1299
    .local v1, "_arg0":I
    invoke-interface {v0, v1}, Landroid/net/INetd;->firewallSetFirewallType(I)V

    .line 1300
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 1301
    move-object/from16 v22, v13

    move v15, v14

    goto/16 :goto_0

    .line 1289
    .end local v1    # "_arg0":I
    :pswitch_23
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1290
    .restart local v1    # "_arg0":I
    invoke-interface {v0, v1}, Landroid/net/INetd;->networkCanProtect(I)Z

    move-result v2

    .line 1291
    .local v2, "_result":Z
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 1292
    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1293
    move-object/from16 v22, v13

    move v15, v14

    goto/16 :goto_0

    .line 1281
    .end local v1    # "_arg0":I
    .end local v2    # "_result":Z
    :pswitch_24
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1282
    .restart local v1    # "_arg0":I
    invoke-interface {v0, v1}, Landroid/net/INetd;->networkSetProtectDeny(I)V

    .line 1283
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 1284
    move-object/from16 v22, v13

    move v15, v14

    goto/16 :goto_0

    .line 1273
    .end local v1    # "_arg0":I
    :pswitch_25
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1274
    .restart local v1    # "_arg0":I
    invoke-interface {v0, v1}, Landroid/net/INetd;->networkSetProtectAllow(I)V

    .line 1275
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 1276
    move-object/from16 v22, v13

    move v15, v14

    goto/16 :goto_0

    .line 1263
    .end local v1    # "_arg0":I
    :pswitch_26
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1265
    .restart local v1    # "_arg0":I
    invoke-virtual {v11}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v2

    .line 1266
    .local v2, "_arg1":[I
    invoke-interface {v0, v1, v2}, Landroid/net/INetd;->trafficSetNetPermForUids(I[I)V

    .line 1267
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 1268
    move-object/from16 v22, v13

    move v15, v14

    goto/16 :goto_0

    .line 1255
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":[I
    :pswitch_27
    invoke-virtual {v11}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v1

    .line 1256
    .local v1, "_arg0":[I
    invoke-interface {v0, v1}, Landroid/net/INetd;->networkClearPermissionForUser([I)V

    .line 1257
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 1258
    move-object/from16 v22, v13

    move v15, v14

    goto/16 :goto_0

    .line 1245
    .end local v1    # "_arg0":[I
    :pswitch_28
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1247
    .local v1, "_arg0":I
    invoke-virtual {v11}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v2

    .line 1248
    .restart local v2    # "_arg1":[I
    invoke-interface {v0, v1, v2}, Landroid/net/INetd;->networkSetPermissionForUser(I[I)V

    .line 1249
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 1250
    move-object/from16 v22, v13

    move v15, v14

    goto/16 :goto_0

    .line 1235
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":[I
    :pswitch_29
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1237
    .restart local v1    # "_arg0":I
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1238
    .local v2, "_arg1":I
    invoke-interface {v0, v1, v2}, Landroid/net/INetd;->networkSetPermissionForNetwork(II)V

    .line 1239
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 1240
    move-object/from16 v22, v13

    move v15, v14

    goto/16 :goto_0

    .line 1228
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    :pswitch_2a
    invoke-interface {v0}, Landroid/net/INetd;->networkClearDefault()V

    .line 1229
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 1230
    move-object/from16 v22, v13

    move v15, v14

    goto/16 :goto_0

    .line 1221
    :pswitch_2b
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1222
    .restart local v1    # "_arg0":I
    invoke-interface {v0, v1}, Landroid/net/INetd;->networkSetDefault(I)V

    .line 1223
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 1224
    move-object/from16 v22, v13

    move v15, v14

    goto/16 :goto_0

    .line 1213
    .end local v1    # "_arg0":I
    :pswitch_2c
    invoke-interface {v0}, Landroid/net/INetd;->networkGetDefault()I

    move-result v1

    .line 1214
    .local v1, "_result":I
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 1215
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1216
    move-object/from16 v22, v13

    move v15, v14

    goto/16 :goto_0

    .line 1198
    .end local v1    # "_result":I
    :pswitch_2d
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1200
    .local v1, "_arg0":I
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1202
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1204
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 1206
    .local v4, "_arg3":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1207
    .local v5, "_arg4":I
    invoke-interface/range {v0 .. v5}, Landroid/net/INetd;->networkRemoveLegacyRoute(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 1208
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 1209
    move-object/from16 v0, p0

    move-object/from16 v22, v13

    move v15, v14

    goto/16 :goto_0

    .line 1182
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":Ljava/lang/String;
    .end local v5    # "_arg4":I
    :pswitch_2e
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1184
    .restart local v1    # "_arg0":I
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1186
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1188
    .restart local v3    # "_arg2":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 1190
    .restart local v4    # "_arg3":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1191
    .restart local v5    # "_arg4":I
    move-object/from16 v0, p0

    invoke-interface/range {v0 .. v5}, Landroid/net/INetd;->networkAddLegacyRoute(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 1192
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 1193
    move-object/from16 v22, v13

    move v15, v14

    goto/16 :goto_0

    .line 1168
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":Ljava/lang/String;
    .end local v5    # "_arg4":I
    :pswitch_2f
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1170
    .restart local v1    # "_arg0":I
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1172
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1174
    .restart local v3    # "_arg2":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 1175
    .restart local v4    # "_arg3":Ljava/lang/String;
    invoke-interface {v0, v1, v2, v3, v4}, Landroid/net/INetd;->networkRemoveRoute(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1176
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 1177
    move-object/from16 v22, v13

    move v15, v14

    goto/16 :goto_0

    .line 1154
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":Ljava/lang/String;
    :pswitch_30
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1156
    .restart local v1    # "_arg0":I
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1158
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1160
    .restart local v3    # "_arg2":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 1161
    .restart local v4    # "_arg3":Ljava/lang/String;
    invoke-interface {v0, v1, v2, v3, v4}, Landroid/net/INetd;->networkAddRoute(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1162
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 1163
    move-object/from16 v22, v13

    move v15, v14

    goto/16 :goto_0

    .line 1146
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":Ljava/lang/String;
    :pswitch_31
    invoke-interface {v0}, Landroid/net/INetd;->tetherDnsList()[Ljava/lang/String;

    move-result-object v1

    .line 1147
    .local v1, "_result":[Ljava/lang/String;
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 1148
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 1149
    move-object/from16 v22, v13

    move v15, v14

    goto/16 :goto_0

    .line 1137
    .end local v1    # "_result":[Ljava/lang/String;
    :pswitch_32
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1139
    .local v1, "_arg0":I
    invoke-virtual {v11}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v2

    .line 1140
    .local v2, "_arg1":[Ljava/lang/String;
    invoke-interface {v0, v1, v2}, Landroid/net/INetd;->tetherDnsSet(I[Ljava/lang/String;)V

    .line 1141
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 1142
    move-object/from16 v22, v13

    move v15, v14

    goto/16 :goto_0

    .line 1129
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":[Ljava/lang/String;
    :pswitch_33
    invoke-interface {v0}, Landroid/net/INetd;->tetherInterfaceList()[Ljava/lang/String;

    move-result-object v1

    .line 1130
    .local v1, "_result":[Ljava/lang/String;
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 1131
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 1132
    move-object/from16 v22, v13

    move v15, v14

    goto/16 :goto_0

    .line 1122
    .end local v1    # "_result":[Ljava/lang/String;
    :pswitch_34
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1123
    .local v1, "_arg0":Ljava/lang/String;
    invoke-interface {v0, v1}, Landroid/net/INetd;->tetherInterfaceRemove(Ljava/lang/String;)V

    .line 1124
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 1125
    move-object/from16 v22, v13

    move v15, v14

    goto/16 :goto_0

    .line 1114
    .end local v1    # "_arg0":Ljava/lang/String;
    :pswitch_35
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1115
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-interface {v0, v1}, Landroid/net/INetd;->tetherInterfaceAdd(Ljava/lang/String;)V

    .line 1116
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 1117
    move-object/from16 v22, v13

    move v15, v14

    goto/16 :goto_0

    .line 1106
    .end local v1    # "_arg0":Ljava/lang/String;
    :pswitch_36
    invoke-interface {v0}, Landroid/net/INetd;->tetherIsEnabled()Z

    move-result v1

    .line 1107
    .local v1, "_result":Z
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 1108
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1109
    move-object/from16 v22, v13

    move v15, v14

    goto/16 :goto_0

    .line 1100
    .end local v1    # "_result":Z
    :pswitch_37
    invoke-interface {v0}, Landroid/net/INetd;->tetherStop()V

    .line 1101
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 1102
    move-object/from16 v22, v13

    move v15, v14

    goto/16 :goto_0

    .line 1093
    :pswitch_38
    invoke-virtual {v11}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v1

    .line 1094
    .local v1, "_arg0":[Ljava/lang/String;
    invoke-interface {v0, v1}, Landroid/net/INetd;->tetherStart([Ljava/lang/String;)V

    .line 1095
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 1096
    move-object/from16 v22, v13

    move v15, v14

    goto/16 :goto_0

    .line 1085
    .end local v1    # "_arg0":[Ljava/lang/String;
    :pswitch_39
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1086
    .local v1, "_arg0":I
    invoke-interface {v0, v1}, Landroid/net/INetd;->bandwidthRemoveNiceApp(I)V

    .line 1087
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 1088
    move-object/from16 v22, v13

    move v15, v14

    goto/16 :goto_0

    .line 1077
    .end local v1    # "_arg0":I
    :pswitch_3a
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1078
    .restart local v1    # "_arg0":I
    invoke-interface {v0, v1}, Landroid/net/INetd;->bandwidthAddNiceApp(I)V

    .line 1079
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 1080
    move-object/from16 v22, v13

    move v15, v14

    goto/16 :goto_0

    .line 1069
    .end local v1    # "_arg0":I
    :pswitch_3b
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1070
    .restart local v1    # "_arg0":I
    invoke-interface {v0, v1}, Landroid/net/INetd;->bandwidthRemoveNaughtyApp(I)V

    .line 1071
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 1072
    move-object/from16 v22, v13

    move v15, v14

    goto/16 :goto_0

    .line 1061
    .end local v1    # "_arg0":I
    :pswitch_3c
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1062
    .restart local v1    # "_arg0":I
    invoke-interface {v0, v1}, Landroid/net/INetd;->bandwidthAddNaughtyApp(I)V

    .line 1063
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 1064
    move-object/from16 v22, v13

    move v15, v14

    goto/16 :goto_0

    .line 1053
    .end local v1    # "_arg0":I
    :pswitch_3d
    invoke-virtual {v11}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 1054
    .local v1, "_arg0":J
    invoke-interface {v0, v1, v2}, Landroid/net/INetd;->bandwidthSetGlobalAlert(J)V

    .line 1055
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 1056
    move-object/from16 v22, v13

    move v15, v14

    goto/16 :goto_0

    .line 1045
    .end local v1    # "_arg0":J
    :pswitch_3e
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1046
    .local v1, "_arg0":Ljava/lang/String;
    invoke-interface {v0, v1}, Landroid/net/INetd;->bandwidthRemoveInterfaceAlert(Ljava/lang/String;)V

    .line 1047
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 1048
    move-object/from16 v22, v13

    move v15, v14

    goto/16 :goto_0

    .line 1035
    .end local v1    # "_arg0":Ljava/lang/String;
    :pswitch_3f
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1037
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 1038
    .local v2, "_arg1":J
    invoke-interface {v0, v1, v2, v3}, Landroid/net/INetd;->bandwidthSetInterfaceAlert(Ljava/lang/String;J)V

    .line 1039
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 1040
    move-object/from16 v22, v13

    move v15, v14

    goto/16 :goto_0

    .line 1027
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":J
    :pswitch_40
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1028
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-interface {v0, v1}, Landroid/net/INetd;->bandwidthRemoveInterfaceQuota(Ljava/lang/String;)V

    .line 1029
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 1030
    move-object/from16 v22, v13

    move v15, v14

    goto/16 :goto_0

    .line 1017
    .end local v1    # "_arg0":Ljava/lang/String;
    :pswitch_41
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1019
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 1020
    .restart local v2    # "_arg1":J
    invoke-interface {v0, v1, v2, v3}, Landroid/net/INetd;->bandwidthSetInterfaceQuota(Ljava/lang/String;J)V

    .line 1021
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 1022
    move-object/from16 v22, v13

    move v15, v14

    goto/16 :goto_0

    .line 1007
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":J
    :pswitch_42
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1009
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1010
    .local v2, "_arg1":Ljava/lang/String;
    invoke-interface {v0, v1, v2}, Landroid/net/INetd;->ipfwdRemoveInterfaceForward(Ljava/lang/String;Ljava/lang/String;)V

    .line 1011
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 1012
    move-object/from16 v22, v13

    move v15, v14

    goto/16 :goto_0

    .line 997
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    :pswitch_43
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 999
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1000
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-interface {v0, v1, v2}, Landroid/net/INetd;->ipfwdAddInterfaceForward(Ljava/lang/String;Ljava/lang/String;)V

    .line 1001
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 1002
    move-object/from16 v22, v13

    move v15, v14

    goto/16 :goto_0

    .line 989
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    :pswitch_44
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 990
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-interface {v0, v1}, Landroid/net/INetd;->ipfwdDisableForwarding(Ljava/lang/String;)V

    .line 991
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 992
    move-object/from16 v22, v13

    move v15, v14

    goto/16 :goto_0

    .line 981
    .end local v1    # "_arg0":Ljava/lang/String;
    :pswitch_45
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 982
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-interface {v0, v1}, Landroid/net/INetd;->ipfwdEnableForwarding(Ljava/lang/String;)V

    .line 983
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 984
    move-object/from16 v22, v13

    move v15, v14

    goto/16 :goto_0

    .line 973
    .end local v1    # "_arg0":Ljava/lang/String;
    :pswitch_46
    invoke-interface {v0}, Landroid/net/INetd;->ipfwdGetRequesterList()[Ljava/lang/String;

    move-result-object v1

    .line 974
    .local v1, "_result":[Ljava/lang/String;
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 975
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 976
    move-object/from16 v22, v13

    move v15, v14

    goto/16 :goto_0

    .line 966
    .end local v1    # "_result":[Ljava/lang/String;
    :pswitch_47
    invoke-interface {v0}, Landroid/net/INetd;->ipfwdEnabled()Z

    move-result v1

    .line 967
    .local v1, "_result":Z
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 968
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 969
    move-object/from16 v22, v13

    move v15, v14

    goto/16 :goto_0

    .line 959
    .end local v1    # "_result":Z
    :pswitch_48
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 960
    .local v1, "_arg0":Ljava/lang/String;
    invoke-interface {v0, v1}, Landroid/net/INetd;->clatdStop(Ljava/lang/String;)V

    .line 961
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 962
    move-object/from16 v22, v13

    move v15, v14

    goto/16 :goto_0

    .line 948
    .end local v1    # "_arg0":Ljava/lang/String;
    :pswitch_49
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 950
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 951
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-interface {v0, v1, v2}, Landroid/net/INetd;->clatdStart(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 952
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 953
    invoke-virtual {v12, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 954
    move-object/from16 v22, v13

    move v15, v14

    goto/16 :goto_0

    .line 938
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_result":Ljava/lang/String;
    :pswitch_4a
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 940
    .local v1, "_arg0":I
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 941
    .local v2, "_arg1":I
    invoke-interface {v0, v1, v2}, Landroid/net/INetd;->strictUidCleartextPenalty(II)V

    .line 942
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 943
    move-object/from16 v22, v13

    move v15, v14

    goto/16 :goto_0

    .line 926
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    :pswitch_4b
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 928
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 930
    .restart local v2    # "_arg1":I
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 931
    .local v3, "_arg2":Ljava/lang/String;
    invoke-interface {v0, v1, v2, v3}, Landroid/net/INetd;->idletimerRemoveInterface(Ljava/lang/String;ILjava/lang/String;)V

    .line 932
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 933
    move-object/from16 v22, v13

    move v15, v14

    goto/16 :goto_0

    .line 914
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Ljava/lang/String;
    :pswitch_4c
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 916
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 918
    .restart local v2    # "_arg1":I
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 919
    .restart local v3    # "_arg2":Ljava/lang/String;
    invoke-interface {v0, v1, v2, v3}, Landroid/net/INetd;->idletimerAddInterface(Ljava/lang/String;ILjava/lang/String;)V

    .line 920
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 921
    move-object/from16 v22, v13

    move v15, v14

    goto/16 :goto_0

    .line 904
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Ljava/lang/String;
    :pswitch_4d
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 906
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 907
    .restart local v2    # "_arg1":I
    invoke-interface {v0, v1, v2}, Landroid/net/INetd;->setIPv6AddrGenMode(Ljava/lang/String;I)V

    .line 908
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 909
    move-object/from16 v22, v13

    move v15, v14

    goto/16 :goto_0

    .line 890
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    :pswitch_4e
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 892
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 894
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 896
    .local v3, "_arg2":I
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 897
    .local v4, "_arg3":I
    invoke-interface {v0, v1, v2, v3, v4}, Landroid/net/INetd;->wakeupDelInterface(Ljava/lang/String;Ljava/lang/String;II)V

    .line 898
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 899
    move-object/from16 v22, v13

    move v15, v14

    goto/16 :goto_0

    .line 876
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":I
    :pswitch_4f
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 878
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 880
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 882
    .restart local v3    # "_arg2":I
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 883
    .restart local v4    # "_arg3":I
    invoke-interface {v0, v1, v2, v3, v4}, Landroid/net/INetd;->wakeupAddInterface(Ljava/lang/String;Ljava/lang/String;II)V

    .line 884
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 885
    move-object/from16 v22, v13

    move v15, v14

    goto/16 :goto_0

    .line 868
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":I
    :pswitch_50
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 869
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-interface {v0, v1}, Landroid/net/INetd;->ipSecRemoveTunnelInterface(Ljava/lang/String;)V

    .line 870
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 871
    move-object/from16 v22, v13

    move v15, v14

    goto/16 :goto_0

    .line 850
    .end local v1    # "_arg0":Ljava/lang/String;
    :pswitch_51
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 852
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 854
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 856
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 858
    .restart local v4    # "_arg3":I
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 860
    .restart local v5    # "_arg4":I
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 861
    .local v6, "_arg5":I
    invoke-interface/range {v0 .. v6}, Landroid/net/INetd;->ipSecUpdateTunnelInterface(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V

    .line 862
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 863
    move-object/from16 v0, p0

    move-object/from16 v22, v13

    move v15, v14

    goto/16 :goto_0

    .line 832
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":I
    .end local v5    # "_arg4":I
    .end local v6    # "_arg5":I
    :pswitch_52
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 834
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 836
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 838
    .restart local v3    # "_arg2":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 840
    .restart local v4    # "_arg3":I
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 842
    .restart local v5    # "_arg4":I
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 843
    .restart local v6    # "_arg5":I
    move-object/from16 v0, p0

    invoke-interface/range {v0 .. v6}, Landroid/net/INetd;->ipSecAddTunnelInterface(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V

    .line 844
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 845
    move-object/from16 v22, v13

    move v15, v14

    goto/16 :goto_0

    .line 814
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":I
    .end local v5    # "_arg4":I
    .end local v6    # "_arg5":I
    :pswitch_53
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 816
    .local v1, "_arg0":I
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 818
    .local v2, "_arg1":I
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 820
    .local v3, "_arg2":I
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 822
    .restart local v4    # "_arg3":I
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 824
    .restart local v5    # "_arg4":I
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 825
    .restart local v6    # "_arg5":I
    move-object/from16 v0, p0

    invoke-interface/range {v0 .. v6}, Landroid/net/INetd;->ipSecDeleteSecurityPolicy(IIIIII)V

    .line 826
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 827
    move-object/from16 v22, v13

    move v15, v14

    goto/16 :goto_0

    .line 790
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":I
    .end local v5    # "_arg4":I
    .end local v6    # "_arg5":I
    :pswitch_54
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 792
    .restart local v1    # "_arg0":I
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 794
    .restart local v2    # "_arg1":I
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 796
    .restart local v3    # "_arg2":I
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 798
    .local v4, "_arg3":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 800
    .local v5, "_arg4":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 802
    .restart local v6    # "_arg5":I
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 804
    .local v7, "_arg6":I
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 806
    .local v8, "_arg7":I
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 807
    .local v9, "_arg8":I
    move-object/from16 v0, p0

    invoke-interface/range {v0 .. v9}, Landroid/net/INetd;->ipSecUpdateSecurityPolicy(IIILjava/lang/String;Ljava/lang/String;IIII)V

    .line 808
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 809
    move-object/from16 v22, v13

    move v15, v14

    goto/16 :goto_0

    .line 766
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":Ljava/lang/String;
    .end local v5    # "_arg4":Ljava/lang/String;
    .end local v6    # "_arg5":I
    .end local v7    # "_arg6":I
    .end local v8    # "_arg7":I
    .end local v9    # "_arg8":I
    :pswitch_55
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 768
    .restart local v1    # "_arg0":I
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 770
    .restart local v2    # "_arg1":I
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 772
    .restart local v3    # "_arg2":I
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 774
    .restart local v4    # "_arg3":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 776
    .restart local v5    # "_arg4":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 778
    .restart local v6    # "_arg5":I
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 780
    .restart local v7    # "_arg6":I
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 782
    .restart local v8    # "_arg7":I
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 783
    .restart local v9    # "_arg8":I
    move-object/from16 v0, p0

    invoke-interface/range {v0 .. v9}, Landroid/net/INetd;->ipSecAddSecurityPolicy(IIILjava/lang/String;Ljava/lang/String;IIII)V

    .line 784
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 785
    move-object/from16 v22, v13

    move v15, v14

    goto/16 :goto_0

    .line 758
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":Ljava/lang/String;
    .end local v5    # "_arg4":Ljava/lang/String;
    .end local v6    # "_arg5":I
    .end local v7    # "_arg6":I
    .end local v8    # "_arg7":I
    .end local v9    # "_arg8":I
    :pswitch_56
    sget-object v1, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/ParcelFileDescriptor;

    .line 759
    .local v1, "_arg0":Landroid/os/ParcelFileDescriptor;
    invoke-interface {v0, v1}, Landroid/net/INetd;->ipSecRemoveTransportModeTransform(Landroid/os/ParcelFileDescriptor;)V

    .line 760
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 761
    move-object/from16 v22, v13

    move v15, v14

    goto/16 :goto_0

    .line 740
    .end local v1    # "_arg0":Landroid/os/ParcelFileDescriptor;
    :pswitch_57
    sget-object v1, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/ParcelFileDescriptor;

    .line 742
    .restart local v1    # "_arg0":Landroid/os/ParcelFileDescriptor;
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 744
    .restart local v2    # "_arg1":I
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 746
    .restart local v3    # "_arg2":I
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 748
    .restart local v4    # "_arg3":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 750
    .restart local v5    # "_arg4":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 751
    .restart local v6    # "_arg5":I
    invoke-interface/range {v0 .. v6}, Landroid/net/INetd;->ipSecApplyTransportModeTransform(Landroid/os/ParcelFileDescriptor;IILjava/lang/String;Ljava/lang/String;I)V

    .line 752
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 753
    move-object/from16 v0, p0

    move-object/from16 v22, v13

    move v15, v14

    goto/16 :goto_0

    .line 720
    .end local v1    # "_arg0":Landroid/os/ParcelFileDescriptor;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":Ljava/lang/String;
    .end local v5    # "_arg4":Ljava/lang/String;
    .end local v6    # "_arg5":I
    :pswitch_58
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 722
    .local v1, "_arg0":I
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 724
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 726
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 728
    .local v4, "_arg3":I
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 730
    .local v5, "_arg4":I
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 732
    .restart local v6    # "_arg5":I
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 733
    .restart local v7    # "_arg6":I
    move-object/from16 v0, p0

    invoke-interface/range {v0 .. v7}, Landroid/net/INetd;->ipSecDeleteSecurityAssociation(ILjava/lang/String;Ljava/lang/String;IIII)V

    .line 734
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 735
    move-object/from16 v22, v13

    move v15, v14

    goto/16 :goto_0

    .line 672
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":I
    .end local v5    # "_arg4":I
    .end local v6    # "_arg5":I
    .end local v7    # "_arg6":I
    :pswitch_59
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 674
    .restart local v1    # "_arg0":I
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 676
    .local v2, "_arg1":I
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 678
    .restart local v3    # "_arg2":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 680
    .local v4, "_arg3":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 682
    .restart local v5    # "_arg4":I
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 684
    .restart local v6    # "_arg5":I
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 686
    .restart local v7    # "_arg6":I
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 688
    .restart local v8    # "_arg7":I
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 690
    .local v9, "_arg8":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v10

    .line 692
    .local v10, "_arg9":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 694
    .local v11, "_arg10":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 696
    .local v12, "_arg11":Ljava/lang/String;
    move-object v0, v13

    .end local v13    # "descriptor":Ljava/lang/String;
    .local v0, "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v13

    .line 698
    .local v13, "_arg12":[B
    move v15, v14

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 700
    .local v14, "_arg13":I
    move/from16 v16, v15

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    .line 702
    .local v15, "_arg14":Ljava/lang/String;
    move/from16 v17, v16

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v16

    .line 704
    .local v16, "_arg15":[B
    move/from16 v18, v17

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 706
    .local v17, "_arg16":I
    move/from16 v19, v18

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    .line 708
    .local v18, "_arg17":I
    move/from16 v20, v19

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    .line 710
    .local v19, "_arg18":I
    move/from16 v21, v20

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v20

    .line 712
    .local v20, "_arg19":I
    move/from16 v22, v21

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v21

    .line 713
    .local v21, "_arg20":I
    move-object/from16 v22, v0

    move-object/from16 v0, p0

    .end local v0    # "descriptor":Ljava/lang/String;
    .local v22, "descriptor":Ljava/lang/String;
    invoke-interface/range {v0 .. v21}, Landroid/net/INetd;->ipSecAddSecurityAssociation(IILjava/lang/String;Ljava/lang/String;IIIILjava/lang/String;[BILjava/lang/String;[BILjava/lang/String;[BIIIII)V

    .line 714
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 715
    move-object/from16 v11, p2

    move-object/from16 v12, p3

    const/4 v15, 0x1

    goto/16 :goto_0

    .line 657
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":Ljava/lang/String;
    .end local v5    # "_arg4":I
    .end local v6    # "_arg5":I
    .end local v7    # "_arg6":I
    .end local v8    # "_arg7":I
    .end local v9    # "_arg8":Ljava/lang/String;
    .end local v10    # "_arg9":[B
    .end local v11    # "_arg10":I
    .end local v12    # "_arg11":Ljava/lang/String;
    .end local v14    # "_arg13":I
    .end local v15    # "_arg14":Ljava/lang/String;
    .end local v16    # "_arg15":[B
    .end local v17    # "_arg16":I
    .end local v18    # "_arg17":I
    .end local v19    # "_arg18":I
    .end local v20    # "_arg19":I
    .end local v21    # "_arg20":I
    .end local v22    # "descriptor":Ljava/lang/String;
    .local v13, "descriptor":Ljava/lang/String;
    :pswitch_5a
    move-object/from16 v22, v13

    .end local v13    # "descriptor":Ljava/lang/String;
    .restart local v22    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 659
    .restart local v1    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 661
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 663
    .restart local v3    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 664
    .local v4, "_arg3":I
    invoke-interface {v0, v1, v2, v3, v4}, Landroid/net/INetd;->ipSecAllocateSpi(ILjava/lang/String;Ljava/lang/String;I)I

    move-result v5

    .line 665
    .local v5, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 666
    move-object/from16 v12, p3

    invoke-virtual {v12, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 667
    move-object/from16 v11, p2

    const/4 v15, 0x1

    goto/16 :goto_0

    .line 647
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":I
    .end local v5    # "_result":I
    .end local v22    # "descriptor":Ljava/lang/String;
    .restart local v13    # "descriptor":Ljava/lang/String;
    :pswitch_5b
    move-object/from16 v22, v13

    .end local v13    # "descriptor":Ljava/lang/String;
    .restart local v22    # "descriptor":Ljava/lang/String;
    sget-object v1, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v11, p2

    invoke-virtual {v11, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/ParcelFileDescriptor;

    .line 649
    .local v1, "_arg0":Landroid/os/ParcelFileDescriptor;
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 650
    .local v2, "_arg1":I
    invoke-interface {v0, v1, v2}, Landroid/net/INetd;->ipSecSetEncapSocketOwner(Landroid/os/ParcelFileDescriptor;I)V

    .line 651
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 652
    const/4 v15, 0x1

    goto/16 :goto_0

    .line 631
    .end local v1    # "_arg0":Landroid/os/ParcelFileDescriptor;
    .end local v2    # "_arg1":I
    .end local v22    # "descriptor":Ljava/lang/String;
    .restart local v13    # "descriptor":Ljava/lang/String;
    :pswitch_5c
    move-object/from16 v22, v13

    .end local v13    # "descriptor":Ljava/lang/String;
    .restart local v22    # "descriptor":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 633
    .local v1, "_arg0":I
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 635
    .restart local v2    # "_arg1":I
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 637
    .restart local v3    # "_arg2":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 639
    .local v4, "_arg3":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 640
    .local v5, "_arg4":Ljava/lang/String;
    invoke-interface/range {v0 .. v5}, Landroid/net/INetd;->setProcSysNet(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 641
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 642
    const/4 v15, 0x1

    goto/16 :goto_0

    .line 616
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":Ljava/lang/String;
    .end local v5    # "_arg4":Ljava/lang/String;
    .end local v22    # "descriptor":Ljava/lang/String;
    .restart local v13    # "descriptor":Ljava/lang/String;
    :pswitch_5d
    move-object/from16 v22, v13

    .end local v13    # "descriptor":Ljava/lang/String;
    .restart local v22    # "descriptor":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 618
    .restart local v1    # "_arg0":I
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 620
    .restart local v2    # "_arg1":I
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 622
    .restart local v3    # "_arg2":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 623
    .restart local v4    # "_arg3":Ljava/lang/String;
    invoke-interface {v0, v1, v2, v3, v4}, Landroid/net/INetd;->getProcSysNet(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 624
    .local v5, "_result":Ljava/lang/String;
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 625
    invoke-virtual {v12, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 626
    const/4 v15, 0x1

    goto/16 :goto_0

    .line 604
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":Ljava/lang/String;
    .end local v5    # "_result":Ljava/lang/String;
    .end local v22    # "descriptor":Ljava/lang/String;
    .restart local v13    # "descriptor":Ljava/lang/String;
    :pswitch_5e
    move-object/from16 v22, v13

    .end local v13    # "descriptor":Ljava/lang/String;
    .restart local v22    # "descriptor":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 606
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 608
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 609
    .local v3, "_arg2":I
    invoke-interface {v0, v1, v2, v3}, Landroid/net/INetd;->interfaceDelAddress(Ljava/lang/String;Ljava/lang/String;I)V

    .line 610
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 611
    const/4 v15, 0x1

    goto/16 :goto_0

    .line 592
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":I
    .end local v22    # "descriptor":Ljava/lang/String;
    .restart local v13    # "descriptor":Ljava/lang/String;
    :pswitch_5f
    move-object/from16 v22, v13

    .end local v13    # "descriptor":Ljava/lang/String;
    .restart local v22    # "descriptor":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 594
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 596
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 597
    .restart local v3    # "_arg2":I
    invoke-interface {v0, v1, v2, v3}, Landroid/net/INetd;->interfaceAddAddress(Ljava/lang/String;Ljava/lang/String;I)V

    .line 598
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 599
    const/4 v15, 0x1

    goto/16 :goto_0

    .line 584
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":I
    .end local v22    # "descriptor":Ljava/lang/String;
    .restart local v13    # "descriptor":Ljava/lang/String;
    :pswitch_60
    move-object/from16 v22, v13

    .end local v13    # "descriptor":Ljava/lang/String;
    .restart local v22    # "descriptor":Ljava/lang/String;
    invoke-interface {v0}, Landroid/net/INetd;->tetherGetStats()[Landroid/net/TetherStatsParcel;

    move-result-object v1

    .line 585
    .local v1, "_result":[Landroid/net/TetherStatsParcel;
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 586
    const/4 v15, 0x1

    invoke-virtual {v12, v1, v15}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 587
    goto/16 :goto_0

    .line 577
    .end local v1    # "_result":[Landroid/net/TetherStatsParcel;
    .end local v22    # "descriptor":Ljava/lang/String;
    .restart local v13    # "descriptor":Ljava/lang/String;
    :pswitch_61
    move-object/from16 v22, v13

    move v15, v14

    .end local v13    # "descriptor":Ljava/lang/String;
    .restart local v22    # "descriptor":Ljava/lang/String;
    invoke-interface {v0}, Landroid/net/INetd;->tetherApplyDnsInterfaces()Z

    move-result v1

    .line 578
    .local v1, "_result":Z
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 579
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 580
    goto/16 :goto_0

    .line 568
    .end local v1    # "_result":Z
    .end local v22    # "descriptor":Ljava/lang/String;
    .restart local v13    # "descriptor":Ljava/lang/String;
    :pswitch_62
    move-object/from16 v22, v13

    move v15, v14

    .end local v13    # "descriptor":Ljava/lang/String;
    .restart local v22    # "descriptor":Ljava/lang/String;
    sget-object v1, Landroid/net/UidRangeParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/net/UidRangeParcel;

    .line 570
    .local v1, "_arg0":[Landroid/net/UidRangeParcel;
    invoke-virtual {v11}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v2

    .line 571
    .local v2, "_arg1":[I
    invoke-interface {v0, v1, v2}, Landroid/net/INetd;->socketDestroy([Landroid/net/UidRangeParcel;[I)V

    .line 572
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 573
    goto/16 :goto_0

    .line 558
    .end local v1    # "_arg0":[Landroid/net/UidRangeParcel;
    .end local v2    # "_arg1":[I
    .end local v22    # "descriptor":Ljava/lang/String;
    .restart local v13    # "descriptor":Ljava/lang/String;
    :pswitch_63
    move-object/from16 v22, v13

    move v15, v14

    .end local v13    # "descriptor":Ljava/lang/String;
    .restart local v22    # "descriptor":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 560
    .local v1, "_arg0":Z
    sget-object v2, Landroid/net/UidRangeParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v2}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/net/UidRangeParcel;

    .line 561
    .local v2, "_arg1":[Landroid/net/UidRangeParcel;
    invoke-interface {v0, v1, v2}, Landroid/net/INetd;->networkRejectNonSecureVpn(Z[Landroid/net/UidRangeParcel;)V

    .line 562
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 563
    goto/16 :goto_0

    .line 548
    .end local v1    # "_arg0":Z
    .end local v2    # "_arg1":[Landroid/net/UidRangeParcel;
    .end local v22    # "descriptor":Ljava/lang/String;
    .restart local v13    # "descriptor":Ljava/lang/String;
    :pswitch_64
    move-object/from16 v22, v13

    move v15, v14

    .end local v13    # "descriptor":Ljava/lang/String;
    .restart local v22    # "descriptor":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 550
    .local v1, "_arg0":I
    sget-object v2, Landroid/net/UidRangeParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v2}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/net/UidRangeParcel;

    .line 551
    .restart local v2    # "_arg1":[Landroid/net/UidRangeParcel;
    invoke-interface {v0, v1, v2}, Landroid/net/INetd;->networkRemoveUidRanges(I[Landroid/net/UidRangeParcel;)V

    .line 552
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 553
    goto/16 :goto_0

    .line 538
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":[Landroid/net/UidRangeParcel;
    .end local v22    # "descriptor":Ljava/lang/String;
    .restart local v13    # "descriptor":Ljava/lang/String;
    :pswitch_65
    move-object/from16 v22, v13

    move v15, v14

    .end local v13    # "descriptor":Ljava/lang/String;
    .restart local v22    # "descriptor":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 540
    .restart local v1    # "_arg0":I
    sget-object v2, Landroid/net/UidRangeParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v2}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/net/UidRangeParcel;

    .line 541
    .restart local v2    # "_arg1":[Landroid/net/UidRangeParcel;
    invoke-interface {v0, v1, v2}, Landroid/net/INetd;->networkAddUidRanges(I[Landroid/net/UidRangeParcel;)V

    .line 542
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 543
    goto/16 :goto_0

    .line 528
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":[Landroid/net/UidRangeParcel;
    .end local v22    # "descriptor":Ljava/lang/String;
    .restart local v13    # "descriptor":Ljava/lang/String;
    :pswitch_66
    move-object/from16 v22, v13

    move v15, v14

    .end local v13    # "descriptor":Ljava/lang/String;
    .restart local v22    # "descriptor":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 530
    .restart local v1    # "_arg0":I
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 531
    .local v2, "_arg1":Ljava/lang/String;
    invoke-interface {v0, v1, v2}, Landroid/net/INetd;->networkRemoveInterface(ILjava/lang/String;)V

    .line 532
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 533
    goto/16 :goto_0

    .line 518
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v22    # "descriptor":Ljava/lang/String;
    .restart local v13    # "descriptor":Ljava/lang/String;
    :pswitch_67
    move-object/from16 v22, v13

    move v15, v14

    .end local v13    # "descriptor":Ljava/lang/String;
    .restart local v22    # "descriptor":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 520
    .restart local v1    # "_arg0":I
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 521
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-interface {v0, v1, v2}, Landroid/net/INetd;->networkAddInterface(ILjava/lang/String;)V

    .line 522
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 523
    goto/16 :goto_0

    .line 510
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v22    # "descriptor":Ljava/lang/String;
    .restart local v13    # "descriptor":Ljava/lang/String;
    :pswitch_68
    move-object/from16 v22, v13

    move v15, v14

    .end local v13    # "descriptor":Ljava/lang/String;
    .restart local v22    # "descriptor":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 511
    .restart local v1    # "_arg0":I
    invoke-interface {v0, v1}, Landroid/net/INetd;->networkDestroy(I)V

    .line 512
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 513
    goto :goto_0

    .line 500
    .end local v1    # "_arg0":I
    .end local v22    # "descriptor":Ljava/lang/String;
    .restart local v13    # "descriptor":Ljava/lang/String;
    :pswitch_69
    move-object/from16 v22, v13

    move v15, v14

    .end local v13    # "descriptor":Ljava/lang/String;
    .restart local v22    # "descriptor":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 502
    .restart local v1    # "_arg0":I
    invoke-virtual {v11}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 503
    .local v2, "_arg1":Z
    invoke-interface {v0, v1, v2}, Landroid/net/INetd;->networkCreateVpn(IZ)V

    .line 504
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 505
    goto :goto_0

    .line 490
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Z
    .end local v22    # "descriptor":Ljava/lang/String;
    .restart local v13    # "descriptor":Ljava/lang/String;
    :pswitch_6a
    move-object/from16 v22, v13

    move v15, v14

    .end local v13    # "descriptor":Ljava/lang/String;
    .restart local v22    # "descriptor":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 492
    .restart local v1    # "_arg0":I
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 493
    .local v2, "_arg1":I
    invoke-interface {v0, v1, v2}, Landroid/net/INetd;->networkCreatePhysical(II)V

    .line 494
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 495
    goto :goto_0

    .line 481
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v22    # "descriptor":Ljava/lang/String;
    .restart local v13    # "descriptor":Ljava/lang/String;
    :pswitch_6b
    move-object/from16 v22, v13

    move v15, v14

    .end local v13    # "descriptor":Ljava/lang/String;
    .restart local v22    # "descriptor":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 482
    .local v1, "_arg0":Z
    invoke-interface {v0, v1}, Landroid/net/INetd;->bandwidthEnableDataSaver(Z)Z

    move-result v2

    .line 483
    .local v2, "_result":Z
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 484
    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 485
    goto :goto_0

    .line 468
    .end local v1    # "_arg0":Z
    .end local v2    # "_result":Z
    .end local v22    # "descriptor":Ljava/lang/String;
    .restart local v13    # "descriptor":Ljava/lang/String;
    :pswitch_6c
    move-object/from16 v22, v13

    move v15, v14

    .end local v13    # "descriptor":Ljava/lang/String;
    .restart local v22    # "descriptor":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 470
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 472
    .local v2, "_arg1":Z
    invoke-virtual {v11}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v3

    .line 473
    .local v3, "_arg2":[I
    invoke-interface {v0, v1, v2, v3}, Landroid/net/INetd;->firewallReplaceUidChain(Ljava/lang/String;Z[I)Z

    move-result v4

    .line 474
    .local v4, "_result":Z
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 475
    invoke-virtual {v12, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 476
    goto :goto_0

    .line 460
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Z
    .end local v3    # "_arg2":[I
    .end local v4    # "_result":Z
    .end local v22    # "descriptor":Ljava/lang/String;
    .restart local v13    # "descriptor":Ljava/lang/String;
    :pswitch_6d
    move-object/from16 v22, v13

    move v15, v14

    .end local v13    # "descriptor":Ljava/lang/String;
    .restart local v22    # "descriptor":Ljava/lang/String;
    invoke-interface {v0}, Landroid/net/INetd;->isAlive()Z

    move-result v1

    .line 461
    .local v1, "_result":Z
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 462
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 463
    nop

    .line 1612
    .end local v1    # "_result":Z
    :goto_0
    return v15

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6d
        :pswitch_6c
        :pswitch_6b
        :pswitch_6a
        :pswitch_69
        :pswitch_68
        :pswitch_67
        :pswitch_66
        :pswitch_65
        :pswitch_64
        :pswitch_63
        :pswitch_62
        :pswitch_61
        :pswitch_60
        :pswitch_5f
        :pswitch_5e
        :pswitch_5d
        :pswitch_5c
        :pswitch_5b
        :pswitch_5a
        :pswitch_59
        :pswitch_58
        :pswitch_57
        :pswitch_56
        :pswitch_55
        :pswitch_54
        :pswitch_53
        :pswitch_52
        :pswitch_51
        :pswitch_50
        :pswitch_4f
        :pswitch_4e
        :pswitch_4d
        :pswitch_4c
        :pswitch_4b
        :pswitch_4a
        :pswitch_49
        :pswitch_48
        :pswitch_47
        :pswitch_46
        :pswitch_45
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
