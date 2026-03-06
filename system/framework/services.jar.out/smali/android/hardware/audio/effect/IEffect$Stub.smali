.class public abstract Landroid/hardware/audio/effect/IEffect$Stub;
.super Landroid/os/Binder;
.source "IEffect.java"

# interfaces
.implements Landroid/hardware/audio/effect/IEffect;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/audio/effect/IEffect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/audio/effect/IEffect$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_close:I = 0x2

.field static final TRANSACTION_command:I = 0x4

.field static final TRANSACTION_getDescriptor:I = 0x3

.field static final TRANSACTION_getInterfaceHash:I = 0xfffffe

.field static final TRANSACTION_getInterfaceVersion:I = 0xffffff

.field static final TRANSACTION_getParameter:I = 0x7

.field static final TRANSACTION_getState:I = 0x5

.field static final TRANSACTION_open:I = 0x1

.field static final TRANSACTION_setParameter:I = 0x6


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 67
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 68
    invoke-virtual {p0}, Landroid/os/Binder;->markVintfStability()V

    .line 69
    sget-object v0, Landroid/hardware/audio/effect/IEffect;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 70
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/hardware/audio/effect/IEffect;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 77
    if-nez p0, :cond_0

    .line 78
    const/4 v0, 0x0

    return-object v0

    .line 80
    :cond_0
    sget-object v0, Landroid/hardware/audio/effect/IEffect;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 81
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/hardware/audio/effect/IEffect;

    if-eqz v1, :cond_1

    .line 82
    move-object v1, v0

    check-cast v1, Landroid/hardware/audio/effect/IEffect;

    return-object v1

    .line 84
    :cond_1
    new-instance v1, Landroid/hardware/audio/effect/IEffect$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/hardware/audio/effect/IEffect$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 88
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

    .line 92
    sget-object v0, Landroid/hardware/audio/effect/IEffect;->DESCRIPTOR:Ljava/lang/String;

    .line 93
    .local v0, "descriptor":Ljava/lang/String;
    const v1, 0xffffff

    const/4 v2, 0x1

    if-lt p1, v2, :cond_0

    if-gt p1, v1, :cond_0

    .line 94
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 96
    :cond_0
    const v3, 0x5f4e5446

    if-ne p1, v3, :cond_1

    .line 97
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 98
    return v2

    .line 100
    :cond_1
    if-ne p1, v1, :cond_2

    .line 101
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 102
    invoke-interface {p0}, Landroid/hardware/audio/effect/IEffect;->getInterfaceVersion()I

    move-result v1

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 103
    return v2

    .line 105
    :cond_2
    const v1, 0xfffffe

    if-ne p1, v1, :cond_3

    .line 106
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 107
    invoke-interface {p0}, Landroid/hardware/audio/effect/IEffect;->getInterfaceHash()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 108
    return v2

    .line 110
    :cond_3
    packed-switch p1, :pswitch_data_0

    .line 174
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 165
    :pswitch_0
    sget-object v1, Landroid/hardware/audio/effect/Parameter$Id;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/audio/effect/Parameter$Id;

    .line 166
    .local v1, "_arg0":Landroid/hardware/audio/effect/Parameter$Id;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 167
    invoke-interface {p0, v1}, Landroid/hardware/audio/effect/IEffect;->getParameter(Landroid/hardware/audio/effect/Parameter$Id;)Landroid/hardware/audio/effect/Parameter;

    move-result-object v3

    .line 168
    .local v3, "_result":Landroid/hardware/audio/effect/Parameter;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 169
    invoke-virtual {p3, v3, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 170
    goto :goto_0

    .line 156
    .end local v1    # "_arg0":Landroid/hardware/audio/effect/Parameter$Id;
    .end local v3    # "_result":Landroid/hardware/audio/effect/Parameter;
    :pswitch_1
    sget-object v1, Landroid/hardware/audio/effect/Parameter;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/audio/effect/Parameter;

    .line 157
    .local v1, "_arg0":Landroid/hardware/audio/effect/Parameter;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 158
    invoke-interface {p0, v1}, Landroid/hardware/audio/effect/IEffect;->setParameter(Landroid/hardware/audio/effect/Parameter;)V

    .line 159
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 160
    goto :goto_0

    .line 148
    .end local v1    # "_arg0":Landroid/hardware/audio/effect/Parameter;
    :pswitch_2
    invoke-interface {p0}, Landroid/hardware/audio/effect/IEffect;->getState()B

    move-result v1

    .line 149
    .local v1, "_result":B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 150
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 151
    goto :goto_0

    .line 140
    .end local v1    # "_result":B
    :pswitch_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 141
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 142
    invoke-interface {p0, v1}, Landroid/hardware/audio/effect/IEffect;->command(I)V

    .line 143
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 144
    goto :goto_0

    .line 132
    .end local v1    # "_arg0":I
    :pswitch_4
    invoke-interface {p0}, Landroid/hardware/audio/effect/IEffect;->getDescriptor()Landroid/hardware/audio/effect/Descriptor;

    move-result-object v1

    .line 133
    .local v1, "_result":Landroid/hardware/audio/effect/Descriptor;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 134
    invoke-virtual {p3, v1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 135
    goto :goto_0

    .line 126
    .end local v1    # "_result":Landroid/hardware/audio/effect/Descriptor;
    :pswitch_5
    invoke-interface {p0}, Landroid/hardware/audio/effect/IEffect;->close()V

    .line 127
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 128
    goto :goto_0

    .line 115
    :pswitch_6
    sget-object v1, Landroid/hardware/audio/effect/Parameter$Common;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/audio/effect/Parameter$Common;

    .line 117
    .local v1, "_arg0":Landroid/hardware/audio/effect/Parameter$Common;
    sget-object v3, Landroid/hardware/audio/effect/Parameter$Specific;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/audio/effect/Parameter$Specific;

    .line 118
    .local v3, "_arg1":Landroid/hardware/audio/effect/Parameter$Specific;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 119
    invoke-interface {p0, v1, v3}, Landroid/hardware/audio/effect/IEffect;->open(Landroid/hardware/audio/effect/Parameter$Common;Landroid/hardware/audio/effect/Parameter$Specific;)Landroid/hardware/audio/effect/IEffect$OpenEffectReturn;

    move-result-object v4

    .line 120
    .local v4, "_result":Landroid/hardware/audio/effect/IEffect$OpenEffectReturn;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 121
    invoke-virtual {p3, v4, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 122
    nop

    .line 177
    .end local v1    # "_arg0":Landroid/hardware/audio/effect/Parameter$Common;
    .end local v3    # "_arg1":Landroid/hardware/audio/effect/Parameter$Specific;
    .end local v4    # "_result":Landroid/hardware/audio/effect/IEffect$OpenEffectReturn;
    :goto_0
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
