.class public abstract Landroid/hardware/tv/mediaquality/IMediaQuality$Stub;
.super Landroid/os/Binder;
.source "IMediaQuality.java"

# interfaces
.implements Landroid/hardware/tv/mediaquality/IMediaQuality;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/tv/mediaquality/IMediaQuality;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/tv/mediaquality/IMediaQuality$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_getAmbientBacklightDetectionEnabled:I = 0x4

.field static final TRANSACTION_getAutoAqEnabled:I = 0xc

.field static final TRANSACTION_getAutoPqEnabled:I = 0x6

.field static final TRANSACTION_getAutoSrEnabled:I = 0x9

.field static final TRANSACTION_getInterfaceHash:I = 0xfffffe

.field static final TRANSACTION_getInterfaceVersion:I = 0xffffff

.field static final TRANSACTION_getParamCaps:I = 0x14

.field static final TRANSACTION_getPictureProfileListener:I = 0xe

.field static final TRANSACTION_getSoundProfileListener:I = 0x11

.field static final TRANSACTION_getVendorParamCaps:I = 0x15

.field static final TRANSACTION_isAutoAqSupported:I = 0xb

.field static final TRANSACTION_isAutoPqSupported:I = 0x5

.field static final TRANSACTION_isAutoSrSupported:I = 0x8

.field static final TRANSACTION_sendDefaultPictureParameters:I = 0x10

.field static final TRANSACTION_sendDefaultSoundParameters:I = 0x13

.field static final TRANSACTION_setAmbientBacklightCallback:I = 0x1

.field static final TRANSACTION_setAmbientBacklightDetectionEnabled:I = 0x3

.field static final TRANSACTION_setAmbientBacklightDetector:I = 0x2

.field static final TRANSACTION_setAutoAqEnabled:I = 0xd

.field static final TRANSACTION_setAutoPqEnabled:I = 0x7

.field static final TRANSACTION_setAutoSrEnabled:I = 0xa

.field static final TRANSACTION_setPictureProfileAdjustmentListener:I = 0xf

