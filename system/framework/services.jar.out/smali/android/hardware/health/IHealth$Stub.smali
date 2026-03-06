.class public abstract Landroid/hardware/health/IHealth$Stub;
.super Landroid/os/Binder;
.source "IHealth.java"

# interfaces
.implements Landroid/hardware/health/IHealth;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/health/IHealth;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/health/IHealth$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_getBatteryHealthData:I = 0xf

.field static final TRANSACTION_getCapacity:I = 0x7

.field static final TRANSACTION_getChargeCounterUah:I = 0x4

.field static final TRANSACTION_getChargeStatus:I = 0x9

.field static final TRANSACTION_getChargingPolicy:I = 0xe

.field static final TRANSACTION_getCurrentAverageMicroamps:I = 0x6

.field static final TRANSACTION_getCurrentNowMicroamps:I = 0x5

.field static final TRANSACTION_getDiskStats:I = 0xb

.field static final TRANSACTION_getEnergyCounterNwh:I = 0x8

.field static final TRANSACTION_getHealthInfo:I = 0xc

.field static final TRANSACTION_getHingeInfo:I = 0x10

.field static final TRANSACTION_getInterfaceHash:I = 0xfffffe

.field static final TRANSACTION_getInterfaceVersion:I = 0xffffff

.field static final TRANSACTION_getStorageInfo:I = 0xa

.field static final TRANSACTION_registerCallback:I = 0x1

.field static final TRANSACTION_setChargingPolicy:I = 0xd

.field static final TRANSACTION_unregisterCallback:I = 0x2

