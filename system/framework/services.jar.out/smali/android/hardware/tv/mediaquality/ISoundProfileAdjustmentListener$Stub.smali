.class public abstract Landroid/hardware/tv/mediaquality/ISoundProfileAdjustmentListener$Stub;
.super Landroid/os/Binder;
.source "ISoundProfileAdjustmentListener.java"

# interfaces
.implements Landroid/hardware/tv/mediaquality/ISoundProfileAdjustmentListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/tv/mediaquality/ISoundProfileAdjustmentListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/tv/mediaquality/ISoundProfileAdjustmentListener$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_getInterfaceHash:I = 0xfffffe

.field static final TRANSACTION_getInterfaceVersion:I = 0xffffff

.field static final TRANSACTION_onParamCapabilityChanged:I = 0x2

.field static final TRANSACTION_onSoundProfileAdjusted:I = 0x1

.field static final TRANSACTION_onVendorParamCapabilityChanged:I = 0x3

.field static final TRANSACTION_requestSoundParameters:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 54
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 55
    invoke-virtual {p0}, Landroid/os/Binder;->markVintfStability()V

    .line 56
    sget-object v0, Landroid/hardware/tv/mediaquality/ISoundProfileAdjustmentListener;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 57
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/hardware/tv/mediaquality/ISoundProfileAdjustmentListener;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 64
    if-nez p0, :cond_0

    .line 65
    const/4 v0, 0x0

    return-object v0

    .line 67
    :cond_0
    sget-object v0, Landroid/hardware/tv/mediaquality/ISoundProfileAdjustmentListener;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 68
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/hardware/tv/mediaquality/ISoundProfileAdjustmentListener;

    if-eqz v1, :cond_1

    .line 69
    move-object v1, v0

    check-cast v1, Landroid/hardware/tv/mediaquality/ISoundProfileAdjustmentListener;

    return-object v1

    .line 71
    :cond_1
    new-instance v1, Landroid/hardware/tv/mediaquality/ISoundProfileAdjustmentListener$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/hardware/tv/mediaquality/ISoundProfileAdjustmentListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 80
    sparse-switch p0, :sswitch_data_0

    .line 108
    const/4 v0, 0x0

    return-object v0

    .line 100
    :sswitch_0
    const-string/jumbo v0, "getInterfaceVersion"

    return-object v0

    .line 104
    :sswitch_1
    const-string/jumbo v0, "getInterfaceHash"

    return-object v0

    .line 96
    :sswitch_2
    const-string/jumbo v0, "requestSoundParameters"

    return-object v0

    .line 92
    :sswitch_3
    const-string/jumbo v0, "onVendorParamCapabilityChanged"

    return-object v0

    .line 88
    :sswitch_4
    const-string/jumbo v0, "onParamCapabilityChanged"

    return-object v0

    .line 84
    :sswitch_5
    const-string/jumbo v0, "onSoundProfileAdjusted"

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_5
        0x2 -> :sswitch_4
        0x3 -> :sswitch_3
        0x4 -> :sswitch_2
        0xfffffe -> :sswitch_1
        0xffffff -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 75
    return-object p0
.end method

.method public getMaxTransactionId()I
    .locals 1

    .line 305
    const v0, 0xfffffe

    return v0
.end method

.method public getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 115
    invoke-static {p1}, Landroid/hardware/tv/mediaquality/ISoundProfileAdjustmentListener$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
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

    .line 119
    sget-object v0, Landroid/hardware/tv/mediaquality/ISoundProfileAdjustmentListener;->DESCRIPTOR:Ljava/lang/String;

    .line 120
    .local v0, "descriptor":Ljava/lang/String;
    const v1, 0xffffff

    const/4 v2, 0x1

    if-lt p1, v2, :cond_0

    if-gt p1, v1, :cond_0

    .line 121
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 123
    :cond_0
    const v3, 0x5f4e5446

    if-ne p1, v3, :cond_1

    .line 124
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 125
    return v2

    .line 127
    :cond_1
    if-ne p1, v1, :cond_2

    .line 128
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 129
    invoke-interface {p0}, Landroid/hardware/tv/mediaquality/ISoundProfileAdjustmentListener;->getInterfaceVersion()I

    move-result v1

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 130
    return v2

    .line 132
    :cond_2
    const v1, 0xfffffe

    if-ne p1, v1, :cond_3

    .line 133
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 134
    invoke-interface {p0}, Landroid/hardware/tv/mediaquality/ISoundProfileAdjustmentListener;->getInterfaceHash()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 135
    return v2

    .line 137
    :cond_3
    packed-switch p1, :pswitch_data_0

    .line 177
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 170
    :pswitch_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 171
    .local v3, "_arg0":J
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 172
    invoke-interface {p0, v3, v4}, Landroid/hardware/tv/mediaquality/ISoundProfileAdjustmentListener;->requestSoundParameters(J)V

    .line 173
    goto :goto_0

    .line 160
    .end local v3    # "_arg0":J
    :pswitch_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 162
    .restart local v3    # "_arg0":J
    sget-object v1, Landroid/hardware/tv/mediaquality/VendorParamCapability;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/hardware/tv/mediaquality/VendorParamCapability;

    .line 163
    .local v1, "_arg1":[Landroid/hardware/tv/mediaquality/VendorParamCapability;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 164
    invoke-interface {p0, v3, v4, v1}, Landroid/hardware/tv/mediaquality/ISoundProfileAdjustmentListener;->onVendorParamCapabilityChanged(J[Landroid/hardware/tv/mediaquality/VendorParamCapability;)V

    .line 165
    goto :goto_0

    .line 150
    .end local v1    # "_arg1":[Landroid/hardware/tv/mediaquality/VendorParamCapability;
    .end local v3    # "_arg0":J
    :pswitch_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 152
    .restart local v3    # "_arg0":J
    sget-object v1, Landroid/hardware/tv/mediaquality/ParamCapability;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/hardware/tv/mediaquality/ParamCapability;

    .line 153
    .local v1, "_arg1":[Landroid/hardware/tv/mediaquality/ParamCapability;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 154
    invoke-interface {p0, v3, v4, v1}, Landroid/hardware/tv/mediaquality/ISoundProfileAdjustmentListener;->onParamCapabilityChanged(J[Landroid/hardware/tv/mediaquality/ParamCapability;)V

    .line 155
    goto :goto_0

    .line 142
    .end local v1    # "_arg1":[Landroid/hardware/tv/mediaquality/ParamCapability;
    .end local v3    # "_arg0":J
    :pswitch_3
    sget-object v1, Landroid/hardware/tv/mediaquality/SoundProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/tv/mediaquality/SoundProfile;

    .line 143
    .local v1, "_arg0":Landroid/hardware/tv/mediaquality/SoundProfile;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 144
    invoke-interface {p0, v1}, Landroid/hardware/tv/mediaquality/ISoundProfileAdjustmentListener;->onSoundProfileAdjusted(Landroid/hardware/tv/mediaquality/SoundProfile;)V

    .line 145
    nop

    .line 180
    .end local v1    # "_arg0":Landroid/hardware/tv/mediaquality/SoundProfile;
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
