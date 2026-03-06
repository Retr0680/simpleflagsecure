.class public abstract Lvendor/aac/hardware/richtap/vibrator/IRichtapVibrator$Stub;
.super Landroid/os/Binder;
.source "IRichtapVibrator.java"

# interfaces
.implements Lvendor/aac/hardware/richtap/vibrator/IRichtapVibrator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/aac/hardware/richtap/vibrator/IRichtapVibrator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lvendor/aac/hardware/richtap/vibrator/IRichtapVibrator$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_getInterfaceHash:I = 0xfffffe

.field static final TRANSACTION_getInterfaceVersion:I = 0xffffff

.field static final TRANSACTION_init:I = 0x1

.field static final TRANSACTION_off:I = 0x7

.field static final TRANSACTION_on:I = 0x8

.field static final TRANSACTION_perform:I = 0x9

.field static final TRANSACTION_performEnvelope:I = 0xa

.field static final TRANSACTION_performHe:I = 0xc

.field static final TRANSACTION_performHeParam:I = 0x6

.field static final TRANSACTION_performRtp:I = 0xb

.field static final TRANSACTION_setAmplitude:I = 0x5

.field static final TRANSACTION_setDynamicScale:I = 0x2

.field static final TRANSACTION_setF0:I = 0x3

.field static final TRANSACTION_stop:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 79
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 80
    invoke-virtual {p0}, Landroid/os/Binder;->markVintfStability()V

    .line 81
    sget-object v0, Lvendor/aac/hardware/richtap/vibrator/IRichtapVibrator;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 82
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lvendor/aac/hardware/richtap/vibrator/IRichtapVibrator;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 89
    if-nez p0, :cond_0

    .line 90
    const/4 v0, 0x0

    return-object v0

    .line 92
    :cond_0
    sget-object v0, Lvendor/aac/hardware/richtap/vibrator/IRichtapVibrator;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 93
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lvendor/aac/hardware/richtap/vibrator/IRichtapVibrator;

    if-eqz v1, :cond_1

    .line 94
    move-object v1, v0

    check-cast v1, Lvendor/aac/hardware/richtap/vibrator/IRichtapVibrator;

    return-object v1

    .line 96
    :cond_1
    new-instance v1, Lvendor/aac/hardware/richtap/vibrator/IRichtapVibrator$Stub$Proxy;

    invoke-direct {v1, p0}, Lvendor/aac/hardware/richtap/vibrator/IRichtapVibrator$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 105
    sparse-switch p0, :sswitch_data_0

    .line 165
    const/4 v0, 0x0

    return-object v0

    .line 157
    :sswitch_0
    const-string v0, "getInterfaceVersion"

    return-object v0

    .line 161
    :sswitch_1
    const-string v0, "getInterfaceHash"

    return-object v0

    .line 153
    :sswitch_2
    const-string v0, "performHe"

    return-object v0

    .line 149
    :sswitch_3
    const-string v0, "performRtp"

    return-object v0

    .line 145
    :sswitch_4
    const-string v0, "performEnvelope"

    return-object v0

    .line 141
    :sswitch_5
    const-string v0, "perform"

    return-object v0

    .line 137
    :sswitch_6
    const-string v0, "on"

    return-object v0

    .line 133
    :sswitch_7
    const-string v0, "off"

    return-object v0

    .line 129
    :sswitch_8
    const-string v0, "performHeParam"

    return-object v0

    .line 125
    :sswitch_9
    const-string v0, "setAmplitude"

    return-object v0

    .line 121
    :sswitch_a
    const-string v0, "stop"

    return-object v0

    .line 117
    :sswitch_b
    const-string v0, "setF0"

    return-object v0

    .line 113
    :sswitch_c
    const-string v0, "setDynamicScale"

    return-object v0

    .line 109
    :sswitch_d
    const-string v0, "init"

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_d
        0x2 -> :sswitch_c
        0x3 -> :sswitch_b
        0x4 -> :sswitch_a
        0x5 -> :sswitch_9
        0x6 -> :sswitch_8
        0x7 -> :sswitch_7
        0x8 -> :sswitch_6
        0x9 -> :sswitch_5
        0xa -> :sswitch_4
        0xb -> :sswitch_3
        0xc -> :sswitch_2
        0xfffffe -> :sswitch_1
        0xffffff -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 100
    return-object p0