.field static final TRANSACTION_setSoundProfileAdjustmentListener:I = 0x12


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 114
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 115
    invoke-virtual {p0}, Landroid/os/Binder;->markVintfStability()V

    .line 116
    sget-object v0, Landroid/hardware/tv/mediaquality/IMediaQuality;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 117
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/hardware/tv/mediaquality/IMediaQuality;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 124
    if-nez p0, :cond_0

    .line 125
    const/4 v0, 0x0

    return-object v0

    .line 127
    :cond_0
    sget-object v0, Landroid/hardware/tv/mediaquality/IMediaQuality;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 128
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/hardware/tv/mediaquality/IMediaQuality;

    if-eqz v1, :cond_1

    .line 129
    move-object v1, v0

    check-cast v1, Landroid/hardware/tv/mediaquality/IMediaQuality;

    return-object v1

    .line 131
    :cond_1
    new-instance v1, Landroid/hardware/tv/mediaquality/IMediaQuality$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/hardware/tv/mediaquality/IMediaQuality$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 140
    sparse-switch p0, :sswitch_data_0

    .line 236
    const/4 v0, 0x0

    return-object v0

    .line 228
    :sswitch_0
    const-string/jumbo v0, "getInterfaceVersion"

    return-object v0

    .line 232
    :sswitch_1
    const-string/jumbo v0, "getInterfaceHash"

    return-object v0

    .line 224
    :sswitch_2
    const-string/jumbo v0, "getVendorParamCaps"

    return-object v0

    .line 220
    :sswitch_3
    const-string/jumbo v0, "getParamCaps"

    return-object v0

    .line 216
    :sswitch_4
    const-string/jumbo v0, "sendDefaultSoundParameters"

    return-object v0

    .line 212
    :sswitch_5
    const-string/jumbo v0, "setSoundProfileAdjustmentListener"

    return-object v0

    .line 208
    :sswitch_6
    const-string/jumbo v0, "getSoundProfileListener"

    return-object v0

    .line 204
    :sswitch_7
    const-string/jumbo v0, "sendDefaultPictureParameters"

    return-object v0

    .line 200
    :sswitch_8
    const-string/jumbo v0, "setPictureProfileAdjustmentListener"

    return-object v0

    .line 196
    :sswitch_9
    const-string/jumbo v0, "getPictureProfileListener"

    return-object v0

    .line 192
    :sswitch_a
    const-string/jumbo v0, "setAutoAqEnabled"

    return-object v0

    .line 188
    :sswitch_b
    const-string/jumbo v0, "getAutoAqEnabled"

    return-object v0

    .line 184
    :sswitch_c
    const-string/jumbo v0, "isAutoAqSupported"

    return-object v0

    .line 180
    :sswitch_d
    const-string/jumbo v0, "setAutoSrEnabled"

    return-object v0

    .line 176
    :sswitch_e
    const-string/jumbo v0, "getAutoSrEnabled"

    return-object v0

    .line 172
    :sswitch_f
    const-string/jumbo v0, "isAutoSrSupported"

    return-object v0

    .line 168
    :sswitch_10
    const-string/jumbo v0, "setAutoPqEnabled"

    return-object v0

    .line 164
    :sswitch_11
    const-string/jumbo v0, "getAutoPqEnabled"

    return-object v0

    .line 160
    :sswitch_12
    const-string/jumbo v0, "isAutoPqSupported"

    return-object v0

    .line 156
    :sswitch_13
    const-string/jumbo v0, "getAmbientBacklightDetectionEnabled"

    return-object v0

    .line 152
    :sswitch_14
    const-string/jumbo v0, "setAmbientBacklightDetectionEnabled"

    return-object v0

    .line 148
    :sswitch_15
    const-string/jumbo v0, "setAmbientBacklightDetector"

    return-object v0

    .line 144
    :sswitch_16
    const-string/jumbo v0, "setAmbientBacklightCallback"

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_16
        0x2 -> :sswitch_15
        0x3 -> :sswitch_14
        0x4 -> :sswitch_13
        0x5 -> :sswitch_12
        0x6 -> :sswitch_11
        0x7 -> :sswitch_10
        0x8 -> :sswitch_f
        0x9 -> :sswitch_e
        0xa -> :sswitch_d
        0xb -> :sswitch_c
        0xc -> :sswitch_b
        0xd -> :sswitch_a
        0xe -> :sswitch_9
        0xf -> :sswitch_8
        0x10 -> :sswitch_7
        0x11 -> :sswitch_6
        0x12 -> :sswitch_5
        0x13 -> :sswitch_4
        0x14 -> :sswitch_3
        0x15 -> :sswitch_2
        0xfffffe -> :sswitch_1
        0xffffff -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 135
    return-object p0
.end method

.method public getMaxTransactionId()I
    .locals 1

    .line 943
    const v0, 0xfffffe

    return v0
.end method