.field static final TRANSACTION_update:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 102
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 103
    invoke-virtual {p0}, Landroid/os/Binder;->markVintfStability()V

    .line 104
    sget-object v0, Landroid/hardware/health/IHealth;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 105
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/hardware/health/IHealth;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 112
    if-nez p0, :cond_0

    .line 113
    const/4 v0, 0x0

    return-object v0

    .line 115
    :cond_0
    sget-object v0, Landroid/hardware/health/IHealth;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 116
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/hardware/health/IHealth;

    if-eqz v1, :cond_1

    .line 117
    move-object v1, v0

    check-cast v1, Landroid/hardware/health/IHealth;

    return-object v1

    .line 119
    :cond_1
    new-instance v1, Landroid/hardware/health/IHealth$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/hardware/health/IHealth$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 123
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 5
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 127
    sget-object v0, Landroid/hardware/health/IHealth;->DESCRIPTOR:Ljava/lang/String;

    .line 128
    .local v0, "descriptor":Ljava/lang/String;
    const v1, 0xffffff

    const/4 v2, 0x1

    if-lt p1, v2, :cond_0

    if-gt p1, v1, :cond_0

    .line 129
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 131
    :cond_0
    const v3, 0x5f4e5446

    if-ne p1, v3, :cond_1

    .line 132
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 133
    return v2

    .line 135
    :cond_1
    if-ne p1, v1, :cond_2

    .line 136
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 137
    invoke-interface {p0}, Landroid/hardware/health/IHealth;->getInterfaceVersion()I

    move-result v1

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 138
    return v2

    .line 140
    :cond_2
    const v1, 0xfffffe

    if-ne p1, v1, :cond_3

    .line 141
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 142
    invoke-interface {p0}, Landroid/hardware/health/IHealth;->getInterfaceHash()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 143
    return v2

    .line 145
    :cond_3
    packed-switch p1, :pswitch_data_0

    .line 266
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 259
    :pswitch_0
    invoke-interface {p0}, Landroid/hardware/health/IHealth;->getHingeInfo()[Landroid/hardware/health/HingeInfo;

    move-result-object v1

    .line 260
    .local v1, "_result":[Landroid/hardware/health/HingeInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 261
    invoke-virtual {p3, v1, v2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 262
    goto/16 :goto_0

    .line 252
    .end local v1    # "_result":[Landroid/hardware/health/HingeInfo;
    :pswitch_1
    invoke-interface {p0}, Landroid/hardware/health/IHealth;->getBatteryHealthData()Landroid/hardware/health/BatteryHealthData;

    move-result-object v1

    .line 253
    .local v1, "_result":Landroid/hardware/health/BatteryHealthData;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 254
    invoke-virtual {p3, v1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 255
    goto/16 :goto_0

    .line 245
    .end local v1    # "_result":Landroid/hardware/health/BatteryHealthData;
    :pswitch_2
    invoke-interface {p0}, Landroid/hardware/health/IHealth;->getChargingPolicy()I

    move-result v1

    .line 246
    .local v1, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 247
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 248
    goto/16 :goto_0

    .line 237
    .end local v1    # "_result":I
    :pswitch_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 238
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 239
    invoke-interface {p0, v1}, Landroid/hardware/health/IHealth;->setChargingPolicy(I)V

    .line 240
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 241
    goto/16 :goto_0

    .line 229
    .end local v1    # "_arg0":I
    :pswitch_4
    invoke-interface {p0}, Landroid/hardware/health/IHealth;->getHealthInfo()Landroid/hardware/health/HealthInfo;

    move-result-object v1

    .line 230
    .local v1, "_result":Landroid/hardware/health/HealthInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 231
    invoke-virtual {p3, v1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 232
    goto/16 :goto_0

    .line 222
    .end local v1    # "_result":Landroid/hardware/health/HealthInfo;
    :pswitch_5
    invoke-interface {p0}, Landroid/hardware/health/IHealth;->getDiskStats()[Landroid/hardware/health/DiskStats;

    move-result-object v1

    .line 223
    .local v1, "_result":[Landroid/hardware/health/DiskStats;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 224
    invoke-virtual {p3, v1, v2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 225
    goto/16 :goto_0

    .line 215
    .end local v1    # "_result":[Landroid/hardware/health/DiskStats;
    :pswitch_6
    invoke-interface {p0}, Landroid/hardware/health/IHealth;->getStorageInfo()[Landroid/hardware/health/StorageInfo;

    move-result-object v1

    .line 216
    .local v1, "_result":[Landroid/hardware/health/StorageInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 217
    invoke-virtual {p3, v1, v2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 218
    goto/16 :goto_0

    .line 208
    .end local v1    # "_result":[Landroid/hardware/health/StorageInfo;
    :pswitch_7
    invoke-interface {p0}, Landroid/hardware/health/IHealth;->getChargeStatus()I

    move-result v1

    .line 209
    .local v1, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 210
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 211
    goto :goto_0

    .line 201
    .end local v1    # "_result":I
    :pswitch_8
    invoke-interface {p0}, Landroid/hardware/health/IHealth;->getEnergyCounterNwh()J

    move-result-wide v3

    .line 202
    .local v3, "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 203
    invoke-virtual {p3, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 204
    goto :goto_0

    .line 194
    .end local v3    # "_result":J
    :pswitch_9
    invoke-interface {p0}, Landroid/hardware/health/IHealth;->getCapacity()I

    move-result v1

    .line 195
    .restart local v1    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 196
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 197
    goto :goto_0

    .line 187
    .end local v1    # "_result":I
    :pswitch_a
    invoke-interface {p0}, Landroid/hardware/health/IHealth;->getCurrentAverageMicroamps()I

    move-result v1

    .line 188
    .restart local v1    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 189
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 190
    goto :goto_0

    .line 180
    .end local v1    # "_result":I
    :pswitch_b
    invoke-interface {p0}, Landroid/hardware/health/IHealth;->getCurrentNowMicroamps()I

    move-result v1

    .line 181
    .restart local v1    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 182
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 183
    goto :goto_0

    .line 173
    .end local v1    # "_result":I
    :pswitch_c
    invoke-interface {p0}, Landroid/hardware/health/IHealth;->getChargeCounterUah()I

    move-result v1

    .line 174
    .restart local v1    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 175
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 176
    goto :goto_0

    .line 167
    .end local v1    # "_result":I
    :pswitch_d
    invoke-interface {p0}, Landroid/hardware/health/IHealth;->update()V

    .line 168
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 169
    goto :goto_0

    .line 159
    :pswitch_e
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/hardware/health/IHealthInfoCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/health/IHealthInfoCallback;

    move-result-object v1

    .line 160
    .local v1, "_arg0":Landroid/hardware/health/IHealthInfoCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 161
    invoke-interface {p0, v1}, Landroid/hardware/health/IHealth;->unregisterCallback(Landroid/hardware/health/IHealthInfoCallback;)V

    .line 162
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 163
    goto :goto_0

    .line 150
    .end local v1    # "_arg0":Landroid/hardware/health/IHealthInfoCallback;
    :pswitch_f
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/hardware/health/IHealthInfoCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/health/IHealthInfoCallback;

    move-result-object v1

    .line 151
    .restart local v1    # "_arg0":Landroid/hardware/health/IHealthInfoCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 152
    invoke-interface {p0, v1}, Landroid/hardware/health/IHealth;->registerCallback(Landroid/hardware/health/IHealthInfoCallback;)V

    .line 153
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 154
    nop

    .line 269
    .end local v1    # "_arg0":Landroid/hardware/health/IHealthInfoCallback;
    :goto_0
    return v2

    :pswitch_data_0
    .packed-switch 0x1
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