.end method

.method public getMaxTransactionId()I
    .locals 1

    .line 615
    const v0, 0xfffffe

    return v0
.end method

.method public getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 172
    invoke-static {p1}, Lvendor/aac/hardware/richtap/vibrator/IRichtapVibrator$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 10
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 176
    sget-object v0, Lvendor/aac/hardware/richtap/vibrator/IRichtapVibrator;->DESCRIPTOR:Ljava/lang/String;

    .line 177
    .local v0, "descriptor":Ljava/lang/String;
    const v1, 0xffffff

    const/4 v2, 0x1

    if-lt p1, v2, :cond_0

    if-gt p1, v1, :cond_0

    .line 178
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 180
    :cond_0
    const v3, 0x5f4e5446

    if-ne p1, v3, :cond_1

    .line 181
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 182
    return v2

    .line 184
    :cond_1
    if-ne p1, v1, :cond_2

    .line 185
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 186
    invoke-interface {p0}, Lvendor/aac/hardware/richtap/vibrator/IRichtapVibrator;->getInterfaceVersion()I

    move-result v1

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 187
    return v2

    .line 189
    :cond_2
    const v1, 0xfffffe

    if-ne p1, v1, :cond_3

    .line 190
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 191
    invoke-interface {p0}, Lvendor/aac/hardware/richtap/vibrator/IRichtapVibrator;->getInterfaceHash()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 192
    return v2

    .line 194
    :cond_3
    packed-switch p1, :pswitch_data_0

    .line 332
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 315
    :pswitch_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 317
    .local v4, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 319
    .local v5, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 321
    .local v6, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 323
    .local v7, "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v8

    .line 325
    .local v8, "_arg4":[I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lvendor/aac/hardware/richtap/vibrator/IRichtapCallback$Stub;->asInterface(Landroid/os/IBinder;)Lvendor/aac/hardware/richtap/vibrator/IRichtapCallback;

    move-result-object v9

    .line 326
    .local v9, "_arg5":Lvendor/aac/hardware/richtap/vibrator/IRichtapCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 327
    move-object v3, p0

    invoke-interface/range {v3 .. v9}, Lvendor/aac/hardware/richtap/vibrator/IRichtapVibrator;->performHe(IIII[ILvendor/aac/hardware/richtap/vibrator/IRichtapCallback;)V

    .line 328
    goto/16 :goto_0

    .line 305
    .end local v4    # "_arg0":I
    .end local v5    # "_arg1":I
    .end local v6    # "_arg2":I
    .end local v7    # "_arg3":I
    .end local v8    # "_arg4":[I
    .end local v9    # "_arg5":Lvendor/aac/hardware/richtap/vibrator/IRichtapCallback;
    :pswitch_1
    move-object v3, p0

    sget-object v1, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/ParcelFileDescriptor;

    .line 307
    .local v1, "_arg0":Landroid/os/ParcelFileDescriptor;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lvendor/aac/hardware/richtap/vibrator/IRichtapCallback$Stub;->asInterface(Landroid/os/IBinder;)Lvendor/aac/hardware/richtap/vibrator/IRichtapCallback;

    move-result-object v4

    .line 308
    .local v4, "_arg1":Lvendor/aac/hardware/richtap/vibrator/IRichtapCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 309
    invoke-interface {p0, v1, v4}, Lvendor/aac/hardware/richtap/vibrator/IRichtapVibrator;->performRtp(Landroid/os/ParcelFileDescriptor;Lvendor/aac/hardware/richtap/vibrator/IRichtapCallback;)V

    .line 310
    goto/16 :goto_0

    .line 293
    .end local v1    # "_arg0":Landroid/os/ParcelFileDescriptor;
    .end local v4    # "_arg1":Lvendor/aac/hardware/richtap/vibrator/IRichtapCallback;
    :pswitch_2
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v1

    .line 295
    .local v1, "_arg0":[I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v4

    .line 297
    .local v4, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lvendor/aac/hardware/richtap/vibrator/IRichtapCallback$Stub;->asInterface(Landroid/os/IBinder;)Lvendor/aac/hardware/richtap/vibrator/IRichtapCallback;

    move-result-object v5

    .line 298
    .local v5, "_arg2":Lvendor/aac/hardware/richtap/vibrator/IRichtapCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 299
    invoke-interface {p0, v1, v4, v5}, Lvendor/aac/hardware/richtap/vibrator/IRichtapVibrator;->performEnvelope([IZLvendor/aac/hardware/richtap/vibrator/IRichtapCallback;)V

    .line 300
    goto/16 :goto_0

    .line 279
    .end local v1    # "_arg0":[I
    .end local v4    # "_arg1":Z
    .end local v5    # "_arg2":Lvendor/aac/hardware/richtap/vibrator/IRichtapCallback;
    :pswitch_3
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 281
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v4

    .line 283
    .local v4, "_arg1":B
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lvendor/aac/hardware/richtap/vibrator/IRichtapCallback$Stub;->asInterface(Landroid/os/IBinder;)Lvendor/aac/hardware/richtap/vibrator/IRichtapCallback;

    move-result-object v5

    .line 284
    .restart local v5    # "_arg2":Lvendor/aac/hardware/richtap/vibrator/IRichtapCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 285
    invoke-interface {p0, v1, v4, v5}, Lvendor/aac/hardware/richtap/vibrator/IRichtapVibrator;->perform(IBLvendor/aac/hardware/richtap/vibrator/IRichtapCallback;)I

    move-result v6

    .line 286
    .local v6, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 287
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 288
    goto/16 :goto_0

    .line 269
    .end local v1    # "_arg0":I
    .end local v4    # "_arg1":B
    .end local v5    # "_arg2":Lvendor/aac/hardware/richtap/vibrator/IRichtapCallback;
    .end local v6    # "_result":I
    :pswitch_4
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 271
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lvendor/aac/hardware/richtap/vibrator/IRichtapCallback$Stub;->asInterface(Landroid/os/IBinder;)Lvendor/aac/hardware/richtap/vibrator/IRichtapCallback;

    move-result-object v4

    .line 272
    .local v4, "_arg1":Lvendor/aac/hardware/richtap/vibrator/IRichtapCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 273
    invoke-interface {p0, v1, v4}, Lvendor/aac/hardware/richtap/vibrator/IRichtapVibrator;->on(ILvendor/aac/hardware/richtap/vibrator/IRichtapCallback;)V

    .line 274
    goto/16 :goto_0

    .line 261
    .end local v1    # "_arg0":I
    .end local v4    # "_arg1":Lvendor/aac/hardware/richtap/vibrator/IRichtapCallback;
    :pswitch_5
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lvendor/aac/hardware/richtap/vibrator/IRichtapCallback$Stub;->asInterface(Landroid/os/IBinder;)Lvendor/aac/hardware/richtap/vibrator/IRichtapCallback;

    move-result-object v1

    .line 262
    .local v1, "_arg0":Lvendor/aac/hardware/richtap/vibrator/IRichtapCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 263
    invoke-interface {p0, v1}, Lvendor/aac/hardware/richtap/vibrator/IRichtapVibrator;->off(Lvendor/aac/hardware/richtap/vibrator/IRichtapCallback;)V

    .line 264
    goto/16 :goto_0

    .line 246
    .end local v1    # "_arg0":Lvendor/aac/hardware/richtap/vibrator/IRichtapCallback;
    :pswitch_6
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 248
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 250
    .local v4, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 252
    .local v5, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lvendor/aac/hardware/richtap/vibrator/IRichtapCallback$Stub;->asInterface(Landroid/os/IBinder;)Lvendor/aac/hardware/richtap/vibrator/IRichtapCallback;

    move-result-object v6

    .line 253
    .local v6, "_arg3":Lvendor/aac/hardware/richtap/vibrator/IRichtapCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 254
    invoke-interface {p0, v1, v4, v5, v6}, Lvendor/aac/hardware/richtap/vibrator/IRichtapVibrator;->performHeParam(IIILvendor/aac/hardware/richtap/vibrator/IRichtapCallback;)V

    .line 255
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 256
    goto :goto_0

    .line 236
    .end local v1    # "_arg0":I
    .end local v4    # "_arg1":I
    .end local v5    # "_arg2":I
    .end local v6    # "_arg3":Lvendor/aac/hardware/richtap/vibrator/IRichtapCallback;
    :pswitch_7
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 238
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lvendor/aac/hardware/richtap/vibrator/IRichtapCallback$Stub;->asInterface(Landroid/os/IBinder;)Lvendor/aac/hardware/richtap/vibrator/IRichtapCallback;

    move-result-object v4

    .line 239
    .local v4, "_arg1":Lvendor/aac/hardware/richtap/vibrator/IRichtapCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 240
    invoke-interface {p0, v1, v4}, Lvendor/aac/hardware/richtap/vibrator/IRichtapVibrator;->setAmplitude(ILvendor/aac/hardware/richtap/vibrator/IRichtapCallback;)V

    .line 241
    goto :goto_0

    .line 227
    .end local v1    # "_arg0":I
    .end local v4    # "_arg1":Lvendor/aac/hardware/richtap/vibrator/IRichtapCallback;
    :pswitch_8
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lvendor/aac/hardware/richtap/vibrator/IRichtapCallback$Stub;->asInterface(Landroid/os/IBinder;)Lvendor/aac/hardware/richtap/vibrator/IRichtapCallback;

    move-result-object v1

    .line 228
    .local v1, "_arg0":Lvendor/aac/hardware/richtap/vibrator/IRichtapCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 229
    invoke-interface {p0, v1}, Lvendor/aac/hardware/richtap/vibrator/IRichtapVibrator;->stop(Lvendor/aac/hardware/richtap/vibrator/IRichtapCallback;)V

    .line 230
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 231
    goto :goto_0

    .line 217
    .end local v1    # "_arg0":Lvendor/aac/hardware/richtap/vibrator/IRichtapCallback;
    :pswitch_9
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 219
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lvendor/aac/hardware/richtap/vibrator/IRichtapCallback$Stub;->asInterface(Landroid/os/IBinder;)Lvendor/aac/hardware/richtap/vibrator/IRichtapCallback;

    move-result-object v4

    .line 220
    .restart local v4    # "_arg1":Lvendor/aac/hardware/richtap/vibrator/IRichtapCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 221
    invoke-interface {p0, v1, v4}, Lvendor/aac/hardware/richtap/vibrator/IRichtapVibrator;->setF0(ILvendor/aac/hardware/richtap/vibrator/IRichtapCallback;)V

    .line 222
    goto :goto_0

    .line 207
    .end local v1    # "_arg0":I
    .end local v4    # "_arg1":Lvendor/aac/hardware/richtap/vibrator/IRichtapCallback;
    :pswitch_a
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 209
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lvendor/aac/hardware/richtap/vibrator/IRichtapCallback$Stub;->asInterface(Landroid/os/IBinder;)Lvendor/aac/hardware/richtap/vibrator/IRichtapCallback;

    move-result-object v4

    .line 210
    .restart local v4    # "_arg1":Lvendor/aac/hardware/richtap/vibrator/IRichtapCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 211
    invoke-interface {p0, v1, v4}, Lvendor/aac/hardware/richtap/vibrator/IRichtapVibrator;->setDynamicScale(ILvendor/aac/hardware/richtap/vibrator/IRichtapCallback;)V

    .line 212
    goto :goto_0

    .line 199
    .end local v1    # "_arg0":I
    .end local v4    # "_arg1":Lvendor/aac/hardware/richtap/vibrator/IRichtapCallback;
    :pswitch_b
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lvendor/aac/hardware/richtap/vibrator/IRichtapCallback$Stub;->asInterface(Landroid/os/IBinder;)Lvendor/aac/hardware/richtap/vibrator/IRichtapCallback;

    move-result-object v1

    .line 200
    .local v1, "_arg0":Lvendor/aac/hardware/richtap/vibrator/IRichtapCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 201
    invoke-interface {p0, v1}, Lvendor/aac/hardware/richtap/vibrator/IRichtapVibrator;->init(Lvendor/aac/hardware/richtap/vibrator/IRichtapCallback;)V

    .line 202
    nop

    .line 335
    .end local v1    # "_arg0":Lvendor/aac/hardware/richtap/vibrator/IRichtapCallback;
    :goto_0
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x1
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
