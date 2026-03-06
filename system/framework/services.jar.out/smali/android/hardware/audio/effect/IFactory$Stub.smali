.class public abstract Landroid/hardware/audio/effect/IFactory$Stub;
.super Landroid/os/Binder;
.source "IFactory.java"

# interfaces
.implements Landroid/hardware/audio/effect/IFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/audio/effect/IFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/audio/effect/IFactory$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_createEffect:I = 0x3

.field static final TRANSACTION_destroyEffect:I = 0x4

.field static final TRANSACTION_getInterfaceHash:I = 0xfffffe

.field static final TRANSACTION_getInterfaceVersion:I = 0xffffff

.field static final TRANSACTION_queryEffects:I = 0x1

.field static final TRANSACTION_queryProcessing:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 57
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 58
    invoke-virtual {p0}, Landroid/os/Binder;->markVintfStability()V

    .line 59
    sget-object v0, Landroid/hardware/audio/effect/IFactory;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 60
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/hardware/audio/effect/IFactory;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 67
    if-nez p0, :cond_0

    .line 68
    const/4 v0, 0x0

    return-object v0

    .line 70
    :cond_0
    sget-object v0, Landroid/hardware/audio/effect/IFactory;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 71
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/hardware/audio/effect/IFactory;

    if-eqz v1, :cond_1

    .line 72
    move-object v1, v0

    check-cast v1, Landroid/hardware/audio/effect/IFactory;

    return-object v1

    .line 74
    :cond_1
    new-instance v1, Landroid/hardware/audio/effect/IFactory$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/hardware/audio/effect/IFactory$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 78
    return-object p0
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

    .line 82
    sget-object v0, Landroid/hardware/audio/effect/IFactory;->DESCRIPTOR:Ljava/lang/String;

    .line 83
    .local v0, "descriptor":Ljava/lang/String;
    const v1, 0xffffff

    const/4 v2, 0x1

    if-lt p1, v2, :cond_0

    if-gt p1, v1, :cond_0

    .line 84
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 86
    :cond_0
    const v3, 0x5f4e5446

    if-ne p1, v3, :cond_1

    .line 87
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 88
    return v2

    .line 90
    :cond_1
    if-ne p1, v1, :cond_2

    .line 91
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 92
    invoke-interface {p0}, Landroid/hardware/audio/effect/IFactory;->getInterfaceVersion()I

    move-result v1

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 93
    return v2

    .line 95
    :cond_2
    const v1, 0xfffffe

    if-ne p1, v1, :cond_3

    .line 96
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 97
    invoke-interface {p0}, Landroid/hardware/audio/effect/IFactory;->getInterfaceHash()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 98
    return v2

    .line 100
    :cond_3
    packed-switch p1, :pswitch_data_0

    .line 147
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 139
    :pswitch_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/hardware/audio/effect/IEffect$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/audio/effect/IEffect;

    move-result-object v1

    .line 140
    .local v1, "_arg0":Landroid/hardware/audio/effect/IEffect;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 141
    invoke-interface {p0, v1}, Landroid/hardware/audio/effect/IFactory;->destroyEffect(Landroid/hardware/audio/effect/IEffect;)V

    .line 142
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 143
    goto :goto_0

    .line 129
    .end local v1    # "_arg0":Landroid/hardware/audio/effect/IEffect;
    :pswitch_1
    sget-object v1, Landroid/media/audio/common/AudioUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/audio/common/AudioUuid;

    .line 130
    .local v1, "_arg0":Landroid/media/audio/common/AudioUuid;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 131
    invoke-interface {p0, v1}, Landroid/hardware/audio/effect/IFactory;->createEffect(Landroid/media/audio/common/AudioUuid;)Landroid/hardware/audio/effect/IEffect;

    move-result-object v3

    .line 132
    .local v3, "_result":Landroid/hardware/audio/effect/IEffect;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 133
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 134
    goto :goto_0

    .line 119
    .end local v1    # "_arg0":Landroid/media/audio/common/AudioUuid;
    .end local v3    # "_result":Landroid/hardware/audio/effect/IEffect;
    :pswitch_2
    sget-object v1, Landroid/hardware/audio/effect/Processing$Type;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/audio/effect/Processing$Type;

    .line 120
    .local v1, "_arg0":Landroid/hardware/audio/effect/Processing$Type;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 121
    invoke-interface {p0, v1}, Landroid/hardware/audio/effect/IFactory;->queryProcessing(Landroid/hardware/audio/effect/Processing$Type;)[Landroid/hardware/audio/effect/Processing;

    move-result-object v3

    .line 122
    .local v3, "_result":[Landroid/hardware/audio/effect/Processing;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 123
    invoke-virtual {p3, v3, v2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 124
    goto :goto_0

    .line 105
    .end local v1    # "_arg0":Landroid/hardware/audio/effect/Processing$Type;
    .end local v3    # "_result":[Landroid/hardware/audio/effect/Processing;
    :pswitch_3
    sget-object v1, Landroid/media/audio/common/AudioUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/audio/common/AudioUuid;

    .line 107
    .local v1, "_arg0":Landroid/media/audio/common/AudioUuid;
    sget-object v3, Landroid/media/audio/common/AudioUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/audio/common/AudioUuid;

    .line 109
    .local v3, "_arg1":Landroid/media/audio/common/AudioUuid;
    sget-object v4, Landroid/media/audio/common/AudioUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/audio/common/AudioUuid;

    .line 110
    .local v4, "_arg2":Landroid/media/audio/common/AudioUuid;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 111
    invoke-interface {p0, v1, v3, v4}, Landroid/hardware/audio/effect/IFactory;->queryEffects(Landroid/media/audio/common/AudioUuid;Landroid/media/audio/common/AudioUuid;Landroid/media/audio/common/AudioUuid;)[Landroid/hardware/audio/effect/Descriptor;

    move-result-object v5

    .line 112
    .local v5, "_result":[Landroid/hardware/audio/effect/Descriptor;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 113
    invoke-virtual {p3, v5, v2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 114
    nop

    .line 150
    .end local v1    # "_arg0":Landroid/media/audio/common/AudioUuid;
    .end local v3    # "_arg1":Landroid/media/audio/common/AudioUuid;
    .end local v4    # "_arg2":Landroid/media/audio/common/AudioUuid;
    .end local v5    # "_result":[Landroid/hardware/audio/effect/Descriptor;
    :goto_0
    return v2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
