.class public abstract Lvendor/noth/hardware/charge/ICharge$Stub;
.super Landroid/os/Binder;
.source "ICharge.java"

# interfaces
.implements Lvendor/noth/hardware/charge/ICharge;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/noth/hardware/charge/ICharge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lvendor/noth/hardware/charge/ICharge$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_GetIbusmAInt:I = 0x19

.field static final TRANSACTION_GetNtChgDataInt:I = 0x1b

.field static final TRANSACTION_GetVbusUvInt:I = 0x1a

.field static final TRANSACTION_getAbnormalStatusInt:I = 0x3

.field static final TRANSACTION_getBatQmaxInt:I = 0x14

.field static final TRANSACTION_getBatQuseInt:I = 0x15

.field static final TRANSACTION_getBatResistanceInt:I = 0x16

.field static final TRANSACTION_getChgPath:I = 0x7

.field static final TRANSACTION_getFgChemical_id:I = 0x8

.field static final TRANSACTION_getInterfaceHash:I = 0xfffffe

.field static final TRANSACTION_getInterfaceVersion:I = 0xffffff

.field static final TRANSACTION_getMaxChargingCurrentInt:I = 0x17

.field static final TRANSACTION_getMaxChargingVoltageInt:I = 0x18

.field static final TRANSACTION_getOtgSwitch:I = 0x13

.field static final TRANSACTION_getPlatformVbat:I = 0x4

.field static final TRANSACTION_getRealCapacityInt:I = 0x2

.field static final TRANSACTION_getRemainCapacityInt:I = 0x1

.field static final TRANSACTION_getTypec_cc_orientation:I = 0x5

.field static final TRANSACTION_getUsbTemp:I = 0x11

.field static final TRANSACTION_getUsb_real_type:I = 0x6

.field static final TRANSACTION_getWireless_boost_en:I = 0xa

.field static final TRANSACTION_getWireless_fw_version:I = 0xb

.field static final TRANSACTION_getWls_reverse_status:I = 0x9

.field static final TRANSACTION_setAgingTestFlag:I = 0xf

.field static final TRANSACTION_setChargeFccInt:I = 0xc

.field static final TRANSACTION_setOnLineParam:I = 0x10

.field static final TRANSACTION_setOtgSwitch:I = 0x12

.field static final TRANSACTION_setShip_mode_en:I = 0xe

