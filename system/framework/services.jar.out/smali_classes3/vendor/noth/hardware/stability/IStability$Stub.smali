.class public abstract Lvendor/noth/hardware/stability/IStability$Stub;
.super Landroid/os/Binder;
.source "IStability.java"

# interfaces
.implements Lvendor/noth/hardware/stability/IStability;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/noth/hardware/stability/IStability;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lvendor/noth/hardware/stability/IStability$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_NTStabilityGetBattActiveInfo:I = 0x4

.field static final TRANSACTION_NTStabilityGetBattChargeCycleInfo:I = 0x2

.field static final TRANSACTION_NTStabilityGetBattHealthInfo:I = 0x1

.field static final TRANSACTION_NTStabilityGetBattManufactureInfo:I = 0x3

.field static final TRANSACTION_NTStabilityGetInstallmentFlag:I = 0xb

.field static final TRANSACTION_NTStabilityGetNtFeature:I = 0xc

.field static final TRANSACTION_NTStabilityResetWithOutBattManufactureInfo:I = 0x9

.field static final TRANSACTION_NTStabilitySetBattActiveInfo:I = 0x8

.field static final TRANSACTION_NTStabilitySetBattChargeCycleInfo:I = 0x6

.field static final TRANSACTION_NTStabilitySetBattHealthInfo:I = 0x5

.field static final TRANSACTION_NTStabilitySetBattManufactureInfo:I = 0x7

.field static final TRANSACTION_NTStabilitySetInstallmentFlag:I = 0xa

.field static final TRANSACTION_getInterfaceHash:I = 0xfffffe