.method public getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 243
    invoke-static {p1}, Landroid/hardware/tv/mediaquality/IMediaQuality$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 6
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 247
    sget-object v0, Landroid/hardware/tv/mediaquality/IMediaQuality;->DESCRIPTOR:Ljava/lang/String;

    .line 248
    .local v0, "descriptor":Ljava/lang/String;
    const v1, 0xffffff

    const/4 v2, 0x1

    if-lt p1, v2, :cond_0

    if-gt p1, v1, :cond_0

    .line 249
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 251
    :cond_0
    const v3, 0x5f4e5446

    if-ne p1, v3, :cond_1

    .line 252
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 253
    return v2

    .line 255
    :cond_1
    if-ne p1, v1, :cond_2

    .line 256
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 257
    invoke-interface {p0}, Landroid/hardware/tv/mediaquality/IMediaQuality;->getInterfaceVersion()I

    move-result v1

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 258
    return v2

    .line 260
    :cond_2
    const v1, 0xfffffe

    if-ne p1, v1, :cond_3

    .line 261
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 262
    invoke-interface {p0}, Landroid/hardware/tv/mediaquality/IMediaQuality;->getInterfaceHash()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 263
    return v2

    .line 265
    :cond_3
    const-string v1, "Array too large: "

    const v3, 0xf4240

    packed-switch p1, :pswitch_data_0

    .line 460
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 442
    :pswitch_0
    sget-object v4, Landroid/hardware/tv/mediaquality/VendorParameterIdentifier;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/hardware/tv/mediaquality/VendorParameterIdentifier;

    .line 444
    .local v4, "_arg0":[Landroid/hardware/tv/mediaquality/VendorParameterIdentifier;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 445
    .local v5, "_arg1_length":I
    if-gt v5, v3, :cond_5

    .line 447
    if-gez v5, :cond_4

    .line 448
    const/4 v1, 0x0

    .local v1, "_arg1":[Landroid/hardware/tv/mediaquality/VendorParamCapability;
    goto :goto_0

    .line 450
    .end local v1    # "_arg1":[Landroid/hardware/tv/mediaquality/VendorParamCapability;
    :cond_4
    new-array v1, v5, [Landroid/hardware/tv/mediaquality/VendorParamCapability;

    .line 452
    .restart local v1    # "_arg1":[Landroid/hardware/tv/mediaquality/VendorParamCapability;
    :goto_0
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 453
    invoke-interface {p0, v4, v1}, Landroid/hardware/tv/mediaquality/IMediaQuality;->getVendorParamCaps([Landroid/hardware/tv/mediaquality/VendorParameterIdentifier;[Landroid/hardware/tv/mediaquality/VendorParamCapability;)V

    .line 454
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 455
    invoke-virtual {p3, v1, v2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 456
    goto/16 :goto_2

    .line 446
    .end local v1    # "_arg1":[Landroid/hardware/tv/mediaquality/VendorParamCapability;
    :cond_5
    new-instance v2, Landroid/os/BadParcelableException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 423
    .end local v4    # "_arg0":[Landroid/hardware/tv/mediaquality/VendorParameterIdentifier;
    .end local v5    # "_arg1_length":I
    :pswitch_1
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v4

    .line 425
    .local v4, "_arg0":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 426
    .restart local v5    # "_arg1_length":I
    if-gt v5, v3, :cond_7

    .line 428
    if-gez v5, :cond_6

    .line 429
    const/4 v1, 0x0

    .local v1, "_arg1":[Landroid/hardware/tv/mediaquality/ParamCapability;
    goto :goto_1

    .line 431
    .end local v1    # "_arg1":[Landroid/hardware/tv/mediaquality/ParamCapability;
    :cond_6
    new-array v1, v5, [Landroid/hardware/tv/mediaquality/ParamCapability;

    .line 433
    .restart local v1    # "_arg1":[Landroid/hardware/tv/mediaquality/ParamCapability;
    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 434
    invoke-interface {p0, v4, v1}, Landroid/hardware/tv/mediaquality/IMediaQuality;->getParamCaps([B[Landroid/hardware/tv/mediaquality/ParamCapability;)V

    .line 435
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 436
    invoke-virtual {p3, v1, v2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 437
    goto/16 :goto_2

    .line 427
    .end local v1    # "_arg1":[Landroid/hardware/tv/mediaquality/ParamCapability;
    :cond_7
    new-instance v2, Landroid/os/BadParcelableException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 414
    .end local v4    # "_arg0":[B
    .end local v5    # "_arg1_length":I
    :pswitch_2
    sget-object v1, Landroid/hardware/tv/mediaquality/SoundParameters;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/tv/mediaquality/SoundParameters;

    .line 415
    .local v1, "_arg0":Landroid/hardware/tv/mediaquality/SoundParameters;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 416
    invoke-interface {p0, v1}, Landroid/hardware/tv/mediaquality/IMediaQuality;->sendDefaultSoundParameters(Landroid/hardware/tv/mediaquality/SoundParameters;)V

    .line 417
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 418
    goto/16 :goto_2

    .line 405
    .end local v1    # "_arg0":Landroid/hardware/tv/mediaquality/SoundParameters;
    :pswitch_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/hardware/tv/mediaquality/ISoundProfileAdjustmentListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/tv/mediaquality/ISoundProfileAdjustmentListener;

    move-result-object v1

    .line 406
    .local v1, "_arg0":Landroid/hardware/tv/mediaquality/ISoundProfileAdjustmentListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 407
    invoke-interface {p0, v1}, Landroid/hardware/tv/mediaquality/IMediaQuality;->setSoundProfileAdjustmentListener(Landroid/hardware/tv/mediaquality/ISoundProfileAdjustmentListener;)V

    .line 408
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 409
    goto/16 :goto_2

    .line 397
    .end local v1    # "_arg0":Landroid/hardware/tv/mediaquality/ISoundProfileAdjustmentListener;
    :pswitch_4
    invoke-interface {p0}, Landroid/hardware/tv/mediaquality/IMediaQuality;->getSoundProfileListener()Landroid/hardware/tv/mediaquality/ISoundProfileChangedListener;

    move-result-object v1

    .line 398
    .local v1, "_result":Landroid/hardware/tv/mediaquality/ISoundProfileChangedListener;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 399
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 400
    goto/16 :goto_2

    .line 389
    .end local v1    # "_result":Landroid/hardware/tv/mediaquality/ISoundProfileChangedListener;
    :pswitch_5
    sget-object v1, Landroid/hardware/tv/mediaquality/PictureParameters;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/tv/mediaquality/PictureParameters;

    .line 390
    .local v1, "_arg0":Landroid/hardware/tv/mediaquality/PictureParameters;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 391
    invoke-interface {p0, v1}, Landroid/hardware/tv/mediaquality/IMediaQuality;->sendDefaultPictureParameters(Landroid/hardware/tv/mediaquality/PictureParameters;)V

    .line 392
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 393
    goto/16 :goto_2

    .line 380
    .end local v1    # "_arg0":Landroid/hardware/tv/mediaquality/PictureParameters;
    :pswitch_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/hardware/tv/mediaquality/IPictureProfileAdjustmentListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/tv/mediaquality/IPictureProfileAdjustmentListener;

    move-result-object v1

    .line 381
    .local v1, "_arg0":Landroid/hardware/tv/mediaquality/IPictureProfileAdjustmentListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 382
    invoke-interface {p0, v1}, Landroid/hardware/tv/mediaquality/IMediaQuality;->setPictureProfileAdjustmentListener(Landroid/hardware/tv/mediaquality/IPictureProfileAdjustmentListener;)V

    .line 383
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 384
    goto/16 :goto_2

    .line 372
    .end local v1    # "_arg0":Landroid/hardware/tv/mediaquality/IPictureProfileAdjustmentListener;
    :pswitch_7
    invoke-interface {p0}, Landroid/hardware/tv/mediaquality/IMediaQuality;->getPictureProfileListener()Landroid/hardware/tv/mediaquality/IPictureProfileChangedListener;

    move-result-object v1

    .line 373
    .local v1, "_result":Landroid/hardware/tv/mediaquality/IPictureProfileChangedListener;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 374
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 375
    goto/16 :goto_2

    .line 364
    .end local v1    # "_result":Landroid/hardware/tv/mediaquality/IPictureProfileChangedListener;
    :pswitch_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 365
    .local v1, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 366
    invoke-interface {p0, v1}, Landroid/hardware/tv/mediaquality/IMediaQuality;->setAutoAqEnabled(Z)V

    .line 367
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 368
    goto/16 :goto_2

    .line 356
    .end local v1    # "_arg0":Z
    :pswitch_9
    invoke-interface {p0}, Landroid/hardware/tv/mediaquality/IMediaQuality;->getAutoAqEnabled()Z

    move-result v1

    .line 357
    .local v1, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 358
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 359
    goto/16 :goto_2

    .line 349
    .end local v1    # "_result":Z
    :pswitch_a
    invoke-interface {p0}, Landroid/hardware/tv/mediaquality/IMediaQuality;->isAutoAqSupported()Z

    move-result v1

    .line 350
    .restart local v1    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 351
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 352
    goto/16 :goto_2

    .line 341
    .end local v1    # "_result":Z
    :pswitch_b
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 342
    .local v1, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 343
    invoke-interface {p0, v1}, Landroid/hardware/tv/mediaquality/IMediaQuality;->setAutoSrEnabled(Z)V

    .line 344
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 345
    goto/16 :goto_2

    .line 333
    .end local v1    # "_arg0":Z
    :pswitch_c
    invoke-interface {p0}, Landroid/hardware/tv/mediaquality/IMediaQuality;->getAutoSrEnabled()Z

    move-result v1

    .line 334
    .local v1, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 335
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 336
    goto :goto_2

    .line 326
    .end local v1    # "_result":Z
    :pswitch_d
    invoke-interface {p0}, Landroid/hardware/tv/mediaquality/IMediaQuality;->isAutoSrSupported()Z

    move-result v1

    .line 327
    .restart local v1    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 328
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 329
    goto :goto_2

    .line 318
    .end local v1    # "_result":Z
    :pswitch_e
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 319
    .local v1, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 320
    invoke-interface {p0, v1}, Landroid/hardware/tv/mediaquality/IMediaQuality;->setAutoPqEnabled(Z)V

    .line 321
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 322
    goto :goto_2

    .line 310
    .end local v1    # "_arg0":Z
    :pswitch_f
    invoke-interface {p0}, Landroid/hardware/tv/mediaquality/IMediaQuality;->getAutoPqEnabled()Z

    move-result v1

    .line 311
    .local v1, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 312
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 313
    goto :goto_2

    .line 303
    .end local v1    # "_result":Z
    :pswitch_10
    invoke-interface {p0}, Landroid/hardware/tv/mediaquality/IMediaQuality;->isAutoPqSupported()Z

    move-result v1

    .line 304
    .restart local v1    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 305
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 306
    goto :goto_2

    .line 296
    .end local v1    # "_result":Z
    :pswitch_11
    invoke-interface {p0}, Landroid/hardware/tv/mediaquality/IMediaQuality;->getAmbientBacklightDetectionEnabled()Z

    move-result v1

    .line 297
    .restart local v1    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 298
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 299
    goto :goto_2

    .line 288
    .end local v1    # "_result":Z
    :pswitch_12
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 289
    .local v1, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 290
    invoke-interface {p0, v1}, Landroid/hardware/tv/mediaquality/IMediaQuality;->setAmbientBacklightDetectionEnabled(Z)V

    .line 291
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 292
    goto :goto_2

    .line 279
    .end local v1    # "_arg0":Z
    :pswitch_13
    sget-object v1, Landroid/hardware/tv/mediaquality/AmbientBacklightSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/tv/mediaquality/AmbientBacklightSettings;

    .line 280
    .local v1, "_arg0":Landroid/hardware/tv/mediaquality/AmbientBacklightSettings;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 281
    invoke-interface {p0, v1}, Landroid/hardware/tv/mediaquality/IMediaQuality;->setAmbientBacklightDetector(Landroid/hardware/tv/mediaquality/AmbientBacklightSettings;)V

    .line 282
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 283
    goto :goto_2

    .line 270
    .end local v1    # "_arg0":Landroid/hardware/tv/mediaquality/AmbientBacklightSettings;
    :pswitch_14
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/hardware/tv/mediaquality/IMediaQualityCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/tv/mediaquality/IMediaQualityCallback;

    move-result-object v1

    .line 271
    .local v1, "_arg0":Landroid/hardware/tv/mediaquality/IMediaQualityCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 272
    invoke-interface {p0, v1}, Landroid/hardware/tv/mediaquality/IMediaQuality;->setAmbientBacklightCallback(Landroid/hardware/tv/mediaquality/IMediaQualityCallback;)V

    .line 273
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 274
    nop

    .line 463
    .end local v1    # "_arg0":Landroid/hardware/tv/mediaquality/IMediaQualityCallback;
    :goto_2
    return v2

    :pswitch_data_0
    .packed-switch 0x1
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