.field static final TRANSACTION_setUsb_charger_en:I = 0xd


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 144
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 145
    invoke-virtual {p0}, Landroid/os/Binder;->markVintfStability()V

    .line 146
    sget-object v0, Lvendor/noth/hardware/charge/ICharge;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 147
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lvendor/noth/hardware/charge/ICharge;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 154
    if-nez p0, :cond_0

    .line 155
    const/4 v0, 0x0

    return-object v0

    .line 157
    :cond_0
    sget-object v0, Lvendor/noth/hardware/charge/ICharge;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 158
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lvendor/noth/hardware/charge/ICharge;

    if-eqz v1, :cond_1

    .line 159
    move-object v1, v0

    check-cast v1, Lvendor/noth/hardware/charge/ICharge;

    return-object v1

    .line 161
    :cond_1
    new-instance v1, Lvendor/noth/hardware/charge/ICharge$Stub$Proxy;

    invoke-direct {v1, p0}, Lvendor/noth/hardware/charge/ICharge$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 170
    sparse-switch p0, :sswitch_data_0

    .line 290
    const/4 v0, 0x0

    return-object v0

    .line 282
    :sswitch_0
    const-string v0, "getInterfaceVersion"

    return-object v0

    .line 286
    :sswitch_1
    const-string v0, "getInterfaceHash"

    return-object v0

    .line 278
    :sswitch_2
    const-string v0, "GetNtChgDataInt"

    return-object v0

    .line 274
    :sswitch_3
    const-string v0, "GetVbusUvInt"

    return-object v0

    .line 270
    :sswitch_4
    const-string v0, "GetIbusmAInt"

    return-object v0

    .line 266
    :sswitch_5
    const-string v0, "getMaxChargingVoltageInt"

    return-object v0

    .line 262
    :sswitch_6
    const-string v0, "getMaxChargingCurrentInt"

    return-object v0

    .line 258
    :sswitch_7
    const-string v0, "getBatResistanceInt"

    return-object v0

    .line 254
    :sswitch_8
    const-string v0, "getBatQuseInt"

    return-object v0

    .line 250
    :sswitch_9
    const-string v0, "getBatQmaxInt"

    return-object v0

    .line 246
    :sswitch_a
    const-string v0, "getOtgSwitch"

    return-object v0

    .line 242
    :sswitch_b
    const-string v0, "setOtgSwitch"

    return-object v0

    .line 238
    :sswitch_c
    const-string v0, "getUsbTemp"

    return-object v0

    .line 234
    :sswitch_d
    const-string v0, "setOnLineParam"

    return-object v0

    .line 230
    :sswitch_e
    const-string v0, "setAgingTestFlag"

    return-object v0

    .line 226
    :sswitch_f
    const-string v0, "setShip_mode_en"

    return-object v0

    .line 222
    :sswitch_10
    const-string v0, "setUsb_charger_en"

    return-object v0

    .line 218
    :sswitch_11
    const-string v0, "setChargeFccInt"

    return-object v0

    .line 214
    :sswitch_12
    const-string v0, "getWireless_fw_version"

    return-object v0

    .line 210
    :sswitch_13
    const-string v0, "getWireless_boost_en"

    return-object v0

    .line 206
    :sswitch_14
    const-string v0, "getWls_reverse_status"

    return-object v0

    .line 202
    :sswitch_15
    const-string v0, "getFgChemical_id"

    return-object v0

    .line 198
    :sswitch_16
    const-string v0, "getChgPath"

    return-object v0

    .line 194
    :sswitch_17
    const-string v0, "getUsb_real_type"

    return-object v0

    .line 190
    :sswitch_18
    const-string v0, "getTypec_cc_orientation"

    return-object v0

    .line 186
    :sswitch_19
    const-string v0, "getPlatformVbat"

    return-object v0

    .line 182
    :sswitch_1a
    const-string v0, "getAbnormalStatusInt"

    return-object v0

    .line 178
    :sswitch_1b
    const-string v0, "getRealCapacityInt"

    return-object v0

    .line 174
    :sswitch_1c
    const-string v0, "getRemainCapacityInt"

    return-object v0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1c
        0x2 -> :sswitch_1b
        0x3 -> :sswitch_1a
        0x4 -> :sswitch_19
        0x5 -> :sswitch_18
        0x6 -> :sswitch_17
        0x7 -> :sswitch_16
        0x8 -> :sswitch_15
        0x9 -> :sswitch_14
        0xa -> :sswitch_13
        0xb -> :sswitch_12
        0xc -> :sswitch_11
        0xd -> :sswitch_10
        0xe -> :sswitch_f
        0xf -> :sswitch_e
        0x10 -> :sswitch_d
        0x11 -> :sswitch_c
        0x12 -> :sswitch_b
        0x13 -> :sswitch_a
        0x14 -> :sswitch_9
        0x15 -> :sswitch_8
        0x16 -> :sswitch_7
        0x17 -> :sswitch_6
        0x18 -> :sswitch_5
        0x19 -> :sswitch_4
        0x1a -> :sswitch_3
        0x1b -> :sswitch_2
        0xfffffe -> :sswitch_1
        0xffffff -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 165
    return-object p0
.end method

.method public getMaxTransactionId()I
    .locals 1

    .line 1151
    const v0, 0xfffffe

    return v0
.end method