.field static final TRANSACTION_getInterfaceVersion:I = 0xffffff


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 90
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 91
    invoke-virtual {p0}, Landroid/os/Binder;->markVintfStability()V

    .line 92
    sget-object v0, Lvendor/noth/hardware/stability/IStability;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 93
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lvendor/noth/hardware/stability/IStability;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 100
    if-nez p0, :cond_0

    .line 101
    const/4 v0, 0x0

    return-object v0

    .line 103
    :cond_0
    sget-object v0, Lvendor/noth/hardware/stability/IStability;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 104
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lvendor/noth/hardware/stability/IStability;

    if-eqz v1, :cond_1

    .line 105
    move-object v1, v0

    check-cast v1, Lvendor/noth/hardware/stability/IStability;

    return-object v1

    .line 107
    :cond_1
    new-instance v1, Lvendor/noth/hardware/stability/IStability$Stub$Proxy;

    invoke-direct {v1, p0}, Lvendor/noth/hardware/stability/IStability$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 111
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 7
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 115
    sget-object v0, Lvendor/noth/hardware/stability/IStability;->DESCRIPTOR:Ljava/lang/String;

    .line 116
    .local v0, "descriptor":Ljava/lang/String;
    const v1, 0xffffff

    const/4 v2, 0x1

    if-lt p1, v2, :cond_0

    if-gt p1, v1, :cond_0

    .line 117
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 119
    :cond_0
    const v3, 0x5f4e5446

    if-ne p1, v3, :cond_1

    .line 120
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 121
    return v2

    .line 123
    :cond_1
    if-ne p1, v1, :cond_2

    .line 124
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 125
    invoke-interface {p0}, Lvendor/noth/hardware/stability/IStability;->getInterfaceVersion()I

    move-result v1

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 126
    return v2

    .line 128
    :cond_2
    const v1, 0xfffffe

    if-ne p1, v1, :cond_3

    .line 129
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 130
    invoke-interface {p0}, Lvendor/noth/hardware/stability/IStability;->getInterfaceHash()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 131
    return v2

    .line 133
    :cond_3
    packed-switch p1, :pswitch_data_0

    .line 239
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 230
    :pswitch_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 231
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 232
    invoke-interface {p0, v1}, Lvendor/noth/hardware/stability/IStability;->NTStabilityGetNtFeature(I)Z

    move-result v3

    .line 233
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 234
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 235
    goto/16 :goto_0

    .line 222
    .end local v1    # "_arg0":I
    .end local v3    # "_result":Z
    :pswitch_1
    invoke-interface {p0}, Lvendor/noth/hardware/stability/IStability;->NTStabilityGetInstallmentFlag()I

    move-result v1

    .line 223
    .local v1, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 224
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 225
    goto/16 :goto_0

    .line 213
    .end local v1    # "_result":I
    :pswitch_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 214
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 215
    invoke-interface {p0, v1}, Lvendor/noth/hardware/stability/IStability;->NTStabilitySetInstallmentFlag(I)I

    move-result v3

    .line 216
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 217
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 218
    goto/16 :goto_0

    .line 205
    .end local v1    # "_arg0":I
    .end local v3    # "_result":I
    :pswitch_3
    invoke-interface {p0}, Lvendor/noth/hardware/stability/IStability;->NTStabilityResetWithOutBattManufactureInfo()I

    move-result v1

    .line 206
    .local v1, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 207
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 208
    goto/16 :goto_0

    .line 196
    .end local v1    # "_result":I
    :pswitch_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 197
    .local v3, "_arg0":J
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 198
    invoke-interface {p0, v3, v4}, Lvendor/noth/hardware/stability/IStability;->NTStabilitySetBattActiveInfo(J)J

    move-result-wide v5

    .line 199
    .local v5, "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 200
    invoke-virtual {p3, v5, v6}, Landroid/os/Parcel;->writeLong(J)V

    .line 201
    goto :goto_0

    .line 186
    .end local v3    # "_arg0":J
    .end local v5    # "_result":J
    :pswitch_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 187
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 188
    invoke-interface {p0, v1}, Lvendor/noth/hardware/stability/IStability;->NTStabilitySetBattManufactureInfo(Ljava/lang/String;)I

    move-result v3

    .line 189
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 190
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 191
    goto :goto_0

    .line 176
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":I
    :pswitch_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 177
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 178
    invoke-interface {p0, v1}, Lvendor/noth/hardware/stability/IStability;->NTStabilitySetBattChargeCycleInfo(I)I

    move-result v3

    .line 179
    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 180
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 181
    goto :goto_0

    .line 166
    .end local v1    # "_arg0":I
    .end local v3    # "_result":I
    :pswitch_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 167
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 168
    invoke-interface {p0, v1}, Lvendor/noth/hardware/stability/IStability;->NTStabilitySetBattHealthInfo(I)I

    move-result v3

    .line 169
    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 170
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 171
    goto :goto_0

    .line 158
    .end local v1    # "_arg0":I
    .end local v3    # "_result":I
    :pswitch_8
    invoke-interface {p0}, Lvendor/noth/hardware/stability/IStability;->NTStabilityGetBattActiveInfo()J

    move-result-wide v3

    .line 159
    .local v3, "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 160
    invoke-virtual {p3, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 161
    goto :goto_0

    .line 151
    .end local v3    # "_result":J
    :pswitch_9
    invoke-interface {p0}, Lvendor/noth/hardware/stability/IStability;->NTStabilityGetBattManufactureInfo()Ljava/lang/String;

    move-result-object v1

    .line 152
    .local v1, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 153
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 154
    goto :goto_0

    .line 144
    .end local v1    # "_result":Ljava/lang/String;
    :pswitch_a
    invoke-interface {p0}, Lvendor/noth/hardware/stability/IStability;->NTStabilityGetBattChargeCycleInfo()I

    move-result v1

    .line 145
    .local v1, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 146
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 147
    goto :goto_0

    .line 137
    .end local v1    # "_result":I
    :pswitch_b
    invoke-interface {p0}, Lvendor/noth/hardware/stability/IStability;->NTStabilityGetBattHealthInfo()I

    move-result v1

    .line 138
    .restart local v1    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 139
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 140
    nop

    .line 242
    .end local v1    # "_result":I
    :goto_0
    return v2

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