.method public getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 297
    invoke-static {p1}, Lvendor/noth/hardware/charge/ICharge$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 4
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 301
    sget-object v0, Lvendor/noth/hardware/charge/ICharge;->DESCRIPTOR:Ljava/lang/String;

    .line 302
    .local v0, "descriptor":Ljava/lang/String;
    const v1, 0xffffff

    const/4 v2, 0x1

    if-lt p1, v2, :cond_0

    if-gt p1, v1, :cond_0

    .line 303
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 305
    :cond_0
    const v3, 0x5f4e5446

    if-ne p1, v3, :cond_1

    .line 306
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 307
    return v2

    .line 309
    :cond_1
    if-ne p1, v1, :cond_2

    .line 310
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 311
    invoke-interface {p0}, Lvendor/noth/hardware/charge/ICharge;->getInterfaceVersion()I

    move-result v1

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 312
    return v2

    .line 314
    :cond_2
    const v1, 0xfffffe

    if-ne p1, v1, :cond_3

    .line 315
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 316
    invoke-interface {p0}, Lvendor/noth/hardware/charge/ICharge;->getInterfaceHash()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 317
    return v2

    .line 319
    :cond_3
    packed-switch p1, :pswitch_data_0

    .line 531
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 522
    :pswitch_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 523
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 524
    invoke-interface {p0, v1}, Lvendor/noth/hardware/charge/ICharge;->GetNtChgDataInt(I)I

    move-result v3

    .line 525
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 526
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 527
    goto/16 :goto_0

    .line 514
    .end local v1    # "_arg0":I
    .end local v3    # "_result":I
    :pswitch_1
    invoke-interface {p0}, Lvendor/noth/hardware/charge/ICharge;->GetVbusUvInt()I

    move-result v1

    .line 515
    .local v1, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 516
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 517
    goto/16 :goto_0

    .line 507
    .end local v1    # "_result":I
    :pswitch_2
    invoke-interface {p0}, Lvendor/noth/hardware/charge/ICharge;->GetIbusmAInt()I

    move-result v1

    .line 508
    .restart local v1    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 509
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 510
    goto/16 :goto_0

    .line 500
    .end local v1    # "_result":I
    :pswitch_3
    invoke-interface {p0}, Lvendor/noth/hardware/charge/ICharge;->getMaxChargingVoltageInt()I

    move-result v1

    .line 501
    .restart local v1    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 502
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 503
    goto/16 :goto_0

    .line 493
    .end local v1    # "_result":I
    :pswitch_4
    invoke-interface {p0}, Lvendor/noth/hardware/charge/ICharge;->getMaxChargingCurrentInt()I

    move-result v1

    .line 494
    .restart local v1    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 495
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 496
    goto/16 :goto_0

    .line 486
    .end local v1    # "_result":I
    :pswitch_5
    invoke-interface {p0}, Lvendor/noth/hardware/charge/ICharge;->getBatResistanceInt()I

    move-result v1

    .line 487
    .restart local v1    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 488
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 489
    goto/16 :goto_0

    .line 479
    .end local v1    # "_result":I
    :pswitch_6
    invoke-interface {p0}, Lvendor/noth/hardware/charge/ICharge;->getBatQuseInt()I

    move-result v1

    .line 480
    .restart local v1    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 481
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 482
    goto/16 :goto_0

    .line 472
    .end local v1    # "_result":I
    :pswitch_7
    invoke-interface {p0}, Lvendor/noth/hardware/charge/ICharge;->getBatQmaxInt()I

    move-result v1

    .line 473
    .restart local v1    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 474
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 475
    goto/16 :goto_0

    .line 465
    .end local v1    # "_result":I
    :pswitch_8
    invoke-interface {p0}, Lvendor/noth/hardware/charge/ICharge;->getOtgSwitch()I

    move-result v1

    .line 466
    .restart local v1    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 467
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 468
    goto/16 :goto_0

    .line 457
    .end local v1    # "_result":I
    :pswitch_9
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 458
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 459
    invoke-interface {p0, v1}, Lvendor/noth/hardware/charge/ICharge;->setOtgSwitch(I)V

    .line 460
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 461
    goto/16 :goto_0

    .line 449
    .end local v1    # "_arg0":I
    :pswitch_a
    invoke-interface {p0}, Lvendor/noth/hardware/charge/ICharge;->getUsbTemp()I

    move-result v1

    .line 450
    .local v1, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 451
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 452
    goto/16 :goto_0

    .line 439
    .end local v1    # "_result":I
    :pswitch_b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 441
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 442
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 443
    invoke-interface {p0, v1, v3}, Lvendor/noth/hardware/charge/ICharge;->setOnLineParam(ILjava/lang/String;)V

    .line 444
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 445
    goto/16 :goto_0

    .line 430
    .end local v1    # "_arg0":I
    .end local v3    # "_arg1":Ljava/lang/String;
    :pswitch_c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 431
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 432
    invoke-interface {p0, v1}, Lvendor/noth/hardware/charge/ICharge;->setAgingTestFlag(I)V

    .line 433
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 434
    goto/16 :goto_0

    .line 421
    .end local v1    # "_arg0":I
    :pswitch_d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 422
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 423
    invoke-interface {p0, v1}, Lvendor/noth/hardware/charge/ICharge;->setShip_mode_en(I)V

    .line 424
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 425
    goto/16 :goto_0

    .line 412
    .end local v1    # "_arg0":I
    :pswitch_e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 413
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 414
    invoke-interface {p0, v1}, Lvendor/noth/hardware/charge/ICharge;->setUsb_charger_en(I)V

    .line 415
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 416
    goto/16 :goto_0

    .line 401
    .end local v1    # "_arg0":I
    :pswitch_f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 403
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 404
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 405
    invoke-interface {p0, v1, v3}, Lvendor/noth/hardware/charge/ICharge;->setChargeFccInt(II)V

    .line 406
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 407
    goto/16 :goto_0

    .line 393
    .end local v1    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_10
    invoke-interface {p0}, Lvendor/noth/hardware/charge/ICharge;->getWireless_fw_version()I

    move-result v1

    .line 394
    .local v1, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 395
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 396
    goto/16 :goto_0

    .line 386
    .end local v1    # "_result":I
    :pswitch_11
    invoke-interface {p0}, Lvendor/noth/hardware/charge/ICharge;->getWireless_boost_en()I

    move-result v1

    .line 387
    .restart local v1    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 388
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 389
    goto :goto_0

    .line 379
    .end local v1    # "_result":I
    :pswitch_12
    invoke-interface {p0}, Lvendor/noth/hardware/charge/ICharge;->getWls_reverse_status()I

    move-result v1

    .line 380
    .restart local v1    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 381
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 382
    goto :goto_0

    .line 372
    .end local v1    # "_result":I
    :pswitch_13
    invoke-interface {p0}, Lvendor/noth/hardware/charge/ICharge;->getFgChemical_id()I

    move-result v1

    .line 373
    .restart local v1    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 374
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 375
    goto :goto_0

    .line 365
    .end local v1    # "_result":I
    :pswitch_14
    invoke-interface {p0}, Lvendor/noth/hardware/charge/ICharge;->getChgPath()I

    move-result v1

    .line 366
    .restart local v1    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 367
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 368
    goto :goto_0

    .line 358
    .end local v1    # "_result":I
    :pswitch_15
    invoke-interface {p0}, Lvendor/noth/hardware/charge/ICharge;->getUsb_real_type()Ljava/lang/String;

    move-result-object v1

    .line 359
    .local v1, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 360
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 361
    goto :goto_0

    .line 351
    .end local v1    # "_result":Ljava/lang/String;
    :pswitch_16
    invoke-interface {p0}, Lvendor/noth/hardware/charge/ICharge;->getTypec_cc_orientation()I

    move-result v1

    .line 352
    .local v1, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 353
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 354
    goto :goto_0

    .line 344
    .end local v1    # "_result":I
    :pswitch_17
    invoke-interface {p0}, Lvendor/noth/hardware/charge/ICharge;->getPlatformVbat()I

    move-result v1

    .line 345
    .restart local v1    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 346
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 347
    goto :goto_0

    .line 337
    .end local v1    # "_result":I
    :pswitch_18
    invoke-interface {p0}, Lvendor/noth/hardware/charge/ICharge;->getAbnormalStatusInt()I

    move-result v1

    .line 338
    .restart local v1    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 339
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 340
    goto :goto_0

    .line 330
    .end local v1    # "_result":I
    :pswitch_19
    invoke-interface {p0}, Lvendor/noth/hardware/charge/ICharge;->getRealCapacityInt()I

    move-result v1

    .line 331
    .restart local v1    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 332
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 333
    goto :goto_0

    .line 323
    .end local v1    # "_result":I
    :pswitch_1a
    invoke-interface {p0}, Lvendor/noth/hardware/charge/ICharge;->getRemainCapacityInt()I

    move-result v1

    .line 324
    .restart local v1    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 325
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 326
    nop

    .line 534
    .end local v1    # "_result":I
    :goto_0
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x1
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
